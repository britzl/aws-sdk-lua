--- GENERATED CODE - DO NOT MODIFY
-- Amazon Kinesis Analytics (kinesisanalytics-2015-08-14)

local M = {}

M.metadata = {
	api_version = "2015-08-14",
	json_version = "1.1",
	protocol = "json",
	checksum_format = "",
	endpoint_prefix = "kinesisanalytics",
	service_abbreviation = "Kinesis Analytics",
	service_full_name = "Amazon Kinesis Analytics",
	signature_version = "v4",
	target_prefix = "KinesisAnalytics_20150814",
	timestamp_format = "unixTimestamp",
	global_endpoint = "",
	uid = "kinesisanalytics-2015-08-14",
}

local ListApplicationsRequest_keys = { "Limit" = true, "ExclusiveStartApplicationName" = true, nil }

function M.AssertListApplicationsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListApplicationsRequest to be of type 'table'")
	if struct["Limit"] then M.AssertListApplicationsInputLimit(struct["Limit"]) end
	if struct["ExclusiveStartApplicationName"] then M.AssertApplicationName(struct["ExclusiveStartApplicationName"]) end
	for k,_ in pairs(struct) do
		assert(ListApplicationsRequest_keys[k], "ListApplicationsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListApplicationsRequest
-- &lt;p/&gt;
-- @param Limit [ListApplicationsInputLimit] &lt;p&gt;Maximum number of applications to list.&lt;/p&gt;
-- @param ExclusiveStartApplicationName [ApplicationName] &lt;p&gt;Name of the application to start the list with. When using pagination to retrieve the list, you don't need to specify this parameter in the first request. However, in subsequent requests, you add the last application name from the previous response to get the next page of applications.&lt;/p&gt;
function M.ListApplicationsRequest(Limit, ExclusiveStartApplicationName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListApplicationsRequest")
	local t = { 
		["Limit"] = Limit,
		["ExclusiveStartApplicationName"] = ExclusiveStartApplicationName,
	}
	M.AssertListApplicationsRequest(t)
	return t
end

local DestinationSchema_keys = { "RecordFormatType" = true, nil }

function M.AssertDestinationSchema(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DestinationSchema to be of type 'table'")
	if struct["RecordFormatType"] then M.AssertRecordFormatType(struct["RecordFormatType"]) end
	for k,_ in pairs(struct) do
		assert(DestinationSchema_keys[k], "DestinationSchema contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DestinationSchema
-- &lt;p&gt;Describes the data format when records are written to the destination. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-output.html&quot;&gt;Configuring Application Output&lt;/a&gt;. &lt;/p&gt;
-- @param RecordFormatType [RecordFormatType] &lt;p&gt;Specifies the format of the records on the output stream.&lt;/p&gt;
function M.DestinationSchema(RecordFormatType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DestinationSchema")
	local t = { 
		["RecordFormatType"] = RecordFormatType,
	}
	M.AssertDestinationSchema(t)
	return t
end

local InvalidApplicationConfigurationException_keys = { "message" = true, nil }

function M.AssertInvalidApplicationConfigurationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidApplicationConfigurationException to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidApplicationConfigurationException_keys[k], "InvalidApplicationConfigurationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidApplicationConfigurationException
-- &lt;p&gt;User-provided application configuration is not valid.&lt;/p&gt;
-- @param message [ErrorMessage] &lt;p&gt;test&lt;/p&gt;
function M.InvalidApplicationConfigurationException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidApplicationConfigurationException")
	local t = { 
		["message"] = message,
	}
	M.AssertInvalidApplicationConfigurationException(t)
	return t
end

local JSONMappingParameters_keys = { "RecordRowPath" = true, nil }

function M.AssertJSONMappingParameters(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected JSONMappingParameters to be of type 'table'")
	assert(struct["RecordRowPath"], "Expected key RecordRowPath to exist in table")
	if struct["RecordRowPath"] then M.AssertRecordRowPath(struct["RecordRowPath"]) end
	for k,_ in pairs(struct) do
		assert(JSONMappingParameters_keys[k], "JSONMappingParameters contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type JSONMappingParameters
-- &lt;p&gt;Provides additional mapping information when JSON is the record format on the streaming source.&lt;/p&gt;
-- @param RecordRowPath [RecordRowPath] &lt;p&gt;Path to the top-level parent that contains the records.&lt;/p&gt; &lt;p&gt;For example, consider the following JSON record:&lt;/p&gt; &lt;p&gt;In the &lt;code&gt;RecordRowPath&lt;/code&gt;, &lt;code&gt;&quot;$&quot;&lt;/code&gt; refers to the root and path &lt;code&gt;&quot;$.vehicle.Model&quot;&lt;/code&gt; refers to the specific &lt;code&gt;&quot;Model&quot;&lt;/code&gt; key in the JSON.&lt;/p&gt;
-- Required parameter: RecordRowPath
function M.JSONMappingParameters(RecordRowPath, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating JSONMappingParameters")
	local t = { 
		["RecordRowPath"] = RecordRowPath,
	}
	M.AssertJSONMappingParameters(t)
	return t
end

local DeleteApplicationReferenceDataSourceResponse_keys = { nil }

function M.AssertDeleteApplicationReferenceDataSourceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteApplicationReferenceDataSourceResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DeleteApplicationReferenceDataSourceResponse_keys[k], "DeleteApplicationReferenceDataSourceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteApplicationReferenceDataSourceResponse
--  
function M.DeleteApplicationReferenceDataSourceResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteApplicationReferenceDataSourceResponse")
	local t = { 
	}
	M.AssertDeleteApplicationReferenceDataSourceResponse(t)
	return t
end

local AddApplicationInputResponse_keys = { nil }

function M.AssertAddApplicationInputResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddApplicationInputResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(AddApplicationInputResponse_keys[k], "AddApplicationInputResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddApplicationInputResponse
-- &lt;p/&gt;
function M.AddApplicationInputResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddApplicationInputResponse")
	local t = { 
	}
	M.AssertAddApplicationInputResponse(t)
	return t
end

local ReferenceDataSourceDescription_keys = { "S3ReferenceDataSourceDescription" = true, "ReferenceId" = true, "TableName" = true, "ReferenceSchema" = true, nil }

function M.AssertReferenceDataSourceDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReferenceDataSourceDescription to be of type 'table'")
	assert(struct["ReferenceId"], "Expected key ReferenceId to exist in table")
	assert(struct["TableName"], "Expected key TableName to exist in table")
	assert(struct["S3ReferenceDataSourceDescription"], "Expected key S3ReferenceDataSourceDescription to exist in table")
	if struct["S3ReferenceDataSourceDescription"] then M.AssertS3ReferenceDataSourceDescription(struct["S3ReferenceDataSourceDescription"]) end
	if struct["ReferenceId"] then M.AssertId(struct["ReferenceId"]) end
	if struct["TableName"] then M.AssertInAppTableName(struct["TableName"]) end
	if struct["ReferenceSchema"] then M.AssertSourceSchema(struct["ReferenceSchema"]) end
	for k,_ in pairs(struct) do
		assert(ReferenceDataSourceDescription_keys[k], "ReferenceDataSourceDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReferenceDataSourceDescription
-- &lt;p&gt;Describes the reference data source configured for an application.&lt;/p&gt;
-- @param S3ReferenceDataSourceDescription [S3ReferenceDataSourceDescription] &lt;p&gt;Provides the S3 bucket name, the object key name that contains the reference data. It also provides the Amazon Resource Name (ARN) of the IAM role that Amazon Kinesis Analytics can assume to read the Amazon S3 object and populate the in-application reference table.&lt;/p&gt;
-- @param ReferenceId [Id] &lt;p&gt;ID of the reference data source. This is the ID that Amazon Kinesis Analytics assigns when you add the reference data source to your application using the &lt;a&gt;AddApplicationReferenceDataSource&lt;/a&gt; operation.&lt;/p&gt;
-- @param TableName [InAppTableName] &lt;p&gt;The in-application table name created by the specific reference data source configuration.&lt;/p&gt;
-- @param ReferenceSchema [SourceSchema] &lt;p&gt;Describes the reference data source configured for an application.&lt;/p&gt;
-- Required parameter: ReferenceId
-- Required parameter: TableName
-- Required parameter: S3ReferenceDataSourceDescription
function M.ReferenceDataSourceDescription(S3ReferenceDataSourceDescription, ReferenceId, TableName, ReferenceSchema, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReferenceDataSourceDescription")
	local t = { 
		["S3ReferenceDataSourceDescription"] = S3ReferenceDataSourceDescription,
		["ReferenceId"] = ReferenceId,
		["TableName"] = TableName,
		["ReferenceSchema"] = ReferenceSchema,
	}
	M.AssertReferenceDataSourceDescription(t)
	return t
end

local UpdateApplicationRequest_keys = { "ApplicationName" = true, "ApplicationUpdate" = true, "CurrentApplicationVersionId" = true, nil }

function M.AssertUpdateApplicationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateApplicationRequest to be of type 'table'")
	assert(struct["ApplicationName"], "Expected key ApplicationName to exist in table")
	assert(struct["CurrentApplicationVersionId"], "Expected key CurrentApplicationVersionId to exist in table")
	assert(struct["ApplicationUpdate"], "Expected key ApplicationUpdate to exist in table")
	if struct["ApplicationName"] then M.AssertApplicationName(struct["ApplicationName"]) end
	if struct["ApplicationUpdate"] then M.AssertApplicationUpdate(struct["ApplicationUpdate"]) end
	if struct["CurrentApplicationVersionId"] then M.AssertApplicationVersionId(struct["CurrentApplicationVersionId"]) end
	for k,_ in pairs(struct) do
		assert(UpdateApplicationRequest_keys[k], "UpdateApplicationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateApplicationRequest
--  
-- @param ApplicationName [ApplicationName] &lt;p&gt;Name of the Amazon Kinesis Analytics application to update.&lt;/p&gt;
-- @param ApplicationUpdate [ApplicationUpdate] &lt;p&gt;Describes application updates.&lt;/p&gt;
-- @param CurrentApplicationVersionId [ApplicationVersionId] &lt;p&gt;The current application version ID. You can use the &lt;a&gt;DescribeApplication&lt;/a&gt; operation to get this value.&lt;/p&gt;
-- Required parameter: ApplicationName
-- Required parameter: CurrentApplicationVersionId
-- Required parameter: ApplicationUpdate
function M.UpdateApplicationRequest(ApplicationName, ApplicationUpdate, CurrentApplicationVersionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateApplicationRequest")
	local t = { 
		["ApplicationName"] = ApplicationName,
		["ApplicationUpdate"] = ApplicationUpdate,
		["CurrentApplicationVersionId"] = CurrentApplicationVersionId,
	}
	M.AssertUpdateApplicationRequest(t)
	return t
end

local CloudWatchLoggingOption_keys = { "RoleARN" = true, "LogStreamARN" = true, nil }

function M.AssertCloudWatchLoggingOption(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CloudWatchLoggingOption to be of type 'table'")
	assert(struct["LogStreamARN"], "Expected key LogStreamARN to exist in table")
	assert(struct["RoleARN"], "Expected key RoleARN to exist in table")
	if struct["RoleARN"] then M.AssertRoleARN(struct["RoleARN"]) end
	if struct["LogStreamARN"] then M.AssertLogStreamARN(struct["LogStreamARN"]) end
	for k,_ in pairs(struct) do
		assert(CloudWatchLoggingOption_keys[k], "CloudWatchLoggingOption contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CloudWatchLoggingOption
-- &lt;p&gt;Provides a description of CloudWatch logging options, including the log stream ARN and the role ARN.&lt;/p&gt;
-- @param RoleARN [RoleARN] &lt;p&gt;IAM ARN of the role to use to send application messages. Note: To write application messages to CloudWatch, the IAM role used must have the &lt;code&gt;PutLogEvents&lt;/code&gt; policy action enabled.&lt;/p&gt;
-- @param LogStreamARN [LogStreamARN] &lt;p&gt;ARN of the CloudWatch log to receive application messages.&lt;/p&gt;
-- Required parameter: LogStreamARN
-- Required parameter: RoleARN
function M.CloudWatchLoggingOption(RoleARN, LogStreamARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CloudWatchLoggingOption")
	local t = { 
		["RoleARN"] = RoleARN,
		["LogStreamARN"] = LogStreamARN,
	}
	M.AssertCloudWatchLoggingOption(t)
	return t
end

local DeleteApplicationReferenceDataSourceRequest_keys = { "ApplicationName" = true, "ReferenceId" = true, "CurrentApplicationVersionId" = true, nil }

function M.AssertDeleteApplicationReferenceDataSourceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteApplicationReferenceDataSourceRequest to be of type 'table'")
	assert(struct["ApplicationName"], "Expected key ApplicationName to exist in table")
	assert(struct["CurrentApplicationVersionId"], "Expected key CurrentApplicationVersionId to exist in table")
	assert(struct["ReferenceId"], "Expected key ReferenceId to exist in table")
	if struct["ApplicationName"] then M.AssertApplicationName(struct["ApplicationName"]) end
	if struct["ReferenceId"] then M.AssertId(struct["ReferenceId"]) end
	if struct["CurrentApplicationVersionId"] then M.AssertApplicationVersionId(struct["CurrentApplicationVersionId"]) end
	for k,_ in pairs(struct) do
		assert(DeleteApplicationReferenceDataSourceRequest_keys[k], "DeleteApplicationReferenceDataSourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteApplicationReferenceDataSourceRequest
--  
-- @param ApplicationName [ApplicationName] &lt;p&gt;Name of an existing application.&lt;/p&gt;
-- @param ReferenceId [Id] &lt;p&gt;ID of the reference data source. When you add a reference data source to your application using the &lt;a&gt;AddApplicationReferenceDataSource&lt;/a&gt;, Amazon Kinesis Analytics assigns an ID. You can use the &lt;a&gt;DescribeApplication&lt;/a&gt; operation to get the reference ID. &lt;/p&gt;
-- @param CurrentApplicationVersionId [ApplicationVersionId] &lt;p&gt;Version of the application. You can use the &lt;a&gt;DescribeApplication&lt;/a&gt; operation to get the current application version. If the version specified is not the current version, the &lt;code&gt;ConcurrentModificationException&lt;/code&gt; is returned.&lt;/p&gt;
-- Required parameter: ApplicationName
-- Required parameter: CurrentApplicationVersionId
-- Required parameter: ReferenceId
function M.DeleteApplicationReferenceDataSourceRequest(ApplicationName, ReferenceId, CurrentApplicationVersionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteApplicationReferenceDataSourceRequest")
	local t = { 
		["ApplicationName"] = ApplicationName,
		["ReferenceId"] = ReferenceId,
		["CurrentApplicationVersionId"] = CurrentApplicationVersionId,
	}
	M.AssertDeleteApplicationReferenceDataSourceRequest(t)
	return t
end

local CodeValidationException_keys = { "message" = true, nil }

function M.AssertCodeValidationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CodeValidationException to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(CodeValidationException_keys[k], "CodeValidationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CodeValidationException
-- &lt;p&gt;User-provided application code (query) is invalid. This can be a simple syntax error.&lt;/p&gt;
-- @param message [ErrorMessage] &lt;p&gt;Test&lt;/p&gt;
function M.CodeValidationException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CodeValidationException")
	local t = { 
		["message"] = message,
	}
	M.AssertCodeValidationException(t)
	return t
end

local KinesisFirehoseOutput_keys = { "ResourceARN" = true, "RoleARN" = true, nil }

function M.AssertKinesisFirehoseOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected KinesisFirehoseOutput to be of type 'table'")
	assert(struct["ResourceARN"], "Expected key ResourceARN to exist in table")
	assert(struct["RoleARN"], "Expected key RoleARN to exist in table")
	if struct["ResourceARN"] then M.AssertResourceARN(struct["ResourceARN"]) end
	if struct["RoleARN"] then M.AssertRoleARN(struct["RoleARN"]) end
	for k,_ in pairs(struct) do
		assert(KinesisFirehoseOutput_keys[k], "KinesisFirehoseOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type KinesisFirehoseOutput
-- &lt;p&gt;When configuring application output, identifies an Amazon Kinesis Firehose delivery stream as the destination. You provide the stream Amazon Resource Name (ARN) and an IAM role that enables Amazon Kinesis Analytics to write to the stream on your behalf.&lt;/p&gt;
-- @param ResourceARN [ResourceARN] &lt;p&gt;ARN of the destination Amazon Kinesis Firehose delivery stream to write to.&lt;/p&gt;
-- @param RoleARN [RoleARN] &lt;p&gt;ARN of the IAM role that Amazon Kinesis Analytics can assume to write to the destination stream on your behalf. You need to grant the necessary permissions to this role.&lt;/p&gt;
-- Required parameter: ResourceARN
-- Required parameter: RoleARN
function M.KinesisFirehoseOutput(ResourceARN, RoleARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating KinesisFirehoseOutput")
	local t = { 
		["ResourceARN"] = ResourceARN,
		["RoleARN"] = RoleARN,
	}
	M.AssertKinesisFirehoseOutput(t)
	return t
end

local KinesisStreamsOutput_keys = { "ResourceARN" = true, "RoleARN" = true, nil }

function M.AssertKinesisStreamsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected KinesisStreamsOutput to be of type 'table'")
	assert(struct["ResourceARN"], "Expected key ResourceARN to exist in table")
	assert(struct["RoleARN"], "Expected key RoleARN to exist in table")
	if struct["ResourceARN"] then M.AssertResourceARN(struct["ResourceARN"]) end
	if struct["RoleARN"] then M.AssertRoleARN(struct["RoleARN"]) end
	for k,_ in pairs(struct) do
		assert(KinesisStreamsOutput_keys[k], "KinesisStreamsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type KinesisStreamsOutput
-- &lt;p&gt;When configuring application output, identifies a Amazon Kinesis stream as the destination. You provide the stream Amazon Resource Name (ARN) and also an IAM role ARN that Amazon Kinesis Analytics can use to write to the stream on your behalf.&lt;/p&gt;
-- @param ResourceARN [ResourceARN] &lt;p&gt;ARN of the destination Amazon Kinesis stream to write to.&lt;/p&gt;
-- @param RoleARN [RoleARN] &lt;p&gt;ARN of the IAM role that Amazon Kinesis Analytics can assume to write to the destination stream on your behalf. You need to grant the necessary permissions to this role.&lt;/p&gt;
-- Required parameter: ResourceARN
-- Required parameter: RoleARN
function M.KinesisStreamsOutput(ResourceARN, RoleARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating KinesisStreamsOutput")
	local t = { 
		["ResourceARN"] = ResourceARN,
		["RoleARN"] = RoleARN,
	}
	M.AssertKinesisStreamsOutput(t)
	return t
end

local DeleteApplicationResponse_keys = { nil }

function M.AssertDeleteApplicationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteApplicationResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DeleteApplicationResponse_keys[k], "DeleteApplicationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteApplicationResponse
-- &lt;p/&gt;
function M.DeleteApplicationResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteApplicationResponse")
	local t = { 
	}
	M.AssertDeleteApplicationResponse(t)
	return t
end

local KinesisFirehoseInputUpdate_keys = { "RoleARNUpdate" = true, "ResourceARNUpdate" = true, nil }

function M.AssertKinesisFirehoseInputUpdate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected KinesisFirehoseInputUpdate to be of type 'table'")
	if struct["RoleARNUpdate"] then M.AssertRoleARN(struct["RoleARNUpdate"]) end
	if struct["ResourceARNUpdate"] then M.AssertResourceARN(struct["ResourceARNUpdate"]) end
	for k,_ in pairs(struct) do
		assert(KinesisFirehoseInputUpdate_keys[k], "KinesisFirehoseInputUpdate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type KinesisFirehoseInputUpdate
-- &lt;p&gt;When updating application input configuration, provides information about an Amazon Kinesis Firehose delivery stream as the streaming source.&lt;/p&gt;
-- @param RoleARNUpdate [RoleARN] &lt;p&gt;Amazon Resource Name (ARN) of the IAM role that Amazon Kinesis Analytics can assume to access the stream on your behalf. You need to grant necessary permissions to this role.&lt;/p&gt;
-- @param ResourceARNUpdate [ResourceARN] &lt;p&gt;ARN of the input Amazon Kinesis Firehose delivery stream to read.&lt;/p&gt;
function M.KinesisFirehoseInputUpdate(RoleARNUpdate, ResourceARNUpdate, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating KinesisFirehoseInputUpdate")
	local t = { 
		["RoleARNUpdate"] = RoleARNUpdate,
		["ResourceARNUpdate"] = ResourceARNUpdate,
	}
	M.AssertKinesisFirehoseInputUpdate(t)
	return t
end

local AddApplicationReferenceDataSourceResponse_keys = { nil }

function M.AssertAddApplicationReferenceDataSourceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddApplicationReferenceDataSourceResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(AddApplicationReferenceDataSourceResponse_keys[k], "AddApplicationReferenceDataSourceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddApplicationReferenceDataSourceResponse
-- &lt;p/&gt;
function M.AddApplicationReferenceDataSourceResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddApplicationReferenceDataSourceResponse")
	local t = { 
	}
	M.AssertAddApplicationReferenceDataSourceResponse(t)
	return t
end

local DeleteApplicationOutputRequest_keys = { "ApplicationName" = true, "OutputId" = true, "CurrentApplicationVersionId" = true, nil }

function M.AssertDeleteApplicationOutputRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteApplicationOutputRequest to be of type 'table'")
	assert(struct["ApplicationName"], "Expected key ApplicationName to exist in table")
	assert(struct["CurrentApplicationVersionId"], "Expected key CurrentApplicationVersionId to exist in table")
	assert(struct["OutputId"], "Expected key OutputId to exist in table")
	if struct["ApplicationName"] then M.AssertApplicationName(struct["ApplicationName"]) end
	if struct["OutputId"] then M.AssertId(struct["OutputId"]) end
	if struct["CurrentApplicationVersionId"] then M.AssertApplicationVersionId(struct["CurrentApplicationVersionId"]) end
	for k,_ in pairs(struct) do
		assert(DeleteApplicationOutputRequest_keys[k], "DeleteApplicationOutputRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteApplicationOutputRequest
-- &lt;p/&gt;
-- @param ApplicationName [ApplicationName] &lt;p&gt;Amazon Kinesis Analytics application name.&lt;/p&gt;
-- @param OutputId [Id] &lt;p&gt;The ID of the configuration to delete. Each output configuration that is added to the application, either when the application is created or later using the &lt;a&gt;AddApplicationOutput&lt;/a&gt; operation, has a unique ID. You need to provide the ID to uniquely identify the output configuration that you want to delete from the application configuration. You can use the &lt;a&gt;DescribeApplication&lt;/a&gt; operation to get the specific &lt;code&gt;OutputId&lt;/code&gt;. &lt;/p&gt;
-- @param CurrentApplicationVersionId [ApplicationVersionId] &lt;p&gt;Amazon Kinesis Analytics application version. You can use the &lt;a&gt;DescribeApplication&lt;/a&gt; operation to get the current application version. If the version specified is not the current version, the &lt;code&gt;ConcurrentModificationException&lt;/code&gt; is returned. &lt;/p&gt;
-- Required parameter: ApplicationName
-- Required parameter: CurrentApplicationVersionId
-- Required parameter: OutputId
function M.DeleteApplicationOutputRequest(ApplicationName, OutputId, CurrentApplicationVersionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteApplicationOutputRequest")
	local t = { 
		["ApplicationName"] = ApplicationName,
		["OutputId"] = OutputId,
		["CurrentApplicationVersionId"] = CurrentApplicationVersionId,
	}
	M.AssertDeleteApplicationOutputRequest(t)
	return t
end

local InputParallelism_keys = { "Count" = true, nil }

function M.AssertInputParallelism(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InputParallelism to be of type 'table'")
	if struct["Count"] then M.AssertInputParallelismCount(struct["Count"]) end
	for k,_ in pairs(struct) do
		assert(InputParallelism_keys[k], "InputParallelism contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InputParallelism
-- &lt;p&gt;Describes the number of in-application streams to create for a given streaming source. For information about parallelism, see &lt;a href=&quot;http://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-input.html&quot;&gt;Configuring Application Input&lt;/a&gt;. &lt;/p&gt;
-- @param Count [InputParallelismCount] &lt;p&gt;Number of in-application streams to create. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/kinesisanalytics/latest/dev/limits.html&quot;&gt;Limits&lt;/a&gt;. &lt;/p&gt;
function M.InputParallelism(Count, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InputParallelism")
	local t = { 
		["Count"] = Count,
	}
	M.AssertInputParallelism(t)
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
-- &lt;p&gt;Exceeded the number of applications allowed.&lt;/p&gt;
-- @param message [ErrorMessage] &lt;p/&gt;
function M.LimitExceededException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LimitExceededException")
	local t = { 
		["message"] = message,
	}
	M.AssertLimitExceededException(t)
	return t
end

local AddApplicationOutputResponse_keys = { nil }

function M.AssertAddApplicationOutputResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddApplicationOutputResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(AddApplicationOutputResponse_keys[k], "AddApplicationOutputResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddApplicationOutputResponse
-- &lt;p/&gt;
function M.AddApplicationOutputResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddApplicationOutputResponse")
	local t = { 
	}
	M.AssertAddApplicationOutputResponse(t)
	return t
end

local InputConfiguration_keys = { "InputStartingPositionConfiguration" = true, "Id" = true, nil }

function M.AssertInputConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InputConfiguration to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	assert(struct["InputStartingPositionConfiguration"], "Expected key InputStartingPositionConfiguration to exist in table")
	if struct["InputStartingPositionConfiguration"] then M.AssertInputStartingPositionConfiguration(struct["InputStartingPositionConfiguration"]) end
	if struct["Id"] then M.AssertId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(InputConfiguration_keys[k], "InputConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InputConfiguration
-- &lt;p&gt;When you start your application, you provide this configuration, which identifies the input source and the point in the input source at which you want the application to start processing records.&lt;/p&gt;
-- @param InputStartingPositionConfiguration [InputStartingPositionConfiguration] &lt;p&gt;Point at which you want the application to start processing records from the streaming source.&lt;/p&gt;
-- @param Id [Id] &lt;p&gt;Input source ID. You can get this ID by calling the &lt;a&gt;DescribeApplication&lt;/a&gt; operation.&lt;/p&gt;
-- Required parameter: Id
-- Required parameter: InputStartingPositionConfiguration
function M.InputConfiguration(InputStartingPositionConfiguration, Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InputConfiguration")
	local t = { 
		["InputStartingPositionConfiguration"] = InputStartingPositionConfiguration,
		["Id"] = Id,
	}
	M.AssertInputConfiguration(t)
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
-- &lt;p&gt;Exception thrown as a result of concurrent modification to an application. For example, two individuals attempting to edit the same application at the same time.&lt;/p&gt;
-- @param message [ErrorMessage] &lt;p/&gt;
function M.ConcurrentModificationException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ConcurrentModificationException")
	local t = { 
		["message"] = message,
	}
	M.AssertConcurrentModificationException(t)
	return t
end

local SourceSchema_keys = { "RecordColumns" = true, "RecordFormat" = true, "RecordEncoding" = true, nil }

function M.AssertSourceSchema(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SourceSchema to be of type 'table'")
	assert(struct["RecordFormat"], "Expected key RecordFormat to exist in table")
	assert(struct["RecordColumns"], "Expected key RecordColumns to exist in table")
	if struct["RecordColumns"] then M.AssertRecordColumns(struct["RecordColumns"]) end
	if struct["RecordFormat"] then M.AssertRecordFormat(struct["RecordFormat"]) end
	if struct["RecordEncoding"] then M.AssertRecordEncoding(struct["RecordEncoding"]) end
	for k,_ in pairs(struct) do
		assert(SourceSchema_keys[k], "SourceSchema contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SourceSchema
-- &lt;p&gt;Describes the format of the data in the streaming source, and how each data element maps to corresponding columns created in the in-application stream.&lt;/p&gt;
-- @param RecordColumns [RecordColumns] &lt;p&gt;A list of &lt;code&gt;RecordColumn&lt;/code&gt; objects.&lt;/p&gt;
-- @param RecordFormat [RecordFormat] &lt;p&gt;Specifies the format of the records on the streaming source.&lt;/p&gt;
-- @param RecordEncoding [RecordEncoding] &lt;p&gt;Specifies the encoding of the records in the streaming source. For example, UTF-8.&lt;/p&gt;
-- Required parameter: RecordFormat
-- Required parameter: RecordColumns
function M.SourceSchema(RecordColumns, RecordFormat, RecordEncoding, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SourceSchema")
	local t = { 
		["RecordColumns"] = RecordColumns,
		["RecordFormat"] = RecordFormat,
		["RecordEncoding"] = RecordEncoding,
	}
	M.AssertSourceSchema(t)
	return t
end

local CloudWatchLoggingOptionDescription_keys = { "CloudWatchLoggingOptionId" = true, "LogStreamARN" = true, "RoleARN" = true, nil }

function M.AssertCloudWatchLoggingOptionDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CloudWatchLoggingOptionDescription to be of type 'table'")
	assert(struct["LogStreamARN"], "Expected key LogStreamARN to exist in table")
	assert(struct["RoleARN"], "Expected key RoleARN to exist in table")
	if struct["CloudWatchLoggingOptionId"] then M.AssertId(struct["CloudWatchLoggingOptionId"]) end
	if struct["LogStreamARN"] then M.AssertLogStreamARN(struct["LogStreamARN"]) end
	if struct["RoleARN"] then M.AssertRoleARN(struct["RoleARN"]) end
	for k,_ in pairs(struct) do
		assert(CloudWatchLoggingOptionDescription_keys[k], "CloudWatchLoggingOptionDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CloudWatchLoggingOptionDescription
-- &lt;p&gt;Description of the CloudWatch logging option.&lt;/p&gt;
-- @param CloudWatchLoggingOptionId [Id] &lt;p&gt;ID of the CloudWatch logging option description.&lt;/p&gt;
-- @param LogStreamARN [LogStreamARN] &lt;p&gt;ARN of the CloudWatch log to receive application messages.&lt;/p&gt;
-- @param RoleARN [RoleARN] &lt;p&gt;IAM ARN of the role to use to send application messages. Note: To write application messages to CloudWatch, the IAM role used must have the &lt;code&gt;PutLogEvents&lt;/code&gt; policy action enabled.&lt;/p&gt;
-- Required parameter: LogStreamARN
-- Required parameter: RoleARN
function M.CloudWatchLoggingOptionDescription(CloudWatchLoggingOptionId, LogStreamARN, RoleARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CloudWatchLoggingOptionDescription")
	local t = { 
		["CloudWatchLoggingOptionId"] = CloudWatchLoggingOptionId,
		["LogStreamARN"] = LogStreamARN,
		["RoleARN"] = RoleARN,
	}
	M.AssertCloudWatchLoggingOptionDescription(t)
	return t
end

local ApplicationSummary_keys = { "ApplicationName" = true, "ApplicationStatus" = true, "ApplicationARN" = true, nil }

function M.AssertApplicationSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ApplicationSummary to be of type 'table'")
	assert(struct["ApplicationName"], "Expected key ApplicationName to exist in table")
	assert(struct["ApplicationARN"], "Expected key ApplicationARN to exist in table")
	assert(struct["ApplicationStatus"], "Expected key ApplicationStatus to exist in table")
	if struct["ApplicationName"] then M.AssertApplicationName(struct["ApplicationName"]) end
	if struct["ApplicationStatus"] then M.AssertApplicationStatus(struct["ApplicationStatus"]) end
	if struct["ApplicationARN"] then M.AssertResourceARN(struct["ApplicationARN"]) end
	for k,_ in pairs(struct) do
		assert(ApplicationSummary_keys[k], "ApplicationSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ApplicationSummary
-- &lt;p&gt;Provides application summary information, including the application Amazon Resource Name (ARN), name, and status.&lt;/p&gt;
-- @param ApplicationName [ApplicationName] &lt;p&gt;Name of the application.&lt;/p&gt;
-- @param ApplicationStatus [ApplicationStatus] &lt;p&gt;Status of the application.&lt;/p&gt;
-- @param ApplicationARN [ResourceARN] &lt;p&gt;ARN of the application.&lt;/p&gt;
-- Required parameter: ApplicationName
-- Required parameter: ApplicationARN
-- Required parameter: ApplicationStatus
function M.ApplicationSummary(ApplicationName, ApplicationStatus, ApplicationARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ApplicationSummary")
	local t = { 
		["ApplicationName"] = ApplicationName,
		["ApplicationStatus"] = ApplicationStatus,
		["ApplicationARN"] = ApplicationARN,
	}
	M.AssertApplicationSummary(t)
	return t
end

local DescribeApplicationResponse_keys = { "ApplicationDetail" = true, nil }

function M.AssertDescribeApplicationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeApplicationResponse to be of type 'table'")
	assert(struct["ApplicationDetail"], "Expected key ApplicationDetail to exist in table")
	if struct["ApplicationDetail"] then M.AssertApplicationDetail(struct["ApplicationDetail"]) end
	for k,_ in pairs(struct) do
		assert(DescribeApplicationResponse_keys[k], "DescribeApplicationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeApplicationResponse
-- &lt;p/&gt;
-- @param ApplicationDetail [ApplicationDetail] &lt;p&gt;Provides a description of the application, such as the application Amazon Resource Name (ARN), status, latest version, and input and output configuration details.&lt;/p&gt;
-- Required parameter: ApplicationDetail
function M.DescribeApplicationResponse(ApplicationDetail, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeApplicationResponse")
	local t = { 
		["ApplicationDetail"] = ApplicationDetail,
	}
	M.AssertDescribeApplicationResponse(t)
	return t
end

local DeleteApplicationCloudWatchLoggingOptionRequest_keys = { "ApplicationName" = true, "CloudWatchLoggingOptionId" = true, "CurrentApplicationVersionId" = true, nil }

function M.AssertDeleteApplicationCloudWatchLoggingOptionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteApplicationCloudWatchLoggingOptionRequest to be of type 'table'")
	assert(struct["ApplicationName"], "Expected key ApplicationName to exist in table")
	assert(struct["CurrentApplicationVersionId"], "Expected key CurrentApplicationVersionId to exist in table")
	assert(struct["CloudWatchLoggingOptionId"], "Expected key CloudWatchLoggingOptionId to exist in table")
	if struct["ApplicationName"] then M.AssertApplicationName(struct["ApplicationName"]) end
	if struct["CloudWatchLoggingOptionId"] then M.AssertId(struct["CloudWatchLoggingOptionId"]) end
	if struct["CurrentApplicationVersionId"] then M.AssertApplicationVersionId(struct["CurrentApplicationVersionId"]) end
	for k,_ in pairs(struct) do
		assert(DeleteApplicationCloudWatchLoggingOptionRequest_keys[k], "DeleteApplicationCloudWatchLoggingOptionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteApplicationCloudWatchLoggingOptionRequest
--  
-- @param ApplicationName [ApplicationName] &lt;p&gt;The Amazon Kinesis Analytics application name.&lt;/p&gt;
-- @param CloudWatchLoggingOptionId [Id] &lt;p&gt;The &lt;code&gt;CloudWatchLoggingOptionId&lt;/code&gt; of the CloudWatch logging option to delete. You can use the &lt;a&gt;DescribeApplication&lt;/a&gt; operation to get the &lt;code&gt;CloudWatchLoggingOptionId&lt;/code&gt;. &lt;/p&gt;
-- @param CurrentApplicationVersionId [ApplicationVersionId] &lt;p&gt;The version ID of the Amazon Kinesis Analytics application.&lt;/p&gt;
-- Required parameter: ApplicationName
-- Required parameter: CurrentApplicationVersionId
-- Required parameter: CloudWatchLoggingOptionId
function M.DeleteApplicationCloudWatchLoggingOptionRequest(ApplicationName, CloudWatchLoggingOptionId, CurrentApplicationVersionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteApplicationCloudWatchLoggingOptionRequest")
	local t = { 
		["ApplicationName"] = ApplicationName,
		["CloudWatchLoggingOptionId"] = CloudWatchLoggingOptionId,
		["CurrentApplicationVersionId"] = CurrentApplicationVersionId,
	}
	M.AssertDeleteApplicationCloudWatchLoggingOptionRequest(t)
	return t
end

local S3ReferenceDataSource_keys = { "FileKey" = true, "ReferenceRoleARN" = true, "BucketARN" = true, nil }

function M.AssertS3ReferenceDataSource(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected S3ReferenceDataSource to be of type 'table'")
	assert(struct["BucketARN"], "Expected key BucketARN to exist in table")
	assert(struct["FileKey"], "Expected key FileKey to exist in table")
	assert(struct["ReferenceRoleARN"], "Expected key ReferenceRoleARN to exist in table")
	if struct["FileKey"] then M.AssertFileKey(struct["FileKey"]) end
	if struct["ReferenceRoleARN"] then M.AssertRoleARN(struct["ReferenceRoleARN"]) end
	if struct["BucketARN"] then M.AssertBucketARN(struct["BucketARN"]) end
	for k,_ in pairs(struct) do
		assert(S3ReferenceDataSource_keys[k], "S3ReferenceDataSource contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type S3ReferenceDataSource
-- &lt;p&gt;Identifies the S3 bucket and object that contains the reference data. Also identifies the IAM role Amazon Kinesis Analytics can assume to read this object on your behalf.&lt;/p&gt; &lt;p&gt;An Amazon Kinesis Analytics application loads reference data only once. If the data changes, you call the &lt;a&gt;UpdateApplication&lt;/a&gt; operation to trigger reloading of data into your application.&lt;/p&gt;
-- @param FileKey [FileKey] &lt;p&gt;Object key name containing reference data.&lt;/p&gt;
-- @param ReferenceRoleARN [RoleARN] &lt;p&gt;ARN of the IAM role that the service can assume to read data on your behalf. This role must have permission for the &lt;code&gt;s3:GetObject&lt;/code&gt; action on the object and trust policy that allows Amazon Kinesis Analytics service principal to assume this role.&lt;/p&gt;
-- @param BucketARN [BucketARN] &lt;p&gt;Amazon Resource Name (ARN) of the S3 bucket.&lt;/p&gt;
-- Required parameter: BucketARN
-- Required parameter: FileKey
-- Required parameter: ReferenceRoleARN
function M.S3ReferenceDataSource(FileKey, ReferenceRoleARN, BucketARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating S3ReferenceDataSource")
	local t = { 
		["FileKey"] = FileKey,
		["ReferenceRoleARN"] = ReferenceRoleARN,
		["BucketARN"] = BucketARN,
	}
	M.AssertS3ReferenceDataSource(t)
	return t
end

local AddApplicationInputRequest_keys = { "ApplicationName" = true, "Input" = true, "CurrentApplicationVersionId" = true, nil }

function M.AssertAddApplicationInputRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddApplicationInputRequest to be of type 'table'")
	assert(struct["ApplicationName"], "Expected key ApplicationName to exist in table")
	assert(struct["CurrentApplicationVersionId"], "Expected key CurrentApplicationVersionId to exist in table")
	assert(struct["Input"], "Expected key Input to exist in table")
	if struct["ApplicationName"] then M.AssertApplicationName(struct["ApplicationName"]) end
	if struct["Input"] then M.AssertInput(struct["Input"]) end
	if struct["CurrentApplicationVersionId"] then M.AssertApplicationVersionId(struct["CurrentApplicationVersionId"]) end
	for k,_ in pairs(struct) do
		assert(AddApplicationInputRequest_keys[k], "AddApplicationInputRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddApplicationInputRequest
-- &lt;p/&gt;
-- @param ApplicationName [ApplicationName] &lt;p&gt;Name of your existing Amazon Kinesis Analytics application to which you want to add the streaming source.&lt;/p&gt;
-- @param Input [Input] &lt;p/&gt;
-- @param CurrentApplicationVersionId [ApplicationVersionId] &lt;p&gt;Current version of your Amazon Kinesis Analytics application. You can use the &lt;a&gt;DescribeApplication&lt;/a&gt; operation to find the current application version.&lt;/p&gt;
-- Required parameter: ApplicationName
-- Required parameter: CurrentApplicationVersionId
-- Required parameter: Input
function M.AddApplicationInputRequest(ApplicationName, Input, CurrentApplicationVersionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddApplicationInputRequest")
	local t = { 
		["ApplicationName"] = ApplicationName,
		["Input"] = Input,
		["CurrentApplicationVersionId"] = CurrentApplicationVersionId,
	}
	M.AssertAddApplicationInputRequest(t)
	return t
end

local AddApplicationOutputRequest_keys = { "ApplicationName" = true, "Output" = true, "CurrentApplicationVersionId" = true, nil }

function M.AssertAddApplicationOutputRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddApplicationOutputRequest to be of type 'table'")
	assert(struct["ApplicationName"], "Expected key ApplicationName to exist in table")
	assert(struct["CurrentApplicationVersionId"], "Expected key CurrentApplicationVersionId to exist in table")
	assert(struct["Output"], "Expected key Output to exist in table")
	if struct["ApplicationName"] then M.AssertApplicationName(struct["ApplicationName"]) end
	if struct["Output"] then M.AssertOutput(struct["Output"]) end
	if struct["CurrentApplicationVersionId"] then M.AssertApplicationVersionId(struct["CurrentApplicationVersionId"]) end
	for k,_ in pairs(struct) do
		assert(AddApplicationOutputRequest_keys[k], "AddApplicationOutputRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddApplicationOutputRequest
-- &lt;p/&gt;
-- @param ApplicationName [ApplicationName] &lt;p&gt;Name of the application to which you want to add the output configuration.&lt;/p&gt;
-- @param Output [Output] &lt;p&gt;An array of objects, each describing one output configuration. In the output configuration, you specify the name of an in-application stream, a destination (that is, an Amazon Kinesis stream or an Amazon Kinesis Firehose delivery stream), and record the formation to use when writing to the destination.&lt;/p&gt;
-- @param CurrentApplicationVersionId [ApplicationVersionId] &lt;p&gt;Version of the application to which you want add the output configuration. You can use the &lt;a&gt;DescribeApplication&lt;/a&gt; operation to get the current application version. If the version specified is not the current version, the &lt;code&gt;ConcurrentModificationException&lt;/code&gt; is returned. &lt;/p&gt;
-- Required parameter: ApplicationName
-- Required parameter: CurrentApplicationVersionId
-- Required parameter: Output
function M.AddApplicationOutputRequest(ApplicationName, Output, CurrentApplicationVersionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddApplicationOutputRequest")
	local t = { 
		["ApplicationName"] = ApplicationName,
		["Output"] = Output,
		["CurrentApplicationVersionId"] = CurrentApplicationVersionId,
	}
	M.AssertAddApplicationOutputRequest(t)
	return t
end

local UnableToDetectSchemaException_keys = { "message" = true, "RawInputRecords" = true, nil }

function M.AssertUnableToDetectSchemaException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnableToDetectSchemaException to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	if struct["RawInputRecords"] then M.AssertRawInputRecords(struct["RawInputRecords"]) end
	for k,_ in pairs(struct) do
		assert(UnableToDetectSchemaException_keys[k], "UnableToDetectSchemaException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnableToDetectSchemaException
-- &lt;p&gt;Data format is not valid, Amazon Kinesis Analytics is not able to detect schema for the given streaming source.&lt;/p&gt;
-- @param message [ErrorMessage] &lt;p&gt;Data format is not valid, Amazon Kinesis Analytics is not able to detect schema for the given streaming source.&lt;/p&gt;
-- @param RawInputRecords [RawInputRecords] &lt;p&gt;Data format is not valid, Amazon Kinesis Analytics is not able to detect schema for the given streaming source.&lt;/p&gt;
function M.UnableToDetectSchemaException(message, RawInputRecords, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UnableToDetectSchemaException")
	local t = { 
		["message"] = message,
		["RawInputRecords"] = RawInputRecords,
	}
	M.AssertUnableToDetectSchemaException(t)
	return t
end

local KinesisStreamsOutputUpdate_keys = { "RoleARNUpdate" = true, "ResourceARNUpdate" = true, nil }

function M.AssertKinesisStreamsOutputUpdate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected KinesisStreamsOutputUpdate to be of type 'table'")
	if struct["RoleARNUpdate"] then M.AssertRoleARN(struct["RoleARNUpdate"]) end
	if struct["ResourceARNUpdate"] then M.AssertResourceARN(struct["ResourceARNUpdate"]) end
	for k,_ in pairs(struct) do
		assert(KinesisStreamsOutputUpdate_keys[k], "KinesisStreamsOutputUpdate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type KinesisStreamsOutputUpdate
-- &lt;p&gt; When updating an output configuration using the &lt;a&gt;UpdateApplication&lt;/a&gt; operation, provides information about an Amazon Kinesis stream configured as the destination. &lt;/p&gt;
-- @param RoleARNUpdate [RoleARN] &lt;p&gt;ARN of the IAM role that Amazon Kinesis Analytics can assume to access the stream on your behalf. You need to grant the necessary permissions to this role.&lt;/p&gt;
-- @param ResourceARNUpdate [ResourceARN] &lt;p&gt;Amazon Resource Name (ARN) of the Amazon Kinesis stream where you want to write the output.&lt;/p&gt;
function M.KinesisStreamsOutputUpdate(RoleARNUpdate, ResourceARNUpdate, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating KinesisStreamsOutputUpdate")
	local t = { 
		["RoleARNUpdate"] = RoleARNUpdate,
		["ResourceARNUpdate"] = ResourceARNUpdate,
	}
	M.AssertKinesisStreamsOutputUpdate(t)
	return t
end

local AddApplicationCloudWatchLoggingOptionResponse_keys = { nil }

function M.AssertAddApplicationCloudWatchLoggingOptionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddApplicationCloudWatchLoggingOptionResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(AddApplicationCloudWatchLoggingOptionResponse_keys[k], "AddApplicationCloudWatchLoggingOptionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddApplicationCloudWatchLoggingOptionResponse
--  
function M.AddApplicationCloudWatchLoggingOptionResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddApplicationCloudWatchLoggingOptionResponse")
	local t = { 
	}
	M.AssertAddApplicationCloudWatchLoggingOptionResponse(t)
	return t
end

local KinesisFirehoseOutputUpdate_keys = { "RoleARNUpdate" = true, "ResourceARNUpdate" = true, nil }

function M.AssertKinesisFirehoseOutputUpdate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected KinesisFirehoseOutputUpdate to be of type 'table'")
	if struct["RoleARNUpdate"] then M.AssertRoleARN(struct["RoleARNUpdate"]) end
	if struct["ResourceARNUpdate"] then M.AssertResourceARN(struct["ResourceARNUpdate"]) end
	for k,_ in pairs(struct) do
		assert(KinesisFirehoseOutputUpdate_keys[k], "KinesisFirehoseOutputUpdate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type KinesisFirehoseOutputUpdate
-- &lt;p&gt; When updating an output configuration using the &lt;a&gt;UpdateApplication&lt;/a&gt; operation, provides information about an Amazon Kinesis Firehose delivery stream configured as the destination. &lt;/p&gt;
-- @param RoleARNUpdate [RoleARN] &lt;p&gt;ARN of the IAM role that Amazon Kinesis Analytics can assume to access the stream on your behalf. You need to grant necessary permissions to this role.&lt;/p&gt;
-- @param ResourceARNUpdate [ResourceARN] &lt;p&gt;Amazon Resource Name (ARN) of the Amazon Kinesis Firehose delivery stream to write to.&lt;/p&gt;
function M.KinesisFirehoseOutputUpdate(RoleARNUpdate, ResourceARNUpdate, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating KinesisFirehoseOutputUpdate")
	local t = { 
		["RoleARNUpdate"] = RoleARNUpdate,
		["ResourceARNUpdate"] = ResourceARNUpdate,
	}
	M.AssertKinesisFirehoseOutputUpdate(t)
	return t
end

local StopApplicationResponse_keys = { nil }

function M.AssertStopApplicationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopApplicationResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(StopApplicationResponse_keys[k], "StopApplicationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopApplicationResponse
-- &lt;p/&gt;
function M.StopApplicationResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating StopApplicationResponse")
	local t = { 
	}
	M.AssertStopApplicationResponse(t)
	return t
end

local DeleteApplicationRequest_keys = { "ApplicationName" = true, "CreateTimestamp" = true, nil }

function M.AssertDeleteApplicationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteApplicationRequest to be of type 'table'")
	assert(struct["ApplicationName"], "Expected key ApplicationName to exist in table")
	assert(struct["CreateTimestamp"], "Expected key CreateTimestamp to exist in table")
	if struct["ApplicationName"] then M.AssertApplicationName(struct["ApplicationName"]) end
	if struct["CreateTimestamp"] then M.AssertTimestamp(struct["CreateTimestamp"]) end
	for k,_ in pairs(struct) do
		assert(DeleteApplicationRequest_keys[k], "DeleteApplicationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteApplicationRequest
-- &lt;p/&gt;
-- @param ApplicationName [ApplicationName] &lt;p&gt;Name of the Amazon Kinesis Analytics application to delete.&lt;/p&gt;
-- @param CreateTimestamp [Timestamp] &lt;p&gt; You can use the &lt;code&gt;DescribeApplication&lt;/code&gt; operation to get this value. &lt;/p&gt;
-- Required parameter: ApplicationName
-- Required parameter: CreateTimestamp
function M.DeleteApplicationRequest(ApplicationName, CreateTimestamp, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteApplicationRequest")
	local t = { 
		["ApplicationName"] = ApplicationName,
		["CreateTimestamp"] = CreateTimestamp,
	}
	M.AssertDeleteApplicationRequest(t)
	return t
end

local StopApplicationRequest_keys = { "ApplicationName" = true, nil }

function M.AssertStopApplicationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopApplicationRequest to be of type 'table'")
	assert(struct["ApplicationName"], "Expected key ApplicationName to exist in table")
	if struct["ApplicationName"] then M.AssertApplicationName(struct["ApplicationName"]) end
	for k,_ in pairs(struct) do
		assert(StopApplicationRequest_keys[k], "StopApplicationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopApplicationRequest
-- &lt;p/&gt;
-- @param ApplicationName [ApplicationName] &lt;p&gt;Name of the running application to stop.&lt;/p&gt;
-- Required parameter: ApplicationName
function M.StopApplicationRequest(ApplicationName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StopApplicationRequest")
	local t = { 
		["ApplicationName"] = ApplicationName,
	}
	M.AssertStopApplicationRequest(t)
	return t
end

local Input_keys = { "InputParallelism" = true, "KinesisFirehoseInput" = true, "KinesisStreamsInput" = true, "InputSchema" = true, "NamePrefix" = true, nil }

function M.AssertInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Input to be of type 'table'")
	assert(struct["NamePrefix"], "Expected key NamePrefix to exist in table")
	assert(struct["InputSchema"], "Expected key InputSchema to exist in table")
	if struct["InputParallelism"] then M.AssertInputParallelism(struct["InputParallelism"]) end
	if struct["KinesisFirehoseInput"] then M.AssertKinesisFirehoseInput(struct["KinesisFirehoseInput"]) end
	if struct["KinesisStreamsInput"] then M.AssertKinesisStreamsInput(struct["KinesisStreamsInput"]) end
	if struct["InputSchema"] then M.AssertSourceSchema(struct["InputSchema"]) end
	if struct["NamePrefix"] then M.AssertInAppStreamName(struct["NamePrefix"]) end
	for k,_ in pairs(struct) do
		assert(Input_keys[k], "Input contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Input
-- &lt;p&gt;When you configure the application input, you specify the streaming source, the in-application stream name that is created, and the mapping between the two. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-input.html&quot;&gt;Configuring Application Input&lt;/a&gt;. &lt;/p&gt;
-- @param InputParallelism [InputParallelism] &lt;p&gt;Describes the number of in-application streams to create. &lt;/p&gt; &lt;p&gt;Data from your source will be routed to these in-application input streams.&lt;/p&gt; &lt;p&gt; (see &lt;a href=&quot;http://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-input.html&quot;&gt;Configuring Application Input&lt;/a&gt;.&lt;/p&gt;
-- @param KinesisFirehoseInput [KinesisFirehoseInput] &lt;p&gt;If the streaming source is an Amazon Kinesis Firehose delivery stream, identifies the Firehose delivery stream's ARN and an IAM role that enables Amazon Kinesis Analytics to access the stream on your behalf.&lt;/p&gt;
-- @param KinesisStreamsInput [KinesisStreamsInput] &lt;p&gt;If the streaming source is an Amazon Kinesis stream, identifies the stream's Amazon Resource Name (ARN) and an IAM role that enables Amazon Kinesis Analytics to access the stream on your behalf.&lt;/p&gt;
-- @param InputSchema [SourceSchema] &lt;p&gt;Describes the format of the data in the streaming source, and how each data element maps to corresponding columns in the in-application stream that is being created.&lt;/p&gt; &lt;p&gt;Also used to describe the format of the reference data source.&lt;/p&gt;
-- @param NamePrefix [InAppStreamName] &lt;p&gt;Name prefix to use when creating in-application stream. Suppose you specify a prefix &quot;MyInApplicationStream&quot;. Amazon Kinesis Analytics will then create one or more (as per the &lt;code&gt;InputParallelism&lt;/code&gt; count you specified) in-application streams with names &quot;MyInApplicationStream_001&quot;, &quot;MyInApplicationStream_002&quot; and so on. &lt;/p&gt;
-- Required parameter: NamePrefix
-- Required parameter: InputSchema
function M.Input(InputParallelism, KinesisFirehoseInput, KinesisStreamsInput, InputSchema, NamePrefix, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Input")
	local t = { 
		["InputParallelism"] = InputParallelism,
		["KinesisFirehoseInput"] = KinesisFirehoseInput,
		["KinesisStreamsInput"] = KinesisStreamsInput,
		["InputSchema"] = InputSchema,
		["NamePrefix"] = NamePrefix,
	}
	M.AssertInput(t)
	return t
end

local AddApplicationCloudWatchLoggingOptionRequest_keys = { "ApplicationName" = true, "CloudWatchLoggingOption" = true, "CurrentApplicationVersionId" = true, nil }

function M.AssertAddApplicationCloudWatchLoggingOptionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddApplicationCloudWatchLoggingOptionRequest to be of type 'table'")
	assert(struct["ApplicationName"], "Expected key ApplicationName to exist in table")
	assert(struct["CurrentApplicationVersionId"], "Expected key CurrentApplicationVersionId to exist in table")
	assert(struct["CloudWatchLoggingOption"], "Expected key CloudWatchLoggingOption to exist in table")
	if struct["ApplicationName"] then M.AssertApplicationName(struct["ApplicationName"]) end
	if struct["CloudWatchLoggingOption"] then M.AssertCloudWatchLoggingOption(struct["CloudWatchLoggingOption"]) end
	if struct["CurrentApplicationVersionId"] then M.AssertApplicationVersionId(struct["CurrentApplicationVersionId"]) end
	for k,_ in pairs(struct) do
		assert(AddApplicationCloudWatchLoggingOptionRequest_keys[k], "AddApplicationCloudWatchLoggingOptionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddApplicationCloudWatchLoggingOptionRequest
--  
-- @param ApplicationName [ApplicationName] &lt;p&gt;The Amazon Kinesis Analytics application name.&lt;/p&gt;
-- @param CloudWatchLoggingOption [CloudWatchLoggingOption] &lt;p&gt;Provide the CloudWatch log stream ARN and the IAM role ARN. Note: To write application messages to CloudWatch, the IAM role used must have the &lt;code&gt;PutLogEvents&lt;/code&gt; policy action enabled. &lt;/p&gt;
-- @param CurrentApplicationVersionId [ApplicationVersionId] &lt;p&gt;The version ID of the Amazon Kinesis Analytics application.&lt;/p&gt;
-- Required parameter: ApplicationName
-- Required parameter: CurrentApplicationVersionId
-- Required parameter: CloudWatchLoggingOption
function M.AddApplicationCloudWatchLoggingOptionRequest(ApplicationName, CloudWatchLoggingOption, CurrentApplicationVersionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddApplicationCloudWatchLoggingOptionRequest")
	local t = { 
		["ApplicationName"] = ApplicationName,
		["CloudWatchLoggingOption"] = CloudWatchLoggingOption,
		["CurrentApplicationVersionId"] = CurrentApplicationVersionId,
	}
	M.AssertAddApplicationCloudWatchLoggingOptionRequest(t)
	return t
end

local ReferenceDataSourceUpdate_keys = { "ReferenceSchemaUpdate" = true, "ReferenceId" = true, "TableNameUpdate" = true, "S3ReferenceDataSourceUpdate" = true, nil }

function M.AssertReferenceDataSourceUpdate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReferenceDataSourceUpdate to be of type 'table'")
	assert(struct["ReferenceId"], "Expected key ReferenceId to exist in table")
	if struct["ReferenceSchemaUpdate"] then M.AssertSourceSchema(struct["ReferenceSchemaUpdate"]) end
	if struct["ReferenceId"] then M.AssertId(struct["ReferenceId"]) end
	if struct["TableNameUpdate"] then M.AssertInAppTableName(struct["TableNameUpdate"]) end
	if struct["S3ReferenceDataSourceUpdate"] then M.AssertS3ReferenceDataSourceUpdate(struct["S3ReferenceDataSourceUpdate"]) end
	for k,_ in pairs(struct) do
		assert(ReferenceDataSourceUpdate_keys[k], "ReferenceDataSourceUpdate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReferenceDataSourceUpdate
-- &lt;p&gt;When you update a reference data source configuration for an application, this object provides all the updated values (such as the source bucket name and object key name), the in-application table name that is created, and updated mapping information that maps the data in the Amazon S3 object to the in-application reference table that is created.&lt;/p&gt;
-- @param ReferenceSchemaUpdate [SourceSchema] &lt;p&gt;When you update a reference data source configuration for an application, this object provides all the updated values (such as the source bucket name and object key name), the in-application table name that is created, and updated mapping information that maps the data in the Amazon S3 object to the in-application reference table that is created.&lt;/p&gt;
-- @param ReferenceId [Id] &lt;p&gt;ID of the reference data source being updated. You can use the &lt;a&gt;DescribeApplication&lt;/a&gt; operation to get this value.&lt;/p&gt;
-- @param TableNameUpdate [InAppTableName] &lt;p&gt;In-application table name that is created by this update.&lt;/p&gt;
-- @param S3ReferenceDataSourceUpdate [S3ReferenceDataSourceUpdate] &lt;p&gt;Describes the S3 bucket name, object key name, and IAM role that Amazon Kinesis Analytics can assume to read the Amazon S3 object on your behalf and populate the in-application reference table.&lt;/p&gt;
-- Required parameter: ReferenceId
function M.ReferenceDataSourceUpdate(ReferenceSchemaUpdate, ReferenceId, TableNameUpdate, S3ReferenceDataSourceUpdate, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReferenceDataSourceUpdate")
	local t = { 
		["ReferenceSchemaUpdate"] = ReferenceSchemaUpdate,
		["ReferenceId"] = ReferenceId,
		["TableNameUpdate"] = TableNameUpdate,
		["S3ReferenceDataSourceUpdate"] = S3ReferenceDataSourceUpdate,
	}
	M.AssertReferenceDataSourceUpdate(t)
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
-- &lt;p&gt;Application is not available for this operation.&lt;/p&gt;
-- @param message [ErrorMessage] &lt;p/&gt;
function M.ResourceInUseException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceInUseException")
	local t = { 
		["message"] = message,
	}
	M.AssertResourceInUseException(t)
	return t
end

local DeleteApplicationOutputResponse_keys = { nil }

function M.AssertDeleteApplicationOutputResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteApplicationOutputResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DeleteApplicationOutputResponse_keys[k], "DeleteApplicationOutputResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteApplicationOutputResponse
-- &lt;p/&gt;
function M.DeleteApplicationOutputResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteApplicationOutputResponse")
	local t = { 
	}
	M.AssertDeleteApplicationOutputResponse(t)
	return t
end

local S3ReferenceDataSourceUpdate_keys = { "FileKeyUpdate" = true, "ReferenceRoleARNUpdate" = true, "BucketARNUpdate" = true, nil }

function M.AssertS3ReferenceDataSourceUpdate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected S3ReferenceDataSourceUpdate to be of type 'table'")
	if struct["FileKeyUpdate"] then M.AssertFileKey(struct["FileKeyUpdate"]) end
	if struct["ReferenceRoleARNUpdate"] then M.AssertRoleARN(struct["ReferenceRoleARNUpdate"]) end
	if struct["BucketARNUpdate"] then M.AssertBucketARN(struct["BucketARNUpdate"]) end
	for k,_ in pairs(struct) do
		assert(S3ReferenceDataSourceUpdate_keys[k], "S3ReferenceDataSourceUpdate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type S3ReferenceDataSourceUpdate
-- &lt;p&gt;Describes the S3 bucket name, object key name, and IAM role that Amazon Kinesis Analytics can assume to read the Amazon S3 object on your behalf and populate the in-application reference table.&lt;/p&gt;
-- @param FileKeyUpdate [FileKey] &lt;p&gt;Object key name.&lt;/p&gt;
-- @param ReferenceRoleARNUpdate [RoleARN] &lt;p&gt;ARN of the IAM role that Amazon Kinesis Analytics can assume to read the Amazon S3 object and populate the in-application.&lt;/p&gt;
-- @param BucketARNUpdate [BucketARN] &lt;p&gt;Amazon Resource Name (ARN) of the S3 bucket.&lt;/p&gt;
function M.S3ReferenceDataSourceUpdate(FileKeyUpdate, ReferenceRoleARNUpdate, BucketARNUpdate, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating S3ReferenceDataSourceUpdate")
	local t = { 
		["FileKeyUpdate"] = FileKeyUpdate,
		["ReferenceRoleARNUpdate"] = ReferenceRoleARNUpdate,
		["BucketARNUpdate"] = BucketARNUpdate,
	}
	M.AssertS3ReferenceDataSourceUpdate(t)
	return t
end

local UpdateApplicationResponse_keys = { nil }

function M.AssertUpdateApplicationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateApplicationResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(UpdateApplicationResponse_keys[k], "UpdateApplicationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateApplicationResponse
--  
function M.UpdateApplicationResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateApplicationResponse")
	local t = { 
	}
	M.AssertUpdateApplicationResponse(t)
	return t
end

local KinesisStreamsOutputDescription_keys = { "ResourceARN" = true, "RoleARN" = true, nil }

function M.AssertKinesisStreamsOutputDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected KinesisStreamsOutputDescription to be of type 'table'")
	if struct["ResourceARN"] then M.AssertResourceARN(struct["ResourceARN"]) end
	if struct["RoleARN"] then M.AssertRoleARN(struct["RoleARN"]) end
	for k,_ in pairs(struct) do
		assert(KinesisStreamsOutputDescription_keys[k], "KinesisStreamsOutputDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type KinesisStreamsOutputDescription
-- &lt;p&gt; For an application output, describes the Amazon Kinesis stream configured as its destination. &lt;/p&gt;
-- @param ResourceARN [ResourceARN] &lt;p&gt;Amazon Resource Name (ARN) of the Amazon Kinesis stream.&lt;/p&gt;
-- @param RoleARN [RoleARN] &lt;p&gt;ARN of the IAM role that Amazon Kinesis Analytics can assume to access the stream.&lt;/p&gt;
function M.KinesisStreamsOutputDescription(ResourceARN, RoleARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating KinesisStreamsOutputDescription")
	local t = { 
		["ResourceARN"] = ResourceARN,
		["RoleARN"] = RoleARN,
	}
	M.AssertKinesisStreamsOutputDescription(t)
	return t
end

local CloudWatchLoggingOptionUpdate_keys = { "CloudWatchLoggingOptionId" = true, "LogStreamARNUpdate" = true, "RoleARNUpdate" = true, nil }

function M.AssertCloudWatchLoggingOptionUpdate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CloudWatchLoggingOptionUpdate to be of type 'table'")
	assert(struct["CloudWatchLoggingOptionId"], "Expected key CloudWatchLoggingOptionId to exist in table")
	if struct["CloudWatchLoggingOptionId"] then M.AssertId(struct["CloudWatchLoggingOptionId"]) end
	if struct["LogStreamARNUpdate"] then M.AssertLogStreamARN(struct["LogStreamARNUpdate"]) end
	if struct["RoleARNUpdate"] then M.AssertRoleARN(struct["RoleARNUpdate"]) end
	for k,_ in pairs(struct) do
		assert(CloudWatchLoggingOptionUpdate_keys[k], "CloudWatchLoggingOptionUpdate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CloudWatchLoggingOptionUpdate
-- &lt;p&gt;Describes CloudWatch logging option updates.&lt;/p&gt;
-- @param CloudWatchLoggingOptionId [Id] &lt;p&gt;ID of the CloudWatch logging option to update&lt;/p&gt;
-- @param LogStreamARNUpdate [LogStreamARN] &lt;p&gt;ARN of the CloudWatch log to receive application messages.&lt;/p&gt;
-- @param RoleARNUpdate [RoleARN] &lt;p&gt;IAM ARN of the role to use to send application messages. Note: To write application messages to CloudWatch, the IAM role used must have the &lt;code&gt;PutLogEvents&lt;/code&gt; policy action enabled.&lt;/p&gt;
-- Required parameter: CloudWatchLoggingOptionId
function M.CloudWatchLoggingOptionUpdate(CloudWatchLoggingOptionId, LogStreamARNUpdate, RoleARNUpdate, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CloudWatchLoggingOptionUpdate")
	local t = { 
		["CloudWatchLoggingOptionId"] = CloudWatchLoggingOptionId,
		["LogStreamARNUpdate"] = LogStreamARNUpdate,
		["RoleARNUpdate"] = RoleARNUpdate,
	}
	M.AssertCloudWatchLoggingOptionUpdate(t)
	return t
end

local InputUpdate_keys = { "KinesisFirehoseInputUpdate" = true, "InputSchemaUpdate" = true, "NamePrefixUpdate" = true, "InputId" = true, "InputParallelismUpdate" = true, "KinesisStreamsInputUpdate" = true, nil }

function M.AssertInputUpdate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InputUpdate to be of type 'table'")
	assert(struct["InputId"], "Expected key InputId to exist in table")
	if struct["KinesisFirehoseInputUpdate"] then M.AssertKinesisFirehoseInputUpdate(struct["KinesisFirehoseInputUpdate"]) end
	if struct["InputSchemaUpdate"] then M.AssertInputSchemaUpdate(struct["InputSchemaUpdate"]) end
	if struct["NamePrefixUpdate"] then M.AssertInAppStreamName(struct["NamePrefixUpdate"]) end
	if struct["InputId"] then M.AssertId(struct["InputId"]) end
	if struct["InputParallelismUpdate"] then M.AssertInputParallelismUpdate(struct["InputParallelismUpdate"]) end
	if struct["KinesisStreamsInputUpdate"] then M.AssertKinesisStreamsInputUpdate(struct["KinesisStreamsInputUpdate"]) end
	for k,_ in pairs(struct) do
		assert(InputUpdate_keys[k], "InputUpdate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InputUpdate
-- &lt;p&gt;Describes updates to a specific input configuration (identified by the &lt;code&gt;InputId&lt;/code&gt; of an application). &lt;/p&gt;
-- @param KinesisFirehoseInputUpdate [KinesisFirehoseInputUpdate] &lt;p&gt;If an Amazon Kinesis Firehose delivery stream is the streaming source to be updated, provides an updated stream Amazon Resource Name (ARN) and IAM role ARN.&lt;/p&gt;
-- @param InputSchemaUpdate [InputSchemaUpdate] &lt;p&gt;Describes the data format on the streaming source, and how record elements on the streaming source map to columns of the in-application stream that is created.&lt;/p&gt;
-- @param NamePrefixUpdate [InAppStreamName] &lt;p&gt;Name prefix for in-application streams that Amazon Kinesis Analytics creates for the specific streaming source.&lt;/p&gt;
-- @param InputId [Id] &lt;p&gt;Input ID of the application input to be updated.&lt;/p&gt;
-- @param InputParallelismUpdate [InputParallelismUpdate] &lt;p&gt;Describes the parallelism updates (the number in-application streams Amazon Kinesis Analytics creates for the specific streaming source).&lt;/p&gt;
-- @param KinesisStreamsInputUpdate [KinesisStreamsInputUpdate] &lt;p&gt;If a Amazon Kinesis stream is the streaming source to be updated, provides an updated stream ARN and IAM role ARN.&lt;/p&gt;
-- Required parameter: InputId
function M.InputUpdate(KinesisFirehoseInputUpdate, InputSchemaUpdate, NamePrefixUpdate, InputId, InputParallelismUpdate, KinesisStreamsInputUpdate, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InputUpdate")
	local t = { 
		["KinesisFirehoseInputUpdate"] = KinesisFirehoseInputUpdate,
		["InputSchemaUpdate"] = InputSchemaUpdate,
		["NamePrefixUpdate"] = NamePrefixUpdate,
		["InputId"] = InputId,
		["InputParallelismUpdate"] = InputParallelismUpdate,
		["KinesisStreamsInputUpdate"] = KinesisStreamsInputUpdate,
	}
	M.AssertInputUpdate(t)
	return t
end

local ApplicationDetail_keys = { "ApplicationName" = true, "OutputDescriptions" = true, "ApplicationDescription" = true, "LastUpdateTimestamp" = true, "ApplicationVersionId" = true, "ApplicationStatus" = true, "CreateTimestamp" = true, "ReferenceDataSourceDescriptions" = true, "CloudWatchLoggingOptionDescriptions" = true, "InputDescriptions" = true, "ApplicationARN" = true, "ApplicationCode" = true, nil }

function M.AssertApplicationDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ApplicationDetail to be of type 'table'")
	assert(struct["ApplicationName"], "Expected key ApplicationName to exist in table")
	assert(struct["ApplicationARN"], "Expected key ApplicationARN to exist in table")
	assert(struct["ApplicationStatus"], "Expected key ApplicationStatus to exist in table")
	assert(struct["ApplicationVersionId"], "Expected key ApplicationVersionId to exist in table")
	if struct["ApplicationName"] then M.AssertApplicationName(struct["ApplicationName"]) end
	if struct["OutputDescriptions"] then M.AssertOutputDescriptions(struct["OutputDescriptions"]) end
	if struct["ApplicationDescription"] then M.AssertApplicationDescription(struct["ApplicationDescription"]) end
	if struct["LastUpdateTimestamp"] then M.AssertTimestamp(struct["LastUpdateTimestamp"]) end
	if struct["ApplicationVersionId"] then M.AssertApplicationVersionId(struct["ApplicationVersionId"]) end
	if struct["ApplicationStatus"] then M.AssertApplicationStatus(struct["ApplicationStatus"]) end
	if struct["CreateTimestamp"] then M.AssertTimestamp(struct["CreateTimestamp"]) end
	if struct["ReferenceDataSourceDescriptions"] then M.AssertReferenceDataSourceDescriptions(struct["ReferenceDataSourceDescriptions"]) end
	if struct["CloudWatchLoggingOptionDescriptions"] then M.AssertCloudWatchLoggingOptionDescriptions(struct["CloudWatchLoggingOptionDescriptions"]) end
	if struct["InputDescriptions"] then M.AssertInputDescriptions(struct["InputDescriptions"]) end
	if struct["ApplicationARN"] then M.AssertResourceARN(struct["ApplicationARN"]) end
	if struct["ApplicationCode"] then M.AssertApplicationCode(struct["ApplicationCode"]) end
	for k,_ in pairs(struct) do
		assert(ApplicationDetail_keys[k], "ApplicationDetail contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ApplicationDetail
-- &lt;p&gt;Provides a description of the application, including the application Amazon Resource Name (ARN), status, latest version, and input and output configuration.&lt;/p&gt;
-- @param ApplicationName [ApplicationName] &lt;p&gt;Name of the application.&lt;/p&gt;
-- @param OutputDescriptions [OutputDescriptions] &lt;p&gt;Describes the application output configuration. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-output.html&quot;&gt;Configuring Application Output&lt;/a&gt;. &lt;/p&gt;
-- @param ApplicationDescription [ApplicationDescription] &lt;p&gt;Description of the application.&lt;/p&gt;
-- @param LastUpdateTimestamp [Timestamp] &lt;p&gt;Timestamp when the application was last updated.&lt;/p&gt;
-- @param ApplicationVersionId [ApplicationVersionId] &lt;p&gt;Provides the current application version.&lt;/p&gt;
-- @param ApplicationStatus [ApplicationStatus] &lt;p&gt;Status of the application.&lt;/p&gt;
-- @param CreateTimestamp [Timestamp] &lt;p&gt;Timestamp when the application version was created.&lt;/p&gt;
-- @param ReferenceDataSourceDescriptions [ReferenceDataSourceDescriptions] &lt;p&gt;Describes reference data sources configured for the application. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-input.html&quot;&gt;Configuring Application Input&lt;/a&gt;. &lt;/p&gt;
-- @param CloudWatchLoggingOptionDescriptions [CloudWatchLoggingOptionDescriptions] &lt;p&gt;Describes the CloudWatch log streams configured to receive application messages. For more information about using CloudWatch log streams with Amazon Kinesis Analytics applications, see &lt;a href=&quot;http://docs.aws.amazon.com/kinesisanalytics/latest/dev/cloudwatch-monitor-configuration.html&quot;&gt;Monitoring Configuration Errors&lt;/a&gt;. &lt;/p&gt;
-- @param InputDescriptions [InputDescriptions] &lt;p&gt;Describes the application input configuration. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-input.html&quot;&gt;Configuring Application Input&lt;/a&gt;. &lt;/p&gt;
-- @param ApplicationARN [ResourceARN] &lt;p&gt;ARN of the application.&lt;/p&gt;
-- @param ApplicationCode [ApplicationCode] &lt;p&gt;Returns the application code that you provided to perform data analysis on any of the in-application streams in your application.&lt;/p&gt;
-- Required parameter: ApplicationName
-- Required parameter: ApplicationARN
-- Required parameter: ApplicationStatus
-- Required parameter: ApplicationVersionId
function M.ApplicationDetail(ApplicationName, OutputDescriptions, ApplicationDescription, LastUpdateTimestamp, ApplicationVersionId, ApplicationStatus, CreateTimestamp, ReferenceDataSourceDescriptions, CloudWatchLoggingOptionDescriptions, InputDescriptions, ApplicationARN, ApplicationCode, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ApplicationDetail")
	local t = { 
		["ApplicationName"] = ApplicationName,
		["OutputDescriptions"] = OutputDescriptions,
		["ApplicationDescription"] = ApplicationDescription,
		["LastUpdateTimestamp"] = LastUpdateTimestamp,
		["ApplicationVersionId"] = ApplicationVersionId,
		["ApplicationStatus"] = ApplicationStatus,
		["CreateTimestamp"] = CreateTimestamp,
		["ReferenceDataSourceDescriptions"] = ReferenceDataSourceDescriptions,
		["CloudWatchLoggingOptionDescriptions"] = CloudWatchLoggingOptionDescriptions,
		["InputDescriptions"] = InputDescriptions,
		["ApplicationARN"] = ApplicationARN,
		["ApplicationCode"] = ApplicationCode,
	}
	M.AssertApplicationDetail(t)
	return t
end

local S3ReferenceDataSourceDescription_keys = { "FileKey" = true, "ReferenceRoleARN" = true, "BucketARN" = true, nil }

function M.AssertS3ReferenceDataSourceDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected S3ReferenceDataSourceDescription to be of type 'table'")
	assert(struct["BucketARN"], "Expected key BucketARN to exist in table")
	assert(struct["FileKey"], "Expected key FileKey to exist in table")
	assert(struct["ReferenceRoleARN"], "Expected key ReferenceRoleARN to exist in table")
	if struct["FileKey"] then M.AssertFileKey(struct["FileKey"]) end
	if struct["ReferenceRoleARN"] then M.AssertRoleARN(struct["ReferenceRoleARN"]) end
	if struct["BucketARN"] then M.AssertBucketARN(struct["BucketARN"]) end
	for k,_ in pairs(struct) do
		assert(S3ReferenceDataSourceDescription_keys[k], "S3ReferenceDataSourceDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type S3ReferenceDataSourceDescription
-- &lt;p&gt;Provides the bucket name and object key name that stores the reference data.&lt;/p&gt;
-- @param FileKey [FileKey] &lt;p&gt;Amazon S3 object key name.&lt;/p&gt;
-- @param ReferenceRoleARN [RoleARN] &lt;p&gt;ARN of the IAM role that Amazon Kinesis Analytics can assume to read the Amazon S3 object on your behalf to populate the in-application reference table.&lt;/p&gt;
-- @param BucketARN [BucketARN] &lt;p&gt;Amazon Resource Name (ARN) of the S3 bucket.&lt;/p&gt;
-- Required parameter: BucketARN
-- Required parameter: FileKey
-- Required parameter: ReferenceRoleARN
function M.S3ReferenceDataSourceDescription(FileKey, ReferenceRoleARN, BucketARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating S3ReferenceDataSourceDescription")
	local t = { 
		["FileKey"] = FileKey,
		["ReferenceRoleARN"] = ReferenceRoleARN,
		["BucketARN"] = BucketARN,
	}
	M.AssertS3ReferenceDataSourceDescription(t)
	return t
end

local InputDescription_keys = { "InputStartingPositionConfiguration" = true, "KinesisFirehoseInputDescription" = true, "InputId" = true, "KinesisStreamsInputDescription" = true, "NamePrefix" = true, "InAppStreamNames" = true, "InputParallelism" = true, "InputSchema" = true, nil }

function M.AssertInputDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InputDescription to be of type 'table'")
	if struct["InputStartingPositionConfiguration"] then M.AssertInputStartingPositionConfiguration(struct["InputStartingPositionConfiguration"]) end
	if struct["KinesisFirehoseInputDescription"] then M.AssertKinesisFirehoseInputDescription(struct["KinesisFirehoseInputDescription"]) end
	if struct["InputId"] then M.AssertId(struct["InputId"]) end
	if struct["KinesisStreamsInputDescription"] then M.AssertKinesisStreamsInputDescription(struct["KinesisStreamsInputDescription"]) end
	if struct["NamePrefix"] then M.AssertInAppStreamName(struct["NamePrefix"]) end
	if struct["InAppStreamNames"] then M.AssertInAppStreamNames(struct["InAppStreamNames"]) end
	if struct["InputParallelism"] then M.AssertInputParallelism(struct["InputParallelism"]) end
	if struct["InputSchema"] then M.AssertSourceSchema(struct["InputSchema"]) end
	for k,_ in pairs(struct) do
		assert(InputDescription_keys[k], "InputDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InputDescription
-- &lt;p&gt;Describes the application input configuration. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-input.html&quot;&gt;Configuring Application Input&lt;/a&gt;. &lt;/p&gt;
-- @param InputStartingPositionConfiguration [InputStartingPositionConfiguration] &lt;p&gt;Point at which the application is configured to read from the input stream.&lt;/p&gt;
-- @param KinesisFirehoseInputDescription [KinesisFirehoseInputDescription] &lt;p&gt;If an Amazon Kinesis Firehose delivery stream is configured as a streaming source, provides the Firehose delivery stream's Amazon Resource Name (ARN) and an IAM role that enables Amazon Kinesis Analytics to access the stream on your behalf.&lt;/p&gt;
-- @param InputId [Id] &lt;p&gt;Input ID associated with the application input. This is the ID that Amazon Kinesis Analytics assigns to each input configuration you add to your application. &lt;/p&gt;
-- @param KinesisStreamsInputDescription [KinesisStreamsInputDescription] &lt;p&gt;If an Amazon Kinesis stream is configured as streaming source, provides Amazon Kinesis stream's ARN and an IAM role that enables Amazon Kinesis Analytics to access the stream on your behalf.&lt;/p&gt;
-- @param NamePrefix [InAppStreamName] &lt;p&gt;In-application name prefix.&lt;/p&gt;
-- @param InAppStreamNames [InAppStreamNames] &lt;p&gt;Returns the in-application stream names that are mapped to the stream source.&lt;/p&gt;
-- @param InputParallelism [InputParallelism] &lt;p&gt;Describes the configured parallelism (number of in-application streams mapped to the streaming source).&lt;/p&gt;
-- @param InputSchema [SourceSchema] &lt;p&gt;Describes the application input configuration. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-input.html&quot;&gt;Configuring Application Input&lt;/a&gt;. &lt;/p&gt;
function M.InputDescription(InputStartingPositionConfiguration, KinesisFirehoseInputDescription, InputId, KinesisStreamsInputDescription, NamePrefix, InAppStreamNames, InputParallelism, InputSchema, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InputDescription")
	local t = { 
		["InputStartingPositionConfiguration"] = InputStartingPositionConfiguration,
		["KinesisFirehoseInputDescription"] = KinesisFirehoseInputDescription,
		["InputId"] = InputId,
		["KinesisStreamsInputDescription"] = KinesisStreamsInputDescription,
		["NamePrefix"] = NamePrefix,
		["InAppStreamNames"] = InAppStreamNames,
		["InputParallelism"] = InputParallelism,
		["InputSchema"] = InputSchema,
	}
	M.AssertInputDescription(t)
	return t
end

local InputParallelismUpdate_keys = { "CountUpdate" = true, nil }

function M.AssertInputParallelismUpdate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InputParallelismUpdate to be of type 'table'")
	if struct["CountUpdate"] then M.AssertInputParallelismCount(struct["CountUpdate"]) end
	for k,_ in pairs(struct) do
		assert(InputParallelismUpdate_keys[k], "InputParallelismUpdate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InputParallelismUpdate
-- &lt;p&gt;Provides updates to the parallelism count.&lt;/p&gt;
-- @param CountUpdate [InputParallelismCount] &lt;p&gt;Number of in-application streams to create for the specified streaming source.&lt;/p&gt;
function M.InputParallelismUpdate(CountUpdate, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InputParallelismUpdate")
	local t = { 
		["CountUpdate"] = CountUpdate,
	}
	M.AssertInputParallelismUpdate(t)
	return t
end

local ReferenceDataSource_keys = { "TableName" = true, "ReferenceSchema" = true, "S3ReferenceDataSource" = true, nil }

function M.AssertReferenceDataSource(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReferenceDataSource to be of type 'table'")
	assert(struct["TableName"], "Expected key TableName to exist in table")
	assert(struct["ReferenceSchema"], "Expected key ReferenceSchema to exist in table")
	if struct["TableName"] then M.AssertInAppTableName(struct["TableName"]) end
	if struct["ReferenceSchema"] then M.AssertSourceSchema(struct["ReferenceSchema"]) end
	if struct["S3ReferenceDataSource"] then M.AssertS3ReferenceDataSource(struct["S3ReferenceDataSource"]) end
	for k,_ in pairs(struct) do
		assert(ReferenceDataSource_keys[k], "ReferenceDataSource contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReferenceDataSource
-- &lt;p&gt;Describes the reference data source by providing the source information (S3 bucket name and object key name), the resulting in-application table name that is created, and the necessary schema to map the data elements in the Amazon S3 object to the in-application table.&lt;/p&gt;
-- @param TableName [InAppTableName] &lt;p&gt;Name of the in-application table to create.&lt;/p&gt;
-- @param ReferenceSchema [SourceSchema] &lt;p&gt;Describes the reference data source by providing the source information (S3 bucket name and object key name), the resulting in-application table name that is created, and the necessary schema to map the data elements in the Amazon S3 object to the in-application table.&lt;/p&gt;
-- @param S3ReferenceDataSource [S3ReferenceDataSource] &lt;p&gt;Describes the reference data source by providing the source information (S3 bucket name and object key name), the resulting in-application table name that is created, and the necessary schema to map the data elements in the Amazon S3 object to the in-application table.&lt;/p&gt;
-- Required parameter: TableName
-- Required parameter: ReferenceSchema
function M.ReferenceDataSource(TableName, ReferenceSchema, S3ReferenceDataSource, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReferenceDataSource")
	local t = { 
		["TableName"] = TableName,
		["ReferenceSchema"] = ReferenceSchema,
		["S3ReferenceDataSource"] = S3ReferenceDataSource,
	}
	M.AssertReferenceDataSource(t)
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
-- &lt;p&gt;Specified application can't be found.&lt;/p&gt;
-- @param message [ErrorMessage] &lt;p/&gt;
function M.ResourceNotFoundException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceNotFoundException")
	local t = { 
		["message"] = message,
	}
	M.AssertResourceNotFoundException(t)
	return t
end

local KinesisFirehoseOutputDescription_keys = { "ResourceARN" = true, "RoleARN" = true, nil }

function M.AssertKinesisFirehoseOutputDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected KinesisFirehoseOutputDescription to be of type 'table'")
	if struct["ResourceARN"] then M.AssertResourceARN(struct["ResourceARN"]) end
	if struct["RoleARN"] then M.AssertRoleARN(struct["RoleARN"]) end
	for k,_ in pairs(struct) do
		assert(KinesisFirehoseOutputDescription_keys[k], "KinesisFirehoseOutputDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type KinesisFirehoseOutputDescription
-- &lt;p&gt; For an application output, describes the Amazon Kinesis Firehose delivery stream configured as its destination. &lt;/p&gt;
-- @param ResourceARN [ResourceARN] &lt;p&gt;Amazon Resource Name (ARN) of the Amazon Kinesis Firehose delivery stream.&lt;/p&gt;
-- @param RoleARN [RoleARN] &lt;p&gt;ARN of the IAM role that Amazon Kinesis Analytics can assume to access the stream.&lt;/p&gt;
function M.KinesisFirehoseOutputDescription(ResourceARN, RoleARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating KinesisFirehoseOutputDescription")
	local t = { 
		["ResourceARN"] = ResourceARN,
		["RoleARN"] = RoleARN,
	}
	M.AssertKinesisFirehoseOutputDescription(t)
	return t
end

local KinesisStreamsInputDescription_keys = { "ResourceARN" = true, "RoleARN" = true, nil }

function M.AssertKinesisStreamsInputDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected KinesisStreamsInputDescription to be of type 'table'")
	if struct["ResourceARN"] then M.AssertResourceARN(struct["ResourceARN"]) end
	if struct["RoleARN"] then M.AssertRoleARN(struct["RoleARN"]) end
	for k,_ in pairs(struct) do
		assert(KinesisStreamsInputDescription_keys[k], "KinesisStreamsInputDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type KinesisStreamsInputDescription
-- &lt;p&gt; Describes the Amazon Kinesis stream that is configured as the streaming source in the application input configuration. &lt;/p&gt;
-- @param ResourceARN [ResourceARN] &lt;p&gt;Amazon Resource Name (ARN) of the Amazon Kinesis stream.&lt;/p&gt;
-- @param RoleARN [RoleARN] &lt;p&gt;ARN of the IAM role that Amazon Kinesis Analytics can assume to access the stream.&lt;/p&gt;
function M.KinesisStreamsInputDescription(ResourceARN, RoleARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating KinesisStreamsInputDescription")
	local t = { 
		["ResourceARN"] = ResourceARN,
		["RoleARN"] = RoleARN,
	}
	M.AssertKinesisStreamsInputDescription(t)
	return t
end

local DescribeApplicationRequest_keys = { "ApplicationName" = true, nil }

function M.AssertDescribeApplicationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeApplicationRequest to be of type 'table'")
	assert(struct["ApplicationName"], "Expected key ApplicationName to exist in table")
	if struct["ApplicationName"] then M.AssertApplicationName(struct["ApplicationName"]) end
	for k,_ in pairs(struct) do
		assert(DescribeApplicationRequest_keys[k], "DescribeApplicationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeApplicationRequest
-- &lt;p/&gt;
-- @param ApplicationName [ApplicationName] &lt;p&gt;Name of the application.&lt;/p&gt;
-- Required parameter: ApplicationName
function M.DescribeApplicationRequest(ApplicationName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeApplicationRequest")
	local t = { 
		["ApplicationName"] = ApplicationName,
	}
	M.AssertDescribeApplicationRequest(t)
	return t
end

local OutputDescription_keys = { "OutputId" = true, "DestinationSchema" = true, "KinesisStreamsOutputDescription" = true, "KinesisFirehoseOutputDescription" = true, "Name" = true, nil }

function M.AssertOutputDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OutputDescription to be of type 'table'")
	if struct["OutputId"] then M.AssertId(struct["OutputId"]) end
	if struct["DestinationSchema"] then M.AssertDestinationSchema(struct["DestinationSchema"]) end
	if struct["KinesisStreamsOutputDescription"] then M.AssertKinesisStreamsOutputDescription(struct["KinesisStreamsOutputDescription"]) end
	if struct["KinesisFirehoseOutputDescription"] then M.AssertKinesisFirehoseOutputDescription(struct["KinesisFirehoseOutputDescription"]) end
	if struct["Name"] then M.AssertInAppStreamName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(OutputDescription_keys[k], "OutputDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OutputDescription
-- &lt;p&gt;Describes the application output configuration, which includes the in-application stream name and the destination where the stream data is written. The destination can be an Amazon Kinesis stream or an Amazon Kinesis Firehose delivery stream. &lt;/p&gt;
-- @param OutputId [Id] &lt;p&gt;A unique identifier for the output configuration.&lt;/p&gt;
-- @param DestinationSchema [DestinationSchema] &lt;p&gt;Data format used for writing data to the destination.&lt;/p&gt;
-- @param KinesisStreamsOutputDescription [KinesisStreamsOutputDescription] &lt;p&gt;Describes Amazon Kinesis stream configured as the destination where output is written.&lt;/p&gt;
-- @param KinesisFirehoseOutputDescription [KinesisFirehoseOutputDescription] &lt;p&gt;Describes the Amazon Kinesis Firehose delivery stream configured as the destination where output is written.&lt;/p&gt;
-- @param Name [InAppStreamName] &lt;p&gt;Name of the in-application stream configured as output.&lt;/p&gt;
function M.OutputDescription(OutputId, DestinationSchema, KinesisStreamsOutputDescription, KinesisFirehoseOutputDescription, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating OutputDescription")
	local t = { 
		["OutputId"] = OutputId,
		["DestinationSchema"] = DestinationSchema,
		["KinesisStreamsOutputDescription"] = KinesisStreamsOutputDescription,
		["KinesisFirehoseOutputDescription"] = KinesisFirehoseOutputDescription,
		["Name"] = Name,
	}
	M.AssertOutputDescription(t)
	return t
end

local StartApplicationResponse_keys = { nil }

function M.AssertStartApplicationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartApplicationResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(StartApplicationResponse_keys[k], "StartApplicationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartApplicationResponse
-- &lt;p/&gt;
function M.StartApplicationResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating StartApplicationResponse")
	local t = { 
	}
	M.AssertStartApplicationResponse(t)
	return t
end

local DiscoverInputSchemaRequest_keys = { "ResourceARN" = true, "InputStartingPositionConfiguration" = true, "RoleARN" = true, nil }

function M.AssertDiscoverInputSchemaRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DiscoverInputSchemaRequest to be of type 'table'")
	assert(struct["ResourceARN"], "Expected key ResourceARN to exist in table")
	assert(struct["RoleARN"], "Expected key RoleARN to exist in table")
	assert(struct["InputStartingPositionConfiguration"], "Expected key InputStartingPositionConfiguration to exist in table")
	if struct["ResourceARN"] then M.AssertResourceARN(struct["ResourceARN"]) end
	if struct["InputStartingPositionConfiguration"] then M.AssertInputStartingPositionConfiguration(struct["InputStartingPositionConfiguration"]) end
	if struct["RoleARN"] then M.AssertRoleARN(struct["RoleARN"]) end
	for k,_ in pairs(struct) do
		assert(DiscoverInputSchemaRequest_keys[k], "DiscoverInputSchemaRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DiscoverInputSchemaRequest
-- &lt;p/&gt;
-- @param ResourceARN [ResourceARN] &lt;p&gt;Amazon Resource Name (ARN) of the streaming source.&lt;/p&gt;
-- @param InputStartingPositionConfiguration [InputStartingPositionConfiguration] &lt;p&gt;Point at which you want Amazon Kinesis Analytics to start reading records from the specified streaming source discovery purposes.&lt;/p&gt;
-- @param RoleARN [RoleARN] &lt;p&gt;ARN of the IAM role that Amazon Kinesis Analytics can assume to access the stream on your behalf.&lt;/p&gt;
-- Required parameter: ResourceARN
-- Required parameter: RoleARN
-- Required parameter: InputStartingPositionConfiguration
function M.DiscoverInputSchemaRequest(ResourceARN, InputStartingPositionConfiguration, RoleARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DiscoverInputSchemaRequest")
	local t = { 
		["ResourceARN"] = ResourceARN,
		["InputStartingPositionConfiguration"] = InputStartingPositionConfiguration,
		["RoleARN"] = RoleARN,
	}
	M.AssertDiscoverInputSchemaRequest(t)
	return t
end

local MappingParameters_keys = { "JSONMappingParameters" = true, "CSVMappingParameters" = true, nil }

function M.AssertMappingParameters(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MappingParameters to be of type 'table'")
	if struct["JSONMappingParameters"] then M.AssertJSONMappingParameters(struct["JSONMappingParameters"]) end
	if struct["CSVMappingParameters"] then M.AssertCSVMappingParameters(struct["CSVMappingParameters"]) end
	for k,_ in pairs(struct) do
		assert(MappingParameters_keys[k], "MappingParameters contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MappingParameters
-- &lt;p&gt;When configuring application input at the time of creating or updating an application, provides additional mapping information specific to the record format (such as JSON, CSV, or record fields delimited by some delimiter) on the streaming source.&lt;/p&gt;
-- @param JSONMappingParameters [JSONMappingParameters] &lt;p&gt;Provides additional mapping information when JSON is the record format on the streaming source.&lt;/p&gt;
-- @param CSVMappingParameters [CSVMappingParameters] &lt;p&gt;Provides additional mapping information when the record format uses delimiters (for example, CSV).&lt;/p&gt;
function M.MappingParameters(JSONMappingParameters, CSVMappingParameters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MappingParameters")
	local t = { 
		["JSONMappingParameters"] = JSONMappingParameters,
		["CSVMappingParameters"] = CSVMappingParameters,
	}
	M.AssertMappingParameters(t)
	return t
end

local ResourceProvisionedThroughputExceededException_keys = { "message" = true, nil }

function M.AssertResourceProvisionedThroughputExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceProvisionedThroughputExceededException to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(ResourceProvisionedThroughputExceededException_keys[k], "ResourceProvisionedThroughputExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceProvisionedThroughputExceededException
-- &lt;p&gt;Discovery failed to get a record from the streaming source because of the Amazon Kinesis Streams ProvisionedThroughputExceededException. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/kinesis/latest/APIReference/API_GetRecords.html&quot;&gt;GetRecords&lt;/a&gt; in the Amazon Kinesis Streams API Reference.&lt;/p&gt;
-- @param message [ErrorMessage] &lt;p&gt;Discovery failed to get a record from the streaming source because of the Amazon Kinesis Streams ProvisionedThroughputExceededException. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/kinesis/latest/APIReference/API_GetRecords.html&quot;&gt;GetRecords&lt;/a&gt; in the Amazon Kinesis Streams API Reference.&lt;/p&gt;
function M.ResourceProvisionedThroughputExceededException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceProvisionedThroughputExceededException")
	local t = { 
		["message"] = message,
	}
	M.AssertResourceProvisionedThroughputExceededException(t)
	return t
end

local DeleteApplicationCloudWatchLoggingOptionResponse_keys = { nil }

function M.AssertDeleteApplicationCloudWatchLoggingOptionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteApplicationCloudWatchLoggingOptionResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DeleteApplicationCloudWatchLoggingOptionResponse_keys[k], "DeleteApplicationCloudWatchLoggingOptionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteApplicationCloudWatchLoggingOptionResponse
--  
function M.DeleteApplicationCloudWatchLoggingOptionResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteApplicationCloudWatchLoggingOptionResponse")
	local t = { 
	}
	M.AssertDeleteApplicationCloudWatchLoggingOptionResponse(t)
	return t
end

local KinesisFirehoseInputDescription_keys = { "ResourceARN" = true, "RoleARN" = true, nil }

function M.AssertKinesisFirehoseInputDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected KinesisFirehoseInputDescription to be of type 'table'")
	if struct["ResourceARN"] then M.AssertResourceARN(struct["ResourceARN"]) end
	if struct["RoleARN"] then M.AssertRoleARN(struct["RoleARN"]) end
	for k,_ in pairs(struct) do
		assert(KinesisFirehoseInputDescription_keys[k], "KinesisFirehoseInputDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type KinesisFirehoseInputDescription
-- &lt;p&gt; Describes the Amazon Kinesis Firehose delivery stream that is configured as the streaming source in the application input configuration. &lt;/p&gt;
-- @param ResourceARN [ResourceARN] &lt;p&gt;Amazon Resource Name (ARN) of the Amazon Kinesis Firehose delivery stream.&lt;/p&gt;
-- @param RoleARN [RoleARN] &lt;p&gt;ARN of the IAM role that Amazon Kinesis Analytics assumes to access the stream.&lt;/p&gt;
function M.KinesisFirehoseInputDescription(ResourceARN, RoleARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating KinesisFirehoseInputDescription")
	local t = { 
		["ResourceARN"] = ResourceARN,
		["RoleARN"] = RoleARN,
	}
	M.AssertKinesisFirehoseInputDescription(t)
	return t
end

local CreateApplicationRequest_keys = { "ApplicationName" = true, "Inputs" = true, "ApplicationDescription" = true, "Outputs" = true, "CloudWatchLoggingOptions" = true, "ApplicationCode" = true, nil }

function M.AssertCreateApplicationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateApplicationRequest to be of type 'table'")
	assert(struct["ApplicationName"], "Expected key ApplicationName to exist in table")
	if struct["ApplicationName"] then M.AssertApplicationName(struct["ApplicationName"]) end
	if struct["Inputs"] then M.AssertInputs(struct["Inputs"]) end
	if struct["ApplicationDescription"] then M.AssertApplicationDescription(struct["ApplicationDescription"]) end
	if struct["Outputs"] then M.AssertOutputs(struct["Outputs"]) end
	if struct["CloudWatchLoggingOptions"] then M.AssertCloudWatchLoggingOptions(struct["CloudWatchLoggingOptions"]) end
	if struct["ApplicationCode"] then M.AssertApplicationCode(struct["ApplicationCode"]) end
	for k,_ in pairs(struct) do
		assert(CreateApplicationRequest_keys[k], "CreateApplicationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateApplicationRequest
-- &lt;p&gt;TBD&lt;/p&gt;
-- @param ApplicationName [ApplicationName] &lt;p&gt;Name of your Amazon Kinesis Analytics application (for example, &lt;code&gt;sample-app&lt;/code&gt;).&lt;/p&gt;
-- @param Inputs [Inputs] &lt;p&gt;Use this parameter to configure the application input.&lt;/p&gt; &lt;p&gt;You can configure your application to receive input from a single streaming source. In this configuration, you map this streaming source to an in-application stream that is created. Your application code can then query the in-application stream like a table (you can think of it as a constantly updating table).&lt;/p&gt; &lt;p&gt;For the streaming source, you provide its Amazon Resource Name (ARN) and format of data on the stream (for example, JSON, CSV, etc). You also must provide an IAM role that Amazon Kinesis Analytics can assume to read this stream on your behalf.&lt;/p&gt; &lt;p&gt;To create the in-application stream, you need to specify a schema to transform your data into a schematized version used in SQL. In the schema, you provide the necessary mapping of the data elements in the streaming source to record columns in the in-app stream.&lt;/p&gt;
-- @param ApplicationDescription [ApplicationDescription] &lt;p&gt;Summary description of the application.&lt;/p&gt;
-- @param Outputs [Outputs] &lt;p&gt;You can configure application output to write data from any of the in-application streams to up to five destinations.&lt;/p&gt; &lt;p&gt;These destinations can be Amazon Kinesis streams, Amazon Kinesis Firehose delivery streams, or both.&lt;/p&gt; &lt;p&gt;In the configuration, you specify the in-application stream name, the destination stream Amazon Resource Name (ARN), and the format to use when writing data. You must also provide an IAM role that Amazon Kinesis Analytics can assume to write to the destination stream on your behalf.&lt;/p&gt; &lt;p&gt;In the output configuration, you also provide the output stream Amazon Resource Name (ARN) and the format of data in the stream (for example, JSON, CSV). You also must provide an IAM role that Amazon Kinesis Analytics can assume to write to this stream on your behalf.&lt;/p&gt;
-- @param CloudWatchLoggingOptions [CloudWatchLoggingOptions] &lt;p&gt;Use this parameter to configure a CloudWatch log stream to monitor application configuration errors. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/kinesisanalytics/latest/dev/cloudwatch-monitor-configuration.html&quot;&gt;Monitoring Configuration Errors&lt;/a&gt;.&lt;/p&gt;
-- @param ApplicationCode [ApplicationCode] &lt;p&gt;One or more SQL statements that read input data, transform it, and generate output. For example, you can write a SQL statement that reads data from one in-application stream, generates a running average of the number of advertisement clicks by vendor, and insert resulting rows in another in-application stream using pumps. For more inforamtion about the typical pattern, see &lt;a href=&quot;http://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-app-code.html&quot;&gt;Application Code&lt;/a&gt;. &lt;/p&gt; &lt;p&gt;You can provide such series of SQL statements, where output of one statement can be used as the input for the next statement. You store intermediate results by creating in-application streams and pumps.&lt;/p&gt; &lt;p&gt;Note that the application code must create the streams with names specified in the &lt;code&gt;Outputs&lt;/code&gt;. For example, if your &lt;code&gt;Outputs&lt;/code&gt; defines output streams named &lt;code&gt;ExampleOutputStream1&lt;/code&gt; and &lt;code&gt;ExampleOutputStream2&lt;/code&gt;, then your application code must create these streams. &lt;/p&gt;
-- Required parameter: ApplicationName
function M.CreateApplicationRequest(ApplicationName, Inputs, ApplicationDescription, Outputs, CloudWatchLoggingOptions, ApplicationCode, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateApplicationRequest")
	local t = { 
		["ApplicationName"] = ApplicationName,
		["Inputs"] = Inputs,
		["ApplicationDescription"] = ApplicationDescription,
		["Outputs"] = Outputs,
		["CloudWatchLoggingOptions"] = CloudWatchLoggingOptions,
		["ApplicationCode"] = ApplicationCode,
	}
	M.AssertCreateApplicationRequest(t)
	return t
end

local RecordFormat_keys = { "MappingParameters" = true, "RecordFormatType" = true, nil }

function M.AssertRecordFormat(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RecordFormat to be of type 'table'")
	assert(struct["RecordFormatType"], "Expected key RecordFormatType to exist in table")
	if struct["MappingParameters"] then M.AssertMappingParameters(struct["MappingParameters"]) end
	if struct["RecordFormatType"] then M.AssertRecordFormatType(struct["RecordFormatType"]) end
	for k,_ in pairs(struct) do
		assert(RecordFormat_keys[k], "RecordFormat contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RecordFormat
-- &lt;p&gt; Describes the record format and relevant mapping information that should be applied to schematize the records on the stream. &lt;/p&gt;
-- @param MappingParameters [MappingParameters] &lt;p&gt; Describes the record format and relevant mapping information that should be applied to schematize the records on the stream. &lt;/p&gt;
-- @param RecordFormatType [RecordFormatType] &lt;p&gt;The type of record format.&lt;/p&gt;
-- Required parameter: RecordFormatType
function M.RecordFormat(MappingParameters, RecordFormatType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RecordFormat")
	local t = { 
		["MappingParameters"] = MappingParameters,
		["RecordFormatType"] = RecordFormatType,
	}
	M.AssertRecordFormat(t)
	return t
end

local RecordColumn_keys = { "SqlType" = true, "Name" = true, "Mapping" = true, nil }

function M.AssertRecordColumn(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RecordColumn to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["SqlType"], "Expected key SqlType to exist in table")
	if struct["SqlType"] then M.AssertRecordColumnSqlType(struct["SqlType"]) end
	if struct["Name"] then M.AssertRecordColumnName(struct["Name"]) end
	if struct["Mapping"] then M.AssertRecordColumnMapping(struct["Mapping"]) end
	for k,_ in pairs(struct) do
		assert(RecordColumn_keys[k], "RecordColumn contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RecordColumn
-- &lt;p&gt;Describes the mapping of each data element in the streaming source to the corresponding column in the in-application stream.&lt;/p&gt; &lt;p&gt;Also used to describe the format of the reference data source.&lt;/p&gt;
-- @param SqlType [RecordColumnSqlType] &lt;p&gt;Type of column created in the in-application input stream or reference table.&lt;/p&gt;
-- @param Name [RecordColumnName] &lt;p&gt;Name of the column created in the in-application input stream or reference table.&lt;/p&gt;
-- @param Mapping [RecordColumnMapping] &lt;p&gt;Reference to the data element in the streaming input of the reference data source.&lt;/p&gt;
-- Required parameter: Name
-- Required parameter: SqlType
function M.RecordColumn(SqlType, Name, Mapping, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RecordColumn")
	local t = { 
		["SqlType"] = SqlType,
		["Name"] = Name,
		["Mapping"] = Mapping,
	}
	M.AssertRecordColumn(t)
	return t
end

local ApplicationUpdate_keys = { "ReferenceDataSourceUpdates" = true, "CloudWatchLoggingOptionUpdates" = true, "InputUpdates" = true, "ApplicationCodeUpdate" = true, "OutputUpdates" = true, nil }

function M.AssertApplicationUpdate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ApplicationUpdate to be of type 'table'")
	if struct["ReferenceDataSourceUpdates"] then M.AssertReferenceDataSourceUpdates(struct["ReferenceDataSourceUpdates"]) end
	if struct["CloudWatchLoggingOptionUpdates"] then M.AssertCloudWatchLoggingOptionUpdates(struct["CloudWatchLoggingOptionUpdates"]) end
	if struct["InputUpdates"] then M.AssertInputUpdates(struct["InputUpdates"]) end
	if struct["ApplicationCodeUpdate"] then M.AssertApplicationCode(struct["ApplicationCodeUpdate"]) end
	if struct["OutputUpdates"] then M.AssertOutputUpdates(struct["OutputUpdates"]) end
	for k,_ in pairs(struct) do
		assert(ApplicationUpdate_keys[k], "ApplicationUpdate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ApplicationUpdate
-- &lt;p&gt;Describes updates to apply to an existing Amazon Kinesis Analytics application.&lt;/p&gt;
-- @param ReferenceDataSourceUpdates [ReferenceDataSourceUpdates] &lt;p&gt;Describes application reference data source updates.&lt;/p&gt;
-- @param CloudWatchLoggingOptionUpdates [CloudWatchLoggingOptionUpdates] &lt;p&gt;Describes application CloudWatch logging option updates.&lt;/p&gt;
-- @param InputUpdates [InputUpdates] &lt;p&gt;Describes application input configuration updates.&lt;/p&gt;
-- @param ApplicationCodeUpdate [ApplicationCode] &lt;p&gt;Describes application code updates.&lt;/p&gt;
-- @param OutputUpdates [OutputUpdates] &lt;p&gt;Describes application output configuration updates.&lt;/p&gt;
function M.ApplicationUpdate(ReferenceDataSourceUpdates, CloudWatchLoggingOptionUpdates, InputUpdates, ApplicationCodeUpdate, OutputUpdates, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ApplicationUpdate")
	local t = { 
		["ReferenceDataSourceUpdates"] = ReferenceDataSourceUpdates,
		["CloudWatchLoggingOptionUpdates"] = CloudWatchLoggingOptionUpdates,
		["InputUpdates"] = InputUpdates,
		["ApplicationCodeUpdate"] = ApplicationCodeUpdate,
		["OutputUpdates"] = OutputUpdates,
	}
	M.AssertApplicationUpdate(t)
	return t
end

local InputStartingPositionConfiguration_keys = { "InputStartingPosition" = true, nil }

function M.AssertInputStartingPositionConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InputStartingPositionConfiguration to be of type 'table'")
	if struct["InputStartingPosition"] then M.AssertInputStartingPosition(struct["InputStartingPosition"]) end
	for k,_ in pairs(struct) do
		assert(InputStartingPositionConfiguration_keys[k], "InputStartingPositionConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InputStartingPositionConfiguration
-- &lt;p&gt;Describes the point at which the application reads from the streaming source.&lt;/p&gt;
-- @param InputStartingPosition [InputStartingPosition] &lt;p&gt;The starting position on the stream.&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;NOW&lt;/code&gt; - Start reading just after the most recent record in the stream, start at the request timestamp that the customer issued.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;TRIM_HORIZON&lt;/code&gt; - Start reading at the last untrimmed record in the stream, which is the oldest record available in the stream. This option is not available for an Amazon Kinesis Firehose delivery stream.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;LAST_STOPPED_POINT&lt;/code&gt; - Resume reading from where the application last stopped reading.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
function M.InputStartingPositionConfiguration(InputStartingPosition, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InputStartingPositionConfiguration")
	local t = { 
		["InputStartingPosition"] = InputStartingPosition,
	}
	M.AssertInputStartingPositionConfiguration(t)
	return t
end

local KinesisStreamsInput_keys = { "ResourceARN" = true, "RoleARN" = true, nil }

function M.AssertKinesisStreamsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected KinesisStreamsInput to be of type 'table'")
	assert(struct["ResourceARN"], "Expected key ResourceARN to exist in table")
	assert(struct["RoleARN"], "Expected key RoleARN to exist in table")
	if struct["ResourceARN"] then M.AssertResourceARN(struct["ResourceARN"]) end
	if struct["RoleARN"] then M.AssertRoleARN(struct["RoleARN"]) end
	for k,_ in pairs(struct) do
		assert(KinesisStreamsInput_keys[k], "KinesisStreamsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type KinesisStreamsInput
-- &lt;p&gt; Identifies an Amazon Kinesis stream as the streaming source. You provide the stream's ARN and an IAM role ARN that enables Amazon Kinesis Analytics to access the stream on your behalf.&lt;/p&gt;
-- @param ResourceARN [ResourceARN] &lt;p&gt;ARN of the input Amazon Kinesis stream to read.&lt;/p&gt;
-- @param RoleARN [RoleARN] &lt;p&gt;ARN of the IAM role that Amazon Kinesis Analytics can assume to access the stream on your behalf. You need to grant the necessary permissions to this role.&lt;/p&gt;
-- Required parameter: ResourceARN
-- Required parameter: RoleARN
function M.KinesisStreamsInput(ResourceARN, RoleARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating KinesisStreamsInput")
	local t = { 
		["ResourceARN"] = ResourceARN,
		["RoleARN"] = RoleARN,
	}
	M.AssertKinesisStreamsInput(t)
	return t
end

local DiscoverInputSchemaResponse_keys = { "RawInputRecords" = true, "InputSchema" = true, "ParsedInputRecords" = true, nil }

function M.AssertDiscoverInputSchemaResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DiscoverInputSchemaResponse to be of type 'table'")
	if struct["RawInputRecords"] then M.AssertRawInputRecords(struct["RawInputRecords"]) end
	if struct["InputSchema"] then M.AssertSourceSchema(struct["InputSchema"]) end
	if struct["ParsedInputRecords"] then M.AssertParsedInputRecords(struct["ParsedInputRecords"]) end
	for k,_ in pairs(struct) do
		assert(DiscoverInputSchemaResponse_keys[k], "DiscoverInputSchemaResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DiscoverInputSchemaResponse
-- &lt;p/&gt;
-- @param RawInputRecords [RawInputRecords] &lt;p&gt;Raw stream data that was sampled to infer the schema.&lt;/p&gt;
-- @param InputSchema [SourceSchema] &lt;p&gt;Schema inferred from the streaming source. It identifies the format of the data in the streaming source and how each data element maps to corresponding columns in the in-application stream that you can create.&lt;/p&gt;
-- @param ParsedInputRecords [ParsedInputRecords] &lt;p&gt;An array of elements, where each element corresponds to a row in a stream record (a stream record can have more than one row).&lt;/p&gt;
function M.DiscoverInputSchemaResponse(RawInputRecords, InputSchema, ParsedInputRecords, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DiscoverInputSchemaResponse")
	local t = { 
		["RawInputRecords"] = RawInputRecords,
		["InputSchema"] = InputSchema,
		["ParsedInputRecords"] = ParsedInputRecords,
	}
	M.AssertDiscoverInputSchemaResponse(t)
	return t
end

local Output_keys = { "DestinationSchema" = true, "KinesisStreamsOutput" = true, "KinesisFirehoseOutput" = true, "Name" = true, nil }

function M.AssertOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Output to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["DestinationSchema"], "Expected key DestinationSchema to exist in table")
	if struct["DestinationSchema"] then M.AssertDestinationSchema(struct["DestinationSchema"]) end
	if struct["KinesisStreamsOutput"] then M.AssertKinesisStreamsOutput(struct["KinesisStreamsOutput"]) end
	if struct["KinesisFirehoseOutput"] then M.AssertKinesisFirehoseOutput(struct["KinesisFirehoseOutput"]) end
	if struct["Name"] then M.AssertInAppStreamName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(Output_keys[k], "Output contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Output
-- &lt;p&gt; Describes application output configuration in which you identify an in-application stream and a destination where you want the in-application stream data to be written. The destination can be an Amazon Kinesis stream or an Amazon Kinesis Firehose delivery stream. &lt;/p&gt; &lt;p/&gt; &lt;p&gt;For limits on how many destinations an application can write and other limitations, see &lt;a href=&quot;http://docs.aws.amazon.com/kinesisanalytics/latest/dev/limits.html&quot;&gt;Limits&lt;/a&gt;. &lt;/p&gt;
-- @param DestinationSchema [DestinationSchema] &lt;p&gt; Describes application output configuration in which you identify an in-application stream and a destination where you want the in-application stream data to be written. The destination can be an Amazon Kinesis stream or an Amazon Kinesis Firehose delivery stream. &lt;/p&gt; &lt;p/&gt; &lt;p&gt;For limits on how many destinations an application can write and other limitations, see &lt;a href=&quot;http://docs.aws.amazon.com/kinesisanalytics/latest/dev/limits.html&quot;&gt;Limits&lt;/a&gt;. &lt;/p&gt;
-- @param KinesisStreamsOutput [KinesisStreamsOutput] &lt;p&gt;Identifies an Amazon Kinesis stream as the destination.&lt;/p&gt;
-- @param KinesisFirehoseOutput [KinesisFirehoseOutput] &lt;p&gt;Identifies an Amazon Kinesis Firehose delivery stream as the destination.&lt;/p&gt;
-- @param Name [InAppStreamName] &lt;p&gt;Name of the in-application stream.&lt;/p&gt;
-- Required parameter: Name
-- Required parameter: DestinationSchema
function M.Output(DestinationSchema, KinesisStreamsOutput, KinesisFirehoseOutput, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Output")
	local t = { 
		["DestinationSchema"] = DestinationSchema,
		["KinesisStreamsOutput"] = KinesisStreamsOutput,
		["KinesisFirehoseOutput"] = KinesisFirehoseOutput,
		["Name"] = Name,
	}
	M.AssertOutput(t)
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
-- &lt;p&gt;Specified input parameter value is invalid.&lt;/p&gt;
-- @param message [ErrorMessage] &lt;p/&gt;
function M.InvalidArgumentException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidArgumentException")
	local t = { 
		["message"] = message,
	}
	M.AssertInvalidArgumentException(t)
	return t
end

local KinesisFirehoseInput_keys = { "ResourceARN" = true, "RoleARN" = true, nil }

function M.AssertKinesisFirehoseInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected KinesisFirehoseInput to be of type 'table'")
	assert(struct["ResourceARN"], "Expected key ResourceARN to exist in table")
	assert(struct["RoleARN"], "Expected key RoleARN to exist in table")
	if struct["ResourceARN"] then M.AssertResourceARN(struct["ResourceARN"]) end
	if struct["RoleARN"] then M.AssertRoleARN(struct["RoleARN"]) end
	for k,_ in pairs(struct) do
		assert(KinesisFirehoseInput_keys[k], "KinesisFirehoseInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type KinesisFirehoseInput
-- &lt;p&gt; Identifies an Amazon Kinesis Firehose delivery stream as the streaming source. You provide the Firehose delivery stream's Amazon Resource Name (ARN) and an IAM role ARN that enables Amazon Kinesis Analytics to access the stream on your behalf.&lt;/p&gt;
-- @param ResourceARN [ResourceARN] &lt;p&gt;ARN of the input Firehose delivery stream.&lt;/p&gt;
-- @param RoleARN [RoleARN] &lt;p&gt;ARN of the IAM role that Amazon Kinesis Analytics can assume to access the stream on your behalf. You need to make sure the role has necessary permissions to access the stream.&lt;/p&gt;
-- Required parameter: ResourceARN
-- Required parameter: RoleARN
function M.KinesisFirehoseInput(ResourceARN, RoleARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating KinesisFirehoseInput")
	local t = { 
		["ResourceARN"] = ResourceARN,
		["RoleARN"] = RoleARN,
	}
	M.AssertKinesisFirehoseInput(t)
	return t
end

local CreateApplicationResponse_keys = { "ApplicationSummary" = true, nil }

function M.AssertCreateApplicationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateApplicationResponse to be of type 'table'")
	assert(struct["ApplicationSummary"], "Expected key ApplicationSummary to exist in table")
	if struct["ApplicationSummary"] then M.AssertApplicationSummary(struct["ApplicationSummary"]) end
	for k,_ in pairs(struct) do
		assert(CreateApplicationResponse_keys[k], "CreateApplicationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateApplicationResponse
-- &lt;p&gt;TBD&lt;/p&gt;
-- @param ApplicationSummary [ApplicationSummary] &lt;p&gt;In response to your &lt;code&gt;CreateApplication&lt;/code&gt; request, Amazon Kinesis Analytics returns a response with a summary of the application it created, including the application Amazon Resource Name (ARN), name, and status.&lt;/p&gt;
-- Required parameter: ApplicationSummary
function M.CreateApplicationResponse(ApplicationSummary, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateApplicationResponse")
	local t = { 
		["ApplicationSummary"] = ApplicationSummary,
	}
	M.AssertCreateApplicationResponse(t)
	return t
end

local OutputUpdate_keys = { "OutputId" = true, "DestinationSchemaUpdate" = true, "KinesisFirehoseOutputUpdate" = true, "KinesisStreamsOutputUpdate" = true, "NameUpdate" = true, nil }

function M.AssertOutputUpdate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OutputUpdate to be of type 'table'")
	assert(struct["OutputId"], "Expected key OutputId to exist in table")
	if struct["OutputId"] then M.AssertId(struct["OutputId"]) end
	if struct["DestinationSchemaUpdate"] then M.AssertDestinationSchema(struct["DestinationSchemaUpdate"]) end
	if struct["KinesisFirehoseOutputUpdate"] then M.AssertKinesisFirehoseOutputUpdate(struct["KinesisFirehoseOutputUpdate"]) end
	if struct["KinesisStreamsOutputUpdate"] then M.AssertKinesisStreamsOutputUpdate(struct["KinesisStreamsOutputUpdate"]) end
	if struct["NameUpdate"] then M.AssertInAppStreamName(struct["NameUpdate"]) end
	for k,_ in pairs(struct) do
		assert(OutputUpdate_keys[k], "OutputUpdate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OutputUpdate
-- &lt;p&gt; Describes updates to the output configuration identified by the &lt;code&gt;OutputId&lt;/code&gt;. &lt;/p&gt;
-- @param OutputId [Id] &lt;p&gt;Identifies the specific output configuration that you want to update.&lt;/p&gt;
-- @param DestinationSchemaUpdate [DestinationSchema] &lt;p&gt; Describes updates to the output configuration identified by the &lt;code&gt;OutputId&lt;/code&gt;. &lt;/p&gt;
-- @param KinesisFirehoseOutputUpdate [KinesisFirehoseOutputUpdate] &lt;p&gt;Describes a Amazon Kinesis Firehose delivery stream as the destination for the output.&lt;/p&gt;
-- @param KinesisStreamsOutputUpdate [KinesisStreamsOutputUpdate] &lt;p&gt;Describes an Amazon Kinesis stream as the destination for the output.&lt;/p&gt;
-- @param NameUpdate [InAppStreamName] &lt;p&gt;If you want to specify a different in-application stream for this output configuration, use this field to specify the new in-application stream name.&lt;/p&gt;
-- Required parameter: OutputId
function M.OutputUpdate(OutputId, DestinationSchemaUpdate, KinesisFirehoseOutputUpdate, KinesisStreamsOutputUpdate, NameUpdate, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating OutputUpdate")
	local t = { 
		["OutputId"] = OutputId,
		["DestinationSchemaUpdate"] = DestinationSchemaUpdate,
		["KinesisFirehoseOutputUpdate"] = KinesisFirehoseOutputUpdate,
		["KinesisStreamsOutputUpdate"] = KinesisStreamsOutputUpdate,
		["NameUpdate"] = NameUpdate,
	}
	M.AssertOutputUpdate(t)
	return t
end

local InputSchemaUpdate_keys = { "RecordFormatUpdate" = true, "RecordColumnUpdates" = true, "RecordEncodingUpdate" = true, nil }

function M.AssertInputSchemaUpdate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InputSchemaUpdate to be of type 'table'")
	if struct["RecordFormatUpdate"] then M.AssertRecordFormat(struct["RecordFormatUpdate"]) end
	if struct["RecordColumnUpdates"] then M.AssertRecordColumns(struct["RecordColumnUpdates"]) end
	if struct["RecordEncodingUpdate"] then M.AssertRecordEncoding(struct["RecordEncodingUpdate"]) end
	for k,_ in pairs(struct) do
		assert(InputSchemaUpdate_keys[k], "InputSchemaUpdate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InputSchemaUpdate
-- &lt;p&gt; Describes updates for the application's input schema. &lt;/p&gt;
-- @param RecordFormatUpdate [RecordFormat] &lt;p&gt;Specifies the format of the records on the streaming source.&lt;/p&gt;
-- @param RecordColumnUpdates [RecordColumns] &lt;p&gt;A list of &lt;code&gt;RecordColumn&lt;/code&gt; objects. Each object describes the mapping of the streaming source element to the corresponding column in the in-application stream. &lt;/p&gt;
-- @param RecordEncodingUpdate [RecordEncoding] &lt;p&gt;Specifies the encoding of the records in the streaming source. For example, UTF-8.&lt;/p&gt;
function M.InputSchemaUpdate(RecordFormatUpdate, RecordColumnUpdates, RecordEncodingUpdate, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InputSchemaUpdate")
	local t = { 
		["RecordFormatUpdate"] = RecordFormatUpdate,
		["RecordColumnUpdates"] = RecordColumnUpdates,
		["RecordEncodingUpdate"] = RecordEncodingUpdate,
	}
	M.AssertInputSchemaUpdate(t)
	return t
end

local StartApplicationRequest_keys = { "ApplicationName" = true, "InputConfigurations" = true, nil }

function M.AssertStartApplicationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartApplicationRequest to be of type 'table'")
	assert(struct["ApplicationName"], "Expected key ApplicationName to exist in table")
	assert(struct["InputConfigurations"], "Expected key InputConfigurations to exist in table")
	if struct["ApplicationName"] then M.AssertApplicationName(struct["ApplicationName"]) end
	if struct["InputConfigurations"] then M.AssertInputConfigurations(struct["InputConfigurations"]) end
	for k,_ in pairs(struct) do
		assert(StartApplicationRequest_keys[k], "StartApplicationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartApplicationRequest
-- &lt;p/&gt;
-- @param ApplicationName [ApplicationName] &lt;p&gt;Name of the application.&lt;/p&gt;
-- @param InputConfigurations [InputConfigurations] &lt;p&gt;Identifies the specific input, by ID, that the application starts consuming. Amazon Kinesis Analytics starts reading the streaming source associated with the input. You can also specify where in the streaming source you want Amazon Kinesis Analytics to start reading.&lt;/p&gt;
-- Required parameter: ApplicationName
-- Required parameter: InputConfigurations
function M.StartApplicationRequest(ApplicationName, InputConfigurations, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StartApplicationRequest")
	local t = { 
		["ApplicationName"] = ApplicationName,
		["InputConfigurations"] = InputConfigurations,
	}
	M.AssertStartApplicationRequest(t)
	return t
end

local AddApplicationReferenceDataSourceRequest_keys = { "ApplicationName" = true, "ReferenceDataSource" = true, "CurrentApplicationVersionId" = true, nil }

function M.AssertAddApplicationReferenceDataSourceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddApplicationReferenceDataSourceRequest to be of type 'table'")
	assert(struct["ApplicationName"], "Expected key ApplicationName to exist in table")
	assert(struct["CurrentApplicationVersionId"], "Expected key CurrentApplicationVersionId to exist in table")
	assert(struct["ReferenceDataSource"], "Expected key ReferenceDataSource to exist in table")
	if struct["ApplicationName"] then M.AssertApplicationName(struct["ApplicationName"]) end
	if struct["ReferenceDataSource"] then M.AssertReferenceDataSource(struct["ReferenceDataSource"]) end
	if struct["CurrentApplicationVersionId"] then M.AssertApplicationVersionId(struct["CurrentApplicationVersionId"]) end
	for k,_ in pairs(struct) do
		assert(AddApplicationReferenceDataSourceRequest_keys[k], "AddApplicationReferenceDataSourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddApplicationReferenceDataSourceRequest
-- &lt;p/&gt;
-- @param ApplicationName [ApplicationName] &lt;p&gt;Name of an existing application.&lt;/p&gt;
-- @param ReferenceDataSource [ReferenceDataSource] &lt;p&gt;The reference data source can be an object in your Amazon S3 bucket. Amazon Kinesis Analytics reads the object and copies the data into the in-application table that is created. You provide an S3 bucket, object key name, and the resulting in-application table that is created. You must also provide an IAM role with the necessary permissions that Amazon Kinesis Analytics can assume to read the object from your S3 bucket on your behalf.&lt;/p&gt;
-- @param CurrentApplicationVersionId [ApplicationVersionId] &lt;p&gt;Version of the application for which you are adding the reference data source. You can use the &lt;a&gt;DescribeApplication&lt;/a&gt; operation to get the current application version. If the version specified is not the current version, the &lt;code&gt;ConcurrentModificationException&lt;/code&gt; is returned.&lt;/p&gt;
-- Required parameter: ApplicationName
-- Required parameter: CurrentApplicationVersionId
-- Required parameter: ReferenceDataSource
function M.AddApplicationReferenceDataSourceRequest(ApplicationName, ReferenceDataSource, CurrentApplicationVersionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddApplicationReferenceDataSourceRequest")
	local t = { 
		["ApplicationName"] = ApplicationName,
		["ReferenceDataSource"] = ReferenceDataSource,
		["CurrentApplicationVersionId"] = CurrentApplicationVersionId,
	}
	M.AssertAddApplicationReferenceDataSourceRequest(t)
	return t
end

local CSVMappingParameters_keys = { "RecordColumnDelimiter" = true, "RecordRowDelimiter" = true, nil }

function M.AssertCSVMappingParameters(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CSVMappingParameters to be of type 'table'")
	assert(struct["RecordRowDelimiter"], "Expected key RecordRowDelimiter to exist in table")
	assert(struct["RecordColumnDelimiter"], "Expected key RecordColumnDelimiter to exist in table")
	if struct["RecordColumnDelimiter"] then M.AssertRecordColumnDelimiter(struct["RecordColumnDelimiter"]) end
	if struct["RecordRowDelimiter"] then M.AssertRecordRowDelimiter(struct["RecordRowDelimiter"]) end
	for k,_ in pairs(struct) do
		assert(CSVMappingParameters_keys[k], "CSVMappingParameters contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CSVMappingParameters
-- &lt;p&gt;Provides additional mapping information when the record format uses delimiters, such as CSV. For example, the following sample records use CSV format, where the records use the &lt;i&gt;'\n'&lt;/i&gt; as the row delimiter and a comma (&quot;,&quot;) as the column delimiter: &lt;/p&gt; &lt;p&gt; &lt;code&gt;&quot;name1&quot;, &quot;address1&quot; &lt;/code&gt; &lt;/p&gt; &lt;p&gt; &lt;code&gt;&quot;name2, &quot;address2&quot;&lt;/code&gt; &lt;/p&gt;
-- @param RecordColumnDelimiter [RecordColumnDelimiter] &lt;p&gt;Column delimiter. For example, in a CSV format, a comma (&quot;,&quot;) is the typical column delimiter.&lt;/p&gt;
-- @param RecordRowDelimiter [RecordRowDelimiter] &lt;p&gt;Row delimiter. For example, in a CSV format, &lt;i&gt;'\n'&lt;/i&gt; is the typical row delimiter.&lt;/p&gt;
-- Required parameter: RecordRowDelimiter
-- Required parameter: RecordColumnDelimiter
function M.CSVMappingParameters(RecordColumnDelimiter, RecordRowDelimiter, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CSVMappingParameters")
	local t = { 
		["RecordColumnDelimiter"] = RecordColumnDelimiter,
		["RecordRowDelimiter"] = RecordRowDelimiter,
	}
	M.AssertCSVMappingParameters(t)
	return t
end

local ListApplicationsResponse_keys = { "HasMoreApplications" = true, "ApplicationSummaries" = true, nil }

function M.AssertListApplicationsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListApplicationsResponse to be of type 'table'")
	assert(struct["ApplicationSummaries"], "Expected key ApplicationSummaries to exist in table")
	assert(struct["HasMoreApplications"], "Expected key HasMoreApplications to exist in table")
	if struct["HasMoreApplications"] then M.AssertBooleanObject(struct["HasMoreApplications"]) end
	if struct["ApplicationSummaries"] then M.AssertApplicationSummaries(struct["ApplicationSummaries"]) end
	for k,_ in pairs(struct) do
		assert(ListApplicationsResponse_keys[k], "ListApplicationsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListApplicationsResponse
-- &lt;p/&gt;
-- @param HasMoreApplications [BooleanObject] &lt;p&gt;Returns true if there are more applications to retrieve.&lt;/p&gt;
-- @param ApplicationSummaries [ApplicationSummaries] &lt;p&gt;List of &lt;code&gt;ApplicationSummary&lt;/code&gt; objects. &lt;/p&gt;
-- Required parameter: ApplicationSummaries
-- Required parameter: HasMoreApplications
function M.ListApplicationsResponse(HasMoreApplications, ApplicationSummaries, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListApplicationsResponse")
	local t = { 
		["HasMoreApplications"] = HasMoreApplications,
		["ApplicationSummaries"] = ApplicationSummaries,
	}
	M.AssertListApplicationsResponse(t)
	return t
end

local KinesisStreamsInputUpdate_keys = { "RoleARNUpdate" = true, "ResourceARNUpdate" = true, nil }

function M.AssertKinesisStreamsInputUpdate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected KinesisStreamsInputUpdate to be of type 'table'")
	if struct["RoleARNUpdate"] then M.AssertRoleARN(struct["RoleARNUpdate"]) end
	if struct["ResourceARNUpdate"] then M.AssertResourceARN(struct["ResourceARNUpdate"]) end
	for k,_ in pairs(struct) do
		assert(KinesisStreamsInputUpdate_keys[k], "KinesisStreamsInputUpdate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type KinesisStreamsInputUpdate
-- &lt;p&gt;When updating application input configuration, provides information about an Amazon Kinesis stream as the streaming source.&lt;/p&gt;
-- @param RoleARNUpdate [RoleARN] &lt;p&gt;ARN of the IAM role that Amazon Kinesis Analytics can assume to access the stream on your behalf. You need to grant the necessary permissions to this role.&lt;/p&gt;
-- @param ResourceARNUpdate [ResourceARN] &lt;p&gt;Amazon Resource Name (ARN) of the input Amazon Kinesis stream to read.&lt;/p&gt;
function M.KinesisStreamsInputUpdate(RoleARNUpdate, ResourceARNUpdate, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating KinesisStreamsInputUpdate")
	local t = { 
		["RoleARNUpdate"] = RoleARNUpdate,
		["ResourceARNUpdate"] = ResourceARNUpdate,
	}
	M.AssertKinesisStreamsInputUpdate(t)
	return t
end

function M.AssertParsedInputRecordField(str)
	assert(str)
	assert(type(str) == "string", "Expected ParsedInputRecordField to be of type 'string'")
end

--  
function M.ParsedInputRecordField(str)
	M.AssertParsedInputRecordField(str)
	return str
end

function M.AssertFileKey(str)
	assert(str)
	assert(type(str) == "string", "Expected FileKey to be of type 'string'")
end

--  
function M.FileKey(str)
	M.AssertFileKey(str)
	return str
end

function M.AssertInputStartingPosition(str)
	assert(str)
	assert(type(str) == "string", "Expected InputStartingPosition to be of type 'string'")
end

--  
function M.InputStartingPosition(str)
	M.AssertInputStartingPosition(str)
	return str
end

function M.AssertRecordEncoding(str)
	assert(str)
	assert(type(str) == "string", "Expected RecordEncoding to be of type 'string'")
	assert(str:match("UTF-8"), "Expected string to match pattern 'UTF-8'")
end

--  
function M.RecordEncoding(str)
	M.AssertRecordEncoding(str)
	return str
end

function M.AssertRecordFormatType(str)
	assert(str)
	assert(type(str) == "string", "Expected RecordFormatType to be of type 'string'")
end

--  
function M.RecordFormatType(str)
	M.AssertRecordFormatType(str)
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

function M.AssertRecordColumnSqlType(str)
	assert(str)
	assert(type(str) == "string", "Expected RecordColumnSqlType to be of type 'string'")
end

--  
function M.RecordColumnSqlType(str)
	M.AssertRecordColumnSqlType(str)
	return str
end

function M.AssertApplicationStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected ApplicationStatus to be of type 'string'")
end

--  
function M.ApplicationStatus(str)
	M.AssertApplicationStatus(str)
	return str
end

function M.AssertRoleARN(str)
	assert(str)
	assert(type(str) == "string", "Expected RoleARN to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("arn:aws:iam::%d{12}:role/?[a-zA-Z_0-9+=,.@%-_/]+"), "Expected string to match pattern 'arn:aws:iam::%d{12}:role/?[a-zA-Z_0-9+=,.@%-_/]+'")
end

--  
function M.RoleARN(str)
	M.AssertRoleARN(str)
	return str
end

function M.AssertApplicationName(str)
	assert(str)
	assert(type(str) == "string", "Expected ApplicationName to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[a-zA-Z0-9_.-]+"), "Expected string to match pattern '[a-zA-Z0-9_.-]+'")
end

--  
function M.ApplicationName(str)
	M.AssertApplicationName(str)
	return str
end

function M.AssertLogStreamARN(str)
	assert(str)
	assert(type(str) == "string", "Expected LogStreamARN to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("arn:.*"), "Expected string to match pattern 'arn:.*'")
end

--  
function M.LogStreamARN(str)
	M.AssertLogStreamARN(str)
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

function M.AssertRecordColumnName(str)
	assert(str)
	assert(type(str) == "string", "Expected RecordColumnName to be of type 'string'")
	assert(str:match("[a-zA-Z][a-zA-Z0-9_]+"), "Expected string to match pattern '[a-zA-Z][a-zA-Z0-9_]+'")
end

--  
function M.RecordColumnName(str)
	M.AssertRecordColumnName(str)
	return str
end

function M.AssertApplicationCode(str)
	assert(str)
	assert(type(str) == "string", "Expected ApplicationCode to be of type 'string'")
	assert(#str <= 51200, "Expected string to be max 51200 characters")
end

--  
function M.ApplicationCode(str)
	M.AssertApplicationCode(str)
	return str
end

function M.AssertRawInputRecord(str)
	assert(str)
	assert(type(str) == "string", "Expected RawInputRecord to be of type 'string'")
end

--  
function M.RawInputRecord(str)
	M.AssertRawInputRecord(str)
	return str
end

function M.AssertApplicationDescription(str)
	assert(str)
	assert(type(str) == "string", "Expected ApplicationDescription to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
end

--  
function M.ApplicationDescription(str)
	M.AssertApplicationDescription(str)
	return str
end

function M.AssertRecordColumnMapping(str)
	assert(str)
	assert(type(str) == "string", "Expected RecordColumnMapping to be of type 'string'")
end

--  
function M.RecordColumnMapping(str)
	M.AssertRecordColumnMapping(str)
	return str
end

function M.AssertResourceARN(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceARN to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("arn:[a-zA-Z0-9%-]+:[a-zA-Z0-9%-]+:[a-zA-Z0-9%-]*:%d{12}:[a-zA-Z_0-9+=,.@%-_/:]+"), "Expected string to match pattern 'arn:[a-zA-Z0-9%-]+:[a-zA-Z0-9%-]+:[a-zA-Z0-9%-]*:%d{12}:[a-zA-Z_0-9+=,.@%-_/:]+'")
end

--  
function M.ResourceARN(str)
	M.AssertResourceARN(str)
	return str
end

function M.AssertRecordRowPath(str)
	assert(str)
	assert(type(str) == "string", "Expected RecordRowPath to be of type 'string'")
end

--  
function M.RecordRowPath(str)
	M.AssertRecordRowPath(str)
	return str
end

function M.AssertInAppTableName(str)
	assert(str)
	assert(type(str) == "string", "Expected InAppTableName to be of type 'string'")
	assert(#str <= 32, "Expected string to be max 32 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[a-zA-Z][a-zA-Z0-9_]+"), "Expected string to match pattern '[a-zA-Z][a-zA-Z0-9_]+'")
end

--  
function M.InAppTableName(str)
	M.AssertInAppTableName(str)
	return str
end

function M.AssertInAppStreamName(str)
	assert(str)
	assert(type(str) == "string", "Expected InAppStreamName to be of type 'string'")
	assert(#str <= 32, "Expected string to be max 32 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[a-zA-Z][a-zA-Z0-9_]+"), "Expected string to match pattern '[a-zA-Z][a-zA-Z0-9_]+'")
end

--  
function M.InAppStreamName(str)
	M.AssertInAppStreamName(str)
	return str
end

function M.AssertRecordColumnDelimiter(str)
	assert(str)
	assert(type(str) == "string", "Expected RecordColumnDelimiter to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.RecordColumnDelimiter(str)
	M.AssertRecordColumnDelimiter(str)
	return str
end

function M.AssertRecordRowDelimiter(str)
	assert(str)
	assert(type(str) == "string", "Expected RecordRowDelimiter to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.RecordRowDelimiter(str)
	M.AssertRecordRowDelimiter(str)
	return str
end

function M.AssertId(str)
	assert(str)
	assert(type(str) == "string", "Expected Id to be of type 'string'")
	assert(#str <= 50, "Expected string to be max 50 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[a-zA-Z0-9_.-]+"), "Expected string to match pattern '[a-zA-Z0-9_.-]+'")
end

--  
function M.Id(str)
	M.AssertId(str)
	return str
end

function M.AssertApplicationVersionId(long)
	assert(long)
	assert(type(long) == "number", "Expected ApplicationVersionId to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.ApplicationVersionId(long)
	M.AssertApplicationVersionId(long)
	return long
end

function M.AssertInputParallelismCount(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected InputParallelismCount to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 10, "Expected integer to be max 10")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.InputParallelismCount(integer)
	M.AssertInputParallelismCount(integer)
	return integer
end

function M.AssertListApplicationsInputLimit(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected ListApplicationsInputLimit to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 50, "Expected integer to be max 50")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.ListApplicationsInputLimit(integer)
	M.AssertListApplicationsInputLimit(integer)
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

function M.AssertInAppStreamNames(list)
	assert(list)
	assert(type(list) == "table", "Expected InAppStreamNames to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertInAppStreamName(v)
	end
end

--  
-- List of InAppStreamName objects
function M.InAppStreamNames(list)
	M.AssertInAppStreamNames(list)
	return list
end

function M.AssertInputs(list)
	assert(list)
	assert(type(list) == "table", "Expected Inputs to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertInput(v)
	end
end

--  
-- List of Input objects
function M.Inputs(list)
	M.AssertInputs(list)
	return list
end

function M.AssertInputConfigurations(list)
	assert(list)
	assert(type(list) == "table", "Expected InputConfigurations to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertInputConfiguration(v)
	end
end

--  
-- List of InputConfiguration objects
function M.InputConfigurations(list)
	M.AssertInputConfigurations(list)
	return list
end

function M.AssertRecordColumns(list)
	assert(list)
	assert(type(list) == "table", "Expected RecordColumns to be of type ''table")
	assert(#list <= 1000, "Expected list to be contain 1000 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AssertRecordColumn(v)
	end
end

--  
-- List of RecordColumn objects
function M.RecordColumns(list)
	M.AssertRecordColumns(list)
	return list
end

function M.AssertInputDescriptions(list)
	assert(list)
	assert(type(list) == "table", "Expected InputDescriptions to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertInputDescription(v)
	end
end

--  
-- List of InputDescription objects
function M.InputDescriptions(list)
	M.AssertInputDescriptions(list)
	return list
end

function M.AssertParsedInputRecords(list)
	assert(list)
	assert(type(list) == "table", "Expected ParsedInputRecords to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertParsedInputRecord(v)
	end
end

--  
-- List of ParsedInputRecord objects
function M.ParsedInputRecords(list)
	M.AssertParsedInputRecords(list)
	return list
end

function M.AssertReferenceDataSourceUpdates(list)
	assert(list)
	assert(type(list) == "table", "Expected ReferenceDataSourceUpdates to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertReferenceDataSourceUpdate(v)
	end
end

--  
-- List of ReferenceDataSourceUpdate objects
function M.ReferenceDataSourceUpdates(list)
	M.AssertReferenceDataSourceUpdates(list)
	return list
end

function M.AssertParsedInputRecord(list)
	assert(list)
	assert(type(list) == "table", "Expected ParsedInputRecord to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertParsedInputRecordField(v)
	end
end

--  
-- List of ParsedInputRecordField objects
function M.ParsedInputRecord(list)
	M.AssertParsedInputRecord(list)
	return list
end

function M.AssertCloudWatchLoggingOptionDescriptions(list)
	assert(list)
	assert(type(list) == "table", "Expected CloudWatchLoggingOptionDescriptions to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertCloudWatchLoggingOptionDescription(v)
	end
end

--  
-- List of CloudWatchLoggingOptionDescription objects
function M.CloudWatchLoggingOptionDescriptions(list)
	M.AssertCloudWatchLoggingOptionDescriptions(list)
	return list
end

function M.AssertOutputUpdates(list)
	assert(list)
	assert(type(list) == "table", "Expected OutputUpdates to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertOutputUpdate(v)
	end
end

--  
-- List of OutputUpdate objects
function M.OutputUpdates(list)
	M.AssertOutputUpdates(list)
	return list
end

function M.AssertRawInputRecords(list)
	assert(list)
	assert(type(list) == "table", "Expected RawInputRecords to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertRawInputRecord(v)
	end
end

--  
-- List of RawInputRecord objects
function M.RawInputRecords(list)
	M.AssertRawInputRecords(list)
	return list
end

function M.AssertApplicationSummaries(list)
	assert(list)
	assert(type(list) == "table", "Expected ApplicationSummaries to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertApplicationSummary(v)
	end
end

--  
-- List of ApplicationSummary objects
function M.ApplicationSummaries(list)
	M.AssertApplicationSummaries(list)
	return list
end

function M.AssertOutputs(list)
	assert(list)
	assert(type(list) == "table", "Expected Outputs to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertOutput(v)
	end
end

--  
-- List of Output objects
function M.Outputs(list)
	M.AssertOutputs(list)
	return list
end

function M.AssertOutputDescriptions(list)
	assert(list)
	assert(type(list) == "table", "Expected OutputDescriptions to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertOutputDescription(v)
	end
end

--  
-- List of OutputDescription objects
function M.OutputDescriptions(list)
	M.AssertOutputDescriptions(list)
	return list
end

function M.AssertReferenceDataSourceDescriptions(list)
	assert(list)
	assert(type(list) == "table", "Expected ReferenceDataSourceDescriptions to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertReferenceDataSourceDescription(v)
	end
end

--  
-- List of ReferenceDataSourceDescription objects
function M.ReferenceDataSourceDescriptions(list)
	M.AssertReferenceDataSourceDescriptions(list)
	return list
end

function M.AssertCloudWatchLoggingOptions(list)
	assert(list)
	assert(type(list) == "table", "Expected CloudWatchLoggingOptions to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertCloudWatchLoggingOption(v)
	end
end

--  
-- List of CloudWatchLoggingOption objects
function M.CloudWatchLoggingOptions(list)
	M.AssertCloudWatchLoggingOptions(list)
	return list
end

function M.AssertCloudWatchLoggingOptionUpdates(list)
	assert(list)
	assert(type(list) == "table", "Expected CloudWatchLoggingOptionUpdates to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertCloudWatchLoggingOptionUpdate(v)
	end
end

--  
-- List of CloudWatchLoggingOptionUpdate objects
function M.CloudWatchLoggingOptionUpdates(list)
	M.AssertCloudWatchLoggingOptionUpdates(list)
	return list
end

function M.AssertInputUpdates(list)
	assert(list)
	assert(type(list) == "table", "Expected InputUpdates to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertInputUpdate(v)
	end
end

--  
-- List of InputUpdate objects
function M.InputUpdates(list)
	M.AssertInputUpdates(list)
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
			return "kinesisanalytics.amazonaws.com"
		end
	end
	local ss = { "kinesisanalytics" }
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
--- DiscoverInputSchema
-- @param DiscoverInputSchemaRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DiscoverInputSchemaAsync(DiscoverInputSchemaRequest, cb)
	assert(DiscoverInputSchemaRequest, "You must provide a DiscoverInputSchemaRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "KinesisAnalytics_20150814.DiscoverInputSchema",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DiscoverInputSchemaRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteApplicationOutput
-- @param DeleteApplicationOutputRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteApplicationOutputAsync(DeleteApplicationOutputRequest, cb)
	assert(DeleteApplicationOutputRequest, "You must provide a DeleteApplicationOutputRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "KinesisAnalytics_20150814.DeleteApplicationOutput",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteApplicationOutputRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- AddApplicationReferenceDataSource
-- @param AddApplicationReferenceDataSourceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AddApplicationReferenceDataSourceAsync(AddApplicationReferenceDataSourceRequest, cb)
	assert(AddApplicationReferenceDataSourceRequest, "You must provide a AddApplicationReferenceDataSourceRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "KinesisAnalytics_20150814.AddApplicationReferenceDataSource",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", AddApplicationReferenceDataSourceRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListApplications
-- @param ListApplicationsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListApplicationsAsync(ListApplicationsRequest, cb)
	assert(ListApplicationsRequest, "You must provide a ListApplicationsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "KinesisAnalytics_20150814.ListApplications",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListApplicationsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateApplication
-- @param UpdateApplicationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateApplicationAsync(UpdateApplicationRequest, cb)
	assert(UpdateApplicationRequest, "You must provide a UpdateApplicationRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "KinesisAnalytics_20150814.UpdateApplication",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateApplicationRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- StopApplication
-- @param StopApplicationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.StopApplicationAsync(StopApplicationRequest, cb)
	assert(StopApplicationRequest, "You must provide a StopApplicationRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "KinesisAnalytics_20150814.StopApplication",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", StopApplicationRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- AddApplicationOutput
-- @param AddApplicationOutputRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AddApplicationOutputAsync(AddApplicationOutputRequest, cb)
	assert(AddApplicationOutputRequest, "You must provide a AddApplicationOutputRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "KinesisAnalytics_20150814.AddApplicationOutput",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", AddApplicationOutputRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteApplication
-- @param DeleteApplicationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteApplicationAsync(DeleteApplicationRequest, cb)
	assert(DeleteApplicationRequest, "You must provide a DeleteApplicationRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "KinesisAnalytics_20150814.DeleteApplication",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteApplicationRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- AddApplicationCloudWatchLoggingOption
-- @param AddApplicationCloudWatchLoggingOptionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AddApplicationCloudWatchLoggingOptionAsync(AddApplicationCloudWatchLoggingOptionRequest, cb)
	assert(AddApplicationCloudWatchLoggingOptionRequest, "You must provide a AddApplicationCloudWatchLoggingOptionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "KinesisAnalytics_20150814.AddApplicationCloudWatchLoggingOption",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", AddApplicationCloudWatchLoggingOptionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteApplicationCloudWatchLoggingOption
-- @param DeleteApplicationCloudWatchLoggingOptionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteApplicationCloudWatchLoggingOptionAsync(DeleteApplicationCloudWatchLoggingOptionRequest, cb)
	assert(DeleteApplicationCloudWatchLoggingOptionRequest, "You must provide a DeleteApplicationCloudWatchLoggingOptionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "KinesisAnalytics_20150814.DeleteApplicationCloudWatchLoggingOption",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteApplicationCloudWatchLoggingOptionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- AddApplicationInput
-- @param AddApplicationInputRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AddApplicationInputAsync(AddApplicationInputRequest, cb)
	assert(AddApplicationInputRequest, "You must provide a AddApplicationInputRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "KinesisAnalytics_20150814.AddApplicationInput",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", AddApplicationInputRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeApplication
-- @param DescribeApplicationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeApplicationAsync(DescribeApplicationRequest, cb)
	assert(DescribeApplicationRequest, "You must provide a DescribeApplicationRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "KinesisAnalytics_20150814.DescribeApplication",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeApplicationRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteApplicationReferenceDataSource
-- @param DeleteApplicationReferenceDataSourceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteApplicationReferenceDataSourceAsync(DeleteApplicationReferenceDataSourceRequest, cb)
	assert(DeleteApplicationReferenceDataSourceRequest, "You must provide a DeleteApplicationReferenceDataSourceRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "KinesisAnalytics_20150814.DeleteApplicationReferenceDataSource",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteApplicationReferenceDataSourceRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- StartApplication
-- @param StartApplicationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.StartApplicationAsync(StartApplicationRequest, cb)
	assert(StartApplicationRequest, "You must provide a StartApplicationRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "KinesisAnalytics_20150814.StartApplication",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", StartApplicationRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateApplication
-- @param CreateApplicationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateApplicationAsync(CreateApplicationRequest, cb)
	assert(CreateApplicationRequest, "You must provide a CreateApplicationRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "KinesisAnalytics_20150814.CreateApplication",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateApplicationRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end


return M
