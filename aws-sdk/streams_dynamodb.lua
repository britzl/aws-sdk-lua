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

local LimitExceededException_keys = { "message" = true, nil }

function M.AssertLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LimitExceededException to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(LimitExceededException_keys[k], "LimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LimitExceededException
-- <p>Your request rate is too high. The AWS SDKs for DynamoDB automatically retry requests that receive this exception. Your request is eventually successful, unless your retry queue is too large to finish. Reduce the frequency of requests and use exponential backoff. For more information, go to <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ErrorHandling.html#APIRetries">Error Retries and Exponential Backoff</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- @param message [ErrorMessage] <p>Too many operations for a given subscriber.</p>
function M.LimitExceededException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LimitExceededException")
	local t = { 
		["message"] = message,
	}
	M.AssertLimitExceededException(t)
	return t
end

local SequenceNumberRange_keys = { "EndingSequenceNumber" = true, "StartingSequenceNumber" = true, nil }

function M.AssertSequenceNumberRange(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SequenceNumberRange to be of type 'table'")
	if struct["EndingSequenceNumber"] then M.AssertSequenceNumber(struct["EndingSequenceNumber"]) end
	if struct["StartingSequenceNumber"] then M.AssertSequenceNumber(struct["StartingSequenceNumber"]) end
	for k,_ in pairs(struct) do
		assert(SequenceNumberRange_keys[k], "SequenceNumberRange contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SequenceNumberRange
-- <p>The beginning and ending sequence numbers for the stream records contained within a shard.</p>
-- @param EndingSequenceNumber [SequenceNumber] <p>The last sequence number.</p>
-- @param StartingSequenceNumber [SequenceNumber] <p>The first sequence number.</p>
function M.SequenceNumberRange(EndingSequenceNumber, StartingSequenceNumber, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SequenceNumberRange")
	local t = { 
		["EndingSequenceNumber"] = EndingSequenceNumber,
		["StartingSequenceNumber"] = StartingSequenceNumber,
	}
	M.AssertSequenceNumberRange(t)
	return t
end

local ListStreamsInput_keys = { "Limit" = true, "TableName" = true, "ExclusiveStartStreamArn" = true, nil }

function M.AssertListStreamsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListStreamsInput to be of type 'table'")
	if struct["Limit"] then M.AssertPositiveIntegerObject(struct["Limit"]) end
	if struct["TableName"] then M.AssertTableName(struct["TableName"]) end
	if struct["ExclusiveStartStreamArn"] then M.AssertStreamArn(struct["ExclusiveStartStreamArn"]) end
	for k,_ in pairs(struct) do
		assert(ListStreamsInput_keys[k], "ListStreamsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListStreamsInput
-- <p>Represents the input of a <code>ListStreams</code> operation.</p>
-- @param Limit [PositiveIntegerObject] <p>The maximum number of streams to return. The upper limit is 100.</p>
-- @param TableName [TableName] <p>If this parameter is provided, then only the streams associated with this table name are returned.</p>
-- @param ExclusiveStartStreamArn [StreamArn] <p>The ARN (Amazon Resource Name) of the first item that this operation will evaluate. Use the value that was returned for <code>LastEvaluatedStreamArn</code> in the previous operation. </p>
function M.ListStreamsInput(Limit, TableName, ExclusiveStartStreamArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListStreamsInput")
	local t = { 
		["Limit"] = Limit,
		["TableName"] = TableName,
		["ExclusiveStartStreamArn"] = ExclusiveStartStreamArn,
	}
	M.AssertListStreamsInput(t)
	return t
end

local KeySchemaElement_keys = { "KeyType" = true, "AttributeName" = true, nil }

function M.AssertKeySchemaElement(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected KeySchemaElement to be of type 'table'")
	assert(struct["AttributeName"], "Expected key AttributeName to exist in table")
	assert(struct["KeyType"], "Expected key KeyType to exist in table")
	if struct["KeyType"] then M.AssertKeyType(struct["KeyType"]) end
	if struct["AttributeName"] then M.AssertKeySchemaAttributeName(struct["AttributeName"]) end
	for k,_ in pairs(struct) do
		assert(KeySchemaElement_keys[k], "KeySchemaElement contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type KeySchemaElement
-- <p>Represents <i>a single element</i> of a key schema. A key schema specifies the attributes that make up the primary key of a table, or the key attributes of an index.</p> <p>A <code>KeySchemaElement</code> represents exactly one attribute of the primary key. For example, a simple primary key (partition key) would be represented by one <code>KeySchemaElement</code>. A composite primary key (partition key and sort key) would require one <code>KeySchemaElement</code> for the partition key, and another <code>KeySchemaElement</code> for the sort key.</p> <note> <p>The partition key of an item is also known as its <i>hash attribute</i>. The term "hash attribute" derives from DynamoDB's usage of an internal hash function to evenly distribute data items across partitions, based on their partition key values.</p> <p>The sort key of an item is also known as its <i>range attribute</i>. The term "range attribute" derives from the way DynamoDB stores items with the same partition key physically close together, in sorted order by the sort key value.</p> </note>
-- @param KeyType [KeyType] <p>The attribute data, consisting of the data type and the attribute value itself.</p>
-- @param AttributeName [KeySchemaAttributeName] <p>The name of a key attribute.</p>
-- Required parameter: AttributeName
-- Required parameter: KeyType
function M.KeySchemaElement(KeyType, AttributeName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating KeySchemaElement")
	local t = { 
		["KeyType"] = KeyType,
		["AttributeName"] = AttributeName,
	}
	M.AssertKeySchemaElement(t)
	return t
end

local Identity_keys = { "Type" = true, "PrincipalId" = true, nil }

function M.AssertIdentity(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Identity to be of type 'table'")
	if struct["Type"] then M.AssertString(struct["Type"]) end
	if struct["PrincipalId"] then M.AssertString(struct["PrincipalId"]) end
	for k,_ in pairs(struct) do
		assert(Identity_keys[k], "Identity contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Identity
-- <p>Contains details about the type of identity that made the request.</p>
-- @param Type [String] <p>The type of the identity. For Time To Live, the type is "Service".</p>
-- @param PrincipalId [String] <p>A unique identifier for the entity that made the call. For Time To Live, the principalId is "dynamodb.amazonaws.com".</p>
function M.Identity(Type, PrincipalId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Identity")
	local t = { 
		["Type"] = Type,
		["PrincipalId"] = PrincipalId,
	}
	M.AssertIdentity(t)
	return t
end

local Shard_keys = { "ShardId" = true, "ParentShardId" = true, "SequenceNumberRange" = true, nil }

function M.AssertShard(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Shard to be of type 'table'")
	if struct["ShardId"] then M.AssertShardId(struct["ShardId"]) end
	if struct["ParentShardId"] then M.AssertShardId(struct["ParentShardId"]) end
	if struct["SequenceNumberRange"] then M.AssertSequenceNumberRange(struct["SequenceNumberRange"]) end
	for k,_ in pairs(struct) do
		assert(Shard_keys[k], "Shard contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Shard
-- <p>A uniquely identified group of stream records within a stream.</p>
-- @param ShardId [ShardId] <p>The system-generated identifier for this shard.</p>
-- @param ParentShardId [ShardId] <p>The shard ID of the current shard's parent.</p>
-- @param SequenceNumberRange [SequenceNumberRange] <p>The range of possible sequence numbers for the shard.</p>
function M.Shard(ShardId, ParentShardId, SequenceNumberRange, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Shard")
	local t = { 
		["ShardId"] = ShardId,
		["ParentShardId"] = ParentShardId,
		["SequenceNumberRange"] = SequenceNumberRange,
	}
	M.AssertShard(t)
	return t
end

local GetShardIteratorInput_keys = { "ShardId" = true, "StreamArn" = true, "SequenceNumber" = true, "ShardIteratorType" = true, nil }

function M.AssertGetShardIteratorInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetShardIteratorInput to be of type 'table'")
	assert(struct["StreamArn"], "Expected key StreamArn to exist in table")
	assert(struct["ShardId"], "Expected key ShardId to exist in table")
	assert(struct["ShardIteratorType"], "Expected key ShardIteratorType to exist in table")
	if struct["ShardId"] then M.AssertShardId(struct["ShardId"]) end
	if struct["StreamArn"] then M.AssertStreamArn(struct["StreamArn"]) end
	if struct["SequenceNumber"] then M.AssertSequenceNumber(struct["SequenceNumber"]) end
	if struct["ShardIteratorType"] then M.AssertShardIteratorType(struct["ShardIteratorType"]) end
	for k,_ in pairs(struct) do
		assert(GetShardIteratorInput_keys[k], "GetShardIteratorInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetShardIteratorInput
-- <p>Represents the input of a <code>GetShardIterator</code> operation.</p>
-- @param ShardId [ShardId] <p>The identifier of the shard. The iterator will be returned for this shard ID.</p>
-- @param StreamArn [StreamArn] <p>The Amazon Resource Name (ARN) for the stream.</p>
-- @param SequenceNumber [SequenceNumber] <p>The sequence number of a stream record in the shard from which to start reading.</p>
-- @param ShardIteratorType [ShardIteratorType] <p>Determines how the shard iterator is used to start reading stream records from the shard:</p> <ul> <li> <p> <code>AT_SEQUENCE_NUMBER</code> - Start reading exactly from the position denoted by a specific sequence number.</p> </li> <li> <p> <code>AFTER_SEQUENCE_NUMBER</code> - Start reading right after the position denoted by a specific sequence number.</p> </li> <li> <p> <code>TRIM_HORIZON</code> - Start reading at the last (untrimmed) stream record, which is the oldest record in the shard. In DynamoDB Streams, there is a 24 hour limit on data retention. Stream records whose age exceeds this limit are subject to removal (trimming) from the stream.</p> </li> <li> <p> <code>LATEST</code> - Start reading just after the most recent stream record in the shard, so that you always read the most recent data in the shard.</p> </li> </ul>
-- Required parameter: StreamArn
-- Required parameter: ShardId
-- Required parameter: ShardIteratorType
function M.GetShardIteratorInput(ShardId, StreamArn, SequenceNumber, ShardIteratorType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetShardIteratorInput")
	local t = { 
		["ShardId"] = ShardId,
		["StreamArn"] = StreamArn,
		["SequenceNumber"] = SequenceNumber,
		["ShardIteratorType"] = ShardIteratorType,
	}
	M.AssertGetShardIteratorInput(t)
	return t
end

local ExpiredIteratorException_keys = { "message" = true, nil }

function M.AssertExpiredIteratorException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ExpiredIteratorException to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(ExpiredIteratorException_keys[k], "ExpiredIteratorException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ExpiredIteratorException
-- <p>The shard iterator has expired and can no longer be used to retrieve stream records. A shard iterator expires 15 minutes after it is retrieved using the <code>GetShardIterator</code> action.</p>
-- @param message [ErrorMessage] <p>The provided iterator exceeds the maximum age allowed.</p>
function M.ExpiredIteratorException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ExpiredIteratorException")
	local t = { 
		["message"] = message,
	}
	M.AssertExpiredIteratorException(t)
	return t
end

local GetShardIteratorOutput_keys = { "ShardIterator" = true, nil }

function M.AssertGetShardIteratorOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetShardIteratorOutput to be of type 'table'")
	if struct["ShardIterator"] then M.AssertShardIterator(struct["ShardIterator"]) end
	for k,_ in pairs(struct) do
		assert(GetShardIteratorOutput_keys[k], "GetShardIteratorOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetShardIteratorOutput
-- <p>Represents the output of a <code>GetShardIterator</code> operation.</p>
-- @param ShardIterator [ShardIterator] <p>The position in the shard from which to start reading stream records sequentially. A shard iterator specifies this position using the sequence number of a stream record in a shard.</p>
function M.GetShardIteratorOutput(ShardIterator, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetShardIteratorOutput")
	local t = { 
		["ShardIterator"] = ShardIterator,
	}
	M.AssertGetShardIteratorOutput(t)
	return t
end

local DescribeStreamOutput_keys = { "StreamDescription" = true, nil }

function M.AssertDescribeStreamOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeStreamOutput to be of type 'table'")
	if struct["StreamDescription"] then M.AssertStreamDescription(struct["StreamDescription"]) end
	for k,_ in pairs(struct) do
		assert(DescribeStreamOutput_keys[k], "DescribeStreamOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeStreamOutput
-- <p>Represents the output of a <code>DescribeStream</code> operation.</p>
-- @param StreamDescription [StreamDescription] <p>A complete description of the stream, including its creation date and time, the DynamoDB table associated with the stream, the shard IDs within the stream, and the beginning and ending sequence numbers of stream records within the shards.</p>
function M.DescribeStreamOutput(StreamDescription, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeStreamOutput")
	local t = { 
		["StreamDescription"] = StreamDescription,
	}
	M.AssertDescribeStreamOutput(t)
	return t
end

local Record_keys = { "eventID" = true, "eventVersion" = true, "dynamodb" = true, "awsRegion" = true, "eventName" = true, "userIdentity" = true, "eventSource" = true, nil }

function M.AssertRecord(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Record to be of type 'table'")
	if struct["eventID"] then M.AssertString(struct["eventID"]) end
	if struct["eventVersion"] then M.AssertString(struct["eventVersion"]) end
	if struct["dynamodb"] then M.AssertStreamRecord(struct["dynamodb"]) end
	if struct["awsRegion"] then M.AssertString(struct["awsRegion"]) end
	if struct["eventName"] then M.AssertOperationType(struct["eventName"]) end
	if struct["userIdentity"] then M.AssertIdentity(struct["userIdentity"]) end
	if struct["eventSource"] then M.AssertString(struct["eventSource"]) end
	for k,_ in pairs(struct) do
		assert(Record_keys[k], "Record contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Record
-- <p>A description of a unique event within a stream.</p>
-- @param eventID [String] <p>A globally unique identifier for the event that was recorded in this stream record.</p>
-- @param eventVersion [String] <p>The version number of the stream record format. This number is updated whenever the structure of <code>Record</code> is modified.</p> <p>Client applications must not assume that <code>eventVersion</code> will remain at a particular value, as this number is subject to change at any time. In general, <code>eventVersion</code> will only increase as the low-level DynamoDB Streams API evolves.</p>
-- @param dynamodb [StreamRecord] <p>The main body of the stream record, containing all of the DynamoDB-specific fields.</p>
-- @param awsRegion [String] <p>The region in which the <code>GetRecords</code> request was received.</p>
-- @param eventName [OperationType] <p>The type of data modification that was performed on the DynamoDB table:</p> <ul> <li> <p> <code>INSERT</code> - a new item was added to the table.</p> </li> <li> <p> <code>MODIFY</code> - one or more of an existing item's attributes were modified.</p> </li> <li> <p> <code>REMOVE</code> - the item was deleted from the table</p> </li> </ul>
-- @param userIdentity [Identity] <p>Items that are deleted by the Time to Live process after expiration have the following fields: </p> <ul> <li> <p>Records[].userIdentity.type</p> <p>"Service"</p> </li> <li> <p>Records[].userIdentity.principalId</p> <p>"dynamodb.amazonaws.com"</p> </li> </ul>
-- @param eventSource [String] <p>The AWS service from which the stream record originated. For DynamoDB Streams, this is <code>aws:dynamodb</code>.</p>
function M.Record(eventID, eventVersion, dynamodb, awsRegion, eventName, userIdentity, eventSource, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Record")
	local t = { 
		["eventID"] = eventID,
		["eventVersion"] = eventVersion,
		["dynamodb"] = dynamodb,
		["awsRegion"] = awsRegion,
		["eventName"] = eventName,
		["userIdentity"] = userIdentity,
		["eventSource"] = eventSource,
	}
	M.AssertRecord(t)
	return t
end

local InternalServerError_keys = { "message" = true, nil }

function M.AssertInternalServerError(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InternalServerError to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InternalServerError_keys[k], "InternalServerError contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InternalServerError
-- <p>An error occurred on the server side.</p>
-- @param message [ErrorMessage] <p>The server encountered an internal error trying to fulfill the request.</p>
function M.InternalServerError(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InternalServerError")
	local t = { 
		["message"] = message,
	}
	M.AssertInternalServerError(t)
	return t
end

local GetRecordsInput_keys = { "ShardIterator" = true, "Limit" = true, nil }

function M.AssertGetRecordsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetRecordsInput to be of type 'table'")
	assert(struct["ShardIterator"], "Expected key ShardIterator to exist in table")
	if struct["ShardIterator"] then M.AssertShardIterator(struct["ShardIterator"]) end
	if struct["Limit"] then M.AssertPositiveIntegerObject(struct["Limit"]) end
	for k,_ in pairs(struct) do
		assert(GetRecordsInput_keys[k], "GetRecordsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetRecordsInput
-- <p>Represents the input of a <code>GetRecords</code> operation.</p>
-- @param ShardIterator [ShardIterator] <p>A shard iterator that was retrieved from a previous GetShardIterator operation. This iterator can be used to access the stream records in this shard.</p>
-- @param Limit [PositiveIntegerObject] <p>The maximum number of records to return from the shard. The upper limit is 1000.</p>
-- Required parameter: ShardIterator
function M.GetRecordsInput(ShardIterator, Limit, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetRecordsInput")
	local t = { 
		["ShardIterator"] = ShardIterator,
		["Limit"] = Limit,
	}
	M.AssertGetRecordsInput(t)
	return t
end

local StreamDescription_keys = { "StreamLabel" = true, "StreamStatus" = true, "TableName" = true, "Shards" = true, "CreationRequestDateTime" = true, "StreamArn" = true, "LastEvaluatedShardId" = true, "KeySchema" = true, "StreamViewType" = true, nil }

function M.AssertStreamDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StreamDescription to be of type 'table'")
	if struct["StreamLabel"] then M.AssertString(struct["StreamLabel"]) end
	if struct["StreamStatus"] then M.AssertStreamStatus(struct["StreamStatus"]) end
	if struct["TableName"] then M.AssertTableName(struct["TableName"]) end
	if struct["Shards"] then M.AssertShardDescriptionList(struct["Shards"]) end
	if struct["CreationRequestDateTime"] then M.AssertDate(struct["CreationRequestDateTime"]) end
	if struct["StreamArn"] then M.AssertStreamArn(struct["StreamArn"]) end
	if struct["LastEvaluatedShardId"] then M.AssertShardId(struct["LastEvaluatedShardId"]) end
	if struct["KeySchema"] then M.AssertKeySchema(struct["KeySchema"]) end
	if struct["StreamViewType"] then M.AssertStreamViewType(struct["StreamViewType"]) end
	for k,_ in pairs(struct) do
		assert(StreamDescription_keys[k], "StreamDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StreamDescription
-- <p>Represents all of the data describing a particular stream.</p>
-- @param StreamLabel [String] <p>A timestamp, in ISO 8601 format, for this stream.</p> <p>Note that <code>LatestStreamLabel</code> is not a unique identifier for the stream, because it is possible that a stream from another table might have the same timestamp. However, the combination of the following three elements is guaranteed to be unique:</p> <ul> <li> <p>the AWS customer ID.</p> </li> <li> <p>the table name</p> </li> <li> <p>the <code>StreamLabel</code> </p> </li> </ul>
-- @param StreamStatus [StreamStatus] <p>Indicates the current status of the stream:</p> <ul> <li> <p> <code>ENABLING</code> - Streams is currently being enabled on the DynamoDB table.</p> </li> <li> <p> <code>ENABLED</code> - the stream is enabled.</p> </li> <li> <p> <code>DISABLING</code> - Streams is currently being disabled on the DynamoDB table.</p> </li> <li> <p> <code>DISABLED</code> - the stream is disabled.</p> </li> </ul>
-- @param TableName [TableName] <p>The DynamoDB table with which the stream is associated.</p>
-- @param Shards [ShardDescriptionList] <p>The shards that comprise the stream.</p>
-- @param CreationRequestDateTime [Date] <p>The date and time when the request to create this stream was issued.</p>
-- @param StreamArn [StreamArn] <p>The Amazon Resource Name (ARN) for the stream.</p>
-- @param LastEvaluatedShardId [ShardId] <p>The shard ID of the item where the operation stopped, inclusive of the previous result set. Use this value to start a new operation, excluding this value in the new request.</p> <p>If <code>LastEvaluatedShardId</code> is empty, then the "last page" of results has been processed and there is currently no more data to be retrieved.</p> <p>If <code>LastEvaluatedShardId</code> is not empty, it does not necessarily mean that there is more data in the result set. The only way to know when you have reached the end of the result set is when <code>LastEvaluatedShardId</code> is empty.</p>
-- @param KeySchema [KeySchema] <p>The key attribute(s) of the stream's DynamoDB table.</p>
-- @param StreamViewType [StreamViewType] <p>Indicates the format of the records within this stream:</p> <ul> <li> <p> <code>KEYS_ONLY</code> - only the key attributes of items that were modified in the DynamoDB table.</p> </li> <li> <p> <code>NEW_IMAGE</code> - entire items from the table, as they appeared after they were modified.</p> </li> <li> <p> <code>OLD_IMAGE</code> - entire items from the table, as they appeared before they were modified.</p> </li> <li> <p> <code>NEW_AND_OLD_IMAGES</code> - both the new and the old images of the items from the table.</p> </li> </ul>
function M.StreamDescription(StreamLabel, StreamStatus, TableName, Shards, CreationRequestDateTime, StreamArn, LastEvaluatedShardId, KeySchema, StreamViewType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StreamDescription")
	local t = { 
		["StreamLabel"] = StreamLabel,
		["StreamStatus"] = StreamStatus,
		["TableName"] = TableName,
		["Shards"] = Shards,
		["CreationRequestDateTime"] = CreationRequestDateTime,
		["StreamArn"] = StreamArn,
		["LastEvaluatedShardId"] = LastEvaluatedShardId,
		["KeySchema"] = KeySchema,
		["StreamViewType"] = StreamViewType,
	}
	M.AssertStreamDescription(t)
	return t
end

local AttributeValue_keys = { "B" = true, "NULL" = true, "SS" = true, "M" = true, "L" = true, "N" = true, "S" = true, "BOOL" = true, "BS" = true, "NS" = true, nil }

function M.AssertAttributeValue(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttributeValue to be of type 'table'")
	if struct["B"] then M.AssertBinaryAttributeValue(struct["B"]) end
	if struct["NULL"] then M.AssertNullAttributeValue(struct["NULL"]) end
	if struct["SS"] then M.AssertStringSetAttributeValue(struct["SS"]) end
	if struct["M"] then M.AssertMapAttributeValue(struct["M"]) end
	if struct["L"] then M.AssertListAttributeValue(struct["L"]) end
	if struct["N"] then M.AssertNumberAttributeValue(struct["N"]) end
	if struct["S"] then M.AssertStringAttributeValue(struct["S"]) end
	if struct["BOOL"] then M.AssertBooleanAttributeValue(struct["BOOL"]) end
	if struct["BS"] then M.AssertBinarySetAttributeValue(struct["BS"]) end
	if struct["NS"] then M.AssertNumberSetAttributeValue(struct["NS"]) end
	for k,_ in pairs(struct) do
		assert(AttributeValue_keys[k], "AttributeValue contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AttributeValue
-- <p>Represents the data for an attribute. You can set one, and only one, of the elements.</p> <p>Each attribute in an item is a name-value pair. An attribute can be single-valued or multi-valued set. For example, a book item can have title and authors attributes. Each book has one title but can have many authors. The multi-valued attribute is a set; duplicate values are not allowed.</p>
-- @param B [BinaryAttributeValue] <p>A Binary data type.</p>
-- @param NULL [NullAttributeValue] <p>A Null data type.</p>
-- @param SS [StringSetAttributeValue] <p>A String Set data type.</p>
-- @param M [MapAttributeValue] <p>A Map data type.</p>
-- @param L [ListAttributeValue] <p>A List data type.</p>
-- @param N [NumberAttributeValue] <p>A Number data type.</p>
-- @param S [StringAttributeValue] <p>A String data type.</p>
-- @param BOOL [BooleanAttributeValue] <p>A Boolean data type.</p>
-- @param BS [BinarySetAttributeValue] <p>A Binary Set data type.</p>
-- @param NS [NumberSetAttributeValue] <p>A Number Set data type.</p>
function M.AttributeValue(B, NULL, SS, M, L, N, S, BOOL, BS, NS, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AttributeValue")
	local t = { 
		["B"] = B,
		["NULL"] = NULL,
		["SS"] = SS,
		["M"] = M,
		["L"] = L,
		["N"] = N,
		["S"] = S,
		["BOOL"] = BOOL,
		["BS"] = BS,
		["NS"] = NS,
	}
	M.AssertAttributeValue(t)
	return t
end

local Stream_keys = { "TableName" = true, "StreamArn" = true, "StreamLabel" = true, nil }

function M.AssertStream(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Stream to be of type 'table'")
	if struct["TableName"] then M.AssertTableName(struct["TableName"]) end
	if struct["StreamArn"] then M.AssertStreamArn(struct["StreamArn"]) end
	if struct["StreamLabel"] then M.AssertString(struct["StreamLabel"]) end
	for k,_ in pairs(struct) do
		assert(Stream_keys[k], "Stream contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Stream
-- <p>Represents all of the data describing a particular stream.</p>
-- @param TableName [TableName] <p>The DynamoDB table with which the stream is associated.</p>
-- @param StreamArn [StreamArn] <p>The Amazon Resource Name (ARN) for the stream.</p>
-- @param StreamLabel [String] <p>A timestamp, in ISO 8601 format, for this stream.</p> <p>Note that <code>LatestStreamLabel</code> is not a unique identifier for the stream, because it is possible that a stream from another table might have the same timestamp. However, the combination of the following three elements is guaranteed to be unique:</p> <ul> <li> <p>the AWS customer ID.</p> </li> <li> <p>the table name</p> </li> <li> <p>the <code>StreamLabel</code> </p> </li> </ul>
function M.Stream(TableName, StreamArn, StreamLabel, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Stream")
	local t = { 
		["TableName"] = TableName,
		["StreamArn"] = StreamArn,
		["StreamLabel"] = StreamLabel,
	}
	M.AssertStream(t)
	return t
end

local ListStreamsOutput_keys = { "LastEvaluatedStreamArn" = true, "Streams" = true, nil }

function M.AssertListStreamsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListStreamsOutput to be of type 'table'")
	if struct["LastEvaluatedStreamArn"] then M.AssertStreamArn(struct["LastEvaluatedStreamArn"]) end
	if struct["Streams"] then M.AssertStreamList(struct["Streams"]) end
	for k,_ in pairs(struct) do
		assert(ListStreamsOutput_keys[k], "ListStreamsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListStreamsOutput
-- <p>Represents the output of a <code>ListStreams</code> operation.</p>
-- @param LastEvaluatedStreamArn [StreamArn] <p>The stream ARN of the item where the operation stopped, inclusive of the previous result set. Use this value to start a new operation, excluding this value in the new request.</p> <p>If <code>LastEvaluatedStreamArn</code> is empty, then the "last page" of results has been processed and there is no more data to be retrieved.</p> <p>If <code>LastEvaluatedStreamArn</code> is not empty, it does not necessarily mean that there is more data in the result set. The only way to know when you have reached the end of the result set is when <code>LastEvaluatedStreamArn</code> is empty.</p>
-- @param Streams [StreamList] <p>A list of stream descriptors associated with the current account and endpoint.</p>
function M.ListStreamsOutput(LastEvaluatedStreamArn, Streams, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListStreamsOutput")
	local t = { 
		["LastEvaluatedStreamArn"] = LastEvaluatedStreamArn,
		["Streams"] = Streams,
	}
	M.AssertListStreamsOutput(t)
	return t
end

local GetRecordsOutput_keys = { "Records" = true, "NextShardIterator" = true, nil }

function M.AssertGetRecordsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetRecordsOutput to be of type 'table'")
	if struct["Records"] then M.AssertRecordList(struct["Records"]) end
	if struct["NextShardIterator"] then M.AssertShardIterator(struct["NextShardIterator"]) end
	for k,_ in pairs(struct) do
		assert(GetRecordsOutput_keys[k], "GetRecordsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetRecordsOutput
-- <p>Represents the output of a <code>GetRecords</code> operation.</p>
-- @param Records [RecordList] <p>The stream records from the shard, which were retrieved using the shard iterator.</p>
-- @param NextShardIterator [ShardIterator] <p>The next position in the shard from which to start sequentially reading stream records. If set to <code>null</code>, the shard has been closed and the requested iterator will not return any more data.</p>
function M.GetRecordsOutput(Records, NextShardIterator, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetRecordsOutput")
	local t = { 
		["Records"] = Records,
		["NextShardIterator"] = NextShardIterator,
	}
	M.AssertGetRecordsOutput(t)
	return t
end

local TrimmedDataAccessException_keys = { "message" = true, nil }

function M.AssertTrimmedDataAccessException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TrimmedDataAccessException to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(TrimmedDataAccessException_keys[k], "TrimmedDataAccessException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TrimmedDataAccessException
-- <p>The operation attempted to read past the oldest stream record in a shard.</p> <p>In DynamoDB Streams, there is a 24 hour limit on data retention. Stream records whose age exceeds this limit are subject to removal (trimming) from the stream. You might receive a TrimmedDataAccessException if:</p> <ul> <li><p>You request a shard iterator with a sequence number older than the trim point (24 hours).</p> </li> <li><p>You obtain a shard iterator, but before you use the iterator in a <code>GetRecords</code> request, a stream record in the shard exceeds the 24 hour period and is trimmed. This causes the iterator to access a record that no longer exists.</p> </li> </ul>
-- @param message [ErrorMessage] <p>"The data you are trying to access has been trimmed.</p>
function M.TrimmedDataAccessException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TrimmedDataAccessException")
	local t = { 
		["message"] = message,
	}
	M.AssertTrimmedDataAccessException(t)
	return t
end

local ResourceNotFoundException_keys = { "message" = true, nil }

function M.AssertResourceNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceNotFoundException to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(ResourceNotFoundException_keys[k], "ResourceNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceNotFoundException
-- <p>The operation tried to access a nonexistent stream.</p>
-- @param message [ErrorMessage] <p>The resource which is being requested does not exist.</p>
function M.ResourceNotFoundException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceNotFoundException")
	local t = { 
		["message"] = message,
	}
	M.AssertResourceNotFoundException(t)
	return t
end

local StreamRecord_keys = { "OldImage" = true, "SequenceNumber" = true, "Keys" = true, "SizeBytes" = true, "NewImage" = true, "ApproximateCreationDateTime" = true, "StreamViewType" = true, nil }

function M.AssertStreamRecord(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StreamRecord to be of type 'table'")
	if struct["OldImage"] then M.AssertAttributeMap(struct["OldImage"]) end
	if struct["SequenceNumber"] then M.AssertSequenceNumber(struct["SequenceNumber"]) end
	if struct["Keys"] then M.AssertAttributeMap(struct["Keys"]) end
	if struct["SizeBytes"] then M.AssertPositiveLongObject(struct["SizeBytes"]) end
	if struct["NewImage"] then M.AssertAttributeMap(struct["NewImage"]) end
	if struct["ApproximateCreationDateTime"] then M.AssertDate(struct["ApproximateCreationDateTime"]) end
	if struct["StreamViewType"] then M.AssertStreamViewType(struct["StreamViewType"]) end
	for k,_ in pairs(struct) do
		assert(StreamRecord_keys[k], "StreamRecord contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StreamRecord
-- <p>A description of a single data modification that was performed on an item in a DynamoDB table.</p>
-- @param OldImage [AttributeMap] <p>The item in the DynamoDB table as it appeared before it was modified.</p>
-- @param SequenceNumber [SequenceNumber] <p>The sequence number of the stream record.</p>
-- @param Keys [AttributeMap] <p>The primary key attribute(s) for the DynamoDB item that was modified.</p>
-- @param SizeBytes [PositiveLongObject] <p>The size of the stream record, in bytes.</p>
-- @param NewImage [AttributeMap] <p>The item in the DynamoDB table as it appeared after it was modified.</p>
-- @param ApproximateCreationDateTime [Date] <p>The approximate date and time when the stream record was created, in <a href="http://www.epochconverter.com/">UNIX epoch time</a> format.</p>
-- @param StreamViewType [StreamViewType] <p>The type of data from the modified DynamoDB item that was captured in this stream record:</p> <ul> <li> <p> <code>KEYS_ONLY</code> - only the key attributes of the modified item.</p> </li> <li> <p> <code>NEW_IMAGE</code> - the entire item, as it appeared after it was modified.</p> </li> <li> <p> <code>OLD_IMAGE</code> - the entire item, as it appeared before it was modified.</p> </li> <li> <p> <code>NEW_AND_OLD_IMAGES</code> - both the new and the old item images of the item.</p> </li> </ul>
function M.StreamRecord(OldImage, SequenceNumber, Keys, SizeBytes, NewImage, ApproximateCreationDateTime, StreamViewType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StreamRecord")
	local t = { 
		["OldImage"] = OldImage,
		["SequenceNumber"] = SequenceNumber,
		["Keys"] = Keys,
		["SizeBytes"] = SizeBytes,
		["NewImage"] = NewImage,
		["ApproximateCreationDateTime"] = ApproximateCreationDateTime,
		["StreamViewType"] = StreamViewType,
	}
	M.AssertStreamRecord(t)
	return t
end

local DescribeStreamInput_keys = { "Limit" = true, "StreamArn" = true, "ExclusiveStartShardId" = true, nil }

function M.AssertDescribeStreamInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeStreamInput to be of type 'table'")
	assert(struct["StreamArn"], "Expected key StreamArn to exist in table")
	if struct["Limit"] then M.AssertPositiveIntegerObject(struct["Limit"]) end
	if struct["StreamArn"] then M.AssertStreamArn(struct["StreamArn"]) end
	if struct["ExclusiveStartShardId"] then M.AssertShardId(struct["ExclusiveStartShardId"]) end
	for k,_ in pairs(struct) do
		assert(DescribeStreamInput_keys[k], "DescribeStreamInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeStreamInput
-- <p>Represents the input of a <code>DescribeStream</code> operation.</p>
-- @param Limit [PositiveIntegerObject] <p>The maximum number of shard objects to return. The upper limit is 100.</p>
-- @param StreamArn [StreamArn] <p>The Amazon Resource Name (ARN) for the stream.</p>
-- @param ExclusiveStartShardId [ShardId] <p>The shard ID of the first item that this operation will evaluate. Use the value that was returned for <code>LastEvaluatedShardId</code> in the previous operation. </p>
-- Required parameter: StreamArn
function M.DescribeStreamInput(Limit, StreamArn, ExclusiveStartShardId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeStreamInput")
	local t = { 
		["Limit"] = Limit,
		["StreamArn"] = StreamArn,
		["ExclusiveStartShardId"] = ExclusiveStartShardId,
	}
	M.AssertDescribeStreamInput(t)
	return t
end

function M.AssertTableName(str)
	assert(str)
	assert(type(str) == "string", "Expected TableName to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 3, "Expected string to be min 3 characters")
	assert(str:match("[a-zA-Z0-9_.-]+"), "Expected string to match pattern '[a-zA-Z0-9_.-]+'")
end

--  
function M.TableName(str)
	M.AssertTableName(str)
	return str
end

function M.AssertStreamArn(str)
	assert(str)
	assert(type(str) == "string", "Expected StreamArn to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
	assert(#str >= 37, "Expected string to be min 37 characters")
end

--  
function M.StreamArn(str)
	M.AssertStreamArn(str)
	return str
end

function M.AssertShardIteratorType(str)
	assert(str)
	assert(type(str) == "string", "Expected ShardIteratorType to be of type 'string'")
end

--  
function M.ShardIteratorType(str)
	M.AssertShardIteratorType(str)
	return str
end

function M.AssertStringAttributeValue(str)
	assert(str)
	assert(type(str) == "string", "Expected StringAttributeValue to be of type 'string'")
end

--  
function M.StringAttributeValue(str)
	M.AssertStringAttributeValue(str)
	return str
end

function M.AssertSequenceNumber(str)
	assert(str)
	assert(type(str) == "string", "Expected SequenceNumber to be of type 'string'")
	assert(#str <= 40, "Expected string to be max 40 characters")
	assert(#str >= 21, "Expected string to be min 21 characters")
end

--  
function M.SequenceNumber(str)
	M.AssertSequenceNumber(str)
	return str
end

function M.AssertNumberAttributeValue(str)
	assert(str)
	assert(type(str) == "string", "Expected NumberAttributeValue to be of type 'string'")
end

--  
function M.NumberAttributeValue(str)
	M.AssertNumberAttributeValue(str)
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

function M.AssertShardIterator(str)
	assert(str)
	assert(type(str) == "string", "Expected ShardIterator to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ShardIterator(str)
	M.AssertShardIterator(str)
	return str
end

function M.AssertStreamStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected StreamStatus to be of type 'string'")
end

--  
function M.StreamStatus(str)
	M.AssertStreamStatus(str)
	return str
end

function M.AssertKeySchemaAttributeName(str)
	assert(str)
	assert(type(str) == "string", "Expected KeySchemaAttributeName to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.KeySchemaAttributeName(str)
	M.AssertKeySchemaAttributeName(str)
	return str
end

function M.AssertKeyType(str)
	assert(str)
	assert(type(str) == "string", "Expected KeyType to be of type 'string'")
end

--  
function M.KeyType(str)
	M.AssertKeyType(str)
	return str
end

function M.AssertOperationType(str)
	assert(str)
	assert(type(str) == "string", "Expected OperationType to be of type 'string'")
end

--  
function M.OperationType(str)
	M.AssertOperationType(str)
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

function M.AssertAttributeName(str)
	assert(str)
	assert(type(str) == "string", "Expected AttributeName to be of type 'string'")
	assert(#str <= 65535, "Expected string to be max 65535 characters")
end

--  
function M.AttributeName(str)
	M.AssertAttributeName(str)
	return str
end

function M.AssertShardId(str)
	assert(str)
	assert(type(str) == "string", "Expected ShardId to be of type 'string'")
	assert(#str <= 65, "Expected string to be max 65 characters")
	assert(#str >= 28, "Expected string to be min 28 characters")
end

--  
function M.ShardId(str)
	M.AssertShardId(str)
	return str
end

function M.AssertStreamViewType(str)
	assert(str)
	assert(type(str) == "string", "Expected StreamViewType to be of type 'string'")
end

--  
function M.StreamViewType(str)
	M.AssertStreamViewType(str)
	return str
end

function M.AssertPositiveLongObject(long)
	assert(long)
	assert(type(long) == "number", "Expected PositiveLongObject to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.PositiveLongObject(long)
	M.AssertPositiveLongObject(long)
	return long
end

function M.AssertPositiveIntegerObject(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected PositiveIntegerObject to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.PositiveIntegerObject(integer)
	M.AssertPositiveIntegerObject(integer)
	return integer
end

function M.AssertNullAttributeValue(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected NullAttributeValue to be of type 'boolean'")
end

function M.NullAttributeValue(boolean)
	M.AssertNullAttributeValue(boolean)
	return boolean
end

function M.AssertBooleanAttributeValue(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected BooleanAttributeValue to be of type 'boolean'")
end

function M.BooleanAttributeValue(boolean)
	M.AssertBooleanAttributeValue(boolean)
	return boolean
end

function M.AssertAttributeMap(map)
	assert(map)
	assert(type(map) == "table", "Expected AttributeMap to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertAttributeName(k)
		M.AssertAttributeValue(v)
	end
end

function M.AttributeMap(map)
	M.AssertAttributeMap(map)
	return map
end

function M.AssertMapAttributeValue(map)
	assert(map)
	assert(type(map) == "table", "Expected MapAttributeValue to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertAttributeName(k)
		M.AssertAttributeValue(v)
	end
end

function M.MapAttributeValue(map)
	M.AssertMapAttributeValue(map)
	return map
end

function M.AssertDate(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected Date to be of type 'string'")
end

function M.Date(timestamp)
	M.AssertDate(timestamp)
	return timestamp
end

function M.AssertBinaryAttributeValue(blob)
	assert(blob)
	assert(type(string) == "string", "Expected BinaryAttributeValue to be of type 'string'")
end

function M.BinaryAttributeValue(blob)
	M.AssertBinaryAttributeValue(blob)
	return blob
end

function M.AssertNumberSetAttributeValue(list)
	assert(list)
	assert(type(list) == "table", "Expected NumberSetAttributeValue to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertNumberAttributeValue(v)
	end
end

--  
-- List of NumberAttributeValue objects
function M.NumberSetAttributeValue(list)
	M.AssertNumberSetAttributeValue(list)
	return list
end

function M.AssertShardDescriptionList(list)
	assert(list)
	assert(type(list) == "table", "Expected ShardDescriptionList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertShard(v)
	end
end

--  
-- List of Shard objects
function M.ShardDescriptionList(list)
	M.AssertShardDescriptionList(list)
	return list
end

function M.AssertListAttributeValue(list)
	assert(list)
	assert(type(list) == "table", "Expected ListAttributeValue to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertAttributeValue(v)
	end
end

--  
-- List of AttributeValue objects
function M.ListAttributeValue(list)
	M.AssertListAttributeValue(list)
	return list
end

function M.AssertStringSetAttributeValue(list)
	assert(list)
	assert(type(list) == "table", "Expected StringSetAttributeValue to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertStringAttributeValue(v)
	end
end

--  
-- List of StringAttributeValue objects
function M.StringSetAttributeValue(list)
	M.AssertStringSetAttributeValue(list)
	return list
end

function M.AssertBinarySetAttributeValue(list)
	assert(list)
	assert(type(list) == "table", "Expected BinarySetAttributeValue to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertBinaryAttributeValue(v)
	end
end

--  
-- List of BinaryAttributeValue objects
function M.BinarySetAttributeValue(list)
	M.AssertBinarySetAttributeValue(list)
	return list
end

function M.AssertStreamList(list)
	assert(list)
	assert(type(list) == "table", "Expected StreamList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertStream(v)
	end
end

--  
-- List of Stream objects
function M.StreamList(list)
	M.AssertStreamList(list)
	return list
end

function M.AssertRecordList(list)
	assert(list)
	assert(type(list) == "table", "Expected RecordList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertRecord(v)
	end
end

--  
-- List of Record objects
function M.RecordList(list)
	M.AssertRecordList(list)
	return list
end

function M.AssertKeySchema(list)
	assert(list)
	assert(type(list) == "table", "Expected KeySchema to be of type ''table")
	assert(#list <= 2, "Expected list to be contain 2 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AssertKeySchemaElement(v)
	end
end

--  
-- List of KeySchemaElement objects
function M.KeySchema(list)
	M.AssertKeySchema(list)
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
