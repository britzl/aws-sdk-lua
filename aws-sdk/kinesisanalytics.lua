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

local keys = {}
local asserts = {}

keys.ListApplicationsRequest = { ["Limit"] = true, ["ExclusiveStartApplicationName"] = true, nil }

function asserts.AssertListApplicationsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListApplicationsRequest to be of type 'table'")
	if struct["Limit"] then asserts.AssertListApplicationsInputLimit(struct["Limit"]) end
	if struct["ExclusiveStartApplicationName"] then asserts.AssertApplicationName(struct["ExclusiveStartApplicationName"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListApplicationsRequest[k], "ListApplicationsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListApplicationsRequest
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Limit [ListApplicationsInputLimit] <p>Maximum number of applications to list.</p>
-- * ExclusiveStartApplicationName [ApplicationName] <p>Name of the application to start the list with. When using pagination to retrieve the list, you don't need to specify this parameter in the first request. However, in subsequent requests, you add the last application name from the previous response to get the next page of applications.</p>
-- @return ListApplicationsRequest structure as a key-value pair table
function M.ListApplicationsRequest(args)
	assert(args, "You must provdide an argument table when creating ListApplicationsRequest")
	local t = { 
		["Limit"] = args["Limit"],
		["ExclusiveStartApplicationName"] = args["ExclusiveStartApplicationName"],
	}
	asserts.AssertListApplicationsRequest(t)
	return t
end

keys.DestinationSchema = { ["RecordFormatType"] = true, nil }

function asserts.AssertDestinationSchema(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DestinationSchema to be of type 'table'")
	if struct["RecordFormatType"] then asserts.AssertRecordFormatType(struct["RecordFormatType"]) end
	for k,_ in pairs(struct) do
		assert(keys.DestinationSchema[k], "DestinationSchema contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DestinationSchema
-- <p>Describes the data format when records are written to the destination. For more information, see <a href="http://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-output.html">Configuring Application Output</a>. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RecordFormatType [RecordFormatType] <p>Specifies the format of the records on the output stream.</p>
-- @return DestinationSchema structure as a key-value pair table
function M.DestinationSchema(args)
	assert(args, "You must provdide an argument table when creating DestinationSchema")
	local t = { 
		["RecordFormatType"] = args["RecordFormatType"],
	}
	asserts.AssertDestinationSchema(t)
	return t
end

keys.InvalidApplicationConfigurationException = { ["message"] = true, nil }

function asserts.AssertInvalidApplicationConfigurationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidApplicationConfigurationException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidApplicationConfigurationException[k], "InvalidApplicationConfigurationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidApplicationConfigurationException
-- <p>User-provided application configuration is not valid.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] <p>test</p>
-- @return InvalidApplicationConfigurationException structure as a key-value pair table
function M.InvalidApplicationConfigurationException(args)
	assert(args, "You must provdide an argument table when creating InvalidApplicationConfigurationException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertInvalidApplicationConfigurationException(t)
	return t
end

keys.JSONMappingParameters = { ["RecordRowPath"] = true, nil }

function asserts.AssertJSONMappingParameters(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected JSONMappingParameters to be of type 'table'")
	assert(struct["RecordRowPath"], "Expected key RecordRowPath to exist in table")
	if struct["RecordRowPath"] then asserts.AssertRecordRowPath(struct["RecordRowPath"]) end
	for k,_ in pairs(struct) do
		assert(keys.JSONMappingParameters[k], "JSONMappingParameters contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type JSONMappingParameters
-- <p>Provides additional mapping information when JSON is the record format on the streaming source.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RecordRowPath [RecordRowPath] <p>Path to the top-level parent that contains the records.</p> <p>For example, consider the following JSON record:</p> <p>In the <code>RecordRowPath</code>, <code>"$"</code> refers to the root and path <code>"$.vehicle.Model"</code> refers to the specific <code>"Model"</code> key in the JSON.</p>
-- Required key: RecordRowPath
-- @return JSONMappingParameters structure as a key-value pair table
function M.JSONMappingParameters(args)
	assert(args, "You must provdide an argument table when creating JSONMappingParameters")
	local t = { 
		["RecordRowPath"] = args["RecordRowPath"],
	}
	asserts.AssertJSONMappingParameters(t)
	return t
end

keys.DeleteApplicationReferenceDataSourceResponse = { nil }

function asserts.AssertDeleteApplicationReferenceDataSourceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteApplicationReferenceDataSourceResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteApplicationReferenceDataSourceResponse[k], "DeleteApplicationReferenceDataSourceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteApplicationReferenceDataSourceResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteApplicationReferenceDataSourceResponse structure as a key-value pair table
function M.DeleteApplicationReferenceDataSourceResponse(args)
	assert(args, "You must provdide an argument table when creating DeleteApplicationReferenceDataSourceResponse")
	local t = { 
	}
	asserts.AssertDeleteApplicationReferenceDataSourceResponse(t)
	return t
end

keys.AddApplicationInputResponse = { nil }

function asserts.AssertAddApplicationInputResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddApplicationInputResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.AddApplicationInputResponse[k], "AddApplicationInputResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddApplicationInputResponse
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return AddApplicationInputResponse structure as a key-value pair table
function M.AddApplicationInputResponse(args)
	assert(args, "You must provdide an argument table when creating AddApplicationInputResponse")
	local t = { 
	}
	asserts.AssertAddApplicationInputResponse(t)
	return t
end

keys.ReferenceDataSourceDescription = { ["S3ReferenceDataSourceDescription"] = true, ["ReferenceId"] = true, ["TableName"] = true, ["ReferenceSchema"] = true, nil }

function asserts.AssertReferenceDataSourceDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReferenceDataSourceDescription to be of type 'table'")
	assert(struct["ReferenceId"], "Expected key ReferenceId to exist in table")
	assert(struct["TableName"], "Expected key TableName to exist in table")
	assert(struct["S3ReferenceDataSourceDescription"], "Expected key S3ReferenceDataSourceDescription to exist in table")
	if struct["S3ReferenceDataSourceDescription"] then asserts.AssertS3ReferenceDataSourceDescription(struct["S3ReferenceDataSourceDescription"]) end
	if struct["ReferenceId"] then asserts.AssertId(struct["ReferenceId"]) end
	if struct["TableName"] then asserts.AssertInAppTableName(struct["TableName"]) end
	if struct["ReferenceSchema"] then asserts.AssertSourceSchema(struct["ReferenceSchema"]) end
	for k,_ in pairs(struct) do
		assert(keys.ReferenceDataSourceDescription[k], "ReferenceDataSourceDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReferenceDataSourceDescription
-- <p>Describes the reference data source configured for an application.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * S3ReferenceDataSourceDescription [S3ReferenceDataSourceDescription] <p>Provides the S3 bucket name, the object key name that contains the reference data. It also provides the Amazon Resource Name (ARN) of the IAM role that Amazon Kinesis Analytics can assume to read the Amazon S3 object and populate the in-application reference table.</p>
-- * ReferenceId [Id] <p>ID of the reference data source. This is the ID that Amazon Kinesis Analytics assigns when you add the reference data source to your application using the <a>AddApplicationReferenceDataSource</a> operation.</p>
-- * TableName [InAppTableName] <p>The in-application table name created by the specific reference data source configuration.</p>
-- * ReferenceSchema [SourceSchema] 
-- Required key: ReferenceId
-- Required key: TableName
-- Required key: S3ReferenceDataSourceDescription
-- @return ReferenceDataSourceDescription structure as a key-value pair table
function M.ReferenceDataSourceDescription(args)
	assert(args, "You must provdide an argument table when creating ReferenceDataSourceDescription")
	local t = { 
		["S3ReferenceDataSourceDescription"] = args["S3ReferenceDataSourceDescription"],
		["ReferenceId"] = args["ReferenceId"],
		["TableName"] = args["TableName"],
		["ReferenceSchema"] = args["ReferenceSchema"],
	}
	asserts.AssertReferenceDataSourceDescription(t)
	return t
end

keys.UpdateApplicationRequest = { ["ApplicationName"] = true, ["ApplicationUpdate"] = true, ["CurrentApplicationVersionId"] = true, nil }

function asserts.AssertUpdateApplicationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateApplicationRequest to be of type 'table'")
	assert(struct["ApplicationName"], "Expected key ApplicationName to exist in table")
	assert(struct["CurrentApplicationVersionId"], "Expected key CurrentApplicationVersionId to exist in table")
	assert(struct["ApplicationUpdate"], "Expected key ApplicationUpdate to exist in table")
	if struct["ApplicationName"] then asserts.AssertApplicationName(struct["ApplicationName"]) end
	if struct["ApplicationUpdate"] then asserts.AssertApplicationUpdate(struct["ApplicationUpdate"]) end
	if struct["CurrentApplicationVersionId"] then asserts.AssertApplicationVersionId(struct["CurrentApplicationVersionId"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateApplicationRequest[k], "UpdateApplicationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateApplicationRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplicationName [ApplicationName] <p>Name of the Amazon Kinesis Analytics application to update.</p>
-- * ApplicationUpdate [ApplicationUpdate] <p>Describes application updates.</p>
-- * CurrentApplicationVersionId [ApplicationVersionId] <p>The current application version ID. You can use the <a>DescribeApplication</a> operation to get this value.</p>
-- Required key: ApplicationName
-- Required key: CurrentApplicationVersionId
-- Required key: ApplicationUpdate
-- @return UpdateApplicationRequest structure as a key-value pair table
function M.UpdateApplicationRequest(args)
	assert(args, "You must provdide an argument table when creating UpdateApplicationRequest")
	local t = { 
		["ApplicationName"] = args["ApplicationName"],
		["ApplicationUpdate"] = args["ApplicationUpdate"],
		["CurrentApplicationVersionId"] = args["CurrentApplicationVersionId"],
	}
	asserts.AssertUpdateApplicationRequest(t)
	return t
end

keys.CloudWatchLoggingOption = { ["RoleARN"] = true, ["LogStreamARN"] = true, nil }

function asserts.AssertCloudWatchLoggingOption(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CloudWatchLoggingOption to be of type 'table'")
	assert(struct["LogStreamARN"], "Expected key LogStreamARN to exist in table")
	assert(struct["RoleARN"], "Expected key RoleARN to exist in table")
	if struct["RoleARN"] then asserts.AssertRoleARN(struct["RoleARN"]) end
	if struct["LogStreamARN"] then asserts.AssertLogStreamARN(struct["LogStreamARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.CloudWatchLoggingOption[k], "CloudWatchLoggingOption contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CloudWatchLoggingOption
-- <p>Provides a description of CloudWatch logging options, including the log stream ARN and the role ARN.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RoleARN [RoleARN] <p>IAM ARN of the role to use to send application messages. Note: To write application messages to CloudWatch, the IAM role used must have the <code>PutLogEvents</code> policy action enabled.</p>
-- * LogStreamARN [LogStreamARN] <p>ARN of the CloudWatch log to receive application messages.</p>
-- Required key: LogStreamARN
-- Required key: RoleARN
-- @return CloudWatchLoggingOption structure as a key-value pair table
function M.CloudWatchLoggingOption(args)
	assert(args, "You must provdide an argument table when creating CloudWatchLoggingOption")
	local t = { 
		["RoleARN"] = args["RoleARN"],
		["LogStreamARN"] = args["LogStreamARN"],
	}
	asserts.AssertCloudWatchLoggingOption(t)
	return t
end

keys.DeleteApplicationReferenceDataSourceRequest = { ["ApplicationName"] = true, ["ReferenceId"] = true, ["CurrentApplicationVersionId"] = true, nil }

function asserts.AssertDeleteApplicationReferenceDataSourceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteApplicationReferenceDataSourceRequest to be of type 'table'")
	assert(struct["ApplicationName"], "Expected key ApplicationName to exist in table")
	assert(struct["CurrentApplicationVersionId"], "Expected key CurrentApplicationVersionId to exist in table")
	assert(struct["ReferenceId"], "Expected key ReferenceId to exist in table")
	if struct["ApplicationName"] then asserts.AssertApplicationName(struct["ApplicationName"]) end
	if struct["ReferenceId"] then asserts.AssertId(struct["ReferenceId"]) end
	if struct["CurrentApplicationVersionId"] then asserts.AssertApplicationVersionId(struct["CurrentApplicationVersionId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteApplicationReferenceDataSourceRequest[k], "DeleteApplicationReferenceDataSourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteApplicationReferenceDataSourceRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplicationName [ApplicationName] <p>Name of an existing application.</p>
-- * ReferenceId [Id] <p>ID of the reference data source. When you add a reference data source to your application using the <a>AddApplicationReferenceDataSource</a>, Amazon Kinesis Analytics assigns an ID. You can use the <a>DescribeApplication</a> operation to get the reference ID. </p>
-- * CurrentApplicationVersionId [ApplicationVersionId] <p>Version of the application. You can use the <a>DescribeApplication</a> operation to get the current application version. If the version specified is not the current version, the <code>ConcurrentModificationException</code> is returned.</p>
-- Required key: ApplicationName
-- Required key: CurrentApplicationVersionId
-- Required key: ReferenceId
-- @return DeleteApplicationReferenceDataSourceRequest structure as a key-value pair table
function M.DeleteApplicationReferenceDataSourceRequest(args)
	assert(args, "You must provdide an argument table when creating DeleteApplicationReferenceDataSourceRequest")
	local t = { 
		["ApplicationName"] = args["ApplicationName"],
		["ReferenceId"] = args["ReferenceId"],
		["CurrentApplicationVersionId"] = args["CurrentApplicationVersionId"],
	}
	asserts.AssertDeleteApplicationReferenceDataSourceRequest(t)
	return t
end

keys.CodeValidationException = { ["message"] = true, nil }

function asserts.AssertCodeValidationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CodeValidationException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.CodeValidationException[k], "CodeValidationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CodeValidationException
-- <p>User-provided application code (query) is invalid. This can be a simple syntax error.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] <p>Test</p>
-- @return CodeValidationException structure as a key-value pair table
function M.CodeValidationException(args)
	assert(args, "You must provdide an argument table when creating CodeValidationException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertCodeValidationException(t)
	return t
end

keys.KinesisFirehoseOutput = { ["ResourceARN"] = true, ["RoleARN"] = true, nil }

function asserts.AssertKinesisFirehoseOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected KinesisFirehoseOutput to be of type 'table'")
	assert(struct["ResourceARN"], "Expected key ResourceARN to exist in table")
	assert(struct["RoleARN"], "Expected key RoleARN to exist in table")
	if struct["ResourceARN"] then asserts.AssertResourceARN(struct["ResourceARN"]) end
	if struct["RoleARN"] then asserts.AssertRoleARN(struct["RoleARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.KinesisFirehoseOutput[k], "KinesisFirehoseOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type KinesisFirehoseOutput
-- <p>When configuring application output, identifies an Amazon Kinesis Firehose delivery stream as the destination. You provide the stream Amazon Resource Name (ARN) and an IAM role that enables Amazon Kinesis Analytics to write to the stream on your behalf.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceARN [ResourceARN] <p>ARN of the destination Amazon Kinesis Firehose delivery stream to write to.</p>
-- * RoleARN [RoleARN] <p>ARN of the IAM role that Amazon Kinesis Analytics can assume to write to the destination stream on your behalf. You need to grant the necessary permissions to this role.</p>
-- Required key: ResourceARN
-- Required key: RoleARN
-- @return KinesisFirehoseOutput structure as a key-value pair table
function M.KinesisFirehoseOutput(args)
	assert(args, "You must provdide an argument table when creating KinesisFirehoseOutput")
	local t = { 
		["ResourceARN"] = args["ResourceARN"],
		["RoleARN"] = args["RoleARN"],
	}
	asserts.AssertKinesisFirehoseOutput(t)
	return t
end

keys.KinesisStreamsOutput = { ["ResourceARN"] = true, ["RoleARN"] = true, nil }

function asserts.AssertKinesisStreamsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected KinesisStreamsOutput to be of type 'table'")
	assert(struct["ResourceARN"], "Expected key ResourceARN to exist in table")
	assert(struct["RoleARN"], "Expected key RoleARN to exist in table")
	if struct["ResourceARN"] then asserts.AssertResourceARN(struct["ResourceARN"]) end
	if struct["RoleARN"] then asserts.AssertRoleARN(struct["RoleARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.KinesisStreamsOutput[k], "KinesisStreamsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type KinesisStreamsOutput
-- <p>When configuring application output, identifies a Amazon Kinesis stream as the destination. You provide the stream Amazon Resource Name (ARN) and also an IAM role ARN that Amazon Kinesis Analytics can use to write to the stream on your behalf.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceARN [ResourceARN] <p>ARN of the destination Amazon Kinesis stream to write to.</p>
-- * RoleARN [RoleARN] <p>ARN of the IAM role that Amazon Kinesis Analytics can assume to write to the destination stream on your behalf. You need to grant the necessary permissions to this role.</p>
-- Required key: ResourceARN
-- Required key: RoleARN
-- @return KinesisStreamsOutput structure as a key-value pair table
function M.KinesisStreamsOutput(args)
	assert(args, "You must provdide an argument table when creating KinesisStreamsOutput")
	local t = { 
		["ResourceARN"] = args["ResourceARN"],
		["RoleARN"] = args["RoleARN"],
	}
	asserts.AssertKinesisStreamsOutput(t)
	return t
end

keys.DeleteApplicationResponse = { nil }

function asserts.AssertDeleteApplicationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteApplicationResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteApplicationResponse[k], "DeleteApplicationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteApplicationResponse
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteApplicationResponse structure as a key-value pair table
function M.DeleteApplicationResponse(args)
	assert(args, "You must provdide an argument table when creating DeleteApplicationResponse")
	local t = { 
	}
	asserts.AssertDeleteApplicationResponse(t)
	return t
end

keys.KinesisFirehoseInputUpdate = { ["RoleARNUpdate"] = true, ["ResourceARNUpdate"] = true, nil }

function asserts.AssertKinesisFirehoseInputUpdate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected KinesisFirehoseInputUpdate to be of type 'table'")
	if struct["RoleARNUpdate"] then asserts.AssertRoleARN(struct["RoleARNUpdate"]) end
	if struct["ResourceARNUpdate"] then asserts.AssertResourceARN(struct["ResourceARNUpdate"]) end
	for k,_ in pairs(struct) do
		assert(keys.KinesisFirehoseInputUpdate[k], "KinesisFirehoseInputUpdate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type KinesisFirehoseInputUpdate
-- <p>When updating application input configuration, provides information about an Amazon Kinesis Firehose delivery stream as the streaming source.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RoleARNUpdate [RoleARN] <p>Amazon Resource Name (ARN) of the IAM role that Amazon Kinesis Analytics can assume to access the stream on your behalf. You need to grant necessary permissions to this role.</p>
-- * ResourceARNUpdate [ResourceARN] <p>ARN of the input Amazon Kinesis Firehose delivery stream to read.</p>
-- @return KinesisFirehoseInputUpdate structure as a key-value pair table
function M.KinesisFirehoseInputUpdate(args)
	assert(args, "You must provdide an argument table when creating KinesisFirehoseInputUpdate")
	local t = { 
		["RoleARNUpdate"] = args["RoleARNUpdate"],
		["ResourceARNUpdate"] = args["ResourceARNUpdate"],
	}
	asserts.AssertKinesisFirehoseInputUpdate(t)
	return t
end

keys.AddApplicationReferenceDataSourceResponse = { nil }

function asserts.AssertAddApplicationReferenceDataSourceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddApplicationReferenceDataSourceResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.AddApplicationReferenceDataSourceResponse[k], "AddApplicationReferenceDataSourceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddApplicationReferenceDataSourceResponse
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return AddApplicationReferenceDataSourceResponse structure as a key-value pair table
function M.AddApplicationReferenceDataSourceResponse(args)
	assert(args, "You must provdide an argument table when creating AddApplicationReferenceDataSourceResponse")
	local t = { 
	}
	asserts.AssertAddApplicationReferenceDataSourceResponse(t)
	return t
end

keys.DeleteApplicationOutputRequest = { ["ApplicationName"] = true, ["OutputId"] = true, ["CurrentApplicationVersionId"] = true, nil }

function asserts.AssertDeleteApplicationOutputRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteApplicationOutputRequest to be of type 'table'")
	assert(struct["ApplicationName"], "Expected key ApplicationName to exist in table")
	assert(struct["CurrentApplicationVersionId"], "Expected key CurrentApplicationVersionId to exist in table")
	assert(struct["OutputId"], "Expected key OutputId to exist in table")
	if struct["ApplicationName"] then asserts.AssertApplicationName(struct["ApplicationName"]) end
	if struct["OutputId"] then asserts.AssertId(struct["OutputId"]) end
	if struct["CurrentApplicationVersionId"] then asserts.AssertApplicationVersionId(struct["CurrentApplicationVersionId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteApplicationOutputRequest[k], "DeleteApplicationOutputRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteApplicationOutputRequest
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplicationName [ApplicationName] <p>Amazon Kinesis Analytics application name.</p>
-- * OutputId [Id] <p>The ID of the configuration to delete. Each output configuration that is added to the application, either when the application is created or later using the <a>AddApplicationOutput</a> operation, has a unique ID. You need to provide the ID to uniquely identify the output configuration that you want to delete from the application configuration. You can use the <a>DescribeApplication</a> operation to get the specific <code>OutputId</code>. </p>
-- * CurrentApplicationVersionId [ApplicationVersionId] <p>Amazon Kinesis Analytics application version. You can use the <a>DescribeApplication</a> operation to get the current application version. If the version specified is not the current version, the <code>ConcurrentModificationException</code> is returned. </p>
-- Required key: ApplicationName
-- Required key: CurrentApplicationVersionId
-- Required key: OutputId
-- @return DeleteApplicationOutputRequest structure as a key-value pair table
function M.DeleteApplicationOutputRequest(args)
	assert(args, "You must provdide an argument table when creating DeleteApplicationOutputRequest")
	local t = { 
		["ApplicationName"] = args["ApplicationName"],
		["OutputId"] = args["OutputId"],
		["CurrentApplicationVersionId"] = args["CurrentApplicationVersionId"],
	}
	asserts.AssertDeleteApplicationOutputRequest(t)
	return t
end

keys.InputParallelism = { ["Count"] = true, nil }

function asserts.AssertInputParallelism(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InputParallelism to be of type 'table'")
	if struct["Count"] then asserts.AssertInputParallelismCount(struct["Count"]) end
	for k,_ in pairs(struct) do
		assert(keys.InputParallelism[k], "InputParallelism contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InputParallelism
-- <p>Describes the number of in-application streams to create for a given streaming source. For information about parallelism, see <a href="http://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-input.html">Configuring Application Input</a>. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Count [InputParallelismCount] <p>Number of in-application streams to create. For more information, see <a href="http://docs.aws.amazon.com/kinesisanalytics/latest/dev/limits.html">Limits</a>. </p>
-- @return InputParallelism structure as a key-value pair table
function M.InputParallelism(args)
	assert(args, "You must provdide an argument table when creating InputParallelism")
	local t = { 
		["Count"] = args["Count"],
	}
	asserts.AssertInputParallelism(t)
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
-- <p>Exceeded the number of applications allowed.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] <p/>
-- @return LimitExceededException structure as a key-value pair table
function M.LimitExceededException(args)
	assert(args, "You must provdide an argument table when creating LimitExceededException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertLimitExceededException(t)
	return t
end

keys.AddApplicationOutputResponse = { nil }

function asserts.AssertAddApplicationOutputResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddApplicationOutputResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.AddApplicationOutputResponse[k], "AddApplicationOutputResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddApplicationOutputResponse
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return AddApplicationOutputResponse structure as a key-value pair table
function M.AddApplicationOutputResponse(args)
	assert(args, "You must provdide an argument table when creating AddApplicationOutputResponse")
	local t = { 
	}
	asserts.AssertAddApplicationOutputResponse(t)
	return t
end

keys.InputConfiguration = { ["InputStartingPositionConfiguration"] = true, ["Id"] = true, nil }

function asserts.AssertInputConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InputConfiguration to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	assert(struct["InputStartingPositionConfiguration"], "Expected key InputStartingPositionConfiguration to exist in table")
	if struct["InputStartingPositionConfiguration"] then asserts.AssertInputStartingPositionConfiguration(struct["InputStartingPositionConfiguration"]) end
	if struct["Id"] then asserts.AssertId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.InputConfiguration[k], "InputConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InputConfiguration
-- <p>When you start your application, you provide this configuration, which identifies the input source and the point in the input source at which you want the application to start processing records.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InputStartingPositionConfiguration [InputStartingPositionConfiguration] <p>Point at which you want the application to start processing records from the streaming source.</p>
-- * Id [Id] <p>Input source ID. You can get this ID by calling the <a>DescribeApplication</a> operation.</p>
-- Required key: Id
-- Required key: InputStartingPositionConfiguration
-- @return InputConfiguration structure as a key-value pair table
function M.InputConfiguration(args)
	assert(args, "You must provdide an argument table when creating InputConfiguration")
	local t = { 
		["InputStartingPositionConfiguration"] = args["InputStartingPositionConfiguration"],
		["Id"] = args["Id"],
	}
	asserts.AssertInputConfiguration(t)
	return t
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
-- <p>Exception thrown as a result of concurrent modification to an application. For example, two individuals attempting to edit the same application at the same time.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] <p/>
-- @return ConcurrentModificationException structure as a key-value pair table
function M.ConcurrentModificationException(args)
	assert(args, "You must provdide an argument table when creating ConcurrentModificationException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertConcurrentModificationException(t)
	return t
end

keys.SourceSchema = { ["RecordColumns"] = true, ["RecordFormat"] = true, ["RecordEncoding"] = true, nil }

function asserts.AssertSourceSchema(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SourceSchema to be of type 'table'")
	assert(struct["RecordFormat"], "Expected key RecordFormat to exist in table")
	assert(struct["RecordColumns"], "Expected key RecordColumns to exist in table")
	if struct["RecordColumns"] then asserts.AssertRecordColumns(struct["RecordColumns"]) end
	if struct["RecordFormat"] then asserts.AssertRecordFormat(struct["RecordFormat"]) end
	if struct["RecordEncoding"] then asserts.AssertRecordEncoding(struct["RecordEncoding"]) end
	for k,_ in pairs(struct) do
		assert(keys.SourceSchema[k], "SourceSchema contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SourceSchema
-- <p>Describes the format of the data in the streaming source, and how each data element maps to corresponding columns created in the in-application stream.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RecordColumns [RecordColumns] <p>A list of <code>RecordColumn</code> objects.</p>
-- * RecordFormat [RecordFormat] <p>Specifies the format of the records on the streaming source.</p>
-- * RecordEncoding [RecordEncoding] <p>Specifies the encoding of the records in the streaming source. For example, UTF-8.</p>
-- Required key: RecordFormat
-- Required key: RecordColumns
-- @return SourceSchema structure as a key-value pair table
function M.SourceSchema(args)
	assert(args, "You must provdide an argument table when creating SourceSchema")
	local t = { 
		["RecordColumns"] = args["RecordColumns"],
		["RecordFormat"] = args["RecordFormat"],
		["RecordEncoding"] = args["RecordEncoding"],
	}
	asserts.AssertSourceSchema(t)
	return t
end

keys.CloudWatchLoggingOptionDescription = { ["CloudWatchLoggingOptionId"] = true, ["LogStreamARN"] = true, ["RoleARN"] = true, nil }

function asserts.AssertCloudWatchLoggingOptionDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CloudWatchLoggingOptionDescription to be of type 'table'")
	assert(struct["LogStreamARN"], "Expected key LogStreamARN to exist in table")
	assert(struct["RoleARN"], "Expected key RoleARN to exist in table")
	if struct["CloudWatchLoggingOptionId"] then asserts.AssertId(struct["CloudWatchLoggingOptionId"]) end
	if struct["LogStreamARN"] then asserts.AssertLogStreamARN(struct["LogStreamARN"]) end
	if struct["RoleARN"] then asserts.AssertRoleARN(struct["RoleARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.CloudWatchLoggingOptionDescription[k], "CloudWatchLoggingOptionDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CloudWatchLoggingOptionDescription
-- <p>Description of the CloudWatch logging option.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CloudWatchLoggingOptionId [Id] <p>ID of the CloudWatch logging option description.</p>
-- * LogStreamARN [LogStreamARN] <p>ARN of the CloudWatch log to receive application messages.</p>
-- * RoleARN [RoleARN] <p>IAM ARN of the role to use to send application messages. Note: To write application messages to CloudWatch, the IAM role used must have the <code>PutLogEvents</code> policy action enabled.</p>
-- Required key: LogStreamARN
-- Required key: RoleARN
-- @return CloudWatchLoggingOptionDescription structure as a key-value pair table
function M.CloudWatchLoggingOptionDescription(args)
	assert(args, "You must provdide an argument table when creating CloudWatchLoggingOptionDescription")
	local t = { 
		["CloudWatchLoggingOptionId"] = args["CloudWatchLoggingOptionId"],
		["LogStreamARN"] = args["LogStreamARN"],
		["RoleARN"] = args["RoleARN"],
	}
	asserts.AssertCloudWatchLoggingOptionDescription(t)
	return t
end

keys.ApplicationSummary = { ["ApplicationName"] = true, ["ApplicationStatus"] = true, ["ApplicationARN"] = true, nil }

function asserts.AssertApplicationSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ApplicationSummary to be of type 'table'")
	assert(struct["ApplicationName"], "Expected key ApplicationName to exist in table")
	assert(struct["ApplicationARN"], "Expected key ApplicationARN to exist in table")
	assert(struct["ApplicationStatus"], "Expected key ApplicationStatus to exist in table")
	if struct["ApplicationName"] then asserts.AssertApplicationName(struct["ApplicationName"]) end
	if struct["ApplicationStatus"] then asserts.AssertApplicationStatus(struct["ApplicationStatus"]) end
	if struct["ApplicationARN"] then asserts.AssertResourceARN(struct["ApplicationARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.ApplicationSummary[k], "ApplicationSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ApplicationSummary
-- <p>Provides application summary information, including the application Amazon Resource Name (ARN), name, and status.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplicationName [ApplicationName] <p>Name of the application.</p>
-- * ApplicationStatus [ApplicationStatus] <p>Status of the application.</p>
-- * ApplicationARN [ResourceARN] <p>ARN of the application.</p>
-- Required key: ApplicationName
-- Required key: ApplicationARN
-- Required key: ApplicationStatus
-- @return ApplicationSummary structure as a key-value pair table
function M.ApplicationSummary(args)
	assert(args, "You must provdide an argument table when creating ApplicationSummary")
	local t = { 
		["ApplicationName"] = args["ApplicationName"],
		["ApplicationStatus"] = args["ApplicationStatus"],
		["ApplicationARN"] = args["ApplicationARN"],
	}
	asserts.AssertApplicationSummary(t)
	return t
end

keys.DescribeApplicationResponse = { ["ApplicationDetail"] = true, nil }

function asserts.AssertDescribeApplicationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeApplicationResponse to be of type 'table'")
	assert(struct["ApplicationDetail"], "Expected key ApplicationDetail to exist in table")
	if struct["ApplicationDetail"] then asserts.AssertApplicationDetail(struct["ApplicationDetail"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeApplicationResponse[k], "DescribeApplicationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeApplicationResponse
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplicationDetail [ApplicationDetail] <p>Provides a description of the application, such as the application Amazon Resource Name (ARN), status, latest version, and input and output configuration details.</p>
-- Required key: ApplicationDetail
-- @return DescribeApplicationResponse structure as a key-value pair table
function M.DescribeApplicationResponse(args)
	assert(args, "You must provdide an argument table when creating DescribeApplicationResponse")
	local t = { 
		["ApplicationDetail"] = args["ApplicationDetail"],
	}
	asserts.AssertDescribeApplicationResponse(t)
	return t
end

keys.DeleteApplicationCloudWatchLoggingOptionRequest = { ["ApplicationName"] = true, ["CloudWatchLoggingOptionId"] = true, ["CurrentApplicationVersionId"] = true, nil }

function asserts.AssertDeleteApplicationCloudWatchLoggingOptionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteApplicationCloudWatchLoggingOptionRequest to be of type 'table'")
	assert(struct["ApplicationName"], "Expected key ApplicationName to exist in table")
	assert(struct["CurrentApplicationVersionId"], "Expected key CurrentApplicationVersionId to exist in table")
	assert(struct["CloudWatchLoggingOptionId"], "Expected key CloudWatchLoggingOptionId to exist in table")
	if struct["ApplicationName"] then asserts.AssertApplicationName(struct["ApplicationName"]) end
	if struct["CloudWatchLoggingOptionId"] then asserts.AssertId(struct["CloudWatchLoggingOptionId"]) end
	if struct["CurrentApplicationVersionId"] then asserts.AssertApplicationVersionId(struct["CurrentApplicationVersionId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteApplicationCloudWatchLoggingOptionRequest[k], "DeleteApplicationCloudWatchLoggingOptionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteApplicationCloudWatchLoggingOptionRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplicationName [ApplicationName] <p>The Amazon Kinesis Analytics application name.</p>
-- * CloudWatchLoggingOptionId [Id] <p>The <code>CloudWatchLoggingOptionId</code> of the CloudWatch logging option to delete. You can use the <a>DescribeApplication</a> operation to get the <code>CloudWatchLoggingOptionId</code>. </p>
-- * CurrentApplicationVersionId [ApplicationVersionId] <p>The version ID of the Amazon Kinesis Analytics application.</p>
-- Required key: ApplicationName
-- Required key: CurrentApplicationVersionId
-- Required key: CloudWatchLoggingOptionId
-- @return DeleteApplicationCloudWatchLoggingOptionRequest structure as a key-value pair table
function M.DeleteApplicationCloudWatchLoggingOptionRequest(args)
	assert(args, "You must provdide an argument table when creating DeleteApplicationCloudWatchLoggingOptionRequest")
	local t = { 
		["ApplicationName"] = args["ApplicationName"],
		["CloudWatchLoggingOptionId"] = args["CloudWatchLoggingOptionId"],
		["CurrentApplicationVersionId"] = args["CurrentApplicationVersionId"],
	}
	asserts.AssertDeleteApplicationCloudWatchLoggingOptionRequest(t)
	return t
end

keys.S3ReferenceDataSource = { ["FileKey"] = true, ["ReferenceRoleARN"] = true, ["BucketARN"] = true, nil }

function asserts.AssertS3ReferenceDataSource(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected S3ReferenceDataSource to be of type 'table'")
	assert(struct["BucketARN"], "Expected key BucketARN to exist in table")
	assert(struct["FileKey"], "Expected key FileKey to exist in table")
	assert(struct["ReferenceRoleARN"], "Expected key ReferenceRoleARN to exist in table")
	if struct["FileKey"] then asserts.AssertFileKey(struct["FileKey"]) end
	if struct["ReferenceRoleARN"] then asserts.AssertRoleARN(struct["ReferenceRoleARN"]) end
	if struct["BucketARN"] then asserts.AssertBucketARN(struct["BucketARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.S3ReferenceDataSource[k], "S3ReferenceDataSource contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type S3ReferenceDataSource
-- <p>Identifies the S3 bucket and object that contains the reference data. Also identifies the IAM role Amazon Kinesis Analytics can assume to read this object on your behalf.</p> <p>An Amazon Kinesis Analytics application loads reference data only once. If the data changes, you call the <a>UpdateApplication</a> operation to trigger reloading of data into your application.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FileKey [FileKey] <p>Object key name containing reference data.</p>
-- * ReferenceRoleARN [RoleARN] <p>ARN of the IAM role that the service can assume to read data on your behalf. This role must have permission for the <code>s3:GetObject</code> action on the object and trust policy that allows Amazon Kinesis Analytics service principal to assume this role.</p>
-- * BucketARN [BucketARN] <p>Amazon Resource Name (ARN) of the S3 bucket.</p>
-- Required key: BucketARN
-- Required key: FileKey
-- Required key: ReferenceRoleARN
-- @return S3ReferenceDataSource structure as a key-value pair table
function M.S3ReferenceDataSource(args)
	assert(args, "You must provdide an argument table when creating S3ReferenceDataSource")
	local t = { 
		["FileKey"] = args["FileKey"],
		["ReferenceRoleARN"] = args["ReferenceRoleARN"],
		["BucketARN"] = args["BucketARN"],
	}
	asserts.AssertS3ReferenceDataSource(t)
	return t
end

keys.AddApplicationInputRequest = { ["ApplicationName"] = true, ["Input"] = true, ["CurrentApplicationVersionId"] = true, nil }

function asserts.AssertAddApplicationInputRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddApplicationInputRequest to be of type 'table'")
	assert(struct["ApplicationName"], "Expected key ApplicationName to exist in table")
	assert(struct["CurrentApplicationVersionId"], "Expected key CurrentApplicationVersionId to exist in table")
	assert(struct["Input"], "Expected key Input to exist in table")
	if struct["ApplicationName"] then asserts.AssertApplicationName(struct["ApplicationName"]) end
	if struct["Input"] then asserts.AssertInput(struct["Input"]) end
	if struct["CurrentApplicationVersionId"] then asserts.AssertApplicationVersionId(struct["CurrentApplicationVersionId"]) end
	for k,_ in pairs(struct) do
		assert(keys.AddApplicationInputRequest[k], "AddApplicationInputRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddApplicationInputRequest
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplicationName [ApplicationName] <p>Name of your existing Amazon Kinesis Analytics application to which you want to add the streaming source.</p>
-- * Input [Input] <p/>
-- * CurrentApplicationVersionId [ApplicationVersionId] <p>Current version of your Amazon Kinesis Analytics application. You can use the <a>DescribeApplication</a> operation to find the current application version.</p>
-- Required key: ApplicationName
-- Required key: CurrentApplicationVersionId
-- Required key: Input
-- @return AddApplicationInputRequest structure as a key-value pair table
function M.AddApplicationInputRequest(args)
	assert(args, "You must provdide an argument table when creating AddApplicationInputRequest")
	local t = { 
		["ApplicationName"] = args["ApplicationName"],
		["Input"] = args["Input"],
		["CurrentApplicationVersionId"] = args["CurrentApplicationVersionId"],
	}
	asserts.AssertAddApplicationInputRequest(t)
	return t
end

keys.AddApplicationOutputRequest = { ["ApplicationName"] = true, ["Output"] = true, ["CurrentApplicationVersionId"] = true, nil }

function asserts.AssertAddApplicationOutputRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddApplicationOutputRequest to be of type 'table'")
	assert(struct["ApplicationName"], "Expected key ApplicationName to exist in table")
	assert(struct["CurrentApplicationVersionId"], "Expected key CurrentApplicationVersionId to exist in table")
	assert(struct["Output"], "Expected key Output to exist in table")
	if struct["ApplicationName"] then asserts.AssertApplicationName(struct["ApplicationName"]) end
	if struct["Output"] then asserts.AssertOutput(struct["Output"]) end
	if struct["CurrentApplicationVersionId"] then asserts.AssertApplicationVersionId(struct["CurrentApplicationVersionId"]) end
	for k,_ in pairs(struct) do
		assert(keys.AddApplicationOutputRequest[k], "AddApplicationOutputRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddApplicationOutputRequest
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplicationName [ApplicationName] <p>Name of the application to which you want to add the output configuration.</p>
-- * Output [Output] <p>An array of objects, each describing one output configuration. In the output configuration, you specify the name of an in-application stream, a destination (that is, an Amazon Kinesis stream or an Amazon Kinesis Firehose delivery stream), and record the formation to use when writing to the destination.</p>
-- * CurrentApplicationVersionId [ApplicationVersionId] <p>Version of the application to which you want add the output configuration. You can use the <a>DescribeApplication</a> operation to get the current application version. If the version specified is not the current version, the <code>ConcurrentModificationException</code> is returned. </p>
-- Required key: ApplicationName
-- Required key: CurrentApplicationVersionId
-- Required key: Output
-- @return AddApplicationOutputRequest structure as a key-value pair table
function M.AddApplicationOutputRequest(args)
	assert(args, "You must provdide an argument table when creating AddApplicationOutputRequest")
	local t = { 
		["ApplicationName"] = args["ApplicationName"],
		["Output"] = args["Output"],
		["CurrentApplicationVersionId"] = args["CurrentApplicationVersionId"],
	}
	asserts.AssertAddApplicationOutputRequest(t)
	return t
end

keys.UnableToDetectSchemaException = { ["message"] = true, ["RawInputRecords"] = true, nil }

function asserts.AssertUnableToDetectSchemaException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnableToDetectSchemaException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	if struct["RawInputRecords"] then asserts.AssertRawInputRecords(struct["RawInputRecords"]) end
	for k,_ in pairs(struct) do
		assert(keys.UnableToDetectSchemaException[k], "UnableToDetectSchemaException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnableToDetectSchemaException
-- <p>Data format is not valid, Amazon Kinesis Analytics is not able to detect schema for the given streaming source.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] 
-- * RawInputRecords [RawInputRecords] 
-- @return UnableToDetectSchemaException structure as a key-value pair table
function M.UnableToDetectSchemaException(args)
	assert(args, "You must provdide an argument table when creating UnableToDetectSchemaException")
	local t = { 
		["message"] = args["message"],
		["RawInputRecords"] = args["RawInputRecords"],
	}
	asserts.AssertUnableToDetectSchemaException(t)
	return t
end

keys.KinesisStreamsOutputUpdate = { ["RoleARNUpdate"] = true, ["ResourceARNUpdate"] = true, nil }

function asserts.AssertKinesisStreamsOutputUpdate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected KinesisStreamsOutputUpdate to be of type 'table'")
	if struct["RoleARNUpdate"] then asserts.AssertRoleARN(struct["RoleARNUpdate"]) end
	if struct["ResourceARNUpdate"] then asserts.AssertResourceARN(struct["ResourceARNUpdate"]) end
	for k,_ in pairs(struct) do
		assert(keys.KinesisStreamsOutputUpdate[k], "KinesisStreamsOutputUpdate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type KinesisStreamsOutputUpdate
-- <p> When updating an output configuration using the <a>UpdateApplication</a> operation, provides information about an Amazon Kinesis stream configured as the destination. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RoleARNUpdate [RoleARN] <p>ARN of the IAM role that Amazon Kinesis Analytics can assume to access the stream on your behalf. You need to grant the necessary permissions to this role.</p>
-- * ResourceARNUpdate [ResourceARN] <p>Amazon Resource Name (ARN) of the Amazon Kinesis stream where you want to write the output.</p>
-- @return KinesisStreamsOutputUpdate structure as a key-value pair table
function M.KinesisStreamsOutputUpdate(args)
	assert(args, "You must provdide an argument table when creating KinesisStreamsOutputUpdate")
	local t = { 
		["RoleARNUpdate"] = args["RoleARNUpdate"],
		["ResourceARNUpdate"] = args["ResourceARNUpdate"],
	}
	asserts.AssertKinesisStreamsOutputUpdate(t)
	return t
end

keys.AddApplicationCloudWatchLoggingOptionResponse = { nil }

function asserts.AssertAddApplicationCloudWatchLoggingOptionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddApplicationCloudWatchLoggingOptionResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.AddApplicationCloudWatchLoggingOptionResponse[k], "AddApplicationCloudWatchLoggingOptionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddApplicationCloudWatchLoggingOptionResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return AddApplicationCloudWatchLoggingOptionResponse structure as a key-value pair table
function M.AddApplicationCloudWatchLoggingOptionResponse(args)
	assert(args, "You must provdide an argument table when creating AddApplicationCloudWatchLoggingOptionResponse")
	local t = { 
	}
	asserts.AssertAddApplicationCloudWatchLoggingOptionResponse(t)
	return t
end

keys.KinesisFirehoseOutputUpdate = { ["RoleARNUpdate"] = true, ["ResourceARNUpdate"] = true, nil }

function asserts.AssertKinesisFirehoseOutputUpdate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected KinesisFirehoseOutputUpdate to be of type 'table'")
	if struct["RoleARNUpdate"] then asserts.AssertRoleARN(struct["RoleARNUpdate"]) end
	if struct["ResourceARNUpdate"] then asserts.AssertResourceARN(struct["ResourceARNUpdate"]) end
	for k,_ in pairs(struct) do
		assert(keys.KinesisFirehoseOutputUpdate[k], "KinesisFirehoseOutputUpdate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type KinesisFirehoseOutputUpdate
-- <p> When updating an output configuration using the <a>UpdateApplication</a> operation, provides information about an Amazon Kinesis Firehose delivery stream configured as the destination. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RoleARNUpdate [RoleARN] <p>ARN of the IAM role that Amazon Kinesis Analytics can assume to access the stream on your behalf. You need to grant necessary permissions to this role.</p>
-- * ResourceARNUpdate [ResourceARN] <p>Amazon Resource Name (ARN) of the Amazon Kinesis Firehose delivery stream to write to.</p>
-- @return KinesisFirehoseOutputUpdate structure as a key-value pair table
function M.KinesisFirehoseOutputUpdate(args)
	assert(args, "You must provdide an argument table when creating KinesisFirehoseOutputUpdate")
	local t = { 
		["RoleARNUpdate"] = args["RoleARNUpdate"],
		["ResourceARNUpdate"] = args["ResourceARNUpdate"],
	}
	asserts.AssertKinesisFirehoseOutputUpdate(t)
	return t
end

keys.StopApplicationResponse = { nil }

function asserts.AssertStopApplicationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopApplicationResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.StopApplicationResponse[k], "StopApplicationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopApplicationResponse
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return StopApplicationResponse structure as a key-value pair table
function M.StopApplicationResponse(args)
	assert(args, "You must provdide an argument table when creating StopApplicationResponse")
	local t = { 
	}
	asserts.AssertStopApplicationResponse(t)
	return t
end

keys.DeleteApplicationRequest = { ["ApplicationName"] = true, ["CreateTimestamp"] = true, nil }

function asserts.AssertDeleteApplicationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteApplicationRequest to be of type 'table'")
	assert(struct["ApplicationName"], "Expected key ApplicationName to exist in table")
	assert(struct["CreateTimestamp"], "Expected key CreateTimestamp to exist in table")
	if struct["ApplicationName"] then asserts.AssertApplicationName(struct["ApplicationName"]) end
	if struct["CreateTimestamp"] then asserts.AssertTimestamp(struct["CreateTimestamp"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteApplicationRequest[k], "DeleteApplicationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteApplicationRequest
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplicationName [ApplicationName] <p>Name of the Amazon Kinesis Analytics application to delete.</p>
-- * CreateTimestamp [Timestamp] <p> You can use the <code>DescribeApplication</code> operation to get this value. </p>
-- Required key: ApplicationName
-- Required key: CreateTimestamp
-- @return DeleteApplicationRequest structure as a key-value pair table
function M.DeleteApplicationRequest(args)
	assert(args, "You must provdide an argument table when creating DeleteApplicationRequest")
	local t = { 
		["ApplicationName"] = args["ApplicationName"],
		["CreateTimestamp"] = args["CreateTimestamp"],
	}
	asserts.AssertDeleteApplicationRequest(t)
	return t
end

keys.StopApplicationRequest = { ["ApplicationName"] = true, nil }

function asserts.AssertStopApplicationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopApplicationRequest to be of type 'table'")
	assert(struct["ApplicationName"], "Expected key ApplicationName to exist in table")
	if struct["ApplicationName"] then asserts.AssertApplicationName(struct["ApplicationName"]) end
	for k,_ in pairs(struct) do
		assert(keys.StopApplicationRequest[k], "StopApplicationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopApplicationRequest
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplicationName [ApplicationName] <p>Name of the running application to stop.</p>
-- Required key: ApplicationName
-- @return StopApplicationRequest structure as a key-value pair table
function M.StopApplicationRequest(args)
	assert(args, "You must provdide an argument table when creating StopApplicationRequest")
	local t = { 
		["ApplicationName"] = args["ApplicationName"],
	}
	asserts.AssertStopApplicationRequest(t)
	return t
end

keys.Input = { ["InputParallelism"] = true, ["KinesisFirehoseInput"] = true, ["KinesisStreamsInput"] = true, ["InputSchema"] = true, ["NamePrefix"] = true, nil }

function asserts.AssertInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Input to be of type 'table'")
	assert(struct["NamePrefix"], "Expected key NamePrefix to exist in table")
	assert(struct["InputSchema"], "Expected key InputSchema to exist in table")
	if struct["InputParallelism"] then asserts.AssertInputParallelism(struct["InputParallelism"]) end
	if struct["KinesisFirehoseInput"] then asserts.AssertKinesisFirehoseInput(struct["KinesisFirehoseInput"]) end
	if struct["KinesisStreamsInput"] then asserts.AssertKinesisStreamsInput(struct["KinesisStreamsInput"]) end
	if struct["InputSchema"] then asserts.AssertSourceSchema(struct["InputSchema"]) end
	if struct["NamePrefix"] then asserts.AssertInAppStreamName(struct["NamePrefix"]) end
	for k,_ in pairs(struct) do
		assert(keys.Input[k], "Input contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Input
-- <p>When you configure the application input, you specify the streaming source, the in-application stream name that is created, and the mapping between the two. For more information, see <a href="http://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-input.html">Configuring Application Input</a>. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InputParallelism [InputParallelism] <p>Describes the number of in-application streams to create. </p> <p>Data from your source will be routed to these in-application input streams.</p> <p> (see <a href="http://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-input.html">Configuring Application Input</a>.</p>
-- * KinesisFirehoseInput [KinesisFirehoseInput] <p>If the streaming source is an Amazon Kinesis Firehose delivery stream, identifies the Firehose delivery stream's ARN and an IAM role that enables Amazon Kinesis Analytics to access the stream on your behalf.</p>
-- * KinesisStreamsInput [KinesisStreamsInput] <p>If the streaming source is an Amazon Kinesis stream, identifies the stream's Amazon Resource Name (ARN) and an IAM role that enables Amazon Kinesis Analytics to access the stream on your behalf.</p>
-- * InputSchema [SourceSchema] <p>Describes the format of the data in the streaming source, and how each data element maps to corresponding columns in the in-application stream that is being created.</p> <p>Also used to describe the format of the reference data source.</p>
-- * NamePrefix [InAppStreamName] <p>Name prefix to use when creating in-application stream. Suppose you specify a prefix "MyInApplicationStream". Amazon Kinesis Analytics will then create one or more (as per the <code>InputParallelism</code> count you specified) in-application streams with names "MyInApplicationStream_001", "MyInApplicationStream_002" and so on. </p>
-- Required key: NamePrefix
-- Required key: InputSchema
-- @return Input structure as a key-value pair table
function M.Input(args)
	assert(args, "You must provdide an argument table when creating Input")
	local t = { 
		["InputParallelism"] = args["InputParallelism"],
		["KinesisFirehoseInput"] = args["KinesisFirehoseInput"],
		["KinesisStreamsInput"] = args["KinesisStreamsInput"],
		["InputSchema"] = args["InputSchema"],
		["NamePrefix"] = args["NamePrefix"],
	}
	asserts.AssertInput(t)
	return t
end

keys.AddApplicationCloudWatchLoggingOptionRequest = { ["ApplicationName"] = true, ["CloudWatchLoggingOption"] = true, ["CurrentApplicationVersionId"] = true, nil }

function asserts.AssertAddApplicationCloudWatchLoggingOptionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddApplicationCloudWatchLoggingOptionRequest to be of type 'table'")
	assert(struct["ApplicationName"], "Expected key ApplicationName to exist in table")
	assert(struct["CurrentApplicationVersionId"], "Expected key CurrentApplicationVersionId to exist in table")
	assert(struct["CloudWatchLoggingOption"], "Expected key CloudWatchLoggingOption to exist in table")
	if struct["ApplicationName"] then asserts.AssertApplicationName(struct["ApplicationName"]) end
	if struct["CloudWatchLoggingOption"] then asserts.AssertCloudWatchLoggingOption(struct["CloudWatchLoggingOption"]) end
	if struct["CurrentApplicationVersionId"] then asserts.AssertApplicationVersionId(struct["CurrentApplicationVersionId"]) end
	for k,_ in pairs(struct) do
		assert(keys.AddApplicationCloudWatchLoggingOptionRequest[k], "AddApplicationCloudWatchLoggingOptionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddApplicationCloudWatchLoggingOptionRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplicationName [ApplicationName] <p>The Amazon Kinesis Analytics application name.</p>
-- * CloudWatchLoggingOption [CloudWatchLoggingOption] <p>Provide the CloudWatch log stream ARN and the IAM role ARN. Note: To write application messages to CloudWatch, the IAM role used must have the <code>PutLogEvents</code> policy action enabled. </p>
-- * CurrentApplicationVersionId [ApplicationVersionId] <p>The version ID of the Amazon Kinesis Analytics application.</p>
-- Required key: ApplicationName
-- Required key: CurrentApplicationVersionId
-- Required key: CloudWatchLoggingOption
-- @return AddApplicationCloudWatchLoggingOptionRequest structure as a key-value pair table
function M.AddApplicationCloudWatchLoggingOptionRequest(args)
	assert(args, "You must provdide an argument table when creating AddApplicationCloudWatchLoggingOptionRequest")
	local t = { 
		["ApplicationName"] = args["ApplicationName"],
		["CloudWatchLoggingOption"] = args["CloudWatchLoggingOption"],
		["CurrentApplicationVersionId"] = args["CurrentApplicationVersionId"],
	}
	asserts.AssertAddApplicationCloudWatchLoggingOptionRequest(t)
	return t
end

keys.ReferenceDataSourceUpdate = { ["ReferenceSchemaUpdate"] = true, ["ReferenceId"] = true, ["TableNameUpdate"] = true, ["S3ReferenceDataSourceUpdate"] = true, nil }

function asserts.AssertReferenceDataSourceUpdate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReferenceDataSourceUpdate to be of type 'table'")
	assert(struct["ReferenceId"], "Expected key ReferenceId to exist in table")
	if struct["ReferenceSchemaUpdate"] then asserts.AssertSourceSchema(struct["ReferenceSchemaUpdate"]) end
	if struct["ReferenceId"] then asserts.AssertId(struct["ReferenceId"]) end
	if struct["TableNameUpdate"] then asserts.AssertInAppTableName(struct["TableNameUpdate"]) end
	if struct["S3ReferenceDataSourceUpdate"] then asserts.AssertS3ReferenceDataSourceUpdate(struct["S3ReferenceDataSourceUpdate"]) end
	for k,_ in pairs(struct) do
		assert(keys.ReferenceDataSourceUpdate[k], "ReferenceDataSourceUpdate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReferenceDataSourceUpdate
-- <p>When you update a reference data source configuration for an application, this object provides all the updated values (such as the source bucket name and object key name), the in-application table name that is created, and updated mapping information that maps the data in the Amazon S3 object to the in-application reference table that is created.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ReferenceSchemaUpdate [SourceSchema] 
-- * ReferenceId [Id] <p>ID of the reference data source being updated. You can use the <a>DescribeApplication</a> operation to get this value.</p>
-- * TableNameUpdate [InAppTableName] <p>In-application table name that is created by this update.</p>
-- * S3ReferenceDataSourceUpdate [S3ReferenceDataSourceUpdate] <p>Describes the S3 bucket name, object key name, and IAM role that Amazon Kinesis Analytics can assume to read the Amazon S3 object on your behalf and populate the in-application reference table.</p>
-- Required key: ReferenceId
-- @return ReferenceDataSourceUpdate structure as a key-value pair table
function M.ReferenceDataSourceUpdate(args)
	assert(args, "You must provdide an argument table when creating ReferenceDataSourceUpdate")
	local t = { 
		["ReferenceSchemaUpdate"] = args["ReferenceSchemaUpdate"],
		["ReferenceId"] = args["ReferenceId"],
		["TableNameUpdate"] = args["TableNameUpdate"],
		["S3ReferenceDataSourceUpdate"] = args["S3ReferenceDataSourceUpdate"],
	}
	asserts.AssertReferenceDataSourceUpdate(t)
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
-- <p>Application is not available for this operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] <p/>
-- @return ResourceInUseException structure as a key-value pair table
function M.ResourceInUseException(args)
	assert(args, "You must provdide an argument table when creating ResourceInUseException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertResourceInUseException(t)
	return t
end

keys.DeleteApplicationOutputResponse = { nil }

function asserts.AssertDeleteApplicationOutputResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteApplicationOutputResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteApplicationOutputResponse[k], "DeleteApplicationOutputResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteApplicationOutputResponse
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteApplicationOutputResponse structure as a key-value pair table
function M.DeleteApplicationOutputResponse(args)
	assert(args, "You must provdide an argument table when creating DeleteApplicationOutputResponse")
	local t = { 
	}
	asserts.AssertDeleteApplicationOutputResponse(t)
	return t
end

keys.S3ReferenceDataSourceUpdate = { ["FileKeyUpdate"] = true, ["ReferenceRoleARNUpdate"] = true, ["BucketARNUpdate"] = true, nil }

function asserts.AssertS3ReferenceDataSourceUpdate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected S3ReferenceDataSourceUpdate to be of type 'table'")
	if struct["FileKeyUpdate"] then asserts.AssertFileKey(struct["FileKeyUpdate"]) end
	if struct["ReferenceRoleARNUpdate"] then asserts.AssertRoleARN(struct["ReferenceRoleARNUpdate"]) end
	if struct["BucketARNUpdate"] then asserts.AssertBucketARN(struct["BucketARNUpdate"]) end
	for k,_ in pairs(struct) do
		assert(keys.S3ReferenceDataSourceUpdate[k], "S3ReferenceDataSourceUpdate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type S3ReferenceDataSourceUpdate
-- <p>Describes the S3 bucket name, object key name, and IAM role that Amazon Kinesis Analytics can assume to read the Amazon S3 object on your behalf and populate the in-application reference table.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FileKeyUpdate [FileKey] <p>Object key name.</p>
-- * ReferenceRoleARNUpdate [RoleARN] <p>ARN of the IAM role that Amazon Kinesis Analytics can assume to read the Amazon S3 object and populate the in-application.</p>
-- * BucketARNUpdate [BucketARN] <p>Amazon Resource Name (ARN) of the S3 bucket.</p>
-- @return S3ReferenceDataSourceUpdate structure as a key-value pair table
function M.S3ReferenceDataSourceUpdate(args)
	assert(args, "You must provdide an argument table when creating S3ReferenceDataSourceUpdate")
	local t = { 
		["FileKeyUpdate"] = args["FileKeyUpdate"],
		["ReferenceRoleARNUpdate"] = args["ReferenceRoleARNUpdate"],
		["BucketARNUpdate"] = args["BucketARNUpdate"],
	}
	asserts.AssertS3ReferenceDataSourceUpdate(t)
	return t
end

keys.UpdateApplicationResponse = { nil }

function asserts.AssertUpdateApplicationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateApplicationResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.UpdateApplicationResponse[k], "UpdateApplicationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateApplicationResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return UpdateApplicationResponse structure as a key-value pair table
function M.UpdateApplicationResponse(args)
	assert(args, "You must provdide an argument table when creating UpdateApplicationResponse")
	local t = { 
	}
	asserts.AssertUpdateApplicationResponse(t)
	return t
end

keys.KinesisStreamsOutputDescription = { ["ResourceARN"] = true, ["RoleARN"] = true, nil }

function asserts.AssertKinesisStreamsOutputDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected KinesisStreamsOutputDescription to be of type 'table'")
	if struct["ResourceARN"] then asserts.AssertResourceARN(struct["ResourceARN"]) end
	if struct["RoleARN"] then asserts.AssertRoleARN(struct["RoleARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.KinesisStreamsOutputDescription[k], "KinesisStreamsOutputDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type KinesisStreamsOutputDescription
-- <p> For an application output, describes the Amazon Kinesis stream configured as its destination. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceARN [ResourceARN] <p>Amazon Resource Name (ARN) of the Amazon Kinesis stream.</p>
-- * RoleARN [RoleARN] <p>ARN of the IAM role that Amazon Kinesis Analytics can assume to access the stream.</p>
-- @return KinesisStreamsOutputDescription structure as a key-value pair table
function M.KinesisStreamsOutputDescription(args)
	assert(args, "You must provdide an argument table when creating KinesisStreamsOutputDescription")
	local t = { 
		["ResourceARN"] = args["ResourceARN"],
		["RoleARN"] = args["RoleARN"],
	}
	asserts.AssertKinesisStreamsOutputDescription(t)
	return t
end

keys.CloudWatchLoggingOptionUpdate = { ["CloudWatchLoggingOptionId"] = true, ["LogStreamARNUpdate"] = true, ["RoleARNUpdate"] = true, nil }

function asserts.AssertCloudWatchLoggingOptionUpdate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CloudWatchLoggingOptionUpdate to be of type 'table'")
	assert(struct["CloudWatchLoggingOptionId"], "Expected key CloudWatchLoggingOptionId to exist in table")
	if struct["CloudWatchLoggingOptionId"] then asserts.AssertId(struct["CloudWatchLoggingOptionId"]) end
	if struct["LogStreamARNUpdate"] then asserts.AssertLogStreamARN(struct["LogStreamARNUpdate"]) end
	if struct["RoleARNUpdate"] then asserts.AssertRoleARN(struct["RoleARNUpdate"]) end
	for k,_ in pairs(struct) do
		assert(keys.CloudWatchLoggingOptionUpdate[k], "CloudWatchLoggingOptionUpdate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CloudWatchLoggingOptionUpdate
-- <p>Describes CloudWatch logging option updates.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CloudWatchLoggingOptionId [Id] <p>ID of the CloudWatch logging option to update</p>
-- * LogStreamARNUpdate [LogStreamARN] <p>ARN of the CloudWatch log to receive application messages.</p>
-- * RoleARNUpdate [RoleARN] <p>IAM ARN of the role to use to send application messages. Note: To write application messages to CloudWatch, the IAM role used must have the <code>PutLogEvents</code> policy action enabled.</p>
-- Required key: CloudWatchLoggingOptionId
-- @return CloudWatchLoggingOptionUpdate structure as a key-value pair table
function M.CloudWatchLoggingOptionUpdate(args)
	assert(args, "You must provdide an argument table when creating CloudWatchLoggingOptionUpdate")
	local t = { 
		["CloudWatchLoggingOptionId"] = args["CloudWatchLoggingOptionId"],
		["LogStreamARNUpdate"] = args["LogStreamARNUpdate"],
		["RoleARNUpdate"] = args["RoleARNUpdate"],
	}
	asserts.AssertCloudWatchLoggingOptionUpdate(t)
	return t
end

keys.InputUpdate = { ["KinesisFirehoseInputUpdate"] = true, ["InputSchemaUpdate"] = true, ["NamePrefixUpdate"] = true, ["InputId"] = true, ["InputParallelismUpdate"] = true, ["KinesisStreamsInputUpdate"] = true, nil }

function asserts.AssertInputUpdate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InputUpdate to be of type 'table'")
	assert(struct["InputId"], "Expected key InputId to exist in table")
	if struct["KinesisFirehoseInputUpdate"] then asserts.AssertKinesisFirehoseInputUpdate(struct["KinesisFirehoseInputUpdate"]) end
	if struct["InputSchemaUpdate"] then asserts.AssertInputSchemaUpdate(struct["InputSchemaUpdate"]) end
	if struct["NamePrefixUpdate"] then asserts.AssertInAppStreamName(struct["NamePrefixUpdate"]) end
	if struct["InputId"] then asserts.AssertId(struct["InputId"]) end
	if struct["InputParallelismUpdate"] then asserts.AssertInputParallelismUpdate(struct["InputParallelismUpdate"]) end
	if struct["KinesisStreamsInputUpdate"] then asserts.AssertKinesisStreamsInputUpdate(struct["KinesisStreamsInputUpdate"]) end
	for k,_ in pairs(struct) do
		assert(keys.InputUpdate[k], "InputUpdate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InputUpdate
-- <p>Describes updates to a specific input configuration (identified by the <code>InputId</code> of an application). </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * KinesisFirehoseInputUpdate [KinesisFirehoseInputUpdate] <p>If an Amazon Kinesis Firehose delivery stream is the streaming source to be updated, provides an updated stream Amazon Resource Name (ARN) and IAM role ARN.</p>
-- * InputSchemaUpdate [InputSchemaUpdate] <p>Describes the data format on the streaming source, and how record elements on the streaming source map to columns of the in-application stream that is created.</p>
-- * NamePrefixUpdate [InAppStreamName] <p>Name prefix for in-application streams that Amazon Kinesis Analytics creates for the specific streaming source.</p>
-- * InputId [Id] <p>Input ID of the application input to be updated.</p>
-- * InputParallelismUpdate [InputParallelismUpdate] <p>Describes the parallelism updates (the number in-application streams Amazon Kinesis Analytics creates for the specific streaming source).</p>
-- * KinesisStreamsInputUpdate [KinesisStreamsInputUpdate] <p>If a Amazon Kinesis stream is the streaming source to be updated, provides an updated stream ARN and IAM role ARN.</p>
-- Required key: InputId
-- @return InputUpdate structure as a key-value pair table
function M.InputUpdate(args)
	assert(args, "You must provdide an argument table when creating InputUpdate")
	local t = { 
		["KinesisFirehoseInputUpdate"] = args["KinesisFirehoseInputUpdate"],
		["InputSchemaUpdate"] = args["InputSchemaUpdate"],
		["NamePrefixUpdate"] = args["NamePrefixUpdate"],
		["InputId"] = args["InputId"],
		["InputParallelismUpdate"] = args["InputParallelismUpdate"],
		["KinesisStreamsInputUpdate"] = args["KinesisStreamsInputUpdate"],
	}
	asserts.AssertInputUpdate(t)
	return t
end

keys.ApplicationDetail = { ["ApplicationName"] = true, ["OutputDescriptions"] = true, ["ApplicationDescription"] = true, ["LastUpdateTimestamp"] = true, ["ApplicationVersionId"] = true, ["ApplicationStatus"] = true, ["CreateTimestamp"] = true, ["ReferenceDataSourceDescriptions"] = true, ["CloudWatchLoggingOptionDescriptions"] = true, ["InputDescriptions"] = true, ["ApplicationARN"] = true, ["ApplicationCode"] = true, nil }

function asserts.AssertApplicationDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ApplicationDetail to be of type 'table'")
	assert(struct["ApplicationName"], "Expected key ApplicationName to exist in table")
	assert(struct["ApplicationARN"], "Expected key ApplicationARN to exist in table")
	assert(struct["ApplicationStatus"], "Expected key ApplicationStatus to exist in table")
	assert(struct["ApplicationVersionId"], "Expected key ApplicationVersionId to exist in table")
	if struct["ApplicationName"] then asserts.AssertApplicationName(struct["ApplicationName"]) end
	if struct["OutputDescriptions"] then asserts.AssertOutputDescriptions(struct["OutputDescriptions"]) end
	if struct["ApplicationDescription"] then asserts.AssertApplicationDescription(struct["ApplicationDescription"]) end
	if struct["LastUpdateTimestamp"] then asserts.AssertTimestamp(struct["LastUpdateTimestamp"]) end
	if struct["ApplicationVersionId"] then asserts.AssertApplicationVersionId(struct["ApplicationVersionId"]) end
	if struct["ApplicationStatus"] then asserts.AssertApplicationStatus(struct["ApplicationStatus"]) end
	if struct["CreateTimestamp"] then asserts.AssertTimestamp(struct["CreateTimestamp"]) end
	if struct["ReferenceDataSourceDescriptions"] then asserts.AssertReferenceDataSourceDescriptions(struct["ReferenceDataSourceDescriptions"]) end
	if struct["CloudWatchLoggingOptionDescriptions"] then asserts.AssertCloudWatchLoggingOptionDescriptions(struct["CloudWatchLoggingOptionDescriptions"]) end
	if struct["InputDescriptions"] then asserts.AssertInputDescriptions(struct["InputDescriptions"]) end
	if struct["ApplicationARN"] then asserts.AssertResourceARN(struct["ApplicationARN"]) end
	if struct["ApplicationCode"] then asserts.AssertApplicationCode(struct["ApplicationCode"]) end
	for k,_ in pairs(struct) do
		assert(keys.ApplicationDetail[k], "ApplicationDetail contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ApplicationDetail
-- <p>Provides a description of the application, including the application Amazon Resource Name (ARN), status, latest version, and input and output configuration.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplicationName [ApplicationName] <p>Name of the application.</p>
-- * OutputDescriptions [OutputDescriptions] <p>Describes the application output configuration. For more information, see <a href="http://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-output.html">Configuring Application Output</a>. </p>
-- * ApplicationDescription [ApplicationDescription] <p>Description of the application.</p>
-- * LastUpdateTimestamp [Timestamp] <p>Timestamp when the application was last updated.</p>
-- * ApplicationVersionId [ApplicationVersionId] <p>Provides the current application version.</p>
-- * ApplicationStatus [ApplicationStatus] <p>Status of the application.</p>
-- * CreateTimestamp [Timestamp] <p>Timestamp when the application version was created.</p>
-- * ReferenceDataSourceDescriptions [ReferenceDataSourceDescriptions] <p>Describes reference data sources configured for the application. For more information, see <a href="http://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-input.html">Configuring Application Input</a>. </p>
-- * CloudWatchLoggingOptionDescriptions [CloudWatchLoggingOptionDescriptions] <p>Describes the CloudWatch log streams configured to receive application messages. For more information about using CloudWatch log streams with Amazon Kinesis Analytics applications, see <a href="http://docs.aws.amazon.com/kinesisanalytics/latest/dev/cloudwatch-monitor-configuration.html">Monitoring Configuration Errors</a>. </p>
-- * InputDescriptions [InputDescriptions] <p>Describes the application input configuration. For more information, see <a href="http://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-input.html">Configuring Application Input</a>. </p>
-- * ApplicationARN [ResourceARN] <p>ARN of the application.</p>
-- * ApplicationCode [ApplicationCode] <p>Returns the application code that you provided to perform data analysis on any of the in-application streams in your application.</p>
-- Required key: ApplicationName
-- Required key: ApplicationARN
-- Required key: ApplicationStatus
-- Required key: ApplicationVersionId
-- @return ApplicationDetail structure as a key-value pair table
function M.ApplicationDetail(args)
	assert(args, "You must provdide an argument table when creating ApplicationDetail")
	local t = { 
		["ApplicationName"] = args["ApplicationName"],
		["OutputDescriptions"] = args["OutputDescriptions"],
		["ApplicationDescription"] = args["ApplicationDescription"],
		["LastUpdateTimestamp"] = args["LastUpdateTimestamp"],
		["ApplicationVersionId"] = args["ApplicationVersionId"],
		["ApplicationStatus"] = args["ApplicationStatus"],
		["CreateTimestamp"] = args["CreateTimestamp"],
		["ReferenceDataSourceDescriptions"] = args["ReferenceDataSourceDescriptions"],
		["CloudWatchLoggingOptionDescriptions"] = args["CloudWatchLoggingOptionDescriptions"],
		["InputDescriptions"] = args["InputDescriptions"],
		["ApplicationARN"] = args["ApplicationARN"],
		["ApplicationCode"] = args["ApplicationCode"],
	}
	asserts.AssertApplicationDetail(t)
	return t
end

keys.S3ReferenceDataSourceDescription = { ["FileKey"] = true, ["ReferenceRoleARN"] = true, ["BucketARN"] = true, nil }

function asserts.AssertS3ReferenceDataSourceDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected S3ReferenceDataSourceDescription to be of type 'table'")
	assert(struct["BucketARN"], "Expected key BucketARN to exist in table")
	assert(struct["FileKey"], "Expected key FileKey to exist in table")
	assert(struct["ReferenceRoleARN"], "Expected key ReferenceRoleARN to exist in table")
	if struct["FileKey"] then asserts.AssertFileKey(struct["FileKey"]) end
	if struct["ReferenceRoleARN"] then asserts.AssertRoleARN(struct["ReferenceRoleARN"]) end
	if struct["BucketARN"] then asserts.AssertBucketARN(struct["BucketARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.S3ReferenceDataSourceDescription[k], "S3ReferenceDataSourceDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type S3ReferenceDataSourceDescription
-- <p>Provides the bucket name and object key name that stores the reference data.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FileKey [FileKey] <p>Amazon S3 object key name.</p>
-- * ReferenceRoleARN [RoleARN] <p>ARN of the IAM role that Amazon Kinesis Analytics can assume to read the Amazon S3 object on your behalf to populate the in-application reference table.</p>
-- * BucketARN [BucketARN] <p>Amazon Resource Name (ARN) of the S3 bucket.</p>
-- Required key: BucketARN
-- Required key: FileKey
-- Required key: ReferenceRoleARN
-- @return S3ReferenceDataSourceDescription structure as a key-value pair table
function M.S3ReferenceDataSourceDescription(args)
	assert(args, "You must provdide an argument table when creating S3ReferenceDataSourceDescription")
	local t = { 
		["FileKey"] = args["FileKey"],
		["ReferenceRoleARN"] = args["ReferenceRoleARN"],
		["BucketARN"] = args["BucketARN"],
	}
	asserts.AssertS3ReferenceDataSourceDescription(t)
	return t
end

keys.InputDescription = { ["InputStartingPositionConfiguration"] = true, ["KinesisFirehoseInputDescription"] = true, ["InputId"] = true, ["KinesisStreamsInputDescription"] = true, ["NamePrefix"] = true, ["InAppStreamNames"] = true, ["InputParallelism"] = true, ["InputSchema"] = true, nil }

function asserts.AssertInputDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InputDescription to be of type 'table'")
	if struct["InputStartingPositionConfiguration"] then asserts.AssertInputStartingPositionConfiguration(struct["InputStartingPositionConfiguration"]) end
	if struct["KinesisFirehoseInputDescription"] then asserts.AssertKinesisFirehoseInputDescription(struct["KinesisFirehoseInputDescription"]) end
	if struct["InputId"] then asserts.AssertId(struct["InputId"]) end
	if struct["KinesisStreamsInputDescription"] then asserts.AssertKinesisStreamsInputDescription(struct["KinesisStreamsInputDescription"]) end
	if struct["NamePrefix"] then asserts.AssertInAppStreamName(struct["NamePrefix"]) end
	if struct["InAppStreamNames"] then asserts.AssertInAppStreamNames(struct["InAppStreamNames"]) end
	if struct["InputParallelism"] then asserts.AssertInputParallelism(struct["InputParallelism"]) end
	if struct["InputSchema"] then asserts.AssertSourceSchema(struct["InputSchema"]) end
	for k,_ in pairs(struct) do
		assert(keys.InputDescription[k], "InputDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InputDescription
-- <p>Describes the application input configuration. For more information, see <a href="http://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-input.html">Configuring Application Input</a>. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InputStartingPositionConfiguration [InputStartingPositionConfiguration] <p>Point at which the application is configured to read from the input stream.</p>
-- * KinesisFirehoseInputDescription [KinesisFirehoseInputDescription] <p>If an Amazon Kinesis Firehose delivery stream is configured as a streaming source, provides the Firehose delivery stream's Amazon Resource Name (ARN) and an IAM role that enables Amazon Kinesis Analytics to access the stream on your behalf.</p>
-- * InputId [Id] <p>Input ID associated with the application input. This is the ID that Amazon Kinesis Analytics assigns to each input configuration you add to your application. </p>
-- * KinesisStreamsInputDescription [KinesisStreamsInputDescription] <p>If an Amazon Kinesis stream is configured as streaming source, provides Amazon Kinesis stream's ARN and an IAM role that enables Amazon Kinesis Analytics to access the stream on your behalf.</p>
-- * NamePrefix [InAppStreamName] <p>In-application name prefix.</p>
-- * InAppStreamNames [InAppStreamNames] <p>Returns the in-application stream names that are mapped to the stream source.</p>
-- * InputParallelism [InputParallelism] <p>Describes the configured parallelism (number of in-application streams mapped to the streaming source).</p>
-- * InputSchema [SourceSchema] 
-- @return InputDescription structure as a key-value pair table
function M.InputDescription(args)
	assert(args, "You must provdide an argument table when creating InputDescription")
	local t = { 
		["InputStartingPositionConfiguration"] = args["InputStartingPositionConfiguration"],
		["KinesisFirehoseInputDescription"] = args["KinesisFirehoseInputDescription"],
		["InputId"] = args["InputId"],
		["KinesisStreamsInputDescription"] = args["KinesisStreamsInputDescription"],
		["NamePrefix"] = args["NamePrefix"],
		["InAppStreamNames"] = args["InAppStreamNames"],
		["InputParallelism"] = args["InputParallelism"],
		["InputSchema"] = args["InputSchema"],
	}
	asserts.AssertInputDescription(t)
	return t
end

keys.InputParallelismUpdate = { ["CountUpdate"] = true, nil }

function asserts.AssertInputParallelismUpdate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InputParallelismUpdate to be of type 'table'")
	if struct["CountUpdate"] then asserts.AssertInputParallelismCount(struct["CountUpdate"]) end
	for k,_ in pairs(struct) do
		assert(keys.InputParallelismUpdate[k], "InputParallelismUpdate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InputParallelismUpdate
-- <p>Provides updates to the parallelism count.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CountUpdate [InputParallelismCount] <p>Number of in-application streams to create for the specified streaming source.</p>
-- @return InputParallelismUpdate structure as a key-value pair table
function M.InputParallelismUpdate(args)
	assert(args, "You must provdide an argument table when creating InputParallelismUpdate")
	local t = { 
		["CountUpdate"] = args["CountUpdate"],
	}
	asserts.AssertInputParallelismUpdate(t)
	return t
end

keys.ReferenceDataSource = { ["TableName"] = true, ["ReferenceSchema"] = true, ["S3ReferenceDataSource"] = true, nil }

function asserts.AssertReferenceDataSource(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReferenceDataSource to be of type 'table'")
	assert(struct["TableName"], "Expected key TableName to exist in table")
	assert(struct["ReferenceSchema"], "Expected key ReferenceSchema to exist in table")
	if struct["TableName"] then asserts.AssertInAppTableName(struct["TableName"]) end
	if struct["ReferenceSchema"] then asserts.AssertSourceSchema(struct["ReferenceSchema"]) end
	if struct["S3ReferenceDataSource"] then asserts.AssertS3ReferenceDataSource(struct["S3ReferenceDataSource"]) end
	for k,_ in pairs(struct) do
		assert(keys.ReferenceDataSource[k], "ReferenceDataSource contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReferenceDataSource
-- <p>Describes the reference data source by providing the source information (S3 bucket name and object key name), the resulting in-application table name that is created, and the necessary schema to map the data elements in the Amazon S3 object to the in-application table.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TableName [InAppTableName] <p>Name of the in-application table to create.</p>
-- * ReferenceSchema [SourceSchema] 
-- * S3ReferenceDataSource [S3ReferenceDataSource] 
-- Required key: TableName
-- Required key: ReferenceSchema
-- @return ReferenceDataSource structure as a key-value pair table
function M.ReferenceDataSource(args)
	assert(args, "You must provdide an argument table when creating ReferenceDataSource")
	local t = { 
		["TableName"] = args["TableName"],
		["ReferenceSchema"] = args["ReferenceSchema"],
		["S3ReferenceDataSource"] = args["S3ReferenceDataSource"],
	}
	asserts.AssertReferenceDataSource(t)
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
-- <p>Specified application can't be found.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] <p/>
-- @return ResourceNotFoundException structure as a key-value pair table
function M.ResourceNotFoundException(args)
	assert(args, "You must provdide an argument table when creating ResourceNotFoundException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertResourceNotFoundException(t)
	return t
end

keys.KinesisFirehoseOutputDescription = { ["ResourceARN"] = true, ["RoleARN"] = true, nil }

function asserts.AssertKinesisFirehoseOutputDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected KinesisFirehoseOutputDescription to be of type 'table'")
	if struct["ResourceARN"] then asserts.AssertResourceARN(struct["ResourceARN"]) end
	if struct["RoleARN"] then asserts.AssertRoleARN(struct["RoleARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.KinesisFirehoseOutputDescription[k], "KinesisFirehoseOutputDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type KinesisFirehoseOutputDescription
-- <p> For an application output, describes the Amazon Kinesis Firehose delivery stream configured as its destination. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceARN [ResourceARN] <p>Amazon Resource Name (ARN) of the Amazon Kinesis Firehose delivery stream.</p>
-- * RoleARN [RoleARN] <p>ARN of the IAM role that Amazon Kinesis Analytics can assume to access the stream.</p>
-- @return KinesisFirehoseOutputDescription structure as a key-value pair table
function M.KinesisFirehoseOutputDescription(args)
	assert(args, "You must provdide an argument table when creating KinesisFirehoseOutputDescription")
	local t = { 
		["ResourceARN"] = args["ResourceARN"],
		["RoleARN"] = args["RoleARN"],
	}
	asserts.AssertKinesisFirehoseOutputDescription(t)
	return t
end

keys.KinesisStreamsInputDescription = { ["ResourceARN"] = true, ["RoleARN"] = true, nil }

function asserts.AssertKinesisStreamsInputDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected KinesisStreamsInputDescription to be of type 'table'")
	if struct["ResourceARN"] then asserts.AssertResourceARN(struct["ResourceARN"]) end
	if struct["RoleARN"] then asserts.AssertRoleARN(struct["RoleARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.KinesisStreamsInputDescription[k], "KinesisStreamsInputDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type KinesisStreamsInputDescription
-- <p> Describes the Amazon Kinesis stream that is configured as the streaming source in the application input configuration. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceARN [ResourceARN] <p>Amazon Resource Name (ARN) of the Amazon Kinesis stream.</p>
-- * RoleARN [RoleARN] <p>ARN of the IAM role that Amazon Kinesis Analytics can assume to access the stream.</p>
-- @return KinesisStreamsInputDescription structure as a key-value pair table
function M.KinesisStreamsInputDescription(args)
	assert(args, "You must provdide an argument table when creating KinesisStreamsInputDescription")
	local t = { 
		["ResourceARN"] = args["ResourceARN"],
		["RoleARN"] = args["RoleARN"],
	}
	asserts.AssertKinesisStreamsInputDescription(t)
	return t
end

keys.DescribeApplicationRequest = { ["ApplicationName"] = true, nil }

function asserts.AssertDescribeApplicationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeApplicationRequest to be of type 'table'")
	assert(struct["ApplicationName"], "Expected key ApplicationName to exist in table")
	if struct["ApplicationName"] then asserts.AssertApplicationName(struct["ApplicationName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeApplicationRequest[k], "DescribeApplicationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeApplicationRequest
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplicationName [ApplicationName] <p>Name of the application.</p>
-- Required key: ApplicationName
-- @return DescribeApplicationRequest structure as a key-value pair table
function M.DescribeApplicationRequest(args)
	assert(args, "You must provdide an argument table when creating DescribeApplicationRequest")
	local t = { 
		["ApplicationName"] = args["ApplicationName"],
	}
	asserts.AssertDescribeApplicationRequest(t)
	return t
end

keys.OutputDescription = { ["OutputId"] = true, ["DestinationSchema"] = true, ["KinesisStreamsOutputDescription"] = true, ["KinesisFirehoseOutputDescription"] = true, ["Name"] = true, nil }

function asserts.AssertOutputDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OutputDescription to be of type 'table'")
	if struct["OutputId"] then asserts.AssertId(struct["OutputId"]) end
	if struct["DestinationSchema"] then asserts.AssertDestinationSchema(struct["DestinationSchema"]) end
	if struct["KinesisStreamsOutputDescription"] then asserts.AssertKinesisStreamsOutputDescription(struct["KinesisStreamsOutputDescription"]) end
	if struct["KinesisFirehoseOutputDescription"] then asserts.AssertKinesisFirehoseOutputDescription(struct["KinesisFirehoseOutputDescription"]) end
	if struct["Name"] then asserts.AssertInAppStreamName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.OutputDescription[k], "OutputDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OutputDescription
-- <p>Describes the application output configuration, which includes the in-application stream name and the destination where the stream data is written. The destination can be an Amazon Kinesis stream or an Amazon Kinesis Firehose delivery stream. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OutputId [Id] <p>A unique identifier for the output configuration.</p>
-- * DestinationSchema [DestinationSchema] <p>Data format used for writing data to the destination.</p>
-- * KinesisStreamsOutputDescription [KinesisStreamsOutputDescription] <p>Describes Amazon Kinesis stream configured as the destination where output is written.</p>
-- * KinesisFirehoseOutputDescription [KinesisFirehoseOutputDescription] <p>Describes the Amazon Kinesis Firehose delivery stream configured as the destination where output is written.</p>
-- * Name [InAppStreamName] <p>Name of the in-application stream configured as output.</p>
-- @return OutputDescription structure as a key-value pair table
function M.OutputDescription(args)
	assert(args, "You must provdide an argument table when creating OutputDescription")
	local t = { 
		["OutputId"] = args["OutputId"],
		["DestinationSchema"] = args["DestinationSchema"],
		["KinesisStreamsOutputDescription"] = args["KinesisStreamsOutputDescription"],
		["KinesisFirehoseOutputDescription"] = args["KinesisFirehoseOutputDescription"],
		["Name"] = args["Name"],
	}
	asserts.AssertOutputDescription(t)
	return t
end

keys.StartApplicationResponse = { nil }

function asserts.AssertStartApplicationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartApplicationResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.StartApplicationResponse[k], "StartApplicationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartApplicationResponse
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return StartApplicationResponse structure as a key-value pair table
function M.StartApplicationResponse(args)
	assert(args, "You must provdide an argument table when creating StartApplicationResponse")
	local t = { 
	}
	asserts.AssertStartApplicationResponse(t)
	return t
end

keys.DiscoverInputSchemaRequest = { ["ResourceARN"] = true, ["InputStartingPositionConfiguration"] = true, ["RoleARN"] = true, nil }

function asserts.AssertDiscoverInputSchemaRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DiscoverInputSchemaRequest to be of type 'table'")
	assert(struct["ResourceARN"], "Expected key ResourceARN to exist in table")
	assert(struct["RoleARN"], "Expected key RoleARN to exist in table")
	assert(struct["InputStartingPositionConfiguration"], "Expected key InputStartingPositionConfiguration to exist in table")
	if struct["ResourceARN"] then asserts.AssertResourceARN(struct["ResourceARN"]) end
	if struct["InputStartingPositionConfiguration"] then asserts.AssertInputStartingPositionConfiguration(struct["InputStartingPositionConfiguration"]) end
	if struct["RoleARN"] then asserts.AssertRoleARN(struct["RoleARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.DiscoverInputSchemaRequest[k], "DiscoverInputSchemaRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DiscoverInputSchemaRequest
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceARN [ResourceARN] <p>Amazon Resource Name (ARN) of the streaming source.</p>
-- * InputStartingPositionConfiguration [InputStartingPositionConfiguration] <p>Point at which you want Amazon Kinesis Analytics to start reading records from the specified streaming source discovery purposes.</p>
-- * RoleARN [RoleARN] <p>ARN of the IAM role that Amazon Kinesis Analytics can assume to access the stream on your behalf.</p>
-- Required key: ResourceARN
-- Required key: RoleARN
-- Required key: InputStartingPositionConfiguration
-- @return DiscoverInputSchemaRequest structure as a key-value pair table
function M.DiscoverInputSchemaRequest(args)
	assert(args, "You must provdide an argument table when creating DiscoverInputSchemaRequest")
	local t = { 
		["ResourceARN"] = args["ResourceARN"],
		["InputStartingPositionConfiguration"] = args["InputStartingPositionConfiguration"],
		["RoleARN"] = args["RoleARN"],
	}
	asserts.AssertDiscoverInputSchemaRequest(t)
	return t
end

keys.MappingParameters = { ["JSONMappingParameters"] = true, ["CSVMappingParameters"] = true, nil }

function asserts.AssertMappingParameters(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MappingParameters to be of type 'table'")
	if struct["JSONMappingParameters"] then asserts.AssertJSONMappingParameters(struct["JSONMappingParameters"]) end
	if struct["CSVMappingParameters"] then asserts.AssertCSVMappingParameters(struct["CSVMappingParameters"]) end
	for k,_ in pairs(struct) do
		assert(keys.MappingParameters[k], "MappingParameters contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MappingParameters
-- <p>When configuring application input at the time of creating or updating an application, provides additional mapping information specific to the record format (such as JSON, CSV, or record fields delimited by some delimiter) on the streaming source.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * JSONMappingParameters [JSONMappingParameters] <p>Provides additional mapping information when JSON is the record format on the streaming source.</p>
-- * CSVMappingParameters [CSVMappingParameters] <p>Provides additional mapping information when the record format uses delimiters (for example, CSV).</p>
-- @return MappingParameters structure as a key-value pair table
function M.MappingParameters(args)
	assert(args, "You must provdide an argument table when creating MappingParameters")
	local t = { 
		["JSONMappingParameters"] = args["JSONMappingParameters"],
		["CSVMappingParameters"] = args["CSVMappingParameters"],
	}
	asserts.AssertMappingParameters(t)
	return t
end

keys.ResourceProvisionedThroughputExceededException = { ["message"] = true, nil }

function asserts.AssertResourceProvisionedThroughputExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceProvisionedThroughputExceededException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResourceProvisionedThroughputExceededException[k], "ResourceProvisionedThroughputExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceProvisionedThroughputExceededException
-- <p>Discovery failed to get a record from the streaming source because of the Amazon Kinesis Streams ProvisionedThroughputExceededException. For more information, see <a href="http://docs.aws.amazon.com/kinesis/latest/APIReference/API_GetRecords.html">GetRecords</a> in the Amazon Kinesis Streams API Reference.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] 
-- @return ResourceProvisionedThroughputExceededException structure as a key-value pair table
function M.ResourceProvisionedThroughputExceededException(args)
	assert(args, "You must provdide an argument table when creating ResourceProvisionedThroughputExceededException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertResourceProvisionedThroughputExceededException(t)
	return t
end

keys.DeleteApplicationCloudWatchLoggingOptionResponse = { nil }

function asserts.AssertDeleteApplicationCloudWatchLoggingOptionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteApplicationCloudWatchLoggingOptionResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteApplicationCloudWatchLoggingOptionResponse[k], "DeleteApplicationCloudWatchLoggingOptionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteApplicationCloudWatchLoggingOptionResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteApplicationCloudWatchLoggingOptionResponse structure as a key-value pair table
function M.DeleteApplicationCloudWatchLoggingOptionResponse(args)
	assert(args, "You must provdide an argument table when creating DeleteApplicationCloudWatchLoggingOptionResponse")
	local t = { 
	}
	asserts.AssertDeleteApplicationCloudWatchLoggingOptionResponse(t)
	return t
end

keys.KinesisFirehoseInputDescription = { ["ResourceARN"] = true, ["RoleARN"] = true, nil }

function asserts.AssertKinesisFirehoseInputDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected KinesisFirehoseInputDescription to be of type 'table'")
	if struct["ResourceARN"] then asserts.AssertResourceARN(struct["ResourceARN"]) end
	if struct["RoleARN"] then asserts.AssertRoleARN(struct["RoleARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.KinesisFirehoseInputDescription[k], "KinesisFirehoseInputDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type KinesisFirehoseInputDescription
-- <p> Describes the Amazon Kinesis Firehose delivery stream that is configured as the streaming source in the application input configuration. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceARN [ResourceARN] <p>Amazon Resource Name (ARN) of the Amazon Kinesis Firehose delivery stream.</p>
-- * RoleARN [RoleARN] <p>ARN of the IAM role that Amazon Kinesis Analytics assumes to access the stream.</p>
-- @return KinesisFirehoseInputDescription structure as a key-value pair table
function M.KinesisFirehoseInputDescription(args)
	assert(args, "You must provdide an argument table when creating KinesisFirehoseInputDescription")
	local t = { 
		["ResourceARN"] = args["ResourceARN"],
		["RoleARN"] = args["RoleARN"],
	}
	asserts.AssertKinesisFirehoseInputDescription(t)
	return t
end

keys.CreateApplicationRequest = { ["ApplicationName"] = true, ["Inputs"] = true, ["ApplicationDescription"] = true, ["Outputs"] = true, ["CloudWatchLoggingOptions"] = true, ["ApplicationCode"] = true, nil }

function asserts.AssertCreateApplicationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateApplicationRequest to be of type 'table'")
	assert(struct["ApplicationName"], "Expected key ApplicationName to exist in table")
	if struct["ApplicationName"] then asserts.AssertApplicationName(struct["ApplicationName"]) end
	if struct["Inputs"] then asserts.AssertInputs(struct["Inputs"]) end
	if struct["ApplicationDescription"] then asserts.AssertApplicationDescription(struct["ApplicationDescription"]) end
	if struct["Outputs"] then asserts.AssertOutputs(struct["Outputs"]) end
	if struct["CloudWatchLoggingOptions"] then asserts.AssertCloudWatchLoggingOptions(struct["CloudWatchLoggingOptions"]) end
	if struct["ApplicationCode"] then asserts.AssertApplicationCode(struct["ApplicationCode"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateApplicationRequest[k], "CreateApplicationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateApplicationRequest
-- <p>TBD</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplicationName [ApplicationName] <p>Name of your Amazon Kinesis Analytics application (for example, <code>sample-app</code>).</p>
-- * Inputs [Inputs] <p>Use this parameter to configure the application input.</p> <p>You can configure your application to receive input from a single streaming source. In this configuration, you map this streaming source to an in-application stream that is created. Your application code can then query the in-application stream like a table (you can think of it as a constantly updating table).</p> <p>For the streaming source, you provide its Amazon Resource Name (ARN) and format of data on the stream (for example, JSON, CSV, etc). You also must provide an IAM role that Amazon Kinesis Analytics can assume to read this stream on your behalf.</p> <p>To create the in-application stream, you need to specify a schema to transform your data into a schematized version used in SQL. In the schema, you provide the necessary mapping of the data elements in the streaming source to record columns in the in-app stream.</p>
-- * ApplicationDescription [ApplicationDescription] <p>Summary description of the application.</p>
-- * Outputs [Outputs] <p>You can configure application output to write data from any of the in-application streams to up to five destinations.</p> <p>These destinations can be Amazon Kinesis streams, Amazon Kinesis Firehose delivery streams, or both.</p> <p>In the configuration, you specify the in-application stream name, the destination stream Amazon Resource Name (ARN), and the format to use when writing data. You must also provide an IAM role that Amazon Kinesis Analytics can assume to write to the destination stream on your behalf.</p> <p>In the output configuration, you also provide the output stream Amazon Resource Name (ARN) and the format of data in the stream (for example, JSON, CSV). You also must provide an IAM role that Amazon Kinesis Analytics can assume to write to this stream on your behalf.</p>
-- * CloudWatchLoggingOptions [CloudWatchLoggingOptions] <p>Use this parameter to configure a CloudWatch log stream to monitor application configuration errors. For more information, see <a href="http://docs.aws.amazon.com/kinesisanalytics/latest/dev/cloudwatch-monitor-configuration.html">Monitoring Configuration Errors</a>.</p>
-- * ApplicationCode [ApplicationCode] <p>One or more SQL statements that read input data, transform it, and generate output. For example, you can write a SQL statement that reads data from one in-application stream, generates a running average of the number of advertisement clicks by vendor, and insert resulting rows in another in-application stream using pumps. For more inforamtion about the typical pattern, see <a href="http://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-app-code.html">Application Code</a>. </p> <p>You can provide such series of SQL statements, where output of one statement can be used as the input for the next statement. You store intermediate results by creating in-application streams and pumps.</p> <p>Note that the application code must create the streams with names specified in the <code>Outputs</code>. For example, if your <code>Outputs</code> defines output streams named <code>ExampleOutputStream1</code> and <code>ExampleOutputStream2</code>, then your application code must create these streams. </p>
-- Required key: ApplicationName
-- @return CreateApplicationRequest structure as a key-value pair table
function M.CreateApplicationRequest(args)
	assert(args, "You must provdide an argument table when creating CreateApplicationRequest")
	local t = { 
		["ApplicationName"] = args["ApplicationName"],
		["Inputs"] = args["Inputs"],
		["ApplicationDescription"] = args["ApplicationDescription"],
		["Outputs"] = args["Outputs"],
		["CloudWatchLoggingOptions"] = args["CloudWatchLoggingOptions"],
		["ApplicationCode"] = args["ApplicationCode"],
	}
	asserts.AssertCreateApplicationRequest(t)
	return t
end

keys.RecordFormat = { ["MappingParameters"] = true, ["RecordFormatType"] = true, nil }

function asserts.AssertRecordFormat(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RecordFormat to be of type 'table'")
	assert(struct["RecordFormatType"], "Expected key RecordFormatType to exist in table")
	if struct["MappingParameters"] then asserts.AssertMappingParameters(struct["MappingParameters"]) end
	if struct["RecordFormatType"] then asserts.AssertRecordFormatType(struct["RecordFormatType"]) end
	for k,_ in pairs(struct) do
		assert(keys.RecordFormat[k], "RecordFormat contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RecordFormat
-- <p> Describes the record format and relevant mapping information that should be applied to schematize the records on the stream. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MappingParameters [MappingParameters] 
-- * RecordFormatType [RecordFormatType] <p>The type of record format.</p>
-- Required key: RecordFormatType
-- @return RecordFormat structure as a key-value pair table
function M.RecordFormat(args)
	assert(args, "You must provdide an argument table when creating RecordFormat")
	local t = { 
		["MappingParameters"] = args["MappingParameters"],
		["RecordFormatType"] = args["RecordFormatType"],
	}
	asserts.AssertRecordFormat(t)
	return t
end

keys.RecordColumn = { ["SqlType"] = true, ["Name"] = true, ["Mapping"] = true, nil }

function asserts.AssertRecordColumn(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RecordColumn to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["SqlType"], "Expected key SqlType to exist in table")
	if struct["SqlType"] then asserts.AssertRecordColumnSqlType(struct["SqlType"]) end
	if struct["Name"] then asserts.AssertRecordColumnName(struct["Name"]) end
	if struct["Mapping"] then asserts.AssertRecordColumnMapping(struct["Mapping"]) end
	for k,_ in pairs(struct) do
		assert(keys.RecordColumn[k], "RecordColumn contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RecordColumn
-- <p>Describes the mapping of each data element in the streaming source to the corresponding column in the in-application stream.</p> <p>Also used to describe the format of the reference data source.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SqlType [RecordColumnSqlType] <p>Type of column created in the in-application input stream or reference table.</p>
-- * Name [RecordColumnName] <p>Name of the column created in the in-application input stream or reference table.</p>
-- * Mapping [RecordColumnMapping] <p>Reference to the data element in the streaming input of the reference data source.</p>
-- Required key: Name
-- Required key: SqlType
-- @return RecordColumn structure as a key-value pair table
function M.RecordColumn(args)
	assert(args, "You must provdide an argument table when creating RecordColumn")
	local t = { 
		["SqlType"] = args["SqlType"],
		["Name"] = args["Name"],
		["Mapping"] = args["Mapping"],
	}
	asserts.AssertRecordColumn(t)
	return t
end

keys.ApplicationUpdate = { ["ReferenceDataSourceUpdates"] = true, ["CloudWatchLoggingOptionUpdates"] = true, ["InputUpdates"] = true, ["ApplicationCodeUpdate"] = true, ["OutputUpdates"] = true, nil }

function asserts.AssertApplicationUpdate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ApplicationUpdate to be of type 'table'")
	if struct["ReferenceDataSourceUpdates"] then asserts.AssertReferenceDataSourceUpdates(struct["ReferenceDataSourceUpdates"]) end
	if struct["CloudWatchLoggingOptionUpdates"] then asserts.AssertCloudWatchLoggingOptionUpdates(struct["CloudWatchLoggingOptionUpdates"]) end
	if struct["InputUpdates"] then asserts.AssertInputUpdates(struct["InputUpdates"]) end
	if struct["ApplicationCodeUpdate"] then asserts.AssertApplicationCode(struct["ApplicationCodeUpdate"]) end
	if struct["OutputUpdates"] then asserts.AssertOutputUpdates(struct["OutputUpdates"]) end
	for k,_ in pairs(struct) do
		assert(keys.ApplicationUpdate[k], "ApplicationUpdate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ApplicationUpdate
-- <p>Describes updates to apply to an existing Amazon Kinesis Analytics application.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ReferenceDataSourceUpdates [ReferenceDataSourceUpdates] <p>Describes application reference data source updates.</p>
-- * CloudWatchLoggingOptionUpdates [CloudWatchLoggingOptionUpdates] <p>Describes application CloudWatch logging option updates.</p>
-- * InputUpdates [InputUpdates] <p>Describes application input configuration updates.</p>
-- * ApplicationCodeUpdate [ApplicationCode] <p>Describes application code updates.</p>
-- * OutputUpdates [OutputUpdates] <p>Describes application output configuration updates.</p>
-- @return ApplicationUpdate structure as a key-value pair table
function M.ApplicationUpdate(args)
	assert(args, "You must provdide an argument table when creating ApplicationUpdate")
	local t = { 
		["ReferenceDataSourceUpdates"] = args["ReferenceDataSourceUpdates"],
		["CloudWatchLoggingOptionUpdates"] = args["CloudWatchLoggingOptionUpdates"],
		["InputUpdates"] = args["InputUpdates"],
		["ApplicationCodeUpdate"] = args["ApplicationCodeUpdate"],
		["OutputUpdates"] = args["OutputUpdates"],
	}
	asserts.AssertApplicationUpdate(t)
	return t
end

keys.InputStartingPositionConfiguration = { ["InputStartingPosition"] = true, nil }

function asserts.AssertInputStartingPositionConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InputStartingPositionConfiguration to be of type 'table'")
	if struct["InputStartingPosition"] then asserts.AssertInputStartingPosition(struct["InputStartingPosition"]) end
	for k,_ in pairs(struct) do
		assert(keys.InputStartingPositionConfiguration[k], "InputStartingPositionConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InputStartingPositionConfiguration
-- <p>Describes the point at which the application reads from the streaming source.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InputStartingPosition [InputStartingPosition] <p>The starting position on the stream.</p> <ul> <li> <p> <code>NOW</code> - Start reading just after the most recent record in the stream, start at the request timestamp that the customer issued.</p> </li> <li> <p> <code>TRIM_HORIZON</code> - Start reading at the last untrimmed record in the stream, which is the oldest record available in the stream. This option is not available for an Amazon Kinesis Firehose delivery stream.</p> </li> <li> <p> <code>LAST_STOPPED_POINT</code> - Resume reading from where the application last stopped reading.</p> </li> </ul>
-- @return InputStartingPositionConfiguration structure as a key-value pair table
function M.InputStartingPositionConfiguration(args)
	assert(args, "You must provdide an argument table when creating InputStartingPositionConfiguration")
	local t = { 
		["InputStartingPosition"] = args["InputStartingPosition"],
	}
	asserts.AssertInputStartingPositionConfiguration(t)
	return t
end

keys.KinesisStreamsInput = { ["ResourceARN"] = true, ["RoleARN"] = true, nil }

function asserts.AssertKinesisStreamsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected KinesisStreamsInput to be of type 'table'")
	assert(struct["ResourceARN"], "Expected key ResourceARN to exist in table")
	assert(struct["RoleARN"], "Expected key RoleARN to exist in table")
	if struct["ResourceARN"] then asserts.AssertResourceARN(struct["ResourceARN"]) end
	if struct["RoleARN"] then asserts.AssertRoleARN(struct["RoleARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.KinesisStreamsInput[k], "KinesisStreamsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type KinesisStreamsInput
-- <p> Identifies an Amazon Kinesis stream as the streaming source. You provide the stream's ARN and an IAM role ARN that enables Amazon Kinesis Analytics to access the stream on your behalf.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceARN [ResourceARN] <p>ARN of the input Amazon Kinesis stream to read.</p>
-- * RoleARN [RoleARN] <p>ARN of the IAM role that Amazon Kinesis Analytics can assume to access the stream on your behalf. You need to grant the necessary permissions to this role.</p>
-- Required key: ResourceARN
-- Required key: RoleARN
-- @return KinesisStreamsInput structure as a key-value pair table
function M.KinesisStreamsInput(args)
	assert(args, "You must provdide an argument table when creating KinesisStreamsInput")
	local t = { 
		["ResourceARN"] = args["ResourceARN"],
		["RoleARN"] = args["RoleARN"],
	}
	asserts.AssertKinesisStreamsInput(t)
	return t
end

keys.DiscoverInputSchemaResponse = { ["RawInputRecords"] = true, ["InputSchema"] = true, ["ParsedInputRecords"] = true, nil }

function asserts.AssertDiscoverInputSchemaResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DiscoverInputSchemaResponse to be of type 'table'")
	if struct["RawInputRecords"] then asserts.AssertRawInputRecords(struct["RawInputRecords"]) end
	if struct["InputSchema"] then asserts.AssertSourceSchema(struct["InputSchema"]) end
	if struct["ParsedInputRecords"] then asserts.AssertParsedInputRecords(struct["ParsedInputRecords"]) end
	for k,_ in pairs(struct) do
		assert(keys.DiscoverInputSchemaResponse[k], "DiscoverInputSchemaResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DiscoverInputSchemaResponse
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RawInputRecords [RawInputRecords] <p>Raw stream data that was sampled to infer the schema.</p>
-- * InputSchema [SourceSchema] <p>Schema inferred from the streaming source. It identifies the format of the data in the streaming source and how each data element maps to corresponding columns in the in-application stream that you can create.</p>
-- * ParsedInputRecords [ParsedInputRecords] <p>An array of elements, where each element corresponds to a row in a stream record (a stream record can have more than one row).</p>
-- @return DiscoverInputSchemaResponse structure as a key-value pair table
function M.DiscoverInputSchemaResponse(args)
	assert(args, "You must provdide an argument table when creating DiscoverInputSchemaResponse")
	local t = { 
		["RawInputRecords"] = args["RawInputRecords"],
		["InputSchema"] = args["InputSchema"],
		["ParsedInputRecords"] = args["ParsedInputRecords"],
	}
	asserts.AssertDiscoverInputSchemaResponse(t)
	return t
end

keys.Output = { ["DestinationSchema"] = true, ["KinesisStreamsOutput"] = true, ["KinesisFirehoseOutput"] = true, ["Name"] = true, nil }

function asserts.AssertOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Output to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["DestinationSchema"], "Expected key DestinationSchema to exist in table")
	if struct["DestinationSchema"] then asserts.AssertDestinationSchema(struct["DestinationSchema"]) end
	if struct["KinesisStreamsOutput"] then asserts.AssertKinesisStreamsOutput(struct["KinesisStreamsOutput"]) end
	if struct["KinesisFirehoseOutput"] then asserts.AssertKinesisFirehoseOutput(struct["KinesisFirehoseOutput"]) end
	if struct["Name"] then asserts.AssertInAppStreamName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.Output[k], "Output contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Output
-- <p> Describes application output configuration in which you identify an in-application stream and a destination where you want the in-application stream data to be written. The destination can be an Amazon Kinesis stream or an Amazon Kinesis Firehose delivery stream. </p> <p/> <p>For limits on how many destinations an application can write and other limitations, see <a href="http://docs.aws.amazon.com/kinesisanalytics/latest/dev/limits.html">Limits</a>. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DestinationSchema [DestinationSchema] 
-- * KinesisStreamsOutput [KinesisStreamsOutput] <p>Identifies an Amazon Kinesis stream as the destination.</p>
-- * KinesisFirehoseOutput [KinesisFirehoseOutput] <p>Identifies an Amazon Kinesis Firehose delivery stream as the destination.</p>
-- * Name [InAppStreamName] <p>Name of the in-application stream.</p>
-- Required key: Name
-- Required key: DestinationSchema
-- @return Output structure as a key-value pair table
function M.Output(args)
	assert(args, "You must provdide an argument table when creating Output")
	local t = { 
		["DestinationSchema"] = args["DestinationSchema"],
		["KinesisStreamsOutput"] = args["KinesisStreamsOutput"],
		["KinesisFirehoseOutput"] = args["KinesisFirehoseOutput"],
		["Name"] = args["Name"],
	}
	asserts.AssertOutput(t)
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
-- <p>Specified input parameter value is invalid.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] <p/>
-- @return InvalidArgumentException structure as a key-value pair table
function M.InvalidArgumentException(args)
	assert(args, "You must provdide an argument table when creating InvalidArgumentException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertInvalidArgumentException(t)
	return t
end

keys.KinesisFirehoseInput = { ["ResourceARN"] = true, ["RoleARN"] = true, nil }

function asserts.AssertKinesisFirehoseInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected KinesisFirehoseInput to be of type 'table'")
	assert(struct["ResourceARN"], "Expected key ResourceARN to exist in table")
	assert(struct["RoleARN"], "Expected key RoleARN to exist in table")
	if struct["ResourceARN"] then asserts.AssertResourceARN(struct["ResourceARN"]) end
	if struct["RoleARN"] then asserts.AssertRoleARN(struct["RoleARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.KinesisFirehoseInput[k], "KinesisFirehoseInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type KinesisFirehoseInput
-- <p> Identifies an Amazon Kinesis Firehose delivery stream as the streaming source. You provide the Firehose delivery stream's Amazon Resource Name (ARN) and an IAM role ARN that enables Amazon Kinesis Analytics to access the stream on your behalf.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceARN [ResourceARN] <p>ARN of the input Firehose delivery stream.</p>
-- * RoleARN [RoleARN] <p>ARN of the IAM role that Amazon Kinesis Analytics can assume to access the stream on your behalf. You need to make sure the role has necessary permissions to access the stream.</p>
-- Required key: ResourceARN
-- Required key: RoleARN
-- @return KinesisFirehoseInput structure as a key-value pair table
function M.KinesisFirehoseInput(args)
	assert(args, "You must provdide an argument table when creating KinesisFirehoseInput")
	local t = { 
		["ResourceARN"] = args["ResourceARN"],
		["RoleARN"] = args["RoleARN"],
	}
	asserts.AssertKinesisFirehoseInput(t)
	return t
end

keys.CreateApplicationResponse = { ["ApplicationSummary"] = true, nil }

function asserts.AssertCreateApplicationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateApplicationResponse to be of type 'table'")
	assert(struct["ApplicationSummary"], "Expected key ApplicationSummary to exist in table")
	if struct["ApplicationSummary"] then asserts.AssertApplicationSummary(struct["ApplicationSummary"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateApplicationResponse[k], "CreateApplicationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateApplicationResponse
-- <p>TBD</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplicationSummary [ApplicationSummary] <p>In response to your <code>CreateApplication</code> request, Amazon Kinesis Analytics returns a response with a summary of the application it created, including the application Amazon Resource Name (ARN), name, and status.</p>
-- Required key: ApplicationSummary
-- @return CreateApplicationResponse structure as a key-value pair table
function M.CreateApplicationResponse(args)
	assert(args, "You must provdide an argument table when creating CreateApplicationResponse")
	local t = { 
		["ApplicationSummary"] = args["ApplicationSummary"],
	}
	asserts.AssertCreateApplicationResponse(t)
	return t
end

keys.OutputUpdate = { ["OutputId"] = true, ["DestinationSchemaUpdate"] = true, ["KinesisFirehoseOutputUpdate"] = true, ["KinesisStreamsOutputUpdate"] = true, ["NameUpdate"] = true, nil }

function asserts.AssertOutputUpdate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OutputUpdate to be of type 'table'")
	assert(struct["OutputId"], "Expected key OutputId to exist in table")
	if struct["OutputId"] then asserts.AssertId(struct["OutputId"]) end
	if struct["DestinationSchemaUpdate"] then asserts.AssertDestinationSchema(struct["DestinationSchemaUpdate"]) end
	if struct["KinesisFirehoseOutputUpdate"] then asserts.AssertKinesisFirehoseOutputUpdate(struct["KinesisFirehoseOutputUpdate"]) end
	if struct["KinesisStreamsOutputUpdate"] then asserts.AssertKinesisStreamsOutputUpdate(struct["KinesisStreamsOutputUpdate"]) end
	if struct["NameUpdate"] then asserts.AssertInAppStreamName(struct["NameUpdate"]) end
	for k,_ in pairs(struct) do
		assert(keys.OutputUpdate[k], "OutputUpdate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OutputUpdate
-- <p> Describes updates to the output configuration identified by the <code>OutputId</code>. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OutputId [Id] <p>Identifies the specific output configuration that you want to update.</p>
-- * DestinationSchemaUpdate [DestinationSchema] 
-- * KinesisFirehoseOutputUpdate [KinesisFirehoseOutputUpdate] <p>Describes a Amazon Kinesis Firehose delivery stream as the destination for the output.</p>
-- * KinesisStreamsOutputUpdate [KinesisStreamsOutputUpdate] <p>Describes an Amazon Kinesis stream as the destination for the output.</p>
-- * NameUpdate [InAppStreamName] <p>If you want to specify a different in-application stream for this output configuration, use this field to specify the new in-application stream name.</p>
-- Required key: OutputId
-- @return OutputUpdate structure as a key-value pair table
function M.OutputUpdate(args)
	assert(args, "You must provdide an argument table when creating OutputUpdate")
	local t = { 
		["OutputId"] = args["OutputId"],
		["DestinationSchemaUpdate"] = args["DestinationSchemaUpdate"],
		["KinesisFirehoseOutputUpdate"] = args["KinesisFirehoseOutputUpdate"],
		["KinesisStreamsOutputUpdate"] = args["KinesisStreamsOutputUpdate"],
		["NameUpdate"] = args["NameUpdate"],
	}
	asserts.AssertOutputUpdate(t)
	return t
end

keys.InputSchemaUpdate = { ["RecordFormatUpdate"] = true, ["RecordColumnUpdates"] = true, ["RecordEncodingUpdate"] = true, nil }

function asserts.AssertInputSchemaUpdate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InputSchemaUpdate to be of type 'table'")
	if struct["RecordFormatUpdate"] then asserts.AssertRecordFormat(struct["RecordFormatUpdate"]) end
	if struct["RecordColumnUpdates"] then asserts.AssertRecordColumns(struct["RecordColumnUpdates"]) end
	if struct["RecordEncodingUpdate"] then asserts.AssertRecordEncoding(struct["RecordEncodingUpdate"]) end
	for k,_ in pairs(struct) do
		assert(keys.InputSchemaUpdate[k], "InputSchemaUpdate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InputSchemaUpdate
-- <p> Describes updates for the application's input schema. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RecordFormatUpdate [RecordFormat] <p>Specifies the format of the records on the streaming source.</p>
-- * RecordColumnUpdates [RecordColumns] <p>A list of <code>RecordColumn</code> objects. Each object describes the mapping of the streaming source element to the corresponding column in the in-application stream. </p>
-- * RecordEncodingUpdate [RecordEncoding] <p>Specifies the encoding of the records in the streaming source. For example, UTF-8.</p>
-- @return InputSchemaUpdate structure as a key-value pair table
function M.InputSchemaUpdate(args)
	assert(args, "You must provdide an argument table when creating InputSchemaUpdate")
	local t = { 
		["RecordFormatUpdate"] = args["RecordFormatUpdate"],
		["RecordColumnUpdates"] = args["RecordColumnUpdates"],
		["RecordEncodingUpdate"] = args["RecordEncodingUpdate"],
	}
	asserts.AssertInputSchemaUpdate(t)
	return t
end

keys.StartApplicationRequest = { ["ApplicationName"] = true, ["InputConfigurations"] = true, nil }

function asserts.AssertStartApplicationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartApplicationRequest to be of type 'table'")
	assert(struct["ApplicationName"], "Expected key ApplicationName to exist in table")
	assert(struct["InputConfigurations"], "Expected key InputConfigurations to exist in table")
	if struct["ApplicationName"] then asserts.AssertApplicationName(struct["ApplicationName"]) end
	if struct["InputConfigurations"] then asserts.AssertInputConfigurations(struct["InputConfigurations"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartApplicationRequest[k], "StartApplicationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartApplicationRequest
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplicationName [ApplicationName] <p>Name of the application.</p>
-- * InputConfigurations [InputConfigurations] <p>Identifies the specific input, by ID, that the application starts consuming. Amazon Kinesis Analytics starts reading the streaming source associated with the input. You can also specify where in the streaming source you want Amazon Kinesis Analytics to start reading.</p>
-- Required key: ApplicationName
-- Required key: InputConfigurations
-- @return StartApplicationRequest structure as a key-value pair table
function M.StartApplicationRequest(args)
	assert(args, "You must provdide an argument table when creating StartApplicationRequest")
	local t = { 
		["ApplicationName"] = args["ApplicationName"],
		["InputConfigurations"] = args["InputConfigurations"],
	}
	asserts.AssertStartApplicationRequest(t)
	return t
end

keys.AddApplicationReferenceDataSourceRequest = { ["ApplicationName"] = true, ["ReferenceDataSource"] = true, ["CurrentApplicationVersionId"] = true, nil }

function asserts.AssertAddApplicationReferenceDataSourceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddApplicationReferenceDataSourceRequest to be of type 'table'")
	assert(struct["ApplicationName"], "Expected key ApplicationName to exist in table")
	assert(struct["CurrentApplicationVersionId"], "Expected key CurrentApplicationVersionId to exist in table")
	assert(struct["ReferenceDataSource"], "Expected key ReferenceDataSource to exist in table")
	if struct["ApplicationName"] then asserts.AssertApplicationName(struct["ApplicationName"]) end
	if struct["ReferenceDataSource"] then asserts.AssertReferenceDataSource(struct["ReferenceDataSource"]) end
	if struct["CurrentApplicationVersionId"] then asserts.AssertApplicationVersionId(struct["CurrentApplicationVersionId"]) end
	for k,_ in pairs(struct) do
		assert(keys.AddApplicationReferenceDataSourceRequest[k], "AddApplicationReferenceDataSourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddApplicationReferenceDataSourceRequest
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplicationName [ApplicationName] <p>Name of an existing application.</p>
-- * ReferenceDataSource [ReferenceDataSource] <p>The reference data source can be an object in your Amazon S3 bucket. Amazon Kinesis Analytics reads the object and copies the data into the in-application table that is created. You provide an S3 bucket, object key name, and the resulting in-application table that is created. You must also provide an IAM role with the necessary permissions that Amazon Kinesis Analytics can assume to read the object from your S3 bucket on your behalf.</p>
-- * CurrentApplicationVersionId [ApplicationVersionId] <p>Version of the application for which you are adding the reference data source. You can use the <a>DescribeApplication</a> operation to get the current application version. If the version specified is not the current version, the <code>ConcurrentModificationException</code> is returned.</p>
-- Required key: ApplicationName
-- Required key: CurrentApplicationVersionId
-- Required key: ReferenceDataSource
-- @return AddApplicationReferenceDataSourceRequest structure as a key-value pair table
function M.AddApplicationReferenceDataSourceRequest(args)
	assert(args, "You must provdide an argument table when creating AddApplicationReferenceDataSourceRequest")
	local t = { 
		["ApplicationName"] = args["ApplicationName"],
		["ReferenceDataSource"] = args["ReferenceDataSource"],
		["CurrentApplicationVersionId"] = args["CurrentApplicationVersionId"],
	}
	asserts.AssertAddApplicationReferenceDataSourceRequest(t)
	return t
end

keys.CSVMappingParameters = { ["RecordColumnDelimiter"] = true, ["RecordRowDelimiter"] = true, nil }

function asserts.AssertCSVMappingParameters(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CSVMappingParameters to be of type 'table'")
	assert(struct["RecordRowDelimiter"], "Expected key RecordRowDelimiter to exist in table")
	assert(struct["RecordColumnDelimiter"], "Expected key RecordColumnDelimiter to exist in table")
	if struct["RecordColumnDelimiter"] then asserts.AssertRecordColumnDelimiter(struct["RecordColumnDelimiter"]) end
	if struct["RecordRowDelimiter"] then asserts.AssertRecordRowDelimiter(struct["RecordRowDelimiter"]) end
	for k,_ in pairs(struct) do
		assert(keys.CSVMappingParameters[k], "CSVMappingParameters contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CSVMappingParameters
-- <p>Provides additional mapping information when the record format uses delimiters, such as CSV. For example, the following sample records use CSV format, where the records use the <i>'\n'</i> as the row delimiter and a comma (",") as the column delimiter: </p> <p> <code>"name1", "address1" </code> </p> <p> <code>"name2, "address2"</code> </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RecordColumnDelimiter [RecordColumnDelimiter] <p>Column delimiter. For example, in a CSV format, a comma (",") is the typical column delimiter.</p>
-- * RecordRowDelimiter [RecordRowDelimiter] <p>Row delimiter. For example, in a CSV format, <i>'\n'</i> is the typical row delimiter.</p>
-- Required key: RecordRowDelimiter
-- Required key: RecordColumnDelimiter
-- @return CSVMappingParameters structure as a key-value pair table
function M.CSVMappingParameters(args)
	assert(args, "You must provdide an argument table when creating CSVMappingParameters")
	local t = { 
		["RecordColumnDelimiter"] = args["RecordColumnDelimiter"],
		["RecordRowDelimiter"] = args["RecordRowDelimiter"],
	}
	asserts.AssertCSVMappingParameters(t)
	return t
end

keys.ListApplicationsResponse = { ["HasMoreApplications"] = true, ["ApplicationSummaries"] = true, nil }

function asserts.AssertListApplicationsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListApplicationsResponse to be of type 'table'")
	assert(struct["ApplicationSummaries"], "Expected key ApplicationSummaries to exist in table")
	assert(struct["HasMoreApplications"], "Expected key HasMoreApplications to exist in table")
	if struct["HasMoreApplications"] then asserts.AssertBooleanObject(struct["HasMoreApplications"]) end
	if struct["ApplicationSummaries"] then asserts.AssertApplicationSummaries(struct["ApplicationSummaries"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListApplicationsResponse[k], "ListApplicationsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListApplicationsResponse
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * HasMoreApplications [BooleanObject] <p>Returns true if there are more applications to retrieve.</p>
-- * ApplicationSummaries [ApplicationSummaries] <p>List of <code>ApplicationSummary</code> objects. </p>
-- Required key: ApplicationSummaries
-- Required key: HasMoreApplications
-- @return ListApplicationsResponse structure as a key-value pair table
function M.ListApplicationsResponse(args)
	assert(args, "You must provdide an argument table when creating ListApplicationsResponse")
	local t = { 
		["HasMoreApplications"] = args["HasMoreApplications"],
		["ApplicationSummaries"] = args["ApplicationSummaries"],
	}
	asserts.AssertListApplicationsResponse(t)
	return t
end

keys.KinesisStreamsInputUpdate = { ["RoleARNUpdate"] = true, ["ResourceARNUpdate"] = true, nil }

function asserts.AssertKinesisStreamsInputUpdate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected KinesisStreamsInputUpdate to be of type 'table'")
	if struct["RoleARNUpdate"] then asserts.AssertRoleARN(struct["RoleARNUpdate"]) end
	if struct["ResourceARNUpdate"] then asserts.AssertResourceARN(struct["ResourceARNUpdate"]) end
	for k,_ in pairs(struct) do
		assert(keys.KinesisStreamsInputUpdate[k], "KinesisStreamsInputUpdate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type KinesisStreamsInputUpdate
-- <p>When updating application input configuration, provides information about an Amazon Kinesis stream as the streaming source.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RoleARNUpdate [RoleARN] <p>ARN of the IAM role that Amazon Kinesis Analytics can assume to access the stream on your behalf. You need to grant the necessary permissions to this role.</p>
-- * ResourceARNUpdate [ResourceARN] <p>Amazon Resource Name (ARN) of the input Amazon Kinesis stream to read.</p>
-- @return KinesisStreamsInputUpdate structure as a key-value pair table
function M.KinesisStreamsInputUpdate(args)
	assert(args, "You must provdide an argument table when creating KinesisStreamsInputUpdate")
	local t = { 
		["RoleARNUpdate"] = args["RoleARNUpdate"],
		["ResourceARNUpdate"] = args["ResourceARNUpdate"],
	}
	asserts.AssertKinesisStreamsInputUpdate(t)
	return t
end

function asserts.AssertParsedInputRecordField(str)
	assert(str)
	assert(type(str) == "string", "Expected ParsedInputRecordField to be of type 'string'")
end

--  
function M.ParsedInputRecordField(str)
	asserts.AssertParsedInputRecordField(str)
	return str
end

function asserts.AssertFileKey(str)
	assert(str)
	assert(type(str) == "string", "Expected FileKey to be of type 'string'")
end

--  
function M.FileKey(str)
	asserts.AssertFileKey(str)
	return str
end

function asserts.AssertInputStartingPosition(str)
	assert(str)
	assert(type(str) == "string", "Expected InputStartingPosition to be of type 'string'")
end

--  
function M.InputStartingPosition(str)
	asserts.AssertInputStartingPosition(str)
	return str
end

function asserts.AssertRecordEncoding(str)
	assert(str)
	assert(type(str) == "string", "Expected RecordEncoding to be of type 'string'")
end

--  
function M.RecordEncoding(str)
	asserts.AssertRecordEncoding(str)
	return str
end

function asserts.AssertRecordFormatType(str)
	assert(str)
	assert(type(str) == "string", "Expected RecordFormatType to be of type 'string'")
end

--  
function M.RecordFormatType(str)
	asserts.AssertRecordFormatType(str)
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

function asserts.AssertRecordColumnSqlType(str)
	assert(str)
	assert(type(str) == "string", "Expected RecordColumnSqlType to be of type 'string'")
end

--  
function M.RecordColumnSqlType(str)
	asserts.AssertRecordColumnSqlType(str)
	return str
end

function asserts.AssertApplicationStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected ApplicationStatus to be of type 'string'")
end

--  
function M.ApplicationStatus(str)
	asserts.AssertApplicationStatus(str)
	return str
end

function asserts.AssertRoleARN(str)
	assert(str)
	assert(type(str) == "string", "Expected RoleARN to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.RoleARN(str)
	asserts.AssertRoleARN(str)
	return str
end

function asserts.AssertApplicationName(str)
	assert(str)
	assert(type(str) == "string", "Expected ApplicationName to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ApplicationName(str)
	asserts.AssertApplicationName(str)
	return str
end

function asserts.AssertLogStreamARN(str)
	assert(str)
	assert(type(str) == "string", "Expected LogStreamARN to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.LogStreamARN(str)
	asserts.AssertLogStreamARN(str)
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

function asserts.AssertRecordColumnName(str)
	assert(str)
	assert(type(str) == "string", "Expected RecordColumnName to be of type 'string'")
end

--  
function M.RecordColumnName(str)
	asserts.AssertRecordColumnName(str)
	return str
end

function asserts.AssertApplicationCode(str)
	assert(str)
	assert(type(str) == "string", "Expected ApplicationCode to be of type 'string'")
	assert(#str <= 51200, "Expected string to be max 51200 characters")
end

--  
function M.ApplicationCode(str)
	asserts.AssertApplicationCode(str)
	return str
end

function asserts.AssertRawInputRecord(str)
	assert(str)
	assert(type(str) == "string", "Expected RawInputRecord to be of type 'string'")
end

--  
function M.RawInputRecord(str)
	asserts.AssertRawInputRecord(str)
	return str
end

function asserts.AssertApplicationDescription(str)
	assert(str)
	assert(type(str) == "string", "Expected ApplicationDescription to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
end

--  
function M.ApplicationDescription(str)
	asserts.AssertApplicationDescription(str)
	return str
end

function asserts.AssertRecordColumnMapping(str)
	assert(str)
	assert(type(str) == "string", "Expected RecordColumnMapping to be of type 'string'")
end

--  
function M.RecordColumnMapping(str)
	asserts.AssertRecordColumnMapping(str)
	return str
end

function asserts.AssertResourceARN(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceARN to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ResourceARN(str)
	asserts.AssertResourceARN(str)
	return str
end

function asserts.AssertRecordRowPath(str)
	assert(str)
	assert(type(str) == "string", "Expected RecordRowPath to be of type 'string'")
end

--  
function M.RecordRowPath(str)
	asserts.AssertRecordRowPath(str)
	return str
end

function asserts.AssertInAppTableName(str)
	assert(str)
	assert(type(str) == "string", "Expected InAppTableName to be of type 'string'")
	assert(#str <= 32, "Expected string to be max 32 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.InAppTableName(str)
	asserts.AssertInAppTableName(str)
	return str
end

function asserts.AssertInAppStreamName(str)
	assert(str)
	assert(type(str) == "string", "Expected InAppStreamName to be of type 'string'")
	assert(#str <= 32, "Expected string to be max 32 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.InAppStreamName(str)
	asserts.AssertInAppStreamName(str)
	return str
end

function asserts.AssertRecordColumnDelimiter(str)
	assert(str)
	assert(type(str) == "string", "Expected RecordColumnDelimiter to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.RecordColumnDelimiter(str)
	asserts.AssertRecordColumnDelimiter(str)
	return str
end

function asserts.AssertRecordRowDelimiter(str)
	assert(str)
	assert(type(str) == "string", "Expected RecordRowDelimiter to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.RecordRowDelimiter(str)
	asserts.AssertRecordRowDelimiter(str)
	return str
end

function asserts.AssertId(str)
	assert(str)
	assert(type(str) == "string", "Expected Id to be of type 'string'")
	assert(#str <= 50, "Expected string to be max 50 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.Id(str)
	asserts.AssertId(str)
	return str
end

function asserts.AssertApplicationVersionId(long)
	assert(long)
	assert(type(long) == "number", "Expected ApplicationVersionId to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.ApplicationVersionId(long)
	asserts.AssertApplicationVersionId(long)
	return long
end

function asserts.AssertInputParallelismCount(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected InputParallelismCount to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 10, "Expected integer to be max 10")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.InputParallelismCount(integer)
	asserts.AssertInputParallelismCount(integer)
	return integer
end

function asserts.AssertListApplicationsInputLimit(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected ListApplicationsInputLimit to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 50, "Expected integer to be max 50")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.ListApplicationsInputLimit(integer)
	asserts.AssertListApplicationsInputLimit(integer)
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

function asserts.AssertTimestamp(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected Timestamp to be of type 'string'")
end

function M.Timestamp(timestamp)
	asserts.AssertTimestamp(timestamp)
	return timestamp
end

function asserts.AssertInAppStreamNames(list)
	assert(list)
	assert(type(list) == "table", "Expected InAppStreamNames to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertInAppStreamName(v)
	end
end

--  
-- List of InAppStreamName objects
function M.InAppStreamNames(list)
	asserts.AssertInAppStreamNames(list)
	return list
end

function asserts.AssertInputs(list)
	assert(list)
	assert(type(list) == "table", "Expected Inputs to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertInput(v)
	end
end

--  
-- List of Input objects
function M.Inputs(list)
	asserts.AssertInputs(list)
	return list
end

function asserts.AssertInputConfigurations(list)
	assert(list)
	assert(type(list) == "table", "Expected InputConfigurations to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertInputConfiguration(v)
	end
end

--  
-- List of InputConfiguration objects
function M.InputConfigurations(list)
	asserts.AssertInputConfigurations(list)
	return list
end

function asserts.AssertRecordColumns(list)
	assert(list)
	assert(type(list) == "table", "Expected RecordColumns to be of type ''table")
	assert(#list <= 1000, "Expected list to be contain 1000 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertRecordColumn(v)
	end
end

--  
-- List of RecordColumn objects
function M.RecordColumns(list)
	asserts.AssertRecordColumns(list)
	return list
end

function asserts.AssertInputDescriptions(list)
	assert(list)
	assert(type(list) == "table", "Expected InputDescriptions to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertInputDescription(v)
	end
end

--  
-- List of InputDescription objects
function M.InputDescriptions(list)
	asserts.AssertInputDescriptions(list)
	return list
end

function asserts.AssertParsedInputRecords(list)
	assert(list)
	assert(type(list) == "table", "Expected ParsedInputRecords to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertParsedInputRecord(v)
	end
end

--  
-- List of ParsedInputRecord objects
function M.ParsedInputRecords(list)
	asserts.AssertParsedInputRecords(list)
	return list
end

function asserts.AssertReferenceDataSourceUpdates(list)
	assert(list)
	assert(type(list) == "table", "Expected ReferenceDataSourceUpdates to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertReferenceDataSourceUpdate(v)
	end
end

--  
-- List of ReferenceDataSourceUpdate objects
function M.ReferenceDataSourceUpdates(list)
	asserts.AssertReferenceDataSourceUpdates(list)
	return list
end

function asserts.AssertParsedInputRecord(list)
	assert(list)
	assert(type(list) == "table", "Expected ParsedInputRecord to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertParsedInputRecordField(v)
	end
end

--  
-- List of ParsedInputRecordField objects
function M.ParsedInputRecord(list)
	asserts.AssertParsedInputRecord(list)
	return list
end

function asserts.AssertCloudWatchLoggingOptionDescriptions(list)
	assert(list)
	assert(type(list) == "table", "Expected CloudWatchLoggingOptionDescriptions to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertCloudWatchLoggingOptionDescription(v)
	end
end

--  
-- List of CloudWatchLoggingOptionDescription objects
function M.CloudWatchLoggingOptionDescriptions(list)
	asserts.AssertCloudWatchLoggingOptionDescriptions(list)
	return list
end

function asserts.AssertOutputUpdates(list)
	assert(list)
	assert(type(list) == "table", "Expected OutputUpdates to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertOutputUpdate(v)
	end
end

--  
-- List of OutputUpdate objects
function M.OutputUpdates(list)
	asserts.AssertOutputUpdates(list)
	return list
end

function asserts.AssertRawInputRecords(list)
	assert(list)
	assert(type(list) == "table", "Expected RawInputRecords to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertRawInputRecord(v)
	end
end

--  
-- List of RawInputRecord objects
function M.RawInputRecords(list)
	asserts.AssertRawInputRecords(list)
	return list
end

function asserts.AssertApplicationSummaries(list)
	assert(list)
	assert(type(list) == "table", "Expected ApplicationSummaries to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertApplicationSummary(v)
	end
end

--  
-- List of ApplicationSummary objects
function M.ApplicationSummaries(list)
	asserts.AssertApplicationSummaries(list)
	return list
end

function asserts.AssertOutputs(list)
	assert(list)
	assert(type(list) == "table", "Expected Outputs to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertOutput(v)
	end
end

--  
-- List of Output objects
function M.Outputs(list)
	asserts.AssertOutputs(list)
	return list
end

function asserts.AssertOutputDescriptions(list)
	assert(list)
	assert(type(list) == "table", "Expected OutputDescriptions to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertOutputDescription(v)
	end
end

--  
-- List of OutputDescription objects
function M.OutputDescriptions(list)
	asserts.AssertOutputDescriptions(list)
	return list
end

function asserts.AssertReferenceDataSourceDescriptions(list)
	assert(list)
	assert(type(list) == "table", "Expected ReferenceDataSourceDescriptions to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertReferenceDataSourceDescription(v)
	end
end

--  
-- List of ReferenceDataSourceDescription objects
function M.ReferenceDataSourceDescriptions(list)
	asserts.AssertReferenceDataSourceDescriptions(list)
	return list
end

function asserts.AssertCloudWatchLoggingOptions(list)
	assert(list)
	assert(type(list) == "table", "Expected CloudWatchLoggingOptions to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertCloudWatchLoggingOption(v)
	end
end

--  
-- List of CloudWatchLoggingOption objects
function M.CloudWatchLoggingOptions(list)
	asserts.AssertCloudWatchLoggingOptions(list)
	return list
end

function asserts.AssertCloudWatchLoggingOptionUpdates(list)
	assert(list)
	assert(type(list) == "table", "Expected CloudWatchLoggingOptionUpdates to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertCloudWatchLoggingOptionUpdate(v)
	end
end

--  
-- List of CloudWatchLoggingOptionUpdate objects
function M.CloudWatchLoggingOptionUpdates(list)
	asserts.AssertCloudWatchLoggingOptionUpdates(list)
	return list
end

function asserts.AssertInputUpdates(list)
	assert(list)
	assert(type(list) == "table", "Expected InputUpdates to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertInputUpdate(v)
	end
end

--  
-- List of InputUpdate objects
function M.InputUpdates(list)
	asserts.AssertInputUpdates(list)
	return list
end


local content_type = require "aws-sdk.core.content_type"
local request_headers = require "aws-sdk.core.request_headers"
local request_handlers = require "aws-sdk.core.request_handlers"

local settings = {}


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
	assert(config.region, "You must provide a region in the config table")

	settings.service = M.metadata.endpoint_prefix
	settings.protocol = M.metadata.protocol
	settings.region = config.region
	settings.endpoint = config.endpoint_override or endpoint_for_region(config.region, config.use_dualstack)
	settings.uri = (config.scheme or "https") .. "://" .. settings.endpoint
end


--
-- OPERATIONS
--
--- Call DiscoverInputSchema asynchronously, invoking a callback when done
-- @param DiscoverInputSchemaRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DiscoverInputSchemaAsync(DiscoverInputSchemaRequest, cb)
	assert(DiscoverInputSchemaRequest, "You must provide a DiscoverInputSchemaRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "KinesisAnalytics_20150814.DiscoverInputSchema",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DiscoverInputSchemaRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DiscoverInputSchema synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DiscoverInputSchemaRequest
-- @return response
-- @return error_message
function M.DiscoverInputSchemaSync(DiscoverInputSchemaRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DiscoverInputSchemaAsync(DiscoverInputSchemaRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteApplicationOutput asynchronously, invoking a callback when done
-- @param DeleteApplicationOutputRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteApplicationOutputAsync(DeleteApplicationOutputRequest, cb)
	assert(DeleteApplicationOutputRequest, "You must provide a DeleteApplicationOutputRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "KinesisAnalytics_20150814.DeleteApplicationOutput",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteApplicationOutputRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteApplicationOutput synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteApplicationOutputRequest
-- @return response
-- @return error_message
function M.DeleteApplicationOutputSync(DeleteApplicationOutputRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteApplicationOutputAsync(DeleteApplicationOutputRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call AddApplicationReferenceDataSource asynchronously, invoking a callback when done
-- @param AddApplicationReferenceDataSourceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AddApplicationReferenceDataSourceAsync(AddApplicationReferenceDataSourceRequest, cb)
	assert(AddApplicationReferenceDataSourceRequest, "You must provide a AddApplicationReferenceDataSourceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "KinesisAnalytics_20150814.AddApplicationReferenceDataSource",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", AddApplicationReferenceDataSourceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AddApplicationReferenceDataSource synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AddApplicationReferenceDataSourceRequest
-- @return response
-- @return error_message
function M.AddApplicationReferenceDataSourceSync(AddApplicationReferenceDataSourceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AddApplicationReferenceDataSourceAsync(AddApplicationReferenceDataSourceRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListApplications asynchronously, invoking a callback when done
-- @param ListApplicationsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListApplicationsAsync(ListApplicationsRequest, cb)
	assert(ListApplicationsRequest, "You must provide a ListApplicationsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "KinesisAnalytics_20150814.ListApplications",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", ListApplicationsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListApplications synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListApplicationsRequest
-- @return response
-- @return error_message
function M.ListApplicationsSync(ListApplicationsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListApplicationsAsync(ListApplicationsRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateApplication asynchronously, invoking a callback when done
-- @param UpdateApplicationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateApplicationAsync(UpdateApplicationRequest, cb)
	assert(UpdateApplicationRequest, "You must provide a UpdateApplicationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "KinesisAnalytics_20150814.UpdateApplication",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateApplicationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateApplication synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateApplicationRequest
-- @return response
-- @return error_message
function M.UpdateApplicationSync(UpdateApplicationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateApplicationAsync(UpdateApplicationRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call StopApplication asynchronously, invoking a callback when done
-- @param StopApplicationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.StopApplicationAsync(StopApplicationRequest, cb)
	assert(StopApplicationRequest, "You must provide a StopApplicationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "KinesisAnalytics_20150814.StopApplication",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", StopApplicationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call StopApplication synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StopApplicationRequest
-- @return response
-- @return error_message
function M.StopApplicationSync(StopApplicationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StopApplicationAsync(StopApplicationRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call AddApplicationOutput asynchronously, invoking a callback when done
-- @param AddApplicationOutputRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AddApplicationOutputAsync(AddApplicationOutputRequest, cb)
	assert(AddApplicationOutputRequest, "You must provide a AddApplicationOutputRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "KinesisAnalytics_20150814.AddApplicationOutput",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", AddApplicationOutputRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AddApplicationOutput synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AddApplicationOutputRequest
-- @return response
-- @return error_message
function M.AddApplicationOutputSync(AddApplicationOutputRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AddApplicationOutputAsync(AddApplicationOutputRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteApplication asynchronously, invoking a callback when done
-- @param DeleteApplicationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteApplicationAsync(DeleteApplicationRequest, cb)
	assert(DeleteApplicationRequest, "You must provide a DeleteApplicationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "KinesisAnalytics_20150814.DeleteApplication",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteApplicationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteApplication synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteApplicationRequest
-- @return response
-- @return error_message
function M.DeleteApplicationSync(DeleteApplicationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteApplicationAsync(DeleteApplicationRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call AddApplicationCloudWatchLoggingOption asynchronously, invoking a callback when done
-- @param AddApplicationCloudWatchLoggingOptionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AddApplicationCloudWatchLoggingOptionAsync(AddApplicationCloudWatchLoggingOptionRequest, cb)
	assert(AddApplicationCloudWatchLoggingOptionRequest, "You must provide a AddApplicationCloudWatchLoggingOptionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "KinesisAnalytics_20150814.AddApplicationCloudWatchLoggingOption",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", AddApplicationCloudWatchLoggingOptionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AddApplicationCloudWatchLoggingOption synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AddApplicationCloudWatchLoggingOptionRequest
-- @return response
-- @return error_message
function M.AddApplicationCloudWatchLoggingOptionSync(AddApplicationCloudWatchLoggingOptionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AddApplicationCloudWatchLoggingOptionAsync(AddApplicationCloudWatchLoggingOptionRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteApplicationCloudWatchLoggingOption asynchronously, invoking a callback when done
-- @param DeleteApplicationCloudWatchLoggingOptionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteApplicationCloudWatchLoggingOptionAsync(DeleteApplicationCloudWatchLoggingOptionRequest, cb)
	assert(DeleteApplicationCloudWatchLoggingOptionRequest, "You must provide a DeleteApplicationCloudWatchLoggingOptionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "KinesisAnalytics_20150814.DeleteApplicationCloudWatchLoggingOption",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteApplicationCloudWatchLoggingOptionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteApplicationCloudWatchLoggingOption synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteApplicationCloudWatchLoggingOptionRequest
-- @return response
-- @return error_message
function M.DeleteApplicationCloudWatchLoggingOptionSync(DeleteApplicationCloudWatchLoggingOptionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteApplicationCloudWatchLoggingOptionAsync(DeleteApplicationCloudWatchLoggingOptionRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call AddApplicationInput asynchronously, invoking a callback when done
-- @param AddApplicationInputRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AddApplicationInputAsync(AddApplicationInputRequest, cb)
	assert(AddApplicationInputRequest, "You must provide a AddApplicationInputRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "KinesisAnalytics_20150814.AddApplicationInput",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", AddApplicationInputRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AddApplicationInput synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AddApplicationInputRequest
-- @return response
-- @return error_message
function M.AddApplicationInputSync(AddApplicationInputRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AddApplicationInputAsync(AddApplicationInputRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeApplication asynchronously, invoking a callback when done
-- @param DescribeApplicationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeApplicationAsync(DescribeApplicationRequest, cb)
	assert(DescribeApplicationRequest, "You must provide a DescribeApplicationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "KinesisAnalytics_20150814.DescribeApplication",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeApplicationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeApplication synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeApplicationRequest
-- @return response
-- @return error_message
function M.DescribeApplicationSync(DescribeApplicationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeApplicationAsync(DescribeApplicationRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteApplicationReferenceDataSource asynchronously, invoking a callback when done
-- @param DeleteApplicationReferenceDataSourceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteApplicationReferenceDataSourceAsync(DeleteApplicationReferenceDataSourceRequest, cb)
	assert(DeleteApplicationReferenceDataSourceRequest, "You must provide a DeleteApplicationReferenceDataSourceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "KinesisAnalytics_20150814.DeleteApplicationReferenceDataSource",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteApplicationReferenceDataSourceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteApplicationReferenceDataSource synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteApplicationReferenceDataSourceRequest
-- @return response
-- @return error_message
function M.DeleteApplicationReferenceDataSourceSync(DeleteApplicationReferenceDataSourceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteApplicationReferenceDataSourceAsync(DeleteApplicationReferenceDataSourceRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call StartApplication asynchronously, invoking a callback when done
-- @param StartApplicationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.StartApplicationAsync(StartApplicationRequest, cb)
	assert(StartApplicationRequest, "You must provide a StartApplicationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "KinesisAnalytics_20150814.StartApplication",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", StartApplicationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call StartApplication synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StartApplicationRequest
-- @return response
-- @return error_message
function M.StartApplicationSync(StartApplicationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StartApplicationAsync(StartApplicationRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateApplication asynchronously, invoking a callback when done
-- @param CreateApplicationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateApplicationAsync(CreateApplicationRequest, cb)
	assert(CreateApplicationRequest, "You must provide a CreateApplicationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "KinesisAnalytics_20150814.CreateApplication",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateApplicationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateApplication synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateApplicationRequest
-- @return response
-- @return error_message
function M.CreateApplicationSync(CreateApplicationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateApplicationAsync(CreateApplicationRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end


return M
