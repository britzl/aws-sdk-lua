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
-- @param _StreamName [StreamName] <p>The name of the Amazon Kinesis stream.</p>
-- @param _CurrentShardLevelMetrics [MetricsNameList] <p>Represents the current state of the metrics that are in the enhanced state before the operation.</p>
-- @param _DesiredShardLevelMetrics [MetricsNameList] <p>Represents the list of all the metrics that would be in the enhanced state after the operation.</p>
function M.EnhancedMonitoringOutput(_StreamName, _CurrentShardLevelMetrics, _DesiredShardLevelMetrics, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EnhancedMonitoringOutput")
	local t = { 
		["StreamName"] = _StreamName,
		["CurrentShardLevelMetrics"] = _CurrentShardLevelMetrics,
		["DesiredShardLevelMetrics"] = _DesiredShardLevelMetrics,
	}
	asserts.AssertEnhancedMonitoringOutput(t)
	return t
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
-- @param _TargetShardCount [PositiveIntegerObject] <p>The new number of shards.</p>
-- @param _StreamName [StreamName] <p>The name of the stream.</p>
-- @param _ScalingType [ScalingType] <p>The scaling type. Uniform scaling creates shards of equal size.</p>
-- Required parameter: StreamName
-- Required parameter: TargetShardCount
-- Required parameter: ScalingType
function M.UpdateShardCountInput(_TargetShardCount, _StreamName, _ScalingType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateShardCountInput")
	local t = { 
		["TargetShardCount"] = _TargetShardCount,
		["StreamName"] = _StreamName,
		["ScalingType"] = _ScalingType,
	}
	asserts.AssertUpdateShardCountInput(t)
	return t
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
-- @param _Records [PutRecordsRequestEntryList] <p>The records associated with the request.</p>
-- @param _StreamName [StreamName] <p>The stream name associated with the request.</p>
-- Required parameter: Records
-- Required parameter: StreamName
function M.PutRecordsInput(_Records, _StreamName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutRecordsInput")
	local t = { 
		["Records"] = _Records,
		["StreamName"] = _StreamName,
	}
	asserts.AssertPutRecordsInput(t)
	return t
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
-- @param _ShardToSplit [ShardId] <p>The shard ID of the shard to split.</p>
-- @param _StreamName [StreamName] <p>The name of the stream for the shard split.</p>
-- @param _NewStartingHashKey [HashKey] <p>A hash key value for the starting hash key of one of the child shards created by the split. The hash key range for a given shard constitutes a set of ordered contiguous positive integers. The value for <code>NewStartingHashKey</code> must be in the range of hash keys being mapped into the shard. The <code>NewStartingHashKey</code> hash key value and all higher hash key values in hash key range are distributed to one of the child shards. All the lower hash key values in the range are distributed to the other child shard.</p>
-- Required parameter: StreamName
-- Required parameter: ShardToSplit
-- Required parameter: NewStartingHashKey
function M.SplitShardInput(_ShardToSplit, _StreamName, _NewStartingHashKey, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SplitShardInput")
	local t = { 
		["ShardToSplit"] = _ShardToSplit,
		["StreamName"] = _StreamName,
		["NewStartingHashKey"] = _NewStartingHashKey,
	}
	asserts.AssertSplitShardInput(t)
	return t
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
-- <p>The requested resource exceeds the maximum number allowed, or the number of concurrent stream requests exceeds the maximum number allowed (5).</p>
-- @param _message [ErrorMessage] <p>A message that provides information about the error.</p>
function M.LimitExceededException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LimitExceededException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertLimitExceededException(t)
	return t
end

keys.DecreaseStreamRetentionPeriodInput = { ["RetentionPeriodHours"] = true, ["StreamName"] = true, nil }

function asserts.AssertDecreaseStreamRetentionPeriodInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DecreaseStreamRetentionPeriodInput to be of type 'table'")
	assert(struct["StreamName"], "Expected key StreamName to exist in table")
	assert(struct["RetentionPeriodHours"], "Expected key RetentionPeriodHours to exist in table")
	if struct["RetentionPeriodHours"] then asserts.AssertPositiveIntegerObject(struct["RetentionPeriodHours"]) end
	if struct["StreamName"] then asserts.AssertStreamName(struct["StreamName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DecreaseStreamRetentionPeriodInput[k], "DecreaseStreamRetentionPeriodInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DecreaseStreamRetentionPeriodInput
-- <p>Represents the input for <a>DecreaseStreamRetentionPeriod</a>.</p>
-- @param _RetentionPeriodHours [PositiveIntegerObject] <p>The new retention period of the stream, in hours. Must be less than the current retention period.</p>
-- @param _StreamName [StreamName] <p>The name of the stream to modify.</p>
-- Required parameter: StreamName
-- Required parameter: RetentionPeriodHours
function M.DecreaseStreamRetentionPeriodInput(_RetentionPeriodHours, _StreamName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DecreaseStreamRetentionPeriodInput")
	local t = { 
		["RetentionPeriodHours"] = _RetentionPeriodHours,
		["StreamName"] = _StreamName,
	}
	asserts.AssertDecreaseStreamRetentionPeriodInput(t)
	return t
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
-- @param _OpenShardCount [ShardCountObject] <p>The number of open shards.</p>
-- @param _ShardLimit [ShardCountObject] <p>The maximum number of shards.</p>
-- Required parameter: ShardLimit
-- Required parameter: OpenShardCount
function M.DescribeLimitsOutput(_OpenShardCount, _ShardLimit, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeLimitsOutput")
	local t = { 
		["OpenShardCount"] = _OpenShardCount,
		["ShardLimit"] = _ShardLimit,
	}
	asserts.AssertDescribeLimitsOutput(t)
	return t
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
-- @param _Limit [ListStreamsInputLimit] <p>The maximum number of streams to list.</p>
-- @param _ExclusiveStartStreamName [StreamName] <p>The name of the stream to start the list with.</p>
function M.ListStreamsInput(_Limit, _ExclusiveStartStreamName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListStreamsInput")
	local t = { 
		["Limit"] = _Limit,
		["ExclusiveStartStreamName"] = _ExclusiveStartStreamName,
	}
	asserts.AssertListStreamsInput(t)
	return t
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
-- @param _StreamName [StreamName] <p>The name of the stream.</p>
-- @param _Tags [TagMap] <p>The set of key-value pairs to use to create the tags.</p>
-- Required parameter: StreamName
-- Required parameter: Tags
function M.AddTagsToStreamInput(_StreamName, _Tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddTagsToStreamInput")
	local t = { 
		["StreamName"] = _StreamName,
		["Tags"] = _Tags,
	}
	asserts.AssertAddTagsToStreamInput(t)
	return t
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
-- @param _EndingHashKey [HashKey] <p>The ending hash key of the hash key range.</p>
-- @param _StartingHashKey [HashKey] <p>The starting hash key of the hash key range.</p>
-- Required parameter: StartingHashKey
-- Required parameter: EndingHashKey
function M.HashKeyRange(_EndingHashKey, _StartingHashKey, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating HashKeyRange")
	local t = { 
		["EndingHashKey"] = _EndingHashKey,
		["StartingHashKey"] = _StartingHashKey,
	}
	asserts.AssertHashKeyRange(t)
	return t
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
-- <p>The resource is not available for this operation. For successful operation, the resource needs to be in the <code>ACTIVE</code> state.</p>
-- @param _message [ErrorMessage] <p>A message that provides information about the error.</p>
function M.ResourceInUseException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceInUseException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertResourceInUseException(t)
	return t
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
-- @param _ShardLevelMetrics [MetricsNameList] <p>List of shard-level metrics to disable.</p> <p>The following are the valid shard-level metrics. The value "<code>ALL</code>" disables every metric.</p> <ul> <li> <p> <code>IncomingBytes</code> </p> </li> <li> <p> <code>IncomingRecords</code> </p> </li> <li> <p> <code>OutgoingBytes</code> </p> </li> <li> <p> <code>OutgoingRecords</code> </p> </li> <li> <p> <code>WriteProvisionedThroughputExceeded</code> </p> </li> <li> <p> <code>ReadProvisionedThroughputExceeded</code> </p> </li> <li> <p> <code>IteratorAgeMilliseconds</code> </p> </li> <li> <p> <code>ALL</code> </p> </li> </ul> <p>For more information, see <a href="http://docs.aws.amazon.com/kinesis/latest/dev/monitoring-with-cloudwatch.html">Monitoring the Amazon Kinesis Streams Service with Amazon CloudWatch</a> in the <i>Amazon Kinesis Streams Developer Guide</i>.</p>
-- @param _StreamName [StreamName] <p>The name of the Amazon Kinesis stream for which to disable enhanced monitoring.</p>
-- Required parameter: StreamName
-- Required parameter: ShardLevelMetrics
function M.DisableEnhancedMonitoringInput(_ShardLevelMetrics, _StreamName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DisableEnhancedMonitoringInput")
	local t = { 
		["ShardLevelMetrics"] = _ShardLevelMetrics,
		["StreamName"] = _StreamName,
	}
	asserts.AssertDisableEnhancedMonitoringInput(t)
	return t
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
-- @param _Value [TagValue] <p>An optional string, typically used to describe or define the tag. Maximum length: 256 characters. Valid characters: Unicode letters, digits, white space, _ . / = + - % @</p>
-- @param _Key [TagKey] <p>A unique identifier for the tag. Maximum length: 128 characters. Valid characters: Unicode letters, digits, white space, _ . / = + - % @</p>
-- Required parameter: Key
function M.Tag(_Value, _Key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Tag")
	local t = { 
		["Value"] = _Value,
		["Key"] = _Key,
	}
	asserts.AssertTag(t)
	return t
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
-- @param _PartitionKey [PartitionKey] <p>Determines which shard in the stream the data record is assigned to. Partition keys are Unicode strings with a maximum length limit of 256 characters for each key. Amazon Kinesis uses the partition key as input to a hash function that maps the partition key and associated data to a specific shard. Specifically, an MD5 hash function is used to map partition keys to 128-bit integer values and to map associated data records to shards. As a result of this hashing mechanism, all data records with the same partition key map to the same shard within the stream.</p>
-- @param _Data [Data] <p>The data blob to put into the record, which is base64-encoded when the blob is serialized. When the data blob (the payload before base64-encoding) is added to the partition key size, the total size must not exceed the maximum record size (1 MB).</p>
-- @param _ExplicitHashKey [HashKey] <p>The hash value used to determine explicitly the shard that the data record is assigned to by overriding the partition key hash.</p>
-- Required parameter: Data
-- Required parameter: PartitionKey
function M.PutRecordsRequestEntry(_PartitionKey, _Data, _ExplicitHashKey, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutRecordsRequestEntry")
	local t = { 
		["PartitionKey"] = _PartitionKey,
		["Data"] = _Data,
		["ExplicitHashKey"] = _ExplicitHashKey,
	}
	asserts.AssertPutRecordsRequestEntry(t)
	return t
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
-- @param _StreamName [StreamName] <p>The name of the stream for the merge.</p>
-- @param _ShardToMerge [ShardId] <p>The shard ID of the shard to combine with the adjacent shard for the merge.</p>
-- @param _AdjacentShardToMerge [ShardId] <p>The shard ID of the adjacent shard for the merge.</p>
-- Required parameter: StreamName
-- Required parameter: ShardToMerge
-- Required parameter: AdjacentShardToMerge
function M.MergeShardsInput(_StreamName, _ShardToMerge, _AdjacentShardToMerge, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MergeShardsInput")
	local t = { 
		["StreamName"] = _StreamName,
		["ShardToMerge"] = _ShardToMerge,
		["AdjacentShardToMerge"] = _AdjacentShardToMerge,
	}
	asserts.AssertMergeShardsInput(t)
	return t
end

keys.DeleteStreamInput = { ["StreamName"] = true, nil }

function asserts.AssertDeleteStreamInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteStreamInput to be of type 'table'")
	assert(struct["StreamName"], "Expected key StreamName to exist in table")
	if struct["StreamName"] then asserts.AssertStreamName(struct["StreamName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteStreamInput[k], "DeleteStreamInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteStreamInput
-- <p>Represents the input for <a>DeleteStream</a>.</p>
-- @param _StreamName [StreamName] <p>The name of the stream to delete.</p>
-- Required parameter: StreamName
function M.DeleteStreamInput(_StreamName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteStreamInput")
	local t = { 
		["StreamName"] = _StreamName,
	}
	asserts.AssertDeleteStreamInput(t)
	return t
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
-- <p>A uniquely identified group of data records in an Amazon Kinesis stream.</p>
-- @param _ShardId [ShardId] <p>The unique identifier of the shard within the stream.</p>
-- @param _HashKeyRange [HashKeyRange] <p>The range of possible hash key values for the shard, which is a set of ordered contiguous positive integers.</p>
-- @param _ParentShardId [ShardId] <p>The shard ID of the shard's parent.</p>
-- @param _AdjacentParentShardId [ShardId] <p>The shard ID of the shard adjacent to the shard's parent.</p>
-- @param _SequenceNumberRange [SequenceNumberRange] <p>The range of possible sequence numbers for the shard.</p>
-- Required parameter: ShardId
-- Required parameter: HashKeyRange
-- Required parameter: SequenceNumberRange
function M.Shard(_ShardId, _HashKeyRange, _ParentShardId, _AdjacentParentShardId, _SequenceNumberRange, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Shard")
	local t = { 
		["ShardId"] = _ShardId,
		["HashKeyRange"] = _HashKeyRange,
		["ParentShardId"] = _ParentShardId,
		["AdjacentParentShardId"] = _AdjacentParentShardId,
		["SequenceNumberRange"] = _SequenceNumberRange,
	}
	asserts.AssertShard(t)
	return t
end

keys.PutRecordsOutput = { ["FailedRecordCount"] = true, ["Records"] = true, nil }

function asserts.AssertPutRecordsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutRecordsOutput to be of type 'table'")
	assert(struct["Records"], "Expected key Records to exist in table")
	if struct["FailedRecordCount"] then asserts.AssertPositiveIntegerObject(struct["FailedRecordCount"]) end
	if struct["Records"] then asserts.AssertPutRecordsResultEntryList(struct["Records"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutRecordsOutput[k], "PutRecordsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutRecordsOutput
-- <p> <code>PutRecords</code> results.</p>
-- @param _FailedRecordCount [PositiveIntegerObject] <p>The number of unsuccessfully processed records in a <code>PutRecords</code> request.</p>
-- @param _Records [PutRecordsResultEntryList] <p>An array of successfully and unsuccessfully processed record results, correlated with the request by natural ordering. A record that is successfully added to a stream includes <code>SequenceNumber</code> and <code>ShardId</code> in the result. A record that fails to be added to a stream includes <code>ErrorCode</code> and <code>ErrorMessage</code> in the result.</p>
-- Required parameter: Records
function M.PutRecordsOutput(_FailedRecordCount, _Records, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutRecordsOutput")
	local t = { 
		["FailedRecordCount"] = _FailedRecordCount,
		["Records"] = _Records,
	}
	asserts.AssertPutRecordsOutput(t)
	return t
end

keys.PutRecordOutput = { ["ShardId"] = true, ["SequenceNumber"] = true, nil }

function asserts.AssertPutRecordOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutRecordOutput to be of type 'table'")
	assert(struct["ShardId"], "Expected key ShardId to exist in table")
	assert(struct["SequenceNumber"], "Expected key SequenceNumber to exist in table")
	if struct["ShardId"] then asserts.AssertShardId(struct["ShardId"]) end
	if struct["SequenceNumber"] then asserts.AssertSequenceNumber(struct["SequenceNumber"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutRecordOutput[k], "PutRecordOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutRecordOutput
-- <p>Represents the output for <code>PutRecord</code>.</p>
-- @param _ShardId [ShardId] <p>The shard ID of the shard where the data record was placed.</p>
-- @param _SequenceNumber [SequenceNumber] <p>The sequence number identifier that was assigned to the put data record. The sequence number for the record is unique across all records in the stream. A sequence number is the identifier associated with every record put into the stream.</p>
-- Required parameter: ShardId
-- Required parameter: SequenceNumber
function M.PutRecordOutput(_ShardId, _SequenceNumber, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutRecordOutput")
	local t = { 
		["ShardId"] = _ShardId,
		["SequenceNumber"] = _SequenceNumber,
	}
	asserts.AssertPutRecordOutput(t)
	return t
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
-- @param _PartitionKey [PartitionKey] <p>Determines which shard in the stream the data record is assigned to. Partition keys are Unicode strings with a maximum length limit of 256 characters for each key. Amazon Kinesis uses the partition key as input to a hash function that maps the partition key and associated data to a specific shard. Specifically, an MD5 hash function is used to map partition keys to 128-bit integer values and to map associated data records to shards. As a result of this hashing mechanism, all data records with the same partition key map to the same shard within the stream.</p>
-- @param _SequenceNumberForOrdering [SequenceNumber] <p>Guarantees strictly increasing sequence numbers, for puts from the same client and to the same partition key. Usage: set the <code>SequenceNumberForOrdering</code> of record <i>n</i> to the sequence number of record <i>n-1</i> (as returned in the result when putting record <i>n-1</i>). If this parameter is not set, records will be coarsely ordered based on arrival time.</p>
-- @param _StreamName [StreamName] <p>The name of the stream to put the data record into.</p>
-- @param _Data [Data] <p>The data blob to put into the record, which is base64-encoded when the blob is serialized. When the data blob (the payload before base64-encoding) is added to the partition key size, the total size must not exceed the maximum record size (1 MB).</p>
-- @param _ExplicitHashKey [HashKey] <p>The hash value used to explicitly determine the shard the data record is assigned to by overriding the partition key hash.</p>
-- Required parameter: StreamName
-- Required parameter: Data
-- Required parameter: PartitionKey
function M.PutRecordInput(_PartitionKey, _SequenceNumberForOrdering, _StreamName, _Data, _ExplicitHashKey, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutRecordInput")
	local t = { 
		["PartitionKey"] = _PartitionKey,
		["SequenceNumberForOrdering"] = _SequenceNumberForOrdering,
		["StreamName"] = _StreamName,
		["Data"] = _Data,
		["ExplicitHashKey"] = _ExplicitHashKey,
	}
	asserts.AssertPutRecordInput(t)
	return t
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
-- @param _ShardId [ShardId] <p>The shard ID of the Amazon Kinesis shard to get the iterator for.</p>
-- @param _Timestamp [Timestamp] <p>The timestamp of the data record from which to start reading. Used with shard iterator type AT_TIMESTAMP. A timestamp is the Unix epoch date with precision in milliseconds. For example, <code>2016-04-04T19:58:46.480-00:00</code> or <code>1459799926.480</code>. If a record with this exact timestamp does not exist, the iterator returned is for the next (later) record. If the timestamp is older than the current trim horizon, the iterator returned is for the oldest untrimmed data record (TRIM_HORIZON).</p>
-- @param _StartingSequenceNumber [SequenceNumber] <p>The sequence number of the data record in the shard from which to start reading. Used with shard iterator type AT_SEQUENCE_NUMBER and AFTER_SEQUENCE_NUMBER.</p>
-- @param _StreamName [StreamName] <p>The name of the Amazon Kinesis stream.</p>
-- @param _ShardIteratorType [ShardIteratorType] <p>Determines how the shard iterator is used to start reading data records from the shard.</p> <p>The following are the valid Amazon Kinesis shard iterator types:</p> <ul> <li> <p>AT_SEQUENCE_NUMBER - Start reading from the position denoted by a specific sequence number, provided in the value <code>StartingSequenceNumber</code>.</p> </li> <li> <p>AFTER_SEQUENCE_NUMBER - Start reading right after the position denoted by a specific sequence number, provided in the value <code>StartingSequenceNumber</code>.</p> </li> <li> <p>AT_TIMESTAMP - Start reading from the position denoted by a specific timestamp, provided in the value <code>Timestamp</code>.</p> </li> <li> <p>TRIM_HORIZON - Start reading at the last untrimmed record in the shard in the system, which is the oldest data record in the shard.</p> </li> <li> <p>LATEST - Start reading just after the most recent record in the shard, so that you always read the most recent data in the shard.</p> </li> </ul>
-- Required parameter: StreamName
-- Required parameter: ShardId
-- Required parameter: ShardIteratorType
function M.GetShardIteratorInput(_ShardId, _Timestamp, _StartingSequenceNumber, _StreamName, _ShardIteratorType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetShardIteratorInput")
	local t = { 
		["ShardId"] = _ShardId,
		["Timestamp"] = _Timestamp,
		["StartingSequenceNumber"] = _StartingSequenceNumber,
		["StreamName"] = _StreamName,
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
-- <p>The provided iterator exceeds the maximum age allowed.</p>
-- @param _message [ErrorMessage] <p>A message that provides information about the error.</p>
function M.ExpiredIteratorException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ExpiredIteratorException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertExpiredIteratorException(t)
	return t
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
-- @param _EndingSequenceNumber [SequenceNumber] <p>The ending sequence number for the range. Shards that are in the OPEN state have an ending sequence number of <code>null</code>.</p>
-- @param _StartingSequenceNumber [SequenceNumber] <p>The starting sequence number for the range.</p>
-- Required parameter: StartingSequenceNumber
function M.SequenceNumberRange(_EndingSequenceNumber, _StartingSequenceNumber, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SequenceNumberRange")
	local t = { 
		["EndingSequenceNumber"] = _EndingSequenceNumber,
		["StartingSequenceNumber"] = _StartingSequenceNumber,
	}
	asserts.AssertSequenceNumberRange(t)
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
-- <p>Represents the output for <code>GetShardIterator</code>.</p>
-- @param _ShardIterator [ShardIterator] <p>The position in the shard from which to start reading data records sequentially. A shard iterator specifies this position using the sequence number of a data record in a shard.</p>
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
	assert(struct["StreamDescription"], "Expected key StreamDescription to exist in table")
	if struct["StreamDescription"] then asserts.AssertStreamDescription(struct["StreamDescription"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeStreamOutput[k], "DescribeStreamOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeStreamOutput
-- <p>Represents the output for <code>DescribeStream</code>.</p>
-- @param _StreamDescription [StreamDescription] <p>The current status of the stream, the stream ARN, an array of shard objects that comprise the stream, and whether there are more shards available.</p>
-- Required parameter: StreamDescription
function M.DescribeStreamOutput(_StreamDescription, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeStreamOutput")
	local t = { 
		["StreamDescription"] = _StreamDescription,
	}
	asserts.AssertDescribeStreamOutput(t)
	return t
end

keys.Record = { ["Data"] = true, ["PartitionKey"] = true, ["ApproximateArrivalTimestamp"] = true, ["SequenceNumber"] = true, nil }

function asserts.AssertRecord(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Record to be of type 'table'")
	assert(struct["SequenceNumber"], "Expected key SequenceNumber to exist in table")
	assert(struct["Data"], "Expected key Data to exist in table")
	assert(struct["PartitionKey"], "Expected key PartitionKey to exist in table")
	if struct["Data"] then asserts.AssertData(struct["Data"]) end
	if struct["PartitionKey"] then asserts.AssertPartitionKey(struct["PartitionKey"]) end
	if struct["ApproximateArrivalTimestamp"] then asserts.AssertTimestamp(struct["ApproximateArrivalTimestamp"]) end
	if struct["SequenceNumber"] then asserts.AssertSequenceNumber(struct["SequenceNumber"]) end
	for k,_ in pairs(struct) do
		assert(keys.Record[k], "Record contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Record
-- <p>The unit of data of the Amazon Kinesis stream, which is composed of a sequence number, a partition key, and a data blob.</p>
-- @param _Data [Data] <p>The data blob. The data in the blob is both opaque and immutable to the Amazon Kinesis service, which does not inspect, interpret, or change the data in the blob in any way. When the data blob (the payload before base64-encoding) is added to the partition key size, the total size must not exceed the maximum record size (1 MB).</p>
-- @param _PartitionKey [PartitionKey] <p>Identifies which shard in the stream the data record is assigned to.</p>
-- @param _ApproximateArrivalTimestamp [Timestamp] <p>The approximate time that the record was inserted into the stream.</p>
-- @param _SequenceNumber [SequenceNumber] <p>The unique identifier of the record in the stream.</p>
-- Required parameter: SequenceNumber
-- Required parameter: Data
-- Required parameter: PartitionKey
function M.Record(_Data, _PartitionKey, _ApproximateArrivalTimestamp, _SequenceNumber, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Record")
	local t = { 
		["Data"] = _Data,
		["PartitionKey"] = _PartitionKey,
		["ApproximateArrivalTimestamp"] = _ApproximateArrivalTimestamp,
		["SequenceNumber"] = _SequenceNumber,
	}
	asserts.AssertRecord(t)
	return t
end

keys.IncreaseStreamRetentionPeriodInput = { ["RetentionPeriodHours"] = true, ["StreamName"] = true, nil }

function asserts.AssertIncreaseStreamRetentionPeriodInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IncreaseStreamRetentionPeriodInput to be of type 'table'")
	assert(struct["StreamName"], "Expected key StreamName to exist in table")
	assert(struct["RetentionPeriodHours"], "Expected key RetentionPeriodHours to exist in table")
	if struct["RetentionPeriodHours"] then asserts.AssertPositiveIntegerObject(struct["RetentionPeriodHours"]) end
	if struct["StreamName"] then asserts.AssertStreamName(struct["StreamName"]) end
	for k,_ in pairs(struct) do
		assert(keys.IncreaseStreamRetentionPeriodInput[k], "IncreaseStreamRetentionPeriodInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IncreaseStreamRetentionPeriodInput
-- <p>Represents the input for <a>IncreaseStreamRetentionPeriod</a>.</p>
-- @param _RetentionPeriodHours [PositiveIntegerObject] <p>The new retention period of the stream, in hours. Must be more than the current retention period.</p>
-- @param _StreamName [StreamName] <p>The name of the stream to modify.</p>
-- Required parameter: StreamName
-- Required parameter: RetentionPeriodHours
function M.IncreaseStreamRetentionPeriodInput(_RetentionPeriodHours, _StreamName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating IncreaseStreamRetentionPeriodInput")
	local t = { 
		["RetentionPeriodHours"] = _RetentionPeriodHours,
		["StreamName"] = _StreamName,
	}
	asserts.AssertIncreaseStreamRetentionPeriodInput(t)
	return t
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
-- @param _StreamName [StreamName] <p>The name of the stream.</p>
-- @param _TagKeys [TagKeyList] <p>A list of tag keys. Each corresponding tag is removed from the stream.</p>
-- Required parameter: StreamName
-- Required parameter: TagKeys
function M.RemoveTagsFromStreamInput(_StreamName, _TagKeys, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RemoveTagsFromStreamInput")
	local t = { 
		["StreamName"] = _StreamName,
		["TagKeys"] = _TagKeys,
	}
	asserts.AssertRemoveTagsFromStreamInput(t)
	return t
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
-- @param _TargetShardCount [PositiveIntegerObject] <p>The updated number of shards.</p>
-- @param _StreamName [StreamName] <p>The name of the stream.</p>
-- @param _CurrentShardCount [PositiveIntegerObject] <p>The current number of shards.</p>
function M.UpdateShardCountOutput(_TargetShardCount, _StreamName, _CurrentShardCount, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateShardCountOutput")
	local t = { 
		["TargetShardCount"] = _TargetShardCount,
		["StreamName"] = _StreamName,
		["CurrentShardCount"] = _CurrentShardCount,
	}
	asserts.AssertUpdateShardCountOutput(t)
	return t
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
-- @param _ShardLevelMetrics [MetricsNameList] <p>List of shard-level metrics to enable.</p> <p>The following are the valid shard-level metrics. The value "<code>ALL</code>" enables every metric.</p> <ul> <li> <p> <code>IncomingBytes</code> </p> </li> <li> <p> <code>IncomingRecords</code> </p> </li> <li> <p> <code>OutgoingBytes</code> </p> </li> <li> <p> <code>OutgoingRecords</code> </p> </li> <li> <p> <code>WriteProvisionedThroughputExceeded</code> </p> </li> <li> <p> <code>ReadProvisionedThroughputExceeded</code> </p> </li> <li> <p> <code>IteratorAgeMilliseconds</code> </p> </li> <li> <p> <code>ALL</code> </p> </li> </ul> <p>For more information, see <a href="http://docs.aws.amazon.com/kinesis/latest/dev/monitoring-with-cloudwatch.html">Monitoring the Amazon Kinesis Streams Service with Amazon CloudWatch</a> in the <i>Amazon Kinesis Streams Developer Guide</i>.</p>
-- @param _StreamName [StreamName] <p>The name of the stream for which to enable enhanced monitoring.</p>
-- Required parameter: StreamName
-- Required parameter: ShardLevelMetrics
function M.EnableEnhancedMonitoringInput(_ShardLevelMetrics, _StreamName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EnableEnhancedMonitoringInput")
	local t = { 
		["ShardLevelMetrics"] = _ShardLevelMetrics,
		["StreamName"] = _StreamName,
	}
	asserts.AssertEnableEnhancedMonitoringInput(t)
	return t
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
-- @param _message [ErrorMessage] <p>A message that provides information about the error.</p>
function M.InvalidArgumentException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidArgumentException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertInvalidArgumentException(t)
	return t
end

keys.StreamDescription = { ["HasMoreShards"] = true, ["RetentionPeriodHours"] = true, ["StreamName"] = true, ["Shards"] = true, ["StreamARN"] = true, ["EnhancedMonitoring"] = true, ["StreamCreationTimestamp"] = true, ["StreamStatus"] = true, nil }

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
	if struct["RetentionPeriodHours"] then asserts.AssertPositiveIntegerObject(struct["RetentionPeriodHours"]) end
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
-- @param _HasMoreShards [BooleanObject] <p>If set to <code>true</code>, more shards in the stream are available to describe.</p>
-- @param _RetentionPeriodHours [PositiveIntegerObject] <p>The current retention period, in hours.</p>
-- @param _StreamName [StreamName] <p>The name of the stream being described.</p>
-- @param _Shards [ShardList] <p>The shards that comprise the stream.</p>
-- @param _StreamARN [StreamARN] <p>The Amazon Resource Name (ARN) for the stream being described.</p>
-- @param _EnhancedMonitoring [EnhancedMonitoringList] <p>Represents the current enhanced monitoring settings of the stream.</p>
-- @param _StreamCreationTimestamp [Timestamp] <p>The approximate time that the stream was created.</p>
-- @param _StreamStatus [StreamStatus] <p>The current status of the stream being described. The stream status is one of the following states:</p> <ul> <li> <p> <code>CREATING</code> - The stream is being created. Amazon Kinesis immediately returns and sets <code>StreamStatus</code> to <code>CREATING</code>.</p> </li> <li> <p> <code>DELETING</code> - The stream is being deleted. The specified stream is in the <code>DELETING</code> state until Amazon Kinesis completes the deletion.</p> </li> <li> <p> <code>ACTIVE</code> - The stream exists and is ready for read and write operations or deletion. You should perform read and write operations only on an <code>ACTIVE</code> stream.</p> </li> <li> <p> <code>UPDATING</code> - Shards in the stream are being merged or split. Read and write operations continue to work while the stream is in the <code>UPDATING</code> state.</p> </li> </ul>
-- Required parameter: StreamName
-- Required parameter: StreamARN
-- Required parameter: StreamStatus
-- Required parameter: Shards
-- Required parameter: HasMoreShards
-- Required parameter: RetentionPeriodHours
-- Required parameter: StreamCreationTimestamp
-- Required parameter: EnhancedMonitoring
function M.StreamDescription(_HasMoreShards, _RetentionPeriodHours, _StreamName, _Shards, _StreamARN, _EnhancedMonitoring, _StreamCreationTimestamp, _StreamStatus, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StreamDescription")
	local t = { 
		["HasMoreShards"] = _HasMoreShards,
		["RetentionPeriodHours"] = _RetentionPeriodHours,
		["StreamName"] = _StreamName,
		["Shards"] = _Shards,
		["StreamARN"] = _StreamARN,
		["EnhancedMonitoring"] = _EnhancedMonitoring,
		["StreamCreationTimestamp"] = _StreamCreationTimestamp,
		["StreamStatus"] = _StreamStatus,
	}
	asserts.AssertStreamDescription(t)
	return t
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
-- <p>The request rate for the stream is too high, or the requested data is too large for the available throughput. Reduce the frequency or size of your requests. For more information, see <a href="http://docs.aws.amazon.com/kinesis/latest/dev/service-sizes-and-limits.html">Streams Limits</a> in the <i>Amazon Kinesis Streams Developer Guide</i>, and <a href="http://docs.aws.amazon.com/general/latest/gr/api-retries.html">Error Retries and Exponential Backoff in AWS</a> in the <i>AWS General Reference</i>.</p>
-- @param _message [ErrorMessage] <p>A message that provides information about the error.</p>
function M.ProvisionedThroughputExceededException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ProvisionedThroughputExceededException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertProvisionedThroughputExceededException(t)
	return t
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
-- @param _ShardLevelMetrics [MetricsNameList] <p>List of shard-level metrics.</p> <p>The following are the valid shard-level metrics. The value "<code>ALL</code>" enhances every metric.</p> <ul> <li> <p> <code>IncomingBytes</code> </p> </li> <li> <p> <code>IncomingRecords</code> </p> </li> <li> <p> <code>OutgoingBytes</code> </p> </li> <li> <p> <code>OutgoingRecords</code> </p> </li> <li> <p> <code>WriteProvisionedThroughputExceeded</code> </p> </li> <li> <p> <code>ReadProvisionedThroughputExceeded</code> </p> </li> <li> <p> <code>IteratorAgeMilliseconds</code> </p> </li> <li> <p> <code>ALL</code> </p> </li> </ul> <p>For more information, see <a href="http://docs.aws.amazon.com/kinesis/latest/dev/monitoring-with-cloudwatch.html">Monitoring the Amazon Kinesis Streams Service with Amazon CloudWatch</a> in the <i>Amazon Kinesis Streams Developer Guide</i>.</p>
function M.EnhancedMetrics(_ShardLevelMetrics, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EnhancedMetrics")
	local t = { 
		["ShardLevelMetrics"] = _ShardLevelMetrics,
	}
	asserts.AssertEnhancedMetrics(t)
	return t
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
-- @param _StreamName [StreamName] <p>The name of the stream.</p>
-- @param _Limit [ListTagsForStreamInputLimit] <p>The number of tags to return. If this number is less than the total number of tags associated with the stream, <code>HasMoreTags</code> is set to <code>true</code>. To list additional tags, set <code>ExclusiveStartTagKey</code> to the last key in the response.</p>
-- @param _ExclusiveStartTagKey [TagKey] <p>The key to use as the starting point for the list of tags. If this parameter is set, <code>ListTagsForStream</code> gets all tags that occur after <code>ExclusiveStartTagKey</code>. </p>
-- Required parameter: StreamName
function M.ListTagsForStreamInput(_StreamName, _Limit, _ExclusiveStartTagKey, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTagsForStreamInput")
	local t = { 
		["StreamName"] = _StreamName,
		["Limit"] = _Limit,
		["ExclusiveStartTagKey"] = _ExclusiveStartTagKey,
	}
	asserts.AssertListTagsForStreamInput(t)
	return t
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
-- @param _ShardId [ShardId] <p>The shard ID for an individual record result.</p>
-- @param _ErrorCode [ErrorCode] <p>The error code for an individual record result. <code>ErrorCodes</code> can be either <code>ProvisionedThroughputExceededException</code> or <code>InternalFailure</code>.</p>
-- @param _ErrorMessage [ErrorMessage] <p>The error message for an individual record result. An <code>ErrorCode</code> value of <code>ProvisionedThroughputExceededException</code> has an error message that includes the account ID, stream name, and shard ID. An <code>ErrorCode</code> value of <code>InternalFailure</code> has the error message <code>"Internal Service Failure"</code>.</p>
-- @param _SequenceNumber [SequenceNumber] <p>The sequence number for an individual record result.</p>
function M.PutRecordsResultEntry(_ShardId, _ErrorCode, _ErrorMessage, _SequenceNumber, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutRecordsResultEntry")
	local t = { 
		["ShardId"] = _ShardId,
		["ErrorCode"] = _ErrorCode,
		["ErrorMessage"] = _ErrorMessage,
		["SequenceNumber"] = _SequenceNumber,
	}
	asserts.AssertPutRecordsResultEntry(t)
	return t
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
-- @param _StreamNames [StreamNameList] <p>The names of the streams that are associated with the AWS account making the <code>ListStreams</code> request.</p>
-- @param _HasMoreStreams [BooleanObject] <p>If set to <code>true</code>, there are more streams available to list.</p>
-- Required parameter: StreamNames
-- Required parameter: HasMoreStreams
function M.ListStreamsOutput(_StreamNames, _HasMoreStreams, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListStreamsOutput")
	local t = { 
		["StreamNames"] = _StreamNames,
		["HasMoreStreams"] = _HasMoreStreams,
	}
	asserts.AssertListStreamsOutput(t)
	return t
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
-- @param _HasMoreTags [BooleanObject] <p>If set to <code>true</code>, more tags are available. To request additional tags, set <code>ExclusiveStartTagKey</code> to the key of the last tag returned.</p>
-- @param _Tags [TagList] <p>A list of tags associated with <code>StreamName</code>, starting with the first tag after <code>ExclusiveStartTagKey</code> and up to the specified <code>Limit</code>. </p>
-- Required parameter: Tags
-- Required parameter: HasMoreTags
function M.ListTagsForStreamOutput(_HasMoreTags, _Tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTagsForStreamOutput")
	local t = { 
		["HasMoreTags"] = _HasMoreTags,
		["Tags"] = _Tags,
	}
	asserts.AssertListTagsForStreamOutput(t)
	return t
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
-- @param _Records [RecordList] <p>The data records retrieved from the shard.</p>
-- @param _NextShardIterator [ShardIterator] <p>The next position in the shard from which to start sequentially reading data records. If set to <code>null</code>, the shard has been closed and the requested iterator will not return any more data. </p>
-- @param _MillisBehindLatest [MillisBehindLatest] <p>The number of milliseconds the <a>GetRecords</a> response is from the tip of the stream, indicating how far behind current time the consumer is. A value of zero indicates record processing is caught up, and there are no new records to process at this moment.</p>
-- Required parameter: Records
function M.GetRecordsOutput(_Records, _NextShardIterator, _MillisBehindLatest, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetRecordsOutput")
	local t = { 
		["Records"] = _Records,
		["NextShardIterator"] = _NextShardIterator,
		["MillisBehindLatest"] = _MillisBehindLatest,
	}
	asserts.AssertGetRecordsOutput(t)
	return t
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
function M.DescribeLimitsInput(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeLimitsInput")
	local t = { 
	}
	asserts.AssertDescribeLimitsInput(t)
	return t
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
-- @param _StreamName [StreamName] <p>A name to identify the stream. The stream name is scoped to the AWS account used by the application that creates the stream. It is also scoped by region. That is, two streams in two different AWS accounts can have the same name, and two streams in the same AWS account but in two different regions can have the same name.</p>
-- @param _ShardCount [PositiveIntegerObject] <p>The number of shards that the stream will use. The throughput of the stream is a function of the number of shards; more shards are required for greater provisioned throughput.</p> <p>DefaultShardLimit;</p>
-- Required parameter: StreamName
-- Required parameter: ShardCount
function M.CreateStreamInput(_StreamName, _ShardCount, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateStreamInput")
	local t = { 
		["StreamName"] = _StreamName,
		["ShardCount"] = _ShardCount,
	}
	asserts.AssertCreateStreamInput(t)
	return t
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
-- @param _ShardIterator [ShardIterator] <p>The position in the shard from which you want to start sequentially reading data records. A shard iterator specifies this position using the sequence number of a data record in the shard.</p>
-- @param _Limit [GetRecordsInputLimit] <p>The maximum number of records to return. Specify a value of up to 10,000. If you specify a value that is greater than 10,000, <a>GetRecords</a> throws <code>InvalidArgumentException</code>.</p>
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
-- @param _StreamName [StreamName] <p>The name of the stream to describe.</p>
-- @param _Limit [DescribeStreamInputLimit] <p>The maximum number of shards to return in a single call. The default value is 100. If you specify a value greater than 100, at most 100 shards are returned.</p>
-- @param _ExclusiveStartShardId [ShardId] <p>The shard ID of the shard to start with.</p>
-- Required parameter: StreamName
function M.DescribeStreamInput(_StreamName, _Limit, _ExclusiveStartShardId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeStreamInput")
	local t = { 
		["StreamName"] = _StreamName,
		["Limit"] = _Limit,
		["ExclusiveStartShardId"] = _ExclusiveStartShardId,
	}
	asserts.AssertDescribeStreamInput(t)
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
-- <p>The requested resource could not be found. The stream might not be specified correctly.</p>
-- @param _message [ErrorMessage] <p>A message that provides information about the error.</p>
function M.ResourceNotFoundException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceNotFoundException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertResourceNotFoundException(t)
	return t
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

function asserts.AssertStreamARN(str)
	assert(str)
	assert(type(str) == "string", "Expected StreamARN to be of type 'string'")
end

--  
function M.StreamARN(str)
	asserts.AssertStreamARN(str)
	return str
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

function asserts.AssertShardIteratorType(str)
	assert(str)
	assert(type(str) == "string", "Expected ShardIteratorType to be of type 'string'")
end

--  
function M.ShardIteratorType(str)
	asserts.AssertShardIteratorType(str)
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

function asserts.AssertStreamStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected StreamStatus to be of type 'string'")
end

--  
function M.StreamStatus(str)
	asserts.AssertStreamStatus(str)
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

function asserts.AssertListTagsForStreamInputLimit(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected ListTagsForStreamInputLimit to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 10, "Expected integer to be max 10")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.ListTagsForStreamInputLimit(integer)
	asserts.AssertListTagsForStreamInputLimit(integer)
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
	assert(type(string) == "string", "Expected Data to be of type 'string'")
	assert(#blob <= 1048576, "Expected blob to be max 1048576")
end

function M.Data(blob)
	asserts.AssertData(blob)
	return blob
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

function asserts.AssertTagKeyList(list)
	assert(list)
	assert(type(list) == "table", "Expected TagKeyList to be of type ''table")
	assert(#list <= 10, "Expected list to be contain 10 elements")
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
--- Call GetRecords asynchronously, invoking a callback when done
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

--- Call GetRecords synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetRecordsInput
-- @return response
-- @return error_message
function M.GetRecordsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetRecordsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call IncreaseStreamRetentionPeriod asynchronously, invoking a callback when done
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

--- Call IncreaseStreamRetentionPeriod synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param IncreaseStreamRetentionPeriodInput
-- @return response
-- @return error_message
function M.IncreaseStreamRetentionPeriodSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.IncreaseStreamRetentionPeriodAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeLimits asynchronously, invoking a callback when done
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

--- Call DescribeLimits synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeLimitsInput
-- @return response
-- @return error_message
function M.DescribeLimitsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeLimitsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListTagsForStream asynchronously, invoking a callback when done
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

--- Call ListTagsForStream synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListTagsForStreamInput
-- @return response
-- @return error_message
function M.ListTagsForStreamSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListTagsForStreamAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call PutRecords asynchronously, invoking a callback when done
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

--- Call PutRecords synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutRecordsInput
-- @return response
-- @return error_message
function M.PutRecordsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutRecordsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetShardIterator asynchronously, invoking a callback when done
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

--- Call GetShardIterator synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetShardIteratorInput
-- @return response
-- @return error_message
function M.GetShardIteratorSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetShardIteratorAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteStream asynchronously, invoking a callback when done
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

--- Call DeleteStream synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteStreamInput
-- @return response
-- @return error_message
function M.DeleteStreamSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteStreamAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call AddTagsToStream asynchronously, invoking a callback when done
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

--- Call AddTagsToStream synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AddTagsToStreamInput
-- @return response
-- @return error_message
function M.AddTagsToStreamSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AddTagsToStreamAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call RemoveTagsFromStream asynchronously, invoking a callback when done
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

--- Call RemoveTagsFromStream synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RemoveTagsFromStreamInput
-- @return response
-- @return error_message
function M.RemoveTagsFromStreamSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RemoveTagsFromStreamAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DecreaseStreamRetentionPeriod asynchronously, invoking a callback when done
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

--- Call DecreaseStreamRetentionPeriod synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DecreaseStreamRetentionPeriodInput
-- @return response
-- @return error_message
function M.DecreaseStreamRetentionPeriodSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DecreaseStreamRetentionPeriodAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DisableEnhancedMonitoring asynchronously, invoking a callback when done
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

--- Call DisableEnhancedMonitoring synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DisableEnhancedMonitoringInput
-- @return response
-- @return error_message
function M.DisableEnhancedMonitoringSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DisableEnhancedMonitoringAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call SplitShard asynchronously, invoking a callback when done
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

--- Call SplitShard synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SplitShardInput
-- @return response
-- @return error_message
function M.SplitShardSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SplitShardAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeStream asynchronously, invoking a callback when done
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

--- Call DescribeStream synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeStreamInput
-- @return response
-- @return error_message
function M.DescribeStreamSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeStreamAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateStream asynchronously, invoking a callback when done
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

--- Call CreateStream synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateStreamInput
-- @return response
-- @return error_message
function M.CreateStreamSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateStreamAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call PutRecord asynchronously, invoking a callback when done
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

--- Call PutRecord synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutRecordInput
-- @return response
-- @return error_message
function M.PutRecordSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutRecordAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListStreams asynchronously, invoking a callback when done
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

--- Call ListStreams synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListStreamsInput
-- @return response
-- @return error_message
function M.ListStreamsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListStreamsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call MergeShards asynchronously, invoking a callback when done
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

--- Call MergeShards synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param MergeShardsInput
-- @return response
-- @return error_message
function M.MergeShardsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.MergeShardsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateShardCount asynchronously, invoking a callback when done
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

--- Call UpdateShardCount synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateShardCountInput
-- @return response
-- @return error_message
function M.UpdateShardCountSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateShardCountAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call EnableEnhancedMonitoring asynchronously, invoking a callback when done
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

--- Call EnableEnhancedMonitoring synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param EnableEnhancedMonitoringInput
-- @return response
-- @return error_message
function M.EnableEnhancedMonitoringSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.EnableEnhancedMonitoringAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end


return M
