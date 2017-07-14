--- GENERATED CODE - DO NOT MODIFY
-- Amazon Kinesis Firehose (firehose-2015-08-04)

local M = {}

M.metadata = {
	api_version = "2015-08-04",
	json_version = "1.1",
	protocol = "json",
	checksum_format = "",
	endpoint_prefix = "firehose",
	service_abbreviation = "Firehose",
	service_full_name = "Amazon Kinesis Firehose",
	signature_version = "v4",
	target_prefix = "Firehose_20150804",
	timestamp_format = "",
	global_endpoint = "",
	uid = "firehose-2015-08-04",
}

local ServiceUnavailableException_keys = { "message" = true, nil }

function M.AssertServiceUnavailableException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ServiceUnavailableException to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(ServiceUnavailableException_keys[k], "ServiceUnavailableException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ServiceUnavailableException
-- &lt;p&gt;The service is unavailable, back off and retry the operation. If you continue to see the exception, throughput limits for the delivery stream may have been exceeded. For more information about limits and how to request an increase, see &lt;a href=&quot;http://docs.aws.amazon.com/firehose/latest/dev/limits.html&quot;&gt;Amazon Kinesis Firehose Limits&lt;/a&gt;.&lt;/p&gt;
-- @param message [ErrorMessage] &lt;p&gt;A message that provides information about the error.&lt;/p&gt;
function M.ServiceUnavailableException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ServiceUnavailableException")
	local t = { 
		["message"] = message,
	}
	M.AssertServiceUnavailableException(t)
	return t
end

local UpdateDestinationOutput_keys = { nil }

function M.AssertUpdateDestinationOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateDestinationOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(UpdateDestinationOutput_keys[k], "UpdateDestinationOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateDestinationOutput
--  
function M.UpdateDestinationOutput(...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateDestinationOutput")
	local t = { 
	}
	M.AssertUpdateDestinationOutput(t)
	return t
end

local KMSEncryptionConfig_keys = { "AWSKMSKeyARN" = true, nil }

function M.AssertKMSEncryptionConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected KMSEncryptionConfig to be of type 'table'")
	assert(struct["AWSKMSKeyARN"], "Expected key AWSKMSKeyARN to exist in table")
	if struct["AWSKMSKeyARN"] then M.AssertAWSKMSKeyARN(struct["AWSKMSKeyARN"]) end
	for k,_ in pairs(struct) do
		assert(KMSEncryptionConfig_keys[k], "KMSEncryptionConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type KMSEncryptionConfig
-- &lt;p&gt;Describes an encryption key for a destination in Amazon S3.&lt;/p&gt;
-- @param AWSKMSKeyARN [AWSKMSKeyARN] &lt;p&gt;The ARN of the encryption key. Must belong to the same region as the destination Amazon S3 bucket.&lt;/p&gt;
-- Required parameter: AWSKMSKeyARN
function M.KMSEncryptionConfig(AWSKMSKeyARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating KMSEncryptionConfig")
	local t = { 
		["AWSKMSKeyARN"] = AWSKMSKeyARN,
	}
	M.AssertKMSEncryptionConfig(t)
	return t
end

local PutRecordBatchOutput_keys = { "FailedPutCount" = true, "RequestResponses" = true, nil }

function M.AssertPutRecordBatchOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutRecordBatchOutput to be of type 'table'")
	assert(struct["FailedPutCount"], "Expected key FailedPutCount to exist in table")
	assert(struct["RequestResponses"], "Expected key RequestResponses to exist in table")
	if struct["FailedPutCount"] then M.AssertNonNegativeIntegerObject(struct["FailedPutCount"]) end
	if struct["RequestResponses"] then M.AssertPutRecordBatchResponseEntryList(struct["RequestResponses"]) end
	for k,_ in pairs(struct) do
		assert(PutRecordBatchOutput_keys[k], "PutRecordBatchOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutRecordBatchOutput
--  
-- @param FailedPutCount [NonNegativeIntegerObject] &lt;p&gt;The number of records that might have failed processing.&lt;/p&gt;
-- @param RequestResponses [PutRecordBatchResponseEntryList] &lt;p&gt;The results array. For each record, the index of the response element is the same as the index used in the request array.&lt;/p&gt;
-- Required parameter: FailedPutCount
-- Required parameter: RequestResponses
function M.PutRecordBatchOutput(FailedPutCount, RequestResponses, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutRecordBatchOutput")
	local t = { 
		["FailedPutCount"] = FailedPutCount,
		["RequestResponses"] = RequestResponses,
	}
	M.AssertPutRecordBatchOutput(t)
	return t
end

local PutRecordInput_keys = { "Record" = true, "DeliveryStreamName" = true, nil }

function M.AssertPutRecordInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutRecordInput to be of type 'table'")
	assert(struct["DeliveryStreamName"], "Expected key DeliveryStreamName to exist in table")
	assert(struct["Record"], "Expected key Record to exist in table")
	if struct["Record"] then M.AssertRecord(struct["Record"]) end
	if struct["DeliveryStreamName"] then M.AssertDeliveryStreamName(struct["DeliveryStreamName"]) end
	for k,_ in pairs(struct) do
		assert(PutRecordInput_keys[k], "PutRecordInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutRecordInput
--  
-- @param Record [Record] &lt;p&gt;The record.&lt;/p&gt;
-- @param DeliveryStreamName [DeliveryStreamName] &lt;p&gt;The name of the delivery stream.&lt;/p&gt;
-- Required parameter: DeliveryStreamName
-- Required parameter: Record
function M.PutRecordInput(Record, DeliveryStreamName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutRecordInput")
	local t = { 
		["Record"] = Record,
		["DeliveryStreamName"] = DeliveryStreamName,
	}
	M.AssertPutRecordInput(t)
	return t
end

local DeliveryStreamDescription_keys = { "HasMoreDestinations" = true, "LastUpdateTimestamp" = true, "VersionId" = true, "CreateTimestamp" = true, "DeliveryStreamARN" = true, "DeliveryStreamStatus" = true, "DeliveryStreamName" = true, "Destinations" = true, nil }

function M.AssertDeliveryStreamDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeliveryStreamDescription to be of type 'table'")
	assert(struct["DeliveryStreamName"], "Expected key DeliveryStreamName to exist in table")
	assert(struct["DeliveryStreamARN"], "Expected key DeliveryStreamARN to exist in table")
	assert(struct["DeliveryStreamStatus"], "Expected key DeliveryStreamStatus to exist in table")
	assert(struct["VersionId"], "Expected key VersionId to exist in table")
	assert(struct["Destinations"], "Expected key Destinations to exist in table")
	assert(struct["HasMoreDestinations"], "Expected key HasMoreDestinations to exist in table")
	if struct["HasMoreDestinations"] then M.AssertBooleanObject(struct["HasMoreDestinations"]) end
	if struct["LastUpdateTimestamp"] then M.AssertTimestamp(struct["LastUpdateTimestamp"]) end
	if struct["VersionId"] then M.AssertDeliveryStreamVersionId(struct["VersionId"]) end
	if struct["CreateTimestamp"] then M.AssertTimestamp(struct["CreateTimestamp"]) end
	if struct["DeliveryStreamARN"] then M.AssertDeliveryStreamARN(struct["DeliveryStreamARN"]) end
	if struct["DeliveryStreamStatus"] then M.AssertDeliveryStreamStatus(struct["DeliveryStreamStatus"]) end
	if struct["DeliveryStreamName"] then M.AssertDeliveryStreamName(struct["DeliveryStreamName"]) end
	if struct["Destinations"] then M.AssertDestinationDescriptionList(struct["Destinations"]) end
	for k,_ in pairs(struct) do
		assert(DeliveryStreamDescription_keys[k], "DeliveryStreamDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeliveryStreamDescription
-- &lt;p&gt;Contains information about a delivery stream.&lt;/p&gt;
-- @param HasMoreDestinations [BooleanObject] &lt;p&gt;Indicates whether there are more destinations available to list.&lt;/p&gt;
-- @param LastUpdateTimestamp [Timestamp] &lt;p&gt;The date and time that the delivery stream was last updated.&lt;/p&gt;
-- @param VersionId [DeliveryStreamVersionId] &lt;p&gt;Each time the destination is updated for a delivery stream, the version ID is changed, and the current version ID is required when updating the destination. This is so that the service knows it is applying the changes to the correct version of the delivery stream.&lt;/p&gt;
-- @param CreateTimestamp [Timestamp] &lt;p&gt;The date and time that the delivery stream was created.&lt;/p&gt;
-- @param DeliveryStreamARN [DeliveryStreamARN] &lt;p&gt;The Amazon Resource Name (ARN) of the delivery stream.&lt;/p&gt;
-- @param DeliveryStreamStatus [DeliveryStreamStatus] &lt;p&gt;The status of the delivery stream.&lt;/p&gt;
-- @param DeliveryStreamName [DeliveryStreamName] &lt;p&gt;The name of the delivery stream.&lt;/p&gt;
-- @param Destinations [DestinationDescriptionList] &lt;p&gt;The destinations.&lt;/p&gt;
-- Required parameter: DeliveryStreamName
-- Required parameter: DeliveryStreamARN
-- Required parameter: DeliveryStreamStatus
-- Required parameter: VersionId
-- Required parameter: Destinations
-- Required parameter: HasMoreDestinations
function M.DeliveryStreamDescription(HasMoreDestinations, LastUpdateTimestamp, VersionId, CreateTimestamp, DeliveryStreamARN, DeliveryStreamStatus, DeliveryStreamName, Destinations, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeliveryStreamDescription")
	local t = { 
		["HasMoreDestinations"] = HasMoreDestinations,
		["LastUpdateTimestamp"] = LastUpdateTimestamp,
		["VersionId"] = VersionId,
		["CreateTimestamp"] = CreateTimestamp,
		["DeliveryStreamARN"] = DeliveryStreamARN,
		["DeliveryStreamStatus"] = DeliveryStreamStatus,
		["DeliveryStreamName"] = DeliveryStreamName,
		["Destinations"] = Destinations,
	}
	M.AssertDeliveryStreamDescription(t)
	return t
end

local S3DestinationDescription_keys = { "RoleARN" = true, "Prefix" = true, "BufferingHints" = true, "EncryptionConfiguration" = true, "CompressionFormat" = true, "CloudWatchLoggingOptions" = true, "BucketARN" = true, nil }

function M.AssertS3DestinationDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected S3DestinationDescription to be of type 'table'")
	assert(struct["RoleARN"], "Expected key RoleARN to exist in table")
	assert(struct["BucketARN"], "Expected key BucketARN to exist in table")
	assert(struct["BufferingHints"], "Expected key BufferingHints to exist in table")
	assert(struct["CompressionFormat"], "Expected key CompressionFormat to exist in table")
	assert(struct["EncryptionConfiguration"], "Expected key EncryptionConfiguration to exist in table")
	if struct["RoleARN"] then M.AssertRoleARN(struct["RoleARN"]) end
	if struct["Prefix"] then M.AssertPrefix(struct["Prefix"]) end
	if struct["BufferingHints"] then M.AssertBufferingHints(struct["BufferingHints"]) end
	if struct["EncryptionConfiguration"] then M.AssertEncryptionConfiguration(struct["EncryptionConfiguration"]) end
	if struct["CompressionFormat"] then M.AssertCompressionFormat(struct["CompressionFormat"]) end
	if struct["CloudWatchLoggingOptions"] then M.AssertCloudWatchLoggingOptions(struct["CloudWatchLoggingOptions"]) end
	if struct["BucketARN"] then M.AssertBucketARN(struct["BucketARN"]) end
	for k,_ in pairs(struct) do
		assert(S3DestinationDescription_keys[k], "S3DestinationDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type S3DestinationDescription
-- &lt;p&gt;Describes a destination in Amazon S3.&lt;/p&gt;
-- @param RoleARN [RoleARN] &lt;p&gt;The ARN of the AWS credentials.&lt;/p&gt;
-- @param Prefix [Prefix] &lt;p&gt;The &quot;YYYY/MM/DD/HH&quot; time format prefix is automatically used for delivered S3 files. You can specify an extra prefix to be added in front of the time format prefix. Note that if the prefix ends with a slash, it appears as a folder in the S3 bucket. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/firehose/latest/dev/basic-deliver.html&quot;&gt;Amazon S3 Object Name Format&lt;/a&gt; in the &lt;i&gt;Amazon Kinesis Firehose Developer Guide&lt;/i&gt;.&lt;/p&gt;
-- @param BufferingHints [BufferingHints] &lt;p&gt;The buffering option. If no value is specified, &lt;b&gt;BufferingHints&lt;/b&gt; object default values are used.&lt;/p&gt;
-- @param EncryptionConfiguration [EncryptionConfiguration] &lt;p&gt;The encryption configuration. If no value is specified, the default is no encryption.&lt;/p&gt;
-- @param CompressionFormat [CompressionFormat] &lt;p&gt;The compression format. If no value is specified, the default is &lt;code&gt;UNCOMPRESSED&lt;/code&gt;.&lt;/p&gt;
-- @param CloudWatchLoggingOptions [CloudWatchLoggingOptions] &lt;p&gt;The CloudWatch logging options for your delivery stream.&lt;/p&gt;
-- @param BucketARN [BucketARN] &lt;p&gt;The ARN of the S3 bucket.&lt;/p&gt;
-- Required parameter: RoleARN
-- Required parameter: BucketARN
-- Required parameter: BufferingHints
-- Required parameter: CompressionFormat
-- Required parameter: EncryptionConfiguration
function M.S3DestinationDescription(RoleARN, Prefix, BufferingHints, EncryptionConfiguration, CompressionFormat, CloudWatchLoggingOptions, BucketARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating S3DestinationDescription")
	local t = { 
		["RoleARN"] = RoleARN,
		["Prefix"] = Prefix,
		["BufferingHints"] = BufferingHints,
		["EncryptionConfiguration"] = EncryptionConfiguration,
		["CompressionFormat"] = CompressionFormat,
		["CloudWatchLoggingOptions"] = CloudWatchLoggingOptions,
		["BucketARN"] = BucketARN,
	}
	M.AssertS3DestinationDescription(t)
	return t
end

local PutRecordBatchResponseEntry_keys = { "RecordId" = true, "ErrorCode" = true, "ErrorMessage" = true, nil }

function M.AssertPutRecordBatchResponseEntry(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutRecordBatchResponseEntry to be of type 'table'")
	if struct["RecordId"] then M.AssertPutResponseRecordId(struct["RecordId"]) end
	if struct["ErrorCode"] then M.AssertErrorCode(struct["ErrorCode"]) end
	if struct["ErrorMessage"] then M.AssertErrorMessage(struct["ErrorMessage"]) end
	for k,_ in pairs(struct) do
		assert(PutRecordBatchResponseEntry_keys[k], "PutRecordBatchResponseEntry contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutRecordBatchResponseEntry
-- &lt;p&gt;Contains the result for an individual record from a &lt;a&gt;PutRecordBatch&lt;/a&gt; request. If the record is successfully added to your delivery stream, it receives a record ID. If the record fails to be added to your delivery stream, the result includes an error code and an error message.&lt;/p&gt;
-- @param RecordId [PutResponseRecordId] &lt;p&gt;The ID of the record.&lt;/p&gt;
-- @param ErrorCode [ErrorCode] &lt;p&gt;The error code for an individual record result.&lt;/p&gt;
-- @param ErrorMessage [ErrorMessage] &lt;p&gt;The error message for an individual record result.&lt;/p&gt;
function M.PutRecordBatchResponseEntry(RecordId, ErrorCode, ErrorMessage, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutRecordBatchResponseEntry")
	local t = { 
		["RecordId"] = RecordId,
		["ErrorCode"] = ErrorCode,
		["ErrorMessage"] = ErrorMessage,
	}
	M.AssertPutRecordBatchResponseEntry(t)
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
-- &lt;p&gt;You have already reached the limit for a requested resource.&lt;/p&gt;
-- @param message [ErrorMessage] &lt;p&gt;A message that provides information about the error.&lt;/p&gt;
function M.LimitExceededException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LimitExceededException")
	local t = { 
		["message"] = message,
	}
	M.AssertLimitExceededException(t)
	return t
end

local ConcurrentModificationException_keys = { "message" = true, nil }

function M.AssertConcurrentModificationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConcurrentModificationException to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(ConcurrentModificationException_keys[k], "ConcurrentModificationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConcurrentModificationException
-- &lt;p&gt;Another modification has already happened. Fetch &lt;b&gt;VersionId&lt;/b&gt; again and use it to update the destination.&lt;/p&gt;
-- @param message [ErrorMessage] &lt;p&gt;A message that provides information about the error.&lt;/p&gt;
function M.ConcurrentModificationException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ConcurrentModificationException")
	local t = { 
		["message"] = message,
	}
	M.AssertConcurrentModificationException(t)
	return t
end

local ExtendedS3DestinationUpdate_keys = { "RoleARN" = true, "Prefix" = true, "BufferingHints" = true, "S3BackupUpdate" = true, "EncryptionConfiguration" = true, "CompressionFormat" = true, "S3BackupMode" = true, "CloudWatchLoggingOptions" = true, "BucketARN" = true, "ProcessingConfiguration" = true, nil }

function M.AssertExtendedS3DestinationUpdate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ExtendedS3DestinationUpdate to be of type 'table'")
	if struct["RoleARN"] then M.AssertRoleARN(struct["RoleARN"]) end
	if struct["Prefix"] then M.AssertPrefix(struct["Prefix"]) end
	if struct["BufferingHints"] then M.AssertBufferingHints(struct["BufferingHints"]) end
	if struct["S3BackupUpdate"] then M.AssertS3DestinationUpdate(struct["S3BackupUpdate"]) end
	if struct["EncryptionConfiguration"] then M.AssertEncryptionConfiguration(struct["EncryptionConfiguration"]) end
	if struct["CompressionFormat"] then M.AssertCompressionFormat(struct["CompressionFormat"]) end
	if struct["S3BackupMode"] then M.AssertS3BackupMode(struct["S3BackupMode"]) end
	if struct["CloudWatchLoggingOptions"] then M.AssertCloudWatchLoggingOptions(struct["CloudWatchLoggingOptions"]) end
	if struct["BucketARN"] then M.AssertBucketARN(struct["BucketARN"]) end
	if struct["ProcessingConfiguration"] then M.AssertProcessingConfiguration(struct["ProcessingConfiguration"]) end
	for k,_ in pairs(struct) do
		assert(ExtendedS3DestinationUpdate_keys[k], "ExtendedS3DestinationUpdate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ExtendedS3DestinationUpdate
-- &lt;p&gt;Describes an update for a destination in Amazon S3.&lt;/p&gt;
-- @param RoleARN [RoleARN] &lt;p&gt;The ARN of the AWS credentials.&lt;/p&gt;
-- @param Prefix [Prefix] &lt;p&gt;The &quot;YYYY/MM/DD/HH&quot; time format prefix is automatically used for delivered S3 files. You can specify an extra prefix to be added in front of the time format prefix. Note that if the prefix ends with a slash, it appears as a folder in the S3 bucket. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/firehose/latest/dev/basic-deliver.html&quot;&gt;Amazon S3 Object Name Format&lt;/a&gt; in the &lt;i&gt;Amazon Kinesis Firehose Developer Guide&lt;/i&gt;.&lt;/p&gt;
-- @param BufferingHints [BufferingHints] &lt;p&gt;The buffering option.&lt;/p&gt;
-- @param S3BackupUpdate [S3DestinationUpdate] &lt;p&gt;The Amazon S3 destination for backup.&lt;/p&gt;
-- @param EncryptionConfiguration [EncryptionConfiguration] &lt;p&gt;The encryption configuration. If no value is specified, the default is no encryption.&lt;/p&gt;
-- @param CompressionFormat [CompressionFormat] &lt;p&gt;The compression format. If no value is specified, the default is &lt;code&gt;UNCOMPRESSED&lt;/code&gt;. &lt;/p&gt;
-- @param S3BackupMode [S3BackupMode] &lt;p&gt;Enables or disables Amazon S3 backup mode.&lt;/p&gt;
-- @param CloudWatchLoggingOptions [CloudWatchLoggingOptions] &lt;p&gt;The CloudWatch logging options for your delivery stream.&lt;/p&gt;
-- @param BucketARN [BucketARN] &lt;p&gt;The ARN of the S3 bucket.&lt;/p&gt;
-- @param ProcessingConfiguration [ProcessingConfiguration] &lt;p&gt;The data processing configuration.&lt;/p&gt;
function M.ExtendedS3DestinationUpdate(RoleARN, Prefix, BufferingHints, S3BackupUpdate, EncryptionConfiguration, CompressionFormat, S3BackupMode, CloudWatchLoggingOptions, BucketARN, ProcessingConfiguration, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ExtendedS3DestinationUpdate")
	local t = { 
		["RoleARN"] = RoleARN,
		["Prefix"] = Prefix,
		["BufferingHints"] = BufferingHints,
		["S3BackupUpdate"] = S3BackupUpdate,
		["EncryptionConfiguration"] = EncryptionConfiguration,
		["CompressionFormat"] = CompressionFormat,
		["S3BackupMode"] = S3BackupMode,
		["CloudWatchLoggingOptions"] = CloudWatchLoggingOptions,
		["BucketARN"] = BucketARN,
		["ProcessingConfiguration"] = ProcessingConfiguration,
	}
	M.AssertExtendedS3DestinationUpdate(t)
	return t
end

local ProcessorParameter_keys = { "ParameterName" = true, "ParameterValue" = true, nil }

function M.AssertProcessorParameter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ProcessorParameter to be of type 'table'")
	assert(struct["ParameterName"], "Expected key ParameterName to exist in table")
	assert(struct["ParameterValue"], "Expected key ParameterValue to exist in table")
	if struct["ParameterName"] then M.AssertProcessorParameterName(struct["ParameterName"]) end
	if struct["ParameterValue"] then M.AssertProcessorParameterValue(struct["ParameterValue"]) end
	for k,_ in pairs(struct) do
		assert(ProcessorParameter_keys[k], "ProcessorParameter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ProcessorParameter
-- &lt;p&gt;Describes the processor parameter.&lt;/p&gt;
-- @param ParameterName [ProcessorParameterName] &lt;p&gt;The name of the parameter.&lt;/p&gt;
-- @param ParameterValue [ProcessorParameterValue] &lt;p&gt;The parameter value.&lt;/p&gt;
-- Required parameter: ParameterName
-- Required parameter: ParameterValue
function M.ProcessorParameter(ParameterName, ParameterValue, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ProcessorParameter")
	local t = { 
		["ParameterName"] = ParameterName,
		["ParameterValue"] = ParameterValue,
	}
	M.AssertProcessorParameter(t)
	return t
end

local BufferingHints_keys = { "IntervalInSeconds" = true, "SizeInMBs" = true, nil }

function M.AssertBufferingHints(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BufferingHints to be of type 'table'")
	if struct["IntervalInSeconds"] then M.AssertIntervalInSeconds(struct["IntervalInSeconds"]) end
	if struct["SizeInMBs"] then M.AssertSizeInMBs(struct["SizeInMBs"]) end
	for k,_ in pairs(struct) do
		assert(BufferingHints_keys[k], "BufferingHints contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BufferingHints
-- &lt;p&gt;Describes hints for the buffering to perform before delivering data to the destination. Please note that these options are treated as hints, and therefore Firehose may choose to use different values when it is optimal.&lt;/p&gt;
-- @param IntervalInSeconds [IntervalInSeconds] &lt;p&gt;Buffer incoming data for the specified period of time, in seconds, before delivering it to the destination. The default value is 300.&lt;/p&gt;
-- @param SizeInMBs [SizeInMBs] &lt;p&gt;Buffer incoming data to the specified size, in MBs, before delivering it to the destination. The default value is 5.&lt;/p&gt; &lt;p&gt;We recommend setting this parameter to a value greater than the amount of data you typically ingest into the delivery stream in 10 seconds. For example, if you typically ingest data at 1 MB/sec, the value should be 10 MB or higher.&lt;/p&gt;
function M.BufferingHints(IntervalInSeconds, SizeInMBs, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BufferingHints")
	local t = { 
		["IntervalInSeconds"] = IntervalInSeconds,
		["SizeInMBs"] = SizeInMBs,
	}
	M.AssertBufferingHints(t)
	return t
end

local Record_keys = { "Data" = true, nil }

function M.AssertRecord(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Record to be of type 'table'")
	assert(struct["Data"], "Expected key Data to exist in table")
	if struct["Data"] then M.AssertData(struct["Data"]) end
	for k,_ in pairs(struct) do
		assert(Record_keys[k], "Record contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Record
-- &lt;p&gt;The unit of data in a delivery stream.&lt;/p&gt;
-- @param Data [Data] &lt;p&gt;The data blob, which is base64-encoded when the blob is serialized. The maximum size of the data blob, before base64-encoding, is 1,000 KB.&lt;/p&gt;
-- Required parameter: Data
function M.Record(Data, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Record")
	local t = { 
		["Data"] = Data,
	}
	M.AssertRecord(t)
	return t
end

local ElasticsearchDestinationDescription_keys = { "IndexName" = true, "RetryOptions" = true, "RoleARN" = true, "BufferingHints" = true, "TypeName" = true, "S3BackupMode" = true, "CloudWatchLoggingOptions" = true, "DomainARN" = true, "S3DestinationDescription" = true, "IndexRotationPeriod" = true, "ProcessingConfiguration" = true, nil }

function M.AssertElasticsearchDestinationDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ElasticsearchDestinationDescription to be of type 'table'")
	if struct["IndexName"] then M.AssertElasticsearchIndexName(struct["IndexName"]) end
	if struct["RetryOptions"] then M.AssertElasticsearchRetryOptions(struct["RetryOptions"]) end
	if struct["RoleARN"] then M.AssertRoleARN(struct["RoleARN"]) end
	if struct["BufferingHints"] then M.AssertElasticsearchBufferingHints(struct["BufferingHints"]) end
	if struct["TypeName"] then M.AssertElasticsearchTypeName(struct["TypeName"]) end
	if struct["S3BackupMode"] then M.AssertElasticsearchS3BackupMode(struct["S3BackupMode"]) end
	if struct["CloudWatchLoggingOptions"] then M.AssertCloudWatchLoggingOptions(struct["CloudWatchLoggingOptions"]) end
	if struct["DomainARN"] then M.AssertElasticsearchDomainARN(struct["DomainARN"]) end
	if struct["S3DestinationDescription"] then M.AssertS3DestinationDescription(struct["S3DestinationDescription"]) end
	if struct["IndexRotationPeriod"] then M.AssertElasticsearchIndexRotationPeriod(struct["IndexRotationPeriod"]) end
	if struct["ProcessingConfiguration"] then M.AssertProcessingConfiguration(struct["ProcessingConfiguration"]) end
	for k,_ in pairs(struct) do
		assert(ElasticsearchDestinationDescription_keys[k], "ElasticsearchDestinationDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ElasticsearchDestinationDescription
-- &lt;p&gt;The destination description in Amazon ES.&lt;/p&gt;
-- @param IndexName [ElasticsearchIndexName] &lt;p&gt;The Elasticsearch index name.&lt;/p&gt;
-- @param RetryOptions [ElasticsearchRetryOptions] &lt;p&gt;The Amazon ES retry options.&lt;/p&gt;
-- @param RoleARN [RoleARN] &lt;p&gt;The ARN of the AWS credentials.&lt;/p&gt;
-- @param BufferingHints [ElasticsearchBufferingHints] &lt;p&gt;The buffering options.&lt;/p&gt;
-- @param TypeName [ElasticsearchTypeName] &lt;p&gt;The Elasticsearch type name.&lt;/p&gt;
-- @param S3BackupMode [ElasticsearchS3BackupMode] &lt;p&gt;The Amazon S3 backup mode.&lt;/p&gt;
-- @param CloudWatchLoggingOptions [CloudWatchLoggingOptions] &lt;p&gt;The CloudWatch logging options.&lt;/p&gt;
-- @param DomainARN [ElasticsearchDomainARN] &lt;p&gt;The ARN of the Amazon ES domain.&lt;/p&gt;
-- @param S3DestinationDescription [S3DestinationDescription] &lt;p&gt;The Amazon S3 destination.&lt;/p&gt;
-- @param IndexRotationPeriod [ElasticsearchIndexRotationPeriod] &lt;p&gt;The Elasticsearch index rotation period&lt;/p&gt;
-- @param ProcessingConfiguration [ProcessingConfiguration] &lt;p&gt;The data processing configuration.&lt;/p&gt;
function M.ElasticsearchDestinationDescription(IndexName, RetryOptions, RoleARN, BufferingHints, TypeName, S3BackupMode, CloudWatchLoggingOptions, DomainARN, S3DestinationDescription, IndexRotationPeriod, ProcessingConfiguration, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ElasticsearchDestinationDescription")
	local t = { 
		["IndexName"] = IndexName,
		["RetryOptions"] = RetryOptions,
		["RoleARN"] = RoleARN,
		["BufferingHints"] = BufferingHints,
		["TypeName"] = TypeName,
		["S3BackupMode"] = S3BackupMode,
		["CloudWatchLoggingOptions"] = CloudWatchLoggingOptions,
		["DomainARN"] = DomainARN,
		["S3DestinationDescription"] = S3DestinationDescription,
		["IndexRotationPeriod"] = IndexRotationPeriod,
		["ProcessingConfiguration"] = ProcessingConfiguration,
	}
	M.AssertElasticsearchDestinationDescription(t)
	return t
end

local DeleteDeliveryStreamInput_keys = { "DeliveryStreamName" = true, nil }

function M.AssertDeleteDeliveryStreamInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDeliveryStreamInput to be of type 'table'")
	assert(struct["DeliveryStreamName"], "Expected key DeliveryStreamName to exist in table")
	if struct["DeliveryStreamName"] then M.AssertDeliveryStreamName(struct["DeliveryStreamName"]) end
	for k,_ in pairs(struct) do
		assert(DeleteDeliveryStreamInput_keys[k], "DeleteDeliveryStreamInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDeliveryStreamInput
--  
-- @param DeliveryStreamName [DeliveryStreamName] &lt;p&gt;The name of the delivery stream.&lt;/p&gt;
-- Required parameter: DeliveryStreamName
function M.DeleteDeliveryStreamInput(DeliveryStreamName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteDeliveryStreamInput")
	local t = { 
		["DeliveryStreamName"] = DeliveryStreamName,
	}
	M.AssertDeleteDeliveryStreamInput(t)
	return t
end

local RedshiftRetryOptions_keys = { "DurationInSeconds" = true, nil }

function M.AssertRedshiftRetryOptions(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RedshiftRetryOptions to be of type 'table'")
	if struct["DurationInSeconds"] then M.AssertRedshiftRetryDurationInSeconds(struct["DurationInSeconds"]) end
	for k,_ in pairs(struct) do
		assert(RedshiftRetryOptions_keys[k], "RedshiftRetryOptions contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RedshiftRetryOptions
-- &lt;p&gt;Configures retry behavior in the event that Firehose is unable to deliver documents to Amazon Redshift.&lt;/p&gt;
-- @param DurationInSeconds [RedshiftRetryDurationInSeconds] &lt;p&gt;The length of time during which Firehose retries delivery after a failure, starting from the initial request and including the first attempt. The default value is 3600 seconds (60 minutes). Firehose does not retry if the value of &lt;code&gt;DurationInSeconds&lt;/code&gt; is 0 (zero) or if the first delivery attempt takes longer than the current value.&lt;/p&gt;
function M.RedshiftRetryOptions(DurationInSeconds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RedshiftRetryOptions")
	local t = { 
		["DurationInSeconds"] = DurationInSeconds,
	}
	M.AssertRedshiftRetryOptions(t)
	return t
end

local ListDeliveryStreamsOutput_keys = { "DeliveryStreamNames" = true, "HasMoreDeliveryStreams" = true, nil }

function M.AssertListDeliveryStreamsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDeliveryStreamsOutput to be of type 'table'")
	assert(struct["DeliveryStreamNames"], "Expected key DeliveryStreamNames to exist in table")
	assert(struct["HasMoreDeliveryStreams"], "Expected key HasMoreDeliveryStreams to exist in table")
	if struct["DeliveryStreamNames"] then M.AssertDeliveryStreamNameList(struct["DeliveryStreamNames"]) end
	if struct["HasMoreDeliveryStreams"] then M.AssertBooleanObject(struct["HasMoreDeliveryStreams"]) end
	for k,_ in pairs(struct) do
		assert(ListDeliveryStreamsOutput_keys[k], "ListDeliveryStreamsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDeliveryStreamsOutput
--  
-- @param DeliveryStreamNames [DeliveryStreamNameList] &lt;p&gt;The names of the delivery streams.&lt;/p&gt;
-- @param HasMoreDeliveryStreams [BooleanObject] &lt;p&gt;Indicates whether there are more delivery streams available to list.&lt;/p&gt;
-- Required parameter: DeliveryStreamNames
-- Required parameter: HasMoreDeliveryStreams
function M.ListDeliveryStreamsOutput(DeliveryStreamNames, HasMoreDeliveryStreams, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListDeliveryStreamsOutput")
	local t = { 
		["DeliveryStreamNames"] = DeliveryStreamNames,
		["HasMoreDeliveryStreams"] = HasMoreDeliveryStreams,
	}
	M.AssertListDeliveryStreamsOutput(t)
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
-- &lt;p&gt;The resource is already in use and not available for this operation.&lt;/p&gt;
-- @param message [ErrorMessage] &lt;p&gt;A message that provides information about the error.&lt;/p&gt;
function M.ResourceInUseException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceInUseException")
	local t = { 
		["message"] = message,
	}
	M.AssertResourceInUseException(t)
	return t
end

local RedshiftDestinationDescription_keys = { "Username" = true, "S3BackupDescription" = true, "S3DestinationDescription" = true, "RetryOptions" = true, "RoleARN" = true, "ClusterJDBCURL" = true, "CopyCommand" = true, "CloudWatchLoggingOptions" = true, "ProcessingConfiguration" = true, "S3BackupMode" = true, nil }

function M.AssertRedshiftDestinationDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RedshiftDestinationDescription to be of type 'table'")
	assert(struct["RoleARN"], "Expected key RoleARN to exist in table")
	assert(struct["ClusterJDBCURL"], "Expected key ClusterJDBCURL to exist in table")
	assert(struct["CopyCommand"], "Expected key CopyCommand to exist in table")
	assert(struct["Username"], "Expected key Username to exist in table")
	assert(struct["S3DestinationDescription"], "Expected key S3DestinationDescription to exist in table")
	if struct["Username"] then M.AssertUsername(struct["Username"]) end
	if struct["S3BackupDescription"] then M.AssertS3DestinationDescription(struct["S3BackupDescription"]) end
	if struct["S3DestinationDescription"] then M.AssertS3DestinationDescription(struct["S3DestinationDescription"]) end
	if struct["RetryOptions"] then M.AssertRedshiftRetryOptions(struct["RetryOptions"]) end
	if struct["RoleARN"] then M.AssertRoleARN(struct["RoleARN"]) end
	if struct["ClusterJDBCURL"] then M.AssertClusterJDBCURL(struct["ClusterJDBCURL"]) end
	if struct["CopyCommand"] then M.AssertCopyCommand(struct["CopyCommand"]) end
	if struct["CloudWatchLoggingOptions"] then M.AssertCloudWatchLoggingOptions(struct["CloudWatchLoggingOptions"]) end
	if struct["ProcessingConfiguration"] then M.AssertProcessingConfiguration(struct["ProcessingConfiguration"]) end
	if struct["S3BackupMode"] then M.AssertRedshiftS3BackupMode(struct["S3BackupMode"]) end
	for k,_ in pairs(struct) do
		assert(RedshiftDestinationDescription_keys[k], "RedshiftDestinationDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RedshiftDestinationDescription
-- &lt;p&gt;Describes a destination in Amazon Redshift.&lt;/p&gt;
-- @param Username [Username] &lt;p&gt;The name of the user.&lt;/p&gt;
-- @param S3BackupDescription [S3DestinationDescription] &lt;p&gt;The configuration for backup in Amazon S3.&lt;/p&gt;
-- @param S3DestinationDescription [S3DestinationDescription] &lt;p&gt;The Amazon S3 destination.&lt;/p&gt;
-- @param RetryOptions [RedshiftRetryOptions] &lt;p&gt;The retry behavior in the event that Firehose is unable to deliver documents to Amazon Redshift. Default value is 3600 (60 minutes).&lt;/p&gt;
-- @param RoleARN [RoleARN] &lt;p&gt;The ARN of the AWS credentials.&lt;/p&gt;
-- @param ClusterJDBCURL [ClusterJDBCURL] &lt;p&gt;The database connection string.&lt;/p&gt;
-- @param CopyCommand [CopyCommand] &lt;p&gt;The &lt;code&gt;COPY&lt;/code&gt; command.&lt;/p&gt;
-- @param CloudWatchLoggingOptions [CloudWatchLoggingOptions] &lt;p&gt;The CloudWatch logging options for your delivery stream.&lt;/p&gt;
-- @param ProcessingConfiguration [ProcessingConfiguration] &lt;p&gt;The data processing configuration.&lt;/p&gt;
-- @param S3BackupMode [RedshiftS3BackupMode] &lt;p&gt;The Amazon S3 backup mode.&lt;/p&gt;
-- Required parameter: RoleARN
-- Required parameter: ClusterJDBCURL
-- Required parameter: CopyCommand
-- Required parameter: Username
-- Required parameter: S3DestinationDescription
function M.RedshiftDestinationDescription(Username, S3BackupDescription, S3DestinationDescription, RetryOptions, RoleARN, ClusterJDBCURL, CopyCommand, CloudWatchLoggingOptions, ProcessingConfiguration, S3BackupMode, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RedshiftDestinationDescription")
	local t = { 
		["Username"] = Username,
		["S3BackupDescription"] = S3BackupDescription,
		["S3DestinationDescription"] = S3DestinationDescription,
		["RetryOptions"] = RetryOptions,
		["RoleARN"] = RoleARN,
		["ClusterJDBCURL"] = ClusterJDBCURL,
		["CopyCommand"] = CopyCommand,
		["CloudWatchLoggingOptions"] = CloudWatchLoggingOptions,
		["ProcessingConfiguration"] = ProcessingConfiguration,
		["S3BackupMode"] = S3BackupMode,
	}
	M.AssertRedshiftDestinationDescription(t)
	return t
end

local Processor_keys = { "Type" = true, "Parameters" = true, nil }

function M.AssertProcessor(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Processor to be of type 'table'")
	assert(struct["Type"], "Expected key Type to exist in table")
	if struct["Type"] then M.AssertProcessorType(struct["Type"]) end
	if struct["Parameters"] then M.AssertProcessorParameterList(struct["Parameters"]) end
	for k,_ in pairs(struct) do
		assert(Processor_keys[k], "Processor contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Processor
-- &lt;p&gt;Describes a data processor.&lt;/p&gt;
-- @param Type [ProcessorType] &lt;p&gt;The type of processor.&lt;/p&gt;
-- @param Parameters [ProcessorParameterList] &lt;p&gt;The processor parameters.&lt;/p&gt;
-- Required parameter: Type
function M.Processor(Type, Parameters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Processor")
	local t = { 
		["Type"] = Type,
		["Parameters"] = Parameters,
	}
	M.AssertProcessor(t)
	return t
end

local DeleteDeliveryStreamOutput_keys = { nil }

function M.AssertDeleteDeliveryStreamOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDeliveryStreamOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DeleteDeliveryStreamOutput_keys[k], "DeleteDeliveryStreamOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDeliveryStreamOutput
--  
function M.DeleteDeliveryStreamOutput(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteDeliveryStreamOutput")
	local t = { 
	}
	M.AssertDeleteDeliveryStreamOutput(t)
	return t
end

local CreateDeliveryStreamInput_keys = { "ExtendedS3DestinationConfiguration" = true, "S3DestinationConfiguration" = true, "DeliveryStreamName" = true, "ElasticsearchDestinationConfiguration" = true, "RedshiftDestinationConfiguration" = true, nil }

function M.AssertCreateDeliveryStreamInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDeliveryStreamInput to be of type 'table'")
	assert(struct["DeliveryStreamName"], "Expected key DeliveryStreamName to exist in table")
	if struct["ExtendedS3DestinationConfiguration"] then M.AssertExtendedS3DestinationConfiguration(struct["ExtendedS3DestinationConfiguration"]) end
	if struct["S3DestinationConfiguration"] then M.AssertS3DestinationConfiguration(struct["S3DestinationConfiguration"]) end
	if struct["DeliveryStreamName"] then M.AssertDeliveryStreamName(struct["DeliveryStreamName"]) end
	if struct["ElasticsearchDestinationConfiguration"] then M.AssertElasticsearchDestinationConfiguration(struct["ElasticsearchDestinationConfiguration"]) end
	if struct["RedshiftDestinationConfiguration"] then M.AssertRedshiftDestinationConfiguration(struct["RedshiftDestinationConfiguration"]) end
	for k,_ in pairs(struct) do
		assert(CreateDeliveryStreamInput_keys[k], "CreateDeliveryStreamInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDeliveryStreamInput
--  
-- @param ExtendedS3DestinationConfiguration [ExtendedS3DestinationConfiguration] &lt;p&gt;The destination in Amazon S3. You can specify only one destination.&lt;/p&gt;
-- @param S3DestinationConfiguration [S3DestinationConfiguration] &lt;p&gt;[Deprecated] The destination in Amazon S3. You can specify only one destination.&lt;/p&gt;
-- @param DeliveryStreamName [DeliveryStreamName] &lt;p&gt;The name of the delivery stream. This name must be unique per AWS account in the same region. You can have multiple delivery streams with the same name if they are in different accounts or different regions.&lt;/p&gt;
-- @param ElasticsearchDestinationConfiguration [ElasticsearchDestinationConfiguration] &lt;p&gt;The destination in Amazon ES. You can specify only one destination.&lt;/p&gt;
-- @param RedshiftDestinationConfiguration [RedshiftDestinationConfiguration] &lt;p&gt;The destination in Amazon Redshift. You can specify only one destination.&lt;/p&gt;
-- Required parameter: DeliveryStreamName
function M.CreateDeliveryStreamInput(ExtendedS3DestinationConfiguration, S3DestinationConfiguration, DeliveryStreamName, ElasticsearchDestinationConfiguration, RedshiftDestinationConfiguration, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDeliveryStreamInput")
	local t = { 
		["ExtendedS3DestinationConfiguration"] = ExtendedS3DestinationConfiguration,
		["S3DestinationConfiguration"] = S3DestinationConfiguration,
		["DeliveryStreamName"] = DeliveryStreamName,
		["ElasticsearchDestinationConfiguration"] = ElasticsearchDestinationConfiguration,
		["RedshiftDestinationConfiguration"] = RedshiftDestinationConfiguration,
	}
	M.AssertCreateDeliveryStreamInput(t)
	return t
end

local RedshiftDestinationUpdate_keys = { "Username" = true, "S3Update" = true, "RetryOptions" = true, "RoleARN" = true, "ClusterJDBCURL" = true, "CopyCommand" = true, "CloudWatchLoggingOptions" = true, "Password" = true, "S3BackupUpdate" = true, "ProcessingConfiguration" = true, "S3BackupMode" = true, nil }

function M.AssertRedshiftDestinationUpdate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RedshiftDestinationUpdate to be of type 'table'")
	if struct["Username"] then M.AssertUsername(struct["Username"]) end
	if struct["S3Update"] then M.AssertS3DestinationUpdate(struct["S3Update"]) end
	if struct["RetryOptions"] then M.AssertRedshiftRetryOptions(struct["RetryOptions"]) end
	if struct["RoleARN"] then M.AssertRoleARN(struct["RoleARN"]) end
	if struct["ClusterJDBCURL"] then M.AssertClusterJDBCURL(struct["ClusterJDBCURL"]) end
	if struct["CopyCommand"] then M.AssertCopyCommand(struct["CopyCommand"]) end
	if struct["CloudWatchLoggingOptions"] then M.AssertCloudWatchLoggingOptions(struct["CloudWatchLoggingOptions"]) end
	if struct["Password"] then M.AssertPassword(struct["Password"]) end
	if struct["S3BackupUpdate"] then M.AssertS3DestinationUpdate(struct["S3BackupUpdate"]) end
	if struct["ProcessingConfiguration"] then M.AssertProcessingConfiguration(struct["ProcessingConfiguration"]) end
	if struct["S3BackupMode"] then M.AssertRedshiftS3BackupMode(struct["S3BackupMode"]) end
	for k,_ in pairs(struct) do
		assert(RedshiftDestinationUpdate_keys[k], "RedshiftDestinationUpdate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RedshiftDestinationUpdate
-- &lt;p&gt;Describes an update for a destination in Amazon Redshift.&lt;/p&gt;
-- @param Username [Username] &lt;p&gt;The name of the user.&lt;/p&gt;
-- @param S3Update [S3DestinationUpdate] &lt;p&gt;The Amazon S3 destination.&lt;/p&gt; &lt;p&gt;The compression formats &lt;code&gt;SNAPPY&lt;/code&gt; or &lt;code&gt;ZIP&lt;/code&gt; cannot be specified in &lt;b&gt;RedshiftDestinationUpdate.S3Update&lt;/b&gt; because the Amazon Redshift &lt;code&gt;COPY&lt;/code&gt; operation that reads from the S3 bucket doesn't support these compression formats.&lt;/p&gt;
-- @param RetryOptions [RedshiftRetryOptions] &lt;p&gt;The retry behavior in the event that Firehose is unable to deliver documents to Amazon Redshift. Default value is 3600 (60 minutes).&lt;/p&gt;
-- @param RoleARN [RoleARN] &lt;p&gt;The ARN of the AWS credentials.&lt;/p&gt;
-- @param ClusterJDBCURL [ClusterJDBCURL] &lt;p&gt;The database connection string.&lt;/p&gt;
-- @param CopyCommand [CopyCommand] &lt;p&gt;The &lt;code&gt;COPY&lt;/code&gt; command.&lt;/p&gt;
-- @param CloudWatchLoggingOptions [CloudWatchLoggingOptions] &lt;p&gt;The CloudWatch logging options for your delivery stream.&lt;/p&gt;
-- @param Password [Password] &lt;p&gt;The user password.&lt;/p&gt;
-- @param S3BackupUpdate [S3DestinationUpdate] &lt;p&gt;The Amazon S3 destination for backup.&lt;/p&gt;
-- @param ProcessingConfiguration [ProcessingConfiguration] &lt;p&gt;The data processing configuration.&lt;/p&gt;
-- @param S3BackupMode [RedshiftS3BackupMode] &lt;p&gt;The Amazon S3 backup mode.&lt;/p&gt;
function M.RedshiftDestinationUpdate(Username, S3Update, RetryOptions, RoleARN, ClusterJDBCURL, CopyCommand, CloudWatchLoggingOptions, Password, S3BackupUpdate, ProcessingConfiguration, S3BackupMode, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RedshiftDestinationUpdate")
	local t = { 
		["Username"] = Username,
		["S3Update"] = S3Update,
		["RetryOptions"] = RetryOptions,
		["RoleARN"] = RoleARN,
		["ClusterJDBCURL"] = ClusterJDBCURL,
		["CopyCommand"] = CopyCommand,
		["CloudWatchLoggingOptions"] = CloudWatchLoggingOptions,
		["Password"] = Password,
		["S3BackupUpdate"] = S3BackupUpdate,
		["ProcessingConfiguration"] = ProcessingConfiguration,
		["S3BackupMode"] = S3BackupMode,
	}
	M.AssertRedshiftDestinationUpdate(t)
	return t
end

local UpdateDestinationInput_keys = { "DeliveryStreamName" = true, "ElasticsearchDestinationUpdate" = true, "CurrentDeliveryStreamVersionId" = true, "DestinationId" = true, "ExtendedS3DestinationUpdate" = true, "S3DestinationUpdate" = true, "RedshiftDestinationUpdate" = true, nil }

function M.AssertUpdateDestinationInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateDestinationInput to be of type 'table'")
	assert(struct["DeliveryStreamName"], "Expected key DeliveryStreamName to exist in table")
	assert(struct["CurrentDeliveryStreamVersionId"], "Expected key CurrentDeliveryStreamVersionId to exist in table")
	assert(struct["DestinationId"], "Expected key DestinationId to exist in table")
	if struct["DeliveryStreamName"] then M.AssertDeliveryStreamName(struct["DeliveryStreamName"]) end
	if struct["ElasticsearchDestinationUpdate"] then M.AssertElasticsearchDestinationUpdate(struct["ElasticsearchDestinationUpdate"]) end
	if struct["CurrentDeliveryStreamVersionId"] then M.AssertDeliveryStreamVersionId(struct["CurrentDeliveryStreamVersionId"]) end
	if struct["DestinationId"] then M.AssertDestinationId(struct["DestinationId"]) end
	if struct["ExtendedS3DestinationUpdate"] then M.AssertExtendedS3DestinationUpdate(struct["ExtendedS3DestinationUpdate"]) end
	if struct["S3DestinationUpdate"] then M.AssertS3DestinationUpdate(struct["S3DestinationUpdate"]) end
	if struct["RedshiftDestinationUpdate"] then M.AssertRedshiftDestinationUpdate(struct["RedshiftDestinationUpdate"]) end
	for k,_ in pairs(struct) do
		assert(UpdateDestinationInput_keys[k], "UpdateDestinationInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateDestinationInput
--  
-- @param DeliveryStreamName [DeliveryStreamName] &lt;p&gt;The name of the delivery stream.&lt;/p&gt;
-- @param ElasticsearchDestinationUpdate [ElasticsearchDestinationUpdate] &lt;p&gt;Describes an update for a destination in Amazon ES.&lt;/p&gt;
-- @param CurrentDeliveryStreamVersionId [DeliveryStreamVersionId] &lt;p&gt;Obtain this value from the &lt;b&gt;VersionId&lt;/b&gt; result of &lt;a&gt;DeliveryStreamDescription&lt;/a&gt;. This value is required, and helps the service to perform conditional operations. For example, if there is a interleaving update and this value is null, then the update destination fails. After the update is successful, the &lt;b&gt;VersionId&lt;/b&gt; value is updated. The service then performs a merge of the old configuration with the new configuration.&lt;/p&gt;
-- @param DestinationId [DestinationId] &lt;p&gt;The ID of the destination.&lt;/p&gt;
-- @param ExtendedS3DestinationUpdate [ExtendedS3DestinationUpdate] &lt;p&gt;Describes an update for a destination in Amazon S3.&lt;/p&gt;
-- @param S3DestinationUpdate [S3DestinationUpdate] &lt;p&gt;[Deprecated] Describes an update for a destination in Amazon S3.&lt;/p&gt;
-- @param RedshiftDestinationUpdate [RedshiftDestinationUpdate] &lt;p&gt;Describes an update for a destination in Amazon Redshift.&lt;/p&gt;
-- Required parameter: DeliveryStreamName
-- Required parameter: CurrentDeliveryStreamVersionId
-- Required parameter: DestinationId
function M.UpdateDestinationInput(DeliveryStreamName, ElasticsearchDestinationUpdate, CurrentDeliveryStreamVersionId, DestinationId, ExtendedS3DestinationUpdate, S3DestinationUpdate, RedshiftDestinationUpdate, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateDestinationInput")
	local t = { 
		["DeliveryStreamName"] = DeliveryStreamName,
		["ElasticsearchDestinationUpdate"] = ElasticsearchDestinationUpdate,
		["CurrentDeliveryStreamVersionId"] = CurrentDeliveryStreamVersionId,
		["DestinationId"] = DestinationId,
		["ExtendedS3DestinationUpdate"] = ExtendedS3DestinationUpdate,
		["S3DestinationUpdate"] = S3DestinationUpdate,
		["RedshiftDestinationUpdate"] = RedshiftDestinationUpdate,
	}
	M.AssertUpdateDestinationInput(t)
	return t
end

local ElasticsearchDestinationConfiguration_keys = { "S3Configuration" = true, "IndexName" = true, "RetryOptions" = true, "RoleARN" = true, "BufferingHints" = true, "TypeName" = true, "S3BackupMode" = true, "CloudWatchLoggingOptions" = true, "DomainARN" = true, "IndexRotationPeriod" = true, "ProcessingConfiguration" = true, nil }

function M.AssertElasticsearchDestinationConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ElasticsearchDestinationConfiguration to be of type 'table'")
	assert(struct["RoleARN"], "Expected key RoleARN to exist in table")
	assert(struct["DomainARN"], "Expected key DomainARN to exist in table")
	assert(struct["IndexName"], "Expected key IndexName to exist in table")
	assert(struct["TypeName"], "Expected key TypeName to exist in table")
	assert(struct["S3Configuration"], "Expected key S3Configuration to exist in table")
	if struct["S3Configuration"] then M.AssertS3DestinationConfiguration(struct["S3Configuration"]) end
	if struct["IndexName"] then M.AssertElasticsearchIndexName(struct["IndexName"]) end
	if struct["RetryOptions"] then M.AssertElasticsearchRetryOptions(struct["RetryOptions"]) end
	if struct["RoleARN"] then M.AssertRoleARN(struct["RoleARN"]) end
	if struct["BufferingHints"] then M.AssertElasticsearchBufferingHints(struct["BufferingHints"]) end
	if struct["TypeName"] then M.AssertElasticsearchTypeName(struct["TypeName"]) end
	if struct["S3BackupMode"] then M.AssertElasticsearchS3BackupMode(struct["S3BackupMode"]) end
	if struct["CloudWatchLoggingOptions"] then M.AssertCloudWatchLoggingOptions(struct["CloudWatchLoggingOptions"]) end
	if struct["DomainARN"] then M.AssertElasticsearchDomainARN(struct["DomainARN"]) end
	if struct["IndexRotationPeriod"] then M.AssertElasticsearchIndexRotationPeriod(struct["IndexRotationPeriod"]) end
	if struct["ProcessingConfiguration"] then M.AssertProcessingConfiguration(struct["ProcessingConfiguration"]) end
	for k,_ in pairs(struct) do
		assert(ElasticsearchDestinationConfiguration_keys[k], "ElasticsearchDestinationConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ElasticsearchDestinationConfiguration
-- &lt;p&gt;Describes the configuration of a destination in Amazon ES.&lt;/p&gt;
-- @param S3Configuration [S3DestinationConfiguration] &lt;p&gt;The configuration for the intermediate Amazon S3 location from which Amazon ES obtains data.&lt;/p&gt;
-- @param IndexName [ElasticsearchIndexName] &lt;p&gt;The Elasticsearch index name.&lt;/p&gt;
-- @param RetryOptions [ElasticsearchRetryOptions] &lt;p&gt;The retry behavior in the event that Firehose is unable to deliver documents to Amazon ES. The default value is 300 (5 minutes).&lt;/p&gt;
-- @param RoleARN [RoleARN] &lt;p&gt;The ARN of the IAM role to be assumed by Firehose for calling the Amazon ES Configuration API and for indexing documents. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/firehose/latest/dev/controlling-access.html#using-iam-s3&quot;&gt;Amazon S3 Bucket Access&lt;/a&gt;.&lt;/p&gt;
-- @param BufferingHints [ElasticsearchBufferingHints] &lt;p&gt;The buffering options. If no value is specified, the default values for &lt;b&gt;ElasticsearchBufferingHints&lt;/b&gt; are used.&lt;/p&gt;
-- @param TypeName [ElasticsearchTypeName] &lt;p&gt;The Elasticsearch type name.&lt;/p&gt;
-- @param S3BackupMode [ElasticsearchS3BackupMode] &lt;p&gt;Defines how documents should be delivered to Amazon S3. When set to FailedDocumentsOnly, Firehose writes any documents that could not be indexed to the configured Amazon S3 destination, with elasticsearch-failed/ appended to the key prefix. When set to AllDocuments, Firehose delivers all incoming records to Amazon S3, and also writes failed documents with elasticsearch-failed/ appended to the prefix. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/firehose/latest/dev/basic-deliver.html#es-s3-backup&quot;&gt;Amazon S3 Backup for Amazon Elasticsearch Service Destination&lt;/a&gt;. Default value is FailedDocumentsOnly.&lt;/p&gt;
-- @param CloudWatchLoggingOptions [CloudWatchLoggingOptions] &lt;p&gt;The CloudWatch logging options for your delivery stream.&lt;/p&gt;
-- @param DomainARN [ElasticsearchDomainARN] &lt;p&gt;The ARN of the Amazon ES domain. The IAM role must have permissions for &lt;code&gt;DescribeElasticsearchDomain&lt;/code&gt;, &lt;code&gt;DescribeElasticsearchDomains&lt;/code&gt;, and &lt;code&gt;DescribeElasticsearchDomainConfig&lt;/code&gt; after assuming the role specified in &lt;b&gt;RoleARN&lt;/b&gt;.&lt;/p&gt;
-- @param IndexRotationPeriod [ElasticsearchIndexRotationPeriod] &lt;p&gt;The Elasticsearch index rotation period. Index rotation appends a timestamp to the IndexName to facilitate expiration of old data. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/firehose/latest/dev/basic-deliver.html#es-index-rotation&quot;&gt;Index Rotation for Amazon Elasticsearch Service Destination&lt;/a&gt;. The default value is &lt;code&gt;OneDay&lt;/code&gt;.&lt;/p&gt;
-- @param ProcessingConfiguration [ProcessingConfiguration] &lt;p&gt;The data processing configuration.&lt;/p&gt;
-- Required parameter: RoleARN
-- Required parameter: DomainARN
-- Required parameter: IndexName
-- Required parameter: TypeName
-- Required parameter: S3Configuration
function M.ElasticsearchDestinationConfiguration(S3Configuration, IndexName, RetryOptions, RoleARN, BufferingHints, TypeName, S3BackupMode, CloudWatchLoggingOptions, DomainARN, IndexRotationPeriod, ProcessingConfiguration, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ElasticsearchDestinationConfiguration")
	local t = { 
		["S3Configuration"] = S3Configuration,
		["IndexName"] = IndexName,
		["RetryOptions"] = RetryOptions,
		["RoleARN"] = RoleARN,
		["BufferingHints"] = BufferingHints,
		["TypeName"] = TypeName,
		["S3BackupMode"] = S3BackupMode,
		["CloudWatchLoggingOptions"] = CloudWatchLoggingOptions,
		["DomainARN"] = DomainARN,
		["IndexRotationPeriod"] = IndexRotationPeriod,
		["ProcessingConfiguration"] = ProcessingConfiguration,
	}
	M.AssertElasticsearchDestinationConfiguration(t)
	return t
end

local CreateDeliveryStreamOutput_keys = { "DeliveryStreamARN" = true, nil }

function M.AssertCreateDeliveryStreamOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDeliveryStreamOutput to be of type 'table'")
	if struct["DeliveryStreamARN"] then M.AssertDeliveryStreamARN(struct["DeliveryStreamARN"]) end
	for k,_ in pairs(struct) do
		assert(CreateDeliveryStreamOutput_keys[k], "CreateDeliveryStreamOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDeliveryStreamOutput
--  
-- @param DeliveryStreamARN [DeliveryStreamARN] &lt;p&gt;The ARN of the delivery stream.&lt;/p&gt;
function M.CreateDeliveryStreamOutput(DeliveryStreamARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDeliveryStreamOutput")
	local t = { 
		["DeliveryStreamARN"] = DeliveryStreamARN,
	}
	M.AssertCreateDeliveryStreamOutput(t)
	return t
end

local PutRecordOutput_keys = { "RecordId" = true, nil }

function M.AssertPutRecordOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutRecordOutput to be of type 'table'")
	assert(struct["RecordId"], "Expected key RecordId to exist in table")
	if struct["RecordId"] then M.AssertPutResponseRecordId(struct["RecordId"]) end
	for k,_ in pairs(struct) do
		assert(PutRecordOutput_keys[k], "PutRecordOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutRecordOutput
--  
-- @param RecordId [PutResponseRecordId] &lt;p&gt;The ID of the record.&lt;/p&gt;
-- Required parameter: RecordId
function M.PutRecordOutput(RecordId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutRecordOutput")
	local t = { 
		["RecordId"] = RecordId,
	}
	M.AssertPutRecordOutput(t)
	return t
end

local ExtendedS3DestinationDescription_keys = { "RoleARN" = true, "Prefix" = true, "BufferingHints" = true, "EncryptionConfiguration" = true, "CompressionFormat" = true, "S3BackupMode" = true, "CloudWatchLoggingOptions" = true, "BucketARN" = true, "ProcessingConfiguration" = true, "S3BackupDescription" = true, nil }

function M.AssertExtendedS3DestinationDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ExtendedS3DestinationDescription to be of type 'table'")
	assert(struct["RoleARN"], "Expected key RoleARN to exist in table")
	assert(struct["BucketARN"], "Expected key BucketARN to exist in table")
	assert(struct["BufferingHints"], "Expected key BufferingHints to exist in table")
	assert(struct["CompressionFormat"], "Expected key CompressionFormat to exist in table")
	assert(struct["EncryptionConfiguration"], "Expected key EncryptionConfiguration to exist in table")
	if struct["RoleARN"] then M.AssertRoleARN(struct["RoleARN"]) end
	if struct["Prefix"] then M.AssertPrefix(struct["Prefix"]) end
	if struct["BufferingHints"] then M.AssertBufferingHints(struct["BufferingHints"]) end
	if struct["EncryptionConfiguration"] then M.AssertEncryptionConfiguration(struct["EncryptionConfiguration"]) end
	if struct["CompressionFormat"] then M.AssertCompressionFormat(struct["CompressionFormat"]) end
	if struct["S3BackupMode"] then M.AssertS3BackupMode(struct["S3BackupMode"]) end
	if struct["CloudWatchLoggingOptions"] then M.AssertCloudWatchLoggingOptions(struct["CloudWatchLoggingOptions"]) end
	if struct["BucketARN"] then M.AssertBucketARN(struct["BucketARN"]) end
	if struct["ProcessingConfiguration"] then M.AssertProcessingConfiguration(struct["ProcessingConfiguration"]) end
	if struct["S3BackupDescription"] then M.AssertS3DestinationDescription(struct["S3BackupDescription"]) end
	for k,_ in pairs(struct) do
		assert(ExtendedS3DestinationDescription_keys[k], "ExtendedS3DestinationDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ExtendedS3DestinationDescription
-- &lt;p&gt;Describes a destination in Amazon S3.&lt;/p&gt;
-- @param RoleARN [RoleARN] &lt;p&gt;The ARN of the AWS credentials.&lt;/p&gt;
-- @param Prefix [Prefix] &lt;p&gt;The &quot;YYYY/MM/DD/HH&quot; time format prefix is automatically used for delivered S3 files. You can specify an extra prefix to be added in front of the time format prefix. Note that if the prefix ends with a slash, it appears as a folder in the S3 bucket. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/firehose/latest/dev/basic-deliver.html&quot;&gt;Amazon S3 Object Name Format&lt;/a&gt; in the &lt;i&gt;Amazon Kinesis Firehose Developer Guide&lt;/i&gt;.&lt;/p&gt;
-- @param BufferingHints [BufferingHints] &lt;p&gt;The buffering option.&lt;/p&gt;
-- @param EncryptionConfiguration [EncryptionConfiguration] &lt;p&gt;The encryption configuration. If no value is specified, the default is no encryption.&lt;/p&gt;
-- @param CompressionFormat [CompressionFormat] &lt;p&gt;The compression format. If no value is specified, the default is &lt;code&gt;UNCOMPRESSED&lt;/code&gt;.&lt;/p&gt;
-- @param S3BackupMode [S3BackupMode] &lt;p&gt;The Amazon S3 backup mode.&lt;/p&gt;
-- @param CloudWatchLoggingOptions [CloudWatchLoggingOptions] &lt;p&gt;The CloudWatch logging options for your delivery stream.&lt;/p&gt;
-- @param BucketARN [BucketARN] &lt;p&gt;The ARN of the S3 bucket.&lt;/p&gt;
-- @param ProcessingConfiguration [ProcessingConfiguration] &lt;p&gt;The data processing configuration.&lt;/p&gt;
-- @param S3BackupDescription [S3DestinationDescription] &lt;p&gt;The configuration for backup in Amazon S3.&lt;/p&gt;
-- Required parameter: RoleARN
-- Required parameter: BucketARN
-- Required parameter: BufferingHints
-- Required parameter: CompressionFormat
-- Required parameter: EncryptionConfiguration
function M.ExtendedS3DestinationDescription(RoleARN, Prefix, BufferingHints, EncryptionConfiguration, CompressionFormat, S3BackupMode, CloudWatchLoggingOptions, BucketARN, ProcessingConfiguration, S3BackupDescription, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ExtendedS3DestinationDescription")
	local t = { 
		["RoleARN"] = RoleARN,
		["Prefix"] = Prefix,
		["BufferingHints"] = BufferingHints,
		["EncryptionConfiguration"] = EncryptionConfiguration,
		["CompressionFormat"] = CompressionFormat,
		["S3BackupMode"] = S3BackupMode,
		["CloudWatchLoggingOptions"] = CloudWatchLoggingOptions,
		["BucketARN"] = BucketARN,
		["ProcessingConfiguration"] = ProcessingConfiguration,
		["S3BackupDescription"] = S3BackupDescription,
	}
	M.AssertExtendedS3DestinationDescription(t)
	return t
end

local RedshiftDestinationConfiguration_keys = { "Username" = true, "S3Configuration" = true, "S3BackupConfiguration" = true, "RetryOptions" = true, "RoleARN" = true, "ClusterJDBCURL" = true, "CopyCommand" = true, "CloudWatchLoggingOptions" = true, "Password" = true, "ProcessingConfiguration" = true, "S3BackupMode" = true, nil }

function M.AssertRedshiftDestinationConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RedshiftDestinationConfiguration to be of type 'table'")
	assert(struct["RoleARN"], "Expected key RoleARN to exist in table")
	assert(struct["ClusterJDBCURL"], "Expected key ClusterJDBCURL to exist in table")
	assert(struct["CopyCommand"], "Expected key CopyCommand to exist in table")
	assert(struct["Username"], "Expected key Username to exist in table")
	assert(struct["Password"], "Expected key Password to exist in table")
	assert(struct["S3Configuration"], "Expected key S3Configuration to exist in table")
	if struct["Username"] then M.AssertUsername(struct["Username"]) end
	if struct["S3Configuration"] then M.AssertS3DestinationConfiguration(struct["S3Configuration"]) end
	if struct["S3BackupConfiguration"] then M.AssertS3DestinationConfiguration(struct["S3BackupConfiguration"]) end
	if struct["RetryOptions"] then M.AssertRedshiftRetryOptions(struct["RetryOptions"]) end
	if struct["RoleARN"] then M.AssertRoleARN(struct["RoleARN"]) end
	if struct["ClusterJDBCURL"] then M.AssertClusterJDBCURL(struct["ClusterJDBCURL"]) end
	if struct["CopyCommand"] then M.AssertCopyCommand(struct["CopyCommand"]) end
	if struct["CloudWatchLoggingOptions"] then M.AssertCloudWatchLoggingOptions(struct["CloudWatchLoggingOptions"]) end
	if struct["Password"] then M.AssertPassword(struct["Password"]) end
	if struct["ProcessingConfiguration"] then M.AssertProcessingConfiguration(struct["ProcessingConfiguration"]) end
	if struct["S3BackupMode"] then M.AssertRedshiftS3BackupMode(struct["S3BackupMode"]) end
	for k,_ in pairs(struct) do
		assert(RedshiftDestinationConfiguration_keys[k], "RedshiftDestinationConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RedshiftDestinationConfiguration
-- &lt;p&gt;Describes the configuration of a destination in Amazon Redshift.&lt;/p&gt;
-- @param Username [Username] &lt;p&gt;The name of the user.&lt;/p&gt;
-- @param S3Configuration [S3DestinationConfiguration] &lt;p&gt;The configuration for the intermediate Amazon S3 location from which Amazon Redshift obtains data. Restrictions are described in the topic for &lt;a&gt;CreateDeliveryStream&lt;/a&gt;.&lt;/p&gt; &lt;p&gt;The compression formats &lt;code&gt;SNAPPY&lt;/code&gt; or &lt;code&gt;ZIP&lt;/code&gt; cannot be specified in &lt;b&gt;RedshiftDestinationConfiguration.S3Configuration&lt;/b&gt; because the Amazon Redshift &lt;code&gt;COPY&lt;/code&gt; operation that reads from the S3 bucket doesn't support these compression formats.&lt;/p&gt;
-- @param S3BackupConfiguration [S3DestinationConfiguration] &lt;p&gt;The configuration for backup in Amazon S3.&lt;/p&gt;
-- @param RetryOptions [RedshiftRetryOptions] &lt;p&gt;The retry behavior in the event that Firehose is unable to deliver documents to Amazon Redshift. Default value is 3600 (60 minutes).&lt;/p&gt;
-- @param RoleARN [RoleARN] &lt;p&gt;The ARN of the AWS credentials.&lt;/p&gt;
-- @param ClusterJDBCURL [ClusterJDBCURL] &lt;p&gt;The database connection string.&lt;/p&gt;
-- @param CopyCommand [CopyCommand] &lt;p&gt;The &lt;code&gt;COPY&lt;/code&gt; command.&lt;/p&gt;
-- @param CloudWatchLoggingOptions [CloudWatchLoggingOptions] &lt;p&gt;The CloudWatch logging options for your delivery stream.&lt;/p&gt;
-- @param Password [Password] &lt;p&gt;The user password.&lt;/p&gt;
-- @param ProcessingConfiguration [ProcessingConfiguration] &lt;p&gt;The data processing configuration.&lt;/p&gt;
-- @param S3BackupMode [RedshiftS3BackupMode] &lt;p&gt;The Amazon S3 backup mode.&lt;/p&gt;
-- Required parameter: RoleARN
-- Required parameter: ClusterJDBCURL
-- Required parameter: CopyCommand
-- Required parameter: Username
-- Required parameter: Password
-- Required parameter: S3Configuration
function M.RedshiftDestinationConfiguration(Username, S3Configuration, S3BackupConfiguration, RetryOptions, RoleARN, ClusterJDBCURL, CopyCommand, CloudWatchLoggingOptions, Password, ProcessingConfiguration, S3BackupMode, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RedshiftDestinationConfiguration")
	local t = { 
		["Username"] = Username,
		["S3Configuration"] = S3Configuration,
		["S3BackupConfiguration"] = S3BackupConfiguration,
		["RetryOptions"] = RetryOptions,
		["RoleARN"] = RoleARN,
		["ClusterJDBCURL"] = ClusterJDBCURL,
		["CopyCommand"] = CopyCommand,
		["CloudWatchLoggingOptions"] = CloudWatchLoggingOptions,
		["Password"] = Password,
		["ProcessingConfiguration"] = ProcessingConfiguration,
		["S3BackupMode"] = S3BackupMode,
	}
	M.AssertRedshiftDestinationConfiguration(t)
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
-- &lt;p&gt;The specified resource could not be found.&lt;/p&gt;
-- @param message [ErrorMessage] &lt;p&gt;A message that provides information about the error.&lt;/p&gt;
function M.ResourceNotFoundException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceNotFoundException")
	local t = { 
		["message"] = message,
	}
	M.AssertResourceNotFoundException(t)
	return t
end

local PutRecordBatchInput_keys = { "Records" = true, "DeliveryStreamName" = true, nil }

function M.AssertPutRecordBatchInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutRecordBatchInput to be of type 'table'")
	assert(struct["DeliveryStreamName"], "Expected key DeliveryStreamName to exist in table")
	assert(struct["Records"], "Expected key Records to exist in table")
	if struct["Records"] then M.AssertPutRecordBatchRequestEntryList(struct["Records"]) end
	if struct["DeliveryStreamName"] then M.AssertDeliveryStreamName(struct["DeliveryStreamName"]) end
	for k,_ in pairs(struct) do
		assert(PutRecordBatchInput_keys[k], "PutRecordBatchInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutRecordBatchInput
--  
-- @param Records [PutRecordBatchRequestEntryList] &lt;p&gt;One or more records.&lt;/p&gt;
-- @param DeliveryStreamName [DeliveryStreamName] &lt;p&gt;The name of the delivery stream.&lt;/p&gt;
-- Required parameter: DeliveryStreamName
-- Required parameter: Records
function M.PutRecordBatchInput(Records, DeliveryStreamName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutRecordBatchInput")
	local t = { 
		["Records"] = Records,
		["DeliveryStreamName"] = DeliveryStreamName,
	}
	M.AssertPutRecordBatchInput(t)
	return t
end

local DescribeDeliveryStreamOutput_keys = { "DeliveryStreamDescription" = true, nil }

function M.AssertDescribeDeliveryStreamOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDeliveryStreamOutput to be of type 'table'")
	assert(struct["DeliveryStreamDescription"], "Expected key DeliveryStreamDescription to exist in table")
	if struct["DeliveryStreamDescription"] then M.AssertDeliveryStreamDescription(struct["DeliveryStreamDescription"]) end
	for k,_ in pairs(struct) do
		assert(DescribeDeliveryStreamOutput_keys[k], "DescribeDeliveryStreamOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDeliveryStreamOutput
--  
-- @param DeliveryStreamDescription [DeliveryStreamDescription] &lt;p&gt;Information about the delivery stream.&lt;/p&gt;
-- Required parameter: DeliveryStreamDescription
function M.DescribeDeliveryStreamOutput(DeliveryStreamDescription, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeDeliveryStreamOutput")
	local t = { 
		["DeliveryStreamDescription"] = DeliveryStreamDescription,
	}
	M.AssertDescribeDeliveryStreamOutput(t)
	return t
end

local ElasticsearchRetryOptions_keys = { "DurationInSeconds" = true, nil }

function M.AssertElasticsearchRetryOptions(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ElasticsearchRetryOptions to be of type 'table'")
	if struct["DurationInSeconds"] then M.AssertElasticsearchRetryDurationInSeconds(struct["DurationInSeconds"]) end
	for k,_ in pairs(struct) do
		assert(ElasticsearchRetryOptions_keys[k], "ElasticsearchRetryOptions contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ElasticsearchRetryOptions
-- &lt;p&gt;Configures retry behavior in the event that Firehose is unable to deliver documents to Amazon ES.&lt;/p&gt;
-- @param DurationInSeconds [ElasticsearchRetryDurationInSeconds] &lt;p&gt;After an initial failure to deliver to Amazon ES, the total amount of time during which Firehose re-attempts delivery (including the first attempt). After this time has elapsed, the failed documents are written to Amazon S3. Default value is 300 seconds (5 minutes). A value of 0 (zero) results in no retries.&lt;/p&gt;
function M.ElasticsearchRetryOptions(DurationInSeconds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ElasticsearchRetryOptions")
	local t = { 
		["DurationInSeconds"] = DurationInSeconds,
	}
	M.AssertElasticsearchRetryOptions(t)
	return t
end

local S3DestinationConfiguration_keys = { "RoleARN" = true, "Prefix" = true, "BufferingHints" = true, "EncryptionConfiguration" = true, "CompressionFormat" = true, "CloudWatchLoggingOptions" = true, "BucketARN" = true, nil }

function M.AssertS3DestinationConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected S3DestinationConfiguration to be of type 'table'")
	assert(struct["RoleARN"], "Expected key RoleARN to exist in table")
	assert(struct["BucketARN"], "Expected key BucketARN to exist in table")
	if struct["RoleARN"] then M.AssertRoleARN(struct["RoleARN"]) end
	if struct["Prefix"] then M.AssertPrefix(struct["Prefix"]) end
	if struct["BufferingHints"] then M.AssertBufferingHints(struct["BufferingHints"]) end
	if struct["EncryptionConfiguration"] then M.AssertEncryptionConfiguration(struct["EncryptionConfiguration"]) end
	if struct["CompressionFormat"] then M.AssertCompressionFormat(struct["CompressionFormat"]) end
	if struct["CloudWatchLoggingOptions"] then M.AssertCloudWatchLoggingOptions(struct["CloudWatchLoggingOptions"]) end
	if struct["BucketARN"] then M.AssertBucketARN(struct["BucketARN"]) end
	for k,_ in pairs(struct) do
		assert(S3DestinationConfiguration_keys[k], "S3DestinationConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type S3DestinationConfiguration
-- &lt;p&gt;Describes the configuration of a destination in Amazon S3.&lt;/p&gt;
-- @param RoleARN [RoleARN] &lt;p&gt;The ARN of the AWS credentials.&lt;/p&gt;
-- @param Prefix [Prefix] &lt;p&gt;The &quot;YYYY/MM/DD/HH&quot; time format prefix is automatically used for delivered S3 files. You can specify an extra prefix to be added in front of the time format prefix. Note that if the prefix ends with a slash, it appears as a folder in the S3 bucket. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/firehose/latest/dev/basic-deliver.html&quot;&gt;Amazon S3 Object Name Format&lt;/a&gt; in the &lt;i&gt;Amazon Kinesis Firehose Developer Guide&lt;/i&gt;.&lt;/p&gt;
-- @param BufferingHints [BufferingHints] &lt;p&gt;The buffering option. If no value is specified, &lt;b&gt;BufferingHints&lt;/b&gt; object default values are used.&lt;/p&gt;
-- @param EncryptionConfiguration [EncryptionConfiguration] &lt;p&gt;The encryption configuration. If no value is specified, the default is no encryption.&lt;/p&gt;
-- @param CompressionFormat [CompressionFormat] &lt;p&gt;The compression format. If no value is specified, the default is &lt;code&gt;UNCOMPRESSED&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;The compression formats &lt;code&gt;SNAPPY&lt;/code&gt; or &lt;code&gt;ZIP&lt;/code&gt; cannot be specified for Amazon Redshift destinations because they are not supported by the Amazon Redshift &lt;code&gt;COPY&lt;/code&gt; operation that reads from the S3 bucket.&lt;/p&gt;
-- @param CloudWatchLoggingOptions [CloudWatchLoggingOptions] &lt;p&gt;The CloudWatch logging options for your delivery stream.&lt;/p&gt;
-- @param BucketARN [BucketARN] &lt;p&gt;The ARN of the S3 bucket.&lt;/p&gt;
-- Required parameter: RoleARN
-- Required parameter: BucketARN
function M.S3DestinationConfiguration(RoleARN, Prefix, BufferingHints, EncryptionConfiguration, CompressionFormat, CloudWatchLoggingOptions, BucketARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating S3DestinationConfiguration")
	local t = { 
		["RoleARN"] = RoleARN,
		["Prefix"] = Prefix,
		["BufferingHints"] = BufferingHints,
		["EncryptionConfiguration"] = EncryptionConfiguration,
		["CompressionFormat"] = CompressionFormat,
		["CloudWatchLoggingOptions"] = CloudWatchLoggingOptions,
		["BucketARN"] = BucketARN,
	}
	M.AssertS3DestinationConfiguration(t)
	return t
end

local EncryptionConfiguration_keys = { "KMSEncryptionConfig" = true, "NoEncryptionConfig" = true, nil }

function M.AssertEncryptionConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EncryptionConfiguration to be of type 'table'")
	if struct["KMSEncryptionConfig"] then M.AssertKMSEncryptionConfig(struct["KMSEncryptionConfig"]) end
	if struct["NoEncryptionConfig"] then M.AssertNoEncryptionConfig(struct["NoEncryptionConfig"]) end
	for k,_ in pairs(struct) do
		assert(EncryptionConfiguration_keys[k], "EncryptionConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EncryptionConfiguration
-- &lt;p&gt;Describes the encryption for a destination in Amazon S3.&lt;/p&gt;
-- @param KMSEncryptionConfig [KMSEncryptionConfig] &lt;p&gt;The encryption key.&lt;/p&gt;
-- @param NoEncryptionConfig [NoEncryptionConfig] &lt;p&gt;Specifically override existing encryption information to ensure no encryption is used.&lt;/p&gt;
function M.EncryptionConfiguration(KMSEncryptionConfig, NoEncryptionConfig, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EncryptionConfiguration")
	local t = { 
		["KMSEncryptionConfig"] = KMSEncryptionConfig,
		["NoEncryptionConfig"] = NoEncryptionConfig,
	}
	M.AssertEncryptionConfiguration(t)
	return t
end

local ElasticsearchBufferingHints_keys = { "IntervalInSeconds" = true, "SizeInMBs" = true, nil }

function M.AssertElasticsearchBufferingHints(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ElasticsearchBufferingHints to be of type 'table'")
	if struct["IntervalInSeconds"] then M.AssertElasticsearchBufferingIntervalInSeconds(struct["IntervalInSeconds"]) end
	if struct["SizeInMBs"] then M.AssertElasticsearchBufferingSizeInMBs(struct["SizeInMBs"]) end
	for k,_ in pairs(struct) do
		assert(ElasticsearchBufferingHints_keys[k], "ElasticsearchBufferingHints contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ElasticsearchBufferingHints
-- &lt;p&gt;Describes the buffering to perform before delivering data to the Amazon ES destination.&lt;/p&gt;
-- @param IntervalInSeconds [ElasticsearchBufferingIntervalInSeconds] &lt;p&gt;Buffer incoming data for the specified period of time, in seconds, before delivering it to the destination. The default value is 300 (5 minutes).&lt;/p&gt;
-- @param SizeInMBs [ElasticsearchBufferingSizeInMBs] &lt;p&gt;Buffer incoming data to the specified size, in MBs, before delivering it to the destination. The default value is 5.&lt;/p&gt; &lt;p&gt;We recommend setting this parameter to a value greater than the amount of data you typically ingest into the delivery stream in 10 seconds. For example, if you typically ingest data at 1 MB/sec, the value should be 10 MB or higher.&lt;/p&gt;
function M.ElasticsearchBufferingHints(IntervalInSeconds, SizeInMBs, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ElasticsearchBufferingHints")
	local t = { 
		["IntervalInSeconds"] = IntervalInSeconds,
		["SizeInMBs"] = SizeInMBs,
	}
	M.AssertElasticsearchBufferingHints(t)
	return t
end

local CloudWatchLoggingOptions_keys = { "Enabled" = true, "LogStreamName" = true, "LogGroupName" = true, nil }

function M.AssertCloudWatchLoggingOptions(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CloudWatchLoggingOptions to be of type 'table'")
	if struct["Enabled"] then M.AssertBooleanObject(struct["Enabled"]) end
	if struct["LogStreamName"] then M.AssertLogStreamName(struct["LogStreamName"]) end
	if struct["LogGroupName"] then M.AssertLogGroupName(struct["LogGroupName"]) end
	for k,_ in pairs(struct) do
		assert(CloudWatchLoggingOptions_keys[k], "CloudWatchLoggingOptions contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CloudWatchLoggingOptions
-- &lt;p&gt;Describes the CloudWatch logging options for your delivery stream.&lt;/p&gt;
-- @param Enabled [BooleanObject] &lt;p&gt;Enables or disables CloudWatch logging.&lt;/p&gt;
-- @param LogStreamName [LogStreamName] &lt;p&gt;The CloudWatch log stream name for logging. This value is required if CloudWatch logging is enabled.&lt;/p&gt;
-- @param LogGroupName [LogGroupName] &lt;p&gt;The CloudWatch group name for logging. This value is required if CloudWatch logging is enabled.&lt;/p&gt;
function M.CloudWatchLoggingOptions(Enabled, LogStreamName, LogGroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CloudWatchLoggingOptions")
	local t = { 
		["Enabled"] = Enabled,
		["LogStreamName"] = LogStreamName,
		["LogGroupName"] = LogGroupName,
	}
	M.AssertCloudWatchLoggingOptions(t)
	return t
end

local ElasticsearchDestinationUpdate_keys = { "IndexName" = true, "S3Update" = true, "RetryOptions" = true, "RoleARN" = true, "BufferingHints" = true, "TypeName" = true, "CloudWatchLoggingOptions" = true, "DomainARN" = true, "IndexRotationPeriod" = true, "ProcessingConfiguration" = true, nil }

function M.AssertElasticsearchDestinationUpdate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ElasticsearchDestinationUpdate to be of type 'table'")
	if struct["IndexName"] then M.AssertElasticsearchIndexName(struct["IndexName"]) end
	if struct["S3Update"] then M.AssertS3DestinationUpdate(struct["S3Update"]) end
	if struct["RetryOptions"] then M.AssertElasticsearchRetryOptions(struct["RetryOptions"]) end
	if struct["RoleARN"] then M.AssertRoleARN(struct["RoleARN"]) end
	if struct["BufferingHints"] then M.AssertElasticsearchBufferingHints(struct["BufferingHints"]) end
	if struct["TypeName"] then M.AssertElasticsearchTypeName(struct["TypeName"]) end
	if struct["CloudWatchLoggingOptions"] then M.AssertCloudWatchLoggingOptions(struct["CloudWatchLoggingOptions"]) end
	if struct["DomainARN"] then M.AssertElasticsearchDomainARN(struct["DomainARN"]) end
	if struct["IndexRotationPeriod"] then M.AssertElasticsearchIndexRotationPeriod(struct["IndexRotationPeriod"]) end
	if struct["ProcessingConfiguration"] then M.AssertProcessingConfiguration(struct["ProcessingConfiguration"]) end
	for k,_ in pairs(struct) do
		assert(ElasticsearchDestinationUpdate_keys[k], "ElasticsearchDestinationUpdate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ElasticsearchDestinationUpdate
-- &lt;p&gt;Describes an update for a destination in Amazon ES.&lt;/p&gt;
-- @param IndexName [ElasticsearchIndexName] &lt;p&gt;The Elasticsearch index name.&lt;/p&gt;
-- @param S3Update [S3DestinationUpdate] &lt;p&gt;The Amazon S3 destination.&lt;/p&gt;
-- @param RetryOptions [ElasticsearchRetryOptions] &lt;p&gt;The retry behavior in the event that Firehose is unable to deliver documents to Amazon ES. Default value is 300 (5 minutes).&lt;/p&gt;
-- @param RoleARN [RoleARN] &lt;p&gt;The ARN of the IAM role to be assumed by Firehose for calling the Amazon ES Configuration API and for indexing documents. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/firehose/latest/dev/controlling-access.html#using-iam-s3&quot;&gt;Amazon S3 Bucket Access&lt;/a&gt;.&lt;/p&gt;
-- @param BufferingHints [ElasticsearchBufferingHints] &lt;p&gt;The buffering options. If no value is specified, &lt;b&gt;ElasticsearchBufferingHints&lt;/b&gt; object default values are used. &lt;/p&gt;
-- @param TypeName [ElasticsearchTypeName] &lt;p&gt;The Elasticsearch type name.&lt;/p&gt;
-- @param CloudWatchLoggingOptions [CloudWatchLoggingOptions] &lt;p&gt;The CloudWatch logging options for your delivery stream.&lt;/p&gt;
-- @param DomainARN [ElasticsearchDomainARN] &lt;p&gt;The ARN of the Amazon ES domain. The IAM role must have permissions for &lt;code&gt;DescribeElasticsearchDomain&lt;/code&gt;, &lt;code&gt;DescribeElasticsearchDomains&lt;/code&gt;, and &lt;code&gt;DescribeElasticsearchDomainConfig&lt;/code&gt; after assuming the IAM role specified in &lt;b&gt;RoleARN&lt;/b&gt;.&lt;/p&gt;
-- @param IndexRotationPeriod [ElasticsearchIndexRotationPeriod] &lt;p&gt;The Elasticsearch index rotation period. Index rotation appends a timestamp to IndexName to facilitate the expiration of old data. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/firehose/latest/dev/basic-deliver.html#es-index-rotation&quot;&gt;Index Rotation for Amazon Elasticsearch Service Destination&lt;/a&gt;. Default value is &lt;code&gt;OneDay&lt;/code&gt;.&lt;/p&gt;
-- @param ProcessingConfiguration [ProcessingConfiguration] &lt;p&gt;The data processing configuration.&lt;/p&gt;
function M.ElasticsearchDestinationUpdate(IndexName, S3Update, RetryOptions, RoleARN, BufferingHints, TypeName, CloudWatchLoggingOptions, DomainARN, IndexRotationPeriod, ProcessingConfiguration, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ElasticsearchDestinationUpdate")
	local t = { 
		["IndexName"] = IndexName,
		["S3Update"] = S3Update,
		["RetryOptions"] = RetryOptions,
		["RoleARN"] = RoleARN,
		["BufferingHints"] = BufferingHints,
		["TypeName"] = TypeName,
		["CloudWatchLoggingOptions"] = CloudWatchLoggingOptions,
		["DomainARN"] = DomainARN,
		["IndexRotationPeriod"] = IndexRotationPeriod,
		["ProcessingConfiguration"] = ProcessingConfiguration,
	}
	M.AssertElasticsearchDestinationUpdate(t)
	return t
end

local DestinationDescription_keys = { "ElasticsearchDestinationDescription" = true, "DestinationId" = true, "ExtendedS3DestinationDescription" = true, "S3DestinationDescription" = true, "RedshiftDestinationDescription" = true, nil }

function M.AssertDestinationDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DestinationDescription to be of type 'table'")
	assert(struct["DestinationId"], "Expected key DestinationId to exist in table")
	if struct["ElasticsearchDestinationDescription"] then M.AssertElasticsearchDestinationDescription(struct["ElasticsearchDestinationDescription"]) end
	if struct["DestinationId"] then M.AssertDestinationId(struct["DestinationId"]) end
	if struct["ExtendedS3DestinationDescription"] then M.AssertExtendedS3DestinationDescription(struct["ExtendedS3DestinationDescription"]) end
	if struct["S3DestinationDescription"] then M.AssertS3DestinationDescription(struct["S3DestinationDescription"]) end
	if struct["RedshiftDestinationDescription"] then M.AssertRedshiftDestinationDescription(struct["RedshiftDestinationDescription"]) end
	for k,_ in pairs(struct) do
		assert(DestinationDescription_keys[k], "DestinationDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DestinationDescription
-- &lt;p&gt;Describes the destination for a delivery stream.&lt;/p&gt;
-- @param ElasticsearchDestinationDescription [ElasticsearchDestinationDescription] &lt;p&gt;The destination in Amazon ES.&lt;/p&gt;
-- @param DestinationId [DestinationId] &lt;p&gt;The ID of the destination.&lt;/p&gt;
-- @param ExtendedS3DestinationDescription [ExtendedS3DestinationDescription] &lt;p&gt;The destination in Amazon S3.&lt;/p&gt;
-- @param S3DestinationDescription [S3DestinationDescription] &lt;p&gt;[Deprecated] The destination in Amazon S3.&lt;/p&gt;
-- @param RedshiftDestinationDescription [RedshiftDestinationDescription] &lt;p&gt;The destination in Amazon Redshift.&lt;/p&gt;
-- Required parameter: DestinationId
function M.DestinationDescription(ElasticsearchDestinationDescription, DestinationId, ExtendedS3DestinationDescription, S3DestinationDescription, RedshiftDestinationDescription, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DestinationDescription")
	local t = { 
		["ElasticsearchDestinationDescription"] = ElasticsearchDestinationDescription,
		["DestinationId"] = DestinationId,
		["ExtendedS3DestinationDescription"] = ExtendedS3DestinationDescription,
		["S3DestinationDescription"] = S3DestinationDescription,
		["RedshiftDestinationDescription"] = RedshiftDestinationDescription,
	}
	M.AssertDestinationDescription(t)
	return t
end

local CopyCommand_keys = { "DataTableName" = true, "CopyOptions" = true, "DataTableColumns" = true, nil }

function M.AssertCopyCommand(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CopyCommand to be of type 'table'")
	assert(struct["DataTableName"], "Expected key DataTableName to exist in table")
	if struct["DataTableName"] then M.AssertDataTableName(struct["DataTableName"]) end
	if struct["CopyOptions"] then M.AssertCopyOptions(struct["CopyOptions"]) end
	if struct["DataTableColumns"] then M.AssertDataTableColumns(struct["DataTableColumns"]) end
	for k,_ in pairs(struct) do
		assert(CopyCommand_keys[k], "CopyCommand contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CopyCommand
-- &lt;p&gt;Describes a &lt;code&gt;COPY&lt;/code&gt; command for Amazon Redshift.&lt;/p&gt;
-- @param DataTableName [DataTableName] &lt;p&gt;The name of the target table. The table must already exist in the database.&lt;/p&gt;
-- @param CopyOptions [CopyOptions] &lt;p&gt;Optional parameters to use with the Amazon Redshift &lt;code&gt;COPY&lt;/code&gt; command. For more information, see the &quot;Optional Parameters&quot; section of &lt;a href=&quot;http://docs.aws.amazon.com/redshift/latest/dg/r_COPY.html&quot;&gt;Amazon Redshift COPY command&lt;/a&gt;. Some possible examples that would apply to Firehose are as follows:&lt;/p&gt; &lt;p&gt; &lt;code&gt;delimiter '\t' lzop;&lt;/code&gt; - fields are delimited with &quot;\t&quot; (TAB character) and compressed using lzop.&lt;/p&gt; &lt;p&gt; &lt;code&gt;delimiter '|&lt;/code&gt; - fields are delimited with &quot;|&quot; (this is the default delimiter).&lt;/p&gt; &lt;p&gt; &lt;code&gt;delimiter '|' escape&lt;/code&gt; - the delimiter should be escaped.&lt;/p&gt; &lt;p&gt; &lt;code&gt;fixedwidth 'venueid:3,venuename:25,venuecity:12,venuestate:2,venueseats:6'&lt;/code&gt; - fields are fixed width in the source, with each width specified after every column in the table.&lt;/p&gt; &lt;p&gt; &lt;code&gt;JSON 's3://mybucket/jsonpaths.txt'&lt;/code&gt; - data is in JSON format, and the path specified is the format of the data.&lt;/p&gt; &lt;p&gt;For more examples, see &lt;a href=&quot;http://docs.aws.amazon.com/redshift/latest/dg/r_COPY_command_examples.html&quot;&gt;Amazon Redshift COPY command examples&lt;/a&gt;.&lt;/p&gt;
-- @param DataTableColumns [DataTableColumns] &lt;p&gt;A comma-separated list of column names.&lt;/p&gt;
-- Required parameter: DataTableName
function M.CopyCommand(DataTableName, CopyOptions, DataTableColumns, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CopyCommand")
	local t = { 
		["DataTableName"] = DataTableName,
		["CopyOptions"] = CopyOptions,
		["DataTableColumns"] = DataTableColumns,
	}
	M.AssertCopyCommand(t)
	return t
end

local S3DestinationUpdate_keys = { "RoleARN" = true, "Prefix" = true, "BufferingHints" = true, "EncryptionConfiguration" = true, "CompressionFormat" = true, "CloudWatchLoggingOptions" = true, "BucketARN" = true, nil }

function M.AssertS3DestinationUpdate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected S3DestinationUpdate to be of type 'table'")
	if struct["RoleARN"] then M.AssertRoleARN(struct["RoleARN"]) end
	if struct["Prefix"] then M.AssertPrefix(struct["Prefix"]) end
	if struct["BufferingHints"] then M.AssertBufferingHints(struct["BufferingHints"]) end
	if struct["EncryptionConfiguration"] then M.AssertEncryptionConfiguration(struct["EncryptionConfiguration"]) end
	if struct["CompressionFormat"] then M.AssertCompressionFormat(struct["CompressionFormat"]) end
	if struct["CloudWatchLoggingOptions"] then M.AssertCloudWatchLoggingOptions(struct["CloudWatchLoggingOptions"]) end
	if struct["BucketARN"] then M.AssertBucketARN(struct["BucketARN"]) end
	for k,_ in pairs(struct) do
		assert(S3DestinationUpdate_keys[k], "S3DestinationUpdate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type S3DestinationUpdate
-- &lt;p&gt;Describes an update for a destination in Amazon S3.&lt;/p&gt;
-- @param RoleARN [RoleARN] &lt;p&gt;The ARN of the AWS credentials.&lt;/p&gt;
-- @param Prefix [Prefix] &lt;p&gt;The &quot;YYYY/MM/DD/HH&quot; time format prefix is automatically used for delivered S3 files. You can specify an extra prefix to be added in front of the time format prefix. Note that if the prefix ends with a slash, it appears as a folder in the S3 bucket. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/firehose/latest/dev/basic-deliver.html&quot;&gt;Amazon S3 Object Name Format&lt;/a&gt; in the &lt;i&gt;Amazon Kinesis Firehose Developer Guide&lt;/i&gt;.&lt;/p&gt;
-- @param BufferingHints [BufferingHints] &lt;p&gt;The buffering option. If no value is specified, &lt;b&gt;BufferingHints&lt;/b&gt; object default values are used.&lt;/p&gt;
-- @param EncryptionConfiguration [EncryptionConfiguration] &lt;p&gt;The encryption configuration. If no value is specified, the default is no encryption.&lt;/p&gt;
-- @param CompressionFormat [CompressionFormat] &lt;p&gt;The compression format. If no value is specified, the default is &lt;code&gt;UNCOMPRESSED&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;The compression formats &lt;code&gt;SNAPPY&lt;/code&gt; or &lt;code&gt;ZIP&lt;/code&gt; cannot be specified for Amazon Redshift destinations because they are not supported by the Amazon Redshift &lt;code&gt;COPY&lt;/code&gt; operation that reads from the S3 bucket.&lt;/p&gt;
-- @param CloudWatchLoggingOptions [CloudWatchLoggingOptions] &lt;p&gt;The CloudWatch logging options for your delivery stream.&lt;/p&gt;
-- @param BucketARN [BucketARN] &lt;p&gt;The ARN of the S3 bucket.&lt;/p&gt;
function M.S3DestinationUpdate(RoleARN, Prefix, BufferingHints, EncryptionConfiguration, CompressionFormat, CloudWatchLoggingOptions, BucketARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating S3DestinationUpdate")
	local t = { 
		["RoleARN"] = RoleARN,
		["Prefix"] = Prefix,
		["BufferingHints"] = BufferingHints,
		["EncryptionConfiguration"] = EncryptionConfiguration,
		["CompressionFormat"] = CompressionFormat,
		["CloudWatchLoggingOptions"] = CloudWatchLoggingOptions,
		["BucketARN"] = BucketARN,
	}
	M.AssertS3DestinationUpdate(t)
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
-- &lt;p&gt;The specified input parameter has an value that is not valid.&lt;/p&gt;
-- @param message [ErrorMessage] &lt;p&gt;A message that provides information about the error.&lt;/p&gt;
function M.InvalidArgumentException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidArgumentException")
	local t = { 
		["message"] = message,
	}
	M.AssertInvalidArgumentException(t)
	return t
end

local ListDeliveryStreamsInput_keys = { "Limit" = true, "ExclusiveStartDeliveryStreamName" = true, nil }

function M.AssertListDeliveryStreamsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDeliveryStreamsInput to be of type 'table'")
	if struct["Limit"] then M.AssertListDeliveryStreamsInputLimit(struct["Limit"]) end
	if struct["ExclusiveStartDeliveryStreamName"] then M.AssertDeliveryStreamName(struct["ExclusiveStartDeliveryStreamName"]) end
	for k,_ in pairs(struct) do
		assert(ListDeliveryStreamsInput_keys[k], "ListDeliveryStreamsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDeliveryStreamsInput
--  
-- @param Limit [ListDeliveryStreamsInputLimit] &lt;p&gt;The maximum number of delivery streams to list.&lt;/p&gt;
-- @param ExclusiveStartDeliveryStreamName [DeliveryStreamName] &lt;p&gt;The name of the delivery stream to start the list with.&lt;/p&gt;
function M.ListDeliveryStreamsInput(Limit, ExclusiveStartDeliveryStreamName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListDeliveryStreamsInput")
	local t = { 
		["Limit"] = Limit,
		["ExclusiveStartDeliveryStreamName"] = ExclusiveStartDeliveryStreamName,
	}
	M.AssertListDeliveryStreamsInput(t)
	return t
end

local ExtendedS3DestinationConfiguration_keys = { "RoleARN" = true, "Prefix" = true, "BufferingHints" = true, "EncryptionConfiguration" = true, "CompressionFormat" = true, "S3BackupMode" = true, "CloudWatchLoggingOptions" = true, "S3BackupConfiguration" = true, "BucketARN" = true, "ProcessingConfiguration" = true, nil }

function M.AssertExtendedS3DestinationConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ExtendedS3DestinationConfiguration to be of type 'table'")
	assert(struct["RoleARN"], "Expected key RoleARN to exist in table")
	assert(struct["BucketARN"], "Expected key BucketARN to exist in table")
	if struct["RoleARN"] then M.AssertRoleARN(struct["RoleARN"]) end
	if struct["Prefix"] then M.AssertPrefix(struct["Prefix"]) end
	if struct["BufferingHints"] then M.AssertBufferingHints(struct["BufferingHints"]) end
	if struct["EncryptionConfiguration"] then M.AssertEncryptionConfiguration(struct["EncryptionConfiguration"]) end
	if struct["CompressionFormat"] then M.AssertCompressionFormat(struct["CompressionFormat"]) end
	if struct["S3BackupMode"] then M.AssertS3BackupMode(struct["S3BackupMode"]) end
	if struct["CloudWatchLoggingOptions"] then M.AssertCloudWatchLoggingOptions(struct["CloudWatchLoggingOptions"]) end
	if struct["S3BackupConfiguration"] then M.AssertS3DestinationConfiguration(struct["S3BackupConfiguration"]) end
	if struct["BucketARN"] then M.AssertBucketARN(struct["BucketARN"]) end
	if struct["ProcessingConfiguration"] then M.AssertProcessingConfiguration(struct["ProcessingConfiguration"]) end
	for k,_ in pairs(struct) do
		assert(ExtendedS3DestinationConfiguration_keys[k], "ExtendedS3DestinationConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ExtendedS3DestinationConfiguration
-- &lt;p&gt;Describes the configuration of a destination in Amazon S3.&lt;/p&gt;
-- @param RoleARN [RoleARN] &lt;p&gt;The ARN of the AWS credentials.&lt;/p&gt;
-- @param Prefix [Prefix] &lt;p&gt;The &quot;YYYY/MM/DD/HH&quot; time format prefix is automatically used for delivered S3 files. You can specify an extra prefix to be added in front of the time format prefix. Note that if the prefix ends with a slash, it appears as a folder in the S3 bucket. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/firehose/latest/dev/basic-deliver.html&quot;&gt;Amazon S3 Object Name Format&lt;/a&gt; in the &lt;i&gt;Amazon Kinesis Firehose Developer Guide&lt;/i&gt;.&lt;/p&gt;
-- @param BufferingHints [BufferingHints] &lt;p&gt;The buffering option.&lt;/p&gt;
-- @param EncryptionConfiguration [EncryptionConfiguration] &lt;p&gt;The encryption configuration. If no value is specified, the default is no encryption.&lt;/p&gt;
-- @param CompressionFormat [CompressionFormat] &lt;p&gt;The compression format. If no value is specified, the default is UNCOMPRESSED.&lt;/p&gt;
-- @param S3BackupMode [S3BackupMode] &lt;p&gt;The Amazon S3 backup mode.&lt;/p&gt;
-- @param CloudWatchLoggingOptions [CloudWatchLoggingOptions] &lt;p&gt;The CloudWatch logging options for your delivery stream.&lt;/p&gt;
-- @param S3BackupConfiguration [S3DestinationConfiguration] &lt;p&gt;The configuration for backup in Amazon S3.&lt;/p&gt;
-- @param BucketARN [BucketARN] &lt;p&gt;The ARN of the S3 bucket.&lt;/p&gt;
-- @param ProcessingConfiguration [ProcessingConfiguration] &lt;p&gt;The data processing configuration.&lt;/p&gt;
-- Required parameter: RoleARN
-- Required parameter: BucketARN
function M.ExtendedS3DestinationConfiguration(RoleARN, Prefix, BufferingHints, EncryptionConfiguration, CompressionFormat, S3BackupMode, CloudWatchLoggingOptions, S3BackupConfiguration, BucketARN, ProcessingConfiguration, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ExtendedS3DestinationConfiguration")
	local t = { 
		["RoleARN"] = RoleARN,
		["Prefix"] = Prefix,
		["BufferingHints"] = BufferingHints,
		["EncryptionConfiguration"] = EncryptionConfiguration,
		["CompressionFormat"] = CompressionFormat,
		["S3BackupMode"] = S3BackupMode,
		["CloudWatchLoggingOptions"] = CloudWatchLoggingOptions,
		["S3BackupConfiguration"] = S3BackupConfiguration,
		["BucketARN"] = BucketARN,
		["ProcessingConfiguration"] = ProcessingConfiguration,
	}
	M.AssertExtendedS3DestinationConfiguration(t)
	return t
end

local DescribeDeliveryStreamInput_keys = { "ExclusiveStartDestinationId" = true, "DeliveryStreamName" = true, "Limit" = true, nil }

function M.AssertDescribeDeliveryStreamInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDeliveryStreamInput to be of type 'table'")
	assert(struct["DeliveryStreamName"], "Expected key DeliveryStreamName to exist in table")
	if struct["ExclusiveStartDestinationId"] then M.AssertDestinationId(struct["ExclusiveStartDestinationId"]) end
	if struct["DeliveryStreamName"] then M.AssertDeliveryStreamName(struct["DeliveryStreamName"]) end
	if struct["Limit"] then M.AssertDescribeDeliveryStreamInputLimit(struct["Limit"]) end
	for k,_ in pairs(struct) do
		assert(DescribeDeliveryStreamInput_keys[k], "DescribeDeliveryStreamInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDeliveryStreamInput
--  
-- @param ExclusiveStartDestinationId [DestinationId] &lt;p&gt;The ID of the destination to start returning the destination information. Currently Firehose supports one destination per delivery stream.&lt;/p&gt;
-- @param DeliveryStreamName [DeliveryStreamName] &lt;p&gt;The name of the delivery stream.&lt;/p&gt;
-- @param Limit [DescribeDeliveryStreamInputLimit] &lt;p&gt;The limit on the number of destinations to return. Currently, you can have one destination per delivery stream.&lt;/p&gt;
-- Required parameter: DeliveryStreamName
function M.DescribeDeliveryStreamInput(ExclusiveStartDestinationId, DeliveryStreamName, Limit, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeDeliveryStreamInput")
	local t = { 
		["ExclusiveStartDestinationId"] = ExclusiveStartDestinationId,
		["DeliveryStreamName"] = DeliveryStreamName,
		["Limit"] = Limit,
	}
	M.AssertDescribeDeliveryStreamInput(t)
	return t
end

local ProcessingConfiguration_keys = { "Enabled" = true, "Processors" = true, nil }

function M.AssertProcessingConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ProcessingConfiguration to be of type 'table'")
	if struct["Enabled"] then M.AssertBooleanObject(struct["Enabled"]) end
	if struct["Processors"] then M.AssertProcessorList(struct["Processors"]) end
	for k,_ in pairs(struct) do
		assert(ProcessingConfiguration_keys[k], "ProcessingConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ProcessingConfiguration
-- &lt;p&gt;Describes a data processing configuration.&lt;/p&gt;
-- @param Enabled [BooleanObject] &lt;p&gt;Enables or disables data processing.&lt;/p&gt;
-- @param Processors [ProcessorList] &lt;p&gt;The data processors.&lt;/p&gt;
function M.ProcessingConfiguration(Enabled, Processors, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ProcessingConfiguration")
	local t = { 
		["Enabled"] = Enabled,
		["Processors"] = Processors,
	}
	M.AssertProcessingConfiguration(t)
	return t
end

function M.AssertDataTableName(str)
	assert(str)
	assert(type(str) == "string", "Expected DataTableName to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.DataTableName(str)
	M.AssertDataTableName(str)
	return str
end

function M.AssertProcessorParameterValue(str)
	assert(str)
	assert(type(str) == "string", "Expected ProcessorParameterValue to be of type 'string'")
	assert(#str <= 512, "Expected string to be max 512 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ProcessorParameterValue(str)
	M.AssertProcessorParameterValue(str)
	return str
end

function M.AssertElasticsearchS3BackupMode(str)
	assert(str)
	assert(type(str) == "string", "Expected ElasticsearchS3BackupMode to be of type 'string'")
end

--  
function M.ElasticsearchS3BackupMode(str)
	M.AssertElasticsearchS3BackupMode(str)
	return str
end

function M.AssertBucketARN(str)
	assert(str)
	assert(type(str) == "string", "Expected BucketARN to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("arn:.*"), "Expected string to match pattern 'arn:.*'")
end

--  
function M.BucketARN(str)
	M.AssertBucketARN(str)
	return str
end

function M.AssertElasticsearchIndexRotationPeriod(str)
	assert(str)
	assert(type(str) == "string", "Expected ElasticsearchIndexRotationPeriod to be of type 'string'")
end

--  
function M.ElasticsearchIndexRotationPeriod(str)
	M.AssertElasticsearchIndexRotationPeriod(str)
	return str
end

function M.AssertLogStreamName(str)
	assert(str)
	assert(type(str) == "string", "Expected LogStreamName to be of type 'string'")
end

--  
function M.LogStreamName(str)
	M.AssertLogStreamName(str)
	return str
end

function M.AssertDeliveryStreamName(str)
	assert(str)
	assert(type(str) == "string", "Expected DeliveryStreamName to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[a-zA-Z0-9_.-]+"), "Expected string to match pattern '[a-zA-Z0-9_.-]+'")
end

--  
function M.DeliveryStreamName(str)
	M.AssertDeliveryStreamName(str)
	return str
end

function M.AssertUsername(str)
	assert(str)
	assert(type(str) == "string", "Expected Username to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.Username(str)
	M.AssertUsername(str)
	return str
end

function M.AssertDeliveryStreamVersionId(str)
	assert(str)
	assert(type(str) == "string", "Expected DeliveryStreamVersionId to be of type 'string'")
	assert(#str <= 50, "Expected string to be max 50 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[0-9]+"), "Expected string to match pattern '[0-9]+'")
end

--  
function M.DeliveryStreamVersionId(str)
	M.AssertDeliveryStreamVersionId(str)
	return str
end

function M.AssertElasticsearchIndexName(str)
	assert(str)
	assert(type(str) == "string", "Expected ElasticsearchIndexName to be of type 'string'")
	assert(#str <= 80, "Expected string to be max 80 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ElasticsearchIndexName(str)
	M.AssertElasticsearchIndexName(str)
	return str
end

function M.AssertDestinationId(str)
	assert(str)
	assert(type(str) == "string", "Expected DestinationId to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.DestinationId(str)
	M.AssertDestinationId(str)
	return str
end

function M.AssertDeliveryStreamStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected DeliveryStreamStatus to be of type 'string'")
end

--  
function M.DeliveryStreamStatus(str)
	M.AssertDeliveryStreamStatus(str)
	return str
end

function M.AssertRoleARN(str)
	assert(str)
	assert(type(str) == "string", "Expected RoleARN to be of type 'string'")
	assert(#str <= 512, "Expected string to be max 512 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("arn:.*"), "Expected string to match pattern 'arn:.*'")
end

--  
function M.RoleARN(str)
	M.AssertRoleARN(str)
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

function M.AssertDeliveryStreamARN(str)
	assert(str)
	assert(type(str) == "string", "Expected DeliveryStreamARN to be of type 'string'")
	assert(#str <= 512, "Expected string to be max 512 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("arn:.*"), "Expected string to match pattern 'arn:.*'")
end

--  
function M.DeliveryStreamARN(str)
	M.AssertDeliveryStreamARN(str)
	return str
end

function M.AssertProcessorParameterName(str)
	assert(str)
	assert(type(str) == "string", "Expected ProcessorParameterName to be of type 'string'")
end

--  
function M.ProcessorParameterName(str)
	M.AssertProcessorParameterName(str)
	return str
end

function M.AssertElasticsearchDomainARN(str)
	assert(str)
	assert(type(str) == "string", "Expected ElasticsearchDomainARN to be of type 'string'")
	assert(#str <= 512, "Expected string to be max 512 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("arn:.*"), "Expected string to match pattern 'arn:.*'")
end

--  
function M.ElasticsearchDomainARN(str)
	M.AssertElasticsearchDomainARN(str)
	return str
end

function M.AssertDataTableColumns(str)
	assert(str)
	assert(type(str) == "string", "Expected DataTableColumns to be of type 'string'")
end

--  
function M.DataTableColumns(str)
	M.AssertDataTableColumns(str)
	return str
end

function M.AssertS3BackupMode(str)
	assert(str)
	assert(type(str) == "string", "Expected S3BackupMode to be of type 'string'")
end

--  
function M.S3BackupMode(str)
	M.AssertS3BackupMode(str)
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

function M.AssertProcessorType(str)
	assert(str)
	assert(type(str) == "string", "Expected ProcessorType to be of type 'string'")
end

--  
function M.ProcessorType(str)
	M.AssertProcessorType(str)
	return str
end

function M.AssertClusterJDBCURL(str)
	assert(str)
	assert(type(str) == "string", "Expected ClusterJDBCURL to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("jdbc:(redshift|postgresql)://((?!-)[A-Za-z0-9-]{1,63}(?&lt;!-)%.)+redshift%.amazonaws%.com:%d{1,5}/[a-zA-Z0-9_$]+"), "Expected string to match pattern 'jdbc:(redshift|postgresql)://((?!-)[A-Za-z0-9-]{1,63}(?&lt;!-)%.)+redshift%.amazonaws%.com:%d{1,5}/[a-zA-Z0-9_$]+'")
end

--  
function M.ClusterJDBCURL(str)
	M.AssertClusterJDBCURL(str)
	return str
end

function M.AssertCopyOptions(str)
	assert(str)
	assert(type(str) == "string", "Expected CopyOptions to be of type 'string'")
end

--  
function M.CopyOptions(str)
	M.AssertCopyOptions(str)
	return str
end

function M.AssertNoEncryptionConfig(str)
	assert(str)
	assert(type(str) == "string", "Expected NoEncryptionConfig to be of type 'string'")
end

--  
function M.NoEncryptionConfig(str)
	M.AssertNoEncryptionConfig(str)
	return str
end

function M.AssertPrefix(str)
	assert(str)
	assert(type(str) == "string", "Expected Prefix to be of type 'string'")
end

--  
function M.Prefix(str)
	M.AssertPrefix(str)
	return str
end

function M.AssertAWSKMSKeyARN(str)
	assert(str)
	assert(type(str) == "string", "Expected AWSKMSKeyARN to be of type 'string'")
	assert(#str <= 512, "Expected string to be max 512 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("arn:.*"), "Expected string to match pattern 'arn:.*'")
end

--  
function M.AWSKMSKeyARN(str)
	M.AssertAWSKMSKeyARN(str)
	return str
end

function M.AssertRedshiftS3BackupMode(str)
	assert(str)
	assert(type(str) == "string", "Expected RedshiftS3BackupMode to be of type 'string'")
end

--  
function M.RedshiftS3BackupMode(str)
	M.AssertRedshiftS3BackupMode(str)
	return str
end

function M.AssertLogGroupName(str)
	assert(str)
	assert(type(str) == "string", "Expected LogGroupName to be of type 'string'")
end

--  
function M.LogGroupName(str)
	M.AssertLogGroupName(str)
	return str
end

function M.AssertPassword(str)
	assert(str)
	assert(type(str) == "string", "Expected Password to be of type 'string'")
	assert(#str >= 6, "Expected string to be min 6 characters")
end

--  
function M.Password(str)
	M.AssertPassword(str)
	return str
end

function M.AssertPutResponseRecordId(str)
	assert(str)
	assert(type(str) == "string", "Expected PutResponseRecordId to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.PutResponseRecordId(str)
	M.AssertPutResponseRecordId(str)
	return str
end

function M.AssertElasticsearchTypeName(str)
	assert(str)
	assert(type(str) == "string", "Expected ElasticsearchTypeName to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ElasticsearchTypeName(str)
	M.AssertElasticsearchTypeName(str)
	return str
end

function M.AssertCompressionFormat(str)
	assert(str)
	assert(type(str) == "string", "Expected CompressionFormat to be of type 'string'")
end

--  
function M.CompressionFormat(str)
	M.AssertCompressionFormat(str)
	return str
end

function M.AssertListDeliveryStreamsInputLimit(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected ListDeliveryStreamsInputLimit to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 10000, "Expected integer to be max 10000")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.ListDeliveryStreamsInputLimit(integer)
	M.AssertListDeliveryStreamsInputLimit(integer)
	return integer
end

function M.AssertElasticsearchBufferingSizeInMBs(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected ElasticsearchBufferingSizeInMBs to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 100, "Expected integer to be max 100")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.ElasticsearchBufferingSizeInMBs(integer)
	M.AssertElasticsearchBufferingSizeInMBs(integer)
	return integer
end

function M.AssertElasticsearchRetryDurationInSeconds(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected ElasticsearchRetryDurationInSeconds to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 7200, "Expected integer to be max 7200")
end

function M.ElasticsearchRetryDurationInSeconds(integer)
	M.AssertElasticsearchRetryDurationInSeconds(integer)
	return integer
end

function M.AssertElasticsearchBufferingIntervalInSeconds(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected ElasticsearchBufferingIntervalInSeconds to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 900, "Expected integer to be max 900")
	assert(integer >= 60, "Expected integer to be min 60")
end

function M.ElasticsearchBufferingIntervalInSeconds(integer)
	M.AssertElasticsearchBufferingIntervalInSeconds(integer)
	return integer
end

function M.AssertIntervalInSeconds(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected IntervalInSeconds to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 900, "Expected integer to be max 900")
	assert(integer >= 60, "Expected integer to be min 60")
end

function M.IntervalInSeconds(integer)
	M.AssertIntervalInSeconds(integer)
	return integer
end

function M.AssertDescribeDeliveryStreamInputLimit(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected DescribeDeliveryStreamInputLimit to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 10000, "Expected integer to be max 10000")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.DescribeDeliveryStreamInputLimit(integer)
	M.AssertDescribeDeliveryStreamInputLimit(integer)
	return integer
end

function M.AssertSizeInMBs(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected SizeInMBs to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 128, "Expected integer to be max 128")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.SizeInMBs(integer)
	M.AssertSizeInMBs(integer)
	return integer
end

function M.AssertRedshiftRetryDurationInSeconds(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected RedshiftRetryDurationInSeconds to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 7200, "Expected integer to be max 7200")
end

function M.RedshiftRetryDurationInSeconds(integer)
	M.AssertRedshiftRetryDurationInSeconds(integer)
	return integer
end

function M.AssertNonNegativeIntegerObject(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected NonNegativeIntegerObject to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.NonNegativeIntegerObject(integer)
	M.AssertNonNegativeIntegerObject(integer)
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
	assert(#blob <= 1024000, "Expected blob to be max 1024000")
end

function M.Data(blob)
	M.AssertData(blob)
	return blob
end

function M.AssertPutRecordBatchRequestEntryList(list)
	assert(list)
	assert(type(list) == "table", "Expected PutRecordBatchRequestEntryList to be of type ''table")
	assert(#list <= 500, "Expected list to be contain 500 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AssertRecord(v)
	end
end

--  
-- List of Record objects
function M.PutRecordBatchRequestEntryList(list)
	M.AssertPutRecordBatchRequestEntryList(list)
	return list
end

function M.AssertProcessorList(list)
	assert(list)
	assert(type(list) == "table", "Expected ProcessorList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertProcessor(v)
	end
end

--  
-- List of Processor objects
function M.ProcessorList(list)
	M.AssertProcessorList(list)
	return list
end

function M.AssertDeliveryStreamNameList(list)
	assert(list)
	assert(type(list) == "table", "Expected DeliveryStreamNameList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertDeliveryStreamName(v)
	end
end

--  
-- List of DeliveryStreamName objects
function M.DeliveryStreamNameList(list)
	M.AssertDeliveryStreamNameList(list)
	return list
end

function M.AssertProcessorParameterList(list)
	assert(list)
	assert(type(list) == "table", "Expected ProcessorParameterList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertProcessorParameter(v)
	end
end

--  
-- List of ProcessorParameter objects
function M.ProcessorParameterList(list)
	M.AssertProcessorParameterList(list)
	return list
end

function M.AssertPutRecordBatchResponseEntryList(list)
	assert(list)
	assert(type(list) == "table", "Expected PutRecordBatchResponseEntryList to be of type ''table")
	assert(#list <= 500, "Expected list to be contain 500 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AssertPutRecordBatchResponseEntry(v)
	end
end

--  
-- List of PutRecordBatchResponseEntry objects
function M.PutRecordBatchResponseEntryList(list)
	M.AssertPutRecordBatchResponseEntryList(list)
	return list
end

function M.AssertDestinationDescriptionList(list)
	assert(list)
	assert(type(list) == "table", "Expected DestinationDescriptionList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertDestinationDescription(v)
	end
end

--  
-- List of DestinationDescription objects
function M.DestinationDescriptionList(list)
	M.AssertDestinationDescriptionList(list)
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
			return "firehose.amazonaws.com"
		end
	end
	local ss = { "firehose" }
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
--- CreateDeliveryStream
-- @param CreateDeliveryStreamInput
-- @param cb Callback function accepting two args: response, error_message
function M.CreateDeliveryStreamAsync(CreateDeliveryStreamInput, cb)
	assert(CreateDeliveryStreamInput, "You must provide a CreateDeliveryStreamInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Firehose_20150804.CreateDeliveryStream",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateDeliveryStreamInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeDeliveryStream
-- @param DescribeDeliveryStreamInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeDeliveryStreamAsync(DescribeDeliveryStreamInput, cb)
	assert(DescribeDeliveryStreamInput, "You must provide a DescribeDeliveryStreamInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Firehose_20150804.DescribeDeliveryStream",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeDeliveryStreamInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateDestination
-- @param UpdateDestinationInput
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateDestinationAsync(UpdateDestinationInput, cb)
	assert(UpdateDestinationInput, "You must provide a UpdateDestinationInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Firehose_20150804.UpdateDestination",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateDestinationInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteDeliveryStream
-- @param DeleteDeliveryStreamInput
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteDeliveryStreamAsync(DeleteDeliveryStreamInput, cb)
	assert(DeleteDeliveryStreamInput, "You must provide a DeleteDeliveryStreamInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Firehose_20150804.DeleteDeliveryStream",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteDeliveryStreamInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListDeliveryStreams
-- @param ListDeliveryStreamsInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListDeliveryStreamsAsync(ListDeliveryStreamsInput, cb)
	assert(ListDeliveryStreamsInput, "You must provide a ListDeliveryStreamsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Firehose_20150804.ListDeliveryStreams",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListDeliveryStreamsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- PutRecordBatch
-- @param PutRecordBatchInput
-- @param cb Callback function accepting two args: response, error_message
function M.PutRecordBatchAsync(PutRecordBatchInput, cb)
	assert(PutRecordBatchInput, "You must provide a PutRecordBatchInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Firehose_20150804.PutRecordBatch",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", PutRecordBatchInput, headers, M.metadata, cb)
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
		[headers.AMZ_TARGET_HEADER] = "Firehose_20150804.PutRecord",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", PutRecordInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end


return M
