--- GENERATED CODE - DO NOT MODIFY
-- Amazon DynamoDB Streams (streams-dynamodb-2012-08-10)

local M = {}

M.metadata = {
	api_version = "2012-08-10",
	json_version = "1.0",
	protocol = "json",
	checksum_format = "",
	endpoint_prefix = "streams.dynamodb",
	service_abbreviation = "",
	service_full_name = "Amazon DynamoDB Streams",
	signature_version = "v4",
	target_prefix = "DynamoDBStreams_20120810",
	timestamp_format = "",
	global_endpoint = "",
	uid = "streams-dynamodb-2012-08-10",
}

local keys = {}
local asserts = {}

keys.LimitExceededException = { ["message"] = true, nil }

function asserts.AssertLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LimitExceededException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.LimitExceededException[k], "LimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LimitExceededException
-- <p>Your request rate is too high. The AWS SDKs for DynamoDB automatically retry requests that receive this exception. Your request is eventually successful, unless your retry queue is too large to finish. Reduce the frequency of requests and use exponential backoff. For more information, go to <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ErrorHandling.html#APIRetries">Error Retries and Exponential Backoff</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- @param _message [ErrorMessage] <p>Too many operations for a given subscriber.</p>
function M.LimitExceededException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LimitExceededException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertLimitExceededException(t)
	return t
end

keys.SequenceNumberRange = { ["EndingSequenceNumber"] = true, ["StartingSequenceNumber"] = true, nil }

function asserts.AssertSequenceNumberRange(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SequenceNumberRange to be of type 'table'")
	if struct["EndingSequenceNumber"] then asserts.AssertSequenceNumber(struct["EndingSequenceNumber"]) end
	if struct["StartingSequenceNumber"] then asserts.AssertSequenceNumber(struct["StartingSequenceNumber"]) end
	for k,_ in pairs(struct) do
		assert(keys.SequenceNumberRange[k], "SequenceNumberRange contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SequenceNumberRange
-- <p>The beginning and ending sequence numbers for the stream records contained within a shard.</p>
-- @param _EndingSequenceNumber [SequenceNumber] <p>The last sequence number.</p>
-- @param _StartingSequenceNumber [SequenceNumber] <p>The first sequence number.</p>
function M.SequenceNumberRange(_EndingSequenceNumber, _StartingSequenceNumber, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SequenceNumberRange")
	local t = { 
		["EndingSequenceNumber"] = _EndingSequenceNumber,
		["StartingSequenceNumber"] = _StartingSequenceNumber,
	}
	asserts.AssertSequenceNumberRange(t)
	return t
end

keys.ListStreamsInput = { ["Limit"] = true, ["TableName"] = true, ["ExclusiveStartStreamArn"] = true, nil }

function asserts.AssertListStreamsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListStreamsInput to be of type 'table'")
	if struct["Limit"] then asserts.AssertPositiveIntegerObject(struct["Limit"]) end
	if struct["TableName"] then asserts.AssertTableName(struct["TableName"]) end
	if struct["ExclusiveStartStreamArn"] then asserts.AssertStreamArn(struct["ExclusiveStartStreamArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListStreamsInput[k], "ListStreamsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListStreamsInput
-- <p>Represents the input of a <code>ListStreams</code> operation.</p>
-- @param _Limit [PositiveIntegerObject] <p>The maximum number of streams to return. The upper limit is 100.</p>
-- @param _TableName [TableName] <p>If this parameter is provided, then only the streams associated with this table name are returned.</p>
-- @param _ExclusiveStartStreamArn [StreamArn] <p>The ARN (Amazon Resource Name) of the first item that this operation will evaluate. Use the value that was returned for <code>LastEvaluatedStreamArn</code> in the previous operation. </p>
function M.ListStreamsInput(_Limit, _TableName, _ExclusiveStartStreamArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListStreamsInput")
	local t = { 
		["Limit"] = _Limit,
		["TableName"] = _TableName,
		["ExclusiveStartStreamArn"] = _ExclusiveStartStreamArn,
	}
	asserts.AssertListStreamsInput(t)
	return t
end

keys.KeySchemaElement = { ["KeyType"] = true, ["AttributeName"] = true, nil }

function asserts.AssertKeySchemaElement(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected KeySchemaElement to be of type 'table'")
	assert(struct["AttributeName"], "Expected key AttributeName to exist in table")
	assert(struct["KeyType"], "Expected key KeyType to exist in table")
	if struct["KeyType"] then asserts.AssertKeyType(struct["KeyType"]) end
	if struct["AttributeName"] then asserts.AssertKeySchemaAttributeName(struct["AttributeName"]) end
	for k,_ in pairs(struct) do
		assert(keys.KeySchemaElement[k], "KeySchemaElement contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type KeySchemaElement
-- <p>Represents <i>a single element</i> of a key schema. A key schema specifies the attributes that make up the primary key of a table, or the key attributes of an index.</p> <p>A <code>KeySchemaElement</code> represents exactly one attribute of the primary key. For example, a simple primary key (partition key) would be represented by one <code>KeySchemaElement</code>. A composite primary key (partition key and sort key) would require one <code>KeySchemaElement</code> for the partition key, and another <code>KeySchemaElement</code> for the sort key.</p> <note> <p>The partition key of an item is also known as its <i>hash attribute</i>. The term "hash attribute" derives from DynamoDB's usage of an internal hash function to evenly distribute data items across partitions, based on their partition key values.</p> <p>The sort key of an item is also known as its <i>range attribute</i>. The term "range attribute" derives from the way DynamoDB stores items with the same partition key physically close together, in sorted order by the sort key value.</p> </note>
-- @param _KeyType [KeyType] <p>The attribute data, consisting of the data type and the attribute value itself.</p>
-- @param _AttributeName [KeySchemaAttributeName] <p>The name of a key attribute.</p>
-- Required parameter: AttributeName
-- Required parameter: KeyType
function M.KeySchemaElement(_KeyType, _AttributeName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating KeySchemaElement")
	local t = { 
		["KeyType"] = _KeyType,
		["AttributeName"] = _AttributeName,
	}
	asserts.AssertKeySchemaElement(t)
	return t
end

keys.Identity = { ["Type"] = true, ["PrincipalId"] = true, nil }

function asserts.AssertIdentity(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Identity to be of type 'table'")
	if struct["Type"] then asserts.AssertString(struct["Type"]) end
	if struct["PrincipalId"] then asserts.AssertString(struct["PrincipalId"]) end
	for k,_ in pairs(struct) do
		assert(keys.Identity[k], "Identity contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Identity
-- <p>Contains details about the type of identity that made the request.</p>
-- @param _Type [String] <p>The type of the identity. For Time To Live, the type is "Service".</p>
-- @param _PrincipalId [String] <p>A unique identifier for the entity that made the call. For Time To Live, the principalId is "dynamodb.amazonaws.com".</p>
function M.Identity(_Type, _PrincipalId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Identity")
	local t = { 
		["Type"] = _Type,
		["PrincipalId"] = _PrincipalId,
	}
	asserts.AssertIdentity(t)
	return t
end

keys.Shard = { ["ShardId"] = true, ["ParentShardId"] = true, ["SequenceNumberRange"] = true, nil }

function asserts.AssertShard(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Shard to be of type 'table'")
	if struct["ShardId"] then asserts.AssertShardId(struct["ShardId"]) end
	if struct["ParentShardId"] then asserts.AssertShardId(struct["ParentShardId"]) end
	if struct["SequenceNumberRange"] then asserts.AssertSequenceNumberRange(struct["SequenceNumberRange"]) end
	for k,_ in pairs(struct) do
		assert(keys.Shard[k], "Shard contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Shard
-- <p>A uniquely identified group of stream records within a stream.</p>
-- @param _ShardId [ShardId] <p>The system-generated identifier for this shard.</p>
-- @param _ParentShardId [ShardId] <p>The shard ID of the current shard's parent.</p>
-- @param _SequenceNumberRange [SequenceNumberRange] <p>The range of possible sequence numbers for the shard.</p>
function M.Shard(_ShardId, _ParentShardId, _SequenceNumberRange, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Shard")
	local t = { 
		["ShardId"] = _ShardId,
		["ParentShardId"] = _ParentShardId,
		["SequenceNumberRange"] = _SequenceNumberRange,
	}
	asserts.AssertShard(t)
	return t
end

keys.GetShardIteratorInput = { ["ShardId"] = true, ["StreamArn"] = true, ["SequenceNumber"] = true, ["ShardIteratorType"] = true, nil }

function asserts.AssertGetShardIteratorInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetShardIteratorInput to be of type 'table'")
	assert(struct["StreamArn"], "Expected key StreamArn to exist in table")
	assert(struct["ShardId"], "Expected key ShardId to exist in table")
	assert(struct["ShardIteratorType"], "Expected key ShardIteratorType to exist in table")
	if struct["ShardId"] then asserts.AssertShardId(struct["ShardId"]) end
	if struct["StreamArn"] then asserts.AssertStreamArn(struct["StreamArn"]) end
	if struct["SequenceNumber"] then asserts.AssertSequenceNumber(struct["SequenceNumber"]) end
	if struct["ShardIteratorType"] then asserts.AssertShardIteratorType(struct["ShardIteratorType"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetShardIteratorInput[k], "GetShardIteratorInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetShardIteratorInput
-- <p>Represents the input of a <code>GetShardIterator</code> operation.</p>
-- @param _ShardId [ShardId] <p>The identifier of the shard. The iterator will be returned for this shard ID.</p>
-- @param _StreamArn [StreamArn] <p>The Amazon Resource Name (ARN) for the stream.</p>
-- @param _SequenceNumber [SequenceNumber] <p>The sequence number of a stream record in the shard from which to start reading.</p>
-- @param _ShardIteratorType [ShardIteratorType] <p>Determines how the shard iterator is used to start reading stream records from the shard:</p> <ul> <li> <p> <code>AT_SEQUENCE_NUMBER</code> - Start reading exactly from the position denoted by a specific sequence number.</p> </li> <li> <p> <code>AFTER_SEQUENCE_NUMBER</code> - Start reading right after the position denoted by a specific sequence number.</p> </li> <li> <p> <code>TRIM_HORIZON</code> - Start reading at the last (untrimmed) stream record, which is the oldest record in the shard. In DynamoDB Streams, there is a 24 hour limit on data retention. Stream records whose age exceeds this limit are subject to removal (trimming) from the stream.</p> </li> <li> <p> <code>LATEST</code> - Start reading just after the most recent stream record in the shard, so that you always read the most recent data in the shard.</p> </li> </ul>
-- Required parameter: StreamArn
-- Required parameter: ShardId
-- Required parameter: ShardIteratorType
function M.GetShardIteratorInput(_ShardId, _StreamArn, _SequenceNumber, _ShardIteratorType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetShardIteratorInput")
	local t = { 
		["ShardId"] = _ShardId,
		["StreamArn"] = _StreamArn,
		["SequenceNumber"] = _SequenceNumber,
		["ShardIteratorType"] = _ShardIteratorType,
	}
	asserts.AssertGetShardIteratorInput(t)
	return t
end

keys.ExpiredIteratorException = { ["message"] = true, nil }

function asserts.AssertExpiredIteratorException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ExpiredIteratorException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ExpiredIteratorException[k], "ExpiredIteratorException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ExpiredIteratorException
-- <p>The shard iterator has expired and can no longer be used to retrieve stream records. A shard iterator expires 15 minutes after it is retrieved using the <code>GetShardIterator</code> action.</p>
-- @param _message [ErrorMessage] <p>The provided iterator exceeds the maximum age allowed.</p>
function M.ExpiredIteratorException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ExpiredIteratorException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertExpiredIteratorException(t)
	return t
end

keys.GetShardIteratorOutput = { ["ShardIterator"] = true, nil }

function asserts.AssertGetShardIteratorOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetShardIteratorOutput to be of type 'table'")
	if struct["ShardIterator"] then asserts.AssertShardIterator(struct["ShardIterator"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetShardIteratorOutput[k], "GetShardIteratorOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetShardIteratorOutput
-- <p>Represents the output of a <code>GetShardIterator</code> operation.</p>
-- @param _ShardIterator [ShardIterator] <p>The position in the shard from which to start reading stream records sequentially. A shard iterator specifies this position using the sequence number of a stream record in a shard.</p>
function M.GetShardIteratorOutput(_ShardIterator, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetShardIteratorOutput")
	local t = { 
		["ShardIterator"] = _ShardIterator,
	}
	asserts.AssertGetShardIteratorOutput(t)
	return t
end

keys.DescribeStreamOutput = { ["StreamDescription"] = true, nil }

function asserts.AssertDescribeStreamOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeStreamOutput to be of type 'table'")
	if struct["StreamDescription"] then asserts.AssertStreamDescription(struct["StreamDescription"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeStreamOutput[k], "DescribeStreamOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeStreamOutput
-- <p>Represents the output of a <code>DescribeStream</code> operation.</p>
-- @param _StreamDescription [StreamDescription] <p>A complete description of the stream, including its creation date and time, the DynamoDB table associated with the stream, the shard IDs within the stream, and the beginning and ending sequence numbers of stream records within the shards.</p>
function M.DescribeStreamOutput(_StreamDescription, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeStreamOutput")
	local t = { 
		["StreamDescription"] = _StreamDescription,
	}
	asserts.AssertDescribeStreamOutput(t)
	return t
end

keys.Record = { ["eventID"] = true, ["eventVersion"] = true, ["dynamodb"] = true, ["awsRegion"] = true, ["eventName"] = true, ["userIdentity"] = true, ["eventSource"] = true, nil }

function asserts.AssertRecord(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Record to be of type 'table'")
	if struct["eventID"] then asserts.AssertString(struct["eventID"]) end
	if struct["eventVersion"] then asserts.AssertString(struct["eventVersion"]) end
	if struct["dynamodb"] then asserts.AssertStreamRecord(struct["dynamodb"]) end
	if struct["awsRegion"] then asserts.AssertString(struct["awsRegion"]) end
	if struct["eventName"] then asserts.AssertOperationType(struct["eventName"]) end
	if struct["userIdentity"] then asserts.AssertIdentity(struct["userIdentity"]) end
	if struct["eventSource"] then asserts.AssertString(struct["eventSource"]) end
	for k,_ in pairs(struct) do
		assert(keys.Record[k], "Record contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Record
-- <p>A description of a unique event within a stream.</p>
-- @param _eventID [String] <p>A globally unique identifier for the event that was recorded in this stream record.</p>
-- @param _eventVersion [String] <p>The version number of the stream record format. This number is updated whenever the structure of <code>Record</code> is modified.</p> <p>Client applications must not assume that <code>eventVersion</code> will remain at a particular value, as this number is subject to change at any time. In general, <code>eventVersion</code> will only increase as the low-level DynamoDB Streams API evolves.</p>
-- @param _dynamodb [StreamRecord] <p>The main body of the stream record, containing all of the DynamoDB-specific fields.</p>
-- @param _awsRegion [String] <p>The region in which the <code>GetRecords</code> request was received.</p>
-- @param _eventName [OperationType] <p>The type of data modification that was performed on the DynamoDB table:</p> <ul> <li> <p> <code>INSERT</code> - a new item was added to the table.</p> </li> <li> <p> <code>MODIFY</code> - one or more of an existing item's attributes were modified.</p> </li> <li> <p> <code>REMOVE</code> - the item was deleted from the table</p> </li> </ul>
-- @param _userIdentity [Identity] <p>Items that are deleted by the Time to Live process after expiration have the following fields: </p> <ul> <li> <p>Records[].userIdentity.type</p> <p>"Service"</p> </li> <li> <p>Records[].userIdentity.principalId</p> <p>"dynamodb.amazonaws.com"</p> </li> </ul>
-- @param _eventSource [String] <p>The AWS service from which the stream record originated. For DynamoDB Streams, this is <code>aws:dynamodb</code>.</p>
function M.Record(_eventID, _eventVersion, _dynamodb, _awsRegion, _eventName, _userIdentity, _eventSource, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Record")
	local t = { 
		["eventID"] = _eventID,
		["eventVersion"] = _eventVersion,
		["dynamodb"] = _dynamodb,
		["awsRegion"] = _awsRegion,
		["eventName"] = _eventName,
		["userIdentity"] = _userIdentity,
		["eventSource"] = _eventSource,
	}
	asserts.AssertRecord(t)
	return t
end

keys.InternalServerError = { ["message"] = true, nil }

function asserts.AssertInternalServerError(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InternalServerError to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InternalServerError[k], "InternalServerError contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InternalServerError
-- <p>An error occurred on the server side.</p>
-- @param _message [ErrorMessage] <p>The server encountered an internal error trying to fulfill the request.</p>
function M.InternalServerError(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InternalServerError")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertInternalServerError(t)
	return t
end

keys.GetRecordsInput = { ["ShardIterator"] = true, ["Limit"] = true, nil }

function asserts.AssertGetRecordsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetRecordsInput to be of type 'table'")
	assert(struct["ShardIterator"], "Expected key ShardIterator to exist in table")
	if struct["ShardIterator"] then asserts.AssertShardIterator(struct["ShardIterator"]) end
	if struct["Limit"] then asserts.AssertPositiveIntegerObject(struct["Limit"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetRecordsInput[k], "GetRecordsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetRecordsInput
-- <p>Represents the input of a <code>GetRecords</code> operation.</p>
-- @param _ShardIterator [ShardIterator] <p>A shard iterator that was retrieved from a previous GetShardIterator operation. This iterator can be used to access the stream records in this shard.</p>
-- @param _Limit [PositiveIntegerObject] <p>The maximum number of records to return from the shard. The upper limit is 1000.</p>
-- Required parameter: ShardIterator
function M.GetRecordsInput(_ShardIterator, _Limit, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetRecordsInput")
	local t = { 
		["ShardIterator"] = _ShardIterator,
		["Limit"] = _Limit,
	}
	asserts.AssertGetRecordsInput(t)
	return t
end

keys.StreamDescription = { ["StreamLabel"] = true, ["StreamStatus"] = true, ["TableName"] = true, ["Shards"] = true, ["CreationRequestDateTime"] = true, ["StreamArn"] = true, ["LastEvaluatedShardId"] = true, ["KeySchema"] = true, ["StreamViewType"] = true, nil }

function asserts.AssertStreamDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StreamDescription to be of type 'table'")
	if struct["StreamLabel"] then asserts.AssertString(struct["StreamLabel"]) end
	if struct["StreamStatus"] then asserts.AssertStreamStatus(struct["StreamStatus"]) end
	if struct["TableName"] then asserts.AssertTableName(struct["TableName"]) end
	if struct["Shards"] then asserts.AssertShardDescriptionList(struct["Shards"]) end
	if struct["CreationRequestDateTime"] then asserts.AssertDate(struct["CreationRequestDateTime"]) end
	if struct["StreamArn"] then asserts.AssertStreamArn(struct["StreamArn"]) end
	if struct["LastEvaluatedShardId"] then asserts.AssertShardId(struct["LastEvaluatedShardId"]) end
	if struct["KeySchema"] then asserts.AssertKeySchema(struct["KeySchema"]) end
	if struct["StreamViewType"] then asserts.AssertStreamViewType(struct["StreamViewType"]) end
	for k,_ in pairs(struct) do
		assert(keys.StreamDescription[k], "StreamDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StreamDescription
-- <p>Represents all of the data describing a particular stream.</p>
-- @param _StreamLabel [String] <p>A timestamp, in ISO 8601 format, for this stream.</p> <p>Note that <code>LatestStreamLabel</code> is not a unique identifier for the stream, because it is possible that a stream from another table might have the same timestamp. However, the combination of the following three elements is guaranteed to be unique:</p> <ul> <li> <p>the AWS customer ID.</p> </li> <li> <p>the table name</p> </li> <li> <p>the <code>StreamLabel</code> </p> </li> </ul>
-- @param _StreamStatus [StreamStatus] <p>Indicates the current status of the stream:</p> <ul> <li> <p> <code>ENABLING</code> - Streams is currently being enabled on the DynamoDB table.</p> </li> <li> <p> <code>ENABLED</code> - the stream is enabled.</p> </li> <li> <p> <code>DISABLING</code> - Streams is currently being disabled on the DynamoDB table.</p> </li> <li> <p> <code>DISABLED</code> - the stream is disabled.</p> </li> </ul>
-- @param _TableName [TableName] <p>The DynamoDB table with which the stream is associated.</p>
-- @param _Shards [ShardDescriptionList] <p>The shards that comprise the stream.</p>
-- @param _CreationRequestDateTime [Date] <p>The date and time when the request to create this stream was issued.</p>
-- @param _StreamArn [StreamArn] <p>The Amazon Resource Name (ARN) for the stream.</p>
-- @param _LastEvaluatedShardId [ShardId] <p>The shard ID of the item where the operation stopped, inclusive of the previous result set. Use this value to start a new operation, excluding this value in the new request.</p> <p>If <code>LastEvaluatedShardId</code> is empty, then the "last page" of results has been processed and there is currently no more data to be retrieved.</p> <p>If <code>LastEvaluatedShardId</code> is not empty, it does not necessarily mean that there is more data in the result set. The only way to know when you have reached the end of the result set is when <code>LastEvaluatedShardId</code> is empty.</p>
-- @param _KeySchema [KeySchema] <p>The key attribute(s) of the stream's DynamoDB table.</p>
-- @param _StreamViewType [StreamViewType] <p>Indicates the format of the records within this stream:</p> <ul> <li> <p> <code>KEYS_ONLY</code> - only the key attributes of items that were modified in the DynamoDB table.</p> </li> <li> <p> <code>NEW_IMAGE</code> - entire items from the table, as they appeared after they were modified.</p> </li> <li> <p> <code>OLD_IMAGE</code> - entire items from the table, as they appeared before they were modified.</p> </li> <li> <p> <code>NEW_AND_OLD_IMAGES</code> - both the new and the old images of the items from the table.</p> </li> </ul>
function M.StreamDescription(_StreamLabel, _StreamStatus, _TableName, _Shards, _CreationRequestDateTime, _StreamArn, _LastEvaluatedShardId, _KeySchema, _StreamViewType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StreamDescription")
	local t = { 
		["StreamLabel"] = _StreamLabel,
		["StreamStatus"] = _StreamStatus,
		["TableName"] = _TableName,
		["Shards"] = _Shards,
		["CreationRequestDateTime"] = _CreationRequestDateTime,
		["StreamArn"] = _StreamArn,
		["LastEvaluatedShardId"] = _LastEvaluatedShardId,
		["KeySchema"] = _KeySchema,
		["StreamViewType"] = _StreamViewType,
	}
	asserts.AssertStreamDescription(t)
	return t
end

keys.AttributeValue = { ["B"] = true, ["NULL"] = true, ["SS"] = true, ["M"] = true, ["L"] = true, ["N"] = true, ["S"] = true, ["BOOL"] = true, ["BS"] = true, ["NS"] = true, nil }

function asserts.AssertAttributeValue(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttributeValue to be of type 'table'")
	if struct["B"] then asserts.AssertBinaryAttributeValue(struct["B"]) end
	if struct["NULL"] then asserts.AssertNullAttributeValue(struct["NULL"]) end
	if struct["SS"] then asserts.AssertStringSetAttributeValue(struct["SS"]) end
	if struct["M"] then asserts.AssertMapAttributeValue(struct["M"]) end
	if struct["L"] then asserts.AssertListAttributeValue(struct["L"]) end
	if struct["N"] then asserts.AssertNumberAttributeValue(struct["N"]) end
	if struct["S"] then asserts.AssertStringAttributeValue(struct["S"]) end
	if struct["BOOL"] then asserts.AssertBooleanAttributeValue(struct["BOOL"]) end
	if struct["BS"] then asserts.AssertBinarySetAttributeValue(struct["BS"]) end
	if struct["NS"] then asserts.AssertNumberSetAttributeValue(struct["NS"]) end
	for k,_ in pairs(struct) do
		assert(keys.AttributeValue[k], "AttributeValue contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AttributeValue
-- <p>Represents the data for an attribute. You can set one, and only one, of the elements.</p> <p>Each attribute in an item is a name-value pair. An attribute can be single-valued or multi-valued set. For example, a book item can have title and authors attributes. Each book has one title but can have many authors. The multi-valued attribute is a set; duplicate values are not allowed.</p>
-- @param _B [BinaryAttributeValue] <p>A Binary data type.</p>
-- @param _NULL [NullAttributeValue] <p>A Null data type.</p>
-- @param _SS [StringSetAttributeValue] <p>A String Set data type.</p>
-- @param _M [MapAttributeValue] <p>A Map data type.</p>
-- @param _L [ListAttributeValue] <p>A List data type.</p>
-- @param _N [NumberAttributeValue] <p>A Number data type.</p>
-- @param _S [StringAttributeValue] <p>A String data type.</p>
-- @param _BOOL [BooleanAttributeValue] <p>A Boolean data type.</p>
-- @param _BS [BinarySetAttributeValue] <p>A Binary Set data type.</p>
-- @param _NS [NumberSetAttributeValue] <p>A Number Set data type.</p>
function M.AttributeValue(_B, _NULL, _SS, _M, _L, _N, _S, _BOOL, _BS, _NS, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AttributeValue")
	local t = { 
		["B"] = _B,
		["NULL"] = _NULL,
		["SS"] = _SS,
		["M"] = _M,
		["L"] = _L,
		["N"] = _N,
		["S"] = _S,
		["BOOL"] = _BOOL,
		["BS"] = _BS,
		["NS"] = _NS,
	}
	asserts.AssertAttributeValue(t)
	return t
end

keys.Stream = { ["TableName"] = true, ["StreamArn"] = true, ["StreamLabel"] = true, nil }

function asserts.AssertStream(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Stream to be of type 'table'")
	if struct["TableName"] then asserts.AssertTableName(struct["TableName"]) end
	if struct["StreamArn"] then asserts.AssertStreamArn(struct["StreamArn"]) end
	if struct["StreamLabel"] then asserts.AssertString(struct["StreamLabel"]) end
	for k,_ in pairs(struct) do
		assert(keys.Stream[k], "Stream contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Stream
-- <p>Represents all of the data describing a particular stream.</p>
-- @param _TableName [TableName] <p>The DynamoDB table with which the stream is associated.</p>
-- @param _StreamArn [StreamArn] <p>The Amazon Resource Name (ARN) for the stream.</p>
-- @param _StreamLabel [String] <p>A timestamp, in ISO 8601 format, for this stream.</p> <p>Note that <code>LatestStreamLabel</code> is not a unique identifier for the stream, because it is possible that a stream from another table might have the same timestamp. However, the combination of the following three elements is guaranteed to be unique:</p> <ul> <li> <p>the AWS customer ID.</p> </li> <li> <p>the table name</p> </li> <li> <p>the <code>StreamLabel</code> </p> </li> </ul>
function M.Stream(_TableName, _StreamArn, _StreamLabel, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Stream")
	local t = { 
		["TableName"] = _TableName,
		["StreamArn"] = _StreamArn,
		["StreamLabel"] = _StreamLabel,
	}
	asserts.AssertStream(t)
	return t
end

keys.ListStreamsOutput = { ["LastEvaluatedStreamArn"] = true, ["Streams"] = true, nil }

function asserts.AssertListStreamsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListStreamsOutput to be of type 'table'")
	if struct["LastEvaluatedStreamArn"] then asserts.AssertStreamArn(struct["LastEvaluatedStreamArn"]) end
	if struct["Streams"] then asserts.AssertStreamList(struct["Streams"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListStreamsOutput[k], "ListStreamsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListStreamsOutput
-- <p>Represents the output of a <code>ListStreams</code> operation.</p>
-- @param _LastEvaluatedStreamArn [StreamArn] <p>The stream ARN of the item where the operation stopped, inclusive of the previous result set. Use this value to start a new operation, excluding this value in the new request.</p> <p>If <code>LastEvaluatedStreamArn</code> is empty, then the "last page" of results has been processed and there is no more data to be retrieved.</p> <p>If <code>LastEvaluatedStreamArn</code> is not empty, it does not necessarily mean that there is more data in the result set. The only way to know when you have reached the end of the result set is when <code>LastEvaluatedStreamArn</code> is empty.</p>
-- @param _Streams [StreamList] <p>A list of stream descriptors associated with the current account and endpoint.</p>
function M.ListStreamsOutput(_LastEvaluatedStreamArn, _Streams, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListStreamsOutput")
	local t = { 
		["LastEvaluatedStreamArn"] = _LastEvaluatedStreamArn,
		["Streams"] = _Streams,
	}
	asserts.AssertListStreamsOutput(t)
	return t
end

keys.GetRecordsOutput = { ["Records"] = true, ["NextShardIterator"] = true, nil }

function asserts.AssertGetRecordsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetRecordsOutput to be of type 'table'")
	if struct["Records"] then asserts.AssertRecordList(struct["Records"]) end
	if struct["NextShardIterator"] then asserts.AssertShardIterator(struct["NextShardIterator"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetRecordsOutput[k], "GetRecordsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetRecordsOutput
-- <p>Represents the output of a <code>GetRecords</code> operation.</p>
-- @param _Records [RecordList] <p>The stream records from the shard, which were retrieved using the shard iterator.</p>
-- @param _NextShardIterator [ShardIterator] <p>The next position in the shard from which to start sequentially reading stream records. If set to <code>null</code>, the shard has been closed and the requested iterator will not return any more data.</p>
function M.GetRecordsOutput(_Records, _NextShardIterator, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetRecordsOutput")
	local t = { 
		["Records"] = _Records,
		["NextShardIterator"] = _NextShardIterator,
	}
	asserts.AssertGetRecordsOutput(t)
	return t
end

keys.TrimmedDataAccessException = { ["message"] = true, nil }

function asserts.AssertTrimmedDataAccessException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TrimmedDataAccessException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.TrimmedDataAccessException[k], "TrimmedDataAccessException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TrimmedDataAccessException
-- <p>The operation attempted to read past the oldest stream record in a shard.</p> <p>In DynamoDB Streams, there is a 24 hour limit on data retention. Stream records whose age exceeds this limit are subject to removal (trimming) from the stream. You might receive a TrimmedDataAccessException if:</p> <ul> <li><p>You request a shard iterator with a sequence number older than the trim point (24 hours).</p> </li> <li><p>You obtain a shard iterator, but before you use the iterator in a <code>GetRecords</code> request, a stream record in the shard exceeds the 24 hour period and is trimmed. This causes the iterator to access a record that no longer exists.</p> </li> </ul>
-- @param _message [ErrorMessage] <p>"The data you are trying to access has been trimmed.</p>
function M.TrimmedDataAccessException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TrimmedDataAccessException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertTrimmedDataAccessException(t)
	return t
end

keys.ResourceNotFoundException = { ["message"] = true, nil }

function asserts.AssertResourceNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceNotFoundException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResourceNotFoundException[k], "ResourceNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceNotFoundException
-- <p>The operation tried to access a nonexistent stream.</p>
-- @param _message [ErrorMessage] <p>The resource which is being requested does not exist.</p>
function M.ResourceNotFoundException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceNotFoundException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertResourceNotFoundException(t)
	return t
end

keys.StreamRecord = { ["OldImage"] = true, ["SequenceNumber"] = true, ["Keys"] = true, ["SizeBytes"] = true, ["NewImage"] = true, ["ApproximateCreationDateTime"] = true, ["StreamViewType"] = true, nil }

function asserts.AssertStreamRecord(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StreamRecord to be of type 'table'")
	if struct["OldImage"] then asserts.AssertAttributeMap(struct["OldImage"]) end
	if struct["SequenceNumber"] then asserts.AssertSequenceNumber(struct["SequenceNumber"]) end
	if struct["Keys"] then asserts.AssertAttributeMap(struct["Keys"]) end
	if struct["SizeBytes"] then asserts.AssertPositiveLongObject(struct["SizeBytes"]) end
	if struct["NewImage"] then asserts.AssertAttributeMap(struct["NewImage"]) end
	if struct["ApproximateCreationDateTime"] then asserts.AssertDate(struct["ApproximateCreationDateTime"]) end
	if struct["StreamViewType"] then asserts.AssertStreamViewType(struct["StreamViewType"]) end
	for k,_ in pairs(struct) do
		assert(keys.StreamRecord[k], "StreamRecord contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StreamRecord
-- <p>A description of a single data modification that was performed on an item in a DynamoDB table.</p>
-- @param _OldImage [AttributeMap] <p>The item in the DynamoDB table as it appeared before it was modified.</p>
-- @param _SequenceNumber [SequenceNumber] <p>The sequence number of the stream record.</p>
-- @param _Keys [AttributeMap] <p>The primary key attribute(s) for the DynamoDB item that was modified.</p>
-- @param _SizeBytes [PositiveLongObject] <p>The size of the stream record, in bytes.</p>
-- @param _NewImage [AttributeMap] <p>The item in the DynamoDB table as it appeared after it was modified.</p>
-- @param _ApproximateCreationDateTime [Date] <p>The approximate date and time when the stream record was created, in <a href="http://www.epochconverter.com/">UNIX epoch time</a> format.</p>
-- @param _StreamViewType [StreamViewType] <p>The type of data from the modified DynamoDB item that was captured in this stream record:</p> <ul> <li> <p> <code>KEYS_ONLY</code> - only the key attributes of the modified item.</p> </li> <li> <p> <code>NEW_IMAGE</code> - the entire item, as it appeared after it was modified.</p> </li> <li> <p> <code>OLD_IMAGE</code> - the entire item, as it appeared before it was modified.</p> </li> <li> <p> <code>NEW_AND_OLD_IMAGES</code> - both the new and the old item images of the item.</p> </li> </ul>
function M.StreamRecord(_OldImage, _SequenceNumber, _Keys, _SizeBytes, _NewImage, _ApproximateCreationDateTime, _StreamViewType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StreamRecord")
	local t = { 
		["OldImage"] = _OldImage,
		["SequenceNumber"] = _SequenceNumber,
		["Keys"] = _Keys,
		["SizeBytes"] = _SizeBytes,
		["NewImage"] = _NewImage,
		["ApproximateCreationDateTime"] = _ApproximateCreationDateTime,
		["StreamViewType"] = _StreamViewType,
	}
	asserts.AssertStreamRecord(t)
	return t
end

keys.DescribeStreamInput = { ["Limit"] = true, ["StreamArn"] = true, ["ExclusiveStartShardId"] = true, nil }

function asserts.AssertDescribeStreamInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeStreamInput to be of type 'table'")
	assert(struct["StreamArn"], "Expected key StreamArn to exist in table")
	if struct["Limit"] then asserts.AssertPositiveIntegerObject(struct["Limit"]) end
	if struct["StreamArn"] then asserts.AssertStreamArn(struct["StreamArn"]) end
	if struct["ExclusiveStartShardId"] then asserts.AssertShardId(struct["ExclusiveStartShardId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeStreamInput[k], "DescribeStreamInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeStreamInput
-- <p>Represents the input of a <code>DescribeStream</code> operation.</p>
-- @param _Limit [PositiveIntegerObject] <p>The maximum number of shard objects to return. The upper limit is 100.</p>
-- @param _StreamArn [StreamArn] <p>The Amazon Resource Name (ARN) for the stream.</p>
-- @param _ExclusiveStartShardId [ShardId] <p>The shard ID of the first item that this operation will evaluate. Use the value that was returned for <code>LastEvaluatedShardId</code> in the previous operation. </p>
-- Required parameter: StreamArn
function M.DescribeStreamInput(_Limit, _StreamArn, _ExclusiveStartShardId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeStreamInput")
	local t = { 
		["Limit"] = _Limit,
		["StreamArn"] = _StreamArn,
		["ExclusiveStartShardId"] = _ExclusiveStartShardId,
	}
	asserts.AssertDescribeStreamInput(t)
	return t
end

function asserts.AssertTableName(str)
	assert(str)
	assert(type(str) == "string", "Expected TableName to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 3, "Expected string to be min 3 characters")
end

--  
function M.TableName(str)
	asserts.AssertTableName(str)
	return str
end

function asserts.AssertStreamArn(str)
	assert(str)
	assert(type(str) == "string", "Expected StreamArn to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
	assert(#str >= 37, "Expected string to be min 37 characters")
end

--  
function M.StreamArn(str)
	asserts.AssertStreamArn(str)
	return str
end

function asserts.AssertShardIteratorType(str)
	assert(str)
	assert(type(str) == "string", "Expected ShardIteratorType to be of type 'string'")
end

--  
function M.ShardIteratorType(str)
	asserts.AssertShardIteratorType(str)
	return str
end

function asserts.AssertStringAttributeValue(str)
	assert(str)
	assert(type(str) == "string", "Expected StringAttributeValue to be of type 'string'")
end

--  
function M.StringAttributeValue(str)
	asserts.AssertStringAttributeValue(str)
	return str
end

function asserts.AssertSequenceNumber(str)
	assert(str)
	assert(type(str) == "string", "Expected SequenceNumber to be of type 'string'")
	assert(#str <= 40, "Expected string to be max 40 characters")
	assert(#str >= 21, "Expected string to be min 21 characters")
end

--  
function M.SequenceNumber(str)
	asserts.AssertSequenceNumber(str)
	return str
end

function asserts.AssertNumberAttributeValue(str)
	assert(str)
	assert(type(str) == "string", "Expected NumberAttributeValue to be of type 'string'")
end

--  
function M.NumberAttributeValue(str)
	asserts.AssertNumberAttributeValue(str)
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

function asserts.AssertShardIterator(str)
	assert(str)
	assert(type(str) == "string", "Expected ShardIterator to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ShardIterator(str)
	asserts.AssertShardIterator(str)
	return str
end

function asserts.AssertStreamStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected StreamStatus to be of type 'string'")
end

--  
function M.StreamStatus(str)
	asserts.AssertStreamStatus(str)
	return str
end

function asserts.AssertKeySchemaAttributeName(str)
	assert(str)
	assert(type(str) == "string", "Expected KeySchemaAttributeName to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.KeySchemaAttributeName(str)
	asserts.AssertKeySchemaAttributeName(str)
	return str
end

function asserts.AssertKeyType(str)
	assert(str)
	assert(type(str) == "string", "Expected KeyType to be of type 'string'")
end

--  
function M.KeyType(str)
	asserts.AssertKeyType(str)
	return str
end

function asserts.AssertOperationType(str)
	assert(str)
	assert(type(str) == "string", "Expected OperationType to be of type 'string'")
end

--  
function M.OperationType(str)
	asserts.AssertOperationType(str)
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

function asserts.AssertAttributeName(str)
	assert(str)
	assert(type(str) == "string", "Expected AttributeName to be of type 'string'")
	assert(#str <= 65535, "Expected string to be max 65535 characters")
end

--  
function M.AttributeName(str)
	asserts.AssertAttributeName(str)
	return str
end

function asserts.AssertShardId(str)
	assert(str)
	assert(type(str) == "string", "Expected ShardId to be of type 'string'")
	assert(#str <= 65, "Expected string to be max 65 characters")
	assert(#str >= 28, "Expected string to be min 28 characters")
end

--  
function M.ShardId(str)
	asserts.AssertShardId(str)
	return str
end

function asserts.AssertStreamViewType(str)
	assert(str)
	assert(type(str) == "string", "Expected StreamViewType to be of type 'string'")
end

--  
function M.StreamViewType(str)
	asserts.AssertStreamViewType(str)
	return str
end

function asserts.AssertPositiveLongObject(long)
	assert(long)
	assert(type(long) == "number", "Expected PositiveLongObject to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.PositiveLongObject(long)
	asserts.AssertPositiveLongObject(long)
	return long
end

function asserts.AssertPositiveIntegerObject(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected PositiveIntegerObject to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.PositiveIntegerObject(integer)
	asserts.AssertPositiveIntegerObject(integer)
	return integer
end

function asserts.AssertNullAttributeValue(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected NullAttributeValue to be of type 'boolean'")
end

function M.NullAttributeValue(boolean)
	asserts.AssertNullAttributeValue(boolean)
	return boolean
end

function asserts.AssertBooleanAttributeValue(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected BooleanAttributeValue to be of type 'boolean'")
end

function M.BooleanAttributeValue(boolean)
	asserts.AssertBooleanAttributeValue(boolean)
	return boolean
end

function asserts.AssertAttributeMap(map)
	assert(map)
	assert(type(map) == "table", "Expected AttributeMap to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertAttributeName(k)
		asserts.AssertAttributeValue(v)
	end
end

function M.AttributeMap(map)
	asserts.AssertAttributeMap(map)
	return map
end

function asserts.AssertMapAttributeValue(map)
	assert(map)
	assert(type(map) == "table", "Expected MapAttributeValue to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertAttributeName(k)
		asserts.AssertAttributeValue(v)
	end
end

function M.MapAttributeValue(map)
	asserts.AssertMapAttributeValue(map)
	return map
end

function asserts.AssertDate(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected Date to be of type 'string'")
end

function M.Date(timestamp)
	asserts.AssertDate(timestamp)
	return timestamp
end

function asserts.AssertBinaryAttributeValue(blob)
	assert(blob)
	assert(type(string) == "string", "Expected BinaryAttributeValue to be of type 'string'")
end

function M.BinaryAttributeValue(blob)
	asserts.AssertBinaryAttributeValue(blob)
	return blob
end

function asserts.AssertNumberSetAttributeValue(list)
	assert(list)
	assert(type(list) == "table", "Expected NumberSetAttributeValue to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertNumberAttributeValue(v)
	end
end

--  
-- List of NumberAttributeValue objects
function M.NumberSetAttributeValue(list)
	asserts.AssertNumberSetAttributeValue(list)
	return list
end

function asserts.AssertShardDescriptionList(list)
	assert(list)
	assert(type(list) == "table", "Expected ShardDescriptionList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertShard(v)
	end
end

--  
-- List of Shard objects
function M.ShardDescriptionList(list)
	asserts.AssertShardDescriptionList(list)
	return list
end

function asserts.AssertListAttributeValue(list)
	assert(list)
	assert(type(list) == "table", "Expected ListAttributeValue to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertAttributeValue(v)
	end
end

--  
-- List of AttributeValue objects
function M.ListAttributeValue(list)
	asserts.AssertListAttributeValue(list)
	return list
end

function asserts.AssertStringSetAttributeValue(list)
	assert(list)
	assert(type(list) == "table", "Expected StringSetAttributeValue to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertStringAttributeValue(v)
	end
end

--  
-- List of StringAttributeValue objects
function M.StringSetAttributeValue(list)
	asserts.AssertStringSetAttributeValue(list)
	return list
end

function asserts.AssertBinarySetAttributeValue(list)
	assert(list)
	assert(type(list) == "table", "Expected BinarySetAttributeValue to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertBinaryAttributeValue(v)
	end
end

--  
-- List of BinaryAttributeValue objects
function M.BinarySetAttributeValue(list)
	asserts.AssertBinarySetAttributeValue(list)
	return list
end

function asserts.AssertStreamList(list)
	assert(list)
	assert(type(list) == "table", "Expected StreamList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertStream(v)
	end
end

--  
-- List of Stream objects
function M.StreamList(list)
	asserts.AssertStreamList(list)
	return list
end

function asserts.AssertRecordList(list)
	assert(list)
	assert(type(list) == "table", "Expected RecordList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertRecord(v)
	end
end

--  
-- List of Record objects
function M.RecordList(list)
	asserts.AssertRecordList(list)
	return list
end

function asserts.AssertKeySchema(list)
	assert(list)
	assert(type(list) == "table", "Expected KeySchema to be of type ''table")
	assert(#list <= 2, "Expected list to be contain 2 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertKeySchemaElement(v)
	end
end

--  
-- List of KeySchemaElement objects
function M.KeySchema(list)
	asserts.AssertKeySchema(list)
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
			return "streams.dynamodb.amazonaws.com"
		end
	end
	local ss = { "streams.dynamodb" }
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
--- GetRecords
-- @param GetRecordsInput
-- @param cb Callback function accepting two args: response, error_message
function M.GetRecordsAsync(GetRecordsInput, cb)
	assert(GetRecordsInput, "You must provide a GetRecordsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DynamoDBStreams_20120810.GetRecords",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetRecordsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListStreams
-- @param ListStreamsInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListStreamsAsync(ListStreamsInput, cb)
	assert(ListStreamsInput, "You must provide a ListStreamsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DynamoDBStreams_20120810.ListStreams",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListStreamsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetShardIterator
-- @param GetShardIteratorInput
-- @param cb Callback function accepting two args: response, error_message
function M.GetShardIteratorAsync(GetShardIteratorInput, cb)
	assert(GetShardIteratorInput, "You must provide a GetShardIteratorInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DynamoDBStreams_20120810.GetShardIterator",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetShardIteratorInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeStream
-- @param DescribeStreamInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeStreamAsync(DescribeStreamInput, cb)
	assert(DescribeStreamInput, "You must provide a DescribeStreamInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DynamoDBStreams_20120810.DescribeStream",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeStreamInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end


return M
