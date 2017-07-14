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

local EnhancedMonitoringOutput_keys = { "StreamName" = true, "CurrentShardLevelMetrics" = true, "DesiredShardLevelMetrics" = true, nil }

function M.AssertEnhancedMonitoringOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EnhancedMonitoringOutput to be of type 'table'")
	if struct["StreamName"] then M.AssertStreamName(struct["StreamName"]) end
	if struct["CurrentShardLevelMetrics"] then M.AssertMetricsNameList(struct["CurrentShardLevelMetrics"]) end
	if struct["DesiredShardLevelMetrics"] then M.AssertMetricsNameList(struct["DesiredShardLevelMetrics"]) end
	for k,_ in pairs(struct) do
		assert(EnhancedMonitoringOutput_keys[k], "EnhancedMonitoringOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EnhancedMonitoringOutput
-- <p>Represents the output for <a>EnableEnhancedMonitoring</a> and <a>DisableEnhancedMonitoring</a>.</p>
-- @param StreamName [StreamName] <p>The name of the Amazon Kinesis stream.</p>
-- @param CurrentShardLevelMetrics [MetricsNameList] <p>Represents the current state of the metrics that are in the enhanced state before the operation.</p>
-- @param DesiredShardLevelMetrics [MetricsNameList] <p>Represents the list of all the metrics that would be in the enhanced state after the operation.</p>
function M.EnhancedMonitoringOutput(StreamName, CurrentShardLevelMetrics, DesiredShardLevelMetrics, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EnhancedMonitoringOutput")
	local t = { 
		["StreamName"] = StreamName,
		["CurrentShardLevelMetrics"] = CurrentShardLevelMetrics,
		["DesiredShardLevelMetrics"] = DesiredShardLevelMetrics,
	}
	M.AssertEnhancedMonitoringOutput(t)
	return t
end

local UpdateShardCountInput_keys = { "TargetShardCount" = true, "StreamName" = true, "ScalingType" = true, nil }

function M.AssertUpdateShardCountInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateShardCountInput to be of type 'table'")
	assert(struct["StreamName"], "Expected key StreamName to exist in table")
	assert(struct["TargetShardCount"], "Expected key TargetShardCount to exist in table")
	assert(struct["ScalingType"], "Expected key ScalingType to exist in table")
	if struct["TargetShardCount"] then M.AssertPositiveIntegerObject(struct["TargetShardCount"]) end
	if struct["StreamName"] then M.AssertStreamName(struct["StreamName"]) end
	if struct["ScalingType"] then M.AssertScalingType(struct["ScalingType"]) end
	for k,_ in pairs(struct) do
		assert(UpdateShardCountInput_keys[k], "UpdateShardCountInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateShardCountInput
--  
-- @param TargetShardCount [PositiveIntegerObject] <p>The new number of shards.</p>
-- @param StreamName [StreamName] <p>The name of the stream.</p>
-- @param ScalingType [ScalingType] <p>The scaling type. Uniform scaling creates shards of equal size.</p>
-- Required parameter: StreamName
-- Required parameter: TargetShardCount
-- Required parameter: ScalingType
function M.UpdateShardCountInput(TargetShardCount, StreamName, ScalingType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateShardCountInput")
	local t = { 
		["TargetShardCount"] = TargetShardCount,
		["StreamName"] = StreamName,
		["ScalingType"] = ScalingType,
	}
	M.AssertUpdateShardCountInput(t)
	return t
end

local PutRecordsInput_keys = { "Records" = true, "StreamName" = true, nil }

function M.AssertPutRecordsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutRecordsInput to be of type 'table'")
	assert(struct["Records"], "Expected key Records to exist in table")
	assert(struct["StreamName"], "Expected key StreamName to exist in table")
	if struct["Records"] then M.AssertPutRecordsRequestEntryList(struct["Records"]) end
	if struct["StreamName"] then M.AssertStreamName(struct["StreamName"]) end
	for k,_ in pairs(struct) do
		assert(PutRecordsInput_keys[k], "PutRecordsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutRecordsInput
-- <p>A <code>PutRecords</code> request.</p>
-- @param Records [PutRecordsRequestEntryList] <p>The records associated with the request.</p>
-- @param StreamName [StreamName] <p>The stream name associated with the request.</p>
-- Required parameter: Records
-- Required parameter: StreamName
function M.PutRecordsInput(Records, StreamName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutRecordsInput")
	local t = { 
		["Records"] = Records,
		["StreamName"] = StreamName,
	}
	M.AssertPutRecordsInput(t)
	return t
end

local SplitShardInput_keys = { "ShardToSplit" = true, "StreamName" = true, "NewStartingHashKey" = true, nil }

function M.AssertSplitShardInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SplitShardInput to be of type 'table'")
	assert(struct["StreamName"], "Expected key StreamName to exist in table")
	assert(struct["ShardToSplit"], "Expected key ShardToSplit to exist in table")
	assert(struct["NewStartingHashKey"], "Expected key NewStartingHashKey to exist in table")
	if struct["ShardToSplit"] then M.AssertShardId(struct["ShardToSplit"]) end
	if struct["StreamName"] then M.AssertStreamName(struct["StreamName"]) end
	if struct["NewStartingHashKey"] then M.AssertHashKey(struct["NewStartingHashKey"]) end
	for k,_ in pairs(struct) do
		assert(SplitShardInput_keys[k], "SplitShardInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SplitShardInput
-- <p>Represents the input for <code>SplitShard</code>.</p>
-- @param ShardToSplit [ShardId] <p>The shard ID of the shard to split.</p>
-- @param StreamName [StreamName] <p>The name of the stream for the shard split.</p>
-- @param NewStartingHashKey [HashKey] <p>A hash key value for the starting hash key of one of the child shards created by the split. The hash key range for a given shard constitutes a set of ordered contiguous positive integers. The value for <code>NewStartingHashKey</code> must be in the range of hash keys being mapped into the shard. The <code>NewStartingHashKey</code> hash key value and all higher hash key values in hash key range are distributed to one of the child shards. All the lower hash key values in the range are distributed to the other child shard.</p>
-- Required parameter: StreamName
-- Required parameter: ShardToSplit
-- Required parameter: NewStartingHashKey
function M.SplitShardInput(ShardToSplit, StreamName, NewStartingHashKey, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SplitShardInput")
	local t = { 
		["ShardToSplit"] = ShardToSplit,
		["StreamName"] = StreamName,
		["NewStartingHashKey"] = NewStartingHashKey,
	}
	M.AssertSplitShardInput(t)
	return t
end

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
-- <p>The requested resource exceeds the maximum number allowed, or the number of concurrent stream requests exceeds the maximum number allowed (5).</p>
-- @param message [ErrorMessage] <p>A message that provides information about the error.</p>
function M.LimitExceededException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LimitExceededException")
	local t = { 
		["message"] = message,
	}
	M.AssertLimitExceededException(t)
	return t
end

local DecreaseStreamRetentionPeriodInput_keys = { "RetentionPeriodHours" = true, "StreamName" = true, nil }

function M.AssertDecreaseStreamRetentionPeriodInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DecreaseStreamRetentionPeriodInput to be of type 'table'")
	assert(struct["StreamName"], "Expected key StreamName to exist in table")
	assert(struct["RetentionPeriodHours"], "Expected key RetentionPeriodHours to exist in table")
	if struct["RetentionPeriodHours"] then M.AssertPositiveIntegerObject(struct["RetentionPeriodHours"]) end
	if struct["StreamName"] then M.AssertStreamName(struct["StreamName"]) end
	for k,_ in pairs(struct) do
		assert(DecreaseStreamRetentionPeriodInput_keys[k], "DecreaseStreamRetentionPeriodInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DecreaseStreamRetentionPeriodInput
-- <p>Represents the input for <a>DecreaseStreamRetentionPeriod</a>.</p>
-- @param RetentionPeriodHours [PositiveIntegerObject] <p>The new retention period of the stream, in hours. Must be less than the current retention period.</p>
-- @param StreamName [StreamName] <p>The name of the stream to modify.</p>
-- Required parameter: StreamName
-- Required parameter: RetentionPeriodHours
function M.DecreaseStreamRetentionPeriodInput(RetentionPeriodHours, StreamName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DecreaseStreamRetentionPeriodInput")
	local t = { 
		["RetentionPeriodHours"] = RetentionPeriodHours,
		["StreamName"] = StreamName,
	}
	M.AssertDecreaseStreamRetentionPeriodInput(t)
	return t
end

local DescribeLimitsOutput_keys = { "OpenShardCount" = true, "ShardLimit" = true, nil }

function M.AssertDescribeLimitsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeLimitsOutput to be of type 'table'")
	assert(struct["ShardLimit"], "Expected key ShardLimit to exist in table")
	assert(struct["OpenShardCount"], "Expected key OpenShardCount to exist in table")
	if struct["OpenShardCount"] then M.AssertShardCountObject(struct["OpenShardCount"]) end
	if struct["ShardLimit"] then M.AssertShardCountObject(struct["ShardLimit"]) end
	for k,_ in pairs(struct) do
		assert(DescribeLimitsOutput_keys[k], "DescribeLimitsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeLimitsOutput
--  
-- @param OpenShardCount [ShardCountObject] <p>The number of open shards.</p>
-- @param ShardLimit [ShardCountObject] <p>The maximum number of shards.</p>
-- Required parameter: ShardLimit
-- Required parameter: OpenShardCount
function M.DescribeLimitsOutput(OpenShardCount, ShardLimit, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeLimitsOutput")
	local t = { 
		["OpenShardCount"] = OpenShardCount,
		["ShardLimit"] = ShardLimit,
	}
	M.AssertDescribeLimitsOutput(t)
	return t
end

local ListStreamsInput_keys = { "Limit" = true, "ExclusiveStartStreamName" = true, nil }

function M.AssertListStreamsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListStreamsInput to be of type 'table'")
	if struct["Limit"] then M.AssertListStreamsInputLimit(struct["Limit"]) end
	if struct["ExclusiveStartStreamName"] then M.AssertStreamName(struct["ExclusiveStartStreamName"]) end
	for k,_ in pairs(struct) do
		assert(ListStreamsInput_keys[k], "ListStreamsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListStreamsInput
-- <p>Represents the input for <code>ListStreams</code>.</p>
-- @param Limit [ListStreamsInputLimit] <p>The maximum number of streams to list.</p>
-- @param ExclusiveStartStreamName [StreamName] <p>The name of the stream to start the list with.</p>
function M.ListStreamsInput(Limit, ExclusiveStartStreamName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListStreamsInput")
	local t = { 
		["Limit"] = Limit,
		["ExclusiveStartStreamName"] = ExclusiveStartStreamName,
	}
	M.AssertListStreamsInput(t)
	return t
end

local AddTagsToStreamInput_keys = { "StreamName" = true, "Tags" = true, nil }

function M.AssertAddTagsToStreamInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddTagsToStreamInput to be of type 'table'")
	assert(struct["StreamName"], "Expected key StreamName to exist in table")
	assert(struct["Tags"], "Expected key Tags to exist in table")
	if struct["StreamName"] then M.AssertStreamName(struct["StreamName"]) end
	if struct["Tags"] then M.AssertTagMap(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(AddTagsToStreamInput_keys[k], "AddTagsToStreamInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddTagsToStreamInput
-- <p>Represents the input for <code>AddTagsToStream</code>.</p>
-- @param StreamName [StreamName] <p>The name of the stream.</p>
-- @param Tags [TagMap] <p>The set of key-value pairs to use to create the tags.</p>
-- Required parameter: StreamName
-- Required parameter: Tags
function M.AddTagsToStreamInput(StreamName, Tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddTagsToStreamInput")
	local t = { 
		["StreamName"] = StreamName,
		["Tags"] = Tags,
	}
	M.AssertAddTagsToStreamInput(t)
	return t
end

local HashKeyRange_keys = { "EndingHashKey" = true, "StartingHashKey" = true, nil }

function M.AssertHashKeyRange(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HashKeyRange to be of type 'table'")
	assert(struct["StartingHashKey"], "Expected key StartingHashKey to exist in table")
	assert(struct["EndingHashKey"], "Expected key EndingHashKey to exist in table")
	if struct["EndingHashKey"] then M.AssertHashKey(struct["EndingHashKey"]) end
	if struct["StartingHashKey"] then M.AssertHashKey(struct["StartingHashKey"]) end
	for k,_ in pairs(struct) do
		assert(HashKeyRange_keys[k], "HashKeyRange contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HashKeyRange
-- <p>The range of possible hash key values for the shard, which is a set of ordered contiguous positive integers.</p>
-- @param EndingHashKey [HashKey] <p>The ending hash key of the hash key range.</p>
-- @param StartingHashKey [HashKey] <p>The starting hash key of the hash key range.</p>
-- Required parameter: StartingHashKey
-- Required parameter: EndingHashKey
function M.HashKeyRange(EndingHashKey, StartingHashKey, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating HashKeyRange")
	local t = { 
		["EndingHashKey"] = EndingHashKey,
		["StartingHashKey"] = StartingHashKey,
	}
	M.AssertHashKeyRange(t)
	return t
end

local ResourceInUseException_keys = { "message" = true, nil }

function M.AssertResourceInUseException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceInUseException to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(ResourceInUseException_keys[k], "ResourceInUseException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceInUseException
-- <p>The resource is not available for this operation. For successful operation, the resource needs to be in the <code>ACTIVE</code> state.</p>
-- @param message [ErrorMessage] <p>A message that provides information about the error.</p>
function M.ResourceInUseException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceInUseException")
	local t = { 
		["message"] = message,
	}
	M.AssertResourceInUseException(t)
	return t
end

local DisableEnhancedMonitoringInput_keys = { "ShardLevelMetrics" = true, "StreamName" = true, nil }

function M.AssertDisableEnhancedMonitoringInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisableEnhancedMonitoringInput to be of type 'table'")
	assert(struct["StreamName"], "Expected key StreamName to exist in table")
	assert(struct["ShardLevelMetrics"], "Expected key ShardLevelMetrics to exist in table")
	if struct["ShardLevelMetrics"] then M.AssertMetricsNameList(struct["ShardLevelMetrics"]) end
	if struct["StreamName"] then M.AssertStreamName(struct["StreamName"]) end
	for k,_ in pairs(struct) do
		assert(DisableEnhancedMonitoringInput_keys[k], "DisableEnhancedMonitoringInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisableEnhancedMonitoringInput
-- <p>Represents the input for <a>DisableEnhancedMonitoring</a>.</p>
-- @param ShardLevelMetrics [MetricsNameList] <p>List of shard-level metrics to disable.</p> <p>The following are the valid shard-level metrics. The value "<code>ALL</code>" disables every metric.</p> <ul> <li> <p> <code>IncomingBytes</code> </p> </li> <li> <p> <code>IncomingRecords</code> </p> </li> <li> <p> <code>OutgoingBytes</code> </p> </li> <li> <p> <code>OutgoingRecords</code> </p> </li> <li> <p> <code>WriteProvisionedThroughputExceeded</code> </p> </li> <li> <p> <code>ReadProvisionedThroughputExceeded</code> </p> </li> <li> <p> <code>IteratorAgeMilliseconds</code> </p> </li> <li> <p> <code>ALL</code> </p> </li> </ul> <p>For more information, see <a href="http://docs.aws.amazon.com/kinesis/latest/dev/monitoring-with-cloudwatch.html">Monitoring the Amazon Kinesis Streams Service with Amazon CloudWatch</a> in the <i>Amazon Kinesis Streams Developer Guide</i>.</p>
-- @param StreamName [StreamName] <p>The name of the Amazon Kinesis stream for which to disable enhanced monitoring.</p>
-- Required parameter: StreamName
-- Required parameter: ShardLevelMetrics
function M.DisableEnhancedMonitoringInput(ShardLevelMetrics, StreamName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DisableEnhancedMonitoringInput")
	local t = { 
		["ShardLevelMetrics"] = ShardLevelMetrics,
		["StreamName"] = StreamName,
	}
	M.AssertDisableEnhancedMonitoringInput(t)
	return t
end

local Tag_keys = { "Value" = true, "Key" = true, nil }

function M.AssertTag(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Tag to be of type 'table'")
	assert(struct["Key"], "Expected key Key to exist in table")
	if struct["Value"] then M.AssertTagValue(struct["Value"]) end
	if struct["Key"] then M.AssertTagKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(Tag_keys[k], "Tag contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Tag
-- <p>Metadata assigned to the stream, consisting of a key-value pair.</p>
-- @param Value [TagValue] <p>An optional string, typically used to describe or define the tag. Maximum length: 256 characters. Valid characters: Unicode letters, digits, white space, _ . / = + - % @</p>
-- @param Key [TagKey] <p>A unique identifier for the tag. Maximum length: 128 characters. Valid characters: Unicode letters, digits, white space, _ . / = + - % @</p>
-- Required parameter: Key
function M.Tag(Value, Key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Tag")
	local t = { 
		["Value"] = Value,
		["Key"] = Key,
	}
	M.AssertTag(t)
	return t
end

local PutRecordsRequestEntry_keys = { "PartitionKey" = true, "Data" = true, "ExplicitHashKey" = true, nil }

function M.AssertPutRecordsRequestEntry(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutRecordsRequestEntry to be of type 'table'")
	assert(struct["Data"], "Expected key Data to exist in table")
	assert(struct["PartitionKey"], "Expected key PartitionKey to exist in table")
	if struct["PartitionKey"] then M.AssertPartitionKey(struct["PartitionKey"]) end
	if struct["Data"] then M.AssertData(struct["Data"]) end
	if struct["ExplicitHashKey"] then M.AssertHashKey(struct["ExplicitHashKey"]) end
	for k,_ in pairs(struct) do
		assert(PutRecordsRequestEntry_keys[k], "PutRecordsRequestEntry contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutRecordsRequestEntry
-- <p>Represents the output for <code>PutRecords</code>.</p>
-- @param PartitionKey [PartitionKey] <p>Determines which shard in the stream the data record is assigned to. Partition keys are Unicode strings with a maximum length limit of 256 characters for each key. Amazon Kinesis uses the partition key as input to a hash function that maps the partition key and associated data to a specific shard. Specifically, an MD5 hash function is used to map partition keys to 128-bit integer values and to map associated data records to shards. As a result of this hashing mechanism, all data records with the same partition key map to the same shard within the stream.</p>
-- @param Data [Data] <p>The data blob to put into the record, which is base64-encoded when the blob is serialized. When the data blob (the payload before base64-encoding) is added to the partition key size, the total size must not exceed the maximum record size (1 MB).</p>
-- @param ExplicitHashKey [HashKey] <p>The hash value used to determine explicitly the shard that the data record is assigned to by overriding the partition key hash.</p>
-- Required parameter: Data
-- Required parameter: PartitionKey
function M.PutRecordsRequestEntry(PartitionKey, Data, ExplicitHashKey, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutRecordsRequestEntry")
	local t = { 
		["PartitionKey"] = PartitionKey,
		["Data"] = Data,
		["ExplicitHashKey"] = ExplicitHashKey,
	}
	M.AssertPutRecordsRequestEntry(t)
	return t
end

local MergeShardsInput_keys = { "StreamName" = true, "ShardToMerge" = true, "AdjacentShardToMerge" = true, nil }

function M.AssertMergeShardsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MergeShardsInput to be of type 'table'")
	assert(struct["StreamName"], "Expected key StreamName to exist in table")
	assert(struct["ShardToMerge"], "Expected key ShardToMerge to exist in table")
	assert(struct["AdjacentShardToMerge"], "Expected key AdjacentShardToMerge to exist in table")
	if struct["StreamName"] then M.AssertStreamName(struct["StreamName"]) end
	if struct["ShardToMerge"] then M.AssertShardId(struct["ShardToMerge"]) end
	if struct["AdjacentShardToMerge"] then M.AssertShardId(struct["AdjacentShardToMerge"]) end
	for k,_ in pairs(struct) do
		assert(MergeShardsInput_keys[k], "MergeShardsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MergeShardsInput
-- <p>Represents the input for <code>MergeShards</code>.</p>
-- @param StreamName [StreamName] <p>The name of the stream for the merge.</p>
-- @param ShardToMerge [ShardId] <p>The shard ID of the shard to combine with the adjacent shard for the merge.</p>
-- @param AdjacentShardToMerge [ShardId] <p>The shard ID of the adjacent shard for the merge.</p>
-- Required parameter: StreamName
-- Required parameter: ShardToMerge
-- Required parameter: AdjacentShardToMerge
function M.MergeShardsInput(StreamName, ShardToMerge, AdjacentShardToMerge, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MergeShardsInput")
	local t = { 
		["StreamName"] = StreamName,
		["ShardToMerge"] = ShardToMerge,
		["AdjacentShardToMerge"] = AdjacentShardToMerge,
	}
	M.AssertMergeShardsInput(t)
	return t
end

local DeleteStreamInput_keys = { "StreamName" = true, nil }

function M.AssertDeleteStreamInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteStreamInput to be of type 'table'")
	assert(struct["StreamName"], "Expected key StreamName to exist in table")
	if struct["StreamName"] then M.AssertStreamName(struct["StreamName"]) end
	for k,_ in pairs(struct) do
		assert(DeleteStreamInput_keys[k], "DeleteStreamInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteStreamInput
-- <p>Represents the input for <a>DeleteStream</a>.</p>
-- @param StreamName [StreamName] <p>The name of the stream to delete.</p>
-- Required parameter: StreamName
function M.DeleteStreamInput(StreamName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteStreamInput")
	local t = { 
		["StreamName"] = StreamName,
	}
	M.AssertDeleteStreamInput(t)
	return t
end

local Shard_keys = { "ShardId" = true, "HashKeyRange" = true, "ParentShardId" = true, "AdjacentParentShardId" = true, "SequenceNumberRange" = true, nil }

function M.AssertShard(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Shard to be of type 'table'")
	assert(struct["ShardId"], "Expected key ShardId to exist in table")
	assert(struct["HashKeyRange"], "Expected key HashKeyRange to exist in table")
	assert(struct["SequenceNumberRange"], "Expected key SequenceNumberRange to exist in table")
	if struct["ShardId"] then M.AssertShardId(struct["ShardId"]) end
	if struct["HashKeyRange"] then M.AssertHashKeyRange(struct["HashKeyRange"]) end
	if struct["ParentShardId"] then M.AssertShardId(struct["ParentShardId"]) end
	if struct["AdjacentParentShardId"] then M.AssertShardId(struct["AdjacentParentShardId"]) end
	if struct["SequenceNumberRange"] then M.AssertSequenceNumberRange(struct["SequenceNumberRange"]) end
	for k,_ in pairs(struct) do
		assert(Shard_keys[k], "Shard contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Shard
-- <p>A uniquely identified group of data records in an Amazon Kinesis stream.</p>
-- @param ShardId [ShardId] <p>The unique identifier of the shard within the stream.</p>
-- @param HashKeyRange [HashKeyRange] <p>The range of possible hash key values for the shard, which is a set of ordered contiguous positive integers.</p>
-- @param ParentShardId [ShardId] <p>The shard ID of the shard's parent.</p>
-- @param AdjacentParentShardId [ShardId] <p>The shard ID of the shard adjacent to the shard's parent.</p>
-- @param SequenceNumberRange [SequenceNumberRange] <p>The range of possible sequence numbers for the shard.</p>
-- Required parameter: ShardId
-- Required parameter: HashKeyRange
-- Required parameter: SequenceNumberRange
function M.Shard(ShardId, HashKeyRange, ParentShardId, AdjacentParentShardId, SequenceNumberRange, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Shard")
	local t = { 
		["ShardId"] = ShardId,
		["HashKeyRange"] = HashKeyRange,
		["ParentShardId"] = ParentShardId,
		["AdjacentParentShardId"] = AdjacentParentShardId,
		["SequenceNumberRange"] = SequenceNumberRange,
	}
	M.AssertShard(t)
	return t
end

local PutRecordsOutput_keys = { "FailedRecordCount" = true, "Records" = true, nil }

function M.AssertPutRecordsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutRecordsOutput to be of type 'table'")
	assert(struct["Records"], "Expected key Records to exist in table")
	if struct["FailedRecordCount"] then M.AssertPositiveIntegerObject(struct["FailedRecordCount"]) end
	if struct["Records"] then M.AssertPutRecordsResultEntryList(struct["Records"]) end
	for k,_ in pairs(struct) do
		assert(PutRecordsOutput_keys[k], "PutRecordsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutRecordsOutput
-- <p> <code>PutRecords</code> results.</p>
-- @param FailedRecordCount [PositiveIntegerObject] <p>The number of unsuccessfully processed records in a <code>PutRecords</code> request.</p>
-- @param Records [PutRecordsResultEntryList] <p>An array of successfully and unsuccessfully processed record results, correlated with the request by natural ordering. A record that is successfully added to a stream includes <code>SequenceNumber</code> and <code>ShardId</code> in the result. A record that fails to be added to a stream includes <code>ErrorCode</code> and <code>ErrorMessage</code> in the result.</p>
-- Required parameter: Records
function M.PutRecordsOutput(FailedRecordCount, Records, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutRecordsOutput")
	local t = { 
		["FailedRecordCount"] = FailedRecordCount,
		["Records"] = Records,
	}
	M.AssertPutRecordsOutput(t)
	return t
end

local PutRecordOutput_keys = { "ShardId" = true, "SequenceNumber" = true, nil }

function M.AssertPutRecordOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutRecordOutput to be of type 'table'")
	assert(struct["ShardId"], "Expected key ShardId to exist in table")
	assert(struct["SequenceNumber"], "Expected key SequenceNumber to exist in table")
	if struct["ShardId"] then M.AssertShardId(struct["ShardId"]) end
	if struct["SequenceNumber"] then M.AssertSequenceNumber(struct["SequenceNumber"]) end
	for k,_ in pairs(struct) do
		assert(PutRecordOutput_keys[k], "PutRecordOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutRecordOutput
-- <p>Represents the output for <code>PutRecord</code>.</p>
-- @param ShardId [ShardId] <p>The shard ID of the shard where the data record was placed.</p>
-- @param SequenceNumber [SequenceNumber] <p>The sequence number identifier that was assigned to the put data record. The sequence number for the record is unique across all records in the stream. A sequence number is the identifier associated with every record put into the stream.</p>
-- Required parameter: ShardId
-- Required parameter: SequenceNumber
function M.PutRecordOutput(ShardId, SequenceNumber, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutRecordOutput")
	local t = { 
		["ShardId"] = ShardId,
		["SequenceNumber"] = SequenceNumber,
	}
	M.AssertPutRecordOutput(t)
	return t
end

local PutRecordInput_keys = { "PartitionKey" = true, "SequenceNumberForOrdering" = true, "StreamName" = true, "Data" = true, "ExplicitHashKey" = true, nil }

function M.AssertPutRecordInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutRecordInput to be of type 'table'")
	assert(struct["StreamName"], "Expected key StreamName to exist in table")
	assert(struct["Data"], "Expected key Data to exist in table")
	assert(struct["PartitionKey"], "Expected key PartitionKey to exist in table")
	if struct["PartitionKey"] then M.AssertPartitionKey(struct["PartitionKey"]) end
	if struct["SequenceNumberForOrdering"] then M.AssertSequenceNumber(struct["SequenceNumberForOrdering"]) end
	if struct["StreamName"] then M.AssertStreamName(struct["StreamName"]) end
	if struct["Data"] then M.AssertData(struct["Data"]) end
	if struct["ExplicitHashKey"] then M.AssertHashKey(struct["ExplicitHashKey"]) end
	for k,_ in pairs(struct) do
		assert(PutRecordInput_keys[k], "PutRecordInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutRecordInput
-- <p>Represents the input for <code>PutRecord</code>.</p>
-- @param PartitionKey [PartitionKey] <p>Determines which shard in the stream the data record is assigned to. Partition keys are Unicode strings with a maximum length limit of 256 characters for each key. Amazon Kinesis uses the partition key as input to a hash function that maps the partition key and associated data to a specific shard. Specifically, an MD5 hash function is used to map partition keys to 128-bit integer values and to map associated data records to shards. As a result of this hashing mechanism, all data records with the same partition key map to the same shard within the stream.</p>
-- @param SequenceNumberForOrdering [SequenceNumber] <p>Guarantees strictly increasing sequence numbers, for puts from the same client and to the same partition key. Usage: set the <code>SequenceNumberForOrdering</code> of record <i>n</i> to the sequence number of record <i>n-1</i> (as returned in the result when putting record <i>n-1</i>). If this parameter is not set, records will be coarsely ordered based on arrival time.</p>
-- @param StreamName [StreamName] <p>The name of the stream to put the data record into.</p>
-- @param Data [Data] <p>The data blob to put into the record, which is base64-encoded when the blob is serialized. When the data blob (the payload before base64-encoding) is added to the partition key size, the total size must not exceed the maximum record size (1 MB).</p>
-- @param ExplicitHashKey [HashKey] <p>The hash value used to explicitly determine the shard the data record is assigned to by overriding the partition key hash.</p>
-- Required parameter: StreamName
-- Required parameter: Data
-- Required parameter: PartitionKey
function M.PutRecordInput(PartitionKey, SequenceNumberForOrdering, StreamName, Data, ExplicitHashKey, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutRecordInput")
	local t = { 
		["PartitionKey"] = PartitionKey,
		["SequenceNumberForOrdering"] = SequenceNumberForOrdering,
		["StreamName"] = StreamName,
		["Data"] = Data,
		["ExplicitHashKey"] = ExplicitHashKey,
	}
	M.AssertPutRecordInput(t)
	return t
end

local GetShardIteratorInput_keys = { "ShardId" = true, "Timestamp" = true, "StartingSequenceNumber" = true, "StreamName" = true, "ShardIteratorType" = true, nil }

function M.AssertGetShardIteratorInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetShardIteratorInput to be of type 'table'")
	assert(struct["StreamName"], "Expected key StreamName to exist in table")
	assert(struct["ShardId"], "Expected key ShardId to exist in table")
	assert(struct["ShardIteratorType"], "Expected key ShardIteratorType to exist in table")
	if struct["ShardId"] then M.AssertShardId(struct["ShardId"]) end
	if struct["Timestamp"] then M.AssertTimestamp(struct["Timestamp"]) end
	if struct["StartingSequenceNumber"] then M.AssertSequenceNumber(struct["StartingSequenceNumber"]) end
	if struct["StreamName"] then M.AssertStreamName(struct["StreamName"]) end
	if struct["ShardIteratorType"] then M.AssertShardIteratorType(struct["ShardIteratorType"]) end
	for k,_ in pairs(struct) do
		assert(GetShardIteratorInput_keys[k], "GetShardIteratorInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetShardIteratorInput
-- <p>Represents the input for <code>GetShardIterator</code>.</p>
-- @param ShardId [ShardId] <p>The shard ID of the Amazon Kinesis shard to get the iterator for.</p>
-- @param Timestamp [Timestamp] <p>The timestamp of the data record from which to start reading. Used with shard iterator type AT_TIMESTAMP. A timestamp is the Unix epoch date with precision in milliseconds. For example, <code>2016-04-04T19:58:46.480-00:00</code> or <code>1459799926.480</code>. If a record with this exact timestamp does not exist, the iterator returned is for the next (later) record. If the timestamp is older than the current trim horizon, the iterator returned is for the oldest untrimmed data record (TRIM_HORIZON).</p>
-- @param StartingSequenceNumber [SequenceNumber] <p>The sequence number of the data record in the shard from which to start reading. Used with shard iterator type AT_SEQUENCE_NUMBER and AFTER_SEQUENCE_NUMBER.</p>
-- @param StreamName [StreamName] <p>The name of the Amazon Kinesis stream.</p>
-- @param ShardIteratorType [ShardIteratorType] <p>Determines how the shard iterator is used to start reading data records from the shard.</p> <p>The following are the valid Amazon Kinesis shard iterator types:</p> <ul> <li> <p>AT_SEQUENCE_NUMBER - Start reading from the position denoted by a specific sequence number, provided in the value <code>StartingSequenceNumber</code>.</p> </li> <li> <p>AFTER_SEQUENCE_NUMBER - Start reading right after the position denoted by a specific sequence number, provided in the value <code>StartingSequenceNumber</code>.</p> </li> <li> <p>AT_TIMESTAMP - Start reading from the position denoted by a specific timestamp, provided in the value <code>Timestamp</code>.</p> </li> <li> <p>TRIM_HORIZON - Start reading at the last untrimmed record in the shard in the system, which is the oldest data record in the shard.</p> </li> <li> <p>LATEST - Start reading just after the most recent record in the shard, so that you always read the most recent data in the shard.</p> </li> </ul>
-- Required parameter: StreamName
-- Required parameter: ShardId
-- Required parameter: ShardIteratorType
function M.GetShardIteratorInput(ShardId, Timestamp, StartingSequenceNumber, StreamName, ShardIteratorType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetShardIteratorInput")
	local t = { 
		["ShardId"] = ShardId,
		["Timestamp"] = Timestamp,
		["StartingSequenceNumber"] = StartingSequenceNumber,
		["StreamName"] = StreamName,
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
-- <p>The provided iterator exceeds the maximum age allowed.</p>
-- @param message [ErrorMessage] <p>A message that provides information about the error.</p>
function M.ExpiredIteratorException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ExpiredIteratorException")
	local t = { 
		["message"] = message,
	}
	M.AssertExpiredIteratorException(t)
	return t
end

local SequenceNumberRange_keys = { "EndingSequenceNumber" = true, "StartingSequenceNumber" = true, nil }

function M.AssertSequenceNumberRange(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SequenceNumberRange to be of type 'table'")
	assert(struct["StartingSequenceNumber"], "Expected key StartingSequenceNumber to exist in table")
	if struct["EndingSequenceNumber"] then M.AssertSequenceNumber(struct["EndingSequenceNumber"]) end
	if struct["StartingSequenceNumber"] then M.AssertSequenceNumber(struct["StartingSequenceNumber"]) end
	for k,_ in pairs(struct) do
		assert(SequenceNumberRange_keys[k], "SequenceNumberRange contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SequenceNumberRange
-- <p>The range of possible sequence numbers for the shard.</p>
-- @param EndingSequenceNumber [SequenceNumber] <p>The ending sequence number for the range. Shards that are in the OPEN state have an ending sequence number of <code>null</code>.</p>
-- @param StartingSequenceNumber [SequenceNumber] <p>The starting sequence number for the range.</p>
-- Required parameter: StartingSequenceNumber
function M.SequenceNumberRange(EndingSequenceNumber, StartingSequenceNumber, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SequenceNumberRange")
	local t = { 
		["EndingSequenceNumber"] = EndingSequenceNumber,
		["StartingSequenceNumber"] = StartingSequenceNumber,
	}
	M.AssertSequenceNumberRange(t)
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
-- <p>Represents the output for <code>GetShardIterator</code>.</p>
-- @param ShardIterator [ShardIterator] <p>The position in the shard from which to start reading data records sequentially. A shard iterator specifies this position using the sequence number of a data record in a shard.</p>
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
	assert(struct["StreamDescription"], "Expected key StreamDescription to exist in table")
	if struct["StreamDescription"] then M.AssertStreamDescription(struct["StreamDescription"]) end
	for k,_ in pairs(struct) do
		assert(DescribeStreamOutput_keys[k], "DescribeStreamOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeStreamOutput
-- <p>Represents the output for <code>DescribeStream</code>.</p>
-- @param StreamDescription [StreamDescription] <p>The current status of the stream, the stream ARN, an array of shard objects that comprise the stream, and whether there are more shards available.</p>
-- Required parameter: StreamDescription
function M.DescribeStreamOutput(StreamDescription, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeStreamOutput")
	local t = { 
		["StreamDescription"] = StreamDescription,
	}
	M.AssertDescribeStreamOutput(t)
	return t
end

local Record_keys = { "Data" = true, "PartitionKey" = true, "ApproximateArrivalTimestamp" = true, "SequenceNumber" = true, nil }

function M.AssertRecord(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Record to be of type 'table'")
	assert(struct["SequenceNumber"], "Expected key SequenceNumber to exist in table")
	assert(struct["Data"], "Expected key Data to exist in table")
	assert(struct["PartitionKey"], "Expected key PartitionKey to exist in table")
	if struct["Data"] then M.AssertData(struct["Data"]) end
	if struct["PartitionKey"] then M.AssertPartitionKey(struct["PartitionKey"]) end
	if struct["ApproximateArrivalTimestamp"] then M.AssertTimestamp(struct["ApproximateArrivalTimestamp"]) end
	if struct["SequenceNumber"] then M.AssertSequenceNumber(struct["SequenceNumber"]) end
	for k,_ in pairs(struct) do
		assert(Record_keys[k], "Record contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Record
-- <p>The unit of data of the Amazon Kinesis stream, which is composed of a sequence number, a partition key, and a data blob.</p>
-- @param Data [Data] <p>The data blob. The data in the blob is both opaque and immutable to the Amazon Kinesis service, which does not inspect, interpret, or change the data in the blob in any way. When the data blob (the payload before base64-encoding) is added to the partition key size, the total size must not exceed the maximum record size (1 MB).</p>
-- @param PartitionKey [PartitionKey] <p>Identifies which shard in the stream the data record is assigned to.</p>
-- @param ApproximateArrivalTimestamp [Timestamp] <p>The approximate time that the record was inserted into the stream.</p>
-- @param SequenceNumber [SequenceNumber] <p>The unique identifier of the record in the stream.</p>
-- Required parameter: SequenceNumber
-- Required parameter: Data
-- Required parameter: PartitionKey
function M.Record(Data, PartitionKey, ApproximateArrivalTimestamp, SequenceNumber, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Record")
	local t = { 
		["Data"] = Data,
		["PartitionKey"] = PartitionKey,
		["ApproximateArrivalTimestamp"] = ApproximateArrivalTimestamp,
		["SequenceNumber"] = SequenceNumber,
	}
	M.AssertRecord(t)
	return t
end

local IncreaseStreamRetentionPeriodInput_keys = { "RetentionPeriodHours" = true, "StreamName" = true, nil }

function M.AssertIncreaseStreamRetentionPeriodInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IncreaseStreamRetentionPeriodInput to be of type 'table'")
	assert(struct["StreamName"], "Expected key StreamName to exist in table")
	assert(struct["RetentionPeriodHours"], "Expected key RetentionPeriodHours to exist in table")
	if struct["RetentionPeriodHours"] then M.AssertPositiveIntegerObject(struct["RetentionPeriodHours"]) end
	if struct["StreamName"] then M.AssertStreamName(struct["StreamName"]) end
	for k,_ in pairs(struct) do
		assert(IncreaseStreamRetentionPeriodInput_keys[k], "IncreaseStreamRetentionPeriodInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IncreaseStreamRetentionPeriodInput
-- <p>Represents the input for <a>IncreaseStreamRetentionPeriod</a>.</p>
-- @param RetentionPeriodHours [PositiveIntegerObject] <p>The new retention period of the stream, in hours. Must be more than the current retention period.</p>
-- @param StreamName [StreamName] <p>The name of the stream to modify.</p>
-- Required parameter: StreamName
-- Required parameter: RetentionPeriodHours
function M.IncreaseStreamRetentionPeriodInput(RetentionPeriodHours, StreamName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating IncreaseStreamRetentionPeriodInput")
	local t = { 
		["RetentionPeriodHours"] = RetentionPeriodHours,
		["StreamName"] = StreamName,
	}
	M.AssertIncreaseStreamRetentionPeriodInput(t)
	return t
end

local RemoveTagsFromStreamInput_keys = { "StreamName" = true, "TagKeys" = true, nil }

function M.AssertRemoveTagsFromStreamInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RemoveTagsFromStreamInput to be of type 'table'")
	assert(struct["StreamName"], "Expected key StreamName to exist in table")
	assert(struct["TagKeys"], "Expected key TagKeys to exist in table")
	if struct["StreamName"] then M.AssertStreamName(struct["StreamName"]) end
	if struct["TagKeys"] then M.AssertTagKeyList(struct["TagKeys"]) end
	for k,_ in pairs(struct) do
		assert(RemoveTagsFromStreamInput_keys[k], "RemoveTagsFromStreamInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RemoveTagsFromStreamInput
-- <p>Represents the input for <code>RemoveTagsFromStream</code>.</p>
-- @param StreamName [StreamName] <p>The name of the stream.</p>
-- @param TagKeys [TagKeyList] <p>A list of tag keys. Each corresponding tag is removed from the stream.</p>
-- Required parameter: StreamName
-- Required parameter: TagKeys
function M.RemoveTagsFromStreamInput(StreamName, TagKeys, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RemoveTagsFromStreamInput")
	local t = { 
		["StreamName"] = StreamName,
		["TagKeys"] = TagKeys,
	}
	M.AssertRemoveTagsFromStreamInput(t)
	return t
end

local UpdateShardCountOutput_keys = { "TargetShardCount" = true, "StreamName" = true, "CurrentShardCount" = true, nil }

function M.AssertUpdateShardCountOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateShardCountOutput to be of type 'table'")
	if struct["TargetShardCount"] then M.AssertPositiveIntegerObject(struct["TargetShardCount"]) end
	if struct["StreamName"] then M.AssertStreamName(struct["StreamName"]) end
	if struct["CurrentShardCount"] then M.AssertPositiveIntegerObject(struct["CurrentShardCount"]) end
	for k,_ in pairs(struct) do
		assert(UpdateShardCountOutput_keys[k], "UpdateShardCountOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateShardCountOutput
--  
-- @param TargetShardCount [PositiveIntegerObject] <p>The updated number of shards.</p>
-- @param StreamName [StreamName] <p>The name of the stream.</p>
-- @param CurrentShardCount [PositiveIntegerObject] <p>The current number of shards.</p>
function M.UpdateShardCountOutput(TargetShardCount, StreamName, CurrentShardCount, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateShardCountOutput")
	local t = { 
		["TargetShardCount"] = TargetShardCount,
		["StreamName"] = StreamName,
		["CurrentShardCount"] = CurrentShardCount,
	}
	M.AssertUpdateShardCountOutput(t)
	return t
end

local EnableEnhancedMonitoringInput_keys = { "ShardLevelMetrics" = true, "StreamName" = true, nil }

function M.AssertEnableEnhancedMonitoringInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EnableEnhancedMonitoringInput to be of type 'table'")
	assert(struct["StreamName"], "Expected key StreamName to exist in table")
	assert(struct["ShardLevelMetrics"], "Expected key ShardLevelMetrics to exist in table")
	if struct["ShardLevelMetrics"] then M.AssertMetricsNameList(struct["ShardLevelMetrics"]) end
	if struct["StreamName"] then M.AssertStreamName(struct["StreamName"]) end
	for k,_ in pairs(struct) do
		assert(EnableEnhancedMonitoringInput_keys[k], "EnableEnhancedMonitoringInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EnableEnhancedMonitoringInput
-- <p>Represents the input for <a>EnableEnhancedMonitoring</a>.</p>
-- @param ShardLevelMetrics [MetricsNameList] <p>List of shard-level metrics to enable.</p> <p>The following are the valid shard-level metrics. The value "<code>ALL</code>" enables every metric.</p> <ul> <li> <p> <code>IncomingBytes</code> </p> </li> <li> <p> <code>IncomingRecords</code> </p> </li> <li> <p> <code>OutgoingBytes</code> </p> </li> <li> <p> <code>OutgoingRecords</code> </p> </li> <li> <p> <code>WriteProvisionedThroughputExceeded</code> </p> </li> <li> <p> <code>ReadProvisionedThroughputExceeded</code> </p> </li> <li> <p> <code>IteratorAgeMilliseconds</code> </p> </li> <li> <p> <code>ALL</code> </p> </li> </ul> <p>For more information, see <a href="http://docs.aws.amazon.com/kinesis/latest/dev/monitoring-with-cloudwatch.html">Monitoring the Amazon Kinesis Streams Service with Amazon CloudWatch</a> in the <i>Amazon Kinesis Streams Developer Guide</i>.</p>
-- @param StreamName [StreamName] <p>The name of the stream for which to enable enhanced monitoring.</p>
-- Required parameter: StreamName
-- Required parameter: ShardLevelMetrics
function M.EnableEnhancedMonitoringInput(ShardLevelMetrics, StreamName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EnableEnhancedMonitoringInput")
	local t = { 
		["ShardLevelMetrics"] = ShardLevelMetrics,
		["StreamName"] = StreamName,
	}
	M.AssertEnableEnhancedMonitoringInput(t)
	return t
end

local InvalidArgumentException_keys = { "message" = true, nil }

function M.AssertInvalidArgumentException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidArgumentException to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidArgumentException_keys[k], "InvalidArgumentException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidArgumentException
-- <p>A specified parameter exceeds its restrictions, is not supported, or can't be used. For more information, see the returned message.</p>
-- @param message [ErrorMessage] <p>A message that provides information about the error.</p>
function M.InvalidArgumentException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidArgumentException")
	local t = { 
		["message"] = message,
	}
	M.AssertInvalidArgumentException(t)
	return t
end

local StreamDescription_keys = { "HasMoreShards" = true, "RetentionPeriodHours" = true, "StreamName" = true, "Shards" = true, "StreamARN" = true, "EnhancedMonitoring" = true, "StreamCreationTimestamp" = true, "StreamStatus" = true, nil }

function M.AssertStreamDescription(struct)
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
	if struct["HasMoreShards"] then M.AssertBooleanObject(struct["HasMoreShards"]) end
	if struct["RetentionPeriodHours"] then M.AssertPositiveIntegerObject(struct["RetentionPeriodHours"]) end
	if struct["StreamName"] then M.AssertStreamName(struct["StreamName"]) end
	if struct["Shards"] then M.AssertShardList(struct["Shards"]) end
	if struct["StreamARN"] then M.AssertStreamARN(struct["StreamARN"]) end
	if struct["EnhancedMonitoring"] then M.AssertEnhancedMonitoringList(struct["EnhancedMonitoring"]) end
	if struct["StreamCreationTimestamp"] then M.AssertTimestamp(struct["StreamCreationTimestamp"]) end
	if struct["StreamStatus"] then M.AssertStreamStatus(struct["StreamStatus"]) end
	for k,_ in pairs(struct) do
		assert(StreamDescription_keys[k], "StreamDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StreamDescription
-- <p>Represents the output for <a>DescribeStream</a>.</p>
-- @param HasMoreShards [BooleanObject] <p>If set to <code>true</code>, more shards in the stream are available to describe.</p>
-- @param RetentionPeriodHours [PositiveIntegerObject] <p>The current retention period, in hours.</p>
-- @param StreamName [StreamName] <p>The name of the stream being described.</p>
-- @param Shards [ShardList] <p>The shards that comprise the stream.</p>
-- @param StreamARN [StreamARN] <p>The Amazon Resource Name (ARN) for the stream being described.</p>
-- @param EnhancedMonitoring [EnhancedMonitoringList] <p>Represents the current enhanced monitoring settings of the stream.</p>
-- @param StreamCreationTimestamp [Timestamp] <p>The approximate time that the stream was created.</p>
-- @param StreamStatus [StreamStatus] <p>The current status of the stream being described. The stream status is one of the following states:</p> <ul> <li> <p> <code>CREATING</code> - The stream is being created. Amazon Kinesis immediately returns and sets <code>StreamStatus</code> to <code>CREATING</code>.</p> </li> <li> <p> <code>DELETING</code> - The stream is being deleted. The specified stream is in the <code>DELETING</code> state until Amazon Kinesis completes the deletion.</p> </li> <li> <p> <code>ACTIVE</code> - The stream exists and is ready for read and write operations or deletion. You should perform read and write operations only on an <code>ACTIVE</code> stream.</p> </li> <li> <p> <code>UPDATING</code> - Shards in the stream are being merged or split. Read and write operations continue to work while the stream is in the <code>UPDATING</code> state.</p> </li> </ul>
-- Required parameter: StreamName
-- Required parameter: StreamARN
-- Required parameter: StreamStatus
-- Required parameter: Shards
-- Required parameter: HasMoreShards
-- Required parameter: RetentionPeriodHours
-- Required parameter: StreamCreationTimestamp
-- Required parameter: EnhancedMonitoring
function M.StreamDescription(HasMoreShards, RetentionPeriodHours, StreamName, Shards, StreamARN, EnhancedMonitoring, StreamCreationTimestamp, StreamStatus, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StreamDescription")
	local t = { 
		["HasMoreShards"] = HasMoreShards,
		["RetentionPeriodHours"] = RetentionPeriodHours,
		["StreamName"] = StreamName,
		["Shards"] = Shards,
		["StreamARN"] = StreamARN,
		["EnhancedMonitoring"] = EnhancedMonitoring,
		["StreamCreationTimestamp"] = StreamCreationTimestamp,
		["StreamStatus"] = StreamStatus,
	}
	M.AssertStreamDescription(t)
	return t
end

local ProvisionedThroughputExceededException_keys = { "message" = true, nil }

function M.AssertProvisionedThroughputExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ProvisionedThroughputExceededException to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(ProvisionedThroughputExceededException_keys[k], "ProvisionedThroughputExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ProvisionedThroughputExceededException
-- <p>The request rate for the stream is too high, or the requested data is too large for the available throughput. Reduce the frequency or size of your requests. For more information, see <a href="http://docs.aws.amazon.com/kinesis/latest/dev/service-sizes-and-limits.html">Streams Limits</a> in the <i>Amazon Kinesis Streams Developer Guide</i>, and <a href="http://docs.aws.amazon.com/general/latest/gr/api-retries.html">Error Retries and Exponential Backoff in AWS</a> in the <i>AWS General Reference</i>.</p>
-- @param message [ErrorMessage] <p>A message that provides information about the error.</p>
function M.ProvisionedThroughputExceededException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ProvisionedThroughputExceededException")
	local t = { 
		["message"] = message,
	}
	M.AssertProvisionedThroughputExceededException(t)
	return t
end

local EnhancedMetrics_keys = { "ShardLevelMetrics" = true, nil }

function M.AssertEnhancedMetrics(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EnhancedMetrics to be of type 'table'")
	if struct["ShardLevelMetrics"] then M.AssertMetricsNameList(struct["ShardLevelMetrics"]) end
	for k,_ in pairs(struct) do
		assert(EnhancedMetrics_keys[k], "EnhancedMetrics contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EnhancedMetrics
-- <p>Represents enhanced metrics types.</p>
-- @param ShardLevelMetrics [MetricsNameList] <p>List of shard-level metrics.</p> <p>The following are the valid shard-level metrics. The value "<code>ALL</code>" enhances every metric.</p> <ul> <li> <p> <code>IncomingBytes</code> </p> </li> <li> <p> <code>IncomingRecords</code> </p> </li> <li> <p> <code>OutgoingBytes</code> </p> </li> <li> <p> <code>OutgoingRecords</code> </p> </li> <li> <p> <code>WriteProvisionedThroughputExceeded</code> </p> </li> <li> <p> <code>ReadProvisionedThroughputExceeded</code> </p> </li> <li> <p> <code>IteratorAgeMilliseconds</code> </p> </li> <li> <p> <code>ALL</code> </p> </li> </ul> <p>For more information, see <a href="http://docs.aws.amazon.com/kinesis/latest/dev/monitoring-with-cloudwatch.html">Monitoring the Amazon Kinesis Streams Service with Amazon CloudWatch</a> in the <i>Amazon Kinesis Streams Developer Guide</i>.</p>
function M.EnhancedMetrics(ShardLevelMetrics, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EnhancedMetrics")
	local t = { 
		["ShardLevelMetrics"] = ShardLevelMetrics,
	}
	M.AssertEnhancedMetrics(t)
	return t
end

local ListTagsForStreamInput_keys = { "StreamName" = true, "Limit" = true, "ExclusiveStartTagKey" = true, nil }

function M.AssertListTagsForStreamInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagsForStreamInput to be of type 'table'")
	assert(struct["StreamName"], "Expected key StreamName to exist in table")
	if struct["StreamName"] then M.AssertStreamName(struct["StreamName"]) end
	if struct["Limit"] then M.AssertListTagsForStreamInputLimit(struct["Limit"]) end
	if struct["ExclusiveStartTagKey"] then M.AssertTagKey(struct["ExclusiveStartTagKey"]) end
	for k,_ in pairs(struct) do
		assert(ListTagsForStreamInput_keys[k], "ListTagsForStreamInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagsForStreamInput
-- <p>Represents the input for <code>ListTagsForStream</code>.</p>
-- @param StreamName [StreamName] <p>The name of the stream.</p>
-- @param Limit [ListTagsForStreamInputLimit] <p>The number of tags to return. If this number is less than the total number of tags associated with the stream, <code>HasMoreTags</code> is set to <code>true</code>. To list additional tags, set <code>ExclusiveStartTagKey</code> to the last key in the response.</p>
-- @param ExclusiveStartTagKey [TagKey] <p>The key to use as the starting point for the list of tags. If this parameter is set, <code>ListTagsForStream</code> gets all tags that occur after <code>ExclusiveStartTagKey</code>. </p>
-- Required parameter: StreamName
function M.ListTagsForStreamInput(StreamName, Limit, ExclusiveStartTagKey, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTagsForStreamInput")
	local t = { 
		["StreamName"] = StreamName,
		["Limit"] = Limit,
		["ExclusiveStartTagKey"] = ExclusiveStartTagKey,
	}
	M.AssertListTagsForStreamInput(t)
	return t
end

local PutRecordsResultEntry_keys = { "ShardId" = true, "ErrorCode" = true, "ErrorMessage" = true, "SequenceNumber" = true, nil }

function M.AssertPutRecordsResultEntry(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutRecordsResultEntry to be of type 'table'")
	if struct["ShardId"] then M.AssertShardId(struct["ShardId"]) end
	if struct["ErrorCode"] then M.AssertErrorCode(struct["ErrorCode"]) end
	if struct["ErrorMessage"] then M.AssertErrorMessage(struct["ErrorMessage"]) end
	if struct["SequenceNumber"] then M.AssertSequenceNumber(struct["SequenceNumber"]) end
	for k,_ in pairs(struct) do
		assert(PutRecordsResultEntry_keys[k], "PutRecordsResultEntry contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutRecordsResultEntry
-- <p>Represents the result of an individual record from a <code>PutRecords</code> request. A record that is successfully added to a stream includes <code>SequenceNumber</code> and <code>ShardId</code> in the result. A record that fails to be added to the stream includes <code>ErrorCode</code> and <code>ErrorMessage</code> in the result.</p>
-- @param ShardId [ShardId] <p>The shard ID for an individual record result.</p>
-- @param ErrorCode [ErrorCode] <p>The error code for an individual record result. <code>ErrorCodes</code> can be either <code>ProvisionedThroughputExceededException</code> or <code>InternalFailure</code>.</p>
-- @param ErrorMessage [ErrorMessage] <p>The error message for an individual record result. An <code>ErrorCode</code> value of <code>ProvisionedThroughputExceededException</code> has an error message that includes the account ID, stream name, and shard ID. An <code>ErrorCode</code> value of <code>InternalFailure</code> has the error message <code>"Internal Service Failure"</code>.</p>
-- @param SequenceNumber [SequenceNumber] <p>The sequence number for an individual record result.</p>
function M.PutRecordsResultEntry(ShardId, ErrorCode, ErrorMessage, SequenceNumber, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutRecordsResultEntry")
	local t = { 
		["ShardId"] = ShardId,
		["ErrorCode"] = ErrorCode,
		["ErrorMessage"] = ErrorMessage,
		["SequenceNumber"] = SequenceNumber,
	}
	M.AssertPutRecordsResultEntry(t)
	return t
end

local ListStreamsOutput_keys = { "StreamNames" = true, "HasMoreStreams" = true, nil }

function M.AssertListStreamsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListStreamsOutput to be of type 'table'")
	assert(struct["StreamNames"], "Expected key StreamNames to exist in table")
	assert(struct["HasMoreStreams"], "Expected key HasMoreStreams to exist in table")
	if struct["StreamNames"] then M.AssertStreamNameList(struct["StreamNames"]) end
	if struct["HasMoreStreams"] then M.AssertBooleanObject(struct["HasMoreStreams"]) end
	for k,_ in pairs(struct) do
		assert(ListStreamsOutput_keys[k], "ListStreamsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListStreamsOutput
-- <p>Represents the output for <code>ListStreams</code>.</p>
-- @param StreamNames [StreamNameList] <p>The names of the streams that are associated with the AWS account making the <code>ListStreams</code> request.</p>
-- @param HasMoreStreams [BooleanObject] <p>If set to <code>true</code>, there are more streams available to list.</p>
-- Required parameter: StreamNames
-- Required parameter: HasMoreStreams
function M.ListStreamsOutput(StreamNames, HasMoreStreams, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListStreamsOutput")
	local t = { 
		["StreamNames"] = StreamNames,
		["HasMoreStreams"] = HasMoreStreams,
	}
	M.AssertListStreamsOutput(t)
	return t
end

local ListTagsForStreamOutput_keys = { "HasMoreTags" = true, "Tags" = true, nil }

function M.AssertListTagsForStreamOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagsForStreamOutput to be of type 'table'")
	assert(struct["Tags"], "Expected key Tags to exist in table")
	assert(struct["HasMoreTags"], "Expected key HasMoreTags to exist in table")
	if struct["HasMoreTags"] then M.AssertBooleanObject(struct["HasMoreTags"]) end
	if struct["Tags"] then M.AssertTagList(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(ListTagsForStreamOutput_keys[k], "ListTagsForStreamOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagsForStreamOutput
-- <p>Represents the output for <code>ListTagsForStream</code>.</p>
-- @param HasMoreTags [BooleanObject] <p>If set to <code>true</code>, more tags are available. To request additional tags, set <code>ExclusiveStartTagKey</code> to the key of the last tag returned.</p>
-- @param Tags [TagList] <p>A list of tags associated with <code>StreamName</code>, starting with the first tag after <code>ExclusiveStartTagKey</code> and up to the specified <code>Limit</code>. </p>
-- Required parameter: Tags
-- Required parameter: HasMoreTags
function M.ListTagsForStreamOutput(HasMoreTags, Tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTagsForStreamOutput")
	local t = { 
		["HasMoreTags"] = HasMoreTags,
		["Tags"] = Tags,
	}
	M.AssertListTagsForStreamOutput(t)
	return t
end

local GetRecordsOutput_keys = { "Records" = true, "NextShardIterator" = true, "MillisBehindLatest" = true, nil }

function M.AssertGetRecordsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetRecordsOutput to be of type 'table'")
	assert(struct["Records"], "Expected key Records to exist in table")
	if struct["Records"] then M.AssertRecordList(struct["Records"]) end
	if struct["NextShardIterator"] then M.AssertShardIterator(struct["NextShardIterator"]) end
	if struct["MillisBehindLatest"] then M.AssertMillisBehindLatest(struct["MillisBehindLatest"]) end
	for k,_ in pairs(struct) do
		assert(GetRecordsOutput_keys[k], "GetRecordsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetRecordsOutput
-- <p>Represents the output for <a>GetRecords</a>.</p>
-- @param Records [RecordList] <p>The data records retrieved from the shard.</p>
-- @param NextShardIterator [ShardIterator] <p>The next position in the shard from which to start sequentially reading data records. If set to <code>null</code>, the shard has been closed and the requested iterator will not return any more data. </p>
-- @param MillisBehindLatest [MillisBehindLatest] <p>The number of milliseconds the <a>GetRecords</a> response is from the tip of the stream, indicating how far behind current time the consumer is. A value of zero indicates record processing is caught up, and there are no new records to process at this moment.</p>
-- Required parameter: Records
function M.GetRecordsOutput(Records, NextShardIterator, MillisBehindLatest, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetRecordsOutput")
	local t = { 
		["Records"] = Records,
		["NextShardIterator"] = NextShardIterator,
		["MillisBehindLatest"] = MillisBehindLatest,
	}
	M.AssertGetRecordsOutput(t)
	return t
end

local DescribeLimitsInput_keys = { nil }

function M.AssertDescribeLimitsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeLimitsInput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DescribeLimitsInput_keys[k], "DescribeLimitsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeLimitsInput
--  
function M.DescribeLimitsInput(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeLimitsInput")
	local t = { 
	}
	M.AssertDescribeLimitsInput(t)
	return t
end

local CreateStreamInput_keys = { "StreamName" = true, "ShardCount" = true, nil }

function M.AssertCreateStreamInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateStreamInput to be of type 'table'")
	assert(struct["StreamName"], "Expected key StreamName to exist in table")
	assert(struct["ShardCount"], "Expected key ShardCount to exist in table")
	if struct["StreamName"] then M.AssertStreamName(struct["StreamName"]) end
	if struct["ShardCount"] then M.AssertPositiveIntegerObject(struct["ShardCount"]) end
	for k,_ in pairs(struct) do
		assert(CreateStreamInput_keys[k], "CreateStreamInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateStreamInput
-- <p>Represents the input for <code>CreateStream</code>.</p>
-- @param StreamName [StreamName] <p>A name to identify the stream. The stream name is scoped to the AWS account used by the application that creates the stream. It is also scoped by region. That is, two streams in two different AWS accounts can have the same name, and two streams in the same AWS account but in two different regions can have the same name.</p>
-- @param ShardCount [PositiveIntegerObject] <p>The number of shards that the stream will use. The throughput of the stream is a function of the number of shards; more shards are required for greater provisioned throughput.</p> <p>DefaultShardLimit;</p>
-- Required parameter: StreamName
-- Required parameter: ShardCount
function M.CreateStreamInput(StreamName, ShardCount, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateStreamInput")
	local t = { 
		["StreamName"] = StreamName,
		["ShardCount"] = ShardCount,
	}
	M.AssertCreateStreamInput(t)
	return t
end

local GetRecordsInput_keys = { "ShardIterator" = true, "Limit" = true, nil }

function M.AssertGetRecordsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetRecordsInput to be of type 'table'")
	assert(struct["ShardIterator"], "Expected key ShardIterator to exist in table")
	if struct["ShardIterator"] then M.AssertShardIterator(struct["ShardIterator"]) end
	if struct["Limit"] then M.AssertGetRecordsInputLimit(struct["Limit"]) end
	for k,_ in pairs(struct) do
		assert(GetRecordsInput_keys[k], "GetRecordsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetRecordsInput
-- <p>Represents the input for <a>GetRecords</a>.</p>
-- @param ShardIterator [ShardIterator] <p>The position in the shard from which you want to start sequentially reading data records. A shard iterator specifies this position using the sequence number of a data record in the shard.</p>
-- @param Limit [GetRecordsInputLimit] <p>The maximum number of records to return. Specify a value of up to 10,000. If you specify a value that is greater than 10,000, <a>GetRecords</a> throws <code>InvalidArgumentException</code>.</p>
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

local DescribeStreamInput_keys = { "StreamName" = true, "Limit" = true, "ExclusiveStartShardId" = true, nil }

function M.AssertDescribeStreamInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeStreamInput to be of type 'table'")
	assert(struct["StreamName"], "Expected key StreamName to exist in table")
	if struct["StreamName"] then M.AssertStreamName(struct["StreamName"]) end
	if struct["Limit"] then M.AssertDescribeStreamInputLimit(struct["Limit"]) end
	if struct["ExclusiveStartShardId"] then M.AssertShardId(struct["ExclusiveStartShardId"]) end
	for k,_ in pairs(struct) do
		assert(DescribeStreamInput_keys[k], "DescribeStreamInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeStreamInput
-- <p>Represents the input for <code>DescribeStream</code>.</p>
-- @param StreamName [StreamName] <p>The name of the stream to describe.</p>
-- @param Limit [DescribeStreamInputLimit] <p>The maximum number of shards to return in a single call. The default value is 100. If you specify a value greater than 100, at most 100 shards are returned.</p>
-- @param ExclusiveStartShardId [ShardId] <p>The shard ID of the shard to start with.</p>
-- Required parameter: StreamName
function M.DescribeStreamInput(StreamName, Limit, ExclusiveStartShardId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeStreamInput")
	local t = { 
		["StreamName"] = StreamName,
		["Limit"] = Limit,
		["ExclusiveStartShardId"] = ExclusiveStartShardId,
	}
	M.AssertDescribeStreamInput(t)
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
-- <p>The requested resource could not be found. The stream might not be specified correctly.</p>
-- @param message [ErrorMessage] <p>A message that provides information about the error.</p>
function M.ResourceNotFoundException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceNotFoundException")
	local t = { 
		["message"] = message,
	}
	M.AssertResourceNotFoundException(t)
	return t
end

function M.AssertMetricsName(str)
	assert(str)
	assert(type(str) == "string", "Expected MetricsName to be of type 'string'")
end

--  
function M.MetricsName(str)
	M.AssertMetricsName(str)
	return str
end

function M.AssertStreamARN(str)
	assert(str)
	assert(type(str) == "string", "Expected StreamARN to be of type 'string'")
end

--  
function M.StreamARN(str)
	M.AssertStreamARN(str)
	return str
end

function M.AssertHashKey(str)
	assert(str)
	assert(type(str) == "string", "Expected HashKey to be of type 'string'")
	assert(str:match("0|([1-9]%d{0,38})"), "Expected string to match pattern '0|([1-9]%d{0,38})'")
end

--  
function M.HashKey(str)
	M.AssertHashKey(str)
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

function M.AssertScalingType(str)
	assert(str)
	assert(type(str) == "string", "Expected ScalingType to be of type 'string'")
end

--  
function M.ScalingType(str)
	M.AssertScalingType(str)
	return str
end

function M.AssertSequenceNumber(str)
	assert(str)
	assert(type(str) == "string", "Expected SequenceNumber to be of type 'string'")
	assert(str:match("0|([1-9]%d{0,128})"), "Expected string to match pattern '0|([1-9]%d{0,128})'")
end

--  
function M.SequenceNumber(str)
	M.AssertSequenceNumber(str)
	return str
end

function M.AssertErrorCode(str)
	assert(str)
	assert(type(str) == "string", "Expected ErrorCode to be of type 'string'")
end

--  
function M.ErrorCode(str)
	M.AssertErrorCode(str)
	return str
end

function M.AssertTagValue(str)
	assert(str)
	assert(type(str) == "string", "Expected TagValue to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
end

--  
function M.TagValue(str)
	M.AssertTagValue(str)
	return str
end

function M.AssertShardIterator(str)
	assert(str)
	assert(type(str) == "string", "Expected ShardIterator to be of type 'string'")
	assert(#str <= 512, "Expected string to be max 512 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ShardIterator(str)
	M.AssertShardIterator(str)
	return str
end

function M.AssertStreamName(str)
	assert(str)
	assert(type(str) == "string", "Expected StreamName to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[a-zA-Z0-9_.-]+"), "Expected string to match pattern '[a-zA-Z0-9_.-]+'")
end

--  
function M.StreamName(str)
	M.AssertStreamName(str)
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

function M.AssertTagKey(str)
	assert(str)
	assert(type(str) == "string", "Expected TagKey to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.TagKey(str)
	M.AssertTagKey(str)
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

function M.AssertShardId(str)
	assert(str)
	assert(type(str) == "string", "Expected ShardId to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[a-zA-Z0-9_.-]+"), "Expected string to match pattern '[a-zA-Z0-9_.-]+'")
end

--  
function M.ShardId(str)
	M.AssertShardId(str)
	return str
end

function M.AssertPartitionKey(str)
	assert(str)
	assert(type(str) == "string", "Expected PartitionKey to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.PartitionKey(str)
	M.AssertPartitionKey(str)
	return str
end

function M.AssertMillisBehindLatest(long)
	assert(long)
	assert(type(long) == "number", "Expected MillisBehindLatest to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.MillisBehindLatest(long)
	M.AssertMillisBehindLatest(long)
	return long
end

function M.AssertGetRecordsInputLimit(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected GetRecordsInputLimit to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 10000, "Expected integer to be max 10000")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.GetRecordsInputLimit(integer)
	M.AssertGetRecordsInputLimit(integer)
	return integer
end

function M.AssertListTagsForStreamInputLimit(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected ListTagsForStreamInputLimit to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 10, "Expected integer to be max 10")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.ListTagsForStreamInputLimit(integer)
	M.AssertListTagsForStreamInputLimit(integer)
	return integer
end

function M.AssertListStreamsInputLimit(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected ListStreamsInputLimit to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 10000, "Expected integer to be max 10000")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.ListStreamsInputLimit(integer)
	M.AssertListStreamsInputLimit(integer)
	return integer
end

function M.AssertPositiveIntegerObject(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected PositiveIntegerObject to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 100000, "Expected integer to be max 100000")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.PositiveIntegerObject(integer)
	M.AssertPositiveIntegerObject(integer)
	return integer
end

function M.AssertDescribeStreamInputLimit(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected DescribeStreamInputLimit to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 10000, "Expected integer to be max 10000")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.DescribeStreamInputLimit(integer)
	M.AssertDescribeStreamInputLimit(integer)
	return integer
end

function M.AssertShardCountObject(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected ShardCountObject to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 1000000, "Expected integer to be max 1000000")
end

function M.ShardCountObject(integer)
	M.AssertShardCountObject(integer)
	return integer
end

function M.AssertBooleanObject(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected BooleanObject to be of type 'boolean'")
end

function M.BooleanObject(boolean)
	M.AssertBooleanObject(boolean)
	return boolean
end

function M.AssertTagMap(map)
	assert(map)
	assert(type(map) == "table", "Expected TagMap to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertTagKey(k)
		M.AssertTagValue(v)
	end
end

function M.TagMap(map)
	M.AssertTagMap(map)
	return map
end

function M.AssertTimestamp(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected Timestamp to be of type 'string'")
end

function M.Timestamp(timestamp)
	M.AssertTimestamp(timestamp)
	return timestamp
end

function M.AssertData(blob)
	assert(blob)
	assert(type(string) == "string", "Expected Data to be of type 'string'")
	assert(#blob <= 1048576, "Expected blob to be max 1048576")
end

function M.Data(blob)
	M.AssertData(blob)
	return blob
end

function M.AssertPutRecordsRequestEntryList(list)
	assert(list)
	assert(type(list) == "table", "Expected PutRecordsRequestEntryList to be of type ''table")
	assert(#list <= 500, "Expected list to be contain 500 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AssertPutRecordsRequestEntry(v)
	end
end

--  
-- List of PutRecordsRequestEntry objects
function M.PutRecordsRequestEntryList(list)
	M.AssertPutRecordsRequestEntryList(list)
	return list
end

function M.AssertStreamNameList(list)
	assert(list)
	assert(type(list) == "table", "Expected StreamNameList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertStreamName(v)
	end
end

--  
-- List of StreamName objects
function M.StreamNameList(list)
	M.AssertStreamNameList(list)
	return list
end

function M.AssertTagKeyList(list)
	assert(list)
	assert(type(list) == "table", "Expected TagKeyList to be of type ''table")
	assert(#list <= 10, "Expected list to be contain 10 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AssertTagKey(v)
	end
end

--  
-- List of TagKey objects
function M.TagKeyList(list)
	M.AssertTagKeyList(list)
	return list
end

function M.AssertPutRecordsResultEntryList(list)
	assert(list)
	assert(type(list) == "table", "Expected PutRecordsResultEntryList to be of type ''table")
	assert(#list <= 500, "Expected list to be contain 500 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AssertPutRecordsResultEntry(v)
	end
end

--  
-- List of PutRecordsResultEntry objects
function M.PutRecordsResultEntryList(list)
	M.AssertPutRecordsResultEntryList(list)
	return list
end

function M.AssertMetricsNameList(list)
	assert(list)
	assert(type(list) == "table", "Expected MetricsNameList to be of type ''table")
	assert(#list <= 7, "Expected list to be contain 7 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AssertMetricsName(v)
	end
end

--  
-- List of MetricsName objects
function M.MetricsNameList(list)
	M.AssertMetricsNameList(list)
	return list
end

function M.AssertShardList(list)
	assert(list)
	assert(type(list) == "table", "Expected ShardList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertShard(v)
	end
end

--  
-- List of Shard objects
function M.ShardList(list)
	M.AssertShardList(list)
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

function M.AssertEnhancedMonitoringList(list)
	assert(list)
	assert(type(list) == "table", "Expected EnhancedMonitoringList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertEnhancedMetrics(v)
	end
end

--  
-- List of EnhancedMetrics objects
function M.EnhancedMonitoringList(list)
	M.AssertEnhancedMonitoringList(list)
	return list
end

function M.AssertTagList(list)
	assert(list)
	assert(type(list) == "table", "Expected TagList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertTag(v)
	end
end

--  
-- List of Tag objects
function M.TagList(list)
	M.AssertTagList(list)
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
		[headers.AMZ_TARGET_HEADER] = "Kinesis_20131202.GetRecords",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetRecordsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- IncreaseStreamRetentionPeriod
-- @param IncreaseStreamRetentionPeriodInput
-- @param cb Callback function accepting two args: response, error_message
function M.IncreaseStreamRetentionPeriodAsync(IncreaseStreamRetentionPeriodInput, cb)
	assert(IncreaseStreamRetentionPeriodInput, "You must provide a IncreaseStreamRetentionPeriodInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Kinesis_20131202.IncreaseStreamRetentionPeriod",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", IncreaseStreamRetentionPeriodInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeLimits
-- @param DescribeLimitsInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeLimitsAsync(DescribeLimitsInput, cb)
	assert(DescribeLimitsInput, "You must provide a DescribeLimitsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Kinesis_20131202.DescribeLimits",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeLimitsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListTagsForStream
-- @param ListTagsForStreamInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListTagsForStreamAsync(ListTagsForStreamInput, cb)
	assert(ListTagsForStreamInput, "You must provide a ListTagsForStreamInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Kinesis_20131202.ListTagsForStream",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListTagsForStreamInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- PutRecords
-- @param PutRecordsInput
-- @param cb Callback function accepting two args: response, error_message
function M.PutRecordsAsync(PutRecordsInput, cb)
	assert(PutRecordsInput, "You must provide a PutRecordsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Kinesis_20131202.PutRecords",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", PutRecordsInput, headers, M.metadata, cb)
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
		[headers.AMZ_TARGET_HEADER] = "Kinesis_20131202.GetShardIterator",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetShardIteratorInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteStream
-- @param DeleteStreamInput
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteStreamAsync(DeleteStreamInput, cb)
	assert(DeleteStreamInput, "You must provide a DeleteStreamInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Kinesis_20131202.DeleteStream",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteStreamInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- AddTagsToStream
-- @param AddTagsToStreamInput
-- @param cb Callback function accepting two args: response, error_message
function M.AddTagsToStreamAsync(AddTagsToStreamInput, cb)
	assert(AddTagsToStreamInput, "You must provide a AddTagsToStreamInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Kinesis_20131202.AddTagsToStream",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", AddTagsToStreamInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- RemoveTagsFromStream
-- @param RemoveTagsFromStreamInput
-- @param cb Callback function accepting two args: response, error_message
function M.RemoveTagsFromStreamAsync(RemoveTagsFromStreamInput, cb)
	assert(RemoveTagsFromStreamInput, "You must provide a RemoveTagsFromStreamInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Kinesis_20131202.RemoveTagsFromStream",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", RemoveTagsFromStreamInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DecreaseStreamRetentionPeriod
-- @param DecreaseStreamRetentionPeriodInput
-- @param cb Callback function accepting two args: response, error_message
function M.DecreaseStreamRetentionPeriodAsync(DecreaseStreamRetentionPeriodInput, cb)
	assert(DecreaseStreamRetentionPeriodInput, "You must provide a DecreaseStreamRetentionPeriodInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Kinesis_20131202.DecreaseStreamRetentionPeriod",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DecreaseStreamRetentionPeriodInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DisableEnhancedMonitoring
-- @param DisableEnhancedMonitoringInput
-- @param cb Callback function accepting two args: response, error_message
function M.DisableEnhancedMonitoringAsync(DisableEnhancedMonitoringInput, cb)
	assert(DisableEnhancedMonitoringInput, "You must provide a DisableEnhancedMonitoringInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Kinesis_20131202.DisableEnhancedMonitoring",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DisableEnhancedMonitoringInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- SplitShard
-- @param SplitShardInput
-- @param cb Callback function accepting two args: response, error_message
function M.SplitShardAsync(SplitShardInput, cb)
	assert(SplitShardInput, "You must provide a SplitShardInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Kinesis_20131202.SplitShard",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", SplitShardInput, headers, M.metadata, cb)
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
		[headers.AMZ_TARGET_HEADER] = "Kinesis_20131202.DescribeStream",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeStreamInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateStream
-- @param CreateStreamInput
-- @param cb Callback function accepting two args: response, error_message
function M.CreateStreamAsync(CreateStreamInput, cb)
	assert(CreateStreamInput, "You must provide a CreateStreamInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Kinesis_20131202.CreateStream",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateStreamInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- PutRecord
-- @param PutRecordInput
-- @param cb Callback function accepting two args: response, error_message
function M.PutRecordAsync(PutRecordInput, cb)
	assert(PutRecordInput, "You must provide a PutRecordInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Kinesis_20131202.PutRecord",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", PutRecordInput, headers, M.metadata, cb)
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
		[headers.AMZ_TARGET_HEADER] = "Kinesis_20131202.ListStreams",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListStreamsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- MergeShards
-- @param MergeShardsInput
-- @param cb Callback function accepting two args: response, error_message
function M.MergeShardsAsync(MergeShardsInput, cb)
	assert(MergeShardsInput, "You must provide a MergeShardsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Kinesis_20131202.MergeShards",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", MergeShardsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateShardCount
-- @param UpdateShardCountInput
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateShardCountAsync(UpdateShardCountInput, cb)
	assert(UpdateShardCountInput, "You must provide a UpdateShardCountInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Kinesis_20131202.UpdateShardCount",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateShardCountInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- EnableEnhancedMonitoring
-- @param EnableEnhancedMonitoringInput
-- @param cb Callback function accepting two args: response, error_message
function M.EnableEnhancedMonitoringAsync(EnableEnhancedMonitoringInput, cb)
	assert(EnableEnhancedMonitoringInput, "You must provide a EnableEnhancedMonitoringInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Kinesis_20131202.EnableEnhancedMonitoring",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", EnableEnhancedMonitoringInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end


return M
