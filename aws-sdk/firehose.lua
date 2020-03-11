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

local keys = {}
local asserts = {}

keys.ServiceUnavailableException = { ["message"] = true, nil }

function asserts.AssertServiceUnavailableException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ServiceUnavailableException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ServiceUnavailableException[k], "ServiceUnavailableException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ServiceUnavailableException
-- <p>The service is unavailable. Back off and retry the operation. If you continue to see the exception, throughput limits for the delivery stream may have been exceeded. For more information about limits and how to request an increase, see <a href="http://docs.aws.amazon.com/firehose/latest/dev/limits.html">Amazon Kinesis Data Firehose Limits</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] <p>A message that provides information about the error.</p>
-- @return ServiceUnavailableException structure as a key-value pair table
function M.ServiceUnavailableException(args)
	assert(args, "You must provide an argument table when creating ServiceUnavailableException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertServiceUnavailableException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DataFormatConversionConfiguration = { ["OutputFormatConfiguration"] = true, ["SchemaConfiguration"] = true, ["Enabled"] = true, ["InputFormatConfiguration"] = true, nil }

function asserts.AssertDataFormatConversionConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DataFormatConversionConfiguration to be of type 'table'")
	if struct["OutputFormatConfiguration"] then asserts.AssertOutputFormatConfiguration(struct["OutputFormatConfiguration"]) end
	if struct["SchemaConfiguration"] then asserts.AssertSchemaConfiguration(struct["SchemaConfiguration"]) end
	if struct["Enabled"] then asserts.AssertBooleanObject(struct["Enabled"]) end
	if struct["InputFormatConfiguration"] then asserts.AssertInputFormatConfiguration(struct["InputFormatConfiguration"]) end
	for k,_ in pairs(struct) do
		assert(keys.DataFormatConversionConfiguration[k], "DataFormatConversionConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DataFormatConversionConfiguration
-- <p>Specifies that you want Kinesis Data Firehose to convert data from the JSON format to the Parquet or ORC format before writing it to Amazon S3. Kinesis Data Firehose uses the serializer and deserializer that you specify, in addition to the column information from the AWS Glue table, to deserialize your input data from JSON and then serialize it to the Parquet or ORC format. For more information, see <a href="https://docs.aws.amazon.com/firehose/latest/dev/record-format-conversion.html">Kinesis Data Firehose Record Format Conversion</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OutputFormatConfiguration [OutputFormatConfiguration] <p>Specifies the serializer that you want Kinesis Data Firehose to use to convert the format of your data to the Parquet or ORC format.</p>
-- * SchemaConfiguration [SchemaConfiguration] <p>Specifies the AWS Glue Data Catalog table that contains the column information.</p>
-- * Enabled [BooleanObject] <p>Defaults to <code>true</code>. Set it to <code>false</code> if you want to disable format conversion while preserving the configuration details.</p>
-- * InputFormatConfiguration [InputFormatConfiguration] <p>Specifies the deserializer that you want Kinesis Data Firehose to use to convert the format of your data from JSON.</p>
-- @return DataFormatConversionConfiguration structure as a key-value pair table
function M.DataFormatConversionConfiguration(args)
	assert(args, "You must provide an argument table when creating DataFormatConversionConfiguration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["OutputFormatConfiguration"] = args["OutputFormatConfiguration"],
		["SchemaConfiguration"] = args["SchemaConfiguration"],
		["Enabled"] = args["Enabled"],
		["InputFormatConfiguration"] = args["InputFormatConfiguration"],
	}
	asserts.AssertDataFormatConversionConfiguration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateDestinationOutput = { nil }

function asserts.AssertUpdateDestinationOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateDestinationOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.UpdateDestinationOutput[k], "UpdateDestinationOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateDestinationOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return UpdateDestinationOutput structure as a key-value pair table
function M.UpdateDestinationOutput(args)
	assert(args, "You must provide an argument table when creating UpdateDestinationOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertUpdateDestinationOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.KMSEncryptionConfig = { ["AWSKMSKeyARN"] = true, nil }

function asserts.AssertKMSEncryptionConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected KMSEncryptionConfig to be of type 'table'")
	assert(struct["AWSKMSKeyARN"], "Expected key AWSKMSKeyARN to exist in table")
	if struct["AWSKMSKeyARN"] then asserts.AssertAWSKMSKeyARN(struct["AWSKMSKeyARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.KMSEncryptionConfig[k], "KMSEncryptionConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type KMSEncryptionConfig
-- <p>Describes an encryption key for a destination in Amazon S3.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AWSKMSKeyARN [AWSKMSKeyARN] <p>The Amazon Resource Name (ARN) of the encryption key. Must belong to the same AWS Region as the destination Amazon S3 bucket. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and AWS Service Namespaces</a>.</p>
-- Required key: AWSKMSKeyARN
-- @return KMSEncryptionConfig structure as a key-value pair table
function M.KMSEncryptionConfig(args)
	assert(args, "You must provide an argument table when creating KMSEncryptionConfig")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AWSKMSKeyARN"] = args["AWSKMSKeyARN"],
	}
	asserts.AssertKMSEncryptionConfig(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.HiveJsonSerDe = { ["TimestampFormats"] = true, nil }

function asserts.AssertHiveJsonSerDe(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HiveJsonSerDe to be of type 'table'")
	if struct["TimestampFormats"] then asserts.AssertListOfNonEmptyStrings(struct["TimestampFormats"]) end
	for k,_ in pairs(struct) do
		assert(keys.HiveJsonSerDe[k], "HiveJsonSerDe contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HiveJsonSerDe
-- <p>The native Hive / HCatalog JsonSerDe. Used by Kinesis Data Firehose for deserializing data, which means converting it from the JSON format in preparation for serializing it to the Parquet or ORC format. This is one of two deserializers you can choose, depending on which one offers the functionality you need. The other option is the OpenX SerDe.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TimestampFormats [ListOfNonEmptyStrings] <p>Indicates how you want Kinesis Data Firehose to parse the date and time stamps that may be present in your input data JSON. To specify these format strings, follow the pattern syntax of JodaTime's DateTimeFormat format strings. For more information, see <a href="https://www.joda.org/joda-time/apidocs/org/joda/time/format/DateTimeFormat.html">Class DateTimeFormat</a>. You can also use the special value <code>millis</code> to parse time stamps in epoch milliseconds. If you don't specify a format, Kinesis Data Firehose uses <code>java.sql.Timestamp::valueOf</code> by default.</p>
-- @return HiveJsonSerDe structure as a key-value pair table
function M.HiveJsonSerDe(args)
	assert(args, "You must provide an argument table when creating HiveJsonSerDe")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TimestampFormats"] = args["TimestampFormats"],
	}
	asserts.AssertHiveJsonSerDe(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutRecordBatchOutput = { ["FailedPutCount"] = true, ["RequestResponses"] = true, nil }

function asserts.AssertPutRecordBatchOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutRecordBatchOutput to be of type 'table'")
	assert(struct["FailedPutCount"], "Expected key FailedPutCount to exist in table")
	assert(struct["RequestResponses"], "Expected key RequestResponses to exist in table")
	if struct["FailedPutCount"] then asserts.AssertNonNegativeIntegerObject(struct["FailedPutCount"]) end
	if struct["RequestResponses"] then asserts.AssertPutRecordBatchResponseEntryList(struct["RequestResponses"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutRecordBatchOutput[k], "PutRecordBatchOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutRecordBatchOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FailedPutCount [NonNegativeIntegerObject] <p>The number of records that might have failed processing.</p>
-- * RequestResponses [PutRecordBatchResponseEntryList] <p>The results array. For each record, the index of the response element is the same as the index used in the request array.</p>
-- Required key: FailedPutCount
-- Required key: RequestResponses
-- @return PutRecordBatchOutput structure as a key-value pair table
function M.PutRecordBatchOutput(args)
	assert(args, "You must provide an argument table when creating PutRecordBatchOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["FailedPutCount"] = args["FailedPutCount"],
		["RequestResponses"] = args["RequestResponses"],
	}
	asserts.AssertPutRecordBatchOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutRecordInput = { ["Record"] = true, ["DeliveryStreamName"] = true, nil }

function asserts.AssertPutRecordInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutRecordInput to be of type 'table'")
	assert(struct["DeliveryStreamName"], "Expected key DeliveryStreamName to exist in table")
	assert(struct["Record"], "Expected key Record to exist in table")
	if struct["Record"] then asserts.AssertRecord(struct["Record"]) end
	if struct["DeliveryStreamName"] then asserts.AssertDeliveryStreamName(struct["DeliveryStreamName"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutRecordInput[k], "PutRecordInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutRecordInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Record [Record] <p>The record.</p>
-- * DeliveryStreamName [DeliveryStreamName] <p>The name of the delivery stream.</p>
-- Required key: DeliveryStreamName
-- Required key: Record
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
		["Record"] = args["Record"],
		["DeliveryStreamName"] = args["DeliveryStreamName"],
	}
	asserts.AssertPutRecordInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListTagsForDeliveryStreamOutput = { ["HasMoreTags"] = true, ["Tags"] = true, nil }

function asserts.AssertListTagsForDeliveryStreamOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagsForDeliveryStreamOutput to be of type 'table'")
	assert(struct["Tags"], "Expected key Tags to exist in table")
	assert(struct["HasMoreTags"], "Expected key HasMoreTags to exist in table")
	if struct["HasMoreTags"] then asserts.AssertBooleanObject(struct["HasMoreTags"]) end
	if struct["Tags"] then asserts.AssertListTagsForDeliveryStreamOutputTagList(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTagsForDeliveryStreamOutput[k], "ListTagsForDeliveryStreamOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagsForDeliveryStreamOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * HasMoreTags [BooleanObject] <p>If this is <code>true</code> in the response, more tags are available. To list the remaining tags, set <code>ExclusiveStartTagKey</code> to the key of the last tag returned and call <code>ListTagsForDeliveryStream</code> again.</p>
-- * Tags [ListTagsForDeliveryStreamOutputTagList] <p>A list of tags associated with <code>DeliveryStreamName</code>, starting with the first tag after <code>ExclusiveStartTagKey</code> and up to the specified <code>Limit</code>.</p>
-- Required key: Tags
-- Required key: HasMoreTags
-- @return ListTagsForDeliveryStreamOutput structure as a key-value pair table
function M.ListTagsForDeliveryStreamOutput(args)
	assert(args, "You must provide an argument table when creating ListTagsForDeliveryStreamOutput")
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
	asserts.AssertListTagsForDeliveryStreamOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Deserializer = { ["HiveJsonSerDe"] = true, ["OpenXJsonSerDe"] = true, nil }

function asserts.AssertDeserializer(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Deserializer to be of type 'table'")
	if struct["HiveJsonSerDe"] then asserts.AssertHiveJsonSerDe(struct["HiveJsonSerDe"]) end
	if struct["OpenXJsonSerDe"] then asserts.AssertOpenXJsonSerDe(struct["OpenXJsonSerDe"]) end
	for k,_ in pairs(struct) do
		assert(keys.Deserializer[k], "Deserializer contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Deserializer
-- <p>The deserializer you want Kinesis Data Firehose to use for converting the input data from JSON. Kinesis Data Firehose then serializes the data to its final format using the <a>Serializer</a>. Kinesis Data Firehose supports two types of deserializers: the <a href="https://cwiki.apache.org/confluence/display/Hive/LanguageManual+DDL#LanguageManualDDL-JSON">Apache Hive JSON SerDe</a> and the <a href="https://github.com/rcongiu/Hive-JSON-Serde">OpenX JSON SerDe</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * HiveJsonSerDe [HiveJsonSerDe] <p>The native Hive / HCatalog JsonSerDe. Used by Kinesis Data Firehose for deserializing data, which means converting it from the JSON format in preparation for serializing it to the Parquet or ORC format. This is one of two deserializers you can choose, depending on which one offers the functionality you need. The other option is the OpenX SerDe.</p>
-- * OpenXJsonSerDe [OpenXJsonSerDe] <p>The OpenX SerDe. Used by Kinesis Data Firehose for deserializing data, which means converting it from the JSON format in preparation for serializing it to the Parquet or ORC format. This is one of two deserializers you can choose, depending on which one offers the functionality you need. The other option is the native Hive / HCatalog JsonSerDe.</p>
-- @return Deserializer structure as a key-value pair table
function M.Deserializer(args)
	assert(args, "You must provide an argument table when creating Deserializer")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["HiveJsonSerDe"] = args["HiveJsonSerDe"],
		["OpenXJsonSerDe"] = args["OpenXJsonSerDe"],
	}
	asserts.AssertDeserializer(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeliveryStreamDescription = { ["DeliveryStreamType"] = true, ["HasMoreDestinations"] = true, ["LastUpdateTimestamp"] = true, ["Source"] = true, ["VersionId"] = true, ["CreateTimestamp"] = true, ["DeliveryStreamARN"] = true, ["DeliveryStreamStatus"] = true, ["DeliveryStreamName"] = true, ["Destinations"] = true, nil }

function asserts.AssertDeliveryStreamDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeliveryStreamDescription to be of type 'table'")
	assert(struct["DeliveryStreamName"], "Expected key DeliveryStreamName to exist in table")
	assert(struct["DeliveryStreamARN"], "Expected key DeliveryStreamARN to exist in table")
	assert(struct["DeliveryStreamStatus"], "Expected key DeliveryStreamStatus to exist in table")
	assert(struct["DeliveryStreamType"], "Expected key DeliveryStreamType to exist in table")
	assert(struct["VersionId"], "Expected key VersionId to exist in table")
	assert(struct["Destinations"], "Expected key Destinations to exist in table")
	assert(struct["HasMoreDestinations"], "Expected key HasMoreDestinations to exist in table")
	if struct["DeliveryStreamType"] then asserts.AssertDeliveryStreamType(struct["DeliveryStreamType"]) end
	if struct["HasMoreDestinations"] then asserts.AssertBooleanObject(struct["HasMoreDestinations"]) end
	if struct["LastUpdateTimestamp"] then asserts.AssertTimestamp(struct["LastUpdateTimestamp"]) end
	if struct["Source"] then asserts.AssertSourceDescription(struct["Source"]) end
	if struct["VersionId"] then asserts.AssertDeliveryStreamVersionId(struct["VersionId"]) end
	if struct["CreateTimestamp"] then asserts.AssertTimestamp(struct["CreateTimestamp"]) end
	if struct["DeliveryStreamARN"] then asserts.AssertDeliveryStreamARN(struct["DeliveryStreamARN"]) end
	if struct["DeliveryStreamStatus"] then asserts.AssertDeliveryStreamStatus(struct["DeliveryStreamStatus"]) end
	if struct["DeliveryStreamName"] then asserts.AssertDeliveryStreamName(struct["DeliveryStreamName"]) end
	if struct["Destinations"] then asserts.AssertDestinationDescriptionList(struct["Destinations"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeliveryStreamDescription[k], "DeliveryStreamDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeliveryStreamDescription
-- <p>Contains information about a delivery stream.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DeliveryStreamType [DeliveryStreamType] <p>The delivery stream type. This can be one of the following values:</p> <ul> <li> <p> <code>DirectPut</code>: Provider applications access the delivery stream directly.</p> </li> <li> <p> <code>KinesisStreamAsSource</code>: The delivery stream uses a Kinesis data stream as a source.</p> </li> </ul>
-- * HasMoreDestinations [BooleanObject] <p>Indicates whether there are more destinations available to list.</p>
-- * LastUpdateTimestamp [Timestamp] <p>The date and time that the delivery stream was last updated.</p>
-- * Source [SourceDescription] <p>If the <code>DeliveryStreamType</code> parameter is <code>KinesisStreamAsSource</code>, a <a>SourceDescription</a> object describing the source Kinesis data stream.</p>
-- * VersionId [DeliveryStreamVersionId] <p>Each time the destination is updated for a delivery stream, the version ID is changed, and the current version ID is required when updating the destination. This is so that the service knows it is applying the changes to the correct version of the delivery stream.</p>
-- * CreateTimestamp [Timestamp] <p>The date and time that the delivery stream was created.</p>
-- * DeliveryStreamARN [DeliveryStreamARN] <p>The Amazon Resource Name (ARN) of the delivery stream. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and AWS Service Namespaces</a>.</p>
-- * DeliveryStreamStatus [DeliveryStreamStatus] <p>The status of the delivery stream.</p>
-- * DeliveryStreamName [DeliveryStreamName] <p>The name of the delivery stream.</p>
-- * Destinations [DestinationDescriptionList] <p>The destinations.</p>
-- Required key: DeliveryStreamName
-- Required key: DeliveryStreamARN
-- Required key: DeliveryStreamStatus
-- Required key: DeliveryStreamType
-- Required key: VersionId
-- Required key: Destinations
-- Required key: HasMoreDestinations
-- @return DeliveryStreamDescription structure as a key-value pair table
function M.DeliveryStreamDescription(args)
	assert(args, "You must provide an argument table when creating DeliveryStreamDescription")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DeliveryStreamType"] = args["DeliveryStreamType"],
		["HasMoreDestinations"] = args["HasMoreDestinations"],
		["LastUpdateTimestamp"] = args["LastUpdateTimestamp"],
		["Source"] = args["Source"],
		["VersionId"] = args["VersionId"],
		["CreateTimestamp"] = args["CreateTimestamp"],
		["DeliveryStreamARN"] = args["DeliveryStreamARN"],
		["DeliveryStreamStatus"] = args["DeliveryStreamStatus"],
		["DeliveryStreamName"] = args["DeliveryStreamName"],
		["Destinations"] = args["Destinations"],
	}
	asserts.AssertDeliveryStreamDescription(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TagDeliveryStreamOutput = { nil }

function asserts.AssertTagDeliveryStreamOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TagDeliveryStreamOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.TagDeliveryStreamOutput[k], "TagDeliveryStreamOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TagDeliveryStreamOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return TagDeliveryStreamOutput structure as a key-value pair table
function M.TagDeliveryStreamOutput(args)
	assert(args, "You must provide an argument table when creating TagDeliveryStreamOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertTagDeliveryStreamOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SplunkDestinationDescription = { ["S3DestinationDescription"] = true, ["HECEndpointType"] = true, ["HECToken"] = true, ["HECAcknowledgmentTimeoutInSeconds"] = true, ["RetryOptions"] = true, ["HECEndpoint"] = true, ["S3BackupMode"] = true, ["CloudWatchLoggingOptions"] = true, ["ProcessingConfiguration"] = true, nil }

function asserts.AssertSplunkDestinationDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SplunkDestinationDescription to be of type 'table'")
	if struct["S3DestinationDescription"] then asserts.AssertS3DestinationDescription(struct["S3DestinationDescription"]) end
	if struct["HECEndpointType"] then asserts.AssertHECEndpointType(struct["HECEndpointType"]) end
	if struct["HECToken"] then asserts.AssertHECToken(struct["HECToken"]) end
	if struct["HECAcknowledgmentTimeoutInSeconds"] then asserts.AssertHECAcknowledgmentTimeoutInSeconds(struct["HECAcknowledgmentTimeoutInSeconds"]) end
	if struct["RetryOptions"] then asserts.AssertSplunkRetryOptions(struct["RetryOptions"]) end
	if struct["HECEndpoint"] then asserts.AssertHECEndpoint(struct["HECEndpoint"]) end
	if struct["S3BackupMode"] then asserts.AssertSplunkS3BackupMode(struct["S3BackupMode"]) end
	if struct["CloudWatchLoggingOptions"] then asserts.AssertCloudWatchLoggingOptions(struct["CloudWatchLoggingOptions"]) end
	if struct["ProcessingConfiguration"] then asserts.AssertProcessingConfiguration(struct["ProcessingConfiguration"]) end
	for k,_ in pairs(struct) do
		assert(keys.SplunkDestinationDescription[k], "SplunkDestinationDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SplunkDestinationDescription
-- <p>Describes a destination in Splunk.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * S3DestinationDescription [S3DestinationDescription] <p>The Amazon S3 destination.&gt;</p>
-- * HECEndpointType [HECEndpointType] <p>This type can be either "Raw" or "Event."</p>
-- * HECToken [HECToken] <p>A GUID you obtain from your Splunk cluster when you create a new HEC endpoint.</p>
-- * HECAcknowledgmentTimeoutInSeconds [HECAcknowledgmentTimeoutInSeconds] <p>The amount of time that Kinesis Data Firehose waits to receive an acknowledgment from Splunk after it sends it data. At the end of the timeout period, Kinesis Data Firehose either tries to send the data again or considers it an error, based on your retry settings.</p>
-- * RetryOptions [SplunkRetryOptions] <p>The retry behavior in case Kinesis Data Firehose is unable to deliver data to Splunk or if it doesn't receive an acknowledgment of receipt from Splunk.</p>
-- * HECEndpoint [HECEndpoint] <p>The HTTP Event Collector (HEC) endpoint to which Kinesis Data Firehose sends your data.</p>
-- * S3BackupMode [SplunkS3BackupMode] <p>Defines how documents should be delivered to Amazon S3. When set to <code>FailedDocumentsOnly</code>, Kinesis Data Firehose writes any data that could not be indexed to the configured Amazon S3 destination. When set to <code>AllDocuments</code>, Kinesis Data Firehose delivers all incoming records to Amazon S3, and also writes failed documents to Amazon S3. Default value is <code>FailedDocumentsOnly</code>. </p>
-- * CloudWatchLoggingOptions [CloudWatchLoggingOptions] <p>The Amazon CloudWatch logging options for your delivery stream.</p>
-- * ProcessingConfiguration [ProcessingConfiguration] <p>The data processing configuration.</p>
-- @return SplunkDestinationDescription structure as a key-value pair table
function M.SplunkDestinationDescription(args)
	assert(args, "You must provide an argument table when creating SplunkDestinationDescription")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["S3DestinationDescription"] = args["S3DestinationDescription"],
		["HECEndpointType"] = args["HECEndpointType"],
		["HECToken"] = args["HECToken"],
		["HECAcknowledgmentTimeoutInSeconds"] = args["HECAcknowledgmentTimeoutInSeconds"],
		["RetryOptions"] = args["RetryOptions"],
		["HECEndpoint"] = args["HECEndpoint"],
		["S3BackupMode"] = args["S3BackupMode"],
		["CloudWatchLoggingOptions"] = args["CloudWatchLoggingOptions"],
		["ProcessingConfiguration"] = args["ProcessingConfiguration"],
	}
	asserts.AssertSplunkDestinationDescription(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.S3DestinationDescription = { ["RoleARN"] = true, ["Prefix"] = true, ["BufferingHints"] = true, ["EncryptionConfiguration"] = true, ["CompressionFormat"] = true, ["CloudWatchLoggingOptions"] = true, ["BucketARN"] = true, nil }

function asserts.AssertS3DestinationDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected S3DestinationDescription to be of type 'table'")
	assert(struct["RoleARN"], "Expected key RoleARN to exist in table")
	assert(struct["BucketARN"], "Expected key BucketARN to exist in table")
	assert(struct["BufferingHints"], "Expected key BufferingHints to exist in table")
	assert(struct["CompressionFormat"], "Expected key CompressionFormat to exist in table")
	assert(struct["EncryptionConfiguration"], "Expected key EncryptionConfiguration to exist in table")
	if struct["RoleARN"] then asserts.AssertRoleARN(struct["RoleARN"]) end
	if struct["Prefix"] then asserts.AssertPrefix(struct["Prefix"]) end
	if struct["BufferingHints"] then asserts.AssertBufferingHints(struct["BufferingHints"]) end
	if struct["EncryptionConfiguration"] then asserts.AssertEncryptionConfiguration(struct["EncryptionConfiguration"]) end
	if struct["CompressionFormat"] then asserts.AssertCompressionFormat(struct["CompressionFormat"]) end
	if struct["CloudWatchLoggingOptions"] then asserts.AssertCloudWatchLoggingOptions(struct["CloudWatchLoggingOptions"]) end
	if struct["BucketARN"] then asserts.AssertBucketARN(struct["BucketARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.S3DestinationDescription[k], "S3DestinationDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type S3DestinationDescription
-- <p>Describes a destination in Amazon S3.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RoleARN [RoleARN] <p>The Amazon Resource Name (ARN) of the AWS credentials. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and AWS Service Namespaces</a>.</p>
-- * Prefix [Prefix] <p>The "YYYY/MM/DD/HH" time format prefix is automatically used for delivered Amazon S3 files. You can specify an extra prefix to be added in front of the time format prefix. If the prefix ends with a slash, it appears as a folder in the S3 bucket. For more information, see <a href="http://docs.aws.amazon.com/firehose/latest/dev/basic-deliver.html#s3-object-name">Amazon S3 Object Name Format</a> in the <i>Amazon Kinesis Data Firehose Developer Guide</i>.</p>
-- * BufferingHints [BufferingHints] <p>The buffering option. If no value is specified, <code>BufferingHints</code> object default values are used.</p>
-- * EncryptionConfiguration [EncryptionConfiguration] <p>The encryption configuration. If no value is specified, the default is no encryption.</p>
-- * CompressionFormat [CompressionFormat] <p>The compression format. If no value is specified, the default is <code>UNCOMPRESSED</code>.</p>
-- * CloudWatchLoggingOptions [CloudWatchLoggingOptions] <p>The Amazon CloudWatch logging options for your delivery stream.</p>
-- * BucketARN [BucketARN] <p>The ARN of the S3 bucket. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and AWS Service Namespaces</a>.</p>
-- Required key: RoleARN
-- Required key: BucketARN
-- Required key: BufferingHints
-- Required key: CompressionFormat
-- Required key: EncryptionConfiguration
-- @return S3DestinationDescription structure as a key-value pair table
function M.S3DestinationDescription(args)
	assert(args, "You must provide an argument table when creating S3DestinationDescription")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RoleARN"] = args["RoleARN"],
		["Prefix"] = args["Prefix"],
		["BufferingHints"] = args["BufferingHints"],
		["EncryptionConfiguration"] = args["EncryptionConfiguration"],
		["CompressionFormat"] = args["CompressionFormat"],
		["CloudWatchLoggingOptions"] = args["CloudWatchLoggingOptions"],
		["BucketARN"] = args["BucketARN"],
	}
	asserts.AssertS3DestinationDescription(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UntagDeliveryStreamInput = { ["DeliveryStreamName"] = true, ["TagKeys"] = true, nil }

function asserts.AssertUntagDeliveryStreamInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UntagDeliveryStreamInput to be of type 'table'")
	assert(struct["DeliveryStreamName"], "Expected key DeliveryStreamName to exist in table")
	assert(struct["TagKeys"], "Expected key TagKeys to exist in table")
	if struct["DeliveryStreamName"] then asserts.AssertDeliveryStreamName(struct["DeliveryStreamName"]) end
	if struct["TagKeys"] then asserts.AssertTagKeyList(struct["TagKeys"]) end
	for k,_ in pairs(struct) do
		assert(keys.UntagDeliveryStreamInput[k], "UntagDeliveryStreamInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UntagDeliveryStreamInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DeliveryStreamName [DeliveryStreamName] <p>The name of the delivery stream.</p>
-- * TagKeys [TagKeyList] <p>A list of tag keys. Each corresponding tag is removed from the delivery stream.</p>
-- Required key: DeliveryStreamName
-- Required key: TagKeys
-- @return UntagDeliveryStreamInput structure as a key-value pair table
function M.UntagDeliveryStreamInput(args)
	assert(args, "You must provide an argument table when creating UntagDeliveryStreamInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DeliveryStreamName"] = args["DeliveryStreamName"],
		["TagKeys"] = args["TagKeys"],
	}
	asserts.AssertUntagDeliveryStreamInput(all_args)
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
-- <p>Metadata that you can assign to a delivery stream, consisting of a key-value pair.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Value [TagValue] <p>An optional string, which you can use to describe or define the tag. Maximum length: 256 characters. Valid characters: Unicode letters, digits, white space, _ . / = + - % @</p>
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

keys.PutRecordBatchResponseEntry = { ["RecordId"] = true, ["ErrorCode"] = true, ["ErrorMessage"] = true, nil }

function asserts.AssertPutRecordBatchResponseEntry(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutRecordBatchResponseEntry to be of type 'table'")
	if struct["RecordId"] then asserts.AssertPutResponseRecordId(struct["RecordId"]) end
	if struct["ErrorCode"] then asserts.AssertErrorCode(struct["ErrorCode"]) end
	if struct["ErrorMessage"] then asserts.AssertErrorMessage(struct["ErrorMessage"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutRecordBatchResponseEntry[k], "PutRecordBatchResponseEntry contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutRecordBatchResponseEntry
-- <p>Contains the result for an individual record from a <a>PutRecordBatch</a> request. If the record is successfully added to your delivery stream, it receives a record ID. If the record fails to be added to your delivery stream, the result includes an error code and an error message.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RecordId [PutResponseRecordId] <p>The ID of the record.</p>
-- * ErrorCode [ErrorCode] <p>The error code for an individual record result.</p>
-- * ErrorMessage [ErrorMessage] <p>The error message for an individual record result.</p>
-- @return PutRecordBatchResponseEntry structure as a key-value pair table
function M.PutRecordBatchResponseEntry(args)
	assert(args, "You must provide an argument table when creating PutRecordBatchResponseEntry")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RecordId"] = args["RecordId"],
		["ErrorCode"] = args["ErrorCode"],
		["ErrorMessage"] = args["ErrorMessage"],
	}
	asserts.AssertPutRecordBatchResponseEntry(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SourceDescription = { ["KinesisStreamSourceDescription"] = true, nil }

function asserts.AssertSourceDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SourceDescription to be of type 'table'")
	if struct["KinesisStreamSourceDescription"] then asserts.AssertKinesisStreamSourceDescription(struct["KinesisStreamSourceDescription"]) end
	for k,_ in pairs(struct) do
		assert(keys.SourceDescription[k], "SourceDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SourceDescription
-- <p>Details about a Kinesis data stream used as the source for a Kinesis Data Firehose delivery stream.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * KinesisStreamSourceDescription [KinesisStreamSourceDescription] <p>The <a>KinesisStreamSourceDescription</a> value for the source Kinesis data stream.</p>
-- @return SourceDescription structure as a key-value pair table
function M.SourceDescription(args)
	assert(args, "You must provide an argument table when creating SourceDescription")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["KinesisStreamSourceDescription"] = args["KinesisStreamSourceDescription"],
	}
	asserts.AssertSourceDescription(all_args)
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
-- <p>You have already reached the limit for a requested resource.</p>
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
-- <p>Another modification has already happened. Fetch <b>VersionId</b> again and use it to update the destination.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] <p>A message that provides information about the error.</p>
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

keys.ExtendedS3DestinationUpdate = { ["DataFormatConversionConfiguration"] = true, ["RoleARN"] = true, ["Prefix"] = true, ["BufferingHints"] = true, ["S3BackupUpdate"] = true, ["EncryptionConfiguration"] = true, ["CompressionFormat"] = true, ["S3BackupMode"] = true, ["CloudWatchLoggingOptions"] = true, ["BucketARN"] = true, ["ProcessingConfiguration"] = true, nil }

function asserts.AssertExtendedS3DestinationUpdate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ExtendedS3DestinationUpdate to be of type 'table'")
	if struct["DataFormatConversionConfiguration"] then asserts.AssertDataFormatConversionConfiguration(struct["DataFormatConversionConfiguration"]) end
	if struct["RoleARN"] then asserts.AssertRoleARN(struct["RoleARN"]) end
	if struct["Prefix"] then asserts.AssertPrefix(struct["Prefix"]) end
	if struct["BufferingHints"] then asserts.AssertBufferingHints(struct["BufferingHints"]) end
	if struct["S3BackupUpdate"] then asserts.AssertS3DestinationUpdate(struct["S3BackupUpdate"]) end
	if struct["EncryptionConfiguration"] then asserts.AssertEncryptionConfiguration(struct["EncryptionConfiguration"]) end
	if struct["CompressionFormat"] then asserts.AssertCompressionFormat(struct["CompressionFormat"]) end
	if struct["S3BackupMode"] then asserts.AssertS3BackupMode(struct["S3BackupMode"]) end
	if struct["CloudWatchLoggingOptions"] then asserts.AssertCloudWatchLoggingOptions(struct["CloudWatchLoggingOptions"]) end
	if struct["BucketARN"] then asserts.AssertBucketARN(struct["BucketARN"]) end
	if struct["ProcessingConfiguration"] then asserts.AssertProcessingConfiguration(struct["ProcessingConfiguration"]) end
	for k,_ in pairs(struct) do
		assert(keys.ExtendedS3DestinationUpdate[k], "ExtendedS3DestinationUpdate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ExtendedS3DestinationUpdate
-- <p>Describes an update for a destination in Amazon S3.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DataFormatConversionConfiguration [DataFormatConversionConfiguration] <p>The serializer, deserializer, and schema for converting data from the JSON format to the Parquet or ORC format before writing it to Amazon S3.</p>
-- * RoleARN [RoleARN] <p>The Amazon Resource Name (ARN) of the AWS credentials. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and AWS Service Namespaces</a>.</p>
-- * Prefix [Prefix] <p>The "YYYY/MM/DD/HH" time format prefix is automatically used for delivered Amazon S3 files. You can specify an extra prefix to be added in front of the time format prefix. If the prefix ends with a slash, it appears as a folder in the S3 bucket. For more information, see <a href="http://docs.aws.amazon.com/firehose/latest/dev/basic-deliver.html#s3-object-name">Amazon S3 Object Name Format</a> in the <i>Amazon Kinesis Data Firehose Developer Guide</i>.</p>
-- * BufferingHints [BufferingHints] <p>The buffering option.</p>
-- * S3BackupUpdate [S3DestinationUpdate] <p>The Amazon S3 destination for backup.</p>
-- * EncryptionConfiguration [EncryptionConfiguration] <p>The encryption configuration. If no value is specified, the default is no encryption.</p>
-- * CompressionFormat [CompressionFormat] <p>The compression format. If no value is specified, the default is <code>UNCOMPRESSED</code>. </p>
-- * S3BackupMode [S3BackupMode] <p>Enables or disables Amazon S3 backup mode.</p>
-- * CloudWatchLoggingOptions [CloudWatchLoggingOptions] <p>The Amazon CloudWatch logging options for your delivery stream.</p>
-- * BucketARN [BucketARN] <p>The ARN of the S3 bucket. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and AWS Service Namespaces</a>.</p>
-- * ProcessingConfiguration [ProcessingConfiguration] <p>The data processing configuration.</p>
-- @return ExtendedS3DestinationUpdate structure as a key-value pair table
function M.ExtendedS3DestinationUpdate(args)
	assert(args, "You must provide an argument table when creating ExtendedS3DestinationUpdate")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DataFormatConversionConfiguration"] = args["DataFormatConversionConfiguration"],
		["RoleARN"] = args["RoleARN"],
		["Prefix"] = args["Prefix"],
		["BufferingHints"] = args["BufferingHints"],
		["S3BackupUpdate"] = args["S3BackupUpdate"],
		["EncryptionConfiguration"] = args["EncryptionConfiguration"],
		["CompressionFormat"] = args["CompressionFormat"],
		["S3BackupMode"] = args["S3BackupMode"],
		["CloudWatchLoggingOptions"] = args["CloudWatchLoggingOptions"],
		["BucketARN"] = args["BucketARN"],
		["ProcessingConfiguration"] = args["ProcessingConfiguration"],
	}
	asserts.AssertExtendedS3DestinationUpdate(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RedshiftRetryOptions = { ["DurationInSeconds"] = true, nil }

function asserts.AssertRedshiftRetryOptions(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RedshiftRetryOptions to be of type 'table'")
	if struct["DurationInSeconds"] then asserts.AssertRedshiftRetryDurationInSeconds(struct["DurationInSeconds"]) end
	for k,_ in pairs(struct) do
		assert(keys.RedshiftRetryOptions[k], "RedshiftRetryOptions contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RedshiftRetryOptions
-- <p>Configures retry behavior in case Kinesis Data Firehose is unable to deliver documents to Amazon Redshift.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DurationInSeconds [RedshiftRetryDurationInSeconds] <p>The length of time during which Kinesis Data Firehose retries delivery after a failure, starting from the initial request and including the first attempt. The default value is 3600 seconds (60 minutes). Kinesis Data Firehose does not retry if the value of <code>DurationInSeconds</code> is 0 (zero) or if the first delivery attempt takes longer than the current value.</p>
-- @return RedshiftRetryOptions structure as a key-value pair table
function M.RedshiftRetryOptions(args)
	assert(args, "You must provide an argument table when creating RedshiftRetryOptions")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DurationInSeconds"] = args["DurationInSeconds"],
	}
	asserts.AssertRedshiftRetryOptions(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.OutputFormatConfiguration = { ["Serializer"] = true, nil }

function asserts.AssertOutputFormatConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OutputFormatConfiguration to be of type 'table'")
	if struct["Serializer"] then asserts.AssertSerializer(struct["Serializer"]) end
	for k,_ in pairs(struct) do
		assert(keys.OutputFormatConfiguration[k], "OutputFormatConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OutputFormatConfiguration
-- <p>Specifies the serializer that you want Kinesis Data Firehose to use to convert the format of your data before it writes it to Amazon S3.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Serializer [Serializer] <p>Specifies which serializer to use. You can choose either the ORC SerDe or the Parquet SerDe. If both are non-null, the server rejects the request.</p>
-- @return OutputFormatConfiguration structure as a key-value pair table
function M.OutputFormatConfiguration(args)
	assert(args, "You must provide an argument table when creating OutputFormatConfiguration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Serializer"] = args["Serializer"],
	}
	asserts.AssertOutputFormatConfiguration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SchemaConfiguration = { ["RoleARN"] = true, ["TableName"] = true, ["CatalogId"] = true, ["VersionId"] = true, ["DatabaseName"] = true, ["Region"] = true, nil }

function asserts.AssertSchemaConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SchemaConfiguration to be of type 'table'")
	if struct["RoleARN"] then asserts.AssertNonEmptyStringWithoutWhitespace(struct["RoleARN"]) end
	if struct["TableName"] then asserts.AssertNonEmptyStringWithoutWhitespace(struct["TableName"]) end
	if struct["CatalogId"] then asserts.AssertNonEmptyStringWithoutWhitespace(struct["CatalogId"]) end
	if struct["VersionId"] then asserts.AssertNonEmptyStringWithoutWhitespace(struct["VersionId"]) end
	if struct["DatabaseName"] then asserts.AssertNonEmptyStringWithoutWhitespace(struct["DatabaseName"]) end
	if struct["Region"] then asserts.AssertNonEmptyStringWithoutWhitespace(struct["Region"]) end
	for k,_ in pairs(struct) do
		assert(keys.SchemaConfiguration[k], "SchemaConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SchemaConfiguration
-- <p>Specifies the schema to which you want Kinesis Data Firehose to configure your data before it writes it to Amazon S3.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RoleARN [NonEmptyStringWithoutWhitespace] <p>The role that Kinesis Data Firehose can use to access AWS Glue. This role must be in the same account you use for Kinesis Data Firehose. Cross-account roles aren't allowed.</p>
-- * TableName [NonEmptyStringWithoutWhitespace] <p>Specifies the AWS Glue table that contains the column information that constitutes your data schema.</p>
-- * CatalogId [NonEmptyStringWithoutWhitespace] <p>The ID of the AWS Glue Data Catalog. If you don't supply this, the AWS account ID is used by default.</p>
-- * VersionId [NonEmptyStringWithoutWhitespace] <p>Specifies the table version for the output data schema. If you don't specify this version ID, or if you set it to <code>LATEST</code>, Kinesis Data Firehose uses the most recent version. This means that any updates to the table are automatically picked up.</p>
-- * DatabaseName [NonEmptyStringWithoutWhitespace] <p>Specifies the name of the AWS Glue database that contains the schema for the output data.</p>
-- * Region [NonEmptyStringWithoutWhitespace] <p>If you don't specify an AWS Region, the default is the current Region.</p>
-- @return SchemaConfiguration structure as a key-value pair table
function M.SchemaConfiguration(args)
	assert(args, "You must provide an argument table when creating SchemaConfiguration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RoleARN"] = args["RoleARN"],
		["TableName"] = args["TableName"],
		["CatalogId"] = args["CatalogId"],
		["VersionId"] = args["VersionId"],
		["DatabaseName"] = args["DatabaseName"],
		["Region"] = args["Region"],
	}
	asserts.AssertSchemaConfiguration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ProcessorParameter = { ["ParameterName"] = true, ["ParameterValue"] = true, nil }

function asserts.AssertProcessorParameter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ProcessorParameter to be of type 'table'")
	assert(struct["ParameterName"], "Expected key ParameterName to exist in table")
	assert(struct["ParameterValue"], "Expected key ParameterValue to exist in table")
	if struct["ParameterName"] then asserts.AssertProcessorParameterName(struct["ParameterName"]) end
	if struct["ParameterValue"] then asserts.AssertProcessorParameterValue(struct["ParameterValue"]) end
	for k,_ in pairs(struct) do
		assert(keys.ProcessorParameter[k], "ProcessorParameter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ProcessorParameter
-- <p>Describes the processor parameter.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ParameterName [ProcessorParameterName] <p>The name of the parameter.</p>
-- * ParameterValue [ProcessorParameterValue] <p>The parameter value.</p>
-- Required key: ParameterName
-- Required key: ParameterValue
-- @return ProcessorParameter structure as a key-value pair table
function M.ProcessorParameter(args)
	assert(args, "You must provide an argument table when creating ProcessorParameter")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ParameterName"] = args["ParameterName"],
		["ParameterValue"] = args["ParameterValue"],
	}
	asserts.AssertProcessorParameter(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SplunkRetryOptions = { ["DurationInSeconds"] = true, nil }

function asserts.AssertSplunkRetryOptions(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SplunkRetryOptions to be of type 'table'")
	if struct["DurationInSeconds"] then asserts.AssertSplunkRetryDurationInSeconds(struct["DurationInSeconds"]) end
	for k,_ in pairs(struct) do
		assert(keys.SplunkRetryOptions[k], "SplunkRetryOptions contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SplunkRetryOptions
-- <p>Configures retry behavior in case Kinesis Data Firehose is unable to deliver documents to Splunk, or if it doesn't receive an acknowledgment from Splunk.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DurationInSeconds [SplunkRetryDurationInSeconds] <p>The total amount of time that Kinesis Data Firehose spends on retries. This duration starts after the initial attempt to send data to Splunk fails. It doesn't include the periods during which Kinesis Data Firehose waits for acknowledgment from Splunk after each attempt.</p>
-- @return SplunkRetryOptions structure as a key-value pair table
function M.SplunkRetryOptions(args)
	assert(args, "You must provide an argument table when creating SplunkRetryOptions")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DurationInSeconds"] = args["DurationInSeconds"],
	}
	asserts.AssertSplunkRetryOptions(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.OpenXJsonSerDe = { ["ConvertDotsInJsonKeysToUnderscores"] = true, ["CaseInsensitive"] = true, ["ColumnToJsonKeyMappings"] = true, nil }

function asserts.AssertOpenXJsonSerDe(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OpenXJsonSerDe to be of type 'table'")
	if struct["ConvertDotsInJsonKeysToUnderscores"] then asserts.AssertBooleanObject(struct["ConvertDotsInJsonKeysToUnderscores"]) end
	if struct["CaseInsensitive"] then asserts.AssertBooleanObject(struct["CaseInsensitive"]) end
	if struct["ColumnToJsonKeyMappings"] then asserts.AssertColumnToJsonKeyMappings(struct["ColumnToJsonKeyMappings"]) end
	for k,_ in pairs(struct) do
		assert(keys.OpenXJsonSerDe[k], "OpenXJsonSerDe contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OpenXJsonSerDe
-- <p>The OpenX SerDe. Used by Kinesis Data Firehose for deserializing data, which means converting it from the JSON format in preparation for serializing it to the Parquet or ORC format. This is one of two deserializers you can choose, depending on which one offers the functionality you need. The other option is the native Hive / HCatalog JsonSerDe.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ConvertDotsInJsonKeysToUnderscores [BooleanObject] <p>When set to <code>true</code>, specifies that the names of the keys include dots and that you want Kinesis Data Firehose to replace them with underscores. This is useful because Apache Hive does not allow dots in column names. For example, if the JSON contains a key whose name is "a.b", you can define the column name to be "a_b" when using this option.</p> <p>The default is <code>false</code>.</p>
-- * CaseInsensitive [BooleanObject] <p>When set to <code>true</code>, which is the default, Kinesis Data Firehose converts JSON keys to lowercase before deserializing them.</p>
-- * ColumnToJsonKeyMappings [ColumnToJsonKeyMappings] <p>Maps column names to JSON keys that aren't identical to the column names. This is useful when the JSON contains keys that are Hive keywords. For example, <code>timestamp</code> is a Hive keyword. If you have a JSON key named <code>timestamp</code>, set this parameter to <code>{"ts": "timestamp"}</code> to map this key to a column named <code>ts</code>.</p>
-- @return OpenXJsonSerDe structure as a key-value pair table
function M.OpenXJsonSerDe(args)
	assert(args, "You must provide an argument table when creating OpenXJsonSerDe")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ConvertDotsInJsonKeysToUnderscores"] = args["ConvertDotsInJsonKeysToUnderscores"],
		["CaseInsensitive"] = args["CaseInsensitive"],
		["ColumnToJsonKeyMappings"] = args["ColumnToJsonKeyMappings"],
	}
	asserts.AssertOpenXJsonSerDe(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SplunkDestinationConfiguration = { ["S3Configuration"] = true, ["HECEndpointType"] = true, ["HECToken"] = true, ["HECAcknowledgmentTimeoutInSeconds"] = true, ["RetryOptions"] = true, ["HECEndpoint"] = true, ["S3BackupMode"] = true, ["CloudWatchLoggingOptions"] = true, ["ProcessingConfiguration"] = true, nil }

function asserts.AssertSplunkDestinationConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SplunkDestinationConfiguration to be of type 'table'")
	assert(struct["HECEndpoint"], "Expected key HECEndpoint to exist in table")
	assert(struct["HECEndpointType"], "Expected key HECEndpointType to exist in table")
	assert(struct["HECToken"], "Expected key HECToken to exist in table")
	assert(struct["S3Configuration"], "Expected key S3Configuration to exist in table")
	if struct["S3Configuration"] then asserts.AssertS3DestinationConfiguration(struct["S3Configuration"]) end
	if struct["HECEndpointType"] then asserts.AssertHECEndpointType(struct["HECEndpointType"]) end
	if struct["HECToken"] then asserts.AssertHECToken(struct["HECToken"]) end
	if struct["HECAcknowledgmentTimeoutInSeconds"] then asserts.AssertHECAcknowledgmentTimeoutInSeconds(struct["HECAcknowledgmentTimeoutInSeconds"]) end
	if struct["RetryOptions"] then asserts.AssertSplunkRetryOptions(struct["RetryOptions"]) end
	if struct["HECEndpoint"] then asserts.AssertHECEndpoint(struct["HECEndpoint"]) end
	if struct["S3BackupMode"] then asserts.AssertSplunkS3BackupMode(struct["S3BackupMode"]) end
	if struct["CloudWatchLoggingOptions"] then asserts.AssertCloudWatchLoggingOptions(struct["CloudWatchLoggingOptions"]) end
	if struct["ProcessingConfiguration"] then asserts.AssertProcessingConfiguration(struct["ProcessingConfiguration"]) end
	for k,_ in pairs(struct) do
		assert(keys.SplunkDestinationConfiguration[k], "SplunkDestinationConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SplunkDestinationConfiguration
-- <p>Describes the configuration of a destination in Splunk.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * S3Configuration [S3DestinationConfiguration] <p>The configuration for the backup Amazon S3 location.</p>
-- * HECEndpointType [HECEndpointType] <p>This type can be either "Raw" or "Event."</p>
-- * HECToken [HECToken] <p>This is a GUID that you obtain from your Splunk cluster when you create a new HEC endpoint.</p>
-- * HECAcknowledgmentTimeoutInSeconds [HECAcknowledgmentTimeoutInSeconds] <p>The amount of time that Kinesis Data Firehose waits to receive an acknowledgment from Splunk after it sends it data. At the end of the timeout period, Kinesis Data Firehose either tries to send the data again or considers it an error, based on your retry settings.</p>
-- * RetryOptions [SplunkRetryOptions] <p>The retry behavior in case Kinesis Data Firehose is unable to deliver data to Splunk, or if it doesn't receive an acknowledgment of receipt from Splunk.</p>
-- * HECEndpoint [HECEndpoint] <p>The HTTP Event Collector (HEC) endpoint to which Kinesis Data Firehose sends your data.</p>
-- * S3BackupMode [SplunkS3BackupMode] <p>Defines how documents should be delivered to Amazon S3. When set to <code>FailedDocumentsOnly</code>, Kinesis Data Firehose writes any data that could not be indexed to the configured Amazon S3 destination. When set to <code>AllDocuments</code>, Kinesis Data Firehose delivers all incoming records to Amazon S3, and also writes failed documents to Amazon S3. Default value is <code>FailedDocumentsOnly</code>. </p>
-- * CloudWatchLoggingOptions [CloudWatchLoggingOptions] <p>The Amazon CloudWatch logging options for your delivery stream.</p>
-- * ProcessingConfiguration [ProcessingConfiguration] <p>The data processing configuration.</p>
-- Required key: HECEndpoint
-- Required key: HECEndpointType
-- Required key: HECToken
-- Required key: S3Configuration
-- @return SplunkDestinationConfiguration structure as a key-value pair table
function M.SplunkDestinationConfiguration(args)
	assert(args, "You must provide an argument table when creating SplunkDestinationConfiguration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["S3Configuration"] = args["S3Configuration"],
		["HECEndpointType"] = args["HECEndpointType"],
		["HECToken"] = args["HECToken"],
		["HECAcknowledgmentTimeoutInSeconds"] = args["HECAcknowledgmentTimeoutInSeconds"],
		["RetryOptions"] = args["RetryOptions"],
		["HECEndpoint"] = args["HECEndpoint"],
		["S3BackupMode"] = args["S3BackupMode"],
		["CloudWatchLoggingOptions"] = args["CloudWatchLoggingOptions"],
		["ProcessingConfiguration"] = args["ProcessingConfiguration"],
	}
	asserts.AssertSplunkDestinationConfiguration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BufferingHints = { ["IntervalInSeconds"] = true, ["SizeInMBs"] = true, nil }

function asserts.AssertBufferingHints(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BufferingHints to be of type 'table'")
	if struct["IntervalInSeconds"] then asserts.AssertIntervalInSeconds(struct["IntervalInSeconds"]) end
	if struct["SizeInMBs"] then asserts.AssertSizeInMBs(struct["SizeInMBs"]) end
	for k,_ in pairs(struct) do
		assert(keys.BufferingHints[k], "BufferingHints contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BufferingHints
-- <p>Describes hints for the buffering to perform before delivering data to the destination. These options are treated as hints, and therefore Kinesis Data Firehose might choose to use different values when it is optimal.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IntervalInSeconds [IntervalInSeconds] <p>Buffer incoming data for the specified period of time, in seconds, before delivering it to the destination. The default value is 300.</p>
-- * SizeInMBs [SizeInMBs] <p>Buffer incoming data to the specified size, in MBs, before delivering it to the destination. The default value is 5.</p> <p>We recommend setting this parameter to a value greater than the amount of data you typically ingest into the delivery stream in 10 seconds. For example, if you typically ingest data at 1 MB/sec, the value should be 10 MB or higher.</p>
-- @return BufferingHints structure as a key-value pair table
function M.BufferingHints(args)
	assert(args, "You must provide an argument table when creating BufferingHints")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["IntervalInSeconds"] = args["IntervalInSeconds"],
		["SizeInMBs"] = args["SizeInMBs"],
	}
	asserts.AssertBufferingHints(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Record = { ["Data"] = true, nil }

function asserts.AssertRecord(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Record to be of type 'table'")
	assert(struct["Data"], "Expected key Data to exist in table")
	if struct["Data"] then asserts.AssertData(struct["Data"]) end
	for k,_ in pairs(struct) do
		assert(keys.Record[k], "Record contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Record
-- <p>The unit of data in a delivery stream.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Data [Data] <p>The data blob, which is base64-encoded when the blob is serialized. The maximum size of the data blob, before base64-encoding, is 1,000 KB.</p>
-- Required key: Data
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
	}
	asserts.AssertRecord(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TagDeliveryStreamInput = { ["DeliveryStreamName"] = true, ["Tags"] = true, nil }

function asserts.AssertTagDeliveryStreamInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TagDeliveryStreamInput to be of type 'table'")
	assert(struct["DeliveryStreamName"], "Expected key DeliveryStreamName to exist in table")
	assert(struct["Tags"], "Expected key Tags to exist in table")
	if struct["DeliveryStreamName"] then asserts.AssertDeliveryStreamName(struct["DeliveryStreamName"]) end
	if struct["Tags"] then asserts.AssertTagDeliveryStreamInputTagList(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.TagDeliveryStreamInput[k], "TagDeliveryStreamInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TagDeliveryStreamInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DeliveryStreamName [DeliveryStreamName] <p>The name of the delivery stream to which you want to add the tags.</p>
-- * Tags [TagDeliveryStreamInputTagList] <p>A set of key-value pairs to use to create the tags.</p>
-- Required key: DeliveryStreamName
-- Required key: Tags
-- @return TagDeliveryStreamInput structure as a key-value pair table
function M.TagDeliveryStreamInput(args)
	assert(args, "You must provide an argument table when creating TagDeliveryStreamInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DeliveryStreamName"] = args["DeliveryStreamName"],
		["Tags"] = args["Tags"],
	}
	asserts.AssertTagDeliveryStreamInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ElasticsearchDestinationDescription = { ["IndexName"] = true, ["RetryOptions"] = true, ["RoleARN"] = true, ["BufferingHints"] = true, ["TypeName"] = true, ["S3BackupMode"] = true, ["CloudWatchLoggingOptions"] = true, ["DomainARN"] = true, ["S3DestinationDescription"] = true, ["IndexRotationPeriod"] = true, ["ProcessingConfiguration"] = true, nil }

function asserts.AssertElasticsearchDestinationDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ElasticsearchDestinationDescription to be of type 'table'")
	if struct["IndexName"] then asserts.AssertElasticsearchIndexName(struct["IndexName"]) end
	if struct["RetryOptions"] then asserts.AssertElasticsearchRetryOptions(struct["RetryOptions"]) end
	if struct["RoleARN"] then asserts.AssertRoleARN(struct["RoleARN"]) end
	if struct["BufferingHints"] then asserts.AssertElasticsearchBufferingHints(struct["BufferingHints"]) end
	if struct["TypeName"] then asserts.AssertElasticsearchTypeName(struct["TypeName"]) end
	if struct["S3BackupMode"] then asserts.AssertElasticsearchS3BackupMode(struct["S3BackupMode"]) end
	if struct["CloudWatchLoggingOptions"] then asserts.AssertCloudWatchLoggingOptions(struct["CloudWatchLoggingOptions"]) end
	if struct["DomainARN"] then asserts.AssertElasticsearchDomainARN(struct["DomainARN"]) end
	if struct["S3DestinationDescription"] then asserts.AssertS3DestinationDescription(struct["S3DestinationDescription"]) end
	if struct["IndexRotationPeriod"] then asserts.AssertElasticsearchIndexRotationPeriod(struct["IndexRotationPeriod"]) end
	if struct["ProcessingConfiguration"] then asserts.AssertProcessingConfiguration(struct["ProcessingConfiguration"]) end
	for k,_ in pairs(struct) do
		assert(keys.ElasticsearchDestinationDescription[k], "ElasticsearchDestinationDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ElasticsearchDestinationDescription
-- <p>The destination description in Amazon ES.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IndexName [ElasticsearchIndexName] <p>The Elasticsearch index name.</p>
-- * RetryOptions [ElasticsearchRetryOptions] <p>The Amazon ES retry options.</p>
-- * RoleARN [RoleARN] <p>The Amazon Resource Name (ARN) of the AWS credentials. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and AWS Service Namespaces</a>.</p>
-- * BufferingHints [ElasticsearchBufferingHints] <p>The buffering options.</p>
-- * TypeName [ElasticsearchTypeName] <p>The Elasticsearch type name.</p>
-- * S3BackupMode [ElasticsearchS3BackupMode] <p>The Amazon S3 backup mode.</p>
-- * CloudWatchLoggingOptions [CloudWatchLoggingOptions] <p>The Amazon CloudWatch logging options.</p>
-- * DomainARN [ElasticsearchDomainARN] <p>The ARN of the Amazon ES domain. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and AWS Service Namespaces</a>.</p>
-- * S3DestinationDescription [S3DestinationDescription] <p>The Amazon S3 destination.</p>
-- * IndexRotationPeriod [ElasticsearchIndexRotationPeriod] <p>The Elasticsearch index rotation period</p>
-- * ProcessingConfiguration [ProcessingConfiguration] <p>The data processing configuration.</p>
-- @return ElasticsearchDestinationDescription structure as a key-value pair table
function M.ElasticsearchDestinationDescription(args)
	assert(args, "You must provide an argument table when creating ElasticsearchDestinationDescription")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["IndexName"] = args["IndexName"],
		["RetryOptions"] = args["RetryOptions"],
		["RoleARN"] = args["RoleARN"],
		["BufferingHints"] = args["BufferingHints"],
		["TypeName"] = args["TypeName"],
		["S3BackupMode"] = args["S3BackupMode"],
		["CloudWatchLoggingOptions"] = args["CloudWatchLoggingOptions"],
		["DomainARN"] = args["DomainARN"],
		["S3DestinationDescription"] = args["S3DestinationDescription"],
		["IndexRotationPeriod"] = args["IndexRotationPeriod"],
		["ProcessingConfiguration"] = args["ProcessingConfiguration"],
	}
	asserts.AssertElasticsearchDestinationDescription(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.KinesisStreamSourceDescription = { ["RoleARN"] = true, ["KinesisStreamARN"] = true, ["DeliveryStartTimestamp"] = true, nil }

function asserts.AssertKinesisStreamSourceDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected KinesisStreamSourceDescription to be of type 'table'")
	if struct["RoleARN"] then asserts.AssertRoleARN(struct["RoleARN"]) end
	if struct["KinesisStreamARN"] then asserts.AssertKinesisStreamARN(struct["KinesisStreamARN"]) end
	if struct["DeliveryStartTimestamp"] then asserts.AssertDeliveryStartTimestamp(struct["DeliveryStartTimestamp"]) end
	for k,_ in pairs(struct) do
		assert(keys.KinesisStreamSourceDescription[k], "KinesisStreamSourceDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type KinesisStreamSourceDescription
-- <p>Details about a Kinesis data stream used as the source for a Kinesis Data Firehose delivery stream.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RoleARN [RoleARN] <p>The ARN of the role used by the source Kinesis data stream. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-iam">AWS Identity and Access Management (IAM) ARN Format</a>.</p>
-- * KinesisStreamARN [KinesisStreamARN] <p>The Amazon Resource Name (ARN) of the source Kinesis data stream. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-kinesis-streams">Amazon Kinesis Data Streams ARN Format</a>.</p>
-- * DeliveryStartTimestamp [DeliveryStartTimestamp] <p>Kinesis Data Firehose starts retrieving records from the Kinesis data stream starting with this time stamp.</p>
-- @return KinesisStreamSourceDescription structure as a key-value pair table
function M.KinesisStreamSourceDescription(args)
	assert(args, "You must provide an argument table when creating KinesisStreamSourceDescription")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RoleARN"] = args["RoleARN"],
		["KinesisStreamARN"] = args["KinesisStreamARN"],
		["DeliveryStartTimestamp"] = args["DeliveryStartTimestamp"],
	}
	asserts.AssertKinesisStreamSourceDescription(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.KinesisStreamSourceConfiguration = { ["RoleARN"] = true, ["KinesisStreamARN"] = true, nil }

function asserts.AssertKinesisStreamSourceConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected KinesisStreamSourceConfiguration to be of type 'table'")
	assert(struct["KinesisStreamARN"], "Expected key KinesisStreamARN to exist in table")
	assert(struct["RoleARN"], "Expected key RoleARN to exist in table")
	if struct["RoleARN"] then asserts.AssertRoleARN(struct["RoleARN"]) end
	if struct["KinesisStreamARN"] then asserts.AssertKinesisStreamARN(struct["KinesisStreamARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.KinesisStreamSourceConfiguration[k], "KinesisStreamSourceConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type KinesisStreamSourceConfiguration
-- <p>The stream and role Amazon Resource Names (ARNs) for a Kinesis data stream used as the source for a delivery stream.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RoleARN [RoleARN] <p>The ARN of the role that provides access to the source Kinesis data stream. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-iam">AWS Identity and Access Management (IAM) ARN Format</a>.</p>
-- * KinesisStreamARN [KinesisStreamARN] <p>The ARN of the source Kinesis data stream. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-kinesis-streams">Amazon Kinesis Data Streams ARN Format</a>.</p>
-- Required key: KinesisStreamARN
-- Required key: RoleARN
-- @return KinesisStreamSourceConfiguration structure as a key-value pair table
function M.KinesisStreamSourceConfiguration(args)
	assert(args, "You must provide an argument table when creating KinesisStreamSourceConfiguration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RoleARN"] = args["RoleARN"],
		["KinesisStreamARN"] = args["KinesisStreamARN"],
	}
	asserts.AssertKinesisStreamSourceConfiguration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteDeliveryStreamInput = { ["DeliveryStreamName"] = true, nil }

function asserts.AssertDeleteDeliveryStreamInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDeliveryStreamInput to be of type 'table'")
	assert(struct["DeliveryStreamName"], "Expected key DeliveryStreamName to exist in table")
	if struct["DeliveryStreamName"] then asserts.AssertDeliveryStreamName(struct["DeliveryStreamName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteDeliveryStreamInput[k], "DeleteDeliveryStreamInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDeliveryStreamInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DeliveryStreamName [DeliveryStreamName] <p>The name of the delivery stream.</p>
-- Required key: DeliveryStreamName
-- @return DeleteDeliveryStreamInput structure as a key-value pair table
function M.DeleteDeliveryStreamInput(args)
	assert(args, "You must provide an argument table when creating DeleteDeliveryStreamInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DeliveryStreamName"] = args["DeliveryStreamName"],
	}
	asserts.AssertDeleteDeliveryStreamInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ProcessingConfiguration = { ["Enabled"] = true, ["Processors"] = true, nil }

function asserts.AssertProcessingConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ProcessingConfiguration to be of type 'table'")
	if struct["Enabled"] then asserts.AssertBooleanObject(struct["Enabled"]) end
	if struct["Processors"] then asserts.AssertProcessorList(struct["Processors"]) end
	for k,_ in pairs(struct) do
		assert(keys.ProcessingConfiguration[k], "ProcessingConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ProcessingConfiguration
-- <p>Describes a data processing configuration.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Enabled [BooleanObject] <p>Enables or disables data processing.</p>
-- * Processors [ProcessorList] <p>The data processors.</p>
-- @return ProcessingConfiguration structure as a key-value pair table
function M.ProcessingConfiguration(args)
	assert(args, "You must provide an argument table when creating ProcessingConfiguration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Enabled"] = args["Enabled"],
		["Processors"] = args["Processors"],
	}
	asserts.AssertProcessingConfiguration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListDeliveryStreamsOutput = { ["DeliveryStreamNames"] = true, ["HasMoreDeliveryStreams"] = true, nil }

function asserts.AssertListDeliveryStreamsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDeliveryStreamsOutput to be of type 'table'")
	assert(struct["DeliveryStreamNames"], "Expected key DeliveryStreamNames to exist in table")
	assert(struct["HasMoreDeliveryStreams"], "Expected key HasMoreDeliveryStreams to exist in table")
	if struct["DeliveryStreamNames"] then asserts.AssertDeliveryStreamNameList(struct["DeliveryStreamNames"]) end
	if struct["HasMoreDeliveryStreams"] then asserts.AssertBooleanObject(struct["HasMoreDeliveryStreams"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListDeliveryStreamsOutput[k], "ListDeliveryStreamsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDeliveryStreamsOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DeliveryStreamNames [DeliveryStreamNameList] <p>The names of the delivery streams.</p>
-- * HasMoreDeliveryStreams [BooleanObject] <p>Indicates whether there are more delivery streams available to list.</p>
-- Required key: DeliveryStreamNames
-- Required key: HasMoreDeliveryStreams
-- @return ListDeliveryStreamsOutput structure as a key-value pair table
function M.ListDeliveryStreamsOutput(args)
	assert(args, "You must provide an argument table when creating ListDeliveryStreamsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DeliveryStreamNames"] = args["DeliveryStreamNames"],
		["HasMoreDeliveryStreams"] = args["HasMoreDeliveryStreams"],
	}
	asserts.AssertListDeliveryStreamsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UntagDeliveryStreamOutput = { nil }

function asserts.AssertUntagDeliveryStreamOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UntagDeliveryStreamOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.UntagDeliveryStreamOutput[k], "UntagDeliveryStreamOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UntagDeliveryStreamOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return UntagDeliveryStreamOutput structure as a key-value pair table
function M.UntagDeliveryStreamOutput(args)
	assert(args, "You must provide an argument table when creating UntagDeliveryStreamOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertUntagDeliveryStreamOutput(all_args)
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
-- <p>The resource is already in use and not available for this operation.</p>
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

keys.RedshiftDestinationDescription = { ["Username"] = true, ["S3BackupDescription"] = true, ["S3DestinationDescription"] = true, ["RetryOptions"] = true, ["RoleARN"] = true, ["ClusterJDBCURL"] = true, ["CopyCommand"] = true, ["CloudWatchLoggingOptions"] = true, ["ProcessingConfiguration"] = true, ["S3BackupMode"] = true, nil }

function asserts.AssertRedshiftDestinationDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RedshiftDestinationDescription to be of type 'table'")
	assert(struct["RoleARN"], "Expected key RoleARN to exist in table")
	assert(struct["ClusterJDBCURL"], "Expected key ClusterJDBCURL to exist in table")
	assert(struct["CopyCommand"], "Expected key CopyCommand to exist in table")
	assert(struct["Username"], "Expected key Username to exist in table")
	assert(struct["S3DestinationDescription"], "Expected key S3DestinationDescription to exist in table")
	if struct["Username"] then asserts.AssertUsername(struct["Username"]) end
	if struct["S3BackupDescription"] then asserts.AssertS3DestinationDescription(struct["S3BackupDescription"]) end
	if struct["S3DestinationDescription"] then asserts.AssertS3DestinationDescription(struct["S3DestinationDescription"]) end
	if struct["RetryOptions"] then asserts.AssertRedshiftRetryOptions(struct["RetryOptions"]) end
	if struct["RoleARN"] then asserts.AssertRoleARN(struct["RoleARN"]) end
	if struct["ClusterJDBCURL"] then asserts.AssertClusterJDBCURL(struct["ClusterJDBCURL"]) end
	if struct["CopyCommand"] then asserts.AssertCopyCommand(struct["CopyCommand"]) end
	if struct["CloudWatchLoggingOptions"] then asserts.AssertCloudWatchLoggingOptions(struct["CloudWatchLoggingOptions"]) end
	if struct["ProcessingConfiguration"] then asserts.AssertProcessingConfiguration(struct["ProcessingConfiguration"]) end
	if struct["S3BackupMode"] then asserts.AssertRedshiftS3BackupMode(struct["S3BackupMode"]) end
	for k,_ in pairs(struct) do
		assert(keys.RedshiftDestinationDescription[k], "RedshiftDestinationDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RedshiftDestinationDescription
-- <p>Describes a destination in Amazon Redshift.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Username [Username] <p>The name of the user.</p>
-- * S3BackupDescription [S3DestinationDescription] <p>The configuration for backup in Amazon S3.</p>
-- * S3DestinationDescription [S3DestinationDescription] <p>The Amazon S3 destination.</p>
-- * RetryOptions [RedshiftRetryOptions] <p>The retry behavior in case Kinesis Data Firehose is unable to deliver documents to Amazon Redshift. Default value is 3600 (60 minutes).</p>
-- * RoleARN [RoleARN] <p>The Amazon Resource Name (ARN) of the AWS credentials. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and AWS Service Namespaces</a>.</p>
-- * ClusterJDBCURL [ClusterJDBCURL] <p>The database connection string.</p>
-- * CopyCommand [CopyCommand] <p>The <code>COPY</code> command.</p>
-- * CloudWatchLoggingOptions [CloudWatchLoggingOptions] <p>The Amazon CloudWatch logging options for your delivery stream.</p>
-- * ProcessingConfiguration [ProcessingConfiguration] <p>The data processing configuration.</p>
-- * S3BackupMode [RedshiftS3BackupMode] <p>The Amazon S3 backup mode.</p>
-- Required key: RoleARN
-- Required key: ClusterJDBCURL
-- Required key: CopyCommand
-- Required key: Username
-- Required key: S3DestinationDescription
-- @return RedshiftDestinationDescription structure as a key-value pair table
function M.RedshiftDestinationDescription(args)
	assert(args, "You must provide an argument table when creating RedshiftDestinationDescription")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Username"] = args["Username"],
		["S3BackupDescription"] = args["S3BackupDescription"],
		["S3DestinationDescription"] = args["S3DestinationDescription"],
		["RetryOptions"] = args["RetryOptions"],
		["RoleARN"] = args["RoleARN"],
		["ClusterJDBCURL"] = args["ClusterJDBCURL"],
		["CopyCommand"] = args["CopyCommand"],
		["CloudWatchLoggingOptions"] = args["CloudWatchLoggingOptions"],
		["ProcessingConfiguration"] = args["ProcessingConfiguration"],
		["S3BackupMode"] = args["S3BackupMode"],
	}
	asserts.AssertRedshiftDestinationDescription(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Processor = { ["Type"] = true, ["Parameters"] = true, nil }

function asserts.AssertProcessor(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Processor to be of type 'table'")
	assert(struct["Type"], "Expected key Type to exist in table")
	if struct["Type"] then asserts.AssertProcessorType(struct["Type"]) end
	if struct["Parameters"] then asserts.AssertProcessorParameterList(struct["Parameters"]) end
	for k,_ in pairs(struct) do
		assert(keys.Processor[k], "Processor contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Processor
-- <p>Describes a data processor.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Type [ProcessorType] <p>The type of processor.</p>
-- * Parameters [ProcessorParameterList] <p>The processor parameters.</p>
-- Required key: Type
-- @return Processor structure as a key-value pair table
function M.Processor(args)
	assert(args, "You must provide an argument table when creating Processor")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Type"] = args["Type"],
		["Parameters"] = args["Parameters"],
	}
	asserts.AssertProcessor(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteDeliveryStreamOutput = { nil }

function asserts.AssertDeleteDeliveryStreamOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDeliveryStreamOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteDeliveryStreamOutput[k], "DeleteDeliveryStreamOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDeliveryStreamOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteDeliveryStreamOutput structure as a key-value pair table
function M.DeleteDeliveryStreamOutput(args)
	assert(args, "You must provide an argument table when creating DeleteDeliveryStreamOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteDeliveryStreamOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateDeliveryStreamInput = { ["KinesisStreamSourceConfiguration"] = true, ["DeliveryStreamType"] = true, ["ExtendedS3DestinationConfiguration"] = true, ["SplunkDestinationConfiguration"] = true, ["S3DestinationConfiguration"] = true, ["RedshiftDestinationConfiguration"] = true, ["DeliveryStreamName"] = true, ["ElasticsearchDestinationConfiguration"] = true, nil }

function asserts.AssertCreateDeliveryStreamInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDeliveryStreamInput to be of type 'table'")
	assert(struct["DeliveryStreamName"], "Expected key DeliveryStreamName to exist in table")
	if struct["KinesisStreamSourceConfiguration"] then asserts.AssertKinesisStreamSourceConfiguration(struct["KinesisStreamSourceConfiguration"]) end
	if struct["DeliveryStreamType"] then asserts.AssertDeliveryStreamType(struct["DeliveryStreamType"]) end
	if struct["ExtendedS3DestinationConfiguration"] then asserts.AssertExtendedS3DestinationConfiguration(struct["ExtendedS3DestinationConfiguration"]) end
	if struct["SplunkDestinationConfiguration"] then asserts.AssertSplunkDestinationConfiguration(struct["SplunkDestinationConfiguration"]) end
	if struct["S3DestinationConfiguration"] then asserts.AssertS3DestinationConfiguration(struct["S3DestinationConfiguration"]) end
	if struct["RedshiftDestinationConfiguration"] then asserts.AssertRedshiftDestinationConfiguration(struct["RedshiftDestinationConfiguration"]) end
	if struct["DeliveryStreamName"] then asserts.AssertDeliveryStreamName(struct["DeliveryStreamName"]) end
	if struct["ElasticsearchDestinationConfiguration"] then asserts.AssertElasticsearchDestinationConfiguration(struct["ElasticsearchDestinationConfiguration"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateDeliveryStreamInput[k], "CreateDeliveryStreamInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDeliveryStreamInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * KinesisStreamSourceConfiguration [KinesisStreamSourceConfiguration] <p>When a Kinesis data stream is used as the source for the delivery stream, a <a>KinesisStreamSourceConfiguration</a> containing the Kinesis data stream Amazon Resource Name (ARN) and the role ARN for the source stream.</p>
-- * DeliveryStreamType [DeliveryStreamType] <p>The delivery stream type. This parameter can be one of the following values:</p> <ul> <li> <p> <code>DirectPut</code>: Provider applications access the delivery stream directly.</p> </li> <li> <p> <code>KinesisStreamAsSource</code>: The delivery stream uses a Kinesis data stream as a source.</p> </li> </ul>
-- * ExtendedS3DestinationConfiguration [ExtendedS3DestinationConfiguration] <p>The destination in Amazon S3. You can specify only one destination.</p>
-- * SplunkDestinationConfiguration [SplunkDestinationConfiguration] <p>The destination in Splunk. You can specify only one destination.</p>
-- * S3DestinationConfiguration [S3DestinationConfiguration] <p>[Deprecated] The destination in Amazon S3. You can specify only one destination.</p>
-- * RedshiftDestinationConfiguration [RedshiftDestinationConfiguration] <p>The destination in Amazon Redshift. You can specify only one destination.</p>
-- * DeliveryStreamName [DeliveryStreamName] <p>The name of the delivery stream. This name must be unique per AWS account in the same AWS Region. If the delivery streams are in different accounts or different Regions, you can have multiple delivery streams with the same name.</p>
-- * ElasticsearchDestinationConfiguration [ElasticsearchDestinationConfiguration] <p>The destination in Amazon ES. You can specify only one destination.</p>
-- Required key: DeliveryStreamName
-- @return CreateDeliveryStreamInput structure as a key-value pair table
function M.CreateDeliveryStreamInput(args)
	assert(args, "You must provide an argument table when creating CreateDeliveryStreamInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["KinesisStreamSourceConfiguration"] = args["KinesisStreamSourceConfiguration"],
		["DeliveryStreamType"] = args["DeliveryStreamType"],
		["ExtendedS3DestinationConfiguration"] = args["ExtendedS3DestinationConfiguration"],
		["SplunkDestinationConfiguration"] = args["SplunkDestinationConfiguration"],
		["S3DestinationConfiguration"] = args["S3DestinationConfiguration"],
		["RedshiftDestinationConfiguration"] = args["RedshiftDestinationConfiguration"],
		["DeliveryStreamName"] = args["DeliveryStreamName"],
		["ElasticsearchDestinationConfiguration"] = args["ElasticsearchDestinationConfiguration"],
	}
	asserts.AssertCreateDeliveryStreamInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RedshiftDestinationUpdate = { ["Username"] = true, ["S3Update"] = true, ["RetryOptions"] = true, ["RoleARN"] = true, ["ClusterJDBCURL"] = true, ["CopyCommand"] = true, ["CloudWatchLoggingOptions"] = true, ["Password"] = true, ["S3BackupUpdate"] = true, ["ProcessingConfiguration"] = true, ["S3BackupMode"] = true, nil }

function asserts.AssertRedshiftDestinationUpdate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RedshiftDestinationUpdate to be of type 'table'")
	if struct["Username"] then asserts.AssertUsername(struct["Username"]) end
	if struct["S3Update"] then asserts.AssertS3DestinationUpdate(struct["S3Update"]) end
	if struct["RetryOptions"] then asserts.AssertRedshiftRetryOptions(struct["RetryOptions"]) end
	if struct["RoleARN"] then asserts.AssertRoleARN(struct["RoleARN"]) end
	if struct["ClusterJDBCURL"] then asserts.AssertClusterJDBCURL(struct["ClusterJDBCURL"]) end
	if struct["CopyCommand"] then asserts.AssertCopyCommand(struct["CopyCommand"]) end
	if struct["CloudWatchLoggingOptions"] then asserts.AssertCloudWatchLoggingOptions(struct["CloudWatchLoggingOptions"]) end
	if struct["Password"] then asserts.AssertPassword(struct["Password"]) end
	if struct["S3BackupUpdate"] then asserts.AssertS3DestinationUpdate(struct["S3BackupUpdate"]) end
	if struct["ProcessingConfiguration"] then asserts.AssertProcessingConfiguration(struct["ProcessingConfiguration"]) end
	if struct["S3BackupMode"] then asserts.AssertRedshiftS3BackupMode(struct["S3BackupMode"]) end
	for k,_ in pairs(struct) do
		assert(keys.RedshiftDestinationUpdate[k], "RedshiftDestinationUpdate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RedshiftDestinationUpdate
-- <p>Describes an update for a destination in Amazon Redshift.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Username [Username] <p>The name of the user.</p>
-- * S3Update [S3DestinationUpdate] <p>The Amazon S3 destination.</p> <p>The compression formats <code>SNAPPY</code> or <code>ZIP</code> cannot be specified in <code>RedshiftDestinationUpdate.S3Update</code> because the Amazon Redshift <code>COPY</code> operation that reads from the S3 bucket doesn't support these compression formats.</p>
-- * RetryOptions [RedshiftRetryOptions] <p>The retry behavior in case Kinesis Data Firehose is unable to deliver documents to Amazon Redshift. Default value is 3600 (60 minutes).</p>
-- * RoleARN [RoleARN] <p>The Amazon Resource Name (ARN) of the AWS credentials. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and AWS Service Namespaces</a>.</p>
-- * ClusterJDBCURL [ClusterJDBCURL] <p>The database connection string.</p>
-- * CopyCommand [CopyCommand] <p>The <code>COPY</code> command.</p>
-- * CloudWatchLoggingOptions [CloudWatchLoggingOptions] <p>The Amazon CloudWatch logging options for your delivery stream.</p>
-- * Password [Password] <p>The user password.</p>
-- * S3BackupUpdate [S3DestinationUpdate] <p>The Amazon S3 destination for backup.</p>
-- * ProcessingConfiguration [ProcessingConfiguration] <p>The data processing configuration.</p>
-- * S3BackupMode [RedshiftS3BackupMode] <p>The Amazon S3 backup mode.</p>
-- @return RedshiftDestinationUpdate structure as a key-value pair table
function M.RedshiftDestinationUpdate(args)
	assert(args, "You must provide an argument table when creating RedshiftDestinationUpdate")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Username"] = args["Username"],
		["S3Update"] = args["S3Update"],
		["RetryOptions"] = args["RetryOptions"],
		["RoleARN"] = args["RoleARN"],
		["ClusterJDBCURL"] = args["ClusterJDBCURL"],
		["CopyCommand"] = args["CopyCommand"],
		["CloudWatchLoggingOptions"] = args["CloudWatchLoggingOptions"],
		["Password"] = args["Password"],
		["S3BackupUpdate"] = args["S3BackupUpdate"],
		["ProcessingConfiguration"] = args["ProcessingConfiguration"],
		["S3BackupMode"] = args["S3BackupMode"],
	}
	asserts.AssertRedshiftDestinationUpdate(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateDestinationInput = { ["DeliveryStreamName"] = true, ["ElasticsearchDestinationUpdate"] = true, ["CurrentDeliveryStreamVersionId"] = true, ["DestinationId"] = true, ["ExtendedS3DestinationUpdate"] = true, ["S3DestinationUpdate"] = true, ["RedshiftDestinationUpdate"] = true, ["SplunkDestinationUpdate"] = true, nil }

function asserts.AssertUpdateDestinationInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateDestinationInput to be of type 'table'")
	assert(struct["DeliveryStreamName"], "Expected key DeliveryStreamName to exist in table")
	assert(struct["CurrentDeliveryStreamVersionId"], "Expected key CurrentDeliveryStreamVersionId to exist in table")
	assert(struct["DestinationId"], "Expected key DestinationId to exist in table")
	if struct["DeliveryStreamName"] then asserts.AssertDeliveryStreamName(struct["DeliveryStreamName"]) end
	if struct["ElasticsearchDestinationUpdate"] then asserts.AssertElasticsearchDestinationUpdate(struct["ElasticsearchDestinationUpdate"]) end
	if struct["CurrentDeliveryStreamVersionId"] then asserts.AssertDeliveryStreamVersionId(struct["CurrentDeliveryStreamVersionId"]) end
	if struct["DestinationId"] then asserts.AssertDestinationId(struct["DestinationId"]) end
	if struct["ExtendedS3DestinationUpdate"] then asserts.AssertExtendedS3DestinationUpdate(struct["ExtendedS3DestinationUpdate"]) end
	if struct["S3DestinationUpdate"] then asserts.AssertS3DestinationUpdate(struct["S3DestinationUpdate"]) end
	if struct["RedshiftDestinationUpdate"] then asserts.AssertRedshiftDestinationUpdate(struct["RedshiftDestinationUpdate"]) end
	if struct["SplunkDestinationUpdate"] then asserts.AssertSplunkDestinationUpdate(struct["SplunkDestinationUpdate"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateDestinationInput[k], "UpdateDestinationInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateDestinationInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DeliveryStreamName [DeliveryStreamName] <p>The name of the delivery stream.</p>
-- * ElasticsearchDestinationUpdate [ElasticsearchDestinationUpdate] <p>Describes an update for a destination in Amazon ES.</p>
-- * CurrentDeliveryStreamVersionId [DeliveryStreamVersionId] <p>Obtain this value from the <b>VersionId</b> result of <a>DeliveryStreamDescription</a>. This value is required, and helps the service perform conditional operations. For example, if there is an interleaving update and this value is null, then the update destination fails. After the update is successful, the <code>VersionId</code> value is updated. The service then performs a merge of the old configuration with the new configuration.</p>
-- * DestinationId [DestinationId] <p>The ID of the destination.</p>
-- * ExtendedS3DestinationUpdate [ExtendedS3DestinationUpdate] <p>Describes an update for a destination in Amazon S3.</p>
-- * S3DestinationUpdate [S3DestinationUpdate] <p>[Deprecated] Describes an update for a destination in Amazon S3.</p>
-- * RedshiftDestinationUpdate [RedshiftDestinationUpdate] <p>Describes an update for a destination in Amazon Redshift.</p>
-- * SplunkDestinationUpdate [SplunkDestinationUpdate] <p>Describes an update for a destination in Splunk.</p>
-- Required key: DeliveryStreamName
-- Required key: CurrentDeliveryStreamVersionId
-- Required key: DestinationId
-- @return UpdateDestinationInput structure as a key-value pair table
function M.UpdateDestinationInput(args)
	assert(args, "You must provide an argument table when creating UpdateDestinationInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DeliveryStreamName"] = args["DeliveryStreamName"],
		["ElasticsearchDestinationUpdate"] = args["ElasticsearchDestinationUpdate"],
		["CurrentDeliveryStreamVersionId"] = args["CurrentDeliveryStreamVersionId"],
		["DestinationId"] = args["DestinationId"],
		["ExtendedS3DestinationUpdate"] = args["ExtendedS3DestinationUpdate"],
		["S3DestinationUpdate"] = args["S3DestinationUpdate"],
		["RedshiftDestinationUpdate"] = args["RedshiftDestinationUpdate"],
		["SplunkDestinationUpdate"] = args["SplunkDestinationUpdate"],
	}
	asserts.AssertUpdateDestinationInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ElasticsearchDestinationConfiguration = { ["S3Configuration"] = true, ["IndexName"] = true, ["RetryOptions"] = true, ["RoleARN"] = true, ["BufferingHints"] = true, ["TypeName"] = true, ["S3BackupMode"] = true, ["CloudWatchLoggingOptions"] = true, ["DomainARN"] = true, ["IndexRotationPeriod"] = true, ["ProcessingConfiguration"] = true, nil }

function asserts.AssertElasticsearchDestinationConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ElasticsearchDestinationConfiguration to be of type 'table'")
	assert(struct["RoleARN"], "Expected key RoleARN to exist in table")
	assert(struct["DomainARN"], "Expected key DomainARN to exist in table")
	assert(struct["IndexName"], "Expected key IndexName to exist in table")
	assert(struct["TypeName"], "Expected key TypeName to exist in table")
	assert(struct["S3Configuration"], "Expected key S3Configuration to exist in table")
	if struct["S3Configuration"] then asserts.AssertS3DestinationConfiguration(struct["S3Configuration"]) end
	if struct["IndexName"] then asserts.AssertElasticsearchIndexName(struct["IndexName"]) end
	if struct["RetryOptions"] then asserts.AssertElasticsearchRetryOptions(struct["RetryOptions"]) end
	if struct["RoleARN"] then asserts.AssertRoleARN(struct["RoleARN"]) end
	if struct["BufferingHints"] then asserts.AssertElasticsearchBufferingHints(struct["BufferingHints"]) end
	if struct["TypeName"] then asserts.AssertElasticsearchTypeName(struct["TypeName"]) end
	if struct["S3BackupMode"] then asserts.AssertElasticsearchS3BackupMode(struct["S3BackupMode"]) end
	if struct["CloudWatchLoggingOptions"] then asserts.AssertCloudWatchLoggingOptions(struct["CloudWatchLoggingOptions"]) end
	if struct["DomainARN"] then asserts.AssertElasticsearchDomainARN(struct["DomainARN"]) end
	if struct["IndexRotationPeriod"] then asserts.AssertElasticsearchIndexRotationPeriod(struct["IndexRotationPeriod"]) end
	if struct["ProcessingConfiguration"] then asserts.AssertProcessingConfiguration(struct["ProcessingConfiguration"]) end
	for k,_ in pairs(struct) do
		assert(keys.ElasticsearchDestinationConfiguration[k], "ElasticsearchDestinationConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ElasticsearchDestinationConfiguration
-- <p>Describes the configuration of a destination in Amazon ES.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * S3Configuration [S3DestinationConfiguration] <p>The configuration for the backup Amazon S3 location.</p>
-- * IndexName [ElasticsearchIndexName] <p>The Elasticsearch index name.</p>
-- * RetryOptions [ElasticsearchRetryOptions] <p>The retry behavior in case Kinesis Data Firehose is unable to deliver documents to Amazon ES. The default value is 300 (5 minutes).</p>
-- * RoleARN [RoleARN] <p>The Amazon Resource Name (ARN) of the IAM role to be assumed by Kinesis Data Firehose for calling the Amazon ES Configuration API and for indexing documents. For more information, see <a href="http://docs.aws.amazon.com/firehose/latest/dev/controlling-access.html#using-iam-s3">Grant Kinesis Data Firehose Access to an Amazon S3 Destination</a> and <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and AWS Service Namespaces</a>.</p>
-- * BufferingHints [ElasticsearchBufferingHints] <p>The buffering options. If no value is specified, the default values for <code>ElasticsearchBufferingHints</code> are used.</p>
-- * TypeName [ElasticsearchTypeName] <p>The Elasticsearch type name. For Elasticsearch 6.x, there can be only one type per index. If you try to specify a new type for an existing index that already has another type, Kinesis Data Firehose returns an error during run time.</p>
-- * S3BackupMode [ElasticsearchS3BackupMode] <p>Defines how documents should be delivered to Amazon S3. When it is set to <code>FailedDocumentsOnly</code>, Kinesis Data Firehose writes any documents that could not be indexed to the configured Amazon S3 destination, with <code>elasticsearch-failed/</code> appended to the key prefix. When set to <code>AllDocuments</code>, Kinesis Data Firehose delivers all incoming records to Amazon S3, and also writes failed documents with <code>elasticsearch-failed/</code> appended to the prefix. For more information, see <a href="http://docs.aws.amazon.com/firehose/latest/dev/basic-deliver.html#es-s3-backup">Amazon S3 Backup for the Amazon ES Destination</a>. Default value is <code>FailedDocumentsOnly</code>.</p>
-- * CloudWatchLoggingOptions [CloudWatchLoggingOptions] <p>The Amazon CloudWatch logging options for your delivery stream.</p>
-- * DomainARN [ElasticsearchDomainARN] <p>The ARN of the Amazon ES domain. The IAM role must have permissions for <code>DescribeElasticsearchDomain</code>, <code>DescribeElasticsearchDomains</code>, and <code>DescribeElasticsearchDomainConfig</code> after assuming the role specified in <b>RoleARN</b>. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and AWS Service Namespaces</a>.</p>
-- * IndexRotationPeriod [ElasticsearchIndexRotationPeriod] <p>The Elasticsearch index rotation period. Index rotation appends a time stamp to the <code>IndexName</code> to facilitate the expiration of old data. For more information, see <a href="http://docs.aws.amazon.com/firehose/latest/dev/basic-deliver.html#es-index-rotation">Index Rotation for the Amazon ES Destination</a>. The default value is <code>OneDay</code>.</p>
-- * ProcessingConfiguration [ProcessingConfiguration] <p>The data processing configuration.</p>
-- Required key: RoleARN
-- Required key: DomainARN
-- Required key: IndexName
-- Required key: TypeName
-- Required key: S3Configuration
-- @return ElasticsearchDestinationConfiguration structure as a key-value pair table
function M.ElasticsearchDestinationConfiguration(args)
	assert(args, "You must provide an argument table when creating ElasticsearchDestinationConfiguration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["S3Configuration"] = args["S3Configuration"],
		["IndexName"] = args["IndexName"],
		["RetryOptions"] = args["RetryOptions"],
		["RoleARN"] = args["RoleARN"],
		["BufferingHints"] = args["BufferingHints"],
		["TypeName"] = args["TypeName"],
		["S3BackupMode"] = args["S3BackupMode"],
		["CloudWatchLoggingOptions"] = args["CloudWatchLoggingOptions"],
		["DomainARN"] = args["DomainARN"],
		["IndexRotationPeriod"] = args["IndexRotationPeriod"],
		["ProcessingConfiguration"] = args["ProcessingConfiguration"],
	}
	asserts.AssertElasticsearchDestinationConfiguration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateDeliveryStreamOutput = { ["DeliveryStreamARN"] = true, nil }

function asserts.AssertCreateDeliveryStreamOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDeliveryStreamOutput to be of type 'table'")
	if struct["DeliveryStreamARN"] then asserts.AssertDeliveryStreamARN(struct["DeliveryStreamARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateDeliveryStreamOutput[k], "CreateDeliveryStreamOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDeliveryStreamOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DeliveryStreamARN [DeliveryStreamARN] <p>The ARN of the delivery stream.</p>
-- @return CreateDeliveryStreamOutput structure as a key-value pair table
function M.CreateDeliveryStreamOutput(args)
	assert(args, "You must provide an argument table when creating CreateDeliveryStreamOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DeliveryStreamARN"] = args["DeliveryStreamARN"],
	}
	asserts.AssertCreateDeliveryStreamOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Serializer = { ["OrcSerDe"] = true, ["ParquetSerDe"] = true, nil }

function asserts.AssertSerializer(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Serializer to be of type 'table'")
	if struct["OrcSerDe"] then asserts.AssertOrcSerDe(struct["OrcSerDe"]) end
	if struct["ParquetSerDe"] then asserts.AssertParquetSerDe(struct["ParquetSerDe"]) end
	for k,_ in pairs(struct) do
		assert(keys.Serializer[k], "Serializer contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Serializer
-- <p>The serializer that you want Kinesis Data Firehose to use to convert data to the target format before writing it to Amazon S3. Kinesis Data Firehose supports two types of serializers: the <a href="https://hive.apache.org/javadocs/r1.2.2/api/org/apache/hadoop/hive/ql/io/orc/OrcSerde.html">ORC SerDe</a> and the <a href="https://hive.apache.org/javadocs/r1.2.2/api/org/apache/hadoop/hive/ql/io/parquet/serde/ParquetHiveSerDe.html">Parquet SerDe</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OrcSerDe [OrcSerDe] <p>A serializer to use for converting data to the ORC format before storing it in Amazon S3. For more information, see <a href="https://orc.apache.org/docs/">Apache ORC</a>.</p>
-- * ParquetSerDe [ParquetSerDe] <p>A serializer to use for converting data to the Parquet format before storing it in Amazon S3. For more information, see <a href="https://parquet.apache.org/documentation/latest/">Apache Parquet</a>.</p>
-- @return Serializer structure as a key-value pair table
function M.Serializer(args)
	assert(args, "You must provide an argument table when creating Serializer")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["OrcSerDe"] = args["OrcSerDe"],
		["ParquetSerDe"] = args["ParquetSerDe"],
	}
	asserts.AssertSerializer(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutRecordOutput = { ["RecordId"] = true, nil }

function asserts.AssertPutRecordOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutRecordOutput to be of type 'table'")
	assert(struct["RecordId"], "Expected key RecordId to exist in table")
	if struct["RecordId"] then asserts.AssertPutResponseRecordId(struct["RecordId"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutRecordOutput[k], "PutRecordOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutRecordOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RecordId [PutResponseRecordId] <p>The ID of the record.</p>
-- Required key: RecordId
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
		["RecordId"] = args["RecordId"],
	}
	asserts.AssertPutRecordOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ExtendedS3DestinationDescription = { ["DataFormatConversionConfiguration"] = true, ["RoleARN"] = true, ["Prefix"] = true, ["BufferingHints"] = true, ["EncryptionConfiguration"] = true, ["CompressionFormat"] = true, ["S3BackupMode"] = true, ["CloudWatchLoggingOptions"] = true, ["BucketARN"] = true, ["ProcessingConfiguration"] = true, ["S3BackupDescription"] = true, nil }

function asserts.AssertExtendedS3DestinationDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ExtendedS3DestinationDescription to be of type 'table'")
	assert(struct["RoleARN"], "Expected key RoleARN to exist in table")
	assert(struct["BucketARN"], "Expected key BucketARN to exist in table")
	assert(struct["BufferingHints"], "Expected key BufferingHints to exist in table")
	assert(struct["CompressionFormat"], "Expected key CompressionFormat to exist in table")
	assert(struct["EncryptionConfiguration"], "Expected key EncryptionConfiguration to exist in table")
	if struct["DataFormatConversionConfiguration"] then asserts.AssertDataFormatConversionConfiguration(struct["DataFormatConversionConfiguration"]) end
	if struct["RoleARN"] then asserts.AssertRoleARN(struct["RoleARN"]) end
	if struct["Prefix"] then asserts.AssertPrefix(struct["Prefix"]) end
	if struct["BufferingHints"] then asserts.AssertBufferingHints(struct["BufferingHints"]) end
	if struct["EncryptionConfiguration"] then asserts.AssertEncryptionConfiguration(struct["EncryptionConfiguration"]) end
	if struct["CompressionFormat"] then asserts.AssertCompressionFormat(struct["CompressionFormat"]) end
	if struct["S3BackupMode"] then asserts.AssertS3BackupMode(struct["S3BackupMode"]) end
	if struct["CloudWatchLoggingOptions"] then asserts.AssertCloudWatchLoggingOptions(struct["CloudWatchLoggingOptions"]) end
	if struct["BucketARN"] then asserts.AssertBucketARN(struct["BucketARN"]) end
	if struct["ProcessingConfiguration"] then asserts.AssertProcessingConfiguration(struct["ProcessingConfiguration"]) end
	if struct["S3BackupDescription"] then asserts.AssertS3DestinationDescription(struct["S3BackupDescription"]) end
	for k,_ in pairs(struct) do
		assert(keys.ExtendedS3DestinationDescription[k], "ExtendedS3DestinationDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ExtendedS3DestinationDescription
-- <p>Describes a destination in Amazon S3.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DataFormatConversionConfiguration [DataFormatConversionConfiguration] <p>The serializer, deserializer, and schema for converting data from the JSON format to the Parquet or ORC format before writing it to Amazon S3.</p>
-- * RoleARN [RoleARN] <p>The Amazon Resource Name (ARN) of the AWS credentials. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and AWS Service Namespaces</a>.</p>
-- * Prefix [Prefix] <p>The "YYYY/MM/DD/HH" time format prefix is automatically used for delivered Amazon S3 files. You can specify an extra prefix to be added in front of the time format prefix. If the prefix ends with a slash, it appears as a folder in the S3 bucket. For more information, see <a href="http://docs.aws.amazon.com/firehose/latest/dev/basic-deliver.html#s3-object-name">Amazon S3 Object Name Format</a> in the <i>Amazon Kinesis Data Firehose Developer Guide</i>.</p>
-- * BufferingHints [BufferingHints] <p>The buffering option.</p>
-- * EncryptionConfiguration [EncryptionConfiguration] <p>The encryption configuration. If no value is specified, the default is no encryption.</p>
-- * CompressionFormat [CompressionFormat] <p>The compression format. If no value is specified, the default is <code>UNCOMPRESSED</code>.</p>
-- * S3BackupMode [S3BackupMode] <p>The Amazon S3 backup mode.</p>
-- * CloudWatchLoggingOptions [CloudWatchLoggingOptions] <p>The Amazon CloudWatch logging options for your delivery stream.</p>
-- * BucketARN [BucketARN] <p>The ARN of the S3 bucket. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and AWS Service Namespaces</a>.</p>
-- * ProcessingConfiguration [ProcessingConfiguration] <p>The data processing configuration.</p>
-- * S3BackupDescription [S3DestinationDescription] <p>The configuration for backup in Amazon S3.</p>
-- Required key: RoleARN
-- Required key: BucketARN
-- Required key: BufferingHints
-- Required key: CompressionFormat
-- Required key: EncryptionConfiguration
-- @return ExtendedS3DestinationDescription structure as a key-value pair table
function M.ExtendedS3DestinationDescription(args)
	assert(args, "You must provide an argument table when creating ExtendedS3DestinationDescription")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DataFormatConversionConfiguration"] = args["DataFormatConversionConfiguration"],
		["RoleARN"] = args["RoleARN"],
		["Prefix"] = args["Prefix"],
		["BufferingHints"] = args["BufferingHints"],
		["EncryptionConfiguration"] = args["EncryptionConfiguration"],
		["CompressionFormat"] = args["CompressionFormat"],
		["S3BackupMode"] = args["S3BackupMode"],
		["CloudWatchLoggingOptions"] = args["CloudWatchLoggingOptions"],
		["BucketARN"] = args["BucketARN"],
		["ProcessingConfiguration"] = args["ProcessingConfiguration"],
		["S3BackupDescription"] = args["S3BackupDescription"],
	}
	asserts.AssertExtendedS3DestinationDescription(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RedshiftDestinationConfiguration = { ["Username"] = true, ["S3Configuration"] = true, ["S3BackupConfiguration"] = true, ["RetryOptions"] = true, ["RoleARN"] = true, ["ClusterJDBCURL"] = true, ["CopyCommand"] = true, ["CloudWatchLoggingOptions"] = true, ["Password"] = true, ["ProcessingConfiguration"] = true, ["S3BackupMode"] = true, nil }

function asserts.AssertRedshiftDestinationConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RedshiftDestinationConfiguration to be of type 'table'")
	assert(struct["RoleARN"], "Expected key RoleARN to exist in table")
	assert(struct["ClusterJDBCURL"], "Expected key ClusterJDBCURL to exist in table")
	assert(struct["CopyCommand"], "Expected key CopyCommand to exist in table")
	assert(struct["Username"], "Expected key Username to exist in table")
	assert(struct["Password"], "Expected key Password to exist in table")
	assert(struct["S3Configuration"], "Expected key S3Configuration to exist in table")
	if struct["Username"] then asserts.AssertUsername(struct["Username"]) end
	if struct["S3Configuration"] then asserts.AssertS3DestinationConfiguration(struct["S3Configuration"]) end
	if struct["S3BackupConfiguration"] then asserts.AssertS3DestinationConfiguration(struct["S3BackupConfiguration"]) end
	if struct["RetryOptions"] then asserts.AssertRedshiftRetryOptions(struct["RetryOptions"]) end
	if struct["RoleARN"] then asserts.AssertRoleARN(struct["RoleARN"]) end
	if struct["ClusterJDBCURL"] then asserts.AssertClusterJDBCURL(struct["ClusterJDBCURL"]) end
	if struct["CopyCommand"] then asserts.AssertCopyCommand(struct["CopyCommand"]) end
	if struct["CloudWatchLoggingOptions"] then asserts.AssertCloudWatchLoggingOptions(struct["CloudWatchLoggingOptions"]) end
	if struct["Password"] then asserts.AssertPassword(struct["Password"]) end
	if struct["ProcessingConfiguration"] then asserts.AssertProcessingConfiguration(struct["ProcessingConfiguration"]) end
	if struct["S3BackupMode"] then asserts.AssertRedshiftS3BackupMode(struct["S3BackupMode"]) end
	for k,_ in pairs(struct) do
		assert(keys.RedshiftDestinationConfiguration[k], "RedshiftDestinationConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RedshiftDestinationConfiguration
-- <p>Describes the configuration of a destination in Amazon Redshift.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Username [Username] <p>The name of the user.</p>
-- * S3Configuration [S3DestinationConfiguration] <p>The configuration for the intermediate Amazon S3 location from which Amazon Redshift obtains data. Restrictions are described in the topic for <a>CreateDeliveryStream</a>.</p> <p>The compression formats <code>SNAPPY</code> or <code>ZIP</code> cannot be specified in <code>RedshiftDestinationConfiguration.S3Configuration</code> because the Amazon Redshift <code>COPY</code> operation that reads from the S3 bucket doesn't support these compression formats.</p>
-- * S3BackupConfiguration [S3DestinationConfiguration] <p>The configuration for backup in Amazon S3.</p>
-- * RetryOptions [RedshiftRetryOptions] <p>The retry behavior in case Kinesis Data Firehose is unable to deliver documents to Amazon Redshift. Default value is 3600 (60 minutes).</p>
-- * RoleARN [RoleARN] <p>The Amazon Resource Name (ARN) of the AWS credentials. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and AWS Service Namespaces</a>.</p>
-- * ClusterJDBCURL [ClusterJDBCURL] <p>The database connection string.</p>
-- * CopyCommand [CopyCommand] <p>The <code>COPY</code> command.</p>
-- * CloudWatchLoggingOptions [CloudWatchLoggingOptions] <p>The CloudWatch logging options for your delivery stream.</p>
-- * Password [Password] <p>The user password.</p>
-- * ProcessingConfiguration [ProcessingConfiguration] <p>The data processing configuration.</p>
-- * S3BackupMode [RedshiftS3BackupMode] <p>The Amazon S3 backup mode.</p>
-- Required key: RoleARN
-- Required key: ClusterJDBCURL
-- Required key: CopyCommand
-- Required key: Username
-- Required key: Password
-- Required key: S3Configuration
-- @return RedshiftDestinationConfiguration structure as a key-value pair table
function M.RedshiftDestinationConfiguration(args)
	assert(args, "You must provide an argument table when creating RedshiftDestinationConfiguration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Username"] = args["Username"],
		["S3Configuration"] = args["S3Configuration"],
		["S3BackupConfiguration"] = args["S3BackupConfiguration"],
		["RetryOptions"] = args["RetryOptions"],
		["RoleARN"] = args["RoleARN"],
		["ClusterJDBCURL"] = args["ClusterJDBCURL"],
		["CopyCommand"] = args["CopyCommand"],
		["CloudWatchLoggingOptions"] = args["CloudWatchLoggingOptions"],
		["Password"] = args["Password"],
		["ProcessingConfiguration"] = args["ProcessingConfiguration"],
		["S3BackupMode"] = args["S3BackupMode"],
	}
	asserts.AssertRedshiftDestinationConfiguration(all_args)
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
-- <p>The specified resource could not be found.</p>
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

keys.PutRecordBatchInput = { ["Records"] = true, ["DeliveryStreamName"] = true, nil }

function asserts.AssertPutRecordBatchInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutRecordBatchInput to be of type 'table'")
	assert(struct["DeliveryStreamName"], "Expected key DeliveryStreamName to exist in table")
	assert(struct["Records"], "Expected key Records to exist in table")
	if struct["Records"] then asserts.AssertPutRecordBatchRequestEntryList(struct["Records"]) end
	if struct["DeliveryStreamName"] then asserts.AssertDeliveryStreamName(struct["DeliveryStreamName"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutRecordBatchInput[k], "PutRecordBatchInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutRecordBatchInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Records [PutRecordBatchRequestEntryList] <p>One or more records.</p>
-- * DeliveryStreamName [DeliveryStreamName] <p>The name of the delivery stream.</p>
-- Required key: DeliveryStreamName
-- Required key: Records
-- @return PutRecordBatchInput structure as a key-value pair table
function M.PutRecordBatchInput(args)
	assert(args, "You must provide an argument table when creating PutRecordBatchInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Records"] = args["Records"],
		["DeliveryStreamName"] = args["DeliveryStreamName"],
	}
	asserts.AssertPutRecordBatchInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ParquetSerDe = { ["Compression"] = true, ["EnableDictionaryCompression"] = true, ["BlockSizeBytes"] = true, ["WriterVersion"] = true, ["MaxPaddingBytes"] = true, ["PageSizeBytes"] = true, nil }

function asserts.AssertParquetSerDe(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ParquetSerDe to be of type 'table'")
	if struct["Compression"] then asserts.AssertParquetCompression(struct["Compression"]) end
	if struct["EnableDictionaryCompression"] then asserts.AssertBooleanObject(struct["EnableDictionaryCompression"]) end
	if struct["BlockSizeBytes"] then asserts.AssertBlockSizeBytes(struct["BlockSizeBytes"]) end
	if struct["WriterVersion"] then asserts.AssertParquetWriterVersion(struct["WriterVersion"]) end
	if struct["MaxPaddingBytes"] then asserts.AssertNonNegativeIntegerObject(struct["MaxPaddingBytes"]) end
	if struct["PageSizeBytes"] then asserts.AssertParquetPageSizeBytes(struct["PageSizeBytes"]) end
	for k,_ in pairs(struct) do
		assert(keys.ParquetSerDe[k], "ParquetSerDe contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ParquetSerDe
-- <p>A serializer to use for converting data to the Parquet format before storing it in Amazon S3. For more information, see <a href="https://parquet.apache.org/documentation/latest/">Apache Parquet</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Compression [ParquetCompression] <p>The compression code to use over data blocks. The possible values are <code>UNCOMPRESSED</code>, <code>SNAPPY</code>, and <code>GZIP</code>, with the default being <code>SNAPPY</code>. Use <code>SNAPPY</code> for higher decompression speed. Use <code>GZIP</code> if the compression ration is more important than speed.</p>
-- * EnableDictionaryCompression [BooleanObject] <p>Indicates whether to enable dictionary compression.</p>
-- * BlockSizeBytes [BlockSizeBytes] <p>The Hadoop Distributed File System (HDFS) block size. This is useful if you intend to copy the data from Amazon S3 to HDFS before querying. The default is 256 MiB and the minimum is 64 MiB. Kinesis Data Firehose uses this value for padding calculations.</p>
-- * WriterVersion [ParquetWriterVersion] <p>Indicates the version of row format to output. The possible values are <code>V1</code> and <code>V2</code>. The default is <code>V1</code>.</p>
-- * MaxPaddingBytes [NonNegativeIntegerObject] <p>The maximum amount of padding to apply. This is useful if you intend to copy the data from Amazon S3 to HDFS before querying. The default is 0.</p>
-- * PageSizeBytes [ParquetPageSizeBytes] <p>The Parquet page size. Column chunks are divided into pages. A page is conceptually an indivisible unit (in terms of compression and encoding). The minimum value is 64 KiB and the default is 1 MiB.</p>
-- @return ParquetSerDe structure as a key-value pair table
function M.ParquetSerDe(args)
	assert(args, "You must provide an argument table when creating ParquetSerDe")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Compression"] = args["Compression"],
		["EnableDictionaryCompression"] = args["EnableDictionaryCompression"],
		["BlockSizeBytes"] = args["BlockSizeBytes"],
		["WriterVersion"] = args["WriterVersion"],
		["MaxPaddingBytes"] = args["MaxPaddingBytes"],
		["PageSizeBytes"] = args["PageSizeBytes"],
	}
	asserts.AssertParquetSerDe(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeDeliveryStreamOutput = { ["DeliveryStreamDescription"] = true, nil }

function asserts.AssertDescribeDeliveryStreamOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDeliveryStreamOutput to be of type 'table'")
	assert(struct["DeliveryStreamDescription"], "Expected key DeliveryStreamDescription to exist in table")
	if struct["DeliveryStreamDescription"] then asserts.AssertDeliveryStreamDescription(struct["DeliveryStreamDescription"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeDeliveryStreamOutput[k], "DescribeDeliveryStreamOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDeliveryStreamOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DeliveryStreamDescription [DeliveryStreamDescription] <p>Information about the delivery stream.</p>
-- Required key: DeliveryStreamDescription
-- @return DescribeDeliveryStreamOutput structure as a key-value pair table
function M.DescribeDeliveryStreamOutput(args)
	assert(args, "You must provide an argument table when creating DescribeDeliveryStreamOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DeliveryStreamDescription"] = args["DeliveryStreamDescription"],
	}
	asserts.AssertDescribeDeliveryStreamOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SplunkDestinationUpdate = { ["S3Update"] = true, ["HECEndpointType"] = true, ["HECToken"] = true, ["HECAcknowledgmentTimeoutInSeconds"] = true, ["RetryOptions"] = true, ["HECEndpoint"] = true, ["S3BackupMode"] = true, ["CloudWatchLoggingOptions"] = true, ["ProcessingConfiguration"] = true, nil }

function asserts.AssertSplunkDestinationUpdate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SplunkDestinationUpdate to be of type 'table'")
	if struct["S3Update"] then asserts.AssertS3DestinationUpdate(struct["S3Update"]) end
	if struct["HECEndpointType"] then asserts.AssertHECEndpointType(struct["HECEndpointType"]) end
	if struct["HECToken"] then asserts.AssertHECToken(struct["HECToken"]) end
	if struct["HECAcknowledgmentTimeoutInSeconds"] then asserts.AssertHECAcknowledgmentTimeoutInSeconds(struct["HECAcknowledgmentTimeoutInSeconds"]) end
	if struct["RetryOptions"] then asserts.AssertSplunkRetryOptions(struct["RetryOptions"]) end
	if struct["HECEndpoint"] then asserts.AssertHECEndpoint(struct["HECEndpoint"]) end
	if struct["S3BackupMode"] then asserts.AssertSplunkS3BackupMode(struct["S3BackupMode"]) end
	if struct["CloudWatchLoggingOptions"] then asserts.AssertCloudWatchLoggingOptions(struct["CloudWatchLoggingOptions"]) end
	if struct["ProcessingConfiguration"] then asserts.AssertProcessingConfiguration(struct["ProcessingConfiguration"]) end
	for k,_ in pairs(struct) do
		assert(keys.SplunkDestinationUpdate[k], "SplunkDestinationUpdate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SplunkDestinationUpdate
-- <p>Describes an update for a destination in Splunk.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * S3Update [S3DestinationUpdate] <p>Your update to the configuration of the backup Amazon S3 location.</p>
-- * HECEndpointType [HECEndpointType] <p>This type can be either "Raw" or "Event."</p>
-- * HECToken [HECToken] <p>A GUID that you obtain from your Splunk cluster when you create a new HEC endpoint.</p>
-- * HECAcknowledgmentTimeoutInSeconds [HECAcknowledgmentTimeoutInSeconds] <p>The amount of time that Kinesis Data Firehose waits to receive an acknowledgment from Splunk after it sends data. At the end of the timeout period, Kinesis Data Firehose either tries to send the data again or considers it an error, based on your retry settings.</p>
-- * RetryOptions [SplunkRetryOptions] <p>The retry behavior in case Kinesis Data Firehose is unable to deliver data to Splunk or if it doesn't receive an acknowledgment of receipt from Splunk.</p>
-- * HECEndpoint [HECEndpoint] <p>The HTTP Event Collector (HEC) endpoint to which Kinesis Data Firehose sends your data.</p>
-- * S3BackupMode [SplunkS3BackupMode] <p>Defines how documents should be delivered to Amazon S3. When set to <code>FailedDocumentsOnly</code>, Kinesis Data Firehose writes any data that could not be indexed to the configured Amazon S3 destination. When set to <code>AllDocuments</code>, Kinesis Data Firehose delivers all incoming records to Amazon S3, and also writes failed documents to Amazon S3. Default value is <code>FailedDocumentsOnly</code>. </p>
-- * CloudWatchLoggingOptions [CloudWatchLoggingOptions] <p>The Amazon CloudWatch logging options for your delivery stream.</p>
-- * ProcessingConfiguration [ProcessingConfiguration] <p>The data processing configuration.</p>
-- @return SplunkDestinationUpdate structure as a key-value pair table
function M.SplunkDestinationUpdate(args)
	assert(args, "You must provide an argument table when creating SplunkDestinationUpdate")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["S3Update"] = args["S3Update"],
		["HECEndpointType"] = args["HECEndpointType"],
		["HECToken"] = args["HECToken"],
		["HECAcknowledgmentTimeoutInSeconds"] = args["HECAcknowledgmentTimeoutInSeconds"],
		["RetryOptions"] = args["RetryOptions"],
		["HECEndpoint"] = args["HECEndpoint"],
		["S3BackupMode"] = args["S3BackupMode"],
		["CloudWatchLoggingOptions"] = args["CloudWatchLoggingOptions"],
		["ProcessingConfiguration"] = args["ProcessingConfiguration"],
	}
	asserts.AssertSplunkDestinationUpdate(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ElasticsearchRetryOptions = { ["DurationInSeconds"] = true, nil }

function asserts.AssertElasticsearchRetryOptions(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ElasticsearchRetryOptions to be of type 'table'")
	if struct["DurationInSeconds"] then asserts.AssertElasticsearchRetryDurationInSeconds(struct["DurationInSeconds"]) end
	for k,_ in pairs(struct) do
		assert(keys.ElasticsearchRetryOptions[k], "ElasticsearchRetryOptions contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ElasticsearchRetryOptions
-- <p>Configures retry behavior in case Kinesis Data Firehose is unable to deliver documents to Amazon ES.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DurationInSeconds [ElasticsearchRetryDurationInSeconds] <p>After an initial failure to deliver to Amazon ES, the total amount of time during which Kinesis Data Firehose retries delivery (including the first attempt). After this time has elapsed, the failed documents are written to Amazon S3. Default value is 300 seconds (5 minutes). A value of 0 (zero) results in no retries.</p>
-- @return ElasticsearchRetryOptions structure as a key-value pair table
function M.ElasticsearchRetryOptions(args)
	assert(args, "You must provide an argument table when creating ElasticsearchRetryOptions")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DurationInSeconds"] = args["DurationInSeconds"],
	}
	asserts.AssertElasticsearchRetryOptions(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.S3DestinationConfiguration = { ["RoleARN"] = true, ["Prefix"] = true, ["BufferingHints"] = true, ["EncryptionConfiguration"] = true, ["CompressionFormat"] = true, ["CloudWatchLoggingOptions"] = true, ["BucketARN"] = true, nil }

function asserts.AssertS3DestinationConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected S3DestinationConfiguration to be of type 'table'")
	assert(struct["RoleARN"], "Expected key RoleARN to exist in table")
	assert(struct["BucketARN"], "Expected key BucketARN to exist in table")
	if struct["RoleARN"] then asserts.AssertRoleARN(struct["RoleARN"]) end
	if struct["Prefix"] then asserts.AssertPrefix(struct["Prefix"]) end
	if struct["BufferingHints"] then asserts.AssertBufferingHints(struct["BufferingHints"]) end
	if struct["EncryptionConfiguration"] then asserts.AssertEncryptionConfiguration(struct["EncryptionConfiguration"]) end
	if struct["CompressionFormat"] then asserts.AssertCompressionFormat(struct["CompressionFormat"]) end
	if struct["CloudWatchLoggingOptions"] then asserts.AssertCloudWatchLoggingOptions(struct["CloudWatchLoggingOptions"]) end
	if struct["BucketARN"] then asserts.AssertBucketARN(struct["BucketARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.S3DestinationConfiguration[k], "S3DestinationConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type S3DestinationConfiguration
-- <p>Describes the configuration of a destination in Amazon S3.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RoleARN [RoleARN] <p>The Amazon Resource Name (ARN) of the AWS credentials. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and AWS Service Namespaces</a>.</p>
-- * Prefix [Prefix] <p>The "YYYY/MM/DD/HH" time format prefix is automatically used for delivered Amazon S3 files. You can specify an extra prefix to be added in front of the time format prefix. If the prefix ends with a slash, it appears as a folder in the S3 bucket. For more information, see <a href="http://docs.aws.amazon.com/firehose/latest/dev/basic-deliver.html#s3-object-name">Amazon S3 Object Name Format</a> in the <i>Amazon Kinesis Data Firehose Developer Guide</i>.</p>
-- * BufferingHints [BufferingHints] <p>The buffering option. If no value is specified, <code>BufferingHints</code> object default values are used.</p>
-- * EncryptionConfiguration [EncryptionConfiguration] <p>The encryption configuration. If no value is specified, the default is no encryption.</p>
-- * CompressionFormat [CompressionFormat] <p>The compression format. If no value is specified, the default is <code>UNCOMPRESSED</code>.</p> <p>The compression formats <code>SNAPPY</code> or <code>ZIP</code> cannot be specified for Amazon Redshift destinations because they are not supported by the Amazon Redshift <code>COPY</code> operation that reads from the S3 bucket.</p>
-- * CloudWatchLoggingOptions [CloudWatchLoggingOptions] <p>The CloudWatch logging options for your delivery stream.</p>
-- * BucketARN [BucketARN] <p>The ARN of the S3 bucket. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and AWS Service Namespaces</a>.</p>
-- Required key: RoleARN
-- Required key: BucketARN
-- @return S3DestinationConfiguration structure as a key-value pair table
function M.S3DestinationConfiguration(args)
	assert(args, "You must provide an argument table when creating S3DestinationConfiguration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RoleARN"] = args["RoleARN"],
		["Prefix"] = args["Prefix"],
		["BufferingHints"] = args["BufferingHints"],
		["EncryptionConfiguration"] = args["EncryptionConfiguration"],
		["CompressionFormat"] = args["CompressionFormat"],
		["CloudWatchLoggingOptions"] = args["CloudWatchLoggingOptions"],
		["BucketARN"] = args["BucketARN"],
	}
	asserts.AssertS3DestinationConfiguration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EncryptionConfiguration = { ["KMSEncryptionConfig"] = true, ["NoEncryptionConfig"] = true, nil }

function asserts.AssertEncryptionConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EncryptionConfiguration to be of type 'table'")
	if struct["KMSEncryptionConfig"] then asserts.AssertKMSEncryptionConfig(struct["KMSEncryptionConfig"]) end
	if struct["NoEncryptionConfig"] then asserts.AssertNoEncryptionConfig(struct["NoEncryptionConfig"]) end
	for k,_ in pairs(struct) do
		assert(keys.EncryptionConfiguration[k], "EncryptionConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EncryptionConfiguration
-- <p>Describes the encryption for a destination in Amazon S3.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * KMSEncryptionConfig [KMSEncryptionConfig] <p>The encryption key.</p>
-- * NoEncryptionConfig [NoEncryptionConfig] <p>Specifically override existing encryption information to ensure that no encryption is used.</p>
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
		["KMSEncryptionConfig"] = args["KMSEncryptionConfig"],
		["NoEncryptionConfig"] = args["NoEncryptionConfig"],
	}
	asserts.AssertEncryptionConfiguration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ElasticsearchBufferingHints = { ["IntervalInSeconds"] = true, ["SizeInMBs"] = true, nil }

function asserts.AssertElasticsearchBufferingHints(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ElasticsearchBufferingHints to be of type 'table'")
	if struct["IntervalInSeconds"] then asserts.AssertElasticsearchBufferingIntervalInSeconds(struct["IntervalInSeconds"]) end
	if struct["SizeInMBs"] then asserts.AssertElasticsearchBufferingSizeInMBs(struct["SizeInMBs"]) end
	for k,_ in pairs(struct) do
		assert(keys.ElasticsearchBufferingHints[k], "ElasticsearchBufferingHints contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ElasticsearchBufferingHints
-- <p>Describes the buffering to perform before delivering data to the Amazon ES destination.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IntervalInSeconds [ElasticsearchBufferingIntervalInSeconds] <p>Buffer incoming data for the specified period of time, in seconds, before delivering it to the destination. The default value is 300 (5 minutes).</p>
-- * SizeInMBs [ElasticsearchBufferingSizeInMBs] <p>Buffer incoming data to the specified size, in MBs, before delivering it to the destination. The default value is 5.</p> <p>We recommend setting this parameter to a value greater than the amount of data you typically ingest into the delivery stream in 10 seconds. For example, if you typically ingest data at 1 MB/sec, the value should be 10 MB or higher.</p>
-- @return ElasticsearchBufferingHints structure as a key-value pair table
function M.ElasticsearchBufferingHints(args)
	assert(args, "You must provide an argument table when creating ElasticsearchBufferingHints")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["IntervalInSeconds"] = args["IntervalInSeconds"],
		["SizeInMBs"] = args["SizeInMBs"],
	}
	asserts.AssertElasticsearchBufferingHints(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CloudWatchLoggingOptions = { ["Enabled"] = true, ["LogStreamName"] = true, ["LogGroupName"] = true, nil }

function asserts.AssertCloudWatchLoggingOptions(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CloudWatchLoggingOptions to be of type 'table'")
	if struct["Enabled"] then asserts.AssertBooleanObject(struct["Enabled"]) end
	if struct["LogStreamName"] then asserts.AssertLogStreamName(struct["LogStreamName"]) end
	if struct["LogGroupName"] then asserts.AssertLogGroupName(struct["LogGroupName"]) end
	for k,_ in pairs(struct) do
		assert(keys.CloudWatchLoggingOptions[k], "CloudWatchLoggingOptions contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CloudWatchLoggingOptions
-- <p>Describes the Amazon CloudWatch logging options for your delivery stream.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Enabled [BooleanObject] <p>Enables or disables CloudWatch logging.</p>
-- * LogStreamName [LogStreamName] <p>The CloudWatch log stream name for logging. This value is required if CloudWatch logging is enabled.</p>
-- * LogGroupName [LogGroupName] <p>The CloudWatch group name for logging. This value is required if CloudWatch logging is enabled.</p>
-- @return CloudWatchLoggingOptions structure as a key-value pair table
function M.CloudWatchLoggingOptions(args)
	assert(args, "You must provide an argument table when creating CloudWatchLoggingOptions")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Enabled"] = args["Enabled"],
		["LogStreamName"] = args["LogStreamName"],
		["LogGroupName"] = args["LogGroupName"],
	}
	asserts.AssertCloudWatchLoggingOptions(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ElasticsearchDestinationUpdate = { ["IndexName"] = true, ["S3Update"] = true, ["RetryOptions"] = true, ["RoleARN"] = true, ["BufferingHints"] = true, ["TypeName"] = true, ["CloudWatchLoggingOptions"] = true, ["DomainARN"] = true, ["IndexRotationPeriod"] = true, ["ProcessingConfiguration"] = true, nil }

function asserts.AssertElasticsearchDestinationUpdate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ElasticsearchDestinationUpdate to be of type 'table'")
	if struct["IndexName"] then asserts.AssertElasticsearchIndexName(struct["IndexName"]) end
	if struct["S3Update"] then asserts.AssertS3DestinationUpdate(struct["S3Update"]) end
	if struct["RetryOptions"] then asserts.AssertElasticsearchRetryOptions(struct["RetryOptions"]) end
	if struct["RoleARN"] then asserts.AssertRoleARN(struct["RoleARN"]) end
	if struct["BufferingHints"] then asserts.AssertElasticsearchBufferingHints(struct["BufferingHints"]) end
	if struct["TypeName"] then asserts.AssertElasticsearchTypeName(struct["TypeName"]) end
	if struct["CloudWatchLoggingOptions"] then asserts.AssertCloudWatchLoggingOptions(struct["CloudWatchLoggingOptions"]) end
	if struct["DomainARN"] then asserts.AssertElasticsearchDomainARN(struct["DomainARN"]) end
	if struct["IndexRotationPeriod"] then asserts.AssertElasticsearchIndexRotationPeriod(struct["IndexRotationPeriod"]) end
	if struct["ProcessingConfiguration"] then asserts.AssertProcessingConfiguration(struct["ProcessingConfiguration"]) end
	for k,_ in pairs(struct) do
		assert(keys.ElasticsearchDestinationUpdate[k], "ElasticsearchDestinationUpdate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ElasticsearchDestinationUpdate
-- <p>Describes an update for a destination in Amazon ES.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IndexName [ElasticsearchIndexName] <p>The Elasticsearch index name.</p>
-- * S3Update [S3DestinationUpdate] <p>The Amazon S3 destination.</p>
-- * RetryOptions [ElasticsearchRetryOptions] <p>The retry behavior in case Kinesis Data Firehose is unable to deliver documents to Amazon ES. The default value is 300 (5 minutes).</p>
-- * RoleARN [RoleARN] <p>The Amazon Resource Name (ARN) of the IAM role to be assumed by Kinesis Data Firehose for calling the Amazon ES Configuration API and for indexing documents. For more information, see <a href="http://docs.aws.amazon.com/firehose/latest/dev/controlling-access.html#using-iam-s3">Grant Kinesis Data Firehose Access to an Amazon S3 Destination</a> and <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and AWS Service Namespaces</a>.</p>
-- * BufferingHints [ElasticsearchBufferingHints] <p>The buffering options. If no value is specified, <b>ElasticsearchBufferingHints</b> object default values are used. </p>
-- * TypeName [ElasticsearchTypeName] <p>The Elasticsearch type name. For Elasticsearch 6.x, there can be only one type per index. If you try to specify a new type for an existing index that already has another type, Kinesis Data Firehose returns an error during runtime.</p>
-- * CloudWatchLoggingOptions [CloudWatchLoggingOptions] <p>The CloudWatch logging options for your delivery stream.</p>
-- * DomainARN [ElasticsearchDomainARN] <p>The ARN of the Amazon ES domain. The IAM role must have permissions for <code>DescribeElasticsearchDomain</code>, <code>DescribeElasticsearchDomains</code>, and <code>DescribeElasticsearchDomainConfig</code> after assuming the IAM role specified in <b>RoleARN</b>. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and AWS Service Namespaces</a>.</p>
-- * IndexRotationPeriod [ElasticsearchIndexRotationPeriod] <p>The Elasticsearch index rotation period. Index rotation appends a time stamp to <code>IndexName</code> to facilitate the expiration of old data. For more information, see <a href="http://docs.aws.amazon.com/firehose/latest/dev/basic-deliver.html#es-index-rotation">Index Rotation for the Amazon ES Destination</a>. Default value is <code>OneDay</code>.</p>
-- * ProcessingConfiguration [ProcessingConfiguration] <p>The data processing configuration.</p>
-- @return ElasticsearchDestinationUpdate structure as a key-value pair table
function M.ElasticsearchDestinationUpdate(args)
	assert(args, "You must provide an argument table when creating ElasticsearchDestinationUpdate")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["IndexName"] = args["IndexName"],
		["S3Update"] = args["S3Update"],
		["RetryOptions"] = args["RetryOptions"],
		["RoleARN"] = args["RoleARN"],
		["BufferingHints"] = args["BufferingHints"],
		["TypeName"] = args["TypeName"],
		["CloudWatchLoggingOptions"] = args["CloudWatchLoggingOptions"],
		["DomainARN"] = args["DomainARN"],
		["IndexRotationPeriod"] = args["IndexRotationPeriod"],
		["ProcessingConfiguration"] = args["ProcessingConfiguration"],
	}
	asserts.AssertElasticsearchDestinationUpdate(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DestinationDescription = { ["ExtendedS3DestinationDescription"] = true, ["S3DestinationDescription"] = true, ["RedshiftDestinationDescription"] = true, ["DestinationId"] = true, ["SplunkDestinationDescription"] = true, ["ElasticsearchDestinationDescription"] = true, nil }

function asserts.AssertDestinationDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DestinationDescription to be of type 'table'")
	assert(struct["DestinationId"], "Expected key DestinationId to exist in table")
	if struct["ExtendedS3DestinationDescription"] then asserts.AssertExtendedS3DestinationDescription(struct["ExtendedS3DestinationDescription"]) end
	if struct["S3DestinationDescription"] then asserts.AssertS3DestinationDescription(struct["S3DestinationDescription"]) end
	if struct["RedshiftDestinationDescription"] then asserts.AssertRedshiftDestinationDescription(struct["RedshiftDestinationDescription"]) end
	if struct["DestinationId"] then asserts.AssertDestinationId(struct["DestinationId"]) end
	if struct["SplunkDestinationDescription"] then asserts.AssertSplunkDestinationDescription(struct["SplunkDestinationDescription"]) end
	if struct["ElasticsearchDestinationDescription"] then asserts.AssertElasticsearchDestinationDescription(struct["ElasticsearchDestinationDescription"]) end
	for k,_ in pairs(struct) do
		assert(keys.DestinationDescription[k], "DestinationDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DestinationDescription
-- <p>Describes the destination for a delivery stream.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ExtendedS3DestinationDescription [ExtendedS3DestinationDescription] <p>The destination in Amazon S3.</p>
-- * S3DestinationDescription [S3DestinationDescription] <p>[Deprecated] The destination in Amazon S3.</p>
-- * RedshiftDestinationDescription [RedshiftDestinationDescription] <p>The destination in Amazon Redshift.</p>
-- * DestinationId [DestinationId] <p>The ID of the destination.</p>
-- * SplunkDestinationDescription [SplunkDestinationDescription] <p>The destination in Splunk.</p>
-- * ElasticsearchDestinationDescription [ElasticsearchDestinationDescription] <p>The destination in Amazon ES.</p>
-- Required key: DestinationId
-- @return DestinationDescription structure as a key-value pair table
function M.DestinationDescription(args)
	assert(args, "You must provide an argument table when creating DestinationDescription")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ExtendedS3DestinationDescription"] = args["ExtendedS3DestinationDescription"],
		["S3DestinationDescription"] = args["S3DestinationDescription"],
		["RedshiftDestinationDescription"] = args["RedshiftDestinationDescription"],
		["DestinationId"] = args["DestinationId"],
		["SplunkDestinationDescription"] = args["SplunkDestinationDescription"],
		["ElasticsearchDestinationDescription"] = args["ElasticsearchDestinationDescription"],
	}
	asserts.AssertDestinationDescription(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InputFormatConfiguration = { ["Deserializer"] = true, nil }

function asserts.AssertInputFormatConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InputFormatConfiguration to be of type 'table'")
	if struct["Deserializer"] then asserts.AssertDeserializer(struct["Deserializer"]) end
	for k,_ in pairs(struct) do
		assert(keys.InputFormatConfiguration[k], "InputFormatConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InputFormatConfiguration
-- <p>Specifies the deserializer you want to use to convert the format of the input data.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Deserializer [Deserializer] <p>Specifies which deserializer to use. You can choose either the Apache Hive JSON SerDe or the OpenX JSON SerDe. If both are non-null, the server rejects the request.</p>
-- @return InputFormatConfiguration structure as a key-value pair table
function M.InputFormatConfiguration(args)
	assert(args, "You must provide an argument table when creating InputFormatConfiguration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Deserializer"] = args["Deserializer"],
	}
	asserts.AssertInputFormatConfiguration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListTagsForDeliveryStreamInput = { ["DeliveryStreamName"] = true, ["Limit"] = true, ["ExclusiveStartTagKey"] = true, nil }

function asserts.AssertListTagsForDeliveryStreamInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagsForDeliveryStreamInput to be of type 'table'")
	assert(struct["DeliveryStreamName"], "Expected key DeliveryStreamName to exist in table")
	if struct["DeliveryStreamName"] then asserts.AssertDeliveryStreamName(struct["DeliveryStreamName"]) end
	if struct["Limit"] then asserts.AssertListTagsForDeliveryStreamInputLimit(struct["Limit"]) end
	if struct["ExclusiveStartTagKey"] then asserts.AssertTagKey(struct["ExclusiveStartTagKey"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTagsForDeliveryStreamInput[k], "ListTagsForDeliveryStreamInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagsForDeliveryStreamInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DeliveryStreamName [DeliveryStreamName] <p>The name of the delivery stream whose tags you want to list.</p>
-- * Limit [ListTagsForDeliveryStreamInputLimit] <p>The number of tags to return. If this number is less than the total number of tags associated with the delivery stream, <code>HasMoreTags</code> is set to <code>true</code> in the response. To list additional tags, set <code>ExclusiveStartTagKey</code> to the last key in the response. </p>
-- * ExclusiveStartTagKey [TagKey] <p>The key to use as the starting point for the list of tags. If you set this parameter, <code>ListTagsForDeliveryStream</code> gets all tags that occur after <code>ExclusiveStartTagKey</code>.</p>
-- Required key: DeliveryStreamName
-- @return ListTagsForDeliveryStreamInput structure as a key-value pair table
function M.ListTagsForDeliveryStreamInput(args)
	assert(args, "You must provide an argument table when creating ListTagsForDeliveryStreamInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DeliveryStreamName"] = args["DeliveryStreamName"],
		["Limit"] = args["Limit"],
		["ExclusiveStartTagKey"] = args["ExclusiveStartTagKey"],
	}
	asserts.AssertListTagsForDeliveryStreamInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CopyCommand = { ["DataTableName"] = true, ["CopyOptions"] = true, ["DataTableColumns"] = true, nil }

function asserts.AssertCopyCommand(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CopyCommand to be of type 'table'")
	assert(struct["DataTableName"], "Expected key DataTableName to exist in table")
	if struct["DataTableName"] then asserts.AssertDataTableName(struct["DataTableName"]) end
	if struct["CopyOptions"] then asserts.AssertCopyOptions(struct["CopyOptions"]) end
	if struct["DataTableColumns"] then asserts.AssertDataTableColumns(struct["DataTableColumns"]) end
	for k,_ in pairs(struct) do
		assert(keys.CopyCommand[k], "CopyCommand contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CopyCommand
-- <p>Describes a <code>COPY</code> command for Amazon Redshift.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DataTableName [DataTableName] <p>The name of the target table. The table must already exist in the database.</p>
-- * CopyOptions [CopyOptions] <p>Optional parameters to use with the Amazon Redshift <code>COPY</code> command. For more information, see the "Optional Parameters" section of <a href="http://docs.aws.amazon.com/redshift/latest/dg/r_COPY.html">Amazon Redshift COPY command</a>. Some possible examples that would apply to Kinesis Data Firehose are as follows:</p> <p> <code>delimiter '\t' lzop;</code> - fields are delimited with "\t" (TAB character) and compressed using lzop.</p> <p> <code>delimiter '|'</code> - fields are delimited with "|" (this is the default delimiter).</p> <p> <code>delimiter '|' escape</code> - the delimiter should be escaped.</p> <p> <code>fixedwidth 'venueid:3,venuename:25,venuecity:12,venuestate:2,venueseats:6'</code> - fields are fixed width in the source, with each width specified after every column in the table.</p> <p> <code>JSON 's3://mybucket/jsonpaths.txt'</code> - data is in JSON format, and the path specified is the format of the data.</p> <p>For more examples, see <a href="http://docs.aws.amazon.com/redshift/latest/dg/r_COPY_command_examples.html">Amazon Redshift COPY command examples</a>.</p>
-- * DataTableColumns [DataTableColumns] <p>A comma-separated list of column names.</p>
-- Required key: DataTableName
-- @return CopyCommand structure as a key-value pair table
function M.CopyCommand(args)
	assert(args, "You must provide an argument table when creating CopyCommand")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DataTableName"] = args["DataTableName"],
		["CopyOptions"] = args["CopyOptions"],
		["DataTableColumns"] = args["DataTableColumns"],
	}
	asserts.AssertCopyCommand(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.OrcSerDe = { ["Compression"] = true, ["BloomFilterColumns"] = true, ["BlockSizeBytes"] = true, ["PaddingTolerance"] = true, ["StripeSizeBytes"] = true, ["BloomFilterFalsePositiveProbability"] = true, ["FormatVersion"] = true, ["EnablePadding"] = true, ["RowIndexStride"] = true, ["DictionaryKeyThreshold"] = true, nil }

function asserts.AssertOrcSerDe(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OrcSerDe to be of type 'table'")
	if struct["Compression"] then asserts.AssertOrcCompression(struct["Compression"]) end
	if struct["BloomFilterColumns"] then asserts.AssertListOfNonEmptyStringsWithoutWhitespace(struct["BloomFilterColumns"]) end
	if struct["BlockSizeBytes"] then asserts.AssertBlockSizeBytes(struct["BlockSizeBytes"]) end
	if struct["PaddingTolerance"] then asserts.AssertProportion(struct["PaddingTolerance"]) end
	if struct["StripeSizeBytes"] then asserts.AssertOrcStripeSizeBytes(struct["StripeSizeBytes"]) end
	if struct["BloomFilterFalsePositiveProbability"] then asserts.AssertProportion(struct["BloomFilterFalsePositiveProbability"]) end
	if struct["FormatVersion"] then asserts.AssertOrcFormatVersion(struct["FormatVersion"]) end
	if struct["EnablePadding"] then asserts.AssertBooleanObject(struct["EnablePadding"]) end
	if struct["RowIndexStride"] then asserts.AssertOrcRowIndexStride(struct["RowIndexStride"]) end
	if struct["DictionaryKeyThreshold"] then asserts.AssertProportion(struct["DictionaryKeyThreshold"]) end
	for k,_ in pairs(struct) do
		assert(keys.OrcSerDe[k], "OrcSerDe contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OrcSerDe
-- <p>A serializer to use for converting data to the ORC format before storing it in Amazon S3. For more information, see <a href="https://orc.apache.org/docs/">Apache ORC</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Compression [OrcCompression] <p>The compression code to use over data blocks. The default is <code>SNAPPY</code>.</p>
-- * BloomFilterColumns [ListOfNonEmptyStringsWithoutWhitespace] <p>The column names for which you want Kinesis Data Firehose to create bloom filters. The default is <code>null</code>.</p>
-- * BlockSizeBytes [BlockSizeBytes] <p>The Hadoop Distributed File System (HDFS) block size. This is useful if you intend to copy the data from Amazon S3 to HDFS before querying. The default is 256 MiB and the minimum is 64 MiB. Kinesis Data Firehose uses this value for padding calculations.</p>
-- * PaddingTolerance [Proportion] <p>A number between 0 and 1 that defines the tolerance for block padding as a decimal fraction of stripe size. The default value is 0.05, which means 5 percent of stripe size.</p> <p>For the default values of 64 MiB ORC stripes and 256 MiB HDFS blocks, the default block padding tolerance of 5 percent reserves a maximum of 3.2 MiB for padding within the 256 MiB block. In such a case, if the available size within the block is more than 3.2 MiB, a new, smaller stripe is inserted to fit within that space. This ensures that no stripe crosses block boundaries and causes remote reads within a node-local task.</p> <p>Kinesis Data Firehose ignores this parameter when <a>OrcSerDe$EnablePadding</a> is <code>false</code>.</p>
-- * StripeSizeBytes [OrcStripeSizeBytes] <p>The number of bytes in each stripe. The default is 64 MiB and the minimum is 8 MiB.</p>
-- * BloomFilterFalsePositiveProbability [Proportion] <p>The Bloom filter false positive probability (FPP). The lower the FPP, the bigger the Bloom filter. The default value is 0.05, the minimum is 0, and the maximum is 1.</p>
-- * FormatVersion [OrcFormatVersion] <p>The version of the file to write. The possible values are <code>V0_11</code> and <code>V0_12</code>. The default is <code>V0_12</code>.</p>
-- * EnablePadding [BooleanObject] <p>Set this to <code>true</code> to indicate that you want stripes to be padded to the HDFS block boundaries. This is useful if you intend to copy the data from Amazon S3 to HDFS before querying. The default is <code>false</code>.</p>
-- * RowIndexStride [OrcRowIndexStride] <p>The number of rows between index entries. The default is 10,000 and the minimum is 1,000.</p>
-- * DictionaryKeyThreshold [Proportion] <p>Represents the fraction of the total number of non-null rows. To turn off dictionary encoding, set this fraction to a number that is less than the number of distinct keys in a dictionary. To always use dictionary encoding, set this threshold to 1.</p>
-- @return OrcSerDe structure as a key-value pair table
function M.OrcSerDe(args)
	assert(args, "You must provide an argument table when creating OrcSerDe")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Compression"] = args["Compression"],
		["BloomFilterColumns"] = args["BloomFilterColumns"],
		["BlockSizeBytes"] = args["BlockSizeBytes"],
		["PaddingTolerance"] = args["PaddingTolerance"],
		["StripeSizeBytes"] = args["StripeSizeBytes"],
		["BloomFilterFalsePositiveProbability"] = args["BloomFilterFalsePositiveProbability"],
		["FormatVersion"] = args["FormatVersion"],
		["EnablePadding"] = args["EnablePadding"],
		["RowIndexStride"] = args["RowIndexStride"],
		["DictionaryKeyThreshold"] = args["DictionaryKeyThreshold"],
	}
	asserts.AssertOrcSerDe(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.S3DestinationUpdate = { ["RoleARN"] = true, ["Prefix"] = true, ["BufferingHints"] = true, ["EncryptionConfiguration"] = true, ["CompressionFormat"] = true, ["CloudWatchLoggingOptions"] = true, ["BucketARN"] = true, nil }

function asserts.AssertS3DestinationUpdate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected S3DestinationUpdate to be of type 'table'")
	if struct["RoleARN"] then asserts.AssertRoleARN(struct["RoleARN"]) end
	if struct["Prefix"] then asserts.AssertPrefix(struct["Prefix"]) end
	if struct["BufferingHints"] then asserts.AssertBufferingHints(struct["BufferingHints"]) end
	if struct["EncryptionConfiguration"] then asserts.AssertEncryptionConfiguration(struct["EncryptionConfiguration"]) end
	if struct["CompressionFormat"] then asserts.AssertCompressionFormat(struct["CompressionFormat"]) end
	if struct["CloudWatchLoggingOptions"] then asserts.AssertCloudWatchLoggingOptions(struct["CloudWatchLoggingOptions"]) end
	if struct["BucketARN"] then asserts.AssertBucketARN(struct["BucketARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.S3DestinationUpdate[k], "S3DestinationUpdate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type S3DestinationUpdate
-- <p>Describes an update for a destination in Amazon S3.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RoleARN [RoleARN] <p>The Amazon Resource Name (ARN) of the AWS credentials. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and AWS Service Namespaces</a>.</p>
-- * Prefix [Prefix] <p>The "YYYY/MM/DD/HH" time format prefix is automatically used for delivered Amazon S3 files. You can specify an extra prefix to be added in front of the time format prefix. If the prefix ends with a slash, it appears as a folder in the S3 bucket. For more information, see <a href="http://docs.aws.amazon.com/firehose/latest/dev/basic-deliver.html#s3-object-name">Amazon S3 Object Name Format</a> in the <i>Amazon Kinesis Data Firehose Developer Guide</i>.</p>
-- * BufferingHints [BufferingHints] <p>The buffering option. If no value is specified, <code>BufferingHints</code> object default values are used.</p>
-- * EncryptionConfiguration [EncryptionConfiguration] <p>The encryption configuration. If no value is specified, the default is no encryption.</p>
-- * CompressionFormat [CompressionFormat] <p>The compression format. If no value is specified, the default is <code>UNCOMPRESSED</code>.</p> <p>The compression formats <code>SNAPPY</code> or <code>ZIP</code> cannot be specified for Amazon Redshift destinations because they are not supported by the Amazon Redshift <code>COPY</code> operation that reads from the S3 bucket.</p>
-- * CloudWatchLoggingOptions [CloudWatchLoggingOptions] <p>The CloudWatch logging options for your delivery stream.</p>
-- * BucketARN [BucketARN] <p>The ARN of the S3 bucket. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and AWS Service Namespaces</a>.</p>
-- @return S3DestinationUpdate structure as a key-value pair table
function M.S3DestinationUpdate(args)
	assert(args, "You must provide an argument table when creating S3DestinationUpdate")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RoleARN"] = args["RoleARN"],
		["Prefix"] = args["Prefix"],
		["BufferingHints"] = args["BufferingHints"],
		["EncryptionConfiguration"] = args["EncryptionConfiguration"],
		["CompressionFormat"] = args["CompressionFormat"],
		["CloudWatchLoggingOptions"] = args["CloudWatchLoggingOptions"],
		["BucketARN"] = args["BucketARN"],
	}
	asserts.AssertS3DestinationUpdate(all_args)
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
-- <p>The specified input parameter has a value that is not valid.</p>
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

keys.ListDeliveryStreamsInput = { ["DeliveryStreamType"] = true, ["Limit"] = true, ["ExclusiveStartDeliveryStreamName"] = true, nil }

function asserts.AssertListDeliveryStreamsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDeliveryStreamsInput to be of type 'table'")
	if struct["DeliveryStreamType"] then asserts.AssertDeliveryStreamType(struct["DeliveryStreamType"]) end
	if struct["Limit"] then asserts.AssertListDeliveryStreamsInputLimit(struct["Limit"]) end
	if struct["ExclusiveStartDeliveryStreamName"] then asserts.AssertDeliveryStreamName(struct["ExclusiveStartDeliveryStreamName"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListDeliveryStreamsInput[k], "ListDeliveryStreamsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDeliveryStreamsInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DeliveryStreamType [DeliveryStreamType] <p>The delivery stream type. This can be one of the following values:</p> <ul> <li> <p> <code>DirectPut</code>: Provider applications access the delivery stream directly.</p> </li> <li> <p> <code>KinesisStreamAsSource</code>: The delivery stream uses a Kinesis data stream as a source.</p> </li> </ul> <p>This parameter is optional. If this parameter is omitted, delivery streams of all types are returned.</p>
-- * Limit [ListDeliveryStreamsInputLimit] <p>The maximum number of delivery streams to list. The default value is 10.</p>
-- * ExclusiveStartDeliveryStreamName [DeliveryStreamName] <p>The name of the delivery stream to start the list with.</p>
-- @return ListDeliveryStreamsInput structure as a key-value pair table
function M.ListDeliveryStreamsInput(args)
	assert(args, "You must provide an argument table when creating ListDeliveryStreamsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DeliveryStreamType"] = args["DeliveryStreamType"],
		["Limit"] = args["Limit"],
		["ExclusiveStartDeliveryStreamName"] = args["ExclusiveStartDeliveryStreamName"],
	}
	asserts.AssertListDeliveryStreamsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ExtendedS3DestinationConfiguration = { ["DataFormatConversionConfiguration"] = true, ["RoleARN"] = true, ["Prefix"] = true, ["BufferingHints"] = true, ["EncryptionConfiguration"] = true, ["CompressionFormat"] = true, ["S3BackupMode"] = true, ["CloudWatchLoggingOptions"] = true, ["S3BackupConfiguration"] = true, ["BucketARN"] = true, ["ProcessingConfiguration"] = true, nil }

function asserts.AssertExtendedS3DestinationConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ExtendedS3DestinationConfiguration to be of type 'table'")
	assert(struct["RoleARN"], "Expected key RoleARN to exist in table")
	assert(struct["BucketARN"], "Expected key BucketARN to exist in table")
	if struct["DataFormatConversionConfiguration"] then asserts.AssertDataFormatConversionConfiguration(struct["DataFormatConversionConfiguration"]) end
	if struct["RoleARN"] then asserts.AssertRoleARN(struct["RoleARN"]) end
	if struct["Prefix"] then asserts.AssertPrefix(struct["Prefix"]) end
	if struct["BufferingHints"] then asserts.AssertBufferingHints(struct["BufferingHints"]) end
	if struct["EncryptionConfiguration"] then asserts.AssertEncryptionConfiguration(struct["EncryptionConfiguration"]) end
	if struct["CompressionFormat"] then asserts.AssertCompressionFormat(struct["CompressionFormat"]) end
	if struct["S3BackupMode"] then asserts.AssertS3BackupMode(struct["S3BackupMode"]) end
	if struct["CloudWatchLoggingOptions"] then asserts.AssertCloudWatchLoggingOptions(struct["CloudWatchLoggingOptions"]) end
	if struct["S3BackupConfiguration"] then asserts.AssertS3DestinationConfiguration(struct["S3BackupConfiguration"]) end
	if struct["BucketARN"] then asserts.AssertBucketARN(struct["BucketARN"]) end
	if struct["ProcessingConfiguration"] then asserts.AssertProcessingConfiguration(struct["ProcessingConfiguration"]) end
	for k,_ in pairs(struct) do
		assert(keys.ExtendedS3DestinationConfiguration[k], "ExtendedS3DestinationConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ExtendedS3DestinationConfiguration
-- <p>Describes the configuration of a destination in Amazon S3.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DataFormatConversionConfiguration [DataFormatConversionConfiguration] <p>The serializer, deserializer, and schema for converting data from the JSON format to the Parquet or ORC format before writing it to Amazon S3.</p>
-- * RoleARN [RoleARN] <p>The Amazon Resource Name (ARN) of the AWS credentials. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and AWS Service Namespaces</a>.</p>
-- * Prefix [Prefix] <p>The "YYYY/MM/DD/HH" time format prefix is automatically used for delivered Amazon S3 files. You can specify an extra prefix to be added in front of the time format prefix. If the prefix ends with a slash, it appears as a folder in the S3 bucket. For more information, see <a href="http://docs.aws.amazon.com/firehose/latest/dev/basic-deliver.html#s3-object-name">Amazon S3 Object Name Format</a> in the <i>Amazon Kinesis Data Firehose Developer Guide</i>.</p>
-- * BufferingHints [BufferingHints] <p>The buffering option.</p>
-- * EncryptionConfiguration [EncryptionConfiguration] <p>The encryption configuration. If no value is specified, the default is no encryption.</p>
-- * CompressionFormat [CompressionFormat] <p>The compression format. If no value is specified, the default is UNCOMPRESSED.</p>
-- * S3BackupMode [S3BackupMode] <p>The Amazon S3 backup mode.</p>
-- * CloudWatchLoggingOptions [CloudWatchLoggingOptions] <p>The Amazon CloudWatch logging options for your delivery stream.</p>
-- * S3BackupConfiguration [S3DestinationConfiguration] <p>The configuration for backup in Amazon S3.</p>
-- * BucketARN [BucketARN] <p>The ARN of the S3 bucket. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and AWS Service Namespaces</a>.</p>
-- * ProcessingConfiguration [ProcessingConfiguration] <p>The data processing configuration.</p>
-- Required key: RoleARN
-- Required key: BucketARN
-- @return ExtendedS3DestinationConfiguration structure as a key-value pair table
function M.ExtendedS3DestinationConfiguration(args)
	assert(args, "You must provide an argument table when creating ExtendedS3DestinationConfiguration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DataFormatConversionConfiguration"] = args["DataFormatConversionConfiguration"],
		["RoleARN"] = args["RoleARN"],
		["Prefix"] = args["Prefix"],
		["BufferingHints"] = args["BufferingHints"],
		["EncryptionConfiguration"] = args["EncryptionConfiguration"],
		["CompressionFormat"] = args["CompressionFormat"],
		["S3BackupMode"] = args["S3BackupMode"],
		["CloudWatchLoggingOptions"] = args["CloudWatchLoggingOptions"],
		["S3BackupConfiguration"] = args["S3BackupConfiguration"],
		["BucketARN"] = args["BucketARN"],
		["ProcessingConfiguration"] = args["ProcessingConfiguration"],
	}
	asserts.AssertExtendedS3DestinationConfiguration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeDeliveryStreamInput = { ["ExclusiveStartDestinationId"] = true, ["DeliveryStreamName"] = true, ["Limit"] = true, nil }

function asserts.AssertDescribeDeliveryStreamInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDeliveryStreamInput to be of type 'table'")
	assert(struct["DeliveryStreamName"], "Expected key DeliveryStreamName to exist in table")
	if struct["ExclusiveStartDestinationId"] then asserts.AssertDestinationId(struct["ExclusiveStartDestinationId"]) end
	if struct["DeliveryStreamName"] then asserts.AssertDeliveryStreamName(struct["DeliveryStreamName"]) end
	if struct["Limit"] then asserts.AssertDescribeDeliveryStreamInputLimit(struct["Limit"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeDeliveryStreamInput[k], "DescribeDeliveryStreamInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDeliveryStreamInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ExclusiveStartDestinationId [DestinationId] <p>The ID of the destination to start returning the destination information. Kinesis Data Firehose supports one destination per delivery stream.</p>
-- * DeliveryStreamName [DeliveryStreamName] <p>The name of the delivery stream.</p>
-- * Limit [DescribeDeliveryStreamInputLimit] <p>The limit on the number of destinations to return. You can have one destination per delivery stream.</p>
-- Required key: DeliveryStreamName
-- @return DescribeDeliveryStreamInput structure as a key-value pair table
function M.DescribeDeliveryStreamInput(args)
	assert(args, "You must provide an argument table when creating DescribeDeliveryStreamInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ExclusiveStartDestinationId"] = args["ExclusiveStartDestinationId"],
		["DeliveryStreamName"] = args["DeliveryStreamName"],
		["Limit"] = args["Limit"],
	}
	asserts.AssertDescribeDeliveryStreamInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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

function asserts.AssertHECToken(str)
	assert(str)
	assert(type(str) == "string", "Expected HECToken to be of type 'string'")
end

--  
function M.HECToken(str)
	asserts.AssertHECToken(str)
	return str
end

function asserts.AssertDataTableName(str)
	assert(str)
	assert(type(str) == "string", "Expected DataTableName to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.DataTableName(str)
	asserts.AssertDataTableName(str)
	return str
end

function asserts.AssertProcessorParameterValue(str)
	assert(str)
	assert(type(str) == "string", "Expected ProcessorParameterValue to be of type 'string'")
	assert(#str <= 512, "Expected string to be max 512 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ProcessorParameterValue(str)
	asserts.AssertProcessorParameterValue(str)
	return str
end

function asserts.AssertElasticsearchS3BackupMode(str)
	assert(str)
	assert(type(str) == "string", "Expected ElasticsearchS3BackupMode to be of type 'string'")
end

--  
function M.ElasticsearchS3BackupMode(str)
	asserts.AssertElasticsearchS3BackupMode(str)
	return str
end

function asserts.AssertBucketARN(str)
	assert(str)
	assert(type(str) == "string", "Expected BucketARN to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.BucketARN(str)
	asserts.AssertBucketARN(str)
	return str
end

function asserts.AssertElasticsearchIndexRotationPeriod(str)
	assert(str)
	assert(type(str) == "string", "Expected ElasticsearchIndexRotationPeriod to be of type 'string'")
end

--  
function M.ElasticsearchIndexRotationPeriod(str)
	asserts.AssertElasticsearchIndexRotationPeriod(str)
	return str
end

function asserts.AssertNonEmptyString(str)
	assert(str)
	assert(type(str) == "string", "Expected NonEmptyString to be of type 'string'")
end

--  
function M.NonEmptyString(str)
	asserts.AssertNonEmptyString(str)
	return str
end

function asserts.AssertSplunkS3BackupMode(str)
	assert(str)
	assert(type(str) == "string", "Expected SplunkS3BackupMode to be of type 'string'")
end

--  
function M.SplunkS3BackupMode(str)
	asserts.AssertSplunkS3BackupMode(str)
	return str
end

function asserts.AssertLogStreamName(str)
	assert(str)
	assert(type(str) == "string", "Expected LogStreamName to be of type 'string'")
end

--  
function M.LogStreamName(str)
	asserts.AssertLogStreamName(str)
	return str
end

function asserts.AssertDeliveryStreamName(str)
	assert(str)
	assert(type(str) == "string", "Expected DeliveryStreamName to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.DeliveryStreamName(str)
	asserts.AssertDeliveryStreamName(str)
	return str
end

function asserts.AssertPutResponseRecordId(str)
	assert(str)
	assert(type(str) == "string", "Expected PutResponseRecordId to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.PutResponseRecordId(str)
	asserts.AssertPutResponseRecordId(str)
	return str
end

function asserts.AssertDeliveryStreamVersionId(str)
	assert(str)
	assert(type(str) == "string", "Expected DeliveryStreamVersionId to be of type 'string'")
	assert(#str <= 50, "Expected string to be max 50 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.DeliveryStreamVersionId(str)
	asserts.AssertDeliveryStreamVersionId(str)
	return str
end

function asserts.AssertElasticsearchIndexName(str)
	assert(str)
	assert(type(str) == "string", "Expected ElasticsearchIndexName to be of type 'string'")
	assert(#str <= 80, "Expected string to be max 80 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ElasticsearchIndexName(str)
	asserts.AssertElasticsearchIndexName(str)
	return str
end

function asserts.AssertDeliveryStreamStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected DeliveryStreamStatus to be of type 'string'")
end

--  
function M.DeliveryStreamStatus(str)
	asserts.AssertDeliveryStreamStatus(str)
	return str
end

function asserts.AssertKinesisStreamARN(str)
	assert(str)
	assert(type(str) == "string", "Expected KinesisStreamARN to be of type 'string'")
	assert(#str <= 512, "Expected string to be max 512 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.KinesisStreamARN(str)
	asserts.AssertKinesisStreamARN(str)
	return str
end

function asserts.AssertNonEmptyStringWithoutWhitespace(str)
	assert(str)
	assert(type(str) == "string", "Expected NonEmptyStringWithoutWhitespace to be of type 'string'")
end

--  
function M.NonEmptyStringWithoutWhitespace(str)
	asserts.AssertNonEmptyStringWithoutWhitespace(str)
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

function asserts.AssertErrorMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected ErrorMessage to be of type 'string'")
end

--  
function M.ErrorMessage(str)
	asserts.AssertErrorMessage(str)
	return str
end

function asserts.AssertOrcFormatVersion(str)
	assert(str)
	assert(type(str) == "string", "Expected OrcFormatVersion to be of type 'string'")
end

--  
function M.OrcFormatVersion(str)
	asserts.AssertOrcFormatVersion(str)
	return str
end

function asserts.AssertDeliveryStreamARN(str)
	assert(str)
	assert(type(str) == "string", "Expected DeliveryStreamARN to be of type 'string'")
	assert(#str <= 512, "Expected string to be max 512 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.DeliveryStreamARN(str)
	asserts.AssertDeliveryStreamARN(str)
	return str
end

function asserts.AssertElasticsearchDomainARN(str)
	assert(str)
	assert(type(str) == "string", "Expected ElasticsearchDomainARN to be of type 'string'")
	assert(#str <= 512, "Expected string to be max 512 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ElasticsearchDomainARN(str)
	asserts.AssertElasticsearchDomainARN(str)
	return str
end

function asserts.AssertDataTableColumns(str)
	assert(str)
	assert(type(str) == "string", "Expected DataTableColumns to be of type 'string'")
end

--  
function M.DataTableColumns(str)
	asserts.AssertDataTableColumns(str)
	return str
end

function asserts.AssertS3BackupMode(str)
	assert(str)
	assert(type(str) == "string", "Expected S3BackupMode to be of type 'string'")
end

--  
function M.S3BackupMode(str)
	asserts.AssertS3BackupMode(str)
	return str
end

function asserts.AssertRedshiftS3BackupMode(str)
	assert(str)
	assert(type(str) == "string", "Expected RedshiftS3BackupMode to be of type 'string'")
end

--  
function M.RedshiftS3BackupMode(str)
	asserts.AssertRedshiftS3BackupMode(str)
	return str
end

function asserts.AssertParquetCompression(str)
	assert(str)
	assert(type(str) == "string", "Expected ParquetCompression to be of type 'string'")
end

--  
function M.ParquetCompression(str)
	asserts.AssertParquetCompression(str)
	return str
end

function asserts.AssertElasticsearchTypeName(str)
	assert(str)
	assert(type(str) == "string", "Expected ElasticsearchTypeName to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ElasticsearchTypeName(str)
	asserts.AssertElasticsearchTypeName(str)
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

function asserts.AssertProcessorType(str)
	assert(str)
	assert(type(str) == "string", "Expected ProcessorType to be of type 'string'")
end

--  
function M.ProcessorType(str)
	asserts.AssertProcessorType(str)
	return str
end

function asserts.AssertParquetWriterVersion(str)
	assert(str)
	assert(type(str) == "string", "Expected ParquetWriterVersion to be of type 'string'")
end

--  
function M.ParquetWriterVersion(str)
	asserts.AssertParquetWriterVersion(str)
	return str
end

function asserts.AssertClusterJDBCURL(str)
	assert(str)
	assert(type(str) == "string", "Expected ClusterJDBCURL to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ClusterJDBCURL(str)
	asserts.AssertClusterJDBCURL(str)
	return str
end

function asserts.AssertCopyOptions(str)
	assert(str)
	assert(type(str) == "string", "Expected CopyOptions to be of type 'string'")
end

--  
function M.CopyOptions(str)
	asserts.AssertCopyOptions(str)
	return str
end

function asserts.AssertNoEncryptionConfig(str)
	assert(str)
	assert(type(str) == "string", "Expected NoEncryptionConfig to be of type 'string'")
end

--  
function M.NoEncryptionConfig(str)
	asserts.AssertNoEncryptionConfig(str)
	return str
end

function asserts.AssertDestinationId(str)
	assert(str)
	assert(type(str) == "string", "Expected DestinationId to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.DestinationId(str)
	asserts.AssertDestinationId(str)
	return str
end

function asserts.AssertAWSKMSKeyARN(str)
	assert(str)
	assert(type(str) == "string", "Expected AWSKMSKeyARN to be of type 'string'")
	assert(#str <= 512, "Expected string to be max 512 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.AWSKMSKeyARN(str)
	asserts.AssertAWSKMSKeyARN(str)
	return str
end

function asserts.AssertLogGroupName(str)
	assert(str)
	assert(type(str) == "string", "Expected LogGroupName to be of type 'string'")
end

--  
function M.LogGroupName(str)
	asserts.AssertLogGroupName(str)
	return str
end

function asserts.AssertHECEndpoint(str)
	assert(str)
	assert(type(str) == "string", "Expected HECEndpoint to be of type 'string'")
end

--  
function M.HECEndpoint(str)
	asserts.AssertHECEndpoint(str)
	return str
end

function asserts.AssertPrefix(str)
	assert(str)
	assert(type(str) == "string", "Expected Prefix to be of type 'string'")
end

--  
function M.Prefix(str)
	asserts.AssertPrefix(str)
	return str
end

function asserts.AssertDeliveryStreamType(str)
	assert(str)
	assert(type(str) == "string", "Expected DeliveryStreamType to be of type 'string'")
end

--  
function M.DeliveryStreamType(str)
	asserts.AssertDeliveryStreamType(str)
	return str
end

function asserts.AssertRoleARN(str)
	assert(str)
	assert(type(str) == "string", "Expected RoleARN to be of type 'string'")
	assert(#str <= 512, "Expected string to be max 512 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.RoleARN(str)
	asserts.AssertRoleARN(str)
	return str
end

function asserts.AssertPassword(str)
	assert(str)
	assert(type(str) == "string", "Expected Password to be of type 'string'")
	assert(#str >= 6, "Expected string to be min 6 characters")
end

--  
function M.Password(str)
	asserts.AssertPassword(str)
	return str
end

function asserts.AssertUsername(str)
	assert(str)
	assert(type(str) == "string", "Expected Username to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.Username(str)
	asserts.AssertUsername(str)
	return str
end

function asserts.AssertCompressionFormat(str)
	assert(str)
	assert(type(str) == "string", "Expected CompressionFormat to be of type 'string'")
end

--  
function M.CompressionFormat(str)
	asserts.AssertCompressionFormat(str)
	return str
end

function asserts.AssertHECEndpointType(str)
	assert(str)
	assert(type(str) == "string", "Expected HECEndpointType to be of type 'string'")
end

--  
function M.HECEndpointType(str)
	asserts.AssertHECEndpointType(str)
	return str
end

function asserts.AssertOrcCompression(str)
	assert(str)
	assert(type(str) == "string", "Expected OrcCompression to be of type 'string'")
end

--  
function M.OrcCompression(str)
	asserts.AssertOrcCompression(str)
	return str
end

function asserts.AssertProcessorParameterName(str)
	assert(str)
	assert(type(str) == "string", "Expected ProcessorParameterName to be of type 'string'")
end

--  
function M.ProcessorParameterName(str)
	asserts.AssertProcessorParameterName(str)
	return str
end

function asserts.AssertProportion(double)
	assert(double)
	assert(type(double) == "number", "Expected Proportion to be of type 'number'")
end

function M.Proportion(double)
	asserts.AssertProportion(double)
	return double
end

function asserts.AssertListDeliveryStreamsInputLimit(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected ListDeliveryStreamsInputLimit to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 10000, "Expected integer to be max 10000")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.ListDeliveryStreamsInputLimit(integer)
	asserts.AssertListDeliveryStreamsInputLimit(integer)
	return integer
end

function asserts.AssertOrcStripeSizeBytes(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected OrcStripeSizeBytes to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer >= 8388608, "Expected integer to be min 8388608")
end

function M.OrcStripeSizeBytes(integer)
	asserts.AssertOrcStripeSizeBytes(integer)
	return integer
end

function asserts.AssertElasticsearchBufferingSizeInMBs(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected ElasticsearchBufferingSizeInMBs to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 100, "Expected integer to be max 100")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.ElasticsearchBufferingSizeInMBs(integer)
	asserts.AssertElasticsearchBufferingSizeInMBs(integer)
	return integer
end

function asserts.AssertElasticsearchRetryDurationInSeconds(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected ElasticsearchRetryDurationInSeconds to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 7200, "Expected integer to be max 7200")
end

function M.ElasticsearchRetryDurationInSeconds(integer)
	asserts.AssertElasticsearchRetryDurationInSeconds(integer)
	return integer
end

function asserts.AssertHECAcknowledgmentTimeoutInSeconds(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected HECAcknowledgmentTimeoutInSeconds to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 600, "Expected integer to be max 600")
	assert(integer >= 180, "Expected integer to be min 180")
end

function M.HECAcknowledgmentTimeoutInSeconds(integer)
	asserts.AssertHECAcknowledgmentTimeoutInSeconds(integer)
	return integer
end

function asserts.AssertElasticsearchBufferingIntervalInSeconds(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected ElasticsearchBufferingIntervalInSeconds to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 900, "Expected integer to be max 900")
	assert(integer >= 60, "Expected integer to be min 60")
end

function M.ElasticsearchBufferingIntervalInSeconds(integer)
	asserts.AssertElasticsearchBufferingIntervalInSeconds(integer)
	return integer
end

function asserts.AssertIntervalInSeconds(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected IntervalInSeconds to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 900, "Expected integer to be max 900")
	assert(integer >= 60, "Expected integer to be min 60")
end

function M.IntervalInSeconds(integer)
	asserts.AssertIntervalInSeconds(integer)
	return integer
end

function asserts.AssertSplunkRetryDurationInSeconds(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected SplunkRetryDurationInSeconds to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 7200, "Expected integer to be max 7200")
end

function M.SplunkRetryDurationInSeconds(integer)
	asserts.AssertSplunkRetryDurationInSeconds(integer)
	return integer
end

function asserts.AssertBlockSizeBytes(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected BlockSizeBytes to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer >= 67108864, "Expected integer to be min 67108864")
end

function M.BlockSizeBytes(integer)
	asserts.AssertBlockSizeBytes(integer)
	return integer
end

function asserts.AssertDescribeDeliveryStreamInputLimit(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected DescribeDeliveryStreamInputLimit to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 10000, "Expected integer to be max 10000")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.DescribeDeliveryStreamInputLimit(integer)
	asserts.AssertDescribeDeliveryStreamInputLimit(integer)
	return integer
end

function asserts.AssertListTagsForDeliveryStreamInputLimit(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected ListTagsForDeliveryStreamInputLimit to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 50, "Expected integer to be max 50")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.ListTagsForDeliveryStreamInputLimit(integer)
	asserts.AssertListTagsForDeliveryStreamInputLimit(integer)
	return integer
end

function asserts.AssertSizeInMBs(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected SizeInMBs to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 128, "Expected integer to be max 128")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.SizeInMBs(integer)
	asserts.AssertSizeInMBs(integer)
	return integer
end

function asserts.AssertRedshiftRetryDurationInSeconds(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected RedshiftRetryDurationInSeconds to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 7200, "Expected integer to be max 7200")
end

function M.RedshiftRetryDurationInSeconds(integer)
	asserts.AssertRedshiftRetryDurationInSeconds(integer)
	return integer
end

function asserts.AssertParquetPageSizeBytes(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected ParquetPageSizeBytes to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer >= 65536, "Expected integer to be min 65536")
end

function M.ParquetPageSizeBytes(integer)
	asserts.AssertParquetPageSizeBytes(integer)
	return integer
end

function asserts.AssertNonNegativeIntegerObject(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected NonNegativeIntegerObject to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.NonNegativeIntegerObject(integer)
	asserts.AssertNonNegativeIntegerObject(integer)
	return integer
end

function asserts.AssertOrcRowIndexStride(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected OrcRowIndexStride to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer >= 1000, "Expected integer to be min 1000")
end

function M.OrcRowIndexStride(integer)
	asserts.AssertOrcRowIndexStride(integer)
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

function asserts.AssertColumnToJsonKeyMappings(map)
	assert(map)
	assert(type(map) == "table", "Expected ColumnToJsonKeyMappings to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertNonEmptyStringWithoutWhitespace(k)
		asserts.AssertNonEmptyString(v)
	end
end

function M.ColumnToJsonKeyMappings(map)
	asserts.AssertColumnToJsonKeyMappings(map)
	return map
end

function asserts.AssertDeliveryStartTimestamp(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected DeliveryStartTimestamp to be of type 'string'")
end

function M.DeliveryStartTimestamp(timestamp)
	asserts.AssertDeliveryStartTimestamp(timestamp)
	return timestamp
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
	assert(#blob <= 1024000, "Expected blob to be max 1024000")
end

function M.Data(blob)
	asserts.AssertData(blob)
	return blob
end

function asserts.AssertListTagsForDeliveryStreamOutputTagList(list)
	assert(list)
	assert(type(list) == "table", "Expected ListTagsForDeliveryStreamOutputTagList to be of type ''table")
	assert(#list <= 50, "Expected list to be contain 50 elements")
	for _,v in ipairs(list) do
		asserts.AssertTag(v)
	end
end

--  
-- List of Tag objects
function M.ListTagsForDeliveryStreamOutputTagList(list)
	asserts.AssertListTagsForDeliveryStreamOutputTagList(list)
	return list
end

function asserts.AssertListOfNonEmptyStringsWithoutWhitespace(list)
	assert(list)
	assert(type(list) == "table", "Expected ListOfNonEmptyStringsWithoutWhitespace to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertNonEmptyStringWithoutWhitespace(v)
	end
end

--  
-- List of NonEmptyStringWithoutWhitespace objects
function M.ListOfNonEmptyStringsWithoutWhitespace(list)
	asserts.AssertListOfNonEmptyStringsWithoutWhitespace(list)
	return list
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

function asserts.AssertPutRecordBatchRequestEntryList(list)
	assert(list)
	assert(type(list) == "table", "Expected PutRecordBatchRequestEntryList to be of type ''table")
	assert(#list <= 500, "Expected list to be contain 500 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertRecord(v)
	end
end

--  
-- List of Record objects
function M.PutRecordBatchRequestEntryList(list)
	asserts.AssertPutRecordBatchRequestEntryList(list)
	return list
end

function asserts.AssertProcessorList(list)
	assert(list)
	assert(type(list) == "table", "Expected ProcessorList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertProcessor(v)
	end
end

--  
-- List of Processor objects
function M.ProcessorList(list)
	asserts.AssertProcessorList(list)
	return list
end

function asserts.AssertDeliveryStreamNameList(list)
	assert(list)
	assert(type(list) == "table", "Expected DeliveryStreamNameList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDeliveryStreamName(v)
	end
end

--  
-- List of DeliveryStreamName objects
function M.DeliveryStreamNameList(list)
	asserts.AssertDeliveryStreamNameList(list)
	return list
end

function asserts.AssertProcessorParameterList(list)
	assert(list)
	assert(type(list) == "table", "Expected ProcessorParameterList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertProcessorParameter(v)
	end
end

--  
-- List of ProcessorParameter objects
function M.ProcessorParameterList(list)
	asserts.AssertProcessorParameterList(list)
	return list
end

function asserts.AssertPutRecordBatchResponseEntryList(list)
	assert(list)
	assert(type(list) == "table", "Expected PutRecordBatchResponseEntryList to be of type ''table")
	assert(#list <= 500, "Expected list to be contain 500 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertPutRecordBatchResponseEntry(v)
	end
end

--  
-- List of PutRecordBatchResponseEntry objects
function M.PutRecordBatchResponseEntryList(list)
	asserts.AssertPutRecordBatchResponseEntryList(list)
	return list
end

function asserts.AssertTagDeliveryStreamInputTagList(list)
	assert(list)
	assert(type(list) == "table", "Expected TagDeliveryStreamInputTagList to be of type ''table")
	assert(#list <= 50, "Expected list to be contain 50 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertTag(v)
	end
end

--  
-- List of Tag objects
function M.TagDeliveryStreamInputTagList(list)
	asserts.AssertTagDeliveryStreamInputTagList(list)
	return list
end

function asserts.AssertDestinationDescriptionList(list)
	assert(list)
	assert(type(list) == "table", "Expected DestinationDescriptionList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDestinationDescription(v)
	end
end

--  
-- List of DestinationDescription objects
function M.DestinationDescriptionList(list)
	asserts.AssertDestinationDescriptionList(list)
	return list
end

function asserts.AssertListOfNonEmptyStrings(list)
	assert(list)
	assert(type(list) == "table", "Expected ListOfNonEmptyStrings to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertNonEmptyString(v)
	end
end

--  
-- List of NonEmptyString objects
function M.ListOfNonEmptyStrings(list)
	asserts.AssertListOfNonEmptyStrings(list)
	return list
end


local content_type = require "aws-sdk.core.content_type"
local request_headers = require "aws-sdk.core.request_headers"
local request_handlers = require "aws-sdk.core.request_handlers"

local settings = {}


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
--- Call CreateDeliveryStream asynchronously, invoking a callback when done
-- @param CreateDeliveryStreamInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateDeliveryStreamAsync(CreateDeliveryStreamInput, cb)
	assert(CreateDeliveryStreamInput, "You must provide a CreateDeliveryStreamInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Firehose_20150804.CreateDeliveryStream",
	}
	for header,value in pairs(CreateDeliveryStreamInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateDeliveryStreamInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateDeliveryStream synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateDeliveryStreamInput
-- @return response
-- @return error_type
-- @return error_message
function M.CreateDeliveryStreamSync(CreateDeliveryStreamInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateDeliveryStreamAsync(CreateDeliveryStreamInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeDeliveryStream asynchronously, invoking a callback when done
-- @param DescribeDeliveryStreamInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeDeliveryStreamAsync(DescribeDeliveryStreamInput, cb)
	assert(DescribeDeliveryStreamInput, "You must provide a DescribeDeliveryStreamInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Firehose_20150804.DescribeDeliveryStream",
	}
	for header,value in pairs(DescribeDeliveryStreamInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeDeliveryStreamInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeDeliveryStream synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeDeliveryStreamInput
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeDeliveryStreamSync(DescribeDeliveryStreamInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeDeliveryStreamAsync(DescribeDeliveryStreamInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateDestination asynchronously, invoking a callback when done
-- @param UpdateDestinationInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateDestinationAsync(UpdateDestinationInput, cb)
	assert(UpdateDestinationInput, "You must provide a UpdateDestinationInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Firehose_20150804.UpdateDestination",
	}
	for header,value in pairs(UpdateDestinationInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateDestinationInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateDestination synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateDestinationInput
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateDestinationSync(UpdateDestinationInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateDestinationAsync(UpdateDestinationInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call TagDeliveryStream asynchronously, invoking a callback when done
-- @param TagDeliveryStreamInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.TagDeliveryStreamAsync(TagDeliveryStreamInput, cb)
	assert(TagDeliveryStreamInput, "You must provide a TagDeliveryStreamInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Firehose_20150804.TagDeliveryStream",
	}
	for header,value in pairs(TagDeliveryStreamInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", TagDeliveryStreamInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call TagDeliveryStream synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param TagDeliveryStreamInput
-- @return response
-- @return error_type
-- @return error_message
function M.TagDeliveryStreamSync(TagDeliveryStreamInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.TagDeliveryStreamAsync(TagDeliveryStreamInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteDeliveryStream asynchronously, invoking a callback when done
-- @param DeleteDeliveryStreamInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteDeliveryStreamAsync(DeleteDeliveryStreamInput, cb)
	assert(DeleteDeliveryStreamInput, "You must provide a DeleteDeliveryStreamInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Firehose_20150804.DeleteDeliveryStream",
	}
	for header,value in pairs(DeleteDeliveryStreamInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteDeliveryStreamInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteDeliveryStream synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteDeliveryStreamInput
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteDeliveryStreamSync(DeleteDeliveryStreamInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteDeliveryStreamAsync(DeleteDeliveryStreamInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListDeliveryStreams asynchronously, invoking a callback when done
-- @param ListDeliveryStreamsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListDeliveryStreamsAsync(ListDeliveryStreamsInput, cb)
	assert(ListDeliveryStreamsInput, "You must provide a ListDeliveryStreamsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Firehose_20150804.ListDeliveryStreams",
	}
	for header,value in pairs(ListDeliveryStreamsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListDeliveryStreamsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListDeliveryStreams synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListDeliveryStreamsInput
-- @return response
-- @return error_type
-- @return error_message
function M.ListDeliveryStreamsSync(ListDeliveryStreamsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListDeliveryStreamsAsync(ListDeliveryStreamsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PutRecordBatch asynchronously, invoking a callback when done
-- @param PutRecordBatchInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PutRecordBatchAsync(PutRecordBatchInput, cb)
	assert(PutRecordBatchInput, "You must provide a PutRecordBatchInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Firehose_20150804.PutRecordBatch",
	}
	for header,value in pairs(PutRecordBatchInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", PutRecordBatchInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutRecordBatch synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutRecordBatchInput
-- @return response
-- @return error_type
-- @return error_message
function M.PutRecordBatchSync(PutRecordBatchInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutRecordBatchAsync(PutRecordBatchInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UntagDeliveryStream asynchronously, invoking a callback when done
-- @param UntagDeliveryStreamInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UntagDeliveryStreamAsync(UntagDeliveryStreamInput, cb)
	assert(UntagDeliveryStreamInput, "You must provide a UntagDeliveryStreamInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Firehose_20150804.UntagDeliveryStream",
	}
	for header,value in pairs(UntagDeliveryStreamInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UntagDeliveryStreamInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UntagDeliveryStream synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UntagDeliveryStreamInput
-- @return response
-- @return error_type
-- @return error_message
function M.UntagDeliveryStreamSync(UntagDeliveryStreamInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UntagDeliveryStreamAsync(UntagDeliveryStreamInput, function(response, error_type, error_message)
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
		[request_headers.AMZ_TARGET_HEADER] = "Firehose_20150804.PutRecord",
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

--- Call ListTagsForDeliveryStream asynchronously, invoking a callback when done
-- @param ListTagsForDeliveryStreamInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListTagsForDeliveryStreamAsync(ListTagsForDeliveryStreamInput, cb)
	assert(ListTagsForDeliveryStreamInput, "You must provide a ListTagsForDeliveryStreamInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Firehose_20150804.ListTagsForDeliveryStream",
	}
	for header,value in pairs(ListTagsForDeliveryStreamInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListTagsForDeliveryStreamInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListTagsForDeliveryStream synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListTagsForDeliveryStreamInput
-- @return response
-- @return error_type
-- @return error_message
function M.ListTagsForDeliveryStreamSync(ListTagsForDeliveryStreamInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListTagsForDeliveryStreamAsync(ListTagsForDeliveryStreamInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
