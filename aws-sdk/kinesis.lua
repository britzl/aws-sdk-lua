--- GENERATED CODE - DO NOT MODIFY
-- Amazon Kinesis (kinesis-2013-12-02)

local M = {}

M.metadata = {
	api_version = "2013-12-02",
	json_version = "1.1",
	protocol = "json",
	checksum_format = "",
	endpoint_prefix = "kinesis",
	service_abbreviation = "Kinesis",
	service_full_name = "Amazon Kinesis",
	signature_version = "v4",
	target_prefix = "Kinesis_20131202",
	timestamp_format = "",
	global_endpoint = "",
	uid = "kinesis-2013-12-02",
}

local keys = {}
local asserts = {}

keys.DescribeStreamConsumerInput = { ["ConsumerName"] = true, ["ConsumerARN"] = true, ["StreamARN"] = true, nil }

function asserts.AssertDescribeStreamConsumerInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeStreamConsumerInput to be of type 'table'")
	if struct["ConsumerName"] then asserts.AssertConsumerName(struct["ConsumerName"]) end
	if struct["ConsumerARN"] then asserts.AssertConsumerARN(struct["ConsumerARN"]) end
	if struct["StreamARN"] then asserts.AssertStreamARN(struct["StreamARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeStreamConsumerInput[k], "DescribeStreamConsumerInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeStreamConsumerInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ConsumerName [ConsumerName] <p>The name that you gave to the consumer.</p>
-- * ConsumerARN [ConsumerARN] <p>The ARN returned by Kinesis Data Streams when you registered the consumer.</p>
-- * StreamARN [StreamARN] <p>The ARN of the Kinesis data stream that the consumer is registered with. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-kinesis-streams">Amazon Resource Names (ARNs) and AWS Service Namespaces</a>.</p>
-- @return DescribeStreamConsumerInput structure as a key-value pair table
function M.DescribeStreamConsumerInput(args)
	assert(args, "You must provide an argument table when creating DescribeStreamConsumerInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ConsumerName"] = args["ConsumerName"],
		["ConsumerARN"] = args["ConsumerARN"],
		["StreamARN"] = args["StreamARN"],
	}
	asserts.AssertDescribeStreamConsumerInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeStreamSummaryOutput = { ["StreamDescriptionSummary"] = true, nil }

function asserts.AssertDescribeStreamSummaryOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeStreamSummaryOutput to be of type 'table'")
	assert(struct["StreamDescriptionSummary"], "Expected key StreamDescriptionSummary to exist in table")
	if struct["StreamDescriptionSummary"] then asserts.AssertStreamDescriptionSummary(struct["StreamDescriptionSummary"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeStreamSummaryOutput[k], "DescribeStreamSummaryOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeStreamSummaryOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StreamDescriptionSummary [StreamDescriptionSummary] <p>A <a>StreamDescriptionSummary</a> containing information about the stream.</p>
-- Required key: StreamDescriptionSummary
-- @return DescribeStreamSummaryOutput structure as a key-value pair table
function M.DescribeStreamSummaryOutput(args)
	assert(args, "You must provide an argument table when creating DescribeStreamSummaryOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StreamDescriptionSummary"] = args["StreamDescriptionSummary"],
	}
	asserts.AssertDescribeStreamSummaryOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.KMSInvalidStateException = { ["message"] = true, nil }

function asserts.AssertKMSInvalidStateException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected KMSInvalidStateException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.KMSInvalidStateException[k], "KMSInvalidStateException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type KMSInvalidStateException
-- <p>The request was rejected because the state of the specified resource isn't valid for this request. For more information, see <a href="http://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">How Key State Affects Use of a Customer Master Key</a> in the <i>AWS Key Management Service Developer Guide</i>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] <p>A message that provides information about the error.</p>
-- @return KMSInvalidStateException structure as a key-value pair table
function M.KMSInvalidStateException(args)
	assert(args, "You must provide an argument table when creating KMSInvalidStateException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertKMSInvalidStateException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AddTagsToStreamInput = { ["StreamName"] = true, ["Tags"] = true, nil }

function asserts.AssertAddTagsToStreamInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddTagsToStreamInput to be of type 'table'")
	assert(struct["StreamName"], "Expected key StreamName to exist in table")
	assert(struct["Tags"], "Expected key Tags to exist in table")
	if struct["StreamName"] then asserts.AssertStreamName(struct["StreamName"]) end
	if struct["Tags"] then asserts.AssertTagMap(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.AddTagsToStreamInput[k], "AddTagsToStreamInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddTagsToStreamInput
-- <p>Represents the input for <code>AddTagsToStream</code>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StreamName [StreamName] <p>The name of the stream.</p>
-- * Tags [TagMap] <p>A set of up to 10 key-value pairs to use to create the tags.</p>
-- Required key: StreamName
-- Required key: Tags
-- @return AddTagsToStreamInput structure as a key-value pair table
function M.AddTagsToStreamInput(args)
	assert(args, "You must provide an argument table when creating AddTagsToStreamInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StreamName"] = args["StreamName"],
		["Tags"] = args["Tags"],
	}
	asserts.AssertAddTagsToStreamInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListShardsInput = { ["StreamCreationTimestamp"] = true, ["StreamName"] = true, ["NextToken"] = true, ["MaxResults"] = true, ["ExclusiveStartShardId"] = true, nil }

function asserts.AssertListShardsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListShardsInput to be of type 'table'")
	if struct["StreamCreationTimestamp"] then asserts.AssertTimestamp(struct["StreamCreationTimestamp"]) end
	if struct["StreamName"] then asserts.AssertStreamName(struct["StreamName"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertListShardsInputLimit(struct["MaxResults"]) end
	if struct["ExclusiveStartShardId"] then asserts.AssertShardId(struct["ExclusiveStartShardId"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListShardsInput[k], "ListShardsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListShardsInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StreamCreationTimestamp [Timestamp] <p>Specify this input parameter to distinguish data streams that have the same name. For example, if you create a data stream and then delete it, and you later create another data stream with the same name, you can use this input parameter to specify which of the two streams you want to list the shards for.</p> <p>You cannot specify this parameter if you specify the <code>NextToken</code> parameter.</p>
-- * StreamName [StreamName] <p>The name of the data stream whose shards you want to list. </p> <p>You cannot specify this parameter if you specify the <code>NextToken</code> parameter.</p>
-- * NextToken [NextToken] <p>When the number of shards in the data stream is greater than the default value for the <code>MaxResults</code> parameter, or if you explicitly specify a value for <code>MaxResults</code> that is less than the number of shards in the data stream, the response includes a pagination token named <code>NextToken</code>. You can specify this <code>NextToken</code> value in a subsequent call to <code>ListShards</code> to list the next set of shards.</p> <p>Don't specify <code>StreamName</code> or <code>StreamCreationTimestamp</code> if you specify <code>NextToken</code> because the latter unambiguously identifies the stream.</p> <p>You can optionally specify a value for the <code>MaxResults</code> parameter when you specify <code>NextToken</code>. If you specify a <code>MaxResults</code> value that is less than the number of shards that the operation returns if you don't specify <code>MaxResults</code>, the response will contain a new <code>NextToken</code> value. You can use the new <code>NextToken</code> value in a subsequent call to the <code>ListShards</code> operation.</p> <important> <p>Tokens expire after 300 seconds. When you obtain a value for <code>NextToken</code> in the response to a call to <code>ListShards</code>, you have 300 seconds to use that value. If you specify an expired token in a call to <code>ListShards</code>, you get <code>ExpiredNextTokenException</code>.</p> </important>
-- * MaxResults [ListShardsInputLimit] <p>The maximum number of shards to return in a single call to <code>ListShards</code>. The minimum value you can specify for this parameter is 1, and the maximum is 1,000, which is also the default.</p> <p>When the number of shards to be listed is greater than the value of <code>MaxResults</code>, the response contains a <code>NextToken</code> value that you can use in a subsequent call to <code>ListShards</code> to list the next set of shards.</p>
-- * ExclusiveStartShardId [ShardId] <p>Specify this parameter to indicate that you want to list the shards starting with the shard whose ID immediately follows <code>ExclusiveStartShardId</code>.</p> <p>If you don't specify this parameter, the default behavior is for <code>ListShards</code> to list the shards starting with the first one in the stream.</p> <p>You cannot specify this parameter if you specify <code>NextToken</code>.</p>
-- @return ListShardsInput structure as a key-value pair table
function M.ListShardsInput(args)
	assert(args, "You must provide an argument table when creating ListShardsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StreamCreationTimestamp"] = args["StreamCreationTimestamp"],
		["StreamName"] = args["StreamName"],
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
		["ExclusiveStartShardId"] = args["ExclusiveStartShardId"],
	}
	asserts.AssertListShardsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutRecordsOutput = { ["FailedRecordCount"] = true, ["Records"] = true, ["EncryptionType"] = true, nil }

function asserts.AssertPutRecordsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutRecordsOutput to be of type 'table'")
	assert(struct["Records"], "Expected key Records to exist in table")
	if struct["FailedRecordCount"] then asserts.AssertPositiveIntegerObject(struct["FailedRecordCount"]) end
	if struct["Records"] then asserts.AssertPutRecordsResultEntryList(struct["Records"]) end
	if struct["EncryptionType"] then asserts.AssertEncryptionType(struct["EncryptionType"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutRecordsOutput[k], "PutRecordsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutRecordsOutput
-- <p> <code>PutRecords</code> results.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FailedRecordCount [PositiveIntegerObject] <p>The number of unsuccessfully processed records in a <code>PutRecords</code> request.</p>
-- * Records [PutRecordsResultEntryList] <p>An array of successfully and unsuccessfully processed record results, correlated with the request by natural ordering. A record that is successfully added to a stream includes <code>SequenceNumber</code> and <code>ShardId</code> in the result. A record that fails to be added to a stream includes <code>ErrorCode</code> and <code>ErrorMessage</code> in the result.</p>
-- * EncryptionType [EncryptionType] <p>The encryption type used on the records. This parameter can be one of the following values:</p> <ul> <li> <p> <code>NONE</code>: Do not encrypt the records.</p> </li> <li> <p> <code>KMS</code>: Use server-side encryption on the records using a customer-managed AWS KMS key.</p> </li> </ul>
-- Required key: Records
-- @return PutRecordsOutput structure as a key-value pair table
function M.PutRecordsOutput(args)
	assert(args, "You must provide an argument table when creating PutRecordsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["FailedRecordCount"] = args["FailedRecordCount"],
		["Records"] = args["Records"],
		["EncryptionType"] = args["EncryptionType"],
	}
	asserts.AssertPutRecordsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutRecordOutput = { ["ShardId"] = true, ["EncryptionType"] = true, ["SequenceNumber"] = true, nil }

function asserts.AssertPutRecordOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutRecordOutput to be of type 'table'")
	assert(struct["ShardId"], "Expected key ShardId to exist in table")
	assert(struct["SequenceNumber"], "Expected key SequenceNumber to exist in table")
	if struct["ShardId"] then asserts.AssertShardId(struct["ShardId"]) end
	if struct["EncryptionType"] then asserts.AssertEncryptionType(struct["EncryptionType"]) end
	if struct["SequenceNumber"] then asserts.AssertSequenceNumber(struct["SequenceNumber"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutRecordOutput[k], "PutRecordOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutRecordOutput
-- <p>Represents the output for <code>PutRecord</code>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ShardId [ShardId] <p>The shard ID of the shard where the data record was placed.</p>
-- * EncryptionType [EncryptionType] <p>The encryption type to use on the record. This parameter can be one of the following values:</p> <ul> <li> <p> <code>NONE</code>: Do not encrypt the records in the stream.</p> </li> <li> <p> <code>KMS</code>: Use server-side encryption on the records in the stream using a customer-managed AWS KMS key.</p> </li> </ul>
-- * SequenceNumber [SequenceNumber] <p>The sequence number identifier that was assigned to the put data record. The sequence number for the record is unique across all records in the stream. A sequence number is the identifier associated with every record put into the stream.</p>
-- Required key: ShardId
-- Required key: SequenceNumber
-- @return PutRecordOutput structure as a key-value pair table
function M.PutRecordOutput(args)
	assert(args, "You must provide an argument table when creating PutRecordOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ShardId"] = args["ShardId"],
		["EncryptionType"] = args["EncryptionType"],
		["SequenceNumber"] = args["SequenceNumber"],
	}
	asserts.AssertPutRecordOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutRecordInput = { ["PartitionKey"] = true, ["SequenceNumberForOrdering"] = true, ["StreamName"] = true, ["Data"] = true, ["ExplicitHashKey"] = true, nil }

function asserts.AssertPutRecordInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutRecordInput to be of type 'table'")
	assert(struct["StreamName"], "Expected key StreamName to exist in table")
	assert(struct["Data"], "Expected key Data to exist in table")
	assert(struct["PartitionKey"], "Expected key PartitionKey to exist in table")
	if struct["PartitionKey"] then asserts.AssertPartitionKey(struct["PartitionKey"]) end
	if struct["SequenceNumberForOrdering"] then asserts.AssertSequenceNumber(struct["SequenceNumberForOrdering"]) end
	if struct["StreamName"] then asserts.AssertStreamName(struct["StreamName"]) end
	if struct["Data"] then asserts.AssertData(struct["Data"]) end
	if struct["ExplicitHashKey"] then asserts.AssertHashKey(struct["ExplicitHashKey"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutRecordInput[k], "PutRecordInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutRecordInput
-- <p>Represents the input for <code>PutRecord</code>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PartitionKey [PartitionKey] <p>Determines which shard in the stream the data record is assigned to. Partition keys are Unicode strings with a maximum length limit of 256 characters for each key. Amazon Kinesis Data Streams uses the partition key as input to a hash function that maps the partition key and associated data to a specific shard. Specifically, an MD5 hash function is used to map partition keys to 128-bit integer values and to map associated data records to shards. As a result of this hashing mechanism, all data records with the same partition key map to the same shard within the stream.</p>
-- * SequenceNumberForOrdering [SequenceNumber] <p>Guarantees strictly increasing sequence numbers, for puts from the same client and to the same partition key. Usage: set the <code>SequenceNumberForOrdering</code> of record <i>n</i> to the sequence number of record <i>n-1</i> (as returned in the result when putting record <i>n-1</i>). If this parameter is not set, records are coarsely ordered based on arrival time.</p>
-- * StreamName [StreamName] <p>The name of the stream to put the data record into.</p>
-- * Data [Data] <p>The data blob to put into the record, which is base64-encoded when the blob is serialized. When the data blob (the payload before base64-encoding) is added to the partition key size, the total size must not exceed the maximum record size (1 MB).</p>
-- * ExplicitHashKey [HashKey] <p>The hash value used to explicitly determine the shard the data record is assigned to by overriding the partition key hash.</p>
-- Required key: StreamName
-- Required key: Data
-- Required key: PartitionKey
-- @return PutRecordInput structure as a key-value pair table
function M.PutRecordInput(args)
	assert(args, "You must provide an argument table when creating PutRecordInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PartitionKey"] = args["PartitionKey"],
		["SequenceNumberForOrdering"] = args["SequenceNumberForOrdering"],
		["StreamName"] = args["StreamName"],
		["Data"] = args["Data"],
		["ExplicitHashKey"] = args["ExplicitHashKey"],
	}
	asserts.AssertPutRecordInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetShardIteratorInput = { ["ShardId"] = true, ["Timestamp"] = true, ["StartingSequenceNumber"] = true, ["StreamName"] = true, ["ShardIteratorType"] = true, nil }

function asserts.AssertGetShardIteratorInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetShardIteratorInput to be of type 'table'")
	assert(struct["StreamName"], "Expected key StreamName to exist in table")
	assert(struct["ShardId"], "Expected key ShardId to exist in table")
	assert(struct["ShardIteratorType"], "Expected key ShardIteratorType to exist in table")
	if struct["ShardId"] then asserts.AssertShardId(struct["ShardId"]) end
	if struct["Timestamp"] then asserts.AssertTimestamp(struct["Timestamp"]) end
	if struct["StartingSequenceNumber"] then asserts.AssertSequenceNumber(struct["StartingSequenceNumber"]) end
	if struct["StreamName"] then asserts.AssertStreamName(struct["StreamName"]) end
	if struct["ShardIteratorType"] then asserts.AssertShardIteratorType(struct["ShardIteratorType"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetShardIteratorInput[k], "GetShardIteratorInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetShardIteratorInput
-- <p>Represents the input for <code>GetShardIterator</code>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ShardId [ShardId] <p>The shard ID of the Kinesis Data Streams shard to get the iterator for.</p>
-- * Timestamp [Timestamp] <p>The time stamp of the data record from which to start reading. Used with shard iterator type AT_TIMESTAMP. A time stamp is the Unix epoch date with precision in milliseconds. For example, <code>2016-04-04T19:58:46.480-00:00</code> or <code>1459799926.480</code>. If a record with this exact time stamp does not exist, the iterator returned is for the next (later) record. If the time stamp is older than the current trim horizon, the iterator returned is for the oldest untrimmed data record (TRIM_HORIZON).</p>
-- * StartingSequenceNumber [SequenceNumber] <p>The sequence number of the data record in the shard from which to start reading. Used with shard iterator type AT_SEQUENCE_NUMBER and AFTER_SEQUENCE_NUMBER.</p>
-- * StreamName [StreamName] <p>The name of the Amazon Kinesis data stream.</p>
-- * ShardIteratorType [ShardIteratorType] <p>Determines how the shard iterator is used to start reading data records from the shard.</p> <p>The following are the valid Amazon Kinesis shard iterator types:</p> <ul> <li> <p>AT_SEQUENCE_NUMBER - Start reading from the position denoted by a specific sequence number, provided in the value <code>StartingSequenceNumber</code>.</p> </li> <li> <p>AFTER_SEQUENCE_NUMBER - Start reading right after the position denoted by a specific sequence number, provided in the value <code>StartingSequenceNumber</code>.</p> </li> <li> <p>AT_TIMESTAMP - Start reading from the position denoted by a specific time stamp, provided in the value <code>Timestamp</code>.</p> </li> <li> <p>TRIM_HORIZON - Start reading at the last untrimmed record in the shard in the system, which is the oldest data record in the shard.</p> </li> <li> <p>LATEST - Start reading just after the most recent record in the shard, so that you always read the most recent data in the shard.</p> </li> </ul>
-- Required key: StreamName
-- Required key: ShardId
-- Required key: ShardIteratorType
-- @return GetShardIteratorInput structure as a key-value pair table
function M.GetShardIteratorInput(args)
	assert(args, "You must provide an argument table when creating GetShardIteratorInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ShardId"] = args["ShardId"],
		["Timestamp"] = args["Timestamp"],
		["StartingSequenceNumber"] = args["StartingSequenceNumber"],
		["StreamName"] = args["StreamName"],
		["ShardIteratorType"] = args["ShardIteratorType"],
	}
	asserts.AssertGetShardIteratorInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SequenceNumberRange = { ["EndingSequenceNumber"] = true, ["StartingSequenceNumber"] = true, nil }

function asserts.AssertSequenceNumberRange(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SequenceNumberRange to be of type 'table'")
	assert(struct["StartingSequenceNumber"], "Expected key StartingSequenceNumber to exist in table")
	if struct["EndingSequenceNumber"] then asserts.AssertSequenceNumber(struct["EndingSequenceNumber"]) end
	if struct["StartingSequenceNumber"] then asserts.AssertSequenceNumber(struct["StartingSequenceNumber"]) end
	for k,_ in pairs(struct) do
		assert(keys.SequenceNumberRange[k], "SequenceNumberRange contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SequenceNumberRange
-- <p>The range of possible sequence numbers for the shard.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EndingSequenceNumber [SequenceNumber] <p>The ending sequence number for the range. Shards that are in the OPEN state have an ending sequence number of <code>null</code>.</p>
-- * StartingSequenceNumber [SequenceNumber] <p>The starting sequence number for the range.</p>
-- Required key: StartingSequenceNumber
-- @return SequenceNumberRange structure as a key-value pair table
function M.SequenceNumberRange(args)
	assert(args, "You must provide an argument table when creating SequenceNumberRange")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EndingSequenceNumber"] = args["EndingSequenceNumber"],
		["StartingSequenceNumber"] = args["StartingSequenceNumber"],
	}
	asserts.AssertSequenceNumberRange(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StreamDescription = { ["HasMoreShards"] = true, ["KeyId"] = true, ["EncryptionType"] = true, ["RetentionPeriodHours"] = true, ["StreamName"] = true, ["Shards"] = true, ["StreamARN"] = true, ["EnhancedMonitoring"] = true, ["StreamCreationTimestamp"] = true, ["StreamStatus"] = true, nil }

function asserts.AssertStreamDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StreamDescription to be of type 'table'")
	assert(struct["StreamName"], "Expected key StreamName to exist in table")
	assert(struct["StreamARN"], "Expected key StreamARN to exist in table")
	assert(struct["StreamStatus"], "Expected key StreamStatus to exist in table")
	assert(struct["Shards"], "Expected key Shards to exist in table")
	assert(struct["HasMoreShards"], "Expected key HasMoreShards to exist in table")
	assert(struct["RetentionPeriodHours"], "Expected key RetentionPeriodHours to exist in table")
	assert(struct["StreamCreationTimestamp"], "Expected key StreamCreationTimestamp to exist in table")
	assert(struct["EnhancedMonitoring"], "Expected key EnhancedMonitoring to exist in table")
	if struct["HasMoreShards"] then asserts.AssertBooleanObject(struct["HasMoreShards"]) end
	if struct["KeyId"] then asserts.AssertKeyId(struct["KeyId"]) end
	if struct["EncryptionType"] then asserts.AssertEncryptionType(struct["EncryptionType"]) end
	if struct["RetentionPeriodHours"] then asserts.AssertRetentionPeriodHours(struct["RetentionPeriodHours"]) end
	if struct["StreamName"] then asserts.AssertStreamName(struct["StreamName"]) end
	if struct["Shards"] then asserts.AssertShardList(struct["Shards"]) end
	if struct["StreamARN"] then asserts.AssertStreamARN(struct["StreamARN"]) end
	if struct["EnhancedMonitoring"] then asserts.AssertEnhancedMonitoringList(struct["EnhancedMonitoring"]) end
	if struct["StreamCreationTimestamp"] then asserts.AssertTimestamp(struct["StreamCreationTimestamp"]) end
	if struct["StreamStatus"] then asserts.AssertStreamStatus(struct["StreamStatus"]) end
	for k,_ in pairs(struct) do
		assert(keys.StreamDescription[k], "StreamDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StreamDescription
-- <p>Represents the output for <a>DescribeStream</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * HasMoreShards [BooleanObject] <p>If set to <code>true</code>, more shards in the stream are available to describe.</p>
-- * KeyId [KeyId] <p>The GUID for the customer-managed AWS KMS key to use for encryption. This value can be a globally unique identifier, a fully specified ARN to either an alias or a key, or an alias name prefixed by "alias/".You can also use a master key owned by Kinesis Data Streams by specifying the alias <code>aws/kinesis</code>.</p> <ul> <li> <p>Key ARN example: <code>arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012</code> </p> </li> <li> <p>Alias ARN example: <code>arn:aws:kms:us-east-1:123456789012:alias/MyAliasName</code> </p> </li> <li> <p>Globally unique key ID example: <code>12345678-1234-1234-1234-123456789012</code> </p> </li> <li> <p>Alias name example: <code>alias/MyAliasName</code> </p> </li> <li> <p>Master key owned by Kinesis Data Streams: <code>alias/aws/kinesis</code> </p> </li> </ul>
-- * EncryptionType [EncryptionType] <p>The server-side encryption type used on the stream. This parameter can be one of the following values:</p> <ul> <li> <p> <code>NONE</code>: Do not encrypt the records in the stream.</p> </li> <li> <p> <code>KMS</code>: Use server-side encryption on the records in the stream using a customer-managed AWS KMS key.</p> </li> </ul>
-- * RetentionPeriodHours [RetentionPeriodHours] <p>The current retention period, in hours.</p>
-- * StreamName [StreamName] <p>The name of the stream being described.</p>
-- * Shards [ShardList] <p>The shards that comprise the stream.</p>
-- * StreamARN [StreamARN] <p>The Amazon Resource Name (ARN) for the stream being described.</p>
-- * EnhancedMonitoring [EnhancedMonitoringList] <p>Represents the current enhanced monitoring settings of the stream.</p>
-- * StreamCreationTimestamp [Timestamp] <p>The approximate time that the stream was created.</p>
-- * StreamStatus [StreamStatus] <p>The current status of the stream being described. The stream status is one of the following states:</p> <ul> <li> <p> <code>CREATING</code> - The stream is being created. Kinesis Data Streams immediately returns and sets <code>StreamStatus</code> to <code>CREATING</code>.</p> </li> <li> <p> <code>DELETING</code> - The stream is being deleted. The specified stream is in the <code>DELETING</code> state until Kinesis Data Streams completes the deletion.</p> </li> <li> <p> <code>ACTIVE</code> - The stream exists and is ready for read and write operations or deletion. You should perform read and write operations only on an <code>ACTIVE</code> stream.</p> </li> <li> <p> <code>UPDATING</code> - Shards in the stream are being merged or split. Read and write operations continue to work while the stream is in the <code>UPDATING</code> state.</p> </li> </ul>
-- Required key: StreamName
-- Required key: StreamARN
-- Required key: StreamStatus
-- Required key: Shards
-- Required key: HasMoreShards
-- Required key: RetentionPeriodHours
-- Required key: StreamCreationTimestamp
-- Required key: EnhancedMonitoring
-- @return StreamDescription structure as a key-value pair table
function M.StreamDescription(args)
	assert(args, "You must provide an argument table when creating StreamDescription")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["HasMoreShards"] = args["HasMoreShards"],
		["KeyId"] = args["KeyId"],
		["EncryptionType"] = args["EncryptionType"],
		["RetentionPeriodHours"] = args["RetentionPeriodHours"],
		["StreamName"] = args["StreamName"],
		["Shards"] = args["Shards"],
		["StreamARN"] = args["StreamARN"],
		["EnhancedMonitoring"] = args["EnhancedMonitoring"],
		["StreamCreationTimestamp"] = args["StreamCreationTimestamp"],
		["StreamStatus"] = args["StreamStatus"],
	}
	asserts.AssertStreamDescription(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListStreamsOutput = { ["StreamNames"] = true, ["HasMoreStreams"] = true, nil }

function asserts.AssertListStreamsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListStreamsOutput to be of type 'table'")
	assert(struct["StreamNames"], "Expected key StreamNames to exist in table")
	assert(struct["HasMoreStreams"], "Expected key HasMoreStreams to exist in table")
	if struct["StreamNames"] then asserts.AssertStreamNameList(struct["StreamNames"]) end
	if struct["HasMoreStreams"] then asserts.AssertBooleanObject(struct["HasMoreStreams"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListStreamsOutput[k], "ListStreamsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListStreamsOutput
-- <p>Represents the output for <code>ListStreams</code>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StreamNames [StreamNameList] <p>The names of the streams that are associated with the AWS account making the <code>ListStreams</code> request.</p>
-- * HasMoreStreams [BooleanObject] <p>If set to <code>true</code>, there are more streams available to list.</p>
-- Required key: StreamNames
-- Required key: HasMoreStreams
-- @return ListStreamsOutput structure as a key-value pair table
function M.ListStreamsOutput(args)
	assert(args, "You must provide an argument table when creating ListStreamsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StreamNames"] = args["StreamNames"],
		["HasMoreStreams"] = args["HasMoreStreams"],
	}
	asserts.AssertListStreamsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListTagsForStreamOutput = { ["HasMoreTags"] = true, ["Tags"] = true, nil }

function asserts.AssertListTagsForStreamOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagsForStreamOutput to be of type 'table'")
	assert(struct["Tags"], "Expected key Tags to exist in table")
	assert(struct["HasMoreTags"], "Expected key HasMoreTags to exist in table")
	if struct["HasMoreTags"] then asserts.AssertBooleanObject(struct["HasMoreTags"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTagsForStreamOutput[k], "ListTagsForStreamOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagsForStreamOutput
-- <p>Represents the output for <code>ListTagsForStream</code>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * HasMoreTags [BooleanObject] <p>If set to <code>true</code>, more tags are available. To request additional tags, set <code>ExclusiveStartTagKey</code> to the key of the last tag returned.</p>
-- * Tags [TagList] <p>A list of tags associated with <code>StreamName</code>, starting with the first tag after <code>ExclusiveStartTagKey</code> and up to the specified <code>Limit</code>. </p>
-- Required key: Tags
-- Required key: HasMoreTags
-- @return ListTagsForStreamOutput structure as a key-value pair table
function M.ListTagsForStreamOutput(args)
	assert(args, "You must provide an argument table when creating ListTagsForStreamOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["HasMoreTags"] = args["HasMoreTags"],
		["Tags"] = args["Tags"],
	}
	asserts.AssertListTagsForStreamOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetRecordsOutput = { ["Records"] = true, ["NextShardIterator"] = true, ["MillisBehindLatest"] = true, nil }

function asserts.AssertGetRecordsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetRecordsOutput to be of type 'table'")
	assert(struct["Records"], "Expected key Records to exist in table")
	if struct["Records"] then asserts.AssertRecordList(struct["Records"]) end
	if struct["NextShardIterator"] then asserts.AssertShardIterator(struct["NextShardIterator"]) end
	if struct["MillisBehindLatest"] then asserts.AssertMillisBehindLatest(struct["MillisBehindLatest"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetRecordsOutput[k], "GetRecordsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetRecordsOutput
-- <p>Represents the output for <a>GetRecords</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Records [RecordList] <p>The data records retrieved from the shard.</p>
-- * NextShardIterator [ShardIterator] <p>The next position in the shard from which to start sequentially reading data records. If set to <code>null</code>, the shard has been closed and the requested iterator does not return any more data. </p>
-- * MillisBehindLatest [MillisBehindLatest] <p>The number of milliseconds the <a>GetRecords</a> response is from the tip of the stream, indicating how far behind current time the consumer is. A value of zero indicates that record processing is caught up, and there are no new records to process at this moment.</p>
-- Required key: Records
-- @return GetRecordsOutput structure as a key-value pair table
function M.GetRecordsOutput(args)
	assert(args, "You must provide an argument table when creating GetRecordsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Records"] = args["Records"],
		["NextShardIterator"] = args["NextShardIterator"],
		["MillisBehindLatest"] = args["MillisBehindLatest"],
	}
	asserts.AssertGetRecordsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateStreamInput = { ["StreamName"] = true, ["ShardCount"] = true, nil }

function asserts.AssertCreateStreamInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateStreamInput to be of type 'table'")
	assert(struct["StreamName"], "Expected key StreamName to exist in table")
	assert(struct["ShardCount"], "Expected key ShardCount to exist in table")
	if struct["StreamName"] then asserts.AssertStreamName(struct["StreamName"]) end
	if struct["ShardCount"] then asserts.AssertPositiveIntegerObject(struct["ShardCount"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateStreamInput[k], "CreateStreamInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateStreamInput
-- <p>Represents the input for <code>CreateStream</code>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StreamName [StreamName] <p>A name to identify the stream. The stream name is scoped to the AWS account used by the application that creates the stream. It is also scoped by AWS Region. That is, two streams in two different AWS accounts can have the same name. Two streams in the same AWS account but in two different Regions can also have the same name.</p>
-- * ShardCount [PositiveIntegerObject] <p>The number of shards that the stream will use. The throughput of the stream is a function of the number of shards; more shards are required for greater provisioned throughput.</p> <p>DefaultShardLimit;</p>
-- Required key: StreamName
-- Required key: ShardCount
-- @return CreateStreamInput structure as a key-value pair table
function M.CreateStreamInput(args)
	assert(args, "You must provide an argument table when creating CreateStreamInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StreamName"] = args["StreamName"],
		["ShardCount"] = args["ShardCount"],
	}
	asserts.AssertCreateStreamInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeregisterStreamConsumerInput = { ["ConsumerName"] = true, ["ConsumerARN"] = true, ["StreamARN"] = true, nil }

function asserts.AssertDeregisterStreamConsumerInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeregisterStreamConsumerInput to be of type 'table'")
	if struct["ConsumerName"] then asserts.AssertConsumerName(struct["ConsumerName"]) end
	if struct["ConsumerARN"] then asserts.AssertConsumerARN(struct["ConsumerARN"]) end
	if struct["StreamARN"] then asserts.AssertStreamARN(struct["StreamARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeregisterStreamConsumerInput[k], "DeregisterStreamConsumerInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeregisterStreamConsumerInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ConsumerName [ConsumerName] <p>The name that you gave to the consumer.</p>
-- * ConsumerARN [ConsumerARN] <p>The ARN returned by Kinesis Data Streams when you registered the consumer. If you don't know the ARN of the consumer that you want to deregister, you can use the ListStreamConsumers operation to get a list of the descriptions of all the consumers that are currently registered with a given data stream. The description of a consumer contains its ARN.</p>
-- * StreamARN [StreamARN] <p>The ARN of the Kinesis data stream that the consumer is registered with. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-kinesis-streams">Amazon Resource Names (ARNs) and AWS Service Namespaces</a>.</p>
-- @return DeregisterStreamConsumerInput structure as a key-value pair table
function M.DeregisterStreamConsumerInput(args)
	assert(args, "You must provide an argument table when creating DeregisterStreamConsumerInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ConsumerName"] = args["ConsumerName"],
		["ConsumerARN"] = args["ConsumerARN"],
		["StreamARN"] = args["StreamARN"],
	}
	asserts.AssertDeregisterStreamConsumerInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EnhancedMonitoringOutput = { ["StreamName"] = true, ["CurrentShardLevelMetrics"] = true, ["DesiredShardLevelMetrics"] = true, nil }

function asserts.AssertEnhancedMonitoringOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EnhancedMonitoringOutput to be of type 'table'")
	if struct["StreamName"] then asserts.AssertStreamName(struct["StreamName"]) end
	if struct["CurrentShardLevelMetrics"] then asserts.AssertMetricsNameList(struct["CurrentShardLevelMetrics"]) end
	if struct["DesiredShardLevelMetrics"] then asserts.AssertMetricsNameList(struct["DesiredShardLevelMetrics"]) end
	for k,_ in pairs(struct) do
		assert(keys.EnhancedMonitoringOutput[k], "EnhancedMonitoringOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EnhancedMonitoringOutput
-- <p>Represents the output for <a>EnableEnhancedMonitoring</a> and <a>DisableEnhancedMonitoring</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StreamName [StreamName] <p>The name of the Kinesis data stream.</p>
-- * CurrentShardLevelMetrics [MetricsNameList] <p>Represents the current state of the metrics that are in the enhanced state before the operation.</p>
-- * DesiredShardLevelMetrics [MetricsNameList] <p>Represents the list of all the metrics that would be in the enhanced state after the operation.</p>
-- @return EnhancedMonitoringOutput structure as a key-value pair table
function M.EnhancedMonitoringOutput(args)
	assert(args, "You must provide an argument table when creating EnhancedMonitoringOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StreamName"] = args["StreamName"],
		["CurrentShardLevelMetrics"] = args["CurrentShardLevelMetrics"],
		["DesiredShardLevelMetrics"] = args["DesiredShardLevelMetrics"],
	}
	asserts.AssertEnhancedMonitoringOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Shard = { ["ShardId"] = true, ["HashKeyRange"] = true, ["ParentShardId"] = true, ["AdjacentParentShardId"] = true, ["SequenceNumberRange"] = true, nil }

function asserts.AssertShard(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Shard to be of type 'table'")
	assert(struct["ShardId"], "Expected key ShardId to exist in table")
	assert(struct["HashKeyRange"], "Expected key HashKeyRange to exist in table")
	assert(struct["SequenceNumberRange"], "Expected key SequenceNumberRange to exist in table")
	if struct["ShardId"] then asserts.AssertShardId(struct["ShardId"]) end
	if struct["HashKeyRange"] then asserts.AssertHashKeyRange(struct["HashKeyRange"]) end
	if struct["ParentShardId"] then asserts.AssertShardId(struct["ParentShardId"]) end
	if struct["AdjacentParentShardId"] then asserts.AssertShardId(struct["AdjacentParentShardId"]) end
	if struct["SequenceNumberRange"] then asserts.AssertSequenceNumberRange(struct["SequenceNumberRange"]) end
	for k,_ in pairs(struct) do
		assert(keys.Shard[k], "Shard contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Shard
-- <p>A uniquely identified group of data records in a Kinesis data stream.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ShardId [ShardId] <p>The unique identifier of the shard within the stream.</p>
-- * HashKeyRange [HashKeyRange] <p>The range of possible hash key values for the shard, which is a set of ordered contiguous positive integers.</p>
-- * ParentShardId [ShardId] <p>The shard ID of the shard's parent.</p>
-- * AdjacentParentShardId [ShardId] <p>The shard ID of the shard adjacent to the shard's parent.</p>
-- * SequenceNumberRange [SequenceNumberRange] <p>The range of possible sequence numbers for the shard.</p>
-- Required key: ShardId
-- Required key: HashKeyRange
-- Required key: SequenceNumberRange
-- @return Shard structure as a key-value pair table
function M.Shard(args)
	assert(args, "You must provide an argument table when creating Shard")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ShardId"] = args["ShardId"],
		["HashKeyRange"] = args["HashKeyRange"],
		["ParentShardId"] = args["ParentShardId"],
		["AdjacentParentShardId"] = args["AdjacentParentShardId"],
		["SequenceNumberRange"] = args["SequenceNumberRange"],
	}
	asserts.AssertShard(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DecreaseStreamRetentionPeriodInput = { ["RetentionPeriodHours"] = true, ["StreamName"] = true, nil }

function asserts.AssertDecreaseStreamRetentionPeriodInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DecreaseStreamRetentionPeriodInput to be of type 'table'")
	assert(struct["StreamName"], "Expected key StreamName to exist in table")
	assert(struct["RetentionPeriodHours"], "Expected key RetentionPeriodHours to exist in table")
	if struct["RetentionPeriodHours"] then asserts.AssertRetentionPeriodHours(struct["RetentionPeriodHours"]) end
	if struct["StreamName"] then asserts.AssertStreamName(struct["StreamName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DecreaseStreamRetentionPeriodInput[k], "DecreaseStreamRetentionPeriodInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DecreaseStreamRetentionPeriodInput
-- <p>Represents the input for <a>DecreaseStreamRetentionPeriod</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RetentionPeriodHours [RetentionPeriodHours] <p>The new retention period of the stream, in hours. Must be less than the current retention period.</p>
-- * StreamName [StreamName] <p>The name of the stream to modify.</p>
-- Required key: StreamName
-- Required key: RetentionPeriodHours
-- @return DecreaseStreamRetentionPeriodInput structure as a key-value pair table
function M.DecreaseStreamRetentionPeriodInput(args)
	assert(args, "You must provide an argument table when creating DecreaseStreamRetentionPeriodInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RetentionPeriodHours"] = args["RetentionPeriodHours"],
		["StreamName"] = args["StreamName"],
	}
	asserts.AssertDecreaseStreamRetentionPeriodInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ExpiredNextTokenException = { ["message"] = true, nil }

function asserts.AssertExpiredNextTokenException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ExpiredNextTokenException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ExpiredNextTokenException[k], "ExpiredNextTokenException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ExpiredNextTokenException
-- <p>The pagination token passed to the operation is expired.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] 
-- @return ExpiredNextTokenException structure as a key-value pair table
function M.ExpiredNextTokenException(args)
	assert(args, "You must provide an argument table when creating ExpiredNextTokenException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertExpiredNextTokenException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StreamDescriptionSummary = { ["KeyId"] = true, ["EncryptionType"] = true, ["StreamStatus"] = true, ["StreamName"] = true, ["ConsumerCount"] = true, ["OpenShardCount"] = true, ["StreamARN"] = true, ["EnhancedMonitoring"] = true, ["StreamCreationTimestamp"] = true, ["RetentionPeriodHours"] = true, nil }

function asserts.AssertStreamDescriptionSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StreamDescriptionSummary to be of type 'table'")
	assert(struct["StreamName"], "Expected key StreamName to exist in table")
	assert(struct["StreamARN"], "Expected key StreamARN to exist in table")
	assert(struct["StreamStatus"], "Expected key StreamStatus to exist in table")
	assert(struct["RetentionPeriodHours"], "Expected key RetentionPeriodHours to exist in table")
	assert(struct["StreamCreationTimestamp"], "Expected key StreamCreationTimestamp to exist in table")
	assert(struct["EnhancedMonitoring"], "Expected key EnhancedMonitoring to exist in table")
	assert(struct["OpenShardCount"], "Expected key OpenShardCount to exist in table")
	if struct["KeyId"] then asserts.AssertKeyId(struct["KeyId"]) end
	if struct["EncryptionType"] then asserts.AssertEncryptionType(struct["EncryptionType"]) end
	if struct["StreamStatus"] then asserts.AssertStreamStatus(struct["StreamStatus"]) end
	if struct["StreamName"] then asserts.AssertStreamName(struct["StreamName"]) end
	if struct["ConsumerCount"] then asserts.AssertConsumerCountObject(struct["ConsumerCount"]) end
	if struct["OpenShardCount"] then asserts.AssertShardCountObject(struct["OpenShardCount"]) end
	if struct["StreamARN"] then asserts.AssertStreamARN(struct["StreamARN"]) end
	if struct["EnhancedMonitoring"] then asserts.AssertEnhancedMonitoringList(struct["EnhancedMonitoring"]) end
	if struct["StreamCreationTimestamp"] then asserts.AssertTimestamp(struct["StreamCreationTimestamp"]) end
	if struct["RetentionPeriodHours"] then asserts.AssertPositiveIntegerObject(struct["RetentionPeriodHours"]) end
	for k,_ in pairs(struct) do
		assert(keys.StreamDescriptionSummary[k], "StreamDescriptionSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StreamDescriptionSummary
-- <p>Represents the output for <a>DescribeStreamSummary</a> </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * KeyId [KeyId] <p>The GUID for the customer-managed AWS KMS key to use for encryption. This value can be a globally unique identifier, a fully specified ARN to either an alias or a key, or an alias name prefixed by "alias/".You can also use a master key owned by Kinesis Data Streams by specifying the alias <code>aws/kinesis</code>.</p> <ul> <li> <p>Key ARN example: <code>arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012</code> </p> </li> <li> <p>Alias ARN example: <code> arn:aws:kms:us-east-1:123456789012:alias/MyAliasName</code> </p> </li> <li> <p>Globally unique key ID example: <code>12345678-1234-1234-1234-123456789012</code> </p> </li> <li> <p>Alias name example: <code>alias/MyAliasName</code> </p> </li> <li> <p>Master key owned by Kinesis Data Streams: <code>alias/aws/kinesis</code> </p> </li> </ul>
-- * EncryptionType [EncryptionType] <p>The encryption type used. This value is one of the following:</p> <ul> <li> <p> <code>KMS</code> </p> </li> <li> <p> <code>NONE</code> </p> </li> </ul>
-- * StreamStatus [StreamStatus] <p>The current status of the stream being described. The stream status is one of the following states:</p> <ul> <li> <p> <code>CREATING</code> - The stream is being created. Kinesis Data Streams immediately returns and sets <code>StreamStatus</code> to <code>CREATING</code>.</p> </li> <li> <p> <code>DELETING</code> - The stream is being deleted. The specified stream is in the <code>DELETING</code> state until Kinesis Data Streams completes the deletion.</p> </li> <li> <p> <code>ACTIVE</code> - The stream exists and is ready for read and write operations or deletion. You should perform read and write operations only on an <code>ACTIVE</code> stream.</p> </li> <li> <p> <code>UPDATING</code> - Shards in the stream are being merged or split. Read and write operations continue to work while the stream is in the <code>UPDATING</code> state.</p> </li> </ul>
-- * StreamName [StreamName] <p>The name of the stream being described.</p>
-- * ConsumerCount [ConsumerCountObject] <p>The number of enhanced fan-out consumers registered with the stream.</p>
-- * OpenShardCount [ShardCountObject] <p>The number of open shards in the stream.</p>
-- * StreamARN [StreamARN] <p>The Amazon Resource Name (ARN) for the stream being described.</p>
-- * EnhancedMonitoring [EnhancedMonitoringList] <p>Represents the current enhanced monitoring settings of the stream.</p>
-- * StreamCreationTimestamp [Timestamp] <p>The approximate time that the stream was created.</p>
-- * RetentionPeriodHours [PositiveIntegerObject] <p>The current retention period, in hours.</p>
-- Required key: StreamName
-- Required key: StreamARN
-- Required key: StreamStatus
-- Required key: RetentionPeriodHours
-- Required key: StreamCreationTimestamp
-- Required key: EnhancedMonitoring
-- Required key: OpenShardCount
-- @return StreamDescriptionSummary structure as a key-value pair table
function M.StreamDescriptionSummary(args)
	assert(args, "You must provide an argument table when creating StreamDescriptionSummary")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["KeyId"] = args["KeyId"],
		["EncryptionType"] = args["EncryptionType"],
		["StreamStatus"] = args["StreamStatus"],
		["StreamName"] = args["StreamName"],
		["ConsumerCount"] = args["ConsumerCount"],
		["OpenShardCount"] = args["OpenShardCount"],
		["StreamARN"] = args["StreamARN"],
		["EnhancedMonitoring"] = args["EnhancedMonitoring"],
		["StreamCreationTimestamp"] = args["StreamCreationTimestamp"],
		["RetentionPeriodHours"] = args["RetentionPeriodHours"],
	}
	asserts.AssertStreamDescriptionSummary(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListStreamsInput = { ["Limit"] = true, ["ExclusiveStartStreamName"] = true, nil }

function asserts.AssertListStreamsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListStreamsInput to be of type 'table'")
	if struct["Limit"] then asserts.AssertListStreamsInputLimit(struct["Limit"]) end
	if struct["ExclusiveStartStreamName"] then asserts.AssertStreamName(struct["ExclusiveStartStreamName"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListStreamsInput[k], "ListStreamsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListStreamsInput
-- <p>Represents the input for <code>ListStreams</code>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Limit [ListStreamsInputLimit] <p>The maximum number of streams to list.</p>
-- * ExclusiveStartStreamName [StreamName] <p>The name of the stream to start the list with.</p>
-- @return ListStreamsInput structure as a key-value pair table
function M.ListStreamsInput(args)
	assert(args, "You must provide an argument table when creating ListStreamsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Limit"] = args["Limit"],
		["ExclusiveStartStreamName"] = args["ExclusiveStartStreamName"],
	}
	asserts.AssertListStreamsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Tag = { ["Value"] = true, ["Key"] = true, nil }

function asserts.AssertTag(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Tag to be of type 'table'")
	assert(struct["Key"], "Expected key Key to exist in table")
	if struct["Value"] then asserts.AssertTagValue(struct["Value"]) end
	if struct["Key"] then asserts.AssertTagKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(keys.Tag[k], "Tag contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Tag
-- <p>Metadata assigned to the stream, consisting of a key-value pair.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Value [TagValue] <p>An optional string, typically used to describe or define the tag. Maximum length: 256 characters. Valid characters: Unicode letters, digits, white space, _ . / = + - % @</p>
-- * Key [TagKey] <p>A unique identifier for the tag. Maximum length: 128 characters. Valid characters: Unicode letters, digits, white space, _ . / = + - % @</p>
-- Required key: Key
-- @return Tag structure as a key-value pair table
function M.Tag(args)
	assert(args, "You must provide an argument table when creating Tag")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Value"] = args["Value"],
		["Key"] = args["Key"],
	}
	asserts.AssertTag(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutRecordsRequestEntry = { ["PartitionKey"] = true, ["Data"] = true, ["ExplicitHashKey"] = true, nil }

function asserts.AssertPutRecordsRequestEntry(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutRecordsRequestEntry to be of type 'table'")
	assert(struct["Data"], "Expected key Data to exist in table")
	assert(struct["PartitionKey"], "Expected key PartitionKey to exist in table")
	if struct["PartitionKey"] then asserts.AssertPartitionKey(struct["PartitionKey"]) end
	if struct["Data"] then asserts.AssertData(struct["Data"]) end
	if struct["ExplicitHashKey"] then asserts.AssertHashKey(struct["ExplicitHashKey"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutRecordsRequestEntry[k], "PutRecordsRequestEntry contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutRecordsRequestEntry
-- <p>Represents the output for <code>PutRecords</code>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PartitionKey [PartitionKey] <p>Determines which shard in the stream the data record is assigned to. Partition keys are Unicode strings with a maximum length limit of 256 characters for each key. Amazon Kinesis Data Streams uses the partition key as input to a hash function that maps the partition key and associated data to a specific shard. Specifically, an MD5 hash function is used to map partition keys to 128-bit integer values and to map associated data records to shards. As a result of this hashing mechanism, all data records with the same partition key map to the same shard within the stream.</p>
-- * Data [Data] <p>The data blob to put into the record, which is base64-encoded when the blob is serialized. When the data blob (the payload before base64-encoding) is added to the partition key size, the total size must not exceed the maximum record size (1 MB).</p>
-- * ExplicitHashKey [HashKey] <p>The hash value used to determine explicitly the shard that the data record is assigned to by overriding the partition key hash.</p>
-- Required key: Data
-- Required key: PartitionKey
-- @return PutRecordsRequestEntry structure as a key-value pair table
function M.PutRecordsRequestEntry(args)
	assert(args, "You must provide an argument table when creating PutRecordsRequestEntry")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PartitionKey"] = args["PartitionKey"],
		["Data"] = args["Data"],
		["ExplicitHashKey"] = args["ExplicitHashKey"],
	}
	asserts.AssertPutRecordsRequestEntry(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeStreamSummaryInput = { ["StreamName"] = true, nil }

function asserts.AssertDescribeStreamSummaryInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeStreamSummaryInput to be of type 'table'")
	assert(struct["StreamName"], "Expected key StreamName to exist in table")
	if struct["StreamName"] then asserts.AssertStreamName(struct["StreamName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeStreamSummaryInput[k], "DescribeStreamSummaryInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeStreamSummaryInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StreamName [StreamName] <p>The name of the stream to describe.</p>
-- Required key: StreamName
-- @return DescribeStreamSummaryInput structure as a key-value pair table
function M.DescribeStreamSummaryInput(args)
	assert(args, "You must provide an argument table when creating DescribeStreamSummaryInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StreamName"] = args["StreamName"],
	}
	asserts.AssertDescribeStreamSummaryInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteStreamInput = { ["StreamName"] = true, ["EnforceConsumerDeletion"] = true, nil }

function asserts.AssertDeleteStreamInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteStreamInput to be of type 'table'")
	assert(struct["StreamName"], "Expected key StreamName to exist in table")
	if struct["StreamName"] then asserts.AssertStreamName(struct["StreamName"]) end
	if struct["EnforceConsumerDeletion"] then asserts.AssertBooleanObject(struct["EnforceConsumerDeletion"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteStreamInput[k], "DeleteStreamInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteStreamInput
-- <p>Represents the input for <a>DeleteStream</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StreamName [StreamName] <p>The name of the stream to delete.</p>
-- * EnforceConsumerDeletion [BooleanObject] <p>If this parameter is unset (<code>null</code>) or if you set it to <code>false</code>, and the stream has registered consumers, the call to <code>DeleteStream</code> fails with a <code>ResourceInUseException</code>. </p>
-- Required key: StreamName
-- @return DeleteStreamInput structure as a key-value pair table
function M.DeleteStreamInput(args)
	assert(args, "You must provide an argument table when creating DeleteStreamInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StreamName"] = args["StreamName"],
		["EnforceConsumerDeletion"] = args["EnforceConsumerDeletion"],
	}
	asserts.AssertDeleteStreamInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.KMSNotFoundException = { ["message"] = true, nil }

function asserts.AssertKMSNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected KMSNotFoundException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.KMSNotFoundException[k], "KMSNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type KMSNotFoundException
-- <p>The request was rejected because the specified entity or resource can't be found.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] <p>A message that provides information about the error.</p>
-- @return KMSNotFoundException structure as a key-value pair table
function M.KMSNotFoundException(args)
	assert(args, "You must provide an argument table when creating KMSNotFoundException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertKMSNotFoundException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateShardCountOutput = { ["TargetShardCount"] = true, ["StreamName"] = true, ["CurrentShardCount"] = true, nil }

function asserts.AssertUpdateShardCountOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateShardCountOutput to be of type 'table'")
	if struct["TargetShardCount"] then asserts.AssertPositiveIntegerObject(struct["TargetShardCount"]) end
	if struct["StreamName"] then asserts.AssertStreamName(struct["StreamName"]) end
	if struct["CurrentShardCount"] then asserts.AssertPositiveIntegerObject(struct["CurrentShardCount"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateShardCountOutput[k], "UpdateShardCountOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateShardCountOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TargetShardCount [PositiveIntegerObject] <p>The updated number of shards.</p>
-- * StreamName [StreamName] <p>The name of the stream.</p>
-- * CurrentShardCount [PositiveIntegerObject] <p>The current number of shards.</p>
-- @return UpdateShardCountOutput structure as a key-value pair table
function M.UpdateShardCountOutput(args)
	assert(args, "You must provide an argument table when creating UpdateShardCountOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TargetShardCount"] = args["TargetShardCount"],
		["StreamName"] = args["StreamName"],
		["CurrentShardCount"] = args["CurrentShardCount"],
	}
	asserts.AssertUpdateShardCountOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Record = { ["Data"] = true, ["PartitionKey"] = true, ["ApproximateArrivalTimestamp"] = true, ["EncryptionType"] = true, ["SequenceNumber"] = true, nil }

function asserts.AssertRecord(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Record to be of type 'table'")
	assert(struct["SequenceNumber"], "Expected key SequenceNumber to exist in table")
	assert(struct["Data"], "Expected key Data to exist in table")
	assert(struct["PartitionKey"], "Expected key PartitionKey to exist in table")
	if struct["Data"] then asserts.AssertData(struct["Data"]) end
	if struct["PartitionKey"] then asserts.AssertPartitionKey(struct["PartitionKey"]) end
	if struct["ApproximateArrivalTimestamp"] then asserts.AssertTimestamp(struct["ApproximateArrivalTimestamp"]) end
	if struct["EncryptionType"] then asserts.AssertEncryptionType(struct["EncryptionType"]) end
	if struct["SequenceNumber"] then asserts.AssertSequenceNumber(struct["SequenceNumber"]) end
	for k,_ in pairs(struct) do
		assert(keys.Record[k], "Record contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Record
-- <p>The unit of data of the Kinesis data stream, which is composed of a sequence number, a partition key, and a data blob.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Data [Data] <p>The data blob. The data in the blob is both opaque and immutable to Kinesis Data Streams, which does not inspect, interpret, or change the data in the blob in any way. When the data blob (the payload before base64-encoding) is added to the partition key size, the total size must not exceed the maximum record size (1 MB).</p>
-- * PartitionKey [PartitionKey] <p>Identifies which shard in the stream the data record is assigned to.</p>
-- * ApproximateArrivalTimestamp [Timestamp] <p>The approximate time that the record was inserted into the stream.</p>
-- * EncryptionType [EncryptionType] <p>The encryption type used on the record. This parameter can be one of the following values:</p> <ul> <li> <p> <code>NONE</code>: Do not encrypt the records in the stream.</p> </li> <li> <p> <code>KMS</code>: Use server-side encryption on the records in the stream using a customer-managed AWS KMS key.</p> </li> </ul>
-- * SequenceNumber [SequenceNumber] <p>The unique identifier of the record within its shard.</p>
-- Required key: SequenceNumber
-- Required key: Data
-- Required key: PartitionKey
-- @return Record structure as a key-value pair table
function M.Record(args)
	assert(args, "You must provide an argument table when creating Record")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Data"] = args["Data"],
		["PartitionKey"] = args["PartitionKey"],
		["ApproximateArrivalTimestamp"] = args["ApproximateArrivalTimestamp"],
		["EncryptionType"] = args["EncryptionType"],
		["SequenceNumber"] = args["SequenceNumber"],
	}
	asserts.AssertRecord(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StartStreamEncryptionInput = { ["StreamName"] = true, ["EncryptionType"] = true, ["KeyId"] = true, nil }

function asserts.AssertStartStreamEncryptionInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartStreamEncryptionInput to be of type 'table'")
	assert(struct["StreamName"], "Expected key StreamName to exist in table")
	assert(struct["EncryptionType"], "Expected key EncryptionType to exist in table")
	assert(struct["KeyId"], "Expected key KeyId to exist in table")
	if struct["StreamName"] then asserts.AssertStreamName(struct["StreamName"]) end
	if struct["EncryptionType"] then asserts.AssertEncryptionType(struct["EncryptionType"]) end
	if struct["KeyId"] then asserts.AssertKeyId(struct["KeyId"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartStreamEncryptionInput[k], "StartStreamEncryptionInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartStreamEncryptionInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StreamName [StreamName] <p>The name of the stream for which to start encrypting records.</p>
-- * EncryptionType [EncryptionType] <p>The encryption type to use. The only valid value is <code>KMS</code>.</p>
-- * KeyId [KeyId] <p>The GUID for the customer-managed AWS KMS key to use for encryption. This value can be a globally unique identifier, a fully specified Amazon Resource Name (ARN) to either an alias or a key, or an alias name prefixed by "alias/".You can also use a master key owned by Kinesis Data Streams by specifying the alias <code>aws/kinesis</code>.</p> <ul> <li> <p>Key ARN example: <code>arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012</code> </p> </li> <li> <p>Alias ARN example: <code>arn:aws:kms:us-east-1:123456789012:alias/MyAliasName</code> </p> </li> <li> <p>Globally unique key ID example: <code>12345678-1234-1234-1234-123456789012</code> </p> </li> <li> <p>Alias name example: <code>alias/MyAliasName</code> </p> </li> <li> <p>Master key owned by Kinesis Data Streams: <code>alias/aws/kinesis</code> </p> </li> </ul>
-- Required key: StreamName
-- Required key: EncryptionType
-- Required key: KeyId
-- @return StartStreamEncryptionInput structure as a key-value pair table
function M.StartStreamEncryptionInput(args)
	assert(args, "You must provide an argument table when creating StartStreamEncryptionInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StreamName"] = args["StreamName"],
		["EncryptionType"] = args["EncryptionType"],
		["KeyId"] = args["KeyId"],
	}
	asserts.AssertStartStreamEncryptionInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SubscribeToShardOutput = { ["EventStream"] = true, nil }

function asserts.AssertSubscribeToShardOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SubscribeToShardOutput to be of type 'table'")
	assert(struct["EventStream"], "Expected key EventStream to exist in table")
	if struct["EventStream"] then asserts.AssertSubscribeToShardEventStream(struct["EventStream"]) end
	for k,_ in pairs(struct) do
		assert(keys.SubscribeToShardOutput[k], "SubscribeToShardOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SubscribeToShardOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EventStream [SubscribeToShardEventStream] <p>The event stream that your consumer can use to read records from the shard.</p>
-- Required key: EventStream
-- @return SubscribeToShardOutput structure as a key-value pair table
function M.SubscribeToShardOutput(args)
	assert(args, "You must provide an argument table when creating SubscribeToShardOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EventStream"] = args["EventStream"],
	}
	asserts.AssertSubscribeToShardOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeStreamInput = { ["StreamName"] = true, ["Limit"] = true, ["ExclusiveStartShardId"] = true, nil }

function asserts.AssertDescribeStreamInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeStreamInput to be of type 'table'")
	assert(struct["StreamName"], "Expected key StreamName to exist in table")
	if struct["StreamName"] then asserts.AssertStreamName(struct["StreamName"]) end
	if struct["Limit"] then asserts.AssertDescribeStreamInputLimit(struct["Limit"]) end
	if struct["ExclusiveStartShardId"] then asserts.AssertShardId(struct["ExclusiveStartShardId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeStreamInput[k], "DescribeStreamInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeStreamInput
-- <p>Represents the input for <code>DescribeStream</code>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StreamName [StreamName] <p>The name of the stream to describe.</p>
-- * Limit [DescribeStreamInputLimit] <p>The maximum number of shards to return in a single call. The default value is 100. If you specify a value greater than 100, at most 100 shards are returned.</p>
-- * ExclusiveStartShardId [ShardId] <p>The shard ID of the shard to start with.</p>
-- Required key: StreamName
-- @return DescribeStreamInput structure as a key-value pair table
function M.DescribeStreamInput(args)
	assert(args, "You must provide an argument table when creating DescribeStreamInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StreamName"] = args["StreamName"],
		["Limit"] = args["Limit"],
		["ExclusiveStartShardId"] = args["ExclusiveStartShardId"],
	}
	asserts.AssertDescribeStreamInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListStreamConsumersOutput = { ["NextToken"] = true, ["Consumers"] = true, nil }

function asserts.AssertListStreamConsumersOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListStreamConsumersOutput to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["Consumers"] then asserts.AssertConsumerList(struct["Consumers"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListStreamConsumersOutput[k], "ListStreamConsumersOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListStreamConsumersOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>When the number of consumers that are registered with the data stream is greater than the default value for the <code>MaxResults</code> parameter, or if you explicitly specify a value for <code>MaxResults</code> that is less than the number of registered consumers, the response includes a pagination token named <code>NextToken</code>. You can specify this <code>NextToken</code> value in a subsequent call to <code>ListStreamConsumers</code> to list the next set of registered consumers. For more information about the use of this pagination token when calling the <code>ListStreamConsumers</code> operation, see <a>ListStreamConsumersInput$NextToken</a>.</p> <important> <p>Tokens expire after 300 seconds. When you obtain a value for <code>NextToken</code> in the response to a call to <code>ListStreamConsumers</code>, you have 300 seconds to use that value. If you specify an expired token in a call to <code>ListStreamConsumers</code>, you get <code>ExpiredNextTokenException</code>.</p> </important>
-- * Consumers [ConsumerList] <p>An array of JSON objects. Each object represents one registered consumer.</p>
-- @return ListStreamConsumersOutput structure as a key-value pair table
function M.ListStreamConsumersOutput(args)
	assert(args, "You must provide an argument table when creating ListStreamConsumersOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["Consumers"] = args["Consumers"],
	}
	asserts.AssertListStreamConsumersOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SubscribeToShardEvent = { ["Records"] = true, ["ContinuationSequenceNumber"] = true, ["MillisBehindLatest"] = true, nil }

function asserts.AssertSubscribeToShardEvent(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SubscribeToShardEvent to be of type 'table'")
	assert(struct["Records"], "Expected key Records to exist in table")
	assert(struct["ContinuationSequenceNumber"], "Expected key ContinuationSequenceNumber to exist in table")
	assert(struct["MillisBehindLatest"], "Expected key MillisBehindLatest to exist in table")
	if struct["Records"] then asserts.AssertRecordList(struct["Records"]) end
	if struct["ContinuationSequenceNumber"] then asserts.AssertSequenceNumber(struct["ContinuationSequenceNumber"]) end
	if struct["MillisBehindLatest"] then asserts.AssertMillisBehindLatest(struct["MillisBehindLatest"]) end
	for k,_ in pairs(struct) do
		assert(keys.SubscribeToShardEvent[k], "SubscribeToShardEvent contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SubscribeToShardEvent
-- <p>After you call <a>SubscribeToShard</a>, Kinesis Data Streams sends events of this type to your consumer. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Records [RecordList] <p/>
-- * ContinuationSequenceNumber [SequenceNumber] <p>Use this as <code>StartingSequenceNumber</code> in the next call to <a>SubscribeToShard</a>.</p>
-- * MillisBehindLatest [MillisBehindLatest] <p>The number of milliseconds the read records are from the tip of the stream, indicating how far behind current time the consumer is. A value of zero indicates that record processing is caught up, and there are no new records to process at this moment.</p>
-- Required key: Records
-- Required key: ContinuationSequenceNumber
-- Required key: MillisBehindLatest
-- @return SubscribeToShardEvent structure as a key-value pair table
function M.SubscribeToShardEvent(args)
	assert(args, "You must provide an argument table when creating SubscribeToShardEvent")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Records"] = args["Records"],
		["ContinuationSequenceNumber"] = args["ContinuationSequenceNumber"],
		["MillisBehindLatest"] = args["MillisBehindLatest"],
	}
	asserts.AssertSubscribeToShardEvent(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.KMSDisabledException = { ["message"] = true, nil }

function asserts.AssertKMSDisabledException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected KMSDisabledException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.KMSDisabledException[k], "KMSDisabledException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type KMSDisabledException
-- <p>The request was rejected because the specified customer master key (CMK) isn't enabled.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] <p>A message that provides information about the error.</p>
-- @return KMSDisabledException structure as a key-value pair table
function M.KMSDisabledException(args)
	assert(args, "You must provide an argument table when creating KMSDisabledException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertKMSDisabledException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutRecordsInput = { ["Records"] = true, ["StreamName"] = true, nil }

function asserts.AssertPutRecordsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutRecordsInput to be of type 'table'")
	assert(struct["Records"], "Expected key Records to exist in table")
	assert(struct["StreamName"], "Expected key StreamName to exist in table")
	if struct["Records"] then asserts.AssertPutRecordsRequestEntryList(struct["Records"]) end
	if struct["StreamName"] then asserts.AssertStreamName(struct["StreamName"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutRecordsInput[k], "PutRecordsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutRecordsInput
-- <p>A <code>PutRecords</code> request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Records [PutRecordsRequestEntryList] <p>The records associated with the request.</p>
-- * StreamName [StreamName] <p>The stream name associated with the request.</p>
-- Required key: Records
-- Required key: StreamName
-- @return PutRecordsInput structure as a key-value pair table
function M.PutRecordsInput(args)
	assert(args, "You must provide an argument table when creating PutRecordsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Records"] = args["Records"],
		["StreamName"] = args["StreamName"],
	}
	asserts.AssertPutRecordsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.KMSAccessDeniedException = { ["message"] = true, nil }

function asserts.AssertKMSAccessDeniedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected KMSAccessDeniedException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.KMSAccessDeniedException[k], "KMSAccessDeniedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type KMSAccessDeniedException
-- <p>The ciphertext references a key that doesn't exist or that you don't have access to.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] <p>A message that provides information about the error.</p>
-- @return KMSAccessDeniedException structure as a key-value pair table
function M.KMSAccessDeniedException(args)
	assert(args, "You must provide an argument table when creating KMSAccessDeniedException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertKMSAccessDeniedException(all_args)
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
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.LimitExceededException[k], "LimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LimitExceededException
-- <p>The requested resource exceeds the maximum number allowed, or the number of concurrent stream requests exceeds the maximum number allowed. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] <p>A message that provides information about the error.</p>
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

keys.HashKeyRange = { ["EndingHashKey"] = true, ["StartingHashKey"] = true, nil }

function asserts.AssertHashKeyRange(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HashKeyRange to be of type 'table'")
	assert(struct["StartingHashKey"], "Expected key StartingHashKey to exist in table")
	assert(struct["EndingHashKey"], "Expected key EndingHashKey to exist in table")
	if struct["EndingHashKey"] then asserts.AssertHashKey(struct["EndingHashKey"]) end
	if struct["StartingHashKey"] then asserts.AssertHashKey(struct["StartingHashKey"]) end
	for k,_ in pairs(struct) do
		assert(keys.HashKeyRange[k], "HashKeyRange contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HashKeyRange
-- <p>The range of possible hash key values for the shard, which is a set of ordered contiguous positive integers.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EndingHashKey [HashKey] <p>The ending hash key of the hash key range.</p>
-- * StartingHashKey [HashKey] <p>The starting hash key of the hash key range.</p>
-- Required key: StartingHashKey
-- Required key: EndingHashKey
-- @return HashKeyRange structure as a key-value pair table
function M.HashKeyRange(args)
	assert(args, "You must provide an argument table when creating HashKeyRange")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EndingHashKey"] = args["EndingHashKey"],
		["StartingHashKey"] = args["StartingHashKey"],
	}
	asserts.AssertHashKeyRange(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ResourceInUseException = { ["message"] = true, nil }

function asserts.AssertResourceInUseException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceInUseException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResourceInUseException[k], "ResourceInUseException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceInUseException
-- <p>The resource is not available for this operation. For successful operation, the resource must be in the <code>ACTIVE</code> state.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] <p>A message that provides information about the error.</p>
-- @return ResourceInUseException structure as a key-value pair table
function M.ResourceInUseException(args)
	assert(args, "You must provide an argument table when creating ResourceInUseException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertResourceInUseException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.MergeShardsInput = { ["StreamName"] = true, ["ShardToMerge"] = true, ["AdjacentShardToMerge"] = true, nil }

function asserts.AssertMergeShardsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MergeShardsInput to be of type 'table'")
	assert(struct["StreamName"], "Expected key StreamName to exist in table")
	assert(struct["ShardToMerge"], "Expected key ShardToMerge to exist in table")
	assert(struct["AdjacentShardToMerge"], "Expected key AdjacentShardToMerge to exist in table")
	if struct["StreamName"] then asserts.AssertStreamName(struct["StreamName"]) end
	if struct["ShardToMerge"] then asserts.AssertShardId(struct["ShardToMerge"]) end
	if struct["AdjacentShardToMerge"] then asserts.AssertShardId(struct["AdjacentShardToMerge"]) end
	for k,_ in pairs(struct) do
		assert(keys.MergeShardsInput[k], "MergeShardsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MergeShardsInput
-- <p>Represents the input for <code>MergeShards</code>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StreamName [StreamName] <p>The name of the stream for the merge.</p>
-- * ShardToMerge [ShardId] <p>The shard ID of the shard to combine with the adjacent shard for the merge.</p>
-- * AdjacentShardToMerge [ShardId] <p>The shard ID of the adjacent shard for the merge.</p>
-- Required key: StreamName
-- Required key: ShardToMerge
-- Required key: AdjacentShardToMerge
-- @return MergeShardsInput structure as a key-value pair table
function M.MergeShardsInput(args)
	assert(args, "You must provide an argument table when creating MergeShardsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StreamName"] = args["StreamName"],
		["ShardToMerge"] = args["ShardToMerge"],
		["AdjacentShardToMerge"] = args["AdjacentShardToMerge"],
	}
	asserts.AssertMergeShardsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RegisterStreamConsumerInput = { ["ConsumerName"] = true, ["StreamARN"] = true, nil }

function asserts.AssertRegisterStreamConsumerInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RegisterStreamConsumerInput to be of type 'table'")
	assert(struct["StreamARN"], "Expected key StreamARN to exist in table")
	assert(struct["ConsumerName"], "Expected key ConsumerName to exist in table")
	if struct["ConsumerName"] then asserts.AssertConsumerName(struct["ConsumerName"]) end
	if struct["StreamARN"] then asserts.AssertStreamARN(struct["StreamARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.RegisterStreamConsumerInput[k], "RegisterStreamConsumerInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RegisterStreamConsumerInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ConsumerName [ConsumerName] <p>For a given Kinesis data stream, each consumer must have a unique name. However, consumer names don't have to be unique across data streams.</p>
-- * StreamARN [StreamARN] <p>The ARN of the Kinesis data stream that you want to register the consumer with. For more info, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-kinesis-streams">Amazon Resource Names (ARNs) and AWS Service Namespaces</a>.</p>
-- Required key: StreamARN
-- Required key: ConsumerName
-- @return RegisterStreamConsumerInput structure as a key-value pair table
function M.RegisterStreamConsumerInput(args)
	assert(args, "You must provide an argument table when creating RegisterStreamConsumerInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ConsumerName"] = args["ConsumerName"],
		["StreamARN"] = args["StreamARN"],
	}
	asserts.AssertRegisterStreamConsumerInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListStreamConsumersInput = { ["StreamCreationTimestamp"] = true, ["NextToken"] = true, ["StreamARN"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListStreamConsumersInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListStreamConsumersInput to be of type 'table'")
	assert(struct["StreamARN"], "Expected key StreamARN to exist in table")
	if struct["StreamCreationTimestamp"] then asserts.AssertTimestamp(struct["StreamCreationTimestamp"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["StreamARN"] then asserts.AssertStreamARN(struct["StreamARN"]) end
	if struct["MaxResults"] then asserts.AssertListStreamConsumersInputLimit(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListStreamConsumersInput[k], "ListStreamConsumersInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListStreamConsumersInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StreamCreationTimestamp [Timestamp] <p>Specify this input parameter to distinguish data streams that have the same name. For example, if you create a data stream and then delete it, and you later create another data stream with the same name, you can use this input parameter to specify which of the two streams you want to list the consumers for. </p> <p>You can't specify this parameter if you specify the NextToken parameter. </p>
-- * NextToken [NextToken] <p>When the number of consumers that are registered with the data stream is greater than the default value for the <code>MaxResults</code> parameter, or if you explicitly specify a value for <code>MaxResults</code> that is less than the number of consumers that are registered with the data stream, the response includes a pagination token named <code>NextToken</code>. You can specify this <code>NextToken</code> value in a subsequent call to <code>ListStreamConsumers</code> to list the next set of registered consumers.</p> <p>Don't specify <code>StreamName</code> or <code>StreamCreationTimestamp</code> if you specify <code>NextToken</code> because the latter unambiguously identifies the stream.</p> <p>You can optionally specify a value for the <code>MaxResults</code> parameter when you specify <code>NextToken</code>. If you specify a <code>MaxResults</code> value that is less than the number of consumers that the operation returns if you don't specify <code>MaxResults</code>, the response will contain a new <code>NextToken</code> value. You can use the new <code>NextToken</code> value in a subsequent call to the <code>ListStreamConsumers</code> operation to list the next set of consumers.</p> <important> <p>Tokens expire after 300 seconds. When you obtain a value for <code>NextToken</code> in the response to a call to <code>ListStreamConsumers</code>, you have 300 seconds to use that value. If you specify an expired token in a call to <code>ListStreamConsumers</code>, you get <code>ExpiredNextTokenException</code>.</p> </important>
-- * StreamARN [StreamARN] <p>The ARN of the Kinesis data stream for which you want to list the registered consumers. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-kinesis-streams">Amazon Resource Names (ARNs) and AWS Service Namespaces</a>.</p>
-- * MaxResults [ListStreamConsumersInputLimit] <p>The maximum number of consumers that you want a single call of <code>ListStreamConsumers</code> to return.</p>
-- Required key: StreamARN
-- @return ListStreamConsumersInput structure as a key-value pair table
function M.ListStreamConsumersInput(args)
	assert(args, "You must provide an argument table when creating ListStreamConsumersInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StreamCreationTimestamp"] = args["StreamCreationTimestamp"],
		["NextToken"] = args["NextToken"],
		["StreamARN"] = args["StreamARN"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertListStreamConsumersInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateShardCountInput = { ["TargetShardCount"] = true, ["StreamName"] = true, ["ScalingType"] = true, nil }

function asserts.AssertUpdateShardCountInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateShardCountInput to be of type 'table'")
	assert(struct["StreamName"], "Expected key StreamName to exist in table")
	assert(struct["TargetShardCount"], "Expected key TargetShardCount to exist in table")
	assert(struct["ScalingType"], "Expected key ScalingType to exist in table")
	if struct["TargetShardCount"] then asserts.AssertPositiveIntegerObject(struct["TargetShardCount"]) end
	if struct["StreamName"] then asserts.AssertStreamName(struct["StreamName"]) end
	if struct["ScalingType"] then asserts.AssertScalingType(struct["ScalingType"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateShardCountInput[k], "UpdateShardCountInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateShardCountInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TargetShardCount [PositiveIntegerObject] <p>The new number of shards.</p>
-- * StreamName [StreamName] <p>The name of the stream.</p>
-- * ScalingType [ScalingType] <p>The scaling type. Uniform scaling creates shards of equal size.</p>
-- Required key: StreamName
-- Required key: TargetShardCount
-- Required key: ScalingType
-- @return UpdateShardCountInput structure as a key-value pair table
function M.UpdateShardCountInput(args)
	assert(args, "You must provide an argument table when creating UpdateShardCountInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TargetShardCount"] = args["TargetShardCount"],
		["StreamName"] = args["StreamName"],
		["ScalingType"] = args["ScalingType"],
	}
	asserts.AssertUpdateShardCountInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeStreamConsumerOutput = { ["ConsumerDescription"] = true, nil }

function asserts.AssertDescribeStreamConsumerOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeStreamConsumerOutput to be of type 'table'")
	assert(struct["ConsumerDescription"], "Expected key ConsumerDescription to exist in table")
	if struct["ConsumerDescription"] then asserts.AssertConsumerDescription(struct["ConsumerDescription"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeStreamConsumerOutput[k], "DescribeStreamConsumerOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeStreamConsumerOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ConsumerDescription [ConsumerDescription] <p>An object that represents the details of the consumer.</p>
-- Required key: ConsumerDescription
-- @return DescribeStreamConsumerOutput structure as a key-value pair table
function M.DescribeStreamConsumerOutput(args)
	assert(args, "You must provide an argument table when creating DescribeStreamConsumerOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ConsumerDescription"] = args["ConsumerDescription"],
	}
	asserts.AssertDescribeStreamConsumerOutput(all_args)
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
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InternalFailureException[k], "InternalFailureException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InternalFailureException
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] 
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

keys.RemoveTagsFromStreamInput = { ["StreamName"] = true, ["TagKeys"] = true, nil }

function asserts.AssertRemoveTagsFromStreamInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RemoveTagsFromStreamInput to be of type 'table'")
	assert(struct["StreamName"], "Expected key StreamName to exist in table")
	assert(struct["TagKeys"], "Expected key TagKeys to exist in table")
	if struct["StreamName"] then asserts.AssertStreamName(struct["StreamName"]) end
	if struct["TagKeys"] then asserts.AssertTagKeyList(struct["TagKeys"]) end
	for k,_ in pairs(struct) do
		assert(keys.RemoveTagsFromStreamInput[k], "RemoveTagsFromStreamInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RemoveTagsFromStreamInput
-- <p>Represents the input for <code>RemoveTagsFromStream</code>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StreamName [StreamName] <p>The name of the stream.</p>
-- * TagKeys [TagKeyList] <p>A list of tag keys. Each corresponding tag is removed from the stream.</p>
-- Required key: StreamName
-- Required key: TagKeys
-- @return RemoveTagsFromStreamInput structure as a key-value pair table
function M.RemoveTagsFromStreamInput(args)
	assert(args, "You must provide an argument table when creating RemoveTagsFromStreamInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StreamName"] = args["StreamName"],
		["TagKeys"] = args["TagKeys"],
	}
	asserts.AssertRemoveTagsFromStreamInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StartingPosition = { ["Timestamp"] = true, ["Type"] = true, ["SequenceNumber"] = true, nil }

function asserts.AssertStartingPosition(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartingPosition to be of type 'table'")
	assert(struct["Type"], "Expected key Type to exist in table")
	if struct["Timestamp"] then asserts.AssertTimestamp(struct["Timestamp"]) end
	if struct["Type"] then asserts.AssertShardIteratorType(struct["Type"]) end
	if struct["SequenceNumber"] then asserts.AssertSequenceNumber(struct["SequenceNumber"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartingPosition[k], "StartingPosition contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartingPosition
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Timestamp [Timestamp] 
-- * Type [ShardIteratorType] 
-- * SequenceNumber [SequenceNumber] 
-- Required key: Type
-- @return StartingPosition structure as a key-value pair table
function M.StartingPosition(args)
	assert(args, "You must provide an argument table when creating StartingPosition")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Timestamp"] = args["Timestamp"],
		["Type"] = args["Type"],
		["SequenceNumber"] = args["SequenceNumber"],
	}
	asserts.AssertStartingPosition(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Consumer = { ["ConsumerCreationTimestamp"] = true, ["ConsumerName"] = true, ["ConsumerARN"] = true, ["ConsumerStatus"] = true, nil }

function asserts.AssertConsumer(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Consumer to be of type 'table'")
	assert(struct["ConsumerName"], "Expected key ConsumerName to exist in table")
	assert(struct["ConsumerARN"], "Expected key ConsumerARN to exist in table")
	assert(struct["ConsumerStatus"], "Expected key ConsumerStatus to exist in table")
	assert(struct["ConsumerCreationTimestamp"], "Expected key ConsumerCreationTimestamp to exist in table")
	if struct["ConsumerCreationTimestamp"] then asserts.AssertTimestamp(struct["ConsumerCreationTimestamp"]) end
	if struct["ConsumerName"] then asserts.AssertConsumerName(struct["ConsumerName"]) end
	if struct["ConsumerARN"] then asserts.AssertConsumerARN(struct["ConsumerARN"]) end
	if struct["ConsumerStatus"] then asserts.AssertConsumerStatus(struct["ConsumerStatus"]) end
	for k,_ in pairs(struct) do
		assert(keys.Consumer[k], "Consumer contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Consumer
-- <p>An object that represents the details of the consumer you registered.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ConsumerCreationTimestamp [Timestamp] <p/>
-- * ConsumerName [ConsumerName] <p>The name of the consumer is something you choose when you register the consumer.</p>
-- * ConsumerARN [ConsumerARN] <p>When you register a consumer, Kinesis Data Streams generates an ARN for it. You need this ARN to be able to call <a>SubscribeToShard</a>.</p> <p>If you delete a consumer and then create a new one with the same name, it won't have the same ARN. That's because consumer ARNs contain the creation timestamp. This is important to keep in mind if you have IAM policies that reference consumer ARNs.</p>
-- * ConsumerStatus [ConsumerStatus] <p>A consumer can't read data while in the <code>CREATING</code> or <code>DELETING</code> states.</p>
-- Required key: ConsumerName
-- Required key: ConsumerARN
-- Required key: ConsumerStatus
-- Required key: ConsumerCreationTimestamp
-- @return Consumer structure as a key-value pair table
function M.Consumer(args)
	assert(args, "You must provide an argument table when creating Consumer")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ConsumerCreationTimestamp"] = args["ConsumerCreationTimestamp"],
		["ConsumerName"] = args["ConsumerName"],
		["ConsumerARN"] = args["ConsumerARN"],
		["ConsumerStatus"] = args["ConsumerStatus"],
	}
	asserts.AssertConsumer(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ProvisionedThroughputExceededException = { ["message"] = true, nil }

function asserts.AssertProvisionedThroughputExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ProvisionedThroughputExceededException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ProvisionedThroughputExceededException[k], "ProvisionedThroughputExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ProvisionedThroughputExceededException
-- <p>The request rate for the stream is too high, or the requested data is too large for the available throughput. Reduce the frequency or size of your requests. For more information, see <a href="http://docs.aws.amazon.com/kinesis/latest/dev/service-sizes-and-limits.html">Streams Limits</a> in the <i>Amazon Kinesis Data Streams Developer Guide</i>, and <a href="http://docs.aws.amazon.com/general/latest/gr/api-retries.html">Error Retries and Exponential Backoff in AWS</a> in the <i>AWS General Reference</i>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] <p>A message that provides information about the error.</p>
-- @return ProvisionedThroughputExceededException structure as a key-value pair table
function M.ProvisionedThroughputExceededException(args)
	assert(args, "You must provide an argument table when creating ProvisionedThroughputExceededException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertProvisionedThroughputExceededException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EnhancedMetrics = { ["ShardLevelMetrics"] = true, nil }

function asserts.AssertEnhancedMetrics(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EnhancedMetrics to be of type 'table'")
	if struct["ShardLevelMetrics"] then asserts.AssertMetricsNameList(struct["ShardLevelMetrics"]) end
	for k,_ in pairs(struct) do
		assert(keys.EnhancedMetrics[k], "EnhancedMetrics contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EnhancedMetrics
-- <p>Represents enhanced metrics types.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ShardLevelMetrics [MetricsNameList] <p>List of shard-level metrics.</p> <p>The following are the valid shard-level metrics. The value "<code>ALL</code>" enhances every metric.</p> <ul> <li> <p> <code>IncomingBytes</code> </p> </li> <li> <p> <code>IncomingRecords</code> </p> </li> <li> <p> <code>OutgoingBytes</code> </p> </li> <li> <p> <code>OutgoingRecords</code> </p> </li> <li> <p> <code>WriteProvisionedThroughputExceeded</code> </p> </li> <li> <p> <code>ReadProvisionedThroughputExceeded</code> </p> </li> <li> <p> <code>IteratorAgeMilliseconds</code> </p> </li> <li> <p> <code>ALL</code> </p> </li> </ul> <p>For more information, see <a href="http://docs.aws.amazon.com/kinesis/latest/dev/monitoring-with-cloudwatch.html">Monitoring the Amazon Kinesis Data Streams Service with Amazon CloudWatch</a> in the <i>Amazon Kinesis Data Streams Developer Guide</i>.</p>
-- @return EnhancedMetrics structure as a key-value pair table
function M.EnhancedMetrics(args)
	assert(args, "You must provide an argument table when creating EnhancedMetrics")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ShardLevelMetrics"] = args["ShardLevelMetrics"],
	}
	asserts.AssertEnhancedMetrics(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListTagsForStreamInput = { ["StreamName"] = true, ["Limit"] = true, ["ExclusiveStartTagKey"] = true, nil }

function asserts.AssertListTagsForStreamInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagsForStreamInput to be of type 'table'")
	assert(struct["StreamName"], "Expected key StreamName to exist in table")
	if struct["StreamName"] then asserts.AssertStreamName(struct["StreamName"]) end
	if struct["Limit"] then asserts.AssertListTagsForStreamInputLimit(struct["Limit"]) end
	if struct["ExclusiveStartTagKey"] then asserts.AssertTagKey(struct["ExclusiveStartTagKey"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTagsForStreamInput[k], "ListTagsForStreamInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagsForStreamInput
-- <p>Represents the input for <code>ListTagsForStream</code>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StreamName [StreamName] <p>The name of the stream.</p>
-- * Limit [ListTagsForStreamInputLimit] <p>The number of tags to return. If this number is less than the total number of tags associated with the stream, <code>HasMoreTags</code> is set to <code>true</code>. To list additional tags, set <code>ExclusiveStartTagKey</code> to the last key in the response.</p>
-- * ExclusiveStartTagKey [TagKey] <p>The key to use as the starting point for the list of tags. If this parameter is set, <code>ListTagsForStream</code> gets all tags that occur after <code>ExclusiveStartTagKey</code>. </p>
-- Required key: StreamName
-- @return ListTagsForStreamInput structure as a key-value pair table
function M.ListTagsForStreamInput(args)
	assert(args, "You must provide an argument table when creating ListTagsForStreamInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StreamName"] = args["StreamName"],
		["Limit"] = args["Limit"],
		["ExclusiveStartTagKey"] = args["ExclusiveStartTagKey"],
	}
	asserts.AssertListTagsForStreamInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>The requested resource could not be found. The stream might not be specified correctly.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] <p>A message that provides information about the error.</p>
-- @return ResourceNotFoundException structure as a key-value pair table
function M.ResourceNotFoundException(args)
	assert(args, "You must provide an argument table when creating ResourceNotFoundException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertResourceNotFoundException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetRecordsInput = { ["ShardIterator"] = true, ["Limit"] = true, nil }

function asserts.AssertGetRecordsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetRecordsInput to be of type 'table'")
	assert(struct["ShardIterator"], "Expected key ShardIterator to exist in table")
	if struct["ShardIterator"] then asserts.AssertShardIterator(struct["ShardIterator"]) end
	if struct["Limit"] then asserts.AssertGetRecordsInputLimit(struct["Limit"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetRecordsInput[k], "GetRecordsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetRecordsInput
-- <p>Represents the input for <a>GetRecords</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ShardIterator [ShardIterator] <p>The position in the shard from which you want to start sequentially reading data records. A shard iterator specifies this position using the sequence number of a data record in the shard.</p>
-- * Limit [GetRecordsInputLimit] <p>The maximum number of records to return. Specify a value of up to 10,000. If you specify a value that is greater than 10,000, <a>GetRecords</a> throws <code>InvalidArgumentException</code>.</p>
-- Required key: ShardIterator
-- @return GetRecordsInput structure as a key-value pair table
function M.GetRecordsInput(args)
	assert(args, "You must provide an argument table when creating GetRecordsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ShardIterator"] = args["ShardIterator"],
		["Limit"] = args["Limit"],
	}
	asserts.AssertGetRecordsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListShardsOutput = { ["NextToken"] = true, ["Shards"] = true, nil }

function asserts.AssertListShardsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListShardsOutput to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["Shards"] then asserts.AssertShardList(struct["Shards"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListShardsOutput[k], "ListShardsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListShardsOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>When the number of shards in the data stream is greater than the default value for the <code>MaxResults</code> parameter, or if you explicitly specify a value for <code>MaxResults</code> that is less than the number of shards in the data stream, the response includes a pagination token named <code>NextToken</code>. You can specify this <code>NextToken</code> value in a subsequent call to <code>ListShards</code> to list the next set of shards. For more information about the use of this pagination token when calling the <code>ListShards</code> operation, see <a>ListShardsInput$NextToken</a>.</p> <important> <p>Tokens expire after 300 seconds. When you obtain a value for <code>NextToken</code> in the response to a call to <code>ListShards</code>, you have 300 seconds to use that value. If you specify an expired token in a call to <code>ListShards</code>, you get <code>ExpiredNextTokenException</code>.</p> </important>
-- * Shards [ShardList] <p>An array of JSON objects. Each object represents one shard and specifies the IDs of the shard, the shard's parent, and the shard that's adjacent to the shard's parent. Each object also contains the starting and ending hash keys and the starting and ending sequence numbers for the shard.</p>
-- @return ListShardsOutput structure as a key-value pair table
function M.ListShardsOutput(args)
	assert(args, "You must provide an argument table when creating ListShardsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["Shards"] = args["Shards"],
	}
	asserts.AssertListShardsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SplitShardInput = { ["ShardToSplit"] = true, ["StreamName"] = true, ["NewStartingHashKey"] = true, nil }

function asserts.AssertSplitShardInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SplitShardInput to be of type 'table'")
	assert(struct["StreamName"], "Expected key StreamName to exist in table")
	assert(struct["ShardToSplit"], "Expected key ShardToSplit to exist in table")
	assert(struct["NewStartingHashKey"], "Expected key NewStartingHashKey to exist in table")
	if struct["ShardToSplit"] then asserts.AssertShardId(struct["ShardToSplit"]) end
	if struct["StreamName"] then asserts.AssertStreamName(struct["StreamName"]) end
	if struct["NewStartingHashKey"] then asserts.AssertHashKey(struct["NewStartingHashKey"]) end
	for k,_ in pairs(struct) do
		assert(keys.SplitShardInput[k], "SplitShardInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SplitShardInput
-- <p>Represents the input for <code>SplitShard</code>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ShardToSplit [ShardId] <p>The shard ID of the shard to split.</p>
-- * StreamName [StreamName] <p>The name of the stream for the shard split.</p>
-- * NewStartingHashKey [HashKey] <p>A hash key value for the starting hash key of one of the child shards created by the split. The hash key range for a given shard constitutes a set of ordered contiguous positive integers. The value for <code>NewStartingHashKey</code> must be in the range of hash keys being mapped into the shard. The <code>NewStartingHashKey</code> hash key value and all higher hash key values in hash key range are distributed to one of the child shards. All the lower hash key values in the range are distributed to the other child shard.</p>
-- Required key: StreamName
-- Required key: ShardToSplit
-- Required key: NewStartingHashKey
-- @return SplitShardInput structure as a key-value pair table
function M.SplitShardInput(args)
	assert(args, "You must provide an argument table when creating SplitShardInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ShardToSplit"] = args["ShardToSplit"],
		["StreamName"] = args["StreamName"],
		["NewStartingHashKey"] = args["NewStartingHashKey"],
	}
	asserts.AssertSplitShardInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.KMSOptInRequired = { ["message"] = true, nil }

function asserts.AssertKMSOptInRequired(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected KMSOptInRequired to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.KMSOptInRequired[k], "KMSOptInRequired contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type KMSOptInRequired
-- <p>The AWS access key ID needs a subscription for the service.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] <p>A message that provides information about the error.</p>
-- @return KMSOptInRequired structure as a key-value pair table
function M.KMSOptInRequired(args)
	assert(args, "You must provide an argument table when creating KMSOptInRequired")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertKMSOptInRequired(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutRecordsResultEntry = { ["ShardId"] = true, ["ErrorCode"] = true, ["ErrorMessage"] = true, ["SequenceNumber"] = true, nil }

function asserts.AssertPutRecordsResultEntry(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutRecordsResultEntry to be of type 'table'")
	if struct["ShardId"] then asserts.AssertShardId(struct["ShardId"]) end
	if struct["ErrorCode"] then asserts.AssertErrorCode(struct["ErrorCode"]) end
	if struct["ErrorMessage"] then asserts.AssertErrorMessage(struct["ErrorMessage"]) end
	if struct["SequenceNumber"] then asserts.AssertSequenceNumber(struct["SequenceNumber"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutRecordsResultEntry[k], "PutRecordsResultEntry contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutRecordsResultEntry
-- <p>Represents the result of an individual record from a <code>PutRecords</code> request. A record that is successfully added to a stream includes <code>SequenceNumber</code> and <code>ShardId</code> in the result. A record that fails to be added to the stream includes <code>ErrorCode</code> and <code>ErrorMessage</code> in the result.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ShardId [ShardId] <p>The shard ID for an individual record result.</p>
-- * ErrorCode [ErrorCode] <p>The error code for an individual record result. <code>ErrorCodes</code> can be either <code>ProvisionedThroughputExceededException</code> or <code>InternalFailure</code>.</p>
-- * ErrorMessage [ErrorMessage] <p>The error message for an individual record result. An <code>ErrorCode</code> value of <code>ProvisionedThroughputExceededException</code> has an error message that includes the account ID, stream name, and shard ID. An <code>ErrorCode</code> value of <code>InternalFailure</code> has the error message <code>"Internal Service Failure"</code>.</p>
-- * SequenceNumber [SequenceNumber] <p>The sequence number for an individual record result.</p>
-- @return PutRecordsResultEntry structure as a key-value pair table
function M.PutRecordsResultEntry(args)
	assert(args, "You must provide an argument table when creating PutRecordsResultEntry")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ShardId"] = args["ShardId"],
		["ErrorCode"] = args["ErrorCode"],
		["ErrorMessage"] = args["ErrorMessage"],
		["SequenceNumber"] = args["SequenceNumber"],
	}
	asserts.AssertPutRecordsResultEntry(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeLimitsOutput = { ["OpenShardCount"] = true, ["ShardLimit"] = true, nil }

function asserts.AssertDescribeLimitsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeLimitsOutput to be of type 'table'")
	assert(struct["ShardLimit"], "Expected key ShardLimit to exist in table")
	assert(struct["OpenShardCount"], "Expected key OpenShardCount to exist in table")
	if struct["OpenShardCount"] then asserts.AssertShardCountObject(struct["OpenShardCount"]) end
	if struct["ShardLimit"] then asserts.AssertShardCountObject(struct["ShardLimit"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeLimitsOutput[k], "DescribeLimitsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeLimitsOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OpenShardCount [ShardCountObject] <p>The number of open shards.</p>
-- * ShardLimit [ShardCountObject] <p>The maximum number of shards.</p>
-- Required key: ShardLimit
-- Required key: OpenShardCount
-- @return DescribeLimitsOutput structure as a key-value pair table
function M.DescribeLimitsOutput(args)
	assert(args, "You must provide an argument table when creating DescribeLimitsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["OpenShardCount"] = args["OpenShardCount"],
		["ShardLimit"] = args["ShardLimit"],
	}
	asserts.AssertDescribeLimitsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ConsumerDescription = { ["ConsumerCreationTimestamp"] = true, ["ConsumerName"] = true, ["ConsumerARN"] = true, ["ConsumerStatus"] = true, ["StreamARN"] = true, nil }

function asserts.AssertConsumerDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConsumerDescription to be of type 'table'")
	assert(struct["ConsumerName"], "Expected key ConsumerName to exist in table")
	assert(struct["ConsumerARN"], "Expected key ConsumerARN to exist in table")
	assert(struct["ConsumerStatus"], "Expected key ConsumerStatus to exist in table")
	assert(struct["ConsumerCreationTimestamp"], "Expected key ConsumerCreationTimestamp to exist in table")
	assert(struct["StreamARN"], "Expected key StreamARN to exist in table")
	if struct["ConsumerCreationTimestamp"] then asserts.AssertTimestamp(struct["ConsumerCreationTimestamp"]) end
	if struct["ConsumerName"] then asserts.AssertConsumerName(struct["ConsumerName"]) end
	if struct["ConsumerARN"] then asserts.AssertConsumerARN(struct["ConsumerARN"]) end
	if struct["ConsumerStatus"] then asserts.AssertConsumerStatus(struct["ConsumerStatus"]) end
	if struct["StreamARN"] then asserts.AssertStreamARN(struct["StreamARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.ConsumerDescription[k], "ConsumerDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConsumerDescription
-- <p>An object that represents the details of a registered consumer.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ConsumerCreationTimestamp [Timestamp] <p/>
-- * ConsumerName [ConsumerName] <p>The name of the consumer is something you choose when you register the consumer.</p>
-- * ConsumerARN [ConsumerARN] <p>When you register a consumer, Kinesis Data Streams generates an ARN for it. You need this ARN to be able to call <a>SubscribeToShard</a>.</p> <p>If you delete a consumer and then create a new one with the same name, it won't have the same ARN. That's because consumer ARNs contain the creation timestamp. This is important to keep in mind if you have IAM policies that reference consumer ARNs.</p>
-- * ConsumerStatus [ConsumerStatus] <p>A consumer can't read data while in the <code>CREATING</code> or <code>DELETING</code> states.</p>
-- * StreamARN [StreamARN] <p>The ARN of the stream with which you registered the consumer.</p>
-- Required key: ConsumerName
-- Required key: ConsumerARN
-- Required key: ConsumerStatus
-- Required key: ConsumerCreationTimestamp
-- Required key: StreamARN
-- @return ConsumerDescription structure as a key-value pair table
function M.ConsumerDescription(args)
	assert(args, "You must provide an argument table when creating ConsumerDescription")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ConsumerCreationTimestamp"] = args["ConsumerCreationTimestamp"],
		["ConsumerName"] = args["ConsumerName"],
		["ConsumerARN"] = args["ConsumerARN"],
		["ConsumerStatus"] = args["ConsumerStatus"],
		["StreamARN"] = args["StreamARN"],
	}
	asserts.AssertConsumerDescription(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StopStreamEncryptionInput = { ["StreamName"] = true, ["EncryptionType"] = true, ["KeyId"] = true, nil }

function asserts.AssertStopStreamEncryptionInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopStreamEncryptionInput to be of type 'table'")
	assert(struct["StreamName"], "Expected key StreamName to exist in table")
	assert(struct["EncryptionType"], "Expected key EncryptionType to exist in table")
	assert(struct["KeyId"], "Expected key KeyId to exist in table")
	if struct["StreamName"] then asserts.AssertStreamName(struct["StreamName"]) end
	if struct["EncryptionType"] then asserts.AssertEncryptionType(struct["EncryptionType"]) end
	if struct["KeyId"] then asserts.AssertKeyId(struct["KeyId"]) end
	for k,_ in pairs(struct) do
		assert(keys.StopStreamEncryptionInput[k], "StopStreamEncryptionInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopStreamEncryptionInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StreamName [StreamName] <p>The name of the stream on which to stop encrypting records.</p>
-- * EncryptionType [EncryptionType] <p>The encryption type. The only valid value is <code>KMS</code>.</p>
-- * KeyId [KeyId] <p>The GUID for the customer-managed AWS KMS key to use for encryption. This value can be a globally unique identifier, a fully specified Amazon Resource Name (ARN) to either an alias or a key, or an alias name prefixed by "alias/".You can also use a master key owned by Kinesis Data Streams by specifying the alias <code>aws/kinesis</code>.</p> <ul> <li> <p>Key ARN example: <code>arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012</code> </p> </li> <li> <p>Alias ARN example: <code>arn:aws:kms:us-east-1:123456789012:alias/MyAliasName</code> </p> </li> <li> <p>Globally unique key ID example: <code>12345678-1234-1234-1234-123456789012</code> </p> </li> <li> <p>Alias name example: <code>alias/MyAliasName</code> </p> </li> <li> <p>Master key owned by Kinesis Data Streams: <code>alias/aws/kinesis</code> </p> </li> </ul>
-- Required key: StreamName
-- Required key: EncryptionType
-- Required key: KeyId
-- @return StopStreamEncryptionInput structure as a key-value pair table
function M.StopStreamEncryptionInput(args)
	assert(args, "You must provide an argument table when creating StopStreamEncryptionInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StreamName"] = args["StreamName"],
		["EncryptionType"] = args["EncryptionType"],
		["KeyId"] = args["KeyId"],
	}
	asserts.AssertStopStreamEncryptionInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DisableEnhancedMonitoringInput = { ["ShardLevelMetrics"] = true, ["StreamName"] = true, nil }

function asserts.AssertDisableEnhancedMonitoringInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisableEnhancedMonitoringInput to be of type 'table'")
	assert(struct["StreamName"], "Expected key StreamName to exist in table")
	assert(struct["ShardLevelMetrics"], "Expected key ShardLevelMetrics to exist in table")
	if struct["ShardLevelMetrics"] then asserts.AssertMetricsNameList(struct["ShardLevelMetrics"]) end
	if struct["StreamName"] then asserts.AssertStreamName(struct["StreamName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DisableEnhancedMonitoringInput[k], "DisableEnhancedMonitoringInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisableEnhancedMonitoringInput
-- <p>Represents the input for <a>DisableEnhancedMonitoring</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ShardLevelMetrics [MetricsNameList] <p>List of shard-level metrics to disable.</p> <p>The following are the valid shard-level metrics. The value "<code>ALL</code>" disables every metric.</p> <ul> <li> <p> <code>IncomingBytes</code> </p> </li> <li> <p> <code>IncomingRecords</code> </p> </li> <li> <p> <code>OutgoingBytes</code> </p> </li> <li> <p> <code>OutgoingRecords</code> </p> </li> <li> <p> <code>WriteProvisionedThroughputExceeded</code> </p> </li> <li> <p> <code>ReadProvisionedThroughputExceeded</code> </p> </li> <li> <p> <code>IteratorAgeMilliseconds</code> </p> </li> <li> <p> <code>ALL</code> </p> </li> </ul> <p>For more information, see <a href="http://docs.aws.amazon.com/kinesis/latest/dev/monitoring-with-cloudwatch.html">Monitoring the Amazon Kinesis Data Streams Service with Amazon CloudWatch</a> in the <i>Amazon Kinesis Data Streams Developer Guide</i>.</p>
-- * StreamName [StreamName] <p>The name of the Kinesis data stream for which to disable enhanced monitoring.</p>
-- Required key: StreamName
-- Required key: ShardLevelMetrics
-- @return DisableEnhancedMonitoringInput structure as a key-value pair table
function M.DisableEnhancedMonitoringInput(args)
	assert(args, "You must provide an argument table when creating DisableEnhancedMonitoringInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ShardLevelMetrics"] = args["ShardLevelMetrics"],
		["StreamName"] = args["StreamName"],
	}
	asserts.AssertDisableEnhancedMonitoringInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>The provided iterator exceeds the maximum age allowed.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] <p>A message that provides information about the error.</p>
-- @return ExpiredIteratorException structure as a key-value pair table
function M.ExpiredIteratorException(args)
	assert(args, "You must provide an argument table when creating ExpiredIteratorException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertExpiredIteratorException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Represents the output for <code>GetShardIterator</code>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ShardIterator [ShardIterator] <p>The position in the shard from which to start reading data records sequentially. A shard iterator specifies this position using the sequence number of a data record in a shard.</p>
-- @return GetShardIteratorOutput structure as a key-value pair table
function M.GetShardIteratorOutput(args)
	assert(args, "You must provide an argument table when creating GetShardIteratorOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ShardIterator"] = args["ShardIterator"],
	}
	asserts.AssertGetShardIteratorOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeStreamOutput = { ["StreamDescription"] = true, nil }

function asserts.AssertDescribeStreamOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeStreamOutput to be of type 'table'")
	assert(struct["StreamDescription"], "Expected key StreamDescription to exist in table")
	if struct["StreamDescription"] then asserts.AssertStreamDescription(struct["StreamDescription"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeStreamOutput[k], "DescribeStreamOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeStreamOutput
-- <p>Represents the output for <code>DescribeStream</code>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StreamDescription [StreamDescription] <p>The current status of the stream, the stream Amazon Resource Name (ARN), an array of shard objects that comprise the stream, and whether there are more shards available.</p>
-- Required key: StreamDescription
-- @return DescribeStreamOutput structure as a key-value pair table
function M.DescribeStreamOutput(args)
	assert(args, "You must provide an argument table when creating DescribeStreamOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StreamDescription"] = args["StreamDescription"],
	}
	asserts.AssertDescribeStreamOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.IncreaseStreamRetentionPeriodInput = { ["RetentionPeriodHours"] = true, ["StreamName"] = true, nil }

function asserts.AssertIncreaseStreamRetentionPeriodInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IncreaseStreamRetentionPeriodInput to be of type 'table'")
	assert(struct["StreamName"], "Expected key StreamName to exist in table")
	assert(struct["RetentionPeriodHours"], "Expected key RetentionPeriodHours to exist in table")
	if struct["RetentionPeriodHours"] then asserts.AssertRetentionPeriodHours(struct["RetentionPeriodHours"]) end
	if struct["StreamName"] then asserts.AssertStreamName(struct["StreamName"]) end
	for k,_ in pairs(struct) do
		assert(keys.IncreaseStreamRetentionPeriodInput[k], "IncreaseStreamRetentionPeriodInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IncreaseStreamRetentionPeriodInput
-- <p>Represents the input for <a>IncreaseStreamRetentionPeriod</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RetentionPeriodHours [RetentionPeriodHours] <p>The new retention period of the stream, in hours. Must be more than the current retention period.</p>
-- * StreamName [StreamName] <p>The name of the stream to modify.</p>
-- Required key: StreamName
-- Required key: RetentionPeriodHours
-- @return IncreaseStreamRetentionPeriodInput structure as a key-value pair table
function M.IncreaseStreamRetentionPeriodInput(args)
	assert(args, "You must provide an argument table when creating IncreaseStreamRetentionPeriodInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RetentionPeriodHours"] = args["RetentionPeriodHours"],
		["StreamName"] = args["StreamName"],
	}
	asserts.AssertIncreaseStreamRetentionPeriodInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SubscribeToShardInput = { ["ShardId"] = true, ["ConsumerARN"] = true, ["StartingPosition"] = true, nil }

function asserts.AssertSubscribeToShardInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SubscribeToShardInput to be of type 'table'")
	assert(struct["ConsumerARN"], "Expected key ConsumerARN to exist in table")
	assert(struct["ShardId"], "Expected key ShardId to exist in table")
	assert(struct["StartingPosition"], "Expected key StartingPosition to exist in table")
	if struct["ShardId"] then asserts.AssertShardId(struct["ShardId"]) end
	if struct["ConsumerARN"] then asserts.AssertConsumerARN(struct["ConsumerARN"]) end
	if struct["StartingPosition"] then asserts.AssertStartingPosition(struct["StartingPosition"]) end
	for k,_ in pairs(struct) do
		assert(keys.SubscribeToShardInput[k], "SubscribeToShardInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SubscribeToShardInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ShardId [ShardId] <p>The ID of the shard you want to subscribe to. To see a list of all the shards for a given stream, use <a>ListShards</a>.</p>
-- * ConsumerARN [ConsumerARN] <p>For this parameter, use the value you obtained when you called <a>RegisterStreamConsumer</a>.</p>
-- * StartingPosition [StartingPosition] 
-- Required key: ConsumerARN
-- Required key: ShardId
-- Required key: StartingPosition
-- @return SubscribeToShardInput structure as a key-value pair table
function M.SubscribeToShardInput(args)
	assert(args, "You must provide an argument table when creating SubscribeToShardInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ShardId"] = args["ShardId"],
		["ConsumerARN"] = args["ConsumerARN"],
		["StartingPosition"] = args["StartingPosition"],
	}
	asserts.AssertSubscribeToShardInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.KMSThrottlingException = { ["message"] = true, nil }

function asserts.AssertKMSThrottlingException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected KMSThrottlingException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.KMSThrottlingException[k], "KMSThrottlingException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type KMSThrottlingException
-- <p>The request was denied due to request throttling. For more information about throttling, see <a href="http://docs.aws.amazon.com/kms/latest/developerguide/limits.html#requests-per-second">Limits</a> in the <i>AWS Key Management Service Developer Guide</i>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] <p>A message that provides information about the error.</p>
-- @return KMSThrottlingException structure as a key-value pair table
function M.KMSThrottlingException(args)
	assert(args, "You must provide an argument table when creating KMSThrottlingException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertKMSThrottlingException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EnableEnhancedMonitoringInput = { ["ShardLevelMetrics"] = true, ["StreamName"] = true, nil }

function asserts.AssertEnableEnhancedMonitoringInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EnableEnhancedMonitoringInput to be of type 'table'")
	assert(struct["StreamName"], "Expected key StreamName to exist in table")
	assert(struct["ShardLevelMetrics"], "Expected key ShardLevelMetrics to exist in table")
	if struct["ShardLevelMetrics"] then asserts.AssertMetricsNameList(struct["ShardLevelMetrics"]) end
	if struct["StreamName"] then asserts.AssertStreamName(struct["StreamName"]) end
	for k,_ in pairs(struct) do
		assert(keys.EnableEnhancedMonitoringInput[k], "EnableEnhancedMonitoringInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EnableEnhancedMonitoringInput
-- <p>Represents the input for <a>EnableEnhancedMonitoring</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ShardLevelMetrics [MetricsNameList] <p>List of shard-level metrics to enable.</p> <p>The following are the valid shard-level metrics. The value "<code>ALL</code>" enables every metric.</p> <ul> <li> <p> <code>IncomingBytes</code> </p> </li> <li> <p> <code>IncomingRecords</code> </p> </li> <li> <p> <code>OutgoingBytes</code> </p> </li> <li> <p> <code>OutgoingRecords</code> </p> </li> <li> <p> <code>WriteProvisionedThroughputExceeded</code> </p> </li> <li> <p> <code>ReadProvisionedThroughputExceeded</code> </p> </li> <li> <p> <code>IteratorAgeMilliseconds</code> </p> </li> <li> <p> <code>ALL</code> </p> </li> </ul> <p>For more information, see <a href="http://docs.aws.amazon.com/kinesis/latest/dev/monitoring-with-cloudwatch.html">Monitoring the Amazon Kinesis Data Streams Service with Amazon CloudWatch</a> in the <i>Amazon Kinesis Data Streams Developer Guide</i>.</p>
-- * StreamName [StreamName] <p>The name of the stream for which to enable enhanced monitoring.</p>
-- Required key: StreamName
-- Required key: ShardLevelMetrics
-- @return EnableEnhancedMonitoringInput structure as a key-value pair table
function M.EnableEnhancedMonitoringInput(args)
	assert(args, "You must provide an argument table when creating EnableEnhancedMonitoringInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ShardLevelMetrics"] = args["ShardLevelMetrics"],
		["StreamName"] = args["StreamName"],
	}
	asserts.AssertEnableEnhancedMonitoringInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidArgumentException = { ["message"] = true, nil }

function asserts.AssertInvalidArgumentException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidArgumentException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidArgumentException[k], "InvalidArgumentException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidArgumentException
-- <p>A specified parameter exceeds its restrictions, is not supported, or can't be used. For more information, see the returned message.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] <p>A message that provides information about the error.</p>
-- @return InvalidArgumentException structure as a key-value pair table
function M.InvalidArgumentException(args)
	assert(args, "You must provide an argument table when creating InvalidArgumentException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertInvalidArgumentException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RegisterStreamConsumerOutput = { ["Consumer"] = true, nil }

function asserts.AssertRegisterStreamConsumerOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RegisterStreamConsumerOutput to be of type 'table'")
	assert(struct["Consumer"], "Expected key Consumer to exist in table")
	if struct["Consumer"] then asserts.AssertConsumer(struct["Consumer"]) end
	for k,_ in pairs(struct) do
		assert(keys.RegisterStreamConsumerOutput[k], "RegisterStreamConsumerOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RegisterStreamConsumerOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Consumer [Consumer] <p>An object that represents the details of the consumer you registered. When you register a consumer, it gets an ARN that is generated by Kinesis Data Streams.</p>
-- Required key: Consumer
-- @return RegisterStreamConsumerOutput structure as a key-value pair table
function M.RegisterStreamConsumerOutput(args)
	assert(args, "You must provide an argument table when creating RegisterStreamConsumerOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Consumer"] = args["Consumer"],
	}
	asserts.AssertRegisterStreamConsumerOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SubscribeToShardEventStream = { ["SubscribeToShardEvent"] = true, nil }

function asserts.AssertSubscribeToShardEventStream(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SubscribeToShardEventStream to be of type 'table'")
	assert(struct["SubscribeToShardEvent"], "Expected key SubscribeToShardEvent to exist in table")
	if struct["SubscribeToShardEvent"] then asserts.AssertSubscribeToShardEvent(struct["SubscribeToShardEvent"]) end
	for k,_ in pairs(struct) do
		assert(keys.SubscribeToShardEventStream[k], "SubscribeToShardEventStream contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SubscribeToShardEventStream
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SubscribeToShardEvent [SubscribeToShardEvent] 
-- Required key: SubscribeToShardEvent
-- @return SubscribeToShardEventStream structure as a key-value pair table
function M.SubscribeToShardEventStream(args)
	assert(args, "You must provide an argument table when creating SubscribeToShardEventStream")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SubscribeToShardEvent"] = args["SubscribeToShardEvent"],
	}
	asserts.AssertSubscribeToShardEventStream(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeLimitsInput = { nil }

function asserts.AssertDescribeLimitsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeLimitsInput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DescribeLimitsInput[k], "DescribeLimitsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeLimitsInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DescribeLimitsInput structure as a key-value pair table
function M.DescribeLimitsInput(args)
	assert(args, "You must provide an argument table when creating DescribeLimitsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDescribeLimitsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

function asserts.AssertHashKey(str)
	assert(str)
	assert(type(str) == "string", "Expected HashKey to be of type 'string'")
end

--  
function M.HashKey(str)
	asserts.AssertHashKey(str)
	return str
end

function asserts.AssertStreamARN(str)
	assert(str)
	assert(type(str) == "string", "Expected StreamARN to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.StreamARN(str)
	asserts.AssertStreamARN(str)
	return str
end

function asserts.AssertTagKey(str)
	assert(str)
	assert(type(str) == "string", "Expected TagKey to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.TagKey(str)
	asserts.AssertTagKey(str)
	return str
end

function asserts.AssertConsumerName(str)
	assert(str)
	assert(type(str) == "string", "Expected ConsumerName to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ConsumerName(str)
	asserts.AssertConsumerName(str)
	return str
end

function asserts.AssertShardIterator(str)
	assert(str)
	assert(type(str) == "string", "Expected ShardIterator to be of type 'string'")
	assert(#str <= 512, "Expected string to be max 512 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ShardIterator(str)
	asserts.AssertShardIterator(str)
	return str
end

function asserts.AssertEncryptionType(str)
	assert(str)
	assert(type(str) == "string", "Expected EncryptionType to be of type 'string'")
end

--  
function M.EncryptionType(str)
	asserts.AssertEncryptionType(str)
	return str
end

function asserts.AssertPartitionKey(str)
	assert(str)
	assert(type(str) == "string", "Expected PartitionKey to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.PartitionKey(str)
	asserts.AssertPartitionKey(str)
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

function asserts.AssertNextToken(str)
	assert(str)
	assert(type(str) == "string", "Expected NextToken to be of type 'string'")
	assert(#str <= 1048576, "Expected string to be max 1048576 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.NextToken(str)
	asserts.AssertNextToken(str)
	return str
end

function asserts.AssertScalingType(str)
	assert(str)
	assert(type(str) == "string", "Expected ScalingType to be of type 'string'")
end

--  
function M.ScalingType(str)
	asserts.AssertScalingType(str)
	return str
end

function asserts.AssertConsumerARN(str)
	assert(str)
	assert(type(str) == "string", "Expected ConsumerARN to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ConsumerARN(str)
	asserts.AssertConsumerARN(str)
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

function asserts.AssertShardId(str)
	assert(str)
	assert(type(str) == "string", "Expected ShardId to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ShardId(str)
	asserts.AssertShardId(str)
	return str
end

function asserts.AssertTagValue(str)
	assert(str)
	assert(type(str) == "string", "Expected TagValue to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
end

--  
function M.TagValue(str)
	asserts.AssertTagValue(str)
	return str
end

function asserts.AssertSequenceNumber(str)
	assert(str)
	assert(type(str) == "string", "Expected SequenceNumber to be of type 'string'")
end

--  
function M.SequenceNumber(str)
	asserts.AssertSequenceNumber(str)
	return str
end

function asserts.AssertErrorCode(str)
	assert(str)
	assert(type(str) == "string", "Expected ErrorCode to be of type 'string'")
end

--  
function M.ErrorCode(str)
	asserts.AssertErrorCode(str)
	return str
end

function asserts.AssertStreamName(str)
	assert(str)
	assert(type(str) == "string", "Expected StreamName to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.StreamName(str)
	asserts.AssertStreamName(str)
	return str
end

function asserts.AssertMetricsName(str)
	assert(str)
	assert(type(str) == "string", "Expected MetricsName to be of type 'string'")
end

--  
function M.MetricsName(str)
	asserts.AssertMetricsName(str)
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

function asserts.AssertKeyId(str)
	assert(str)
	assert(type(str) == "string", "Expected KeyId to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.KeyId(str)
	asserts.AssertKeyId(str)
	return str
end

function asserts.AssertConsumerStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected ConsumerStatus to be of type 'string'")
end

--  
function M.ConsumerStatus(str)
	asserts.AssertConsumerStatus(str)
	return str
end

function asserts.AssertMillisBehindLatest(long)
	assert(long)
	assert(type(long) == "number", "Expected MillisBehindLatest to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.MillisBehindLatest(long)
	asserts.AssertMillisBehindLatest(long)
	return long
end

function asserts.AssertGetRecordsInputLimit(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected GetRecordsInputLimit to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 10000, "Expected integer to be max 10000")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.GetRecordsInputLimit(integer)
	asserts.AssertGetRecordsInputLimit(integer)
	return integer
end

function asserts.AssertListShardsInputLimit(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected ListShardsInputLimit to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 10000, "Expected integer to be max 10000")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.ListShardsInputLimit(integer)
	asserts.AssertListShardsInputLimit(integer)
	return integer
end

function asserts.AssertRetentionPeriodHours(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected RetentionPeriodHours to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 168, "Expected integer to be max 168")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.RetentionPeriodHours(integer)
	asserts.AssertRetentionPeriodHours(integer)
	return integer
end

function asserts.AssertListTagsForStreamInputLimit(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected ListTagsForStreamInputLimit to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 50, "Expected integer to be max 50")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.ListTagsForStreamInputLimit(integer)
	asserts.AssertListTagsForStreamInputLimit(integer)
	return integer
end

function asserts.AssertShardCountObject(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected ShardCountObject to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 1000000, "Expected integer to be max 1000000")
end

function M.ShardCountObject(integer)
	asserts.AssertShardCountObject(integer)
	return integer
end

function asserts.AssertListStreamsInputLimit(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected ListStreamsInputLimit to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 10000, "Expected integer to be max 10000")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.ListStreamsInputLimit(integer)
	asserts.AssertListStreamsInputLimit(integer)
	return integer
end

function asserts.AssertConsumerCountObject(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected ConsumerCountObject to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 1000000, "Expected integer to be max 1000000")
end

function M.ConsumerCountObject(integer)
	asserts.AssertConsumerCountObject(integer)
	return integer
end

function asserts.AssertListStreamConsumersInputLimit(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected ListStreamConsumersInputLimit to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 10000, "Expected integer to be max 10000")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.ListStreamConsumersInputLimit(integer)
	asserts.AssertListStreamConsumersInputLimit(integer)
	return integer
end

function asserts.AssertDescribeStreamInputLimit(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected DescribeStreamInputLimit to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 10000, "Expected integer to be max 10000")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.DescribeStreamInputLimit(integer)
	asserts.AssertDescribeStreamInputLimit(integer)
	return integer
end

function asserts.AssertPositiveIntegerObject(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected PositiveIntegerObject to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 100000, "Expected integer to be max 100000")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.PositiveIntegerObject(integer)
	asserts.AssertPositiveIntegerObject(integer)
	return integer
end

function asserts.AssertBooleanObject(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected BooleanObject to be of type 'boolean'")
end

function M.BooleanObject(boolean)
	asserts.AssertBooleanObject(boolean)
	return boolean
end

function asserts.AssertTagMap(map)
	assert(map)
	assert(type(map) == "table", "Expected TagMap to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertTagKey(k)
		asserts.AssertTagValue(v)
	end
end

function M.TagMap(map)
	asserts.AssertTagMap(map)
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

function asserts.AssertData(blob)
	assert(blob)
	assert(type(blob) == "string", "Expected Data to be of type 'string'")
	assert(#blob <= 1048576, "Expected blob to be max 1048576")
end

function M.Data(blob)
	asserts.AssertData(blob)
	return blob
end

function asserts.AssertTagKeyList(list)
	assert(list)
	assert(type(list) == "table", "Expected TagKeyList to be of type ''table")
	assert(#list <= 50, "Expected list to be contain 50 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertTagKey(v)
	end
end

--  
-- List of TagKey objects
function M.TagKeyList(list)
	asserts.AssertTagKeyList(list)
	return list
end

function asserts.AssertShardList(list)
	assert(list)
	assert(type(list) == "table", "Expected ShardList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertShard(v)
	end
end

--  
-- List of Shard objects
function M.ShardList(list)
	asserts.AssertShardList(list)
	return list
end

function asserts.AssertStreamNameList(list)
	assert(list)
	assert(type(list) == "table", "Expected StreamNameList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertStreamName(v)
	end
end

--  
-- List of StreamName objects
function M.StreamNameList(list)
	asserts.AssertStreamNameList(list)
	return list
end

function asserts.AssertEnhancedMonitoringList(list)
	assert(list)
	assert(type(list) == "table", "Expected EnhancedMonitoringList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertEnhancedMetrics(v)
	end
end

--  
-- List of EnhancedMetrics objects
function M.EnhancedMonitoringList(list)
	asserts.AssertEnhancedMonitoringList(list)
	return list
end

function asserts.AssertPutRecordsRequestEntryList(list)
	assert(list)
	assert(type(list) == "table", "Expected PutRecordsRequestEntryList to be of type ''table")
	assert(#list <= 500, "Expected list to be contain 500 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertPutRecordsRequestEntry(v)
	end
end

--  
-- List of PutRecordsRequestEntry objects
function M.PutRecordsRequestEntryList(list)
	asserts.AssertPutRecordsRequestEntryList(list)
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

function asserts.AssertPutRecordsResultEntryList(list)
	assert(list)
	assert(type(list) == "table", "Expected PutRecordsResultEntryList to be of type ''table")
	assert(#list <= 500, "Expected list to be contain 500 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertPutRecordsResultEntry(v)
	end
end

--  
-- List of PutRecordsResultEntry objects
function M.PutRecordsResultEntryList(list)
	asserts.AssertPutRecordsResultEntryList(list)
	return list
end

function asserts.AssertMetricsNameList(list)
	assert(list)
	assert(type(list) == "table", "Expected MetricsNameList to be of type ''table")
	assert(#list <= 7, "Expected list to be contain 7 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertMetricsName(v)
	end
end

--  
-- List of MetricsName objects
function M.MetricsNameList(list)
	asserts.AssertMetricsNameList(list)
	return list
end

function asserts.AssertConsumerList(list)
	assert(list)
	assert(type(list) == "table", "Expected ConsumerList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertConsumer(v)
	end
end

--  
-- List of Consumer objects
function M.ConsumerList(list)
	asserts.AssertConsumerList(list)
	return list
end

function asserts.AssertTagList(list)
	assert(list)
	assert(type(list) == "table", "Expected TagList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTag(v)
	end
end

--  
-- List of Tag objects
function M.TagList(list)
	asserts.AssertTagList(list)
	return list
end


local content_type = require "aws-sdk.core.content_type"
local request_headers = require "aws-sdk.core.request_headers"
local request_handlers = require "aws-sdk.core.request_handlers"

local settings = {}


local function endpoint_for_region(region, use_dualstack)
	if not use_dualstack then
		if region == "us-east-1" then
			return "kinesis.amazonaws.com"
		end
	end
	local ss = { "kinesis" }
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
--- Call IncreaseStreamRetentionPeriod asynchronously, invoking a callback when done
-- @param IncreaseStreamRetentionPeriodInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.IncreaseStreamRetentionPeriodAsync(IncreaseStreamRetentionPeriodInput, cb)
	assert(IncreaseStreamRetentionPeriodInput, "You must provide a IncreaseStreamRetentionPeriodInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Kinesis_20131202.IncreaseStreamRetentionPeriod",
	}
	for header,value in pairs(IncreaseStreamRetentionPeriodInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", IncreaseStreamRetentionPeriodInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call IncreaseStreamRetentionPeriod synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param IncreaseStreamRetentionPeriodInput
-- @return response
-- @return error_type
-- @return error_message
function M.IncreaseStreamRetentionPeriodSync(IncreaseStreamRetentionPeriodInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.IncreaseStreamRetentionPeriodAsync(IncreaseStreamRetentionPeriodInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetShardIterator asynchronously, invoking a callback when done
-- @param GetShardIteratorInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetShardIteratorAsync(GetShardIteratorInput, cb)
	assert(GetShardIteratorInput, "You must provide a GetShardIteratorInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Kinesis_20131202.GetShardIterator",
	}
	for header,value in pairs(GetShardIteratorInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetShardIteratorInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetShardIterator synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetShardIteratorInput
-- @return response
-- @return error_type
-- @return error_message
function M.GetShardIteratorSync(GetShardIteratorInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetShardIteratorAsync(GetShardIteratorInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AddTagsToStream asynchronously, invoking a callback when done
-- @param AddTagsToStreamInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AddTagsToStreamAsync(AddTagsToStreamInput, cb)
	assert(AddTagsToStreamInput, "You must provide a AddTagsToStreamInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Kinesis_20131202.AddTagsToStream",
	}
	for header,value in pairs(AddTagsToStreamInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", AddTagsToStreamInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AddTagsToStream synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AddTagsToStreamInput
-- @return response
-- @return error_type
-- @return error_message
function M.AddTagsToStreamSync(AddTagsToStreamInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AddTagsToStreamAsync(AddTagsToStreamInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DisableEnhancedMonitoring asynchronously, invoking a callback when done
-- @param DisableEnhancedMonitoringInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DisableEnhancedMonitoringAsync(DisableEnhancedMonitoringInput, cb)
	assert(DisableEnhancedMonitoringInput, "You must provide a DisableEnhancedMonitoringInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Kinesis_20131202.DisableEnhancedMonitoring",
	}
	for header,value in pairs(DisableEnhancedMonitoringInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DisableEnhancedMonitoringInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DisableEnhancedMonitoring synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DisableEnhancedMonitoringInput
-- @return response
-- @return error_type
-- @return error_message
function M.DisableEnhancedMonitoringSync(DisableEnhancedMonitoringInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DisableEnhancedMonitoringAsync(DisableEnhancedMonitoringInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DecreaseStreamRetentionPeriod asynchronously, invoking a callback when done
-- @param DecreaseStreamRetentionPeriodInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DecreaseStreamRetentionPeriodAsync(DecreaseStreamRetentionPeriodInput, cb)
	assert(DecreaseStreamRetentionPeriodInput, "You must provide a DecreaseStreamRetentionPeriodInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Kinesis_20131202.DecreaseStreamRetentionPeriod",
	}
	for header,value in pairs(DecreaseStreamRetentionPeriodInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DecreaseStreamRetentionPeriodInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DecreaseStreamRetentionPeriod synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DecreaseStreamRetentionPeriodInput
-- @return response
-- @return error_type
-- @return error_message
function M.DecreaseStreamRetentionPeriodSync(DecreaseStreamRetentionPeriodInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DecreaseStreamRetentionPeriodAsync(DecreaseStreamRetentionPeriodInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeLimits asynchronously, invoking a callback when done
-- @param DescribeLimitsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeLimitsAsync(DescribeLimitsInput, cb)
	assert(DescribeLimitsInput, "You must provide a DescribeLimitsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Kinesis_20131202.DescribeLimits",
	}
	for header,value in pairs(DescribeLimitsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeLimitsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeLimits synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeLimitsInput
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeLimitsSync(DescribeLimitsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeLimitsAsync(DescribeLimitsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListShards asynchronously, invoking a callback when done
-- @param ListShardsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListShardsAsync(ListShardsInput, cb)
	assert(ListShardsInput, "You must provide a ListShardsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Kinesis_20131202.ListShards",
	}
	for header,value in pairs(ListShardsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListShardsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListShards synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListShardsInput
-- @return response
-- @return error_type
-- @return error_message
function M.ListShardsSync(ListShardsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListShardsAsync(ListShardsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListStreams asynchronously, invoking a callback when done
-- @param ListStreamsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListStreamsAsync(ListStreamsInput, cb)
	assert(ListStreamsInput, "You must provide a ListStreamsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Kinesis_20131202.ListStreams",
	}
	for header,value in pairs(ListStreamsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListStreamsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListStreams synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListStreamsInput
-- @return response
-- @return error_type
-- @return error_message
function M.ListStreamsSync(ListStreamsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListStreamsAsync(ListStreamsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeregisterStreamConsumer asynchronously, invoking a callback when done
-- @param DeregisterStreamConsumerInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeregisterStreamConsumerAsync(DeregisterStreamConsumerInput, cb)
	assert(DeregisterStreamConsumerInput, "You must provide a DeregisterStreamConsumerInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Kinesis_20131202.DeregisterStreamConsumer",
	}
	for header,value in pairs(DeregisterStreamConsumerInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeregisterStreamConsumerInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeregisterStreamConsumer synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeregisterStreamConsumerInput
-- @return response
-- @return error_type
-- @return error_message
function M.DeregisterStreamConsumerSync(DeregisterStreamConsumerInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeregisterStreamConsumerAsync(DeregisterStreamConsumerInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListStreamConsumers asynchronously, invoking a callback when done
-- @param ListStreamConsumersInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListStreamConsumersAsync(ListStreamConsumersInput, cb)
	assert(ListStreamConsumersInput, "You must provide a ListStreamConsumersInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Kinesis_20131202.ListStreamConsumers",
	}
	for header,value in pairs(ListStreamConsumersInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListStreamConsumersInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListStreamConsumers synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListStreamConsumersInput
-- @return response
-- @return error_type
-- @return error_message
function M.ListStreamConsumersSync(ListStreamConsumersInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListStreamConsumersAsync(ListStreamConsumersInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateShardCount asynchronously, invoking a callback when done
-- @param UpdateShardCountInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateShardCountAsync(UpdateShardCountInput, cb)
	assert(UpdateShardCountInput, "You must provide a UpdateShardCountInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Kinesis_20131202.UpdateShardCount",
	}
	for header,value in pairs(UpdateShardCountInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateShardCountInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateShardCount synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateShardCountInput
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateShardCountSync(UpdateShardCountInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateShardCountAsync(UpdateShardCountInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeStreamSummary asynchronously, invoking a callback when done
-- @param DescribeStreamSummaryInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeStreamSummaryAsync(DescribeStreamSummaryInput, cb)
	assert(DescribeStreamSummaryInput, "You must provide a DescribeStreamSummaryInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Kinesis_20131202.DescribeStreamSummary",
	}
	for header,value in pairs(DescribeStreamSummaryInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeStreamSummaryInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeStreamSummary synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeStreamSummaryInput
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeStreamSummarySync(DescribeStreamSummaryInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeStreamSummaryAsync(DescribeStreamSummaryInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call StartStreamEncryption asynchronously, invoking a callback when done
-- @param StartStreamEncryptionInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.StartStreamEncryptionAsync(StartStreamEncryptionInput, cb)
	assert(StartStreamEncryptionInput, "You must provide a StartStreamEncryptionInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Kinesis_20131202.StartStreamEncryption",
	}
	for header,value in pairs(StartStreamEncryptionInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", StartStreamEncryptionInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call StartStreamEncryption synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StartStreamEncryptionInput
-- @return response
-- @return error_type
-- @return error_message
function M.StartStreamEncryptionSync(StartStreamEncryptionInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StartStreamEncryptionAsync(StartStreamEncryptionInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeStreamConsumer asynchronously, invoking a callback when done
-- @param DescribeStreamConsumerInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeStreamConsumerAsync(DescribeStreamConsumerInput, cb)
	assert(DescribeStreamConsumerInput, "You must provide a DescribeStreamConsumerInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Kinesis_20131202.DescribeStreamConsumer",
	}
	for header,value in pairs(DescribeStreamConsumerInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeStreamConsumerInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeStreamConsumer synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeStreamConsumerInput
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeStreamConsumerSync(DescribeStreamConsumerInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeStreamConsumerAsync(DescribeStreamConsumerInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call SplitShard asynchronously, invoking a callback when done
-- @param SplitShardInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.SplitShardAsync(SplitShardInput, cb)
	assert(SplitShardInput, "You must provide a SplitShardInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Kinesis_20131202.SplitShard",
	}
	for header,value in pairs(SplitShardInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", SplitShardInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call SplitShard synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SplitShardInput
-- @return response
-- @return error_type
-- @return error_message
function M.SplitShardSync(SplitShardInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SplitShardAsync(SplitShardInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeStream asynchronously, invoking a callback when done
-- @param DescribeStreamInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeStreamAsync(DescribeStreamInput, cb)
	assert(DescribeStreamInput, "You must provide a DescribeStreamInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Kinesis_20131202.DescribeStream",
	}
	for header,value in pairs(DescribeStreamInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeStreamInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeStream synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeStreamInput
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeStreamSync(DescribeStreamInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeStreamAsync(DescribeStreamInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateStream asynchronously, invoking a callback when done
-- @param CreateStreamInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateStreamAsync(CreateStreamInput, cb)
	assert(CreateStreamInput, "You must provide a CreateStreamInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Kinesis_20131202.CreateStream",
	}
	for header,value in pairs(CreateStreamInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateStreamInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateStream synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateStreamInput
-- @return response
-- @return error_type
-- @return error_message
function M.CreateStreamSync(CreateStreamInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateStreamAsync(CreateStreamInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call RegisterStreamConsumer asynchronously, invoking a callback when done
-- @param RegisterStreamConsumerInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.RegisterStreamConsumerAsync(RegisterStreamConsumerInput, cb)
	assert(RegisterStreamConsumerInput, "You must provide a RegisterStreamConsumerInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Kinesis_20131202.RegisterStreamConsumer",
	}
	for header,value in pairs(RegisterStreamConsumerInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", RegisterStreamConsumerInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RegisterStreamConsumer synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RegisterStreamConsumerInput
-- @return response
-- @return error_type
-- @return error_message
function M.RegisterStreamConsumerSync(RegisterStreamConsumerInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RegisterStreamConsumerAsync(RegisterStreamConsumerInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call EnableEnhancedMonitoring asynchronously, invoking a callback when done
-- @param EnableEnhancedMonitoringInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.EnableEnhancedMonitoringAsync(EnableEnhancedMonitoringInput, cb)
	assert(EnableEnhancedMonitoringInput, "You must provide a EnableEnhancedMonitoringInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Kinesis_20131202.EnableEnhancedMonitoring",
	}
	for header,value in pairs(EnableEnhancedMonitoringInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", EnableEnhancedMonitoringInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call EnableEnhancedMonitoring synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param EnableEnhancedMonitoringInput
-- @return response
-- @return error_type
-- @return error_message
function M.EnableEnhancedMonitoringSync(EnableEnhancedMonitoringInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.EnableEnhancedMonitoringAsync(EnableEnhancedMonitoringInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteStream asynchronously, invoking a callback when done
-- @param DeleteStreamInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteStreamAsync(DeleteStreamInput, cb)
	assert(DeleteStreamInput, "You must provide a DeleteStreamInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Kinesis_20131202.DeleteStream",
	}
	for header,value in pairs(DeleteStreamInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteStreamInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteStream synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteStreamInput
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteStreamSync(DeleteStreamInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteStreamAsync(DeleteStreamInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call RemoveTagsFromStream asynchronously, invoking a callback when done
-- @param RemoveTagsFromStreamInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.RemoveTagsFromStreamAsync(RemoveTagsFromStreamInput, cb)
	assert(RemoveTagsFromStreamInput, "You must provide a RemoveTagsFromStreamInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Kinesis_20131202.RemoveTagsFromStream",
	}
	for header,value in pairs(RemoveTagsFromStreamInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", RemoveTagsFromStreamInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RemoveTagsFromStream synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RemoveTagsFromStreamInput
-- @return response
-- @return error_type
-- @return error_message
function M.RemoveTagsFromStreamSync(RemoveTagsFromStreamInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RemoveTagsFromStreamAsync(RemoveTagsFromStreamInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetRecords asynchronously, invoking a callback when done
-- @param GetRecordsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetRecordsAsync(GetRecordsInput, cb)
	assert(GetRecordsInput, "You must provide a GetRecordsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Kinesis_20131202.GetRecords",
	}
	for header,value in pairs(GetRecordsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetRecordsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetRecords synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetRecordsInput
-- @return response
-- @return error_type
-- @return error_message
function M.GetRecordsSync(GetRecordsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetRecordsAsync(GetRecordsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListTagsForStream asynchronously, invoking a callback when done
-- @param ListTagsForStreamInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListTagsForStreamAsync(ListTagsForStreamInput, cb)
	assert(ListTagsForStreamInput, "You must provide a ListTagsForStreamInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Kinesis_20131202.ListTagsForStream",
	}
	for header,value in pairs(ListTagsForStreamInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListTagsForStreamInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListTagsForStream synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListTagsForStreamInput
-- @return response
-- @return error_type
-- @return error_message
function M.ListTagsForStreamSync(ListTagsForStreamInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListTagsForStreamAsync(ListTagsForStreamInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PutRecords asynchronously, invoking a callback when done
-- @param PutRecordsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PutRecordsAsync(PutRecordsInput, cb)
	assert(PutRecordsInput, "You must provide a PutRecordsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Kinesis_20131202.PutRecords",
	}
	for header,value in pairs(PutRecordsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", PutRecordsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutRecords synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutRecordsInput
-- @return response
-- @return error_type
-- @return error_message
function M.PutRecordsSync(PutRecordsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutRecordsAsync(PutRecordsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PutRecord asynchronously, invoking a callback when done
-- @param PutRecordInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PutRecordAsync(PutRecordInput, cb)
	assert(PutRecordInput, "You must provide a PutRecordInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Kinesis_20131202.PutRecord",
	}
	for header,value in pairs(PutRecordInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", PutRecordInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutRecord synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutRecordInput
-- @return response
-- @return error_type
-- @return error_message
function M.PutRecordSync(PutRecordInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutRecordAsync(PutRecordInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call MergeShards asynchronously, invoking a callback when done
-- @param MergeShardsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.MergeShardsAsync(MergeShardsInput, cb)
	assert(MergeShardsInput, "You must provide a MergeShardsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Kinesis_20131202.MergeShards",
	}
	for header,value in pairs(MergeShardsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", MergeShardsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call MergeShards synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param MergeShardsInput
-- @return response
-- @return error_type
-- @return error_message
function M.MergeShardsSync(MergeShardsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.MergeShardsAsync(MergeShardsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call StopStreamEncryption asynchronously, invoking a callback when done
-- @param StopStreamEncryptionInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.StopStreamEncryptionAsync(StopStreamEncryptionInput, cb)
	assert(StopStreamEncryptionInput, "You must provide a StopStreamEncryptionInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Kinesis_20131202.StopStreamEncryption",
	}
	for header,value in pairs(StopStreamEncryptionInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", StopStreamEncryptionInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call StopStreamEncryption synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StopStreamEncryptionInput
-- @return response
-- @return error_type
-- @return error_message
function M.StopStreamEncryptionSync(StopStreamEncryptionInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StopStreamEncryptionAsync(StopStreamEncryptionInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
