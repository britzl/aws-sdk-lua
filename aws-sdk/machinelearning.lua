--- GENERATED CODE - DO NOT MODIFY
-- Amazon Machine Learning (machinelearning-2014-12-12)

local M = {}

M.metadata = {
	api_version = "2014-12-12",
	json_version = "1.1",
	protocol = "json",
	checksum_format = "",
	endpoint_prefix = "machinelearning",
	service_abbreviation = "",
	service_full_name = "Amazon Machine Learning",
	signature_version = "v4",
	target_prefix = "AmazonML_20141212",
	timestamp_format = "",
	global_endpoint = "",
	uid = "machinelearning-2014-12-12",
}

local CreateDataSourceFromRedshiftOutput_keys = { "DataSourceId" = true, nil }

function M.AssertCreateDataSourceFromRedshiftOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDataSourceFromRedshiftOutput to be of type 'table'")
	if struct["DataSourceId"] then M.AssertEntityId(struct["DataSourceId"]) end
	for k,_ in pairs(struct) do
		assert(CreateDataSourceFromRedshiftOutput_keys[k], "CreateDataSourceFromRedshiftOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDataSourceFromRedshiftOutput
-- <p> Represents the output of a <code>CreateDataSourceFromRedshift</code> operation, and is an acknowledgement that Amazon ML received the request.</p> <p>The <code>CreateDataSourceFromRedshift</code> operation is asynchronous. You can poll for updates by using the <code>GetBatchPrediction</code> operation and checking the <code>Status</code> parameter. </p>
-- @param DataSourceId [EntityId] <p>A user-supplied ID that uniquely identifies the datasource. This value should be identical to the value of the <code>DataSourceID</code> in the request. </p>
function M.CreateDataSourceFromRedshiftOutput(DataSourceId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDataSourceFromRedshiftOutput")
	local t = { 
		["DataSourceId"] = DataSourceId,
	}
	M.AssertCreateDataSourceFromRedshiftOutput(t)
	return t
end

local InternalServerException_keys = { "message" = true, "code" = true, nil }

function M.AssertInternalServerException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InternalServerException to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	if struct["code"] then M.AssertErrorCode(struct["code"]) end
	for k,_ in pairs(struct) do
		assert(InternalServerException_keys[k], "InternalServerException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InternalServerException
-- <p>An error on the server occurred when trying to process a request.</p>
-- @param message [ErrorMessage] <p>An error on the server occurred when trying to process a request.</p>
-- @param code [ErrorCode] <p>An error on the server occurred when trying to process a request.</p>
function M.InternalServerException(message, code, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InternalServerException")
	local t = { 
		["message"] = message,
		["code"] = code,
	}
	M.AssertInternalServerException(t)
	return t
end

local DeleteTagsInput_keys = { "ResourceType" = true, "ResourceId" = true, "TagKeys" = true, nil }

function M.AssertDeleteTagsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteTagsInput to be of type 'table'")
	assert(struct["TagKeys"], "Expected key TagKeys to exist in table")
	assert(struct["ResourceId"], "Expected key ResourceId to exist in table")
	assert(struct["ResourceType"], "Expected key ResourceType to exist in table")
	if struct["ResourceType"] then M.AssertTaggableResourceType(struct["ResourceType"]) end
	if struct["ResourceId"] then M.AssertEntityId(struct["ResourceId"]) end
	if struct["TagKeys"] then M.AssertTagKeyList(struct["TagKeys"]) end
	for k,_ in pairs(struct) do
		assert(DeleteTagsInput_keys[k], "DeleteTagsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteTagsInput
--  
-- @param ResourceType [TaggableResourceType] <p>The type of the tagged ML object.</p>
-- @param ResourceId [EntityId] <p>The ID of the tagged ML object. For example, <code>exampleModelId</code>.</p>
-- @param TagKeys [TagKeyList] <p>One or more tags to delete.</p>
-- Required parameter: TagKeys
-- Required parameter: ResourceId
-- Required parameter: ResourceType
function M.DeleteTagsInput(ResourceType, ResourceId, TagKeys, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteTagsInput")
	local t = { 
		["ResourceType"] = ResourceType,
		["ResourceId"] = ResourceId,
		["TagKeys"] = TagKeys,
	}
	M.AssertDeleteTagsInput(t)
	return t
end

local DescribeBatchPredictionsInput_keys = { "GT" = true, "FilterVariable" = true, "GE" = true, "NE" = true, "LT" = true, "LE" = true, "Limit" = true, "SortOrder" = true, "NextToken" = true, "EQ" = true, "Prefix" = true, nil }

function M.AssertDescribeBatchPredictionsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeBatchPredictionsInput to be of type 'table'")
	if struct["GT"] then M.AssertComparatorValue(struct["GT"]) end
	if struct["FilterVariable"] then M.AssertBatchPredictionFilterVariable(struct["FilterVariable"]) end
	if struct["GE"] then M.AssertComparatorValue(struct["GE"]) end
	if struct["NE"] then M.AssertComparatorValue(struct["NE"]) end
	if struct["LT"] then M.AssertComparatorValue(struct["LT"]) end
	if struct["LE"] then M.AssertComparatorValue(struct["LE"]) end
	if struct["Limit"] then M.AssertPageLimit(struct["Limit"]) end
	if struct["SortOrder"] then M.AssertSortOrder(struct["SortOrder"]) end
	if struct["NextToken"] then M.AssertStringType(struct["NextToken"]) end
	if struct["EQ"] then M.AssertComparatorValue(struct["EQ"]) end
	if struct["Prefix"] then M.AssertComparatorValue(struct["Prefix"]) end
	for k,_ in pairs(struct) do
		assert(DescribeBatchPredictionsInput_keys[k], "DescribeBatchPredictionsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeBatchPredictionsInput
--  
-- @param GT [ComparatorValue] <p>The greater than operator. The <code>BatchPrediction</code> results will have <code>FilterVariable</code> values that are greater than the value specified with <code>GT</code>.</p>
-- @param FilterVariable [BatchPredictionFilterVariable] <p>Use one of the following variables to filter a list of <code>BatchPrediction</code>:</p> <ul> <li> <code>CreatedAt</code> - Sets the search criteria to the <code>BatchPrediction</code> creation date.</li> <li> <code>Status</code> - Sets the search criteria to the <code>BatchPrediction</code> status.</li> <li> <code>Name</code> - Sets the search criteria to the contents of the <code>BatchPrediction</code><b> </b> <code>Name</code>.</li> <li> <code>IAMUser</code> - Sets the search criteria to the user account that invoked the <code>BatchPrediction</code> creation.</li> <li> <code>MLModelId</code> - Sets the search criteria to the <code>MLModel</code> used in the <code>BatchPrediction</code>.</li> <li> <code>DataSourceId</code> - Sets the search criteria to the <code>DataSource</code> used in the <code>BatchPrediction</code>.</li> <li> <code>DataURI</code> - Sets the search criteria to the data file(s) used in the <code>BatchPrediction</code>. The URL can identify either a file or an Amazon Simple Storage Solution (Amazon S3) bucket or directory.</li> </ul>
-- @param GE [ComparatorValue] <p>The greater than or equal to operator. The <code>BatchPrediction</code> results will have <code>FilterVariable</code> values that are greater than or equal to the value specified with <code>GE</code>. </p>
-- @param NE [ComparatorValue] <p>The not equal to operator. The <code>BatchPrediction</code> results will have <code>FilterVariable</code> values not equal to the value specified with <code>NE</code>.</p>
-- @param LT [ComparatorValue] <p>The less than operator. The <code>BatchPrediction</code> results will have <code>FilterVariable</code> values that are less than the value specified with <code>LT</code>.</p>
-- @param LE [ComparatorValue] <p>The less than or equal to operator. The <code>BatchPrediction</code> results will have <code>FilterVariable</code> values that are less than or equal to the value specified with <code>LE</code>.</p>
-- @param Limit [PageLimit] <p>The number of pages of information to include in the result. The range of acceptable values is <code>1</code> through <code>100</code>. The default value is <code>100</code>.</p>
-- @param SortOrder [SortOrder] <p>A two-value parameter that determines the sequence of the resulting list of <code>MLModel</code>s.</p> <ul> <li> <code>asc</code> - Arranges the list in ascending order (A-Z, 0-9).</li> <li> <code>dsc</code> - Arranges the list in descending order (Z-A, 9-0).</li> </ul> <p>Results are sorted by <code>FilterVariable</code>.</p>
-- @param NextToken [StringType] <p>An ID of the page in the paginated results.</p>
-- @param EQ [ComparatorValue] <p>The equal to operator. The <code>BatchPrediction</code> results will have <code>FilterVariable</code> values that exactly match the value specified with <code>EQ</code>.</p>
-- @param Prefix [ComparatorValue] <p>A string that is found at the beginning of a variable, such as <code>Name</code> or <code>Id</code>.</p> <p>For example, a <code>Batch Prediction</code> operation could have the <code>Name</code> <code>2014-09-09-HolidayGiftMailer</code>. To search for this <code>BatchPrediction</code>, select <code>Name</code> for the <code>FilterVariable</code> and any of the following strings for the <code>Prefix</code>: </p> <ul> <li><p>2014-09</p></li> <li><p>2014-09-09</p></li> <li><p>2014-09-09-Holiday</p></li> </ul>
function M.DescribeBatchPredictionsInput(GT, FilterVariable, GE, NE, LT, LE, Limit, SortOrder, NextToken, EQ, Prefix, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeBatchPredictionsInput")
	local t = { 
		["GT"] = GT,
		["FilterVariable"] = FilterVariable,
		["GE"] = GE,
		["NE"] = NE,
		["LT"] = LT,
		["LE"] = LE,
		["Limit"] = Limit,
		["SortOrder"] = SortOrder,
		["NextToken"] = NextToken,
		["EQ"] = EQ,
		["Prefix"] = Prefix,
	}
	M.AssertDescribeBatchPredictionsInput(t)
	return t
end

local CreateBatchPredictionOutput_keys = { "BatchPredictionId" = true, nil }

function M.AssertCreateBatchPredictionOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateBatchPredictionOutput to be of type 'table'")
	if struct["BatchPredictionId"] then M.AssertEntityId(struct["BatchPredictionId"]) end
	for k,_ in pairs(struct) do
		assert(CreateBatchPredictionOutput_keys[k], "CreateBatchPredictionOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateBatchPredictionOutput
-- <p> Represents the output of a <code>CreateBatchPrediction</code> operation, and is an acknowledgement that Amazon ML received the request.</p> <p>The <code>CreateBatchPrediction</code> operation is asynchronous. You can poll for status updates by using the <code>&gt;GetBatchPrediction</code> operation and checking the <code>Status</code> parameter of the result. </p>
-- @param BatchPredictionId [EntityId] <p>A user-supplied ID that uniquely identifies the <code>BatchPrediction</code>. This value is identical to the value of the <code>BatchPredictionId</code> in the request.</p>
function M.CreateBatchPredictionOutput(BatchPredictionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateBatchPredictionOutput")
	local t = { 
		["BatchPredictionId"] = BatchPredictionId,
	}
	M.AssertCreateBatchPredictionOutput(t)
	return t
end

local AddTagsOutput_keys = { "ResourceType" = true, "ResourceId" = true, nil }

function M.AssertAddTagsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddTagsOutput to be of type 'table'")
	if struct["ResourceType"] then M.AssertTaggableResourceType(struct["ResourceType"]) end
	if struct["ResourceId"] then M.AssertEntityId(struct["ResourceId"]) end
	for k,_ in pairs(struct) do
		assert(AddTagsOutput_keys[k], "AddTagsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddTagsOutput
-- <p>Amazon ML returns the following elements. </p>
-- @param ResourceType [TaggableResourceType] <p>The type of the ML object that was tagged.</p>
-- @param ResourceId [EntityId] <p>The ID of the ML object that was tagged.</p>
function M.AddTagsOutput(ResourceType, ResourceId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddTagsOutput")
	local t = { 
		["ResourceType"] = ResourceType,
		["ResourceId"] = ResourceId,
	}
	M.AssertAddTagsOutput(t)
	return t
end

local MLModel_keys = { "Status" = true, "SizeInBytes" = true, "ComputeTime" = true, "Name" = true, "Algorithm" = true, "ScoreThreshold" = true, "TrainingParameters" = true, "MLModelType" = true, "CreatedByIamUser" = true, "ScoreThresholdLastUpdatedAt" = true, "EndpointInfo" = true, "MLModelId" = true, "InputDataLocationS3" = true, "LastUpdatedAt" = true, "TrainingDataSourceId" = true, "StartedAt" = true, "Message" = true, "CreatedAt" = true, "FinishedAt" = true, nil }

function M.AssertMLModel(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MLModel to be of type 'table'")
	if struct["Status"] then M.AssertEntityStatus(struct["Status"]) end
	if struct["SizeInBytes"] then M.AssertLongType(struct["SizeInBytes"]) end
	if struct["ComputeTime"] then M.AssertLongType(struct["ComputeTime"]) end
	if struct["Name"] then M.AssertMLModelName(struct["Name"]) end
	if struct["Algorithm"] then M.AssertAlgorithm(struct["Algorithm"]) end
	if struct["ScoreThreshold"] then M.AssertScoreThreshold(struct["ScoreThreshold"]) end
	if struct["TrainingParameters"] then M.AssertTrainingParameters(struct["TrainingParameters"]) end
	if struct["MLModelType"] then M.AssertMLModelType(struct["MLModelType"]) end
	if struct["CreatedByIamUser"] then M.AssertAwsUserArn(struct["CreatedByIamUser"]) end
	if struct["ScoreThresholdLastUpdatedAt"] then M.AssertEpochTime(struct["ScoreThresholdLastUpdatedAt"]) end
	if struct["EndpointInfo"] then M.AssertRealtimeEndpointInfo(struct["EndpointInfo"]) end
	if struct["MLModelId"] then M.AssertEntityId(struct["MLModelId"]) end
	if struct["InputDataLocationS3"] then M.AssertS3Url(struct["InputDataLocationS3"]) end
	if struct["LastUpdatedAt"] then M.AssertEpochTime(struct["LastUpdatedAt"]) end
	if struct["TrainingDataSourceId"] then M.AssertEntityId(struct["TrainingDataSourceId"]) end
	if struct["StartedAt"] then M.AssertEpochTime(struct["StartedAt"]) end
	if struct["Message"] then M.AssertMessage(struct["Message"]) end
	if struct["CreatedAt"] then M.AssertEpochTime(struct["CreatedAt"]) end
	if struct["FinishedAt"] then M.AssertEpochTime(struct["FinishedAt"]) end
	for k,_ in pairs(struct) do
		assert(MLModel_keys[k], "MLModel contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MLModel
-- <p> Represents the output of a <code>GetMLModel</code> operation. </p> <p>The content consists of the detailed metadata and the current status of the <code>MLModel</code>.</p>
-- @param Status [EntityStatus] <p>The current status of an <code>MLModel</code>. This element can have one of the following values: </p> <ul> <li> <code>PENDING</code> - Amazon Machine Learning (Amazon ML) submitted a request to create an <code>MLModel</code>.</li> <li> <code>INPROGRESS</code> - The creation process is underway.</li> <li> <code>FAILED</code> - The request to create an <code>MLModel</code> didn't run to completion. The model isn't usable.</li> <li> <code>COMPLETED</code> - The creation process completed successfully.</li> <li> <code>DELETED</code> - The <code>MLModel</code> is marked as deleted. It isn't usable.</li> </ul>
-- @param SizeInBytes [LongType] <p> Represents the output of a <code>GetMLModel</code> operation. </p> <p>The content consists of the detailed metadata and the current status of the <code>MLModel</code>.</p>
-- @param ComputeTime [LongType] <p> Represents the output of a <code>GetMLModel</code> operation. </p> <p>The content consists of the detailed metadata and the current status of the <code>MLModel</code>.</p>
-- @param Name [MLModelName] <p>A user-supplied name or description of the <code>MLModel</code>.</p>
-- @param Algorithm [Algorithm] <p>The algorithm used to train the <code>MLModel</code>. The following algorithm is supported:</p> <ul> <li> <code>SGD</code> -- Stochastic gradient descent. The goal of <code>SGD</code> is to minimize the gradient of the loss function. </li> </ul>
-- @param ScoreThreshold [ScoreThreshold] <p> Represents the output of a <code>GetMLModel</code> operation. </p> <p>The content consists of the detailed metadata and the current status of the <code>MLModel</code>.</p>
-- @param TrainingParameters [TrainingParameters] <p>A list of the training parameters in the <code>MLModel</code>. The list is implemented as a map of key-value pairs.</p> <p>The following is the current set of training parameters: </p> <ul> <li> <p><code>sgd.maxMLModelSizeInBytes</code> - The maximum allowed size of the model. Depending on the input data, the size of the model might affect its performance.</p> <p> The value is an integer that ranges from <code>100000</code> to <code>2147483648</code>. The default value is <code>33554432</code>.</p> </li> <li><p><code>sgd.maxPasses</code> - The number of times that the training process traverses the observations to build the <code>MLModel</code>. The value is an integer that ranges from <code>1</code> to <code>10000</code>. The default value is <code>10</code>.</p></li> <li><p><code>sgd.shuffleType</code> - Whether Amazon ML shuffles the training data. Shuffling the data improves a model's ability to find the optimal solution for a variety of data types. The valid values are <code>auto</code> and <code>none</code>. The default value is <code>none</code>.</p></li> <li> <p><code>sgd.l1RegularizationAmount</code> - The coefficient regularization L1 norm, which controls overfitting the data by penalizing large coefficients. This parameter tends to drive coefficients to zero, resulting in sparse feature set. If you use this parameter, start by specifying a small value, such as <code>1.0E-08</code>.</p> <p>The value is a double that ranges from <code>0</code> to <code>MAX_DOUBLE</code>. The default is to not use L1 normalization. This parameter can't be used when <code>L2</code> is specified. Use this parameter sparingly.</p> </li> <li> <p><code>sgd.l2RegularizationAmount</code> - The coefficient regularization L2 norm, which controls overfitting the data by penalizing large coefficients. This tends to drive coefficients to small, nonzero values. If you use this parameter, start by specifying a small value, such as <code>1.0E-08</code>.</p> <p>The value is a double that ranges from <code>0</code> to <code>MAX_DOUBLE</code>. The default is to not use L2 normalization. This parameter can't be used when <code>L1</code> is specified. Use this parameter sparingly.</p> </li> </ul>
-- @param MLModelType [MLModelType] <p>Identifies the <code>MLModel</code> category. The following are the available types:</p> <ul> <li> <code>REGRESSION</code> - Produces a numeric result. For example, "What price should a house be listed at?"</li> <li> <code>BINARY</code> - Produces one of two possible results. For example, "Is this a child-friendly web site?".</li> <li> <code>MULTICLASS</code> - Produces one of several possible results. For example, "Is this a HIGH-, LOW-, or MEDIUM<?oxy_delete author="annbech" timestamp="20160328T175050-0700" content=" "><?oxy_insert_start author="annbech" timestamp="20160328T175050-0700">-<?oxy_insert_end>risk trade?".</li> </ul>
-- @param CreatedByIamUser [AwsUserArn] <p>The AWS user account from which the <code>MLModel</code> was created. The account type can be either an AWS root account or an AWS Identity and Access Management (IAM) user account.</p>
-- @param ScoreThresholdLastUpdatedAt [EpochTime] <p>The time of the most recent edit to the <code>ScoreThreshold</code>. The time is expressed in epoch time.</p>
-- @param EndpointInfo [RealtimeEndpointInfo] <p>The current endpoint of the <code>MLModel</code>.</p>
-- @param MLModelId [EntityId] <p>The ID assigned to the <code>MLModel</code> at creation.</p>
-- @param InputDataLocationS3 [S3Url] <p>The location of the data file or directory in Amazon Simple Storage Service (Amazon S3).</p>
-- @param LastUpdatedAt [EpochTime] <p>The time of the most recent edit to the <code>MLModel</code>. The time is expressed in epoch time.</p>
-- @param TrainingDataSourceId [EntityId] <p>The ID of the training <code>DataSource</code>. The <code>CreateMLModel</code> operation uses the <code>TrainingDataSourceId</code>.</p>
-- @param StartedAt [EpochTime] <p> Represents the output of a <code>GetMLModel</code> operation. </p> <p>The content consists of the detailed metadata and the current status of the <code>MLModel</code>.</p>
-- @param Message [Message] <p>A description of the most recent details about accessing the <code>MLModel</code>.</p>
-- @param CreatedAt [EpochTime] <p>The time that the <code>MLModel</code> was created. The time is expressed in epoch time.</p>
-- @param FinishedAt [EpochTime] <p> Represents the output of a <code>GetMLModel</code> operation. </p> <p>The content consists of the detailed metadata and the current status of the <code>MLModel</code>.</p>
function M.MLModel(Status, SizeInBytes, ComputeTime, Name, Algorithm, ScoreThreshold, TrainingParameters, MLModelType, CreatedByIamUser, ScoreThresholdLastUpdatedAt, EndpointInfo, MLModelId, InputDataLocationS3, LastUpdatedAt, TrainingDataSourceId, StartedAt, Message, CreatedAt, FinishedAt, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MLModel")
	local t = { 
		["Status"] = Status,
		["SizeInBytes"] = SizeInBytes,
		["ComputeTime"] = ComputeTime,
		["Name"] = Name,
		["Algorithm"] = Algorithm,
		["ScoreThreshold"] = ScoreThreshold,
		["TrainingParameters"] = TrainingParameters,
		["MLModelType"] = MLModelType,
		["CreatedByIamUser"] = CreatedByIamUser,
		["ScoreThresholdLastUpdatedAt"] = ScoreThresholdLastUpdatedAt,
		["EndpointInfo"] = EndpointInfo,
		["MLModelId"] = MLModelId,
		["InputDataLocationS3"] = InputDataLocationS3,
		["LastUpdatedAt"] = LastUpdatedAt,
		["TrainingDataSourceId"] = TrainingDataSourceId,
		["StartedAt"] = StartedAt,
		["Message"] = Message,
		["CreatedAt"] = CreatedAt,
		["FinishedAt"] = FinishedAt,
	}
	M.AssertMLModel(t)
	return t
end

local InvalidTagException_keys = { "message" = true, nil }

function M.AssertInvalidTagException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidTagException to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidTagException_keys[k], "InvalidTagException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidTagException
--  
-- @param message [ErrorMessage]  
function M.InvalidTagException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidTagException")
	local t = { 
		["message"] = message,
	}
	M.AssertInvalidTagException(t)
	return t
end

local UpdateBatchPredictionInput_keys = { "BatchPredictionId" = true, "BatchPredictionName" = true, nil }

function M.AssertUpdateBatchPredictionInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateBatchPredictionInput to be of type 'table'")
	assert(struct["BatchPredictionId"], "Expected key BatchPredictionId to exist in table")
	assert(struct["BatchPredictionName"], "Expected key BatchPredictionName to exist in table")
	if struct["BatchPredictionId"] then M.AssertEntityId(struct["BatchPredictionId"]) end
	if struct["BatchPredictionName"] then M.AssertEntityName(struct["BatchPredictionName"]) end
	for k,_ in pairs(struct) do
		assert(UpdateBatchPredictionInput_keys[k], "UpdateBatchPredictionInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateBatchPredictionInput
--  
-- @param BatchPredictionId [EntityId] <p>The ID assigned to the <code>BatchPrediction</code> during creation.</p>
-- @param BatchPredictionName [EntityName] <p>A new user-supplied name or description of the <code>BatchPrediction</code>.</p>
-- Required parameter: BatchPredictionId
-- Required parameter: BatchPredictionName
function M.UpdateBatchPredictionInput(BatchPredictionId, BatchPredictionName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateBatchPredictionInput")
	local t = { 
		["BatchPredictionId"] = BatchPredictionId,
		["BatchPredictionName"] = BatchPredictionName,
	}
	M.AssertUpdateBatchPredictionInput(t)
	return t
end

local RedshiftMetadata_keys = { "RedshiftDatabase" = true, "DatabaseUserName" = true, "SelectSqlQuery" = true, nil }

function M.AssertRedshiftMetadata(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RedshiftMetadata to be of type 'table'")
	if struct["RedshiftDatabase"] then M.AssertRedshiftDatabase(struct["RedshiftDatabase"]) end
	if struct["DatabaseUserName"] then M.AssertRedshiftDatabaseUsername(struct["DatabaseUserName"]) end
	if struct["SelectSqlQuery"] then M.AssertRedshiftSelectSqlQuery(struct["SelectSqlQuery"]) end
	for k,_ in pairs(struct) do
		assert(RedshiftMetadata_keys[k], "RedshiftMetadata contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RedshiftMetadata
-- <p>Describes the <code>DataSource</code> details specific to Amazon Redshift.</p>
-- @param RedshiftDatabase [RedshiftDatabase] <p>Describes the <code>DataSource</code> details specific to Amazon Redshift.</p>
-- @param DatabaseUserName [RedshiftDatabaseUsername] <p>Describes the <code>DataSource</code> details specific to Amazon Redshift.</p>
-- @param SelectSqlQuery [RedshiftSelectSqlQuery] <p> The SQL query that is specified during <a>CreateDataSourceFromRedshift</a>. Returns only if <code>Verbose</code> is true in GetDataSourceInput. </p>
function M.RedshiftMetadata(RedshiftDatabase, DatabaseUserName, SelectSqlQuery, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RedshiftMetadata")
	local t = { 
		["RedshiftDatabase"] = RedshiftDatabase,
		["DatabaseUserName"] = DatabaseUserName,
		["SelectSqlQuery"] = SelectSqlQuery,
	}
	M.AssertRedshiftMetadata(t)
	return t
end

local UpdateBatchPredictionOutput_keys = { "BatchPredictionId" = true, nil }

function M.AssertUpdateBatchPredictionOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateBatchPredictionOutput to be of type 'table'")
	if struct["BatchPredictionId"] then M.AssertEntityId(struct["BatchPredictionId"]) end
	for k,_ in pairs(struct) do
		assert(UpdateBatchPredictionOutput_keys[k], "UpdateBatchPredictionOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateBatchPredictionOutput
-- <p>Represents the output of an <code>UpdateBatchPrediction</code> operation.</p> <p>You can see the updated content by using the <code>GetBatchPrediction</code> operation.</p>
-- @param BatchPredictionId [EntityId] <p>The ID assigned to the <code>BatchPrediction</code> during creation. This value should be identical to the value of the <code>BatchPredictionId</code> in the request.</p>
function M.UpdateBatchPredictionOutput(BatchPredictionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateBatchPredictionOutput")
	local t = { 
		["BatchPredictionId"] = BatchPredictionId,
	}
	M.AssertUpdateBatchPredictionOutput(t)
	return t
end

local UpdateMLModelOutput_keys = { "MLModelId" = true, nil }

function M.AssertUpdateMLModelOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateMLModelOutput to be of type 'table'")
	if struct["MLModelId"] then M.AssertEntityId(struct["MLModelId"]) end
	for k,_ in pairs(struct) do
		assert(UpdateMLModelOutput_keys[k], "UpdateMLModelOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateMLModelOutput
-- <p>Represents the output of an <code>UpdateMLModel</code> operation.</p> <p>You can see the updated content by using the <code>GetMLModel</code> operation.</p>
-- @param MLModelId [EntityId] <p>The ID assigned to the <code>MLModel</code> during creation. This value should be identical to the value of the <code>MLModelID</code> in the request.</p>
function M.UpdateMLModelOutput(MLModelId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateMLModelOutput")
	local t = { 
		["MLModelId"] = MLModelId,
	}
	M.AssertUpdateMLModelOutput(t)
	return t
end

local GetMLModelOutput_keys = { "Status" = true, "SizeInBytes" = true, "ComputeTime" = true, "Name" = true, "ScoreThreshold" = true, "TrainingParameters" = true, "MLModelType" = true, "CreatedByIamUser" = true, "Recipe" = true, "ScoreThresholdLastUpdatedAt" = true, "EndpointInfo" = true, "MLModelId" = true, "InputDataLocationS3" = true, "LastUpdatedAt" = true, "TrainingDataSourceId" = true, "StartedAt" = true, "LogUri" = true, "Schema" = true, "Message" = true, "CreatedAt" = true, "FinishedAt" = true, nil }

function M.AssertGetMLModelOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetMLModelOutput to be of type 'table'")
	if struct["Status"] then M.AssertEntityStatus(struct["Status"]) end
	if struct["SizeInBytes"] then M.AssertLongType(struct["SizeInBytes"]) end
	if struct["ComputeTime"] then M.AssertLongType(struct["ComputeTime"]) end
	if struct["Name"] then M.AssertMLModelName(struct["Name"]) end
	if struct["ScoreThreshold"] then M.AssertScoreThreshold(struct["ScoreThreshold"]) end
	if struct["TrainingParameters"] then M.AssertTrainingParameters(struct["TrainingParameters"]) end
	if struct["MLModelType"] then M.AssertMLModelType(struct["MLModelType"]) end
	if struct["CreatedByIamUser"] then M.AssertAwsUserArn(struct["CreatedByIamUser"]) end
	if struct["Recipe"] then M.AssertRecipe(struct["Recipe"]) end
	if struct["ScoreThresholdLastUpdatedAt"] then M.AssertEpochTime(struct["ScoreThresholdLastUpdatedAt"]) end
	if struct["EndpointInfo"] then M.AssertRealtimeEndpointInfo(struct["EndpointInfo"]) end
	if struct["MLModelId"] then M.AssertEntityId(struct["MLModelId"]) end
	if struct["InputDataLocationS3"] then M.AssertS3Url(struct["InputDataLocationS3"]) end
	if struct["LastUpdatedAt"] then M.AssertEpochTime(struct["LastUpdatedAt"]) end
	if struct["TrainingDataSourceId"] then M.AssertEntityId(struct["TrainingDataSourceId"]) end
	if struct["StartedAt"] then M.AssertEpochTime(struct["StartedAt"]) end
	if struct["LogUri"] then M.AssertPresignedS3Url(struct["LogUri"]) end
	if struct["Schema"] then M.AssertDataSchema(struct["Schema"]) end
	if struct["Message"] then M.AssertMessage(struct["Message"]) end
	if struct["CreatedAt"] then M.AssertEpochTime(struct["CreatedAt"]) end
	if struct["FinishedAt"] then M.AssertEpochTime(struct["FinishedAt"]) end
	for k,_ in pairs(struct) do
		assert(GetMLModelOutput_keys[k], "GetMLModelOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetMLModelOutput
-- <p>Represents the output of a <code>GetMLModel</code> operation, and provides detailed information about a <code>MLModel</code>.</p>
-- @param Status [EntityStatus] <p>The current status of the <code>MLModel</code>. This element can have one of the following values:</p> <ul> <li> <code>PENDING</code> - Amazon Machine Learning (Amazon ML) submitted a request to describe a <code>MLModel</code>.</li> <li> <code>INPROGRESS</code> - The request is processing.</li> <li> <code>FAILED</code> - The request did not run to completion. The ML model isn't usable.</li> <li> <code>COMPLETED</code> - The request completed successfully.</li> <li> <code>DELETED</code> - The <code>MLModel</code> is marked as deleted. It isn't usable.</li> </ul>
-- @param SizeInBytes [LongType] <p>Represents the output of a <code>GetMLModel</code> operation, and provides detailed information about a <code>MLModel</code>.</p>
-- @param ComputeTime [LongType] <p>The approximate CPU time in milliseconds that Amazon Machine Learning spent processing the <code>MLModel</code>, normalized and scaled on computation resources. <code>ComputeTime</code> is only available if the <code>MLModel</code> is in the <code>COMPLETED</code> state.</p>
-- @param Name [MLModelName] <p>A user-supplied name or description of the <code>MLModel</code>.</p>
-- @param ScoreThreshold [ScoreThreshold] <p>The scoring threshold is used in binary classification <code>MLModel</code><?oxy_insert_start author="laurama" timestamp="20160329T114851-0700"> <?oxy_insert_end>models. It marks the boundary between a positive prediction and a negative prediction.</p> <p>Output values greater than or equal to the threshold receive a positive result from the MLModel, such as <code>true</code>. Output values less than the threshold receive a negative response from the MLModel, such as <code>false</code>.</p>
-- @param TrainingParameters [TrainingParameters] <p>A list of the training parameters in the <code>MLModel</code>. The list is implemented as a map of key-value pairs.</p> <p>The following is the current set of training parameters: </p> <ul> <li> <p><code>sgd.maxMLModelSizeInBytes</code> - The maximum allowed size of the model. Depending on the input data, the size of the model might affect its performance.</p> <p> The value is an integer that ranges from <code>100000</code> to <code>2147483648</code>. The default value is <code>33554432</code>.</p> </li> <li><p><code>sgd.maxPasses</code> - The number of times that the training process traverses the observations to build the <code>MLModel</code>. The value is an integer that ranges from <code>1</code> to <code>10000</code>. The default value is <code>10</code>.</p></li> <li><p><code>sgd.shuffleType</code> - Whether Amazon ML shuffles the training data. Shuffling data improves a model's ability to find the optimal solution for a variety of data types. The valid values are <code>auto</code> and <code>none</code>. The default value is <code>none</code>. We strongly recommend that you shuffle your data.</p></li> <li> <p><code>sgd.l1RegularizationAmount</code> - The coefficient regularization L1 norm. It controls overfitting the data by penalizing large coefficients. This tends to drive coefficients to zero, resulting in a sparse feature set. If you use this parameter, start by specifying a small value, such as <code>1.0E-08</code>.</p> <p>The value is a double that ranges from <code>0</code> to <code>MAX_DOUBLE</code>. The default is to not use L1 normalization. This parameter can't be used when <code>L2</code> is specified. Use this parameter sparingly.</p> </li> <li> <p><code>sgd.l2RegularizationAmount</code> - The coefficient regularization L2 norm. It controls overfitting the data by penalizing large coefficients. This tends to drive coefficients to small, nonzero values. If you use this parameter, start by specifying a small value, such as <code>1.0E-08</code>.</p> <p>The value is a double that ranges from <code>0</code> to <code>MAX_DOUBLE</code>. The default is to not use L2 normalization. This parameter can't be used when <code>L1</code> is specified. Use this parameter sparingly.</p> </li> </ul>
-- @param MLModelType [MLModelType] <p>Identifies the <code>MLModel</code> category. The following are the available types: </p> <ul> <li>REGRESSION -- Produces a numeric result. For example, "What price should a house be listed at?"</li> <li>BINARY -- Produces one of two possible results. For example, "Is this an e-commerce website?"</li> <li>MULTICLASS -- Produces one of several possible results. For example, "Is this a HIGH, LOW or MEDIUM risk trade?"</li> </ul>
-- @param CreatedByIamUser [AwsUserArn] <p>The AWS user account from which the <code>MLModel</code> was created. The account type can be either an AWS root account or an AWS Identity and Access Management (IAM) user account.</p>
-- @param Recipe [Recipe] <p>The recipe to use when training the <code>MLModel</code>. The <code>Recipe</code> provides detailed information about the observation data to use during training, and manipulations to perform on the observation data during training.</p> <note><title>Note</title> <p>This parameter is provided as part of the verbose format.</p></note>
-- @param ScoreThresholdLastUpdatedAt [EpochTime] <p>The time of the most recent edit to the <code>ScoreThreshold</code>. The time is expressed in epoch time.</p>
-- @param EndpointInfo [RealtimeEndpointInfo] <p>The current endpoint of the <code>MLModel</code></p>
-- @param MLModelId [EntityId] <p>The MLModel ID<?oxy_insert_start author="annbech" timestamp="20160328T151251-0700">,<?oxy_insert_end> which is same as the <code>MLModelId</code> in the request.</p>
-- @param InputDataLocationS3 [S3Url] <p>The location of the data file or directory in Amazon Simple Storage Service (Amazon S3).</p>
-- @param LastUpdatedAt [EpochTime] <p>The time of the most recent edit to the <code>MLModel</code>. The time is expressed in epoch time.</p>
-- @param TrainingDataSourceId [EntityId] <p>The ID of the training <code>DataSource</code>.</p>
-- @param StartedAt [EpochTime] <p>The epoch time when Amazon Machine Learning marked the <code>MLModel</code> as <code>INPROGRESS</code>. <code>StartedAt</code> isn't available if the <code>MLModel</code> is in the <code>PENDING</code> state.</p>
-- @param LogUri [PresignedS3Url] <p>A link to the file that contains logs of the <code>CreateMLModel</code> operation.</p>
-- @param Schema [DataSchema] <p>The schema used by all of the data files referenced by the <code>DataSource</code>.</p> <note><title>Note</title> <p>This parameter is provided as part of the verbose format.</p></note>
-- @param Message [Message] <p>A description of the most recent details about accessing the <code>MLModel</code>.</p>
-- @param CreatedAt [EpochTime] <p>The time that the <code>MLModel</code> was created. The time is expressed in epoch time.</p>
-- @param FinishedAt [EpochTime] <p>The epoch time when Amazon Machine Learning marked the <code>MLModel</code> as <code>COMPLETED</code> or <code>FAILED</code>. <code>FinishedAt</code> is only available when the <code>MLModel</code> is in the <code>COMPLETED</code> or <code>FAILED</code> state.</p>
function M.GetMLModelOutput(Status, SizeInBytes, ComputeTime, Name, ScoreThreshold, TrainingParameters, MLModelType, CreatedByIamUser, Recipe, ScoreThresholdLastUpdatedAt, EndpointInfo, MLModelId, InputDataLocationS3, LastUpdatedAt, TrainingDataSourceId, StartedAt, LogUri, Schema, Message, CreatedAt, FinishedAt, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetMLModelOutput")
	local t = { 
		["Status"] = Status,
		["SizeInBytes"] = SizeInBytes,
		["ComputeTime"] = ComputeTime,
		["Name"] = Name,
		["ScoreThreshold"] = ScoreThreshold,
		["TrainingParameters"] = TrainingParameters,
		["MLModelType"] = MLModelType,
		["CreatedByIamUser"] = CreatedByIamUser,
		["Recipe"] = Recipe,
		["ScoreThresholdLastUpdatedAt"] = ScoreThresholdLastUpdatedAt,
		["EndpointInfo"] = EndpointInfo,
		["MLModelId"] = MLModelId,
		["InputDataLocationS3"] = InputDataLocationS3,
		["LastUpdatedAt"] = LastUpdatedAt,
		["TrainingDataSourceId"] = TrainingDataSourceId,
		["StartedAt"] = StartedAt,
		["LogUri"] = LogUri,
		["Schema"] = Schema,
		["Message"] = Message,
		["CreatedAt"] = CreatedAt,
		["FinishedAt"] = FinishedAt,
	}
	M.AssertGetMLModelOutput(t)
	return t
end

local DescribeTagsInput_keys = { "ResourceType" = true, "ResourceId" = true, nil }

function M.AssertDescribeTagsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTagsInput to be of type 'table'")
	assert(struct["ResourceId"], "Expected key ResourceId to exist in table")
	assert(struct["ResourceType"], "Expected key ResourceType to exist in table")
	if struct["ResourceType"] then M.AssertTaggableResourceType(struct["ResourceType"]) end
	if struct["ResourceId"] then M.AssertEntityId(struct["ResourceId"]) end
	for k,_ in pairs(struct) do
		assert(DescribeTagsInput_keys[k], "DescribeTagsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTagsInput
--  
-- @param ResourceType [TaggableResourceType] <p>The type of the ML object.</p>
-- @param ResourceId [EntityId] <p>The ID of the ML object. For example, <code>exampleModelId</code>. </p>
-- Required parameter: ResourceId
-- Required parameter: ResourceType
function M.DescribeTagsInput(ResourceType, ResourceId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeTagsInput")
	local t = { 
		["ResourceType"] = ResourceType,
		["ResourceId"] = ResourceId,
	}
	M.AssertDescribeTagsInput(t)
	return t
end

local RedshiftDataSpec_keys = { "DatabaseCredentials" = true, "DataSchemaUri" = true, "DatabaseInformation" = true, "DataSchema" = true, "DataRearrangement" = true, "S3StagingLocation" = true, "SelectSqlQuery" = true, nil }

function M.AssertRedshiftDataSpec(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RedshiftDataSpec to be of type 'table'")
	assert(struct["DatabaseInformation"], "Expected key DatabaseInformation to exist in table")
	assert(struct["SelectSqlQuery"], "Expected key SelectSqlQuery to exist in table")
	assert(struct["DatabaseCredentials"], "Expected key DatabaseCredentials to exist in table")
	assert(struct["S3StagingLocation"], "Expected key S3StagingLocation to exist in table")
	if struct["DatabaseCredentials"] then M.AssertRedshiftDatabaseCredentials(struct["DatabaseCredentials"]) end
	if struct["DataSchemaUri"] then M.AssertS3Url(struct["DataSchemaUri"]) end
	if struct["DatabaseInformation"] then M.AssertRedshiftDatabase(struct["DatabaseInformation"]) end
	if struct["DataSchema"] then M.AssertDataSchema(struct["DataSchema"]) end
	if struct["DataRearrangement"] then M.AssertDataRearrangement(struct["DataRearrangement"]) end
	if struct["S3StagingLocation"] then M.AssertS3Url(struct["S3StagingLocation"]) end
	if struct["SelectSqlQuery"] then M.AssertRedshiftSelectSqlQuery(struct["SelectSqlQuery"]) end
	for k,_ in pairs(struct) do
		assert(RedshiftDataSpec_keys[k], "RedshiftDataSpec contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RedshiftDataSpec
-- <p>Describes the data specification of an Amazon Redshift <code>DataSource</code>.</p>
-- @param DatabaseCredentials [RedshiftDatabaseCredentials] <p>Describes AWS Identity and Access Management (IAM) credentials that are used connect to the Amazon Redshift database.</p>
-- @param DataSchemaUri [S3Url] <p>Describes the schema location for an Amazon Redshift <code>DataSource</code>.</p>
-- @param DatabaseInformation [RedshiftDatabase] <p>Describes the <code>DatabaseName</code> and <code>ClusterIdentifier</code> for an Amazon Redshift <code>DataSource</code>.</p>
-- @param DataSchema [DataSchema] <p>A JSON string that represents the schema for an Amazon Redshift <code>DataSource</code>. The <code>DataSchema</code> defines the structure of the observation data in the data file(s) referenced in the <code>DataSource</code>.</p> <p>A <code>DataSchema</code> is not required if you specify a <code>DataSchemaUri</code>.</p> <p>Define your <code>DataSchema</code> as a series of key-value pairs. <code>attributes</code> and <code>excludedVariableNames</code> have an array of key-value pairs for their value. Use the following format to define your <code>DataSchema</code>.</p> <p>{ "version": "1.0",</p> <p> "recordAnnotationFieldName": "F1",</p> <p> "recordWeightFieldName": "F2",</p> <p> "targetFieldName": "F3",</p> <p> "dataFormat": "CSV",</p> <p> "dataFileContainsHeader": true,</p> <p> "attributes": [</p> <p> { "fieldName": "F1", "fieldType": "TEXT" }, { "fieldName": "F2", "fieldType": "NUMERIC" }, { "fieldName": "F3", "fieldType": "CATEGORICAL" }, { "fieldName": "F4", "fieldType": "NUMERIC" }, { "fieldName": "F5", "fieldType": "CATEGORICAL" }, { "fieldName": "F6", "fieldType": "TEXT" }, { "fieldName": "F7", "fieldType": "WEIGHTED_INT_SEQUENCE" }, { "fieldName": "F8", "fieldType": "WEIGHTED_STRING_SEQUENCE" } ],</p> <p> "excludedVariableNames": [ "F6" ] } </p>
-- @param DataRearrangement [DataRearrangement] <p>A JSON string that represents the splitting and rearrangement processing to be applied to a <code>DataSource</code>. If the <code>DataRearrangement</code> parameter is not provided, all of the input data is used to create the <code>Datasource</code>.</p> <p>There are multiple parameters that control what data is used to create a datasource:</p> <ul> <li><p><b><code>percentBegin</code></b></p> <p>Use <code>percentBegin</code> to indicate the beginning of the range of the data used to create the Datasource. If you do not include <code>percentBegin</code> and <code>percentEnd</code>, Amazon ML includes all of the data when creating the datasource.</p></li> <li><p><b><code>percentEnd</code></b></p> <p>Use <code>percentEnd</code> to indicate the end of the range of the data used to create the Datasource. If you do not include <code>percentBegin</code> and <code>percentEnd</code>, Amazon ML includes all of the data when creating the datasource.</p></li> <li><p><b><code>complement</code></b></p> <p>The <code>complement</code> parameter instructs Amazon ML to use the data that is not included in the range of <code>percentBegin</code> to <code>percentEnd</code> to create a datasource. The <code>complement</code> parameter is useful if you need to create complementary datasources for training and evaluation. To create a complementary datasource, use the same values for <code>percentBegin</code> and <code>percentEnd</code>, along with the <code>complement</code> parameter.</p> <p>For example, the following two datasources do not share any data, and can be used to train and evaluate a model. The first datasource has 25 percent of the data, and the second one has 75 percent of the data.</p> <p>Datasource for evaluation: <code>{"splitting":{"percentBegin":0, "percentEnd":25}}</code></p> <p>Datasource for training: <code>{"splitting":{"percentBegin":0, "percentEnd":25, "complement":"true"}}</code></p> </li> <li><p><b><code>strategy</code></b></p> <p>To change how Amazon ML splits the data for a datasource, use the <code>strategy</code> parameter.</p> <p>The default value for the <code>strategy</code> parameter is <code>sequential</code>, meaning that Amazon ML takes all of the data records between the <code>percentBegin</code> and <code>percentEnd</code> parameters for the datasource, in the order that the records appear in the input data.</p> <p>The following two <code>DataRearrangement</code> lines are examples of sequentially ordered training and evaluation datasources:</p> <p>Datasource for evaluation: <code>{"splitting":{"percentBegin":70, "percentEnd":100, "strategy":"sequential"}}</code></p> <p>Datasource for training: <code>{"splitting":{"percentBegin":70, "percentEnd":100, "strategy":"sequential", "complement":"true"}}</code></p> <p>To randomly split the input data into the proportions indicated by the percentBegin and percentEnd parameters, set the <code>strategy</code> parameter to <code>random</code> and provide a string that is used as the seed value for the random data splitting (for example, you can use the S3 path to your data as the random seed string). If you choose the random split strategy, Amazon ML assigns each row of data a pseudo-random number between 0 and 100, and then selects the rows that have an assigned number between <code>percentBegin</code> and <code>percentEnd</code>. Pseudo-random numbers are assigned using both the input seed string value and the byte offset as a seed, so changing the data results in a different split. Any existing ordering is preserved. The random splitting strategy ensures that variables in the training and evaluation data are distributed similarly. It is useful in the cases where the input data may have an implicit sort order, which would otherwise result in training and evaluation datasources containing non-similar data records.</p> <p>The following two <code>DataRearrangement</code> lines are examples of non-sequentially ordered training and evaluation datasources:</p> <p>Datasource for evaluation: <code>{"splitting":{"percentBegin":70, "percentEnd":100, "strategy":"random", "randomSeed"="s3://my_s3_path/bucket/file.csv"}}</code></p> <p>Datasource for training: <code>{"splitting":{"percentBegin":70, "percentEnd":100, "strategy":"random", "randomSeed"="s3://my_s3_path/bucket/file.csv", "complement":"true"}}</code></p> </li> </ul>
-- @param S3StagingLocation [S3Url] <p>Describes an Amazon S3 location to store the result set of the <code>SelectSqlQuery</code> query.</p>
-- @param SelectSqlQuery [RedshiftSelectSqlQuery] <p>Describes the SQL Query to execute on an Amazon Redshift database for an Amazon Redshift <code>DataSource</code>.</p>
-- Required parameter: DatabaseInformation
-- Required parameter: SelectSqlQuery
-- Required parameter: DatabaseCredentials
-- Required parameter: S3StagingLocation
function M.RedshiftDataSpec(DatabaseCredentials, DataSchemaUri, DatabaseInformation, DataSchema, DataRearrangement, S3StagingLocation, SelectSqlQuery, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RedshiftDataSpec")
	local t = { 
		["DatabaseCredentials"] = DatabaseCredentials,
		["DataSchemaUri"] = DataSchemaUri,
		["DatabaseInformation"] = DatabaseInformation,
		["DataSchema"] = DataSchema,
		["DataRearrangement"] = DataRearrangement,
		["S3StagingLocation"] = S3StagingLocation,
		["SelectSqlQuery"] = SelectSqlQuery,
	}
	M.AssertRedshiftDataSpec(t)
	return t
end

local IdempotentParameterMismatchException_keys = { "message" = true, "code" = true, nil }

function M.AssertIdempotentParameterMismatchException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IdempotentParameterMismatchException to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	if struct["code"] then M.AssertErrorCode(struct["code"]) end
	for k,_ in pairs(struct) do
		assert(IdempotentParameterMismatchException_keys[k], "IdempotentParameterMismatchException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IdempotentParameterMismatchException
-- <p>A second request to use or change an object was not allowed. This can result from retrying a request using a parameter that was not present in the original request.</p>
-- @param message [ErrorMessage] <p>A second request to use or change an object was not allowed. This can result from retrying a request using a parameter that was not present in the original request.</p>
-- @param code [ErrorCode] <p>A second request to use or change an object was not allowed. This can result from retrying a request using a parameter that was not present in the original request.</p>
function M.IdempotentParameterMismatchException(message, code, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating IdempotentParameterMismatchException")
	local t = { 
		["message"] = message,
		["code"] = code,
	}
	M.AssertIdempotentParameterMismatchException(t)
	return t
end

local GetBatchPredictionInput_keys = { "BatchPredictionId" = true, nil }

function M.AssertGetBatchPredictionInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBatchPredictionInput to be of type 'table'")
	assert(struct["BatchPredictionId"], "Expected key BatchPredictionId to exist in table")
	if struct["BatchPredictionId"] then M.AssertEntityId(struct["BatchPredictionId"]) end
	for k,_ in pairs(struct) do
		assert(GetBatchPredictionInput_keys[k], "GetBatchPredictionInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBatchPredictionInput
--  
-- @param BatchPredictionId [EntityId] <p>An ID assigned to the <code>BatchPrediction</code> at creation.</p>
-- Required parameter: BatchPredictionId
function M.GetBatchPredictionInput(BatchPredictionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetBatchPredictionInput")
	local t = { 
		["BatchPredictionId"] = BatchPredictionId,
	}
	M.AssertGetBatchPredictionInput(t)
	return t
end

local RedshiftDatabaseCredentials_keys = { "Username" = true, "Password" = true, nil }

function M.AssertRedshiftDatabaseCredentials(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RedshiftDatabaseCredentials to be of type 'table'")
	assert(struct["Username"], "Expected key Username to exist in table")
	assert(struct["Password"], "Expected key Password to exist in table")
	if struct["Username"] then M.AssertRedshiftDatabaseUsername(struct["Username"]) end
	if struct["Password"] then M.AssertRedshiftDatabasePassword(struct["Password"]) end
	for k,_ in pairs(struct) do
		assert(RedshiftDatabaseCredentials_keys[k], "RedshiftDatabaseCredentials contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RedshiftDatabaseCredentials
-- <p> Describes the database credentials for connecting to a database on an Amazon Redshift cluster.</p>
-- @param Username [RedshiftDatabaseUsername] <p> Describes the database credentials for connecting to a database on an Amazon Redshift cluster.</p>
-- @param Password [RedshiftDatabasePassword] <p> Describes the database credentials for connecting to a database on an Amazon Redshift cluster.</p>
-- Required parameter: Username
-- Required parameter: Password
function M.RedshiftDatabaseCredentials(Username, Password, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RedshiftDatabaseCredentials")
	local t = { 
		["Username"] = Username,
		["Password"] = Password,
	}
	M.AssertRedshiftDatabaseCredentials(t)
	return t
end

local DeleteBatchPredictionInput_keys = { "BatchPredictionId" = true, nil }

function M.AssertDeleteBatchPredictionInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteBatchPredictionInput to be of type 'table'")
	assert(struct["BatchPredictionId"], "Expected key BatchPredictionId to exist in table")
	if struct["BatchPredictionId"] then M.AssertEntityId(struct["BatchPredictionId"]) end
	for k,_ in pairs(struct) do
		assert(DeleteBatchPredictionInput_keys[k], "DeleteBatchPredictionInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteBatchPredictionInput
--  
-- @param BatchPredictionId [EntityId] <p>A user-supplied ID that uniquely identifies the <code>BatchPrediction</code>.</p>
-- Required parameter: BatchPredictionId
function M.DeleteBatchPredictionInput(BatchPredictionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteBatchPredictionInput")
	local t = { 
		["BatchPredictionId"] = BatchPredictionId,
	}
	M.AssertDeleteBatchPredictionInput(t)
	return t
end

local DescribeEvaluationsOutput_keys = { "NextToken" = true, "Results" = true, nil }

function M.AssertDescribeEvaluationsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEvaluationsOutput to be of type 'table'")
	if struct["NextToken"] then M.AssertStringType(struct["NextToken"]) end
	if struct["Results"] then M.AssertEvaluations(struct["Results"]) end
	for k,_ in pairs(struct) do
		assert(DescribeEvaluationsOutput_keys[k], "DescribeEvaluationsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEvaluationsOutput
-- <p>Represents the query results from a <code>DescribeEvaluations</code> operation. The content is essentially a list of <code>Evaluation</code>.</p>
-- @param NextToken [StringType] <p>The ID of the next page in the paginated results that indicates at least one more page follows.</p>
-- @param Results [Evaluations] <p>A list of <code>Evaluation</code> that meet the search criteria. </p>
function M.DescribeEvaluationsOutput(NextToken, Results, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeEvaluationsOutput")
	local t = { 
		["NextToken"] = NextToken,
		["Results"] = Results,
	}
	M.AssertDescribeEvaluationsOutput(t)
	return t
end

local UpdateEvaluationInput_keys = { "EvaluationId" = true, "EvaluationName" = true, nil }

function M.AssertUpdateEvaluationInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateEvaluationInput to be of type 'table'")
	assert(struct["EvaluationId"], "Expected key EvaluationId to exist in table")
	assert(struct["EvaluationName"], "Expected key EvaluationName to exist in table")
	if struct["EvaluationId"] then M.AssertEntityId(struct["EvaluationId"]) end
	if struct["EvaluationName"] then M.AssertEntityName(struct["EvaluationName"]) end
	for k,_ in pairs(struct) do
		assert(UpdateEvaluationInput_keys[k], "UpdateEvaluationInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateEvaluationInput
--  
-- @param EvaluationId [EntityId] <p>The ID assigned to the <code>Evaluation</code> during creation.</p>
-- @param EvaluationName [EntityName] <p>A new user-supplied name or description of the <code>Evaluation</code> that will replace the current content. </p>
-- Required parameter: EvaluationId
-- Required parameter: EvaluationName
function M.UpdateEvaluationInput(EvaluationId, EvaluationName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateEvaluationInput")
	local t = { 
		["EvaluationId"] = EvaluationId,
		["EvaluationName"] = EvaluationName,
	}
	M.AssertUpdateEvaluationInput(t)
	return t
end

local PerformanceMetrics_keys = { "Properties" = true, nil }

function M.AssertPerformanceMetrics(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PerformanceMetrics to be of type 'table'")
	if struct["Properties"] then M.AssertPerformanceMetricsProperties(struct["Properties"]) end
	for k,_ in pairs(struct) do
		assert(PerformanceMetrics_keys[k], "PerformanceMetrics contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PerformanceMetrics
-- <p>Measurements of how well the <code>MLModel</code> performed on known observations. One of the following metrics is returned, based on the type of the <code>MLModel</code>: </p> <ul> <li> <p>BinaryAUC: The binary <code>MLModel</code> uses the Area Under the Curve (AUC) technique to measure performance. </p> </li> <li> <p>RegressionRMSE: The regression <code>MLModel</code> uses the Root Mean Square Error (RMSE) technique to measure performance. RMSE measures the difference between predicted and actual values for a single variable.</p> </li> <li> <p>MulticlassAvgFScore: The multiclass <code>MLModel</code> uses the F1 score technique to measure performance. </p> </li> </ul> <p> For more information about performance metrics, please see the <a href="http://docs.aws.amazon.com/machine-learning/latest/dg">Amazon Machine Learning Developer Guide</a>. </p>
-- @param Properties [PerformanceMetricsProperties] <p>Measurements of how well the <code>MLModel</code> performed on known observations. One of the following metrics is returned, based on the type of the <code>MLModel</code>: </p> <ul> <li> <p>BinaryAUC: The binary <code>MLModel</code> uses the Area Under the Curve (AUC) technique to measure performance. </p> </li> <li> <p>RegressionRMSE: The regression <code>MLModel</code> uses the Root Mean Square Error (RMSE) technique to measure performance. RMSE measures the difference between predicted and actual values for a single variable.</p> </li> <li> <p>MulticlassAvgFScore: The multiclass <code>MLModel</code> uses the F1 score technique to measure performance. </p> </li> </ul> <p> For more information about performance metrics, please see the <a href="http://docs.aws.amazon.com/machine-learning/latest/dg">Amazon Machine Learning Developer Guide</a>. </p>
function M.PerformanceMetrics(Properties, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PerformanceMetrics")
	local t = { 
		["Properties"] = Properties,
	}
	M.AssertPerformanceMetrics(t)
	return t
end

local InvalidInputException_keys = { "message" = true, "code" = true, nil }

function M.AssertInvalidInputException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidInputException to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	if struct["code"] then M.AssertErrorCode(struct["code"]) end
	for k,_ in pairs(struct) do
		assert(InvalidInputException_keys[k], "InvalidInputException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidInputException
-- <p>An error on the client occurred. Typically, the cause is an invalid input value.</p>
-- @param message [ErrorMessage] <p>An error on the client occurred. Typically, the cause is an invalid input value.</p>
-- @param code [ErrorCode] <p>An error on the client occurred. Typically, the cause is an invalid input value.</p>
function M.InvalidInputException(message, code, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidInputException")
	local t = { 
		["message"] = message,
		["code"] = code,
	}
	M.AssertInvalidInputException(t)
	return t
end

local LimitExceededException_keys = { "message" = true, "code" = true, nil }

function M.AssertLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LimitExceededException to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	if struct["code"] then M.AssertErrorCode(struct["code"]) end
	for k,_ in pairs(struct) do
		assert(LimitExceededException_keys[k], "LimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LimitExceededException
-- <p>The subscriber exceeded the maximum number of operations. This exception can occur when listing objects such as <code>DataSource</code>.</p>
-- @param message [ErrorMessage] <p>The subscriber exceeded the maximum number of operations. This exception can occur when listing objects such as <code>DataSource</code>.</p>
-- @param code [ErrorCode] <p>The subscriber exceeded the maximum number of operations. This exception can occur when listing objects such as <code>DataSource</code>.</p>
function M.LimitExceededException(message, code, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LimitExceededException")
	local t = { 
		["message"] = message,
		["code"] = code,
	}
	M.AssertLimitExceededException(t)
	return t
end

local DescribeDataSourcesOutput_keys = { "NextToken" = true, "Results" = true, nil }

function M.AssertDescribeDataSourcesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDataSourcesOutput to be of type 'table'")
	if struct["NextToken"] then M.AssertStringType(struct["NextToken"]) end
	if struct["Results"] then M.AssertDataSources(struct["Results"]) end
	for k,_ in pairs(struct) do
		assert(DescribeDataSourcesOutput_keys[k], "DescribeDataSourcesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDataSourcesOutput
-- <p>Represents the query results from a <a>DescribeDataSources</a> operation. The content is essentially a list of <code>DataSource</code>.</p>
-- @param NextToken [StringType] <p>An ID of the next page in the paginated results that indicates at least one more page follows.</p>
-- @param Results [DataSources] <p>A list of <code>DataSource</code> that meet the search criteria. </p>
function M.DescribeDataSourcesOutput(NextToken, Results, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeDataSourcesOutput")
	local t = { 
		["NextToken"] = NextToken,
		["Results"] = Results,
	}
	M.AssertDescribeDataSourcesOutput(t)
	return t
end

local DescribeEvaluationsInput_keys = { "GT" = true, "FilterVariable" = true, "GE" = true, "NE" = true, "LT" = true, "LE" = true, "Limit" = true, "SortOrder" = true, "NextToken" = true, "EQ" = true, "Prefix" = true, nil }

function M.AssertDescribeEvaluationsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEvaluationsInput to be of type 'table'")
	if struct["GT"] then M.AssertComparatorValue(struct["GT"]) end
	if struct["FilterVariable"] then M.AssertEvaluationFilterVariable(struct["FilterVariable"]) end
	if struct["GE"] then M.AssertComparatorValue(struct["GE"]) end
	if struct["NE"] then M.AssertComparatorValue(struct["NE"]) end
	if struct["LT"] then M.AssertComparatorValue(struct["LT"]) end
	if struct["LE"] then M.AssertComparatorValue(struct["LE"]) end
	if struct["Limit"] then M.AssertPageLimit(struct["Limit"]) end
	if struct["SortOrder"] then M.AssertSortOrder(struct["SortOrder"]) end
	if struct["NextToken"] then M.AssertStringType(struct["NextToken"]) end
	if struct["EQ"] then M.AssertComparatorValue(struct["EQ"]) end
	if struct["Prefix"] then M.AssertComparatorValue(struct["Prefix"]) end
	for k,_ in pairs(struct) do
		assert(DescribeEvaluationsInput_keys[k], "DescribeEvaluationsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEvaluationsInput
--  
-- @param GT [ComparatorValue] <p>The greater than operator. The <code>Evaluation</code> results will have <code>FilterVariable</code> values that are greater than the value specified with <code>GT</code>.</p>
-- @param FilterVariable [EvaluationFilterVariable] <p>Use one of the following variable to filter a list of <code>Evaluation</code> objects:</p> <ul> <li> <code>CreatedAt</code> - Sets the search criteria to the <code>Evaluation</code> creation date.</li> <li> <code>Status</code> - Sets the search criteria to the <code>Evaluation</code> status.</li> <li> <code>Name</code> - Sets the search criteria to the contents of <code>Evaluation</code> <b> </b> <code>Name</code>.</li> <li> <code>IAMUser</code> - Sets the search criteria to the user account that invoked an <code>Evaluation</code>.</li> <li> <code>MLModelId</code> - Sets the search criteria to the <code>MLModel</code> that was evaluated.</li> <li> <code>DataSourceId</code> - Sets the search criteria to the <code>DataSource</code> used in <code>Evaluation</code>.</li> <li> <code>DataUri</code> - Sets the search criteria to the data file(s) used in <code>Evaluation</code>. The URL can identify either a file or an Amazon Simple Storage Solution (Amazon S3) bucket or directory.</li> </ul>
-- @param GE [ComparatorValue] <p>The greater than or equal to operator. The <code>Evaluation</code> results will have <code>FilterVariable</code> values that are greater than or equal to the value specified with <code>GE</code>. </p>
-- @param NE [ComparatorValue] <p>The not equal to operator. The <code>Evaluation</code> results will have <code>FilterVariable</code> values not equal to the value specified with <code>NE</code>.</p>
-- @param LT [ComparatorValue] <p>The less than operator. The <code>Evaluation</code> results will have <code>FilterVariable</code> values that are less than the value specified with <code>LT</code>.</p>
-- @param LE [ComparatorValue] <p>The less than or equal to operator. The <code>Evaluation</code> results will have <code>FilterVariable</code> values that are less than or equal to the value specified with <code>LE</code>.</p>
-- @param Limit [PageLimit] <p> The maximum number of <code>Evaluation</code> to include in the result.</p>
-- @param SortOrder [SortOrder] <p>A two-value parameter that determines the sequence of the resulting list of <code>Evaluation</code>.</p> <ul> <li> <code>asc</code> - Arranges the list in ascending order (A-Z, 0-9).</li> <li> <code>dsc</code> - Arranges the list in descending order (Z-A, 9-0).</li> </ul> <p>Results are sorted by <code>FilterVariable</code>.</p>
-- @param NextToken [StringType] <p>The ID of the page in the paginated results.</p>
-- @param EQ [ComparatorValue] <p>The equal to operator. The <code>Evaluation</code> results will have <code>FilterVariable</code> values that exactly match the value specified with <code>EQ</code>.</p>
-- @param Prefix [ComparatorValue] <p>A string that is found at the beginning of a variable, such as <code>Name</code> or <code>Id</code>.</p> <p>For example, an <code>Evaluation</code> could have the <code>Name</code> <code>2014-09-09-HolidayGiftMailer</code>. To search for this <code>Evaluation</code>, select <code>Name</code> for the <code>FilterVariable</code> and any of the following strings for the <code>Prefix</code>: </p> <ul> <li><p>2014-09</p></li> <li><p>2014-09-09</p></li> <li><p>2014-09-09-Holiday</p></li> </ul>
function M.DescribeEvaluationsInput(GT, FilterVariable, GE, NE, LT, LE, Limit, SortOrder, NextToken, EQ, Prefix, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeEvaluationsInput")
	local t = { 
		["GT"] = GT,
		["FilterVariable"] = FilterVariable,
		["GE"] = GE,
		["NE"] = NE,
		["LT"] = LT,
		["LE"] = LE,
		["Limit"] = Limit,
		["SortOrder"] = SortOrder,
		["NextToken"] = NextToken,
		["EQ"] = EQ,
		["Prefix"] = Prefix,
	}
	M.AssertDescribeEvaluationsInput(t)
	return t
end

local CreateEvaluationInput_keys = { "MLModelId" = true, "EvaluationId" = true, "EvaluationName" = true, "EvaluationDataSourceId" = true, nil }

function M.AssertCreateEvaluationInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateEvaluationInput to be of type 'table'")
	assert(struct["EvaluationId"], "Expected key EvaluationId to exist in table")
	assert(struct["MLModelId"], "Expected key MLModelId to exist in table")
	assert(struct["EvaluationDataSourceId"], "Expected key EvaluationDataSourceId to exist in table")
	if struct["MLModelId"] then M.AssertEntityId(struct["MLModelId"]) end
	if struct["EvaluationId"] then M.AssertEntityId(struct["EvaluationId"]) end
	if struct["EvaluationName"] then M.AssertEntityName(struct["EvaluationName"]) end
	if struct["EvaluationDataSourceId"] then M.AssertEntityId(struct["EvaluationDataSourceId"]) end
	for k,_ in pairs(struct) do
		assert(CreateEvaluationInput_keys[k], "CreateEvaluationInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateEvaluationInput
--  
-- @param MLModelId [EntityId] <p>The ID of the <code>MLModel</code> to evaluate.</p> <p>The schema used in creating the <code>MLModel</code> must match the schema of the <code>DataSource</code> used in the <code>Evaluation</code>.</p>
-- @param EvaluationId [EntityId] <p>A user-supplied ID that uniquely identifies the <code>Evaluation</code>.</p>
-- @param EvaluationName [EntityName] <p>A user-supplied name or description of the <code>Evaluation</code>.</p>
-- @param EvaluationDataSourceId [EntityId] <p>The ID of the <code>DataSource</code> for the evaluation. The schema of the <code>DataSource</code> must match the schema used to create the <code>MLModel</code>.</p>
-- Required parameter: EvaluationId
-- Required parameter: MLModelId
-- Required parameter: EvaluationDataSourceId
function M.CreateEvaluationInput(MLModelId, EvaluationId, EvaluationName, EvaluationDataSourceId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateEvaluationInput")
	local t = { 
		["MLModelId"] = MLModelId,
		["EvaluationId"] = EvaluationId,
		["EvaluationName"] = EvaluationName,
		["EvaluationDataSourceId"] = EvaluationDataSourceId,
	}
	M.AssertCreateEvaluationInput(t)
	return t
end

local CreateMLModelOutput_keys = { "MLModelId" = true, nil }

function M.AssertCreateMLModelOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateMLModelOutput to be of type 'table'")
	if struct["MLModelId"] then M.AssertEntityId(struct["MLModelId"]) end
	for k,_ in pairs(struct) do
		assert(CreateMLModelOutput_keys[k], "CreateMLModelOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateMLModelOutput
-- <p> Represents the output of a <code>CreateMLModel</code> operation, and is an acknowledgement that Amazon ML received the request.</p> <p>The <code>CreateMLModel</code> operation is asynchronous. You can poll for status updates by using the <code>GetMLModel</code> operation and checking the <code>Status</code> parameter. </p>
-- @param MLModelId [EntityId] <p>A user-supplied ID that uniquely identifies the <code>MLModel</code>. This value should be identical to the value of the <code>MLModelId</code> in the request. </p>
function M.CreateMLModelOutput(MLModelId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateMLModelOutput")
	local t = { 
		["MLModelId"] = MLModelId,
	}
	M.AssertCreateMLModelOutput(t)
	return t
end

local CreateDataSourceFromS3Input_keys = { "DataSourceName" = true, "ComputeStatistics" = true, "DataSourceId" = true, "DataSpec" = true, nil }

function M.AssertCreateDataSourceFromS3Input(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDataSourceFromS3Input to be of type 'table'")
	assert(struct["DataSourceId"], "Expected key DataSourceId to exist in table")
	assert(struct["DataSpec"], "Expected key DataSpec to exist in table")
	if struct["DataSourceName"] then M.AssertEntityName(struct["DataSourceName"]) end
	if struct["ComputeStatistics"] then M.AssertComputeStatistics(struct["ComputeStatistics"]) end
	if struct["DataSourceId"] then M.AssertEntityId(struct["DataSourceId"]) end
	if struct["DataSpec"] then M.AssertS3DataSpec(struct["DataSpec"]) end
	for k,_ in pairs(struct) do
		assert(CreateDataSourceFromS3Input_keys[k], "CreateDataSourceFromS3Input contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDataSourceFromS3Input
--  
-- @param DataSourceName [EntityName] <p>A user-supplied name or description of the <code>DataSource</code>. </p>
-- @param ComputeStatistics [ComputeStatistics] <p>The compute statistics for a <code>DataSource</code>. The statistics are generated from the observation data referenced by a <code>DataSource</code>. Amazon ML uses the statistics internally during <code>MLModel</code> training. This parameter must be set to <code>true</code> if the <code></code>DataSource<code></code> needs to be used for <code>MLModel</code> training.</p>
-- @param DataSourceId [EntityId] <p>A user-supplied identifier that uniquely identifies the <code>DataSource</code>. </p>
-- @param DataSpec [S3DataSpec] <p>The data specification of a <code>DataSource</code>:</p> <ul> <li><p>DataLocationS3 - The Amazon S3 location of the observation data.</p></li> <li><p>DataSchemaLocationS3 - The Amazon S3 location of the <code>DataSchema</code>.</p></li> <li><p>DataSchema - A JSON string representing the schema. This is not required if <code>DataSchemaUri</code> is specified. </p></li> <li> <p>DataRearrangement - A JSON string that represents the splitting and rearrangement requirements for the <code>Datasource</code>. </p> <p> Sample - <code> "{\"splitting\":{\"percentBegin\":10,\"percentEnd\":60}}"</code> </p> </li> </ul>
-- Required parameter: DataSourceId
-- Required parameter: DataSpec
function M.CreateDataSourceFromS3Input(DataSourceName, ComputeStatistics, DataSourceId, DataSpec, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDataSourceFromS3Input")
	local t = { 
		["DataSourceName"] = DataSourceName,
		["ComputeStatistics"] = ComputeStatistics,
		["DataSourceId"] = DataSourceId,
		["DataSpec"] = DataSpec,
	}
	M.AssertCreateDataSourceFromS3Input(t)
	return t
end

local DeleteRealtimeEndpointInput_keys = { "MLModelId" = true, nil }

function M.AssertDeleteRealtimeEndpointInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteRealtimeEndpointInput to be of type 'table'")
	assert(struct["MLModelId"], "Expected key MLModelId to exist in table")
	if struct["MLModelId"] then M.AssertEntityId(struct["MLModelId"]) end
	for k,_ in pairs(struct) do
		assert(DeleteRealtimeEndpointInput_keys[k], "DeleteRealtimeEndpointInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteRealtimeEndpointInput
--  
-- @param MLModelId [EntityId] <p>The ID assigned to the <code>MLModel</code> during creation.</p>
-- Required parameter: MLModelId
function M.DeleteRealtimeEndpointInput(MLModelId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteRealtimeEndpointInput")
	local t = { 
		["MLModelId"] = MLModelId,
	}
	M.AssertDeleteRealtimeEndpointInput(t)
	return t
end

local GetDataSourceOutput_keys = { "Status" = true, "ComputeTime" = true, "NumberOfFiles" = true, "Name" = true, "DataSourceSchema" = true, "DataLocationS3" = true, "RoleARN" = true, "CreatedByIamUser" = true, "DataSizeInBytes" = true, "RDSMetadata" = true, "ComputeStatistics" = true, "LastUpdatedAt" = true, "DataSourceId" = true, "RedshiftMetadata" = true, "StartedAt" = true, "LogUri" = true, "DataRearrangement" = true, "Message" = true, "CreatedAt" = true, "FinishedAt" = true, nil }

function M.AssertGetDataSourceOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDataSourceOutput to be of type 'table'")
	if struct["Status"] then M.AssertEntityStatus(struct["Status"]) end
	if struct["ComputeTime"] then M.AssertLongType(struct["ComputeTime"]) end
	if struct["NumberOfFiles"] then M.AssertLongType(struct["NumberOfFiles"]) end
	if struct["Name"] then M.AssertEntityName(struct["Name"]) end
	if struct["DataSourceSchema"] then M.AssertDataSchema(struct["DataSourceSchema"]) end
	if struct["DataLocationS3"] then M.AssertS3Url(struct["DataLocationS3"]) end
	if struct["RoleARN"] then M.AssertRoleARN(struct["RoleARN"]) end
	if struct["CreatedByIamUser"] then M.AssertAwsUserArn(struct["CreatedByIamUser"]) end
	if struct["DataSizeInBytes"] then M.AssertLongType(struct["DataSizeInBytes"]) end
	if struct["RDSMetadata"] then M.AssertRDSMetadata(struct["RDSMetadata"]) end
	if struct["ComputeStatistics"] then M.AssertComputeStatistics(struct["ComputeStatistics"]) end
	if struct["LastUpdatedAt"] then M.AssertEpochTime(struct["LastUpdatedAt"]) end
	if struct["DataSourceId"] then M.AssertEntityId(struct["DataSourceId"]) end
	if struct["RedshiftMetadata"] then M.AssertRedshiftMetadata(struct["RedshiftMetadata"]) end
	if struct["StartedAt"] then M.AssertEpochTime(struct["StartedAt"]) end
	if struct["LogUri"] then M.AssertPresignedS3Url(struct["LogUri"]) end
	if struct["DataRearrangement"] then M.AssertDataRearrangement(struct["DataRearrangement"]) end
	if struct["Message"] then M.AssertMessage(struct["Message"]) end
	if struct["CreatedAt"] then M.AssertEpochTime(struct["CreatedAt"]) end
	if struct["FinishedAt"] then M.AssertEpochTime(struct["FinishedAt"]) end
	for k,_ in pairs(struct) do
		assert(GetDataSourceOutput_keys[k], "GetDataSourceOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDataSourceOutput
-- <p>Represents the output of a <code>GetDataSource</code> operation and describes a <code>DataSource</code>.</p>
-- @param Status [EntityStatus] <p>The current status of the <code>DataSource</code>. This element can have one of the following values:</p> <ul> <li> <code>PENDING</code> - Amazon ML submitted a request to create a <code>DataSource</code>.</li> <li> <code>INPROGRESS</code> - The creation process is underway.</li> <li> <code>FAILED</code> - The request to create a <code>DataSource</code> did not run to completion. It is not usable.</li> <li> <code>COMPLETED</code> - The creation process completed successfully.</li> <li> <code>DELETED</code> - The <code>DataSource</code> is marked as deleted. It is not usable.</li> </ul>
-- @param ComputeTime [LongType] <p>The approximate CPU time in milliseconds that Amazon Machine Learning spent processing the <code>DataSource</code>, normalized and scaled on computation resources. <code>ComputeTime</code> is only available if the <code>DataSource</code> is in the <code>COMPLETED</code> state and the <code>ComputeStatistics</code> is set to true.</p>
-- @param NumberOfFiles [LongType] <p>The number of data files referenced by the <code>DataSource</code>.</p>
-- @param Name [EntityName] <p>A user-supplied name or description of the <code>DataSource</code>.</p>
-- @param DataSourceSchema [DataSchema] <p>The schema used by all of the data files of this <code>DataSource</code>.</p> <note><title>Note</title> <p>This parameter is provided as part of the verbose format.</p></note>
-- @param DataLocationS3 [S3Url] <p>The location of the data file or directory in Amazon Simple Storage Service (Amazon S3).</p>
-- @param RoleARN [RoleARN] <p>Represents the output of a <code>GetDataSource</code> operation and describes a <code>DataSource</code>.</p>
-- @param CreatedByIamUser [AwsUserArn] <p>The AWS user account from which the <code>DataSource</code> was created. The account type can be either an AWS root account or an AWS Identity and Access Management (IAM) user account.</p>
-- @param DataSizeInBytes [LongType] <p>The total size of observations in the data files.</p>
-- @param RDSMetadata [RDSMetadata] <p>Represents the output of a <code>GetDataSource</code> operation and describes a <code>DataSource</code>.</p>
-- @param ComputeStatistics [ComputeStatistics] <p> The parameter is <code>true</code> if statistics need to be generated from the observation data. </p>
-- @param LastUpdatedAt [EpochTime] <p>The time of the most recent edit to the <code>DataSource</code>. The time is expressed in epoch time.</p>
-- @param DataSourceId [EntityId] <p>The ID assigned to the <code>DataSource</code> at creation. This value should be identical to the value of the <code>DataSourceId</code> in the request.</p>
-- @param RedshiftMetadata [RedshiftMetadata] <p>Represents the output of a <code>GetDataSource</code> operation and describes a <code>DataSource</code>.</p>
-- @param StartedAt [EpochTime] <p>The epoch time when Amazon Machine Learning marked the <code>DataSource</code> as <code>INPROGRESS</code>. <code>StartedAt</code> isn't available if the <code>DataSource</code> is in the <code>PENDING</code> state.</p>
-- @param LogUri [PresignedS3Url] <p>A link to the file containing logs of <code>CreateDataSourceFrom*</code> operations.</p>
-- @param DataRearrangement [DataRearrangement] <p>A JSON string that represents the splitting and rearrangement requirement used when this <code>DataSource</code> was created.</p>
-- @param Message [Message] <p>The user-supplied description of the most recent details about creating the <code>DataSource</code>.</p>
-- @param CreatedAt [EpochTime] <p>The time that the <code>DataSource</code> was created. The time is expressed in epoch time.</p>
-- @param FinishedAt [EpochTime] <p>The epoch time when Amazon Machine Learning marked the <code>DataSource</code> as <code>COMPLETED</code> or <code>FAILED</code>. <code>FinishedAt</code> is only available when the <code>DataSource</code> is in the <code>COMPLETED</code> or <code>FAILED</code> state.</p>
function M.GetDataSourceOutput(Status, ComputeTime, NumberOfFiles, Name, DataSourceSchema, DataLocationS3, RoleARN, CreatedByIamUser, DataSizeInBytes, RDSMetadata, ComputeStatistics, LastUpdatedAt, DataSourceId, RedshiftMetadata, StartedAt, LogUri, DataRearrangement, Message, CreatedAt, FinishedAt, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetDataSourceOutput")
	local t = { 
		["Status"] = Status,
		["ComputeTime"] = ComputeTime,
		["NumberOfFiles"] = NumberOfFiles,
		["Name"] = Name,
		["DataSourceSchema"] = DataSourceSchema,
		["DataLocationS3"] = DataLocationS3,
		["RoleARN"] = RoleARN,
		["CreatedByIamUser"] = CreatedByIamUser,
		["DataSizeInBytes"] = DataSizeInBytes,
		["RDSMetadata"] = RDSMetadata,
		["ComputeStatistics"] = ComputeStatistics,
		["LastUpdatedAt"] = LastUpdatedAt,
		["DataSourceId"] = DataSourceId,
		["RedshiftMetadata"] = RedshiftMetadata,
		["StartedAt"] = StartedAt,
		["LogUri"] = LogUri,
		["DataRearrangement"] = DataRearrangement,
		["Message"] = Message,
		["CreatedAt"] = CreatedAt,
		["FinishedAt"] = FinishedAt,
	}
	M.AssertGetDataSourceOutput(t)
	return t
end

local UpdateDataSourceOutput_keys = { "DataSourceId" = true, nil }

function M.AssertUpdateDataSourceOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateDataSourceOutput to be of type 'table'")
	if struct["DataSourceId"] then M.AssertEntityId(struct["DataSourceId"]) end
	for k,_ in pairs(struct) do
		assert(UpdateDataSourceOutput_keys[k], "UpdateDataSourceOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateDataSourceOutput
-- <p>Represents the output of an <code>UpdateDataSource</code> operation.</p> <p>You can see the updated content by using the <code>GetBatchPrediction</code> operation.</p>
-- @param DataSourceId [EntityId] <p>The ID assigned to the <code>DataSource</code> during creation. This value should be identical to the value of the <code>DataSourceID</code> in the request.</p>
function M.UpdateDataSourceOutput(DataSourceId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateDataSourceOutput")
	local t = { 
		["DataSourceId"] = DataSourceId,
	}
	M.AssertUpdateDataSourceOutput(t)
	return t
end

local DeleteEvaluationOutput_keys = { "EvaluationId" = true, nil }

function M.AssertDeleteEvaluationOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteEvaluationOutput to be of type 'table'")
	if struct["EvaluationId"] then M.AssertEntityId(struct["EvaluationId"]) end
	for k,_ in pairs(struct) do
		assert(DeleteEvaluationOutput_keys[k], "DeleteEvaluationOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteEvaluationOutput
-- <p> Represents the output of a <code>DeleteEvaluation</code> operation. The output indicates that Amazon Machine Learning (Amazon ML) received the request.</p> <p>You can use the <code>GetEvaluation</code> operation and check the value of the <code>Status</code> parameter to see whether an <code>Evaluation</code> is marked as <code>DELETED</code>.</p>
-- @param EvaluationId [EntityId] <p>A user-supplied ID that uniquely identifies the <code>Evaluation</code>. This value should be identical to the value of the <code>EvaluationId</code> in the request.</p>
function M.DeleteEvaluationOutput(EvaluationId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteEvaluationOutput")
	local t = { 
		["EvaluationId"] = EvaluationId,
	}
	M.AssertDeleteEvaluationOutput(t)
	return t
end

local S3DataSpec_keys = { "DataLocationS3" = true, "DataSchemaLocationS3" = true, "DataSchema" = true, "DataRearrangement" = true, nil }

function M.AssertS3DataSpec(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected S3DataSpec to be of type 'table'")
	assert(struct["DataLocationS3"], "Expected key DataLocationS3 to exist in table")
	if struct["DataLocationS3"] then M.AssertS3Url(struct["DataLocationS3"]) end
	if struct["DataSchemaLocationS3"] then M.AssertS3Url(struct["DataSchemaLocationS3"]) end
	if struct["DataSchema"] then M.AssertDataSchema(struct["DataSchema"]) end
	if struct["DataRearrangement"] then M.AssertDataRearrangement(struct["DataRearrangement"]) end
	for k,_ in pairs(struct) do
		assert(S3DataSpec_keys[k], "S3DataSpec contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type S3DataSpec
-- <p> Describes the data specification of a <code>DataSource</code>.</p>
-- @param DataLocationS3 [S3Url] <p>The location of the data file(s) used by a <code>DataSource</code>. The URI specifies a data file or an Amazon Simple Storage Service (Amazon S3) directory or bucket containing data files.</p>
-- @param DataSchemaLocationS3 [S3Url] <p>Describes the schema location in Amazon S3. You must provide either the <code>DataSchema</code> or the <code>DataSchemaLocationS3</code>.</p>
-- @param DataSchema [DataSchema] <p> A JSON string that represents the schema for an Amazon S3 <code>DataSource</code>. The <code>DataSchema</code> defines the structure of the observation data in the data file(s) referenced in the <code>DataSource</code>.</p> <p>You must provide either the <code>DataSchema</code> or the <code>DataSchemaLocationS3</code>.</p> <p>Define your <code>DataSchema</code> as a series of key-value pairs. <code>attributes</code> and <code>excludedVariableNames</code> have an array of key-value pairs for their value. Use the following format to define your <code>DataSchema</code>.</p> <p>{ "version": "1.0",</p> <p> "recordAnnotationFieldName": "F1",</p> <p> "recordWeightFieldName": "F2",</p> <p> "targetFieldName": "F3",</p> <p> "dataFormat": "CSV",</p> <p> "dataFileContainsHeader": true,</p> <p> "attributes": [</p> <p> { "fieldName": "F1", "fieldType": "TEXT" }, { "fieldName": "F2", "fieldType": "NUMERIC" }, { "fieldName": "F3", "fieldType": "CATEGORICAL" }, { "fieldName": "F4", "fieldType": "NUMERIC" }, { "fieldName": "F5", "fieldType": "CATEGORICAL" }, { "fieldName": "F6", "fieldType": "TEXT" }, { "fieldName": "F7", "fieldType": "WEIGHTED_INT_SEQUENCE" }, { "fieldName": "F8", "fieldType": "WEIGHTED_STRING_SEQUENCE" } ],</p> <p> "excludedVariableNames": [ "F6" ] } </p> <?oxy_insert_end>
-- @param DataRearrangement [DataRearrangement] <p>A JSON string that represents the splitting and rearrangement processing to be applied to a <code>DataSource</code>. If the <code>DataRearrangement</code> parameter is not provided, all of the input data is used to create the <code>Datasource</code>.</p> <p>There are multiple parameters that control what data is used to create a datasource:</p> <ul> <li><p><b><code>percentBegin</code></b></p> <p>Use <code>percentBegin</code> to indicate the beginning of the range of the data used to create the Datasource. If you do not include <code>percentBegin</code> and <code>percentEnd</code>, Amazon ML includes all of the data when creating the datasource.</p></li> <li><p><b><code>percentEnd</code></b></p> <p>Use <code>percentEnd</code> to indicate the end of the range of the data used to create the Datasource. If you do not include <code>percentBegin</code> and <code>percentEnd</code>, Amazon ML includes all of the data when creating the datasource.</p></li> <li><p><b><code>complement</code></b></p> <p>The <code>complement</code> parameter instructs Amazon ML to use the data that is not included in the range of <code>percentBegin</code> to <code>percentEnd</code> to create a datasource. The <code>complement</code> parameter is useful if you need to create complementary datasources for training and evaluation. To create a complementary datasource, use the same values for <code>percentBegin</code> and <code>percentEnd</code>, along with the <code>complement</code> parameter.</p> <p>For example, the following two datasources do not share any data, and can be used to train and evaluate a model. The first datasource has 25 percent of the data, and the second one has 75 percent of the data.</p> <p>Datasource for evaluation: <code>{"splitting":{"percentBegin":0, "percentEnd":25}}</code></p> <p>Datasource for training: <code>{"splitting":{"percentBegin":0, "percentEnd":25, "complement":"true"}}</code></p> </li> <li><p><b><code>strategy</code></b></p> <p>To change how Amazon ML splits the data for a datasource, use the <code>strategy</code> parameter.</p> <p>The default value for the <code>strategy</code> parameter is <code>sequential</code>, meaning that Amazon ML takes all of the data records between the <code>percentBegin</code> and <code>percentEnd</code> parameters for the datasource, in the order that the records appear in the input data.</p> <p>The following two <code>DataRearrangement</code> lines are examples of sequentially ordered training and evaluation datasources:</p> <p>Datasource for evaluation: <code>{"splitting":{"percentBegin":70, "percentEnd":100, "strategy":"sequential"}}</code></p> <p>Datasource for training: <code>{"splitting":{"percentBegin":70, "percentEnd":100, "strategy":"sequential", "complement":"true"}}</code></p> <p>To randomly split the input data into the proportions indicated by the percentBegin and percentEnd parameters, set the <code>strategy</code> parameter to <code>random</code> and provide a string that is used as the seed value for the random data splitting (for example, you can use the S3 path to your data as the random seed string). If you choose the random split strategy, Amazon ML assigns each row of data a pseudo-random number between 0 and 100, and then selects the rows that have an assigned number between <code>percentBegin</code> and <code>percentEnd</code>. Pseudo-random numbers are assigned using both the input seed string value and the byte offset as a seed, so changing the data results in a different split. Any existing ordering is preserved. The random splitting strategy ensures that variables in the training and evaluation data are distributed similarly. It is useful in the cases where the input data may have an implicit sort order, which would otherwise result in training and evaluation datasources containing non-similar data records.</p> <p>The following two <code>DataRearrangement</code> lines are examples of non-sequentially ordered training and evaluation datasources:</p> <p>Datasource for evaluation: <code>{"splitting":{"percentBegin":70, "percentEnd":100, "strategy":"random", "randomSeed"="s3://my_s3_path/bucket/file.csv"}}</code></p> <p>Datasource for training: <code>{"splitting":{"percentBegin":70, "percentEnd":100, "strategy":"random", "randomSeed"="s3://my_s3_path/bucket/file.csv", "complement":"true"}}</code></p> </li> </ul>
-- Required parameter: DataLocationS3
function M.S3DataSpec(DataLocationS3, DataSchemaLocationS3, DataSchema, DataRearrangement, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating S3DataSpec")
	local t = { 
		["DataLocationS3"] = DataLocationS3,
		["DataSchemaLocationS3"] = DataSchemaLocationS3,
		["DataSchema"] = DataSchema,
		["DataRearrangement"] = DataRearrangement,
	}
	M.AssertS3DataSpec(t)
	return t
end

local DeleteMLModelOutput_keys = { "MLModelId" = true, nil }

function M.AssertDeleteMLModelOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteMLModelOutput to be of type 'table'")
	if struct["MLModelId"] then M.AssertEntityId(struct["MLModelId"]) end
	for k,_ in pairs(struct) do
		assert(DeleteMLModelOutput_keys[k], "DeleteMLModelOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteMLModelOutput
-- <p>Represents the output of a <code>DeleteMLModel</code> operation.</p> <p>You can use the <code>GetMLModel</code> operation and check the value of the <code>Status</code> parameter to see whether an <code>MLModel</code> is marked as <code>DELETED</code>.</p>
-- @param MLModelId [EntityId] <p>A user-supplied ID that uniquely identifies the <code>MLModel</code>. This value should be identical to the value of the <code>MLModelID</code> in the request.</p>
function M.DeleteMLModelOutput(MLModelId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteMLModelOutput")
	local t = { 
		["MLModelId"] = MLModelId,
	}
	M.AssertDeleteMLModelOutput(t)
	return t
end

local RedshiftDatabase_keys = { "ClusterIdentifier" = true, "DatabaseName" = true, nil }

function M.AssertRedshiftDatabase(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RedshiftDatabase to be of type 'table'")
	assert(struct["DatabaseName"], "Expected key DatabaseName to exist in table")
	assert(struct["ClusterIdentifier"], "Expected key ClusterIdentifier to exist in table")
	if struct["ClusterIdentifier"] then M.AssertRedshiftClusterIdentifier(struct["ClusterIdentifier"]) end
	if struct["DatabaseName"] then M.AssertRedshiftDatabaseName(struct["DatabaseName"]) end
	for k,_ in pairs(struct) do
		assert(RedshiftDatabase_keys[k], "RedshiftDatabase contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RedshiftDatabase
-- <p>Describes the database details required to connect to an Amazon Redshift database.</p>
-- @param ClusterIdentifier [RedshiftClusterIdentifier] <p>Describes the database details required to connect to an Amazon Redshift database.</p>
-- @param DatabaseName [RedshiftDatabaseName] <p>Describes the database details required to connect to an Amazon Redshift database.</p>
-- Required parameter: DatabaseName
-- Required parameter: ClusterIdentifier
function M.RedshiftDatabase(ClusterIdentifier, DatabaseName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RedshiftDatabase")
	local t = { 
		["ClusterIdentifier"] = ClusterIdentifier,
		["DatabaseName"] = DatabaseName,
	}
	M.AssertRedshiftDatabase(t)
	return t
end

local CreateBatchPredictionInput_keys = { "MLModelId" = true, "BatchPredictionId" = true, "BatchPredictionDataSourceId" = true, "OutputUri" = true, "BatchPredictionName" = true, nil }

function M.AssertCreateBatchPredictionInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateBatchPredictionInput to be of type 'table'")
	assert(struct["BatchPredictionId"], "Expected key BatchPredictionId to exist in table")
	assert(struct["MLModelId"], "Expected key MLModelId to exist in table")
	assert(struct["BatchPredictionDataSourceId"], "Expected key BatchPredictionDataSourceId to exist in table")
	assert(struct["OutputUri"], "Expected key OutputUri to exist in table")
	if struct["MLModelId"] then M.AssertEntityId(struct["MLModelId"]) end
	if struct["BatchPredictionId"] then M.AssertEntityId(struct["BatchPredictionId"]) end
	if struct["BatchPredictionDataSourceId"] then M.AssertEntityId(struct["BatchPredictionDataSourceId"]) end
	if struct["OutputUri"] then M.AssertS3Url(struct["OutputUri"]) end
	if struct["BatchPredictionName"] then M.AssertEntityName(struct["BatchPredictionName"]) end
	for k,_ in pairs(struct) do
		assert(CreateBatchPredictionInput_keys[k], "CreateBatchPredictionInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateBatchPredictionInput
--  
-- @param MLModelId [EntityId] <p>The ID of the <code>MLModel</code> that will generate predictions for the group of observations. </p>
-- @param BatchPredictionId [EntityId] <p>A user-supplied ID that uniquely identifies the <code>BatchPrediction</code>.</p>
-- @param BatchPredictionDataSourceId [EntityId] <p>The ID of the <code>DataSource</code> that points to the group of observations to predict.</p>
-- @param OutputUri [S3Url] <p>The location of an Amazon Simple Storage Service (Amazon S3) bucket or directory to store the batch prediction results. The following substrings are not allowed in the <code>s3 key</code> portion of the <code>outputURI</code> field: ':', '//', '/./', '/../'.</p> <p>Amazon ML needs permissions to store and retrieve the logs on your behalf. For information about how to set permissions, see the <a href="http://docs.aws.amazon.com/machine-learning/latest/dg">Amazon Machine Learning Developer Guide</a>.</p>
-- @param BatchPredictionName [EntityName] <p>A user-supplied name or description of the <code>BatchPrediction</code>. <code>BatchPredictionName</code> can only use the UTF-8 character set.</p>
-- Required parameter: BatchPredictionId
-- Required parameter: MLModelId
-- Required parameter: BatchPredictionDataSourceId
-- Required parameter: OutputUri
function M.CreateBatchPredictionInput(MLModelId, BatchPredictionId, BatchPredictionDataSourceId, OutputUri, BatchPredictionName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateBatchPredictionInput")
	local t = { 
		["MLModelId"] = MLModelId,
		["BatchPredictionId"] = BatchPredictionId,
		["BatchPredictionDataSourceId"] = BatchPredictionDataSourceId,
		["OutputUri"] = OutputUri,
		["BatchPredictionName"] = BatchPredictionName,
	}
	M.AssertCreateBatchPredictionInput(t)
	return t
end

local DescribeBatchPredictionsOutput_keys = { "NextToken" = true, "Results" = true, nil }

function M.AssertDescribeBatchPredictionsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeBatchPredictionsOutput to be of type 'table'")
	if struct["NextToken"] then M.AssertStringType(struct["NextToken"]) end
	if struct["Results"] then M.AssertBatchPredictions(struct["Results"]) end
	for k,_ in pairs(struct) do
		assert(DescribeBatchPredictionsOutput_keys[k], "DescribeBatchPredictionsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeBatchPredictionsOutput
-- <p>Represents the output of a <code>DescribeBatchPredictions</code> operation. The content is essentially a list of <code>BatchPrediction</code>s.</p>
-- @param NextToken [StringType] <p>The ID of the next page in the paginated results that indicates at least one more page follows.</p>
-- @param Results [BatchPredictions] <p>A list of <code>BatchPrediction</code> objects that meet the search criteria. </p>
function M.DescribeBatchPredictionsOutput(NextToken, Results, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeBatchPredictionsOutput")
	local t = { 
		["NextToken"] = NextToken,
		["Results"] = Results,
	}
	M.AssertDescribeBatchPredictionsOutput(t)
	return t
end

local RealtimeEndpointInfo_keys = { "EndpointStatus" = true, "PeakRequestsPerSecond" = true, "CreatedAt" = true, "EndpointUrl" = true, nil }

function M.AssertRealtimeEndpointInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RealtimeEndpointInfo to be of type 'table'")
	if struct["EndpointStatus"] then M.AssertRealtimeEndpointStatus(struct["EndpointStatus"]) end
	if struct["PeakRequestsPerSecond"] then M.AssertIntegerType(struct["PeakRequestsPerSecond"]) end
	if struct["CreatedAt"] then M.AssertEpochTime(struct["CreatedAt"]) end
	if struct["EndpointUrl"] then M.AssertVipURL(struct["EndpointUrl"]) end
	for k,_ in pairs(struct) do
		assert(RealtimeEndpointInfo_keys[k], "RealtimeEndpointInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RealtimeEndpointInfo
-- <p> Describes the real-time endpoint information for an <code>MLModel</code>.</p>
-- @param EndpointStatus [RealtimeEndpointStatus] <p> The current status of the real-time endpoint for the <code>MLModel</code>. This element can have one of the following values: </p> <ul> <li> <code>NONE</code> - Endpoint does not exist or was previously deleted.</li> <li> <code>READY</code> - Endpoint is ready to be used for real-time predictions.</li> <li> <code>UPDATING</code> - Updating/creating the endpoint. </li> </ul>
-- @param PeakRequestsPerSecond [IntegerType] <p> The maximum processing rate for the real-time endpoint for <code>MLModel</code>, measured in incoming requests per second.</p>
-- @param CreatedAt [EpochTime] <p>The time that the request to create the real-time endpoint for the <code>MLModel</code> was received. The time is expressed in epoch time.</p>
-- @param EndpointUrl [VipURL] <p>The URI that specifies where to send real-time prediction requests for the <code>MLModel</code>.</p> <note><title>Note</title> <p>The application must wait until the real-time endpoint is ready before using this URI.</p> </note>
function M.RealtimeEndpointInfo(EndpointStatus, PeakRequestsPerSecond, CreatedAt, EndpointUrl, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RealtimeEndpointInfo")
	local t = { 
		["EndpointStatus"] = EndpointStatus,
		["PeakRequestsPerSecond"] = PeakRequestsPerSecond,
		["CreatedAt"] = CreatedAt,
		["EndpointUrl"] = EndpointUrl,
	}
	M.AssertRealtimeEndpointInfo(t)
	return t
end

local DescribeMLModelsOutput_keys = { "NextToken" = true, "Results" = true, nil }

function M.AssertDescribeMLModelsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeMLModelsOutput to be of type 'table'")
	if struct["NextToken"] then M.AssertStringType(struct["NextToken"]) end
	if struct["Results"] then M.AssertMLModels(struct["Results"]) end
	for k,_ in pairs(struct) do
		assert(DescribeMLModelsOutput_keys[k], "DescribeMLModelsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeMLModelsOutput
-- <p>Represents the output of a <code>DescribeMLModels</code> operation. The content is essentially a list of <code>MLModel</code>.</p>
-- @param NextToken [StringType] <p>The ID of the next page in the paginated results that indicates at least one more page follows.</p>
-- @param Results [MLModels] <p>A list of <code>MLModel</code> that meet the search criteria.</p>
function M.DescribeMLModelsOutput(NextToken, Results, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeMLModelsOutput")
	local t = { 
		["NextToken"] = NextToken,
		["Results"] = Results,
	}
	M.AssertDescribeMLModelsOutput(t)
	return t
end

local DataSource_keys = { "Status" = true, "ComputeTime" = true, "NumberOfFiles" = true, "Name" = true, "DataLocationS3" = true, "RoleARN" = true, "CreatedByIamUser" = true, "DataSizeInBytes" = true, "RDSMetadata" = true, "ComputeStatistics" = true, "LastUpdatedAt" = true, "DataSourceId" = true, "RedshiftMetadata" = true, "StartedAt" = true, "Message" = true, "DataRearrangement" = true, "CreatedAt" = true, "FinishedAt" = true, nil }

function M.AssertDataSource(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DataSource to be of type 'table'")
	if struct["Status"] then M.AssertEntityStatus(struct["Status"]) end
	if struct["ComputeTime"] then M.AssertLongType(struct["ComputeTime"]) end
	if struct["NumberOfFiles"] then M.AssertLongType(struct["NumberOfFiles"]) end
	if struct["Name"] then M.AssertEntityName(struct["Name"]) end
	if struct["DataLocationS3"] then M.AssertS3Url(struct["DataLocationS3"]) end
	if struct["RoleARN"] then M.AssertRoleARN(struct["RoleARN"]) end
	if struct["CreatedByIamUser"] then M.AssertAwsUserArn(struct["CreatedByIamUser"]) end
	if struct["DataSizeInBytes"] then M.AssertLongType(struct["DataSizeInBytes"]) end
	if struct["RDSMetadata"] then M.AssertRDSMetadata(struct["RDSMetadata"]) end
	if struct["ComputeStatistics"] then M.AssertComputeStatistics(struct["ComputeStatistics"]) end
	if struct["LastUpdatedAt"] then M.AssertEpochTime(struct["LastUpdatedAt"]) end
	if struct["DataSourceId"] then M.AssertEntityId(struct["DataSourceId"]) end
	if struct["RedshiftMetadata"] then M.AssertRedshiftMetadata(struct["RedshiftMetadata"]) end
	if struct["StartedAt"] then M.AssertEpochTime(struct["StartedAt"]) end
	if struct["Message"] then M.AssertMessage(struct["Message"]) end
	if struct["DataRearrangement"] then M.AssertDataRearrangement(struct["DataRearrangement"]) end
	if struct["CreatedAt"] then M.AssertEpochTime(struct["CreatedAt"]) end
	if struct["FinishedAt"] then M.AssertEpochTime(struct["FinishedAt"]) end
	for k,_ in pairs(struct) do
		assert(DataSource_keys[k], "DataSource contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DataSource
-- <p> Represents the output of the <code>GetDataSource</code> operation. </p> <p> The content consists of the detailed metadata and data file information and the current status of the <code>DataSource</code>. </p>
-- @param Status [EntityStatus] <p>The current status of the <code>DataSource</code>. This element can have one of the following values: </p> <ul> <li>PENDING - Amazon Machine Learning (Amazon ML) submitted a request to create a <code>DataSource</code>.</li> <li>INPROGRESS - The creation process is underway.</li> <li>FAILED - The request to create a <code>DataSource</code> did not run to completion. It is not usable.</li> <li>COMPLETED - The creation process completed successfully.</li> <li>DELETED - The <code>DataSource</code> is marked as deleted. It is not usable.</li> </ul>
-- @param ComputeTime [LongType] <p> Represents the output of the <code>GetDataSource</code> operation. </p> <p> The content consists of the detailed metadata and data file information and the current status of the <code>DataSource</code>. </p>
-- @param NumberOfFiles [LongType] <p>The number of data files referenced by the <code>DataSource</code>.</p>
-- @param Name [EntityName] <p>A user-supplied name or description of the <code>DataSource</code>.</p>
-- @param DataLocationS3 [S3Url] <p>The location and name of the data in Amazon Simple Storage Service (Amazon S3) that is used by a <code>DataSource</code>.</p>
-- @param RoleARN [RoleARN] <p> Represents the output of the <code>GetDataSource</code> operation. </p> <p> The content consists of the detailed metadata and data file information and the current status of the <code>DataSource</code>. </p>
-- @param CreatedByIamUser [AwsUserArn] <p>The AWS user account from which the <code>DataSource</code> was created. The account type can be either an AWS root account or an AWS Identity and Access Management (IAM) user account.</p>
-- @param DataSizeInBytes [LongType] <p>The total number of observations contained in the data files that the <code>DataSource</code> references.</p>
-- @param RDSMetadata [RDSMetadata] <p> Represents the output of the <code>GetDataSource</code> operation. </p> <p> The content consists of the detailed metadata and data file information and the current status of the <code>DataSource</code>. </p>
-- @param ComputeStatistics [ComputeStatistics] <p> The parameter is <code>true</code> if statistics need to be generated from the observation data. </p>
-- @param LastUpdatedAt [EpochTime] <p>The time of the most recent edit to the <code>BatchPrediction</code>. The time is expressed in epoch time.</p>
-- @param DataSourceId [EntityId] <p>The ID that is assigned to the <code>DataSource</code> during creation.</p>
-- @param RedshiftMetadata [RedshiftMetadata] <p> Represents the output of the <code>GetDataSource</code> operation. </p> <p> The content consists of the detailed metadata and data file information and the current status of the <code>DataSource</code>. </p>
-- @param StartedAt [EpochTime] <p> Represents the output of the <code>GetDataSource</code> operation. </p> <p> The content consists of the detailed metadata and data file information and the current status of the <code>DataSource</code>. </p>
-- @param Message [Message] <p>A description of the most recent details about creating the <code>DataSource</code>.</p>
-- @param DataRearrangement [DataRearrangement] <p>A JSON string that represents the splitting and rearrangement requirement used when this <code>DataSource</code> was created.</p>
-- @param CreatedAt [EpochTime] <p>The time that the <code>DataSource</code> was created. The time is expressed in epoch time.</p>
-- @param FinishedAt [EpochTime] <p> Represents the output of the <code>GetDataSource</code> operation. </p> <p> The content consists of the detailed metadata and data file information and the current status of the <code>DataSource</code>. </p>
function M.DataSource(Status, ComputeTime, NumberOfFiles, Name, DataLocationS3, RoleARN, CreatedByIamUser, DataSizeInBytes, RDSMetadata, ComputeStatistics, LastUpdatedAt, DataSourceId, RedshiftMetadata, StartedAt, Message, DataRearrangement, CreatedAt, FinishedAt, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DataSource")
	local t = { 
		["Status"] = Status,
		["ComputeTime"] = ComputeTime,
		["NumberOfFiles"] = NumberOfFiles,
		["Name"] = Name,
		["DataLocationS3"] = DataLocationS3,
		["RoleARN"] = RoleARN,
		["CreatedByIamUser"] = CreatedByIamUser,
		["DataSizeInBytes"] = DataSizeInBytes,
		["RDSMetadata"] = RDSMetadata,
		["ComputeStatistics"] = ComputeStatistics,
		["LastUpdatedAt"] = LastUpdatedAt,
		["DataSourceId"] = DataSourceId,
		["RedshiftMetadata"] = RedshiftMetadata,
		["StartedAt"] = StartedAt,
		["Message"] = Message,
		["DataRearrangement"] = DataRearrangement,
		["CreatedAt"] = CreatedAt,
		["FinishedAt"] = FinishedAt,
	}
	M.AssertDataSource(t)
	return t
end

local CreateRealtimeEndpointInput_keys = { "MLModelId" = true, nil }

function M.AssertCreateRealtimeEndpointInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateRealtimeEndpointInput to be of type 'table'")
	assert(struct["MLModelId"], "Expected key MLModelId to exist in table")
	if struct["MLModelId"] then M.AssertEntityId(struct["MLModelId"]) end
	for k,_ in pairs(struct) do
		assert(CreateRealtimeEndpointInput_keys[k], "CreateRealtimeEndpointInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateRealtimeEndpointInput
--  
-- @param MLModelId [EntityId] <p>The ID assigned to the <code>MLModel</code> during creation.</p>
-- Required parameter: MLModelId
function M.CreateRealtimeEndpointInput(MLModelId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateRealtimeEndpointInput")
	local t = { 
		["MLModelId"] = MLModelId,
	}
	M.AssertCreateRealtimeEndpointInput(t)
	return t
end

local RDSDataSpec_keys = { "DatabaseCredentials" = true, "DataSchemaUri" = true, "ServiceRole" = true, "ResourceRole" = true, "DatabaseInformation" = true, "SecurityGroupIds" = true, "SubnetId" = true, "DataSchema" = true, "DataRearrangement" = true, "S3StagingLocation" = true, "SelectSqlQuery" = true, nil }

function M.AssertRDSDataSpec(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RDSDataSpec to be of type 'table'")
	assert(struct["DatabaseInformation"], "Expected key DatabaseInformation to exist in table")
	assert(struct["SelectSqlQuery"], "Expected key SelectSqlQuery to exist in table")
	assert(struct["DatabaseCredentials"], "Expected key DatabaseCredentials to exist in table")
	assert(struct["S3StagingLocation"], "Expected key S3StagingLocation to exist in table")
	assert(struct["ResourceRole"], "Expected key ResourceRole to exist in table")
	assert(struct["ServiceRole"], "Expected key ServiceRole to exist in table")
	assert(struct["SubnetId"], "Expected key SubnetId to exist in table")
	assert(struct["SecurityGroupIds"], "Expected key SecurityGroupIds to exist in table")
	if struct["DatabaseCredentials"] then M.AssertRDSDatabaseCredentials(struct["DatabaseCredentials"]) end
	if struct["DataSchemaUri"] then M.AssertS3Url(struct["DataSchemaUri"]) end
	if struct["ServiceRole"] then M.AssertEDPServiceRole(struct["ServiceRole"]) end
	if struct["ResourceRole"] then M.AssertEDPResourceRole(struct["ResourceRole"]) end
	if struct["DatabaseInformation"] then M.AssertRDSDatabase(struct["DatabaseInformation"]) end
	if struct["SecurityGroupIds"] then M.AssertEDPSecurityGroupIds(struct["SecurityGroupIds"]) end
	if struct["SubnetId"] then M.AssertEDPSubnetId(struct["SubnetId"]) end
	if struct["DataSchema"] then M.AssertDataSchema(struct["DataSchema"]) end
	if struct["DataRearrangement"] then M.AssertDataRearrangement(struct["DataRearrangement"]) end
	if struct["S3StagingLocation"] then M.AssertS3Url(struct["S3StagingLocation"]) end
	if struct["SelectSqlQuery"] then M.AssertRDSSelectSqlQuery(struct["SelectSqlQuery"]) end
	for k,_ in pairs(struct) do
		assert(RDSDataSpec_keys[k], "RDSDataSpec contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RDSDataSpec
-- <p>The data specification of an Amazon Relational Database Service (Amazon RDS) <code>DataSource</code>.</p>
-- @param DatabaseCredentials [RDSDatabaseCredentials] <p>The AWS Identity and Access Management (IAM) credentials that are used connect to the Amazon RDS database.</p>
-- @param DataSchemaUri [S3Url] <p>The Amazon S3 location of the <code>DataSchema</code>. </p>
-- @param ServiceRole [EDPServiceRole] <p>The role (DataPipelineDefaultRole) assumed by AWS Data Pipeline service to monitor the progress of the copy task from Amazon RDS to Amazon S3. For more information, see <a href="http://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-iam-roles.html">Role templates</a> for data pipelines.</p>
-- @param ResourceRole [EDPResourceRole] <p>The role (DataPipelineDefaultResourceRole) assumed by an Amazon Elastic Compute Cloud (Amazon EC2) instance to carry out the copy operation from Amazon RDS to an Amazon S3 task. For more information, see <a href="http://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-iam-roles.html">Role templates</a> for data pipelines.</p>
-- @param DatabaseInformation [RDSDatabase] <p>Describes the <code>DatabaseName</code> and <code>InstanceIdentifier</code> of an Amazon RDS database.</p>
-- @param SecurityGroupIds [EDPSecurityGroupIds] <p>The security group IDs to be used to access a VPC-based RDS DB instance. Ensure that there are appropriate ingress rules set up to allow access to the RDS DB instance. This attribute is used by Data Pipeline to carry out the copy operation from Amazon RDS to an Amazon S3 task.</p>
-- @param SubnetId [EDPSubnetId] <p>The subnet ID to be used to access a VPC-based RDS DB instance. This attribute is used by Data Pipeline to carry out the copy task from Amazon RDS to Amazon S3.</p>
-- @param DataSchema [DataSchema] <p>A JSON string that represents the schema for an Amazon RDS <code>DataSource</code>. The <code>DataSchema</code> defines the structure of the observation data in the data file(s) referenced in the <code>DataSource</code>.</p> <p>A <code>DataSchema</code> is not required if you specify a <code>DataSchemaUri</code></p> <p>Define your <code>DataSchema</code> as a series of key-value pairs. <code>attributes</code> and <code>excludedVariableNames</code> have an array of key-value pairs for their value. Use the following format to define your <code>DataSchema</code>.</p> <p>{ "version": "1.0",</p> <p> "recordAnnotationFieldName": "F1",</p> <p> "recordWeightFieldName": "F2",</p> <p> "targetFieldName": "F3",</p> <p> "dataFormat": "CSV",</p> <p> "dataFileContainsHeader": true,</p> <p> "attributes": [</p> <p> { "fieldName": "F1", "fieldType": "TEXT" }, { "fieldName": "F2", "fieldType": "NUMERIC" }, { "fieldName": "F3", "fieldType": "CATEGORICAL" }, { "fieldName": "F4", "fieldType": "NUMERIC" }, { "fieldName": "F5", "fieldType": "CATEGORICAL" }, { "fieldName": "F6", "fieldType": "TEXT" }, { "fieldName": "F7", "fieldType": "WEIGHTED_INT_SEQUENCE" }, { "fieldName": "F8", "fieldType": "WEIGHTED_STRING_SEQUENCE" } ],</p> <p> "excludedVariableNames": [ "F6" ] } </p> <?oxy_insert_end>
-- @param DataRearrangement [DataRearrangement] <p>A JSON string that represents the splitting and rearrangement processing to be applied to a <code>DataSource</code>. If the <code>DataRearrangement</code> parameter is not provided, all of the input data is used to create the <code>Datasource</code>.</p> <p>There are multiple parameters that control what data is used to create a datasource:</p> <ul> <li><p><b><code>percentBegin</code></b></p> <p>Use <code>percentBegin</code> to indicate the beginning of the range of the data used to create the Datasource. If you do not include <code>percentBegin</code> and <code>percentEnd</code>, Amazon ML includes all of the data when creating the datasource.</p></li> <li><p><b><code>percentEnd</code></b></p> <p>Use <code>percentEnd</code> to indicate the end of the range of the data used to create the Datasource. If you do not include <code>percentBegin</code> and <code>percentEnd</code>, Amazon ML includes all of the data when creating the datasource.</p></li> <li><p><b><code>complement</code></b></p> <p>The <code>complement</code> parameter instructs Amazon ML to use the data that is not included in the range of <code>percentBegin</code> to <code>percentEnd</code> to create a datasource. The <code>complement</code> parameter is useful if you need to create complementary datasources for training and evaluation. To create a complementary datasource, use the same values for <code>percentBegin</code> and <code>percentEnd</code>, along with the <code>complement</code> parameter.</p> <p>For example, the following two datasources do not share any data, and can be used to train and evaluate a model. The first datasource has 25 percent of the data, and the second one has 75 percent of the data.</p> <p>Datasource for evaluation: <code>{"splitting":{"percentBegin":0, "percentEnd":25}}</code></p> <p>Datasource for training: <code>{"splitting":{"percentBegin":0, "percentEnd":25, "complement":"true"}}</code></p> </li> <li><p><b><code>strategy</code></b></p> <p>To change how Amazon ML splits the data for a datasource, use the <code>strategy</code> parameter.</p> <p>The default value for the <code>strategy</code> parameter is <code>sequential</code>, meaning that Amazon ML takes all of the data records between the <code>percentBegin</code> and <code>percentEnd</code> parameters for the datasource, in the order that the records appear in the input data.</p> <p>The following two <code>DataRearrangement</code> lines are examples of sequentially ordered training and evaluation datasources:</p> <p>Datasource for evaluation: <code>{"splitting":{"percentBegin":70, "percentEnd":100, "strategy":"sequential"}}</code></p> <p>Datasource for training: <code>{"splitting":{"percentBegin":70, "percentEnd":100, "strategy":"sequential", "complement":"true"}}</code></p> <p>To randomly split the input data into the proportions indicated by the percentBegin and percentEnd parameters, set the <code>strategy</code> parameter to <code>random</code> and provide a string that is used as the seed value for the random data splitting (for example, you can use the S3 path to your data as the random seed string). If you choose the random split strategy, Amazon ML assigns each row of data a pseudo-random number between 0 and 100, and then selects the rows that have an assigned number between <code>percentBegin</code> and <code>percentEnd</code>. Pseudo-random numbers are assigned using both the input seed string value and the byte offset as a seed, so changing the data results in a different split. Any existing ordering is preserved. The random splitting strategy ensures that variables in the training and evaluation data are distributed similarly. It is useful in the cases where the input data may have an implicit sort order, which would otherwise result in training and evaluation datasources containing non-similar data records.</p> <p>The following two <code>DataRearrangement</code> lines are examples of non-sequentially ordered training and evaluation datasources:</p> <p>Datasource for evaluation: <code>{"splitting":{"percentBegin":70, "percentEnd":100, "strategy":"random", "randomSeed"="s3://my_s3_path/bucket/file.csv"}}</code></p> <p>Datasource for training: <code>{"splitting":{"percentBegin":70, "percentEnd":100, "strategy":"random", "randomSeed"="s3://my_s3_path/bucket/file.csv", "complement":"true"}}</code></p> </li> </ul>
-- @param S3StagingLocation [S3Url] <p>The Amazon S3 location for staging Amazon RDS data. The data retrieved from Amazon RDS using <code>SelectSqlQuery</code> is stored in this location.</p>
-- @param SelectSqlQuery [RDSSelectSqlQuery] <p>The query that is used to retrieve the observation data for the <code>DataSource</code>.</p>
-- Required parameter: DatabaseInformation
-- Required parameter: SelectSqlQuery
-- Required parameter: DatabaseCredentials
-- Required parameter: S3StagingLocation
-- Required parameter: ResourceRole
-- Required parameter: ServiceRole
-- Required parameter: SubnetId
-- Required parameter: SecurityGroupIds
function M.RDSDataSpec(DatabaseCredentials, DataSchemaUri, ServiceRole, ResourceRole, DatabaseInformation, SecurityGroupIds, SubnetId, DataSchema, DataRearrangement, S3StagingLocation, SelectSqlQuery, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RDSDataSpec")
	local t = { 
		["DatabaseCredentials"] = DatabaseCredentials,
		["DataSchemaUri"] = DataSchemaUri,
		["ServiceRole"] = ServiceRole,
		["ResourceRole"] = ResourceRole,
		["DatabaseInformation"] = DatabaseInformation,
		["SecurityGroupIds"] = SecurityGroupIds,
		["SubnetId"] = SubnetId,
		["DataSchema"] = DataSchema,
		["DataRearrangement"] = DataRearrangement,
		["S3StagingLocation"] = S3StagingLocation,
		["SelectSqlQuery"] = SelectSqlQuery,
	}
	M.AssertRDSDataSpec(t)
	return t
end

local GetMLModelInput_keys = { "MLModelId" = true, "Verbose" = true, nil }

function M.AssertGetMLModelInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetMLModelInput to be of type 'table'")
	assert(struct["MLModelId"], "Expected key MLModelId to exist in table")
	if struct["MLModelId"] then M.AssertEntityId(struct["MLModelId"]) end
	if struct["Verbose"] then M.AssertVerbose(struct["Verbose"]) end
	for k,_ in pairs(struct) do
		assert(GetMLModelInput_keys[k], "GetMLModelInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetMLModelInput
--  
-- @param MLModelId [EntityId] <p>The ID assigned to the <code>MLModel</code> at creation.</p>
-- @param Verbose [Verbose] <p>Specifies whether the <code>GetMLModel</code> operation should return <code>Recipe</code>.</p> <p>If true, <code>Recipe</code> is returned.</p> <p>If false, <code>Recipe</code> is not returned.</p>
-- Required parameter: MLModelId
function M.GetMLModelInput(MLModelId, Verbose, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetMLModelInput")
	local t = { 
		["MLModelId"] = MLModelId,
		["Verbose"] = Verbose,
	}
	M.AssertGetMLModelInput(t)
	return t
end

local DeleteRealtimeEndpointOutput_keys = { "MLModelId" = true, "RealtimeEndpointInfo" = true, nil }

function M.AssertDeleteRealtimeEndpointOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteRealtimeEndpointOutput to be of type 'table'")
	if struct["MLModelId"] then M.AssertEntityId(struct["MLModelId"]) end
	if struct["RealtimeEndpointInfo"] then M.AssertRealtimeEndpointInfo(struct["RealtimeEndpointInfo"]) end
	for k,_ in pairs(struct) do
		assert(DeleteRealtimeEndpointOutput_keys[k], "DeleteRealtimeEndpointOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteRealtimeEndpointOutput
-- <p>Represents the output of an <code>DeleteRealtimeEndpoint</code> operation.</p> <p>The result contains the <code>MLModelId</code> and the endpoint information for the <code>MLModel</code>. </p>
-- @param MLModelId [EntityId] <p>A user-supplied ID that uniquely identifies the <code>MLModel</code>. This value should be identical to the value of the <code>MLModelId</code> in the request.</p>
-- @param RealtimeEndpointInfo [RealtimeEndpointInfo] <p>The endpoint information of the <code>MLModel</code> </p>
function M.DeleteRealtimeEndpointOutput(MLModelId, RealtimeEndpointInfo, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteRealtimeEndpointOutput")
	local t = { 
		["MLModelId"] = MLModelId,
		["RealtimeEndpointInfo"] = RealtimeEndpointInfo,
	}
	M.AssertDeleteRealtimeEndpointOutput(t)
	return t
end

local BatchPrediction_keys = { "Status" = true, "ComputeTime" = true, "Name" = true, "InputDataLocationS3" = true, "InvalidRecordCount" = true, "CreatedByIamUser" = true, "MLModelId" = true, "TotalRecordCount" = true, "LastUpdatedAt" = true, "BatchPredictionDataSourceId" = true, "OutputUri" = true, "StartedAt" = true, "BatchPredictionId" = true, "Message" = true, "CreatedAt" = true, "FinishedAt" = true, nil }

function M.AssertBatchPrediction(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchPrediction to be of type 'table'")
	if struct["Status"] then M.AssertEntityStatus(struct["Status"]) end
	if struct["ComputeTime"] then M.AssertLongType(struct["ComputeTime"]) end
	if struct["Name"] then M.AssertEntityName(struct["Name"]) end
	if struct["InputDataLocationS3"] then M.AssertS3Url(struct["InputDataLocationS3"]) end
	if struct["InvalidRecordCount"] then M.AssertLongType(struct["InvalidRecordCount"]) end
	if struct["CreatedByIamUser"] then M.AssertAwsUserArn(struct["CreatedByIamUser"]) end
	if struct["MLModelId"] then M.AssertEntityId(struct["MLModelId"]) end
	if struct["TotalRecordCount"] then M.AssertLongType(struct["TotalRecordCount"]) end
	if struct["LastUpdatedAt"] then M.AssertEpochTime(struct["LastUpdatedAt"]) end
	if struct["BatchPredictionDataSourceId"] then M.AssertEntityId(struct["BatchPredictionDataSourceId"]) end
	if struct["OutputUri"] then M.AssertS3Url(struct["OutputUri"]) end
	if struct["StartedAt"] then M.AssertEpochTime(struct["StartedAt"]) end
	if struct["BatchPredictionId"] then M.AssertEntityId(struct["BatchPredictionId"]) end
	if struct["Message"] then M.AssertMessage(struct["Message"]) end
	if struct["CreatedAt"] then M.AssertEpochTime(struct["CreatedAt"]) end
	if struct["FinishedAt"] then M.AssertEpochTime(struct["FinishedAt"]) end
	for k,_ in pairs(struct) do
		assert(BatchPrediction_keys[k], "BatchPrediction contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchPrediction
-- <p> Represents the output of a <code>GetBatchPrediction</code> operation.</p> <p> The content consists of the detailed metadata, the status, and the data file information of a <code>Batch Prediction</code>.</p>
-- @param Status [EntityStatus] <p>The status of the <code>BatchPrediction</code>. This element can have one of the following values:</p> <ul> <li> <code>PENDING</code> - Amazon Machine Learning (Amazon ML) submitted a request to generate predictions for a batch of observations.</li> <li> <code>INPROGRESS</code> - The process is underway.</li> <li> <code>FAILED</code> - The request to perform a batch prediction did not run to completion. It is not usable.</li> <li> <code>COMPLETED</code> - The batch prediction process completed successfully.</li> <li> <code>DELETED</code> - The <code>BatchPrediction</code> is marked as deleted. It is not usable.</li> </ul>
-- @param ComputeTime [LongType] <p> Represents the output of a <code>GetBatchPrediction</code> operation.</p> <p> The content consists of the detailed metadata, the status, and the data file information of a <code>Batch Prediction</code>.</p>
-- @param Name [EntityName] <p>A user-supplied name or description of the <code>BatchPrediction</code>.</p>
-- @param InputDataLocationS3 [S3Url] <p>The location of the data file or directory in Amazon Simple Storage Service (Amazon S3).</p>
-- @param InvalidRecordCount [LongType] <p> Represents the output of a <code>GetBatchPrediction</code> operation.</p> <p> The content consists of the detailed metadata, the status, and the data file information of a <code>Batch Prediction</code>.</p>
-- @param CreatedByIamUser [AwsUserArn] <p>The AWS user account that invoked the <code>BatchPrediction</code>. The account type can be either an AWS root account or an AWS Identity and Access Management (IAM) user account.</p>
-- @param MLModelId [EntityId] <p>The ID of the <code>MLModel</code> that generated predictions for the <code>BatchPrediction</code> request.</p>
-- @param TotalRecordCount [LongType] <p> Represents the output of a <code>GetBatchPrediction</code> operation.</p> <p> The content consists of the detailed metadata, the status, and the data file information of a <code>Batch Prediction</code>.</p>
-- @param LastUpdatedAt [EpochTime] <p>The time of the most recent edit to the <code>BatchPrediction</code>. The time is expressed in epoch time.</p>
-- @param BatchPredictionDataSourceId [EntityId] <p>The ID of the <code>DataSource</code> that points to the group of observations to predict.</p>
-- @param OutputUri [S3Url] <p>The location of an Amazon S3 bucket or directory to receive the operation results. The following substrings are not allowed in the <code>s3 key</code> portion of the <code>outputURI</code> field: ':', '//', '/./', '/../'.</p>
-- @param StartedAt [EpochTime] <p> Represents the output of a <code>GetBatchPrediction</code> operation.</p> <p> The content consists of the detailed metadata, the status, and the data file information of a <code>Batch Prediction</code>.</p>
-- @param BatchPredictionId [EntityId] <p>The ID assigned to the <code>BatchPrediction</code> at creation. This value should be identical to the value of the <code>BatchPredictionID</code> in the request. </p>
-- @param Message [Message] <p>A description of the most recent details about processing the batch prediction request.</p>
-- @param CreatedAt [EpochTime] <p>The time that the <code>BatchPrediction</code> was created. The time is expressed in epoch time.</p>
-- @param FinishedAt [EpochTime] <p> Represents the output of a <code>GetBatchPrediction</code> operation.</p> <p> The content consists of the detailed metadata, the status, and the data file information of a <code>Batch Prediction</code>.</p>
function M.BatchPrediction(Status, ComputeTime, Name, InputDataLocationS3, InvalidRecordCount, CreatedByIamUser, MLModelId, TotalRecordCount, LastUpdatedAt, BatchPredictionDataSourceId, OutputUri, StartedAt, BatchPredictionId, Message, CreatedAt, FinishedAt, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchPrediction")
	local t = { 
		["Status"] = Status,
		["ComputeTime"] = ComputeTime,
		["Name"] = Name,
		["InputDataLocationS3"] = InputDataLocationS3,
		["InvalidRecordCount"] = InvalidRecordCount,
		["CreatedByIamUser"] = CreatedByIamUser,
		["MLModelId"] = MLModelId,
		["TotalRecordCount"] = TotalRecordCount,
		["LastUpdatedAt"] = LastUpdatedAt,
		["BatchPredictionDataSourceId"] = BatchPredictionDataSourceId,
		["OutputUri"] = OutputUri,
		["StartedAt"] = StartedAt,
		["BatchPredictionId"] = BatchPredictionId,
		["Message"] = Message,
		["CreatedAt"] = CreatedAt,
		["FinishedAt"] = FinishedAt,
	}
	M.AssertBatchPrediction(t)
	return t
end

local CreateDataSourceFromRDSInput_keys = { "DataSourceName" = true, "RDSData" = true, "ComputeStatistics" = true, "DataSourceId" = true, "RoleARN" = true, nil }

function M.AssertCreateDataSourceFromRDSInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDataSourceFromRDSInput to be of type 'table'")
	assert(struct["DataSourceId"], "Expected key DataSourceId to exist in table")
	assert(struct["RDSData"], "Expected key RDSData to exist in table")
	assert(struct["RoleARN"], "Expected key RoleARN to exist in table")
	if struct["DataSourceName"] then M.AssertEntityName(struct["DataSourceName"]) end
	if struct["RDSData"] then M.AssertRDSDataSpec(struct["RDSData"]) end
	if struct["ComputeStatistics"] then M.AssertComputeStatistics(struct["ComputeStatistics"]) end
	if struct["DataSourceId"] then M.AssertEntityId(struct["DataSourceId"]) end
	if struct["RoleARN"] then M.AssertRoleARN(struct["RoleARN"]) end
	for k,_ in pairs(struct) do
		assert(CreateDataSourceFromRDSInput_keys[k], "CreateDataSourceFromRDSInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDataSourceFromRDSInput
--  
-- @param DataSourceName [EntityName] <p>A user-supplied name or description of the <code>DataSource</code>.</p>
-- @param RDSData [RDSDataSpec] <p>The data specification of an Amazon RDS <code>DataSource</code>:</p> <ul> <li><p>DatabaseInformation - <ul> <li> <code>DatabaseName</code> - The name of the Amazon RDS database.</li> <li> <code>InstanceIdentifier </code> - A unique identifier for the Amazon RDS database instance.</li> </ul> </p></li> <li><p>DatabaseCredentials - AWS Identity and Access Management (IAM) credentials that are used to connect to the Amazon RDS database.</p></li> <li><p>ResourceRole - A role (DataPipelineDefaultResourceRole) assumed by an EC2 instance to carry out the copy task from Amazon RDS to Amazon Simple Storage Service (Amazon S3). For more information, see <a href="http://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-iam-roles.html">Role templates</a> for data pipelines.</p></li> <li><p>ServiceRole - A role (DataPipelineDefaultRole) assumed by the AWS Data Pipeline service to monitor the progress of the copy task from Amazon RDS to Amazon S3. For more information, see <a href="http://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-iam-roles.html">Role templates</a> for data pipelines.</p></li> <li><p>SecurityInfo - The security information to use to access an RDS DB instance. You need to set up appropriate ingress rules for the security entity IDs provided to allow access to the Amazon RDS instance. Specify a [<code>SubnetId</code>, <code>SecurityGroupIds</code>] pair for a VPC-based RDS DB instance.</p></li> <li><p>SelectSqlQuery - A query that is used to retrieve the observation data for the <code>Datasource</code>.</p></li> <li><p>S3StagingLocation - The Amazon S3 location for staging Amazon RDS data. The data retrieved from Amazon RDS using <code>SelectSqlQuery</code> is stored in this location.</p></li> <li><p>DataSchemaUri - The Amazon S3 location of the <code>DataSchema</code>.</p></li> <li><p>DataSchema - A JSON string representing the schema. This is not required if <code>DataSchemaUri</code> is specified. </p></li> <li> <p>DataRearrangement - A JSON string that represents the splitting and rearrangement requirements for the <code>Datasource</code>. </p> <br> <p> Sample - <code> "{\"splitting\":{\"percentBegin\":10,\"percentEnd\":60}}"</code> </p> </li> </ul>
-- @param ComputeStatistics [ComputeStatistics] <p>The compute statistics for a <code>DataSource</code>. The statistics are generated from the observation data referenced by a <code>DataSource</code>. Amazon ML uses the statistics internally during <code>MLModel</code> training. This parameter must be set to <code>true</code> if the <code></code>DataSource<code></code> needs to be used for <code>MLModel</code> training. </p>
-- @param DataSourceId [EntityId] <p>A user-supplied ID that uniquely identifies the <code>DataSource</code>. Typically, an Amazon Resource Number (ARN) becomes the ID for a <code>DataSource</code>.</p>
-- @param RoleARN [RoleARN] <p>The role that Amazon ML assumes on behalf of the user to create and activate a data pipeline in the user's account and copy data using the <code>SelectSqlQuery</code> query from Amazon RDS to Amazon S3.</p> <p> </p>
-- Required parameter: DataSourceId
-- Required parameter: RDSData
-- Required parameter: RoleARN
function M.CreateDataSourceFromRDSInput(DataSourceName, RDSData, ComputeStatistics, DataSourceId, RoleARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDataSourceFromRDSInput")
	local t = { 
		["DataSourceName"] = DataSourceName,
		["RDSData"] = RDSData,
		["ComputeStatistics"] = ComputeStatistics,
		["DataSourceId"] = DataSourceId,
		["RoleARN"] = RoleARN,
	}
	M.AssertCreateDataSourceFromRDSInput(t)
	return t
end

local Evaluation_keys = { "EvaluationDataSourceId" = true, "Status" = true, "ComputeTime" = true, "Name" = true, "InputDataLocationS3" = true, "EvaluationId" = true, "CreatedByIamUser" = true, "MLModelId" = true, "LastUpdatedAt" = true, "StartedAt" = true, "Message" = true, "PerformanceMetrics" = true, "CreatedAt" = true, "FinishedAt" = true, nil }

function M.AssertEvaluation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Evaluation to be of type 'table'")
	if struct["EvaluationDataSourceId"] then M.AssertEntityId(struct["EvaluationDataSourceId"]) end
	if struct["Status"] then M.AssertEntityStatus(struct["Status"]) end
	if struct["ComputeTime"] then M.AssertLongType(struct["ComputeTime"]) end
	if struct["Name"] then M.AssertEntityName(struct["Name"]) end
	if struct["InputDataLocationS3"] then M.AssertS3Url(struct["InputDataLocationS3"]) end
	if struct["EvaluationId"] then M.AssertEntityId(struct["EvaluationId"]) end
	if struct["CreatedByIamUser"] then M.AssertAwsUserArn(struct["CreatedByIamUser"]) end
	if struct["MLModelId"] then M.AssertEntityId(struct["MLModelId"]) end
	if struct["LastUpdatedAt"] then M.AssertEpochTime(struct["LastUpdatedAt"]) end
	if struct["StartedAt"] then M.AssertEpochTime(struct["StartedAt"]) end
	if struct["Message"] then M.AssertMessage(struct["Message"]) end
	if struct["PerformanceMetrics"] then M.AssertPerformanceMetrics(struct["PerformanceMetrics"]) end
	if struct["CreatedAt"] then M.AssertEpochTime(struct["CreatedAt"]) end
	if struct["FinishedAt"] then M.AssertEpochTime(struct["FinishedAt"]) end
	for k,_ in pairs(struct) do
		assert(Evaluation_keys[k], "Evaluation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Evaluation
-- <p> Represents the output of <code>GetEvaluation</code> operation. </p> <p>The content consists of the detailed metadata and data file information and the current status of the <code>Evaluation</code>.</p>
-- @param EvaluationDataSourceId [EntityId] <p>The ID of the <code>DataSource</code> that is used to evaluate the <code>MLModel</code>.</p>
-- @param Status [EntityStatus] <p>The status of the evaluation. This element can have one of the following values:</p> <ul> <li> <code>PENDING</code> - Amazon Machine Learning (Amazon ML) submitted a request to evaluate an <code>MLModel</code>.</li> <li> <code>INPROGRESS</code> - The evaluation is underway.</li> <li> <code>FAILED</code> - The request to evaluate an <code>MLModel</code> did not run to completion. It is not usable.</li> <li> <code>COMPLETED</code> - The evaluation process completed successfully.</li> <li> <code>DELETED</code> - The <code>Evaluation</code> is marked as deleted. It is not usable.</li> </ul>
-- @param ComputeTime [LongType] <p> Represents the output of <code>GetEvaluation</code> operation. </p> <p>The content consists of the detailed metadata and data file information and the current status of the <code>Evaluation</code>.</p>
-- @param Name [EntityName] <p>A user-supplied name or description of the <code>Evaluation</code>. </p>
-- @param InputDataLocationS3 [S3Url] <p>The location and name of the data in Amazon Simple Storage Server (Amazon S3) that is used in the evaluation.</p>
-- @param EvaluationId [EntityId] <p>The ID that is assigned to the <code>Evaluation</code> at creation.</p>
-- @param CreatedByIamUser [AwsUserArn] <p>The AWS user account that invoked the evaluation. The account type can be either an AWS root account or an AWS Identity and Access Management (IAM) user account.</p>
-- @param MLModelId [EntityId] <p>The ID of the <code>MLModel</code> that is the focus of the evaluation.</p>
-- @param LastUpdatedAt [EpochTime] <p>The time of the most recent edit to the <code>Evaluation</code>. The time is expressed in epoch time.</p>
-- @param StartedAt [EpochTime] <p> Represents the output of <code>GetEvaluation</code> operation. </p> <p>The content consists of the detailed metadata and data file information and the current status of the <code>Evaluation</code>.</p>
-- @param Message [Message] <p>A description of the most recent details about evaluating the <code>MLModel</code>.</p>
-- @param PerformanceMetrics [PerformanceMetrics] <p>Measurements of how well the <code>MLModel</code> performed, using observations referenced by the <code>DataSource</code>. One of the following metrics is returned, based on the type of the <code>MLModel</code>: </p> <ul> <li> <p>BinaryAUC: A binary <code>MLModel</code> uses the Area Under the Curve (AUC) technique to measure performance. </p> </li> <li> <p>RegressionRMSE: A regression <code>MLModel</code> uses the Root Mean Square Error (RMSE) technique to measure performance. RMSE measures the difference between predicted and actual values for a single variable.</p> </li> <li> <p>MulticlassAvgFScore: A multiclass <code>MLModel</code> uses the F1 score technique to measure performance. </p> </li> </ul> <p> For more information about performance metrics, please see the <a href="http://docs.aws.amazon.com/machine-learning/latest/dg">Amazon Machine Learning Developer Guide</a>. </p>
-- @param CreatedAt [EpochTime] <p>The time that the <code>Evaluation</code> was created. The time is expressed in epoch time.</p>
-- @param FinishedAt [EpochTime] <p> Represents the output of <code>GetEvaluation</code> operation. </p> <p>The content consists of the detailed metadata and data file information and the current status of the <code>Evaluation</code>.</p>
function M.Evaluation(EvaluationDataSourceId, Status, ComputeTime, Name, InputDataLocationS3, EvaluationId, CreatedByIamUser, MLModelId, LastUpdatedAt, StartedAt, Message, PerformanceMetrics, CreatedAt, FinishedAt, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Evaluation")
	local t = { 
		["EvaluationDataSourceId"] = EvaluationDataSourceId,
		["Status"] = Status,
		["ComputeTime"] = ComputeTime,
		["Name"] = Name,
		["InputDataLocationS3"] = InputDataLocationS3,
		["EvaluationId"] = EvaluationId,
		["CreatedByIamUser"] = CreatedByIamUser,
		["MLModelId"] = MLModelId,
		["LastUpdatedAt"] = LastUpdatedAt,
		["StartedAt"] = StartedAt,
		["Message"] = Message,
		["PerformanceMetrics"] = PerformanceMetrics,
		["CreatedAt"] = CreatedAt,
		["FinishedAt"] = FinishedAt,
	}
	M.AssertEvaluation(t)
	return t
end

local UpdateEvaluationOutput_keys = { "EvaluationId" = true, nil }

function M.AssertUpdateEvaluationOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateEvaluationOutput to be of type 'table'")
	if struct["EvaluationId"] then M.AssertEntityId(struct["EvaluationId"]) end
	for k,_ in pairs(struct) do
		assert(UpdateEvaluationOutput_keys[k], "UpdateEvaluationOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateEvaluationOutput
-- <p>Represents the output of an <code>UpdateEvaluation</code> operation.</p> <p>You can see the updated content by using the <code>GetEvaluation</code> operation.</p>
-- @param EvaluationId [EntityId] <p>The ID assigned to the <code>Evaluation</code> during creation. This value should be identical to the value of the <code>Evaluation</code> in the request.</p>
function M.UpdateEvaluationOutput(EvaluationId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateEvaluationOutput")
	local t = { 
		["EvaluationId"] = EvaluationId,
	}
	M.AssertUpdateEvaluationOutput(t)
	return t
end

local UpdateMLModelInput_keys = { "MLModelId" = true, "ScoreThreshold" = true, "MLModelName" = true, nil }

function M.AssertUpdateMLModelInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateMLModelInput to be of type 'table'")
	assert(struct["MLModelId"], "Expected key MLModelId to exist in table")
	if struct["MLModelId"] then M.AssertEntityId(struct["MLModelId"]) end
	if struct["ScoreThreshold"] then M.AssertScoreThreshold(struct["ScoreThreshold"]) end
	if struct["MLModelName"] then M.AssertEntityName(struct["MLModelName"]) end
	for k,_ in pairs(struct) do
		assert(UpdateMLModelInput_keys[k], "UpdateMLModelInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateMLModelInput
--  
-- @param MLModelId [EntityId] <p>The ID assigned to the <code>MLModel</code> during creation.</p>
-- @param ScoreThreshold [ScoreThreshold] <p>The <code>ScoreThreshold</code> used in binary classification <code>MLModel</code> that marks the boundary between a positive prediction and a negative prediction.</p> <p>Output values greater than or equal to the <code>ScoreThreshold</code> receive a positive result from the <code>MLModel</code>, such as <code>true</code>. Output values less than the <code>ScoreThreshold</code> receive a negative response from the <code>MLModel</code>, such as <code>false</code>.</p>
-- @param MLModelName [EntityName] <p>A user-supplied name or description of the <code>MLModel</code>.</p>
-- Required parameter: MLModelId
function M.UpdateMLModelInput(MLModelId, ScoreThreshold, MLModelName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateMLModelInput")
	local t = { 
		["MLModelId"] = MLModelId,
		["ScoreThreshold"] = ScoreThreshold,
		["MLModelName"] = MLModelName,
	}
	M.AssertUpdateMLModelInput(t)
	return t
end

local DeleteDataSourceInput_keys = { "DataSourceId" = true, nil }

function M.AssertDeleteDataSourceInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDataSourceInput to be of type 'table'")
	assert(struct["DataSourceId"], "Expected key DataSourceId to exist in table")
	if struct["DataSourceId"] then M.AssertEntityId(struct["DataSourceId"]) end
	for k,_ in pairs(struct) do
		assert(DeleteDataSourceInput_keys[k], "DeleteDataSourceInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDataSourceInput
--  
-- @param DataSourceId [EntityId] <p>A user-supplied ID that uniquely identifies the <code>DataSource</code>.</p>
-- Required parameter: DataSourceId
function M.DeleteDataSourceInput(DataSourceId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteDataSourceInput")
	local t = { 
		["DataSourceId"] = DataSourceId,
	}
	M.AssertDeleteDataSourceInput(t)
	return t
end

local DeleteEvaluationInput_keys = { "EvaluationId" = true, nil }

function M.AssertDeleteEvaluationInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteEvaluationInput to be of type 'table'")
	assert(struct["EvaluationId"], "Expected key EvaluationId to exist in table")
	if struct["EvaluationId"] then M.AssertEntityId(struct["EvaluationId"]) end
	for k,_ in pairs(struct) do
		assert(DeleteEvaluationInput_keys[k], "DeleteEvaluationInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteEvaluationInput
--  
-- @param EvaluationId [EntityId] <p>A user-supplied ID that uniquely identifies the <code>Evaluation</code> to delete.</p>
-- Required parameter: EvaluationId
function M.DeleteEvaluationInput(EvaluationId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteEvaluationInput")
	local t = { 
		["EvaluationId"] = EvaluationId,
	}
	M.AssertDeleteEvaluationInput(t)
	return t
end

local GetDataSourceInput_keys = { "DataSourceId" = true, "Verbose" = true, nil }

function M.AssertGetDataSourceInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDataSourceInput to be of type 'table'")
	assert(struct["DataSourceId"], "Expected key DataSourceId to exist in table")
	if struct["DataSourceId"] then M.AssertEntityId(struct["DataSourceId"]) end
	if struct["Verbose"] then M.AssertVerbose(struct["Verbose"]) end
	for k,_ in pairs(struct) do
		assert(GetDataSourceInput_keys[k], "GetDataSourceInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDataSourceInput
--  
-- @param DataSourceId [EntityId] <p>The ID assigned to the <code>DataSource</code> at creation.</p>
-- @param Verbose [Verbose] <p>Specifies whether the <code>GetDataSource</code> operation should return <code>DataSourceSchema</code>.</p> <p>If true, <code>DataSourceSchema</code> is returned.</p> <p>If false, <code>DataSourceSchema</code> is not returned.</p>
-- Required parameter: DataSourceId
function M.GetDataSourceInput(DataSourceId, Verbose, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetDataSourceInput")
	local t = { 
		["DataSourceId"] = DataSourceId,
		["Verbose"] = Verbose,
	}
	M.AssertGetDataSourceInput(t)
	return t
end

local DeleteBatchPredictionOutput_keys = { "BatchPredictionId" = true, nil }

function M.AssertDeleteBatchPredictionOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteBatchPredictionOutput to be of type 'table'")
	if struct["BatchPredictionId"] then M.AssertEntityId(struct["BatchPredictionId"]) end
	for k,_ in pairs(struct) do
		assert(DeleteBatchPredictionOutput_keys[k], "DeleteBatchPredictionOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteBatchPredictionOutput
-- <p> Represents the output of a <code>DeleteBatchPrediction</code> operation.</p> <p>You can use the <code>GetBatchPrediction</code> operation and check the value of the <code>Status</code> parameter to see whether a <code>BatchPrediction</code> is marked as <code>DELETED</code>.</p>
-- @param BatchPredictionId [EntityId] <p>A user-supplied ID that uniquely identifies the <code>BatchPrediction</code>. This value should be identical to the value of the <code>BatchPredictionID</code> in the request.</p>
function M.DeleteBatchPredictionOutput(BatchPredictionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteBatchPredictionOutput")
	local t = { 
		["BatchPredictionId"] = BatchPredictionId,
	}
	M.AssertDeleteBatchPredictionOutput(t)
	return t
end

local DeleteDataSourceOutput_keys = { "DataSourceId" = true, nil }

function M.AssertDeleteDataSourceOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDataSourceOutput to be of type 'table'")
	if struct["DataSourceId"] then M.AssertEntityId(struct["DataSourceId"]) end
	for k,_ in pairs(struct) do
		assert(DeleteDataSourceOutput_keys[k], "DeleteDataSourceOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDataSourceOutput
-- <p> Represents the output of a <code>DeleteDataSource</code> operation.</p>
-- @param DataSourceId [EntityId] <p>A user-supplied ID that uniquely identifies the <code>DataSource</code>. This value should be identical to the value of the <code>DataSourceID</code> in the request.</p>
function M.DeleteDataSourceOutput(DataSourceId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteDataSourceOutput")
	local t = { 
		["DataSourceId"] = DataSourceId,
	}
	M.AssertDeleteDataSourceOutput(t)
	return t
end

local DeleteMLModelInput_keys = { "MLModelId" = true, nil }

function M.AssertDeleteMLModelInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteMLModelInput to be of type 'table'")
	assert(struct["MLModelId"], "Expected key MLModelId to exist in table")
	if struct["MLModelId"] then M.AssertEntityId(struct["MLModelId"]) end
	for k,_ in pairs(struct) do
		assert(DeleteMLModelInput_keys[k], "DeleteMLModelInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteMLModelInput
--  
-- @param MLModelId [EntityId] <p>A user-supplied ID that uniquely identifies the <code>MLModel</code>.</p>
-- Required parameter: MLModelId
function M.DeleteMLModelInput(MLModelId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteMLModelInput")
	local t = { 
		["MLModelId"] = MLModelId,
	}
	M.AssertDeleteMLModelInput(t)
	return t
end

local ResourceNotFoundException_keys = { "message" = true, "code" = true, nil }

function M.AssertResourceNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceNotFoundException to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	if struct["code"] then M.AssertErrorCode(struct["code"]) end
	for k,_ in pairs(struct) do
		assert(ResourceNotFoundException_keys[k], "ResourceNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceNotFoundException
-- <p>A specified resource cannot be located.</p>
-- @param message [ErrorMessage] <p>A specified resource cannot be located.</p>
-- @param code [ErrorCode] <p>A specified resource cannot be located.</p>
function M.ResourceNotFoundException(message, code, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceNotFoundException")
	local t = { 
		["message"] = message,
		["code"] = code,
	}
	M.AssertResourceNotFoundException(t)
	return t
end

local CreateMLModelInput_keys = { "Parameters" = true, "MLModelType" = true, "Recipe" = true, "MLModelId" = true, "MLModelName" = true, "RecipeUri" = true, "TrainingDataSourceId" = true, nil }

function M.AssertCreateMLModelInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateMLModelInput to be of type 'table'")
	assert(struct["MLModelId"], "Expected key MLModelId to exist in table")
	assert(struct["MLModelType"], "Expected key MLModelType to exist in table")
	assert(struct["TrainingDataSourceId"], "Expected key TrainingDataSourceId to exist in table")
	if struct["Parameters"] then M.AssertTrainingParameters(struct["Parameters"]) end
	if struct["MLModelType"] then M.AssertMLModelType(struct["MLModelType"]) end
	if struct["Recipe"] then M.AssertRecipe(struct["Recipe"]) end
	if struct["MLModelId"] then M.AssertEntityId(struct["MLModelId"]) end
	if struct["MLModelName"] then M.AssertEntityName(struct["MLModelName"]) end
	if struct["RecipeUri"] then M.AssertS3Url(struct["RecipeUri"]) end
	if struct["TrainingDataSourceId"] then M.AssertEntityId(struct["TrainingDataSourceId"]) end
	for k,_ in pairs(struct) do
		assert(CreateMLModelInput_keys[k], "CreateMLModelInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateMLModelInput
--  
-- @param Parameters [TrainingParameters] <p>A list of the training parameters in the <code>MLModel</code>. The list is implemented as a map of key-value pairs.</p> <p>The following is the current set of training parameters: </p> <ul> <li> <p><code>sgd.maxMLModelSizeInBytes</code> - The maximum allowed size of the model. Depending on the input data, the size of the model might affect its performance.</p> <p> The value is an integer that ranges from <code>100000</code> to <code>2147483648</code>. The default value is <code>33554432</code>.</p> </li> <li><p><code>sgd.maxPasses</code> - The number of times that the training process traverses the observations to build the <code>MLModel</code>. The value is an integer that ranges from <code>1</code> to <code>10000</code>. The default value is <code>10</code>.</p></li> <li> <p><code>sgd.shuffleType</code> - Whether Amazon ML shuffles the training data. Shuffling the data improves a model's ability to find the optimal solution for a variety of data types. The valid values are <code>auto</code> and <code>none</code>. The default value is <code>none</code>. We <?oxy_insert_start author="laurama" timestamp="20160329T131121-0700">strongly recommend that you shuffle your data.<?oxy_insert_end></p> </li> <li> <p><code>sgd.l1RegularizationAmount</code> - The coefficient regularization L1 norm. It controls overfitting the data by penalizing large coefficients. This tends to drive coefficients to zero, resulting in a sparse feature set. If you use this parameter, start by specifying a small value, such as <code>1.0E-08</code>.</p> <p>The value is a double that ranges from <code>0</code> to <code>MAX_DOUBLE</code>. The default is to not use L1 normalization. This parameter can't be used when <code>L2</code> is specified. Use this parameter sparingly.</p> </li> <li> <p><code>sgd.l2RegularizationAmount</code> - The coefficient regularization L2 norm. It controls overfitting the data by penalizing large coefficients. This tends to drive coefficients to small, nonzero values. If you use this parameter, start by specifying a small value, such as <code>1.0E-08</code>.</p> <p>The value is a double that ranges from <code>0</code> to <code>MAX_DOUBLE</code>. The default is to not use L2 normalization. This parameter can't be used when <code>L1</code> is specified. Use this parameter sparingly.</p> </li> </ul>
-- @param MLModelType [MLModelType] <p>The category of supervised learning that this <code>MLModel</code> will address. Choose from the following types:</p> <ul> <li>Choose <code>REGRESSION</code> if the <code>MLModel</code> will be used to predict a numeric value.</li> <li>Choose <code>BINARY</code> if the <code>MLModel</code> result has two possible values.</li> <li>Choose <code>MULTICLASS</code> if the <code>MLModel</code> result has a limited number of values. </li> </ul> <p> For more information, see the <a href="http://docs.aws.amazon.com/machine-learning/latest/dg">Amazon Machine Learning Developer Guide</a>.</p>
-- @param Recipe [Recipe] <p>The data recipe for creating the <code>MLModel</code>. You must specify either the recipe or its URI. If you don't specify a recipe or its URI, Amazon ML creates a default.</p>
-- @param MLModelId [EntityId] <p>A user-supplied ID that uniquely identifies the <code>MLModel</code>.</p>
-- @param MLModelName [EntityName] <p>A user-supplied name or description of the <code>MLModel</code>.</p>
-- @param RecipeUri [S3Url] <p>The Amazon Simple Storage Service (Amazon S3) location and file name that contains the <code>MLModel</code> recipe. You must specify either the recipe or its URI. If you don't specify a recipe or its URI, Amazon ML creates a default.</p>
-- @param TrainingDataSourceId [EntityId] <p>The <code>DataSource</code> that points to the training data.</p>
-- Required parameter: MLModelId
-- Required parameter: MLModelType
-- Required parameter: TrainingDataSourceId
function M.CreateMLModelInput(Parameters, MLModelType, Recipe, MLModelId, MLModelName, RecipeUri, TrainingDataSourceId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateMLModelInput")
	local t = { 
		["Parameters"] = Parameters,
		["MLModelType"] = MLModelType,
		["Recipe"] = Recipe,
		["MLModelId"] = MLModelId,
		["MLModelName"] = MLModelName,
		["RecipeUri"] = RecipeUri,
		["TrainingDataSourceId"] = TrainingDataSourceId,
	}
	M.AssertCreateMLModelInput(t)
	return t
end

local CreateEvaluationOutput_keys = { "EvaluationId" = true, nil }

function M.AssertCreateEvaluationOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateEvaluationOutput to be of type 'table'")
	if struct["EvaluationId"] then M.AssertEntityId(struct["EvaluationId"]) end
	for k,_ in pairs(struct) do
		assert(CreateEvaluationOutput_keys[k], "CreateEvaluationOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateEvaluationOutput
-- <p> Represents the output of a <code>CreateEvaluation</code> operation, and is an acknowledgement that Amazon ML received the request.</p> <p><code>CreateEvaluation</code> operation is asynchronous. You can poll for status updates by using the <code>GetEvcaluation</code> operation and checking the <code>Status</code> parameter. </p>
-- @param EvaluationId [EntityId] <p>The user-supplied ID that uniquely identifies the <code>Evaluation</code>. This value should be identical to the value of the <code>EvaluationId</code> in the request.</p>
function M.CreateEvaluationOutput(EvaluationId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateEvaluationOutput")
	local t = { 
		["EvaluationId"] = EvaluationId,
	}
	M.AssertCreateEvaluationOutput(t)
	return t
end

local GetEvaluationInput_keys = { "EvaluationId" = true, nil }

function M.AssertGetEvaluationInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetEvaluationInput to be of type 'table'")
	assert(struct["EvaluationId"], "Expected key EvaluationId to exist in table")
	if struct["EvaluationId"] then M.AssertEntityId(struct["EvaluationId"]) end
	for k,_ in pairs(struct) do
		assert(GetEvaluationInput_keys[k], "GetEvaluationInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetEvaluationInput
--  
-- @param EvaluationId [EntityId] <p>The ID of the <code>Evaluation</code> to retrieve. The evaluation of each <code>MLModel</code> is recorded and cataloged. The ID provides the means to access the information. </p>
-- Required parameter: EvaluationId
function M.GetEvaluationInput(EvaluationId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetEvaluationInput")
	local t = { 
		["EvaluationId"] = EvaluationId,
	}
	M.AssertGetEvaluationInput(t)
	return t
end

local AddTagsInput_keys = { "ResourceType" = true, "ResourceId" = true, "Tags" = true, nil }

function M.AssertAddTagsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddTagsInput to be of type 'table'")
	assert(struct["Tags"], "Expected key Tags to exist in table")
	assert(struct["ResourceId"], "Expected key ResourceId to exist in table")
	assert(struct["ResourceType"], "Expected key ResourceType to exist in table")
	if struct["ResourceType"] then M.AssertTaggableResourceType(struct["ResourceType"]) end
	if struct["ResourceId"] then M.AssertEntityId(struct["ResourceId"]) end
	if struct["Tags"] then M.AssertTagList(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(AddTagsInput_keys[k], "AddTagsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddTagsInput
--  
-- @param ResourceType [TaggableResourceType] <p>The type of the ML object to tag. </p>
-- @param ResourceId [EntityId] <p>The ID of the ML object to tag. For example, <code>exampleModelId</code>.</p>
-- @param Tags [TagList] <p>The key-value pairs to use to create tags. If you specify a key without specifying a value, Amazon ML creates a tag with the specified key and a value of null.</p>
-- Required parameter: Tags
-- Required parameter: ResourceId
-- Required parameter: ResourceType
function M.AddTagsInput(ResourceType, ResourceId, Tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddTagsInput")
	local t = { 
		["ResourceType"] = ResourceType,
		["ResourceId"] = ResourceId,
		["Tags"] = Tags,
	}
	M.AssertAddTagsInput(t)
	return t
end

local CreateDataSourceFromRDSOutput_keys = { "DataSourceId" = true, nil }

function M.AssertCreateDataSourceFromRDSOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDataSourceFromRDSOutput to be of type 'table'")
	if struct["DataSourceId"] then M.AssertEntityId(struct["DataSourceId"]) end
	for k,_ in pairs(struct) do
		assert(CreateDataSourceFromRDSOutput_keys[k], "CreateDataSourceFromRDSOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDataSourceFromRDSOutput
-- <p> Represents the output of a <code>CreateDataSourceFromRDS</code> operation, and is an acknowledgement that Amazon ML received the request.</p> <p>The <code>CreateDataSourceFromRDS</code>&gt; operation is asynchronous. You can poll for updates by using the <code>GetBatchPrediction</code> operation and checking the <code>Status</code> parameter. You can inspect the <code>Message</code> when <code>Status</code> shows up as <code>FAILED</code>. You can also check the progress of the copy operation by going to the <code>DataPipeline</code> console and looking up the pipeline using the <code>pipelineId </code> from the describe call.</p>
-- @param DataSourceId [EntityId] <p>A user-supplied ID that uniquely identifies the datasource. This value should be identical to the value of the <code>DataSourceID</code> in the request. </p>
function M.CreateDataSourceFromRDSOutput(DataSourceId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDataSourceFromRDSOutput")
	local t = { 
		["DataSourceId"] = DataSourceId,
	}
	M.AssertCreateDataSourceFromRDSOutput(t)
	return t
end

local CreateRealtimeEndpointOutput_keys = { "MLModelId" = true, "RealtimeEndpointInfo" = true, nil }

function M.AssertCreateRealtimeEndpointOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateRealtimeEndpointOutput to be of type 'table'")
	if struct["MLModelId"] then M.AssertEntityId(struct["MLModelId"]) end
	if struct["RealtimeEndpointInfo"] then M.AssertRealtimeEndpointInfo(struct["RealtimeEndpointInfo"]) end
	for k,_ in pairs(struct) do
		assert(CreateRealtimeEndpointOutput_keys[k], "CreateRealtimeEndpointOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateRealtimeEndpointOutput
-- <p>Represents the output of an <code>CreateRealtimeEndpoint</code> operation.</p> <p>The result contains the <code>MLModelId</code> and the endpoint information for the <code>MLModel</code>.</p> <note> <p>The endpoint information includes the URI of the <code>MLModel</code>; that is, the location to send online prediction requests for the specified <code>MLModel</code>.</p> </note>
-- @param MLModelId [EntityId] <p>A user-supplied ID that uniquely identifies the <code>MLModel</code>. This value should be identical to the value of the <code>MLModelId</code> in the request.</p>
-- @param RealtimeEndpointInfo [RealtimeEndpointInfo] <p>The endpoint information of the <code>MLModel</code> </p>
function M.CreateRealtimeEndpointOutput(MLModelId, RealtimeEndpointInfo, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateRealtimeEndpointOutput")
	local t = { 
		["MLModelId"] = MLModelId,
		["RealtimeEndpointInfo"] = RealtimeEndpointInfo,
	}
	M.AssertCreateRealtimeEndpointOutput(t)
	return t
end

local RDSDatabase_keys = { "InstanceIdentifier" = true, "DatabaseName" = true, nil }

function M.AssertRDSDatabase(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RDSDatabase to be of type 'table'")
	assert(struct["InstanceIdentifier"], "Expected key InstanceIdentifier to exist in table")
	assert(struct["DatabaseName"], "Expected key DatabaseName to exist in table")
	if struct["InstanceIdentifier"] then M.AssertRDSInstanceIdentifier(struct["InstanceIdentifier"]) end
	if struct["DatabaseName"] then M.AssertRDSDatabaseName(struct["DatabaseName"]) end
	for k,_ in pairs(struct) do
		assert(RDSDatabase_keys[k], "RDSDatabase contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RDSDatabase
-- <p>The database details of an Amazon RDS database.</p>
-- @param InstanceIdentifier [RDSInstanceIdentifier] <p>The ID of an RDS DB instance.</p>
-- @param DatabaseName [RDSDatabaseName] <p>The database details of an Amazon RDS database.</p>
-- Required parameter: InstanceIdentifier
-- Required parameter: DatabaseName
function M.RDSDatabase(InstanceIdentifier, DatabaseName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RDSDatabase")
	local t = { 
		["InstanceIdentifier"] = InstanceIdentifier,
		["DatabaseName"] = DatabaseName,
	}
	M.AssertRDSDatabase(t)
	return t
end

local DescribeMLModelsInput_keys = { "GT" = true, "FilterVariable" = true, "GE" = true, "NE" = true, "LT" = true, "LE" = true, "Limit" = true, "SortOrder" = true, "NextToken" = true, "EQ" = true, "Prefix" = true, nil }

function M.AssertDescribeMLModelsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeMLModelsInput to be of type 'table'")
	if struct["GT"] then M.AssertComparatorValue(struct["GT"]) end
	if struct["FilterVariable"] then M.AssertMLModelFilterVariable(struct["FilterVariable"]) end
	if struct["GE"] then M.AssertComparatorValue(struct["GE"]) end
	if struct["NE"] then M.AssertComparatorValue(struct["NE"]) end
	if struct["LT"] then M.AssertComparatorValue(struct["LT"]) end
	if struct["LE"] then M.AssertComparatorValue(struct["LE"]) end
	if struct["Limit"] then M.AssertPageLimit(struct["Limit"]) end
	if struct["SortOrder"] then M.AssertSortOrder(struct["SortOrder"]) end
	if struct["NextToken"] then M.AssertStringType(struct["NextToken"]) end
	if struct["EQ"] then M.AssertComparatorValue(struct["EQ"]) end
	if struct["Prefix"] then M.AssertComparatorValue(struct["Prefix"]) end
	for k,_ in pairs(struct) do
		assert(DescribeMLModelsInput_keys[k], "DescribeMLModelsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeMLModelsInput
--  
-- @param GT [ComparatorValue] <p>The greater than operator. The <code>MLModel</code> results will have <code>FilterVariable</code> values that are greater than the value specified with <code>GT</code>.</p>
-- @param FilterVariable [MLModelFilterVariable] <p>Use one of the following variables to filter a list of <code>MLModel</code>:</p> <ul> <li> <code>CreatedAt</code> - Sets the search criteria to <code>MLModel</code> creation date.</li> <li> <code>Status</code> - Sets the search criteria to <code>MLModel</code> status.</li> <li> <code>Name</code> - Sets the search criteria to the contents of <code>MLModel</code><b> </b> <code>Name</code>.</li> <li> <code>IAMUser</code> - Sets the search criteria to the user account that invoked the <code>MLModel</code> creation.</li> <li> <code>TrainingDataSourceId</code> - Sets the search criteria to the <code>DataSource</code> used to train one or more <code>MLModel</code>.</li> <li> <code>RealtimeEndpointStatus</code> - Sets the search criteria to the <code>MLModel</code> real-time endpoint status.</li> <li> <code>MLModelType</code> - Sets the search criteria to <code>MLModel</code> type: binary, regression, or multi-class.</li> <li> <code>Algorithm</code> - Sets the search criteria to the algorithm that the <code>MLModel</code> uses.</li> <li> <code>TrainingDataURI</code> - Sets the search criteria to the data file(s) used in training a <code>MLModel</code>. The URL can identify either a file or an Amazon Simple Storage Service (Amazon S3) bucket or directory.</li> </ul>
-- @param GE [ComparatorValue] <p>The greater than or equal to operator. The <code>MLModel</code> results will have <code>FilterVariable</code> values that are greater than or equal to the value specified with <code>GE</code>. </p>
-- @param NE [ComparatorValue] <p>The not equal to operator. The <code>MLModel</code> results will have <code>FilterVariable</code> values not equal to the value specified with <code>NE</code>.</p>
-- @param LT [ComparatorValue] <p>The less than operator. The <code>MLModel</code> results will have <code>FilterVariable</code> values that are less than the value specified with <code>LT</code>.</p>
-- @param LE [ComparatorValue] <p>The less than or equal to operator. The <code>MLModel</code> results will have <code>FilterVariable</code> values that are less than or equal to the value specified with <code>LE</code>.</p>
-- @param Limit [PageLimit] <p>The number of pages of information to include in the result. The range of acceptable values is <code>1</code> through <code>100</code>. The default value is <code>100</code>.</p>
-- @param SortOrder [SortOrder] <p>A two-value parameter that determines the sequence of the resulting list of <code>MLModel</code>.</p> <ul> <li> <code>asc</code> - Arranges the list in ascending order (A-Z, 0-9).</li> <li> <code>dsc</code> - Arranges the list in descending order (Z-A, 9-0).</li> </ul> <p>Results are sorted by <code>FilterVariable</code>.</p>
-- @param NextToken [StringType] <p>The ID of the page in the paginated results.</p>
-- @param EQ [ComparatorValue] <p>The equal to operator. The <code>MLModel</code> results will have <code>FilterVariable</code> values that exactly match the value specified with <code>EQ</code>.</p>
-- @param Prefix [ComparatorValue] <p>A string that is found at the beginning of a variable, such as <code>Name</code> or <code>Id</code>.</p> <p>For example, an <code>MLModel</code> could have the <code>Name</code> <code>2014-09-09-HolidayGiftMailer</code>. To search for this <code>MLModel</code>, select <code>Name</code> for the <code>FilterVariable</code> and any of the following strings for the <code>Prefix</code>: </p> <ul> <li><p>2014-09</p></li> <li><p>2014-09-09</p></li> <li><p>2014-09-09-Holiday</p></li> </ul>
function M.DescribeMLModelsInput(GT, FilterVariable, GE, NE, LT, LE, Limit, SortOrder, NextToken, EQ, Prefix, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeMLModelsInput")
	local t = { 
		["GT"] = GT,
		["FilterVariable"] = FilterVariable,
		["GE"] = GE,
		["NE"] = NE,
		["LT"] = LT,
		["LE"] = LE,
		["Limit"] = Limit,
		["SortOrder"] = SortOrder,
		["NextToken"] = NextToken,
		["EQ"] = EQ,
		["Prefix"] = Prefix,
	}
	M.AssertDescribeMLModelsInput(t)
	return t
end

local PredictInput_keys = { "MLModelId" = true, "Record" = true, "PredictEndpoint" = true, nil }

function M.AssertPredictInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PredictInput to be of type 'table'")
	assert(struct["MLModelId"], "Expected key MLModelId to exist in table")
	assert(struct["Record"], "Expected key Record to exist in table")
	assert(struct["PredictEndpoint"], "Expected key PredictEndpoint to exist in table")
	if struct["MLModelId"] then M.AssertEntityId(struct["MLModelId"]) end
	if struct["Record"] then M.AssertRecord(struct["Record"]) end
	if struct["PredictEndpoint"] then M.AssertVipURL(struct["PredictEndpoint"]) end
	for k,_ in pairs(struct) do
		assert(PredictInput_keys[k], "PredictInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PredictInput
--  
-- @param MLModelId [EntityId] <p>A unique identifier of the <code>MLModel</code>.</p>
-- @param Record [Record]  
-- @param PredictEndpoint [VipURL]  
-- Required parameter: MLModelId
-- Required parameter: Record
-- Required parameter: PredictEndpoint
function M.PredictInput(MLModelId, Record, PredictEndpoint, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PredictInput")
	local t = { 
		["MLModelId"] = MLModelId,
		["Record"] = Record,
		["PredictEndpoint"] = PredictEndpoint,
	}
	M.AssertPredictInput(t)
	return t
end

local UpdateDataSourceInput_keys = { "DataSourceName" = true, "DataSourceId" = true, nil }

function M.AssertUpdateDataSourceInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateDataSourceInput to be of type 'table'")
	assert(struct["DataSourceId"], "Expected key DataSourceId to exist in table")
	assert(struct["DataSourceName"], "Expected key DataSourceName to exist in table")
	if struct["DataSourceName"] then M.AssertEntityName(struct["DataSourceName"]) end
	if struct["DataSourceId"] then M.AssertEntityId(struct["DataSourceId"]) end
	for k,_ in pairs(struct) do
		assert(UpdateDataSourceInput_keys[k], "UpdateDataSourceInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateDataSourceInput
--  
-- @param DataSourceName [EntityName] <p>A new user-supplied name or description of the <code>DataSource</code> that will replace the current description. </p>
-- @param DataSourceId [EntityId] <p>The ID assigned to the <code>DataSource</code> during creation.</p>
-- Required parameter: DataSourceId
-- Required parameter: DataSourceName
function M.UpdateDataSourceInput(DataSourceName, DataSourceId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateDataSourceInput")
	local t = { 
		["DataSourceName"] = DataSourceName,
		["DataSourceId"] = DataSourceId,
	}
	M.AssertUpdateDataSourceInput(t)
	return t
end

local GetEvaluationOutput_keys = { "EvaluationDataSourceId" = true, "Status" = true, "ComputeTime" = true, "Name" = true, "InputDataLocationS3" = true, "EvaluationId" = true, "CreatedByIamUser" = true, "MLModelId" = true, "Message" = true, "LastUpdatedAt" = true, "StartedAt" = true, "LogUri" = true, "PerformanceMetrics" = true, "CreatedAt" = true, "FinishedAt" = true, nil }

function M.AssertGetEvaluationOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetEvaluationOutput to be of type 'table'")
	if struct["EvaluationDataSourceId"] then M.AssertEntityId(struct["EvaluationDataSourceId"]) end
	if struct["Status"] then M.AssertEntityStatus(struct["Status"]) end
	if struct["ComputeTime"] then M.AssertLongType(struct["ComputeTime"]) end
	if struct["Name"] then M.AssertEntityName(struct["Name"]) end
	if struct["InputDataLocationS3"] then M.AssertS3Url(struct["InputDataLocationS3"]) end
	if struct["EvaluationId"] then M.AssertEntityId(struct["EvaluationId"]) end
	if struct["CreatedByIamUser"] then M.AssertAwsUserArn(struct["CreatedByIamUser"]) end
	if struct["MLModelId"] then M.AssertEntityId(struct["MLModelId"]) end
	if struct["Message"] then M.AssertMessage(struct["Message"]) end
	if struct["LastUpdatedAt"] then M.AssertEpochTime(struct["LastUpdatedAt"]) end
	if struct["StartedAt"] then M.AssertEpochTime(struct["StartedAt"]) end
	if struct["LogUri"] then M.AssertPresignedS3Url(struct["LogUri"]) end
	if struct["PerformanceMetrics"] then M.AssertPerformanceMetrics(struct["PerformanceMetrics"]) end
	if struct["CreatedAt"] then M.AssertEpochTime(struct["CreatedAt"]) end
	if struct["FinishedAt"] then M.AssertEpochTime(struct["FinishedAt"]) end
	for k,_ in pairs(struct) do
		assert(GetEvaluationOutput_keys[k], "GetEvaluationOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetEvaluationOutput
-- <p>Represents the output of a <code>GetEvaluation</code> operation and describes an <code>Evaluation</code>.</p>
-- @param EvaluationDataSourceId [EntityId] <p>The <code>DataSource</code> used for this evaluation.</p>
-- @param Status [EntityStatus] <p>The status of the evaluation. This element can have one of the following values:</p> <ul> <li> <code>PENDING</code> - Amazon Machine Language (Amazon ML) submitted a request to evaluate an <code>MLModel</code>.</li> <li> <code>INPROGRESS</code> - The evaluation is underway.</li> <li> <code>FAILED</code> - The request to evaluate an <code>MLModel</code> did not run to completion. It is not usable.</li> <li> <code>COMPLETED</code> - The evaluation process completed successfully.</li> <li> <code>DELETED</code> - The <code>Evaluation</code> is marked as deleted. It is not usable.</li> </ul>
-- @param ComputeTime [LongType] <p>The approximate CPU time in milliseconds that Amazon Machine Learning spent processing the <code>Evaluation</code>, normalized and scaled on computation resources. <code>ComputeTime</code> is only available if the <code>Evaluation</code> is in the <code>COMPLETED</code> state.</p>
-- @param Name [EntityName] <p>A user-supplied name or description of the <code>Evaluation</code>. </p>
-- @param InputDataLocationS3 [S3Url] <p>The location of the data file or directory in Amazon Simple Storage Service (Amazon S3).</p>
-- @param EvaluationId [EntityId] <p>The evaluation ID which is same as the <code>EvaluationId</code> in the request.</p>
-- @param CreatedByIamUser [AwsUserArn] <p>The AWS user account that invoked the evaluation. The account type can be either an AWS root account or an AWS Identity and Access Management (IAM) user account.</p>
-- @param MLModelId [EntityId] <p>The ID of the <code>MLModel</code> that was the focus of the evaluation.</p>
-- @param Message [Message] <p>A description of the most recent details about evaluating the <code>MLModel</code>.</p>
-- @param LastUpdatedAt [EpochTime] <p>The time of the most recent edit to the <code>Evaluation</code>. The time is expressed in epoch time.</p>
-- @param StartedAt [EpochTime] <p>The epoch time when Amazon Machine Learning marked the <code>Evaluation</code> as <code>INPROGRESS</code>. <code>StartedAt</code> isn't available if the <code>Evaluation</code> is in the <code>PENDING</code> state.</p>
-- @param LogUri [PresignedS3Url] <p>A link to the file that contains logs of the <code>CreateEvaluation</code> operation.</p>
-- @param PerformanceMetrics [PerformanceMetrics] <p>Measurements of how well the <code>MLModel</code> performed using observations referenced by the <code>DataSource</code>. One of the following metric is returned based on the type of the <code>MLModel</code>: </p> <ul> <li> <p>BinaryAUC: A binary <code>MLModel</code> uses the Area Under the Curve (AUC) technique to measure performance. </p> </li> <li> <p>RegressionRMSE: A regression <code>MLModel</code> uses the Root Mean Square Error (RMSE) technique to measure performance. RMSE measures the difference between predicted and actual values for a single variable.</p> </li> <li> <p>MulticlassAvgFScore: A multiclass <code>MLModel</code> uses the F1 score technique to measure performance. </p> </li> </ul> <p> For more information about performance metrics, please see the <a href="http://docs.aws.amazon.com/machine-learning/latest/dg">Amazon Machine Learning Developer Guide</a>. </p>
-- @param CreatedAt [EpochTime] <p>The time that the <code>Evaluation</code> was created. The time is expressed in epoch time.</p>
-- @param FinishedAt [EpochTime] <p>The epoch time when Amazon Machine Learning marked the <code>Evaluation</code> as <code>COMPLETED</code> or <code>FAILED</code>. <code>FinishedAt</code> is only available when the <code>Evaluation</code> is in the <code>COMPLETED</code> or <code>FAILED</code> state.</p>
function M.GetEvaluationOutput(EvaluationDataSourceId, Status, ComputeTime, Name, InputDataLocationS3, EvaluationId, CreatedByIamUser, MLModelId, Message, LastUpdatedAt, StartedAt, LogUri, PerformanceMetrics, CreatedAt, FinishedAt, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetEvaluationOutput")
	local t = { 
		["EvaluationDataSourceId"] = EvaluationDataSourceId,
		["Status"] = Status,
		["ComputeTime"] = ComputeTime,
		["Name"] = Name,
		["InputDataLocationS3"] = InputDataLocationS3,
		["EvaluationId"] = EvaluationId,
		["CreatedByIamUser"] = CreatedByIamUser,
		["MLModelId"] = MLModelId,
		["Message"] = Message,
		["LastUpdatedAt"] = LastUpdatedAt,
		["StartedAt"] = StartedAt,
		["LogUri"] = LogUri,
		["PerformanceMetrics"] = PerformanceMetrics,
		["CreatedAt"] = CreatedAt,
		["FinishedAt"] = FinishedAt,
	}
	M.AssertGetEvaluationOutput(t)
	return t
end

local RDSMetadata_keys = { "ServiceRole" = true, "DataPipelineId" = true, "ResourceRole" = true, "DatabaseUserName" = true, "Database" = true, "SelectSqlQuery" = true, nil }

function M.AssertRDSMetadata(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RDSMetadata to be of type 'table'")
	if struct["ServiceRole"] then M.AssertEDPServiceRole(struct["ServiceRole"]) end
	if struct["DataPipelineId"] then M.AssertEDPPipelineId(struct["DataPipelineId"]) end
	if struct["ResourceRole"] then M.AssertEDPResourceRole(struct["ResourceRole"]) end
	if struct["DatabaseUserName"] then M.AssertRDSDatabaseUsername(struct["DatabaseUserName"]) end
	if struct["Database"] then M.AssertRDSDatabase(struct["Database"]) end
	if struct["SelectSqlQuery"] then M.AssertRDSSelectSqlQuery(struct["SelectSqlQuery"]) end
	for k,_ in pairs(struct) do
		assert(RDSMetadata_keys[k], "RDSMetadata contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RDSMetadata
-- <p>The datasource details that are specific to Amazon RDS.</p>
-- @param ServiceRole [EDPServiceRole] <p>The role (DataPipelineDefaultRole) assumed by the Data Pipeline service to monitor the progress of the copy task from Amazon RDS to Amazon S3. For more information, see <a href="http://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-iam-roles.html">Role templates</a> for data pipelines.</p>
-- @param DataPipelineId [EDPPipelineId] <p>The ID of the Data Pipeline instance that is used to carry to copy data from Amazon RDS to Amazon S3. You can use the ID to find details about the instance in the Data Pipeline console.</p>
-- @param ResourceRole [EDPResourceRole] <p>The role (DataPipelineDefaultResourceRole) assumed by an Amazon EC2 instance to carry out the copy task from Amazon RDS to Amazon S3. For more information, see <a href="http://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-iam-roles.html">Role templates</a> for data pipelines.</p>
-- @param DatabaseUserName [RDSDatabaseUsername] <p>The datasource details that are specific to Amazon RDS.</p>
-- @param Database [RDSDatabase] <p>The database details required to connect to an Amazon RDS.</p>
-- @param SelectSqlQuery [RDSSelectSqlQuery] <p>The SQL query that is supplied during <a>CreateDataSourceFromRDS</a>. Returns only if <code>Verbose</code> is true in <code>GetDataSourceInput</code>. </p>
function M.RDSMetadata(ServiceRole, DataPipelineId, ResourceRole, DatabaseUserName, Database, SelectSqlQuery, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RDSMetadata")
	local t = { 
		["ServiceRole"] = ServiceRole,
		["DataPipelineId"] = DataPipelineId,
		["ResourceRole"] = ResourceRole,
		["DatabaseUserName"] = DatabaseUserName,
		["Database"] = Database,
		["SelectSqlQuery"] = SelectSqlQuery,
	}
	M.AssertRDSMetadata(t)
	return t
end

local DescribeTagsOutput_keys = { "ResourceType" = true, "ResourceId" = true, "Tags" = true, nil }

function M.AssertDescribeTagsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTagsOutput to be of type 'table'")
	if struct["ResourceType"] then M.AssertTaggableResourceType(struct["ResourceType"]) end
	if struct["ResourceId"] then M.AssertEntityId(struct["ResourceId"]) end
	if struct["Tags"] then M.AssertTagList(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(DescribeTagsOutput_keys[k], "DescribeTagsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTagsOutput
-- <p>Amazon ML returns the following elements. </p>
-- @param ResourceType [TaggableResourceType] <p>The type of the tagged ML object.</p>
-- @param ResourceId [EntityId] <p>The ID of the tagged ML object.</p>
-- @param Tags [TagList] <p>A list of tags associated with the ML object.</p>
function M.DescribeTagsOutput(ResourceType, ResourceId, Tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeTagsOutput")
	local t = { 
		["ResourceType"] = ResourceType,
		["ResourceId"] = ResourceId,
		["Tags"] = Tags,
	}
	M.AssertDescribeTagsOutput(t)
	return t
end

local RDSDatabaseCredentials_keys = { "Username" = true, "Password" = true, nil }

function M.AssertRDSDatabaseCredentials(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RDSDatabaseCredentials to be of type 'table'")
	assert(struct["Username"], "Expected key Username to exist in table")
	assert(struct["Password"], "Expected key Password to exist in table")
	if struct["Username"] then M.AssertRDSDatabaseUsername(struct["Username"]) end
	if struct["Password"] then M.AssertRDSDatabasePassword(struct["Password"]) end
	for k,_ in pairs(struct) do
		assert(RDSDatabaseCredentials_keys[k], "RDSDatabaseCredentials contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RDSDatabaseCredentials
-- <p>The database credentials to connect to a database on an RDS DB instance.</p>
-- @param Username [RDSDatabaseUsername] <p>The database credentials to connect to a database on an RDS DB instance.</p>
-- @param Password [RDSDatabasePassword] <p>The database credentials to connect to a database on an RDS DB instance.</p>
-- Required parameter: Username
-- Required parameter: Password
function M.RDSDatabaseCredentials(Username, Password, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RDSDatabaseCredentials")
	local t = { 
		["Username"] = Username,
		["Password"] = Password,
	}
	M.AssertRDSDatabaseCredentials(t)
	return t
end

local CreateDataSourceFromS3Output_keys = { "DataSourceId" = true, nil }

function M.AssertCreateDataSourceFromS3Output(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDataSourceFromS3Output to be of type 'table'")
	if struct["DataSourceId"] then M.AssertEntityId(struct["DataSourceId"]) end
	for k,_ in pairs(struct) do
		assert(CreateDataSourceFromS3Output_keys[k], "CreateDataSourceFromS3Output contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDataSourceFromS3Output
-- <p> Represents the output of a <code>CreateDataSourceFromS3</code> operation, and is an acknowledgement that Amazon ML received the request.</p> <p>The <code>CreateDataSourceFromS3</code> operation is asynchronous. You can poll for updates by using the <code>GetBatchPrediction</code> operation and checking the <code>Status</code> parameter. </p>
-- @param DataSourceId [EntityId] <p>A user-supplied ID that uniquely identifies the <code>DataSource</code>. This value should be identical to the value of the <code>DataSourceID</code> in the request. </p>
function M.CreateDataSourceFromS3Output(DataSourceId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDataSourceFromS3Output")
	local t = { 
		["DataSourceId"] = DataSourceId,
	}
	M.AssertCreateDataSourceFromS3Output(t)
	return t
end

local GetBatchPredictionOutput_keys = { "Status" = true, "ComputeTime" = true, "Name" = true, "InputDataLocationS3" = true, "InvalidRecordCount" = true, "CreatedByIamUser" = true, "MLModelId" = true, "TotalRecordCount" = true, "LastUpdatedAt" = true, "BatchPredictionDataSourceId" = true, "OutputUri" = true, "StartedAt" = true, "BatchPredictionId" = true, "LogUri" = true, "Message" = true, "CreatedAt" = true, "FinishedAt" = true, nil }

function M.AssertGetBatchPredictionOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBatchPredictionOutput to be of type 'table'")
	if struct["Status"] then M.AssertEntityStatus(struct["Status"]) end
	if struct["ComputeTime"] then M.AssertLongType(struct["ComputeTime"]) end
	if struct["Name"] then M.AssertEntityName(struct["Name"]) end
	if struct["InputDataLocationS3"] then M.AssertS3Url(struct["InputDataLocationS3"]) end
	if struct["InvalidRecordCount"] then M.AssertLongType(struct["InvalidRecordCount"]) end
	if struct["CreatedByIamUser"] then M.AssertAwsUserArn(struct["CreatedByIamUser"]) end
	if struct["MLModelId"] then M.AssertEntityId(struct["MLModelId"]) end
	if struct["TotalRecordCount"] then M.AssertLongType(struct["TotalRecordCount"]) end
	if struct["LastUpdatedAt"] then M.AssertEpochTime(struct["LastUpdatedAt"]) end
	if struct["BatchPredictionDataSourceId"] then M.AssertEntityId(struct["BatchPredictionDataSourceId"]) end
	if struct["OutputUri"] then M.AssertS3Url(struct["OutputUri"]) end
	if struct["StartedAt"] then M.AssertEpochTime(struct["StartedAt"]) end
	if struct["BatchPredictionId"] then M.AssertEntityId(struct["BatchPredictionId"]) end
	if struct["LogUri"] then M.AssertPresignedS3Url(struct["LogUri"]) end
	if struct["Message"] then M.AssertMessage(struct["Message"]) end
	if struct["CreatedAt"] then M.AssertEpochTime(struct["CreatedAt"]) end
	if struct["FinishedAt"] then M.AssertEpochTime(struct["FinishedAt"]) end
	for k,_ in pairs(struct) do
		assert(GetBatchPredictionOutput_keys[k], "GetBatchPredictionOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBatchPredictionOutput
-- <p>Represents the output of a <code>GetBatchPrediction</code> operation and describes a <code>BatchPrediction</code>.</p>
-- @param Status [EntityStatus] <p>The status of the <code>BatchPrediction</code>, which can be one of the following values:</p> <ul> <li> <code>PENDING</code> - Amazon Machine Learning (Amazon ML) submitted a request to generate batch predictions.</li> <li> <code>INPROGRESS</code> - The batch predictions are in progress.</li> <li> <code>FAILED</code> - The request to perform a batch prediction did not run to completion. It is not usable.</li> <li> <code>COMPLETED</code> - The batch prediction process completed successfully.</li> <li> <code>DELETED</code> - The <code>BatchPrediction</code> is marked as deleted. It is not usable.</li> </ul>
-- @param ComputeTime [LongType] <p>The approximate CPU time in milliseconds that Amazon Machine Learning spent processing the <code>BatchPrediction</code>, normalized and scaled on computation resources. <code>ComputeTime</code> is only available if the <code>BatchPrediction</code> is in the <code>COMPLETED</code> state.</p>
-- @param Name [EntityName] <p>A user-supplied name or description of the <code>BatchPrediction</code>.</p>
-- @param InputDataLocationS3 [S3Url] <p>The location of the data file or directory in Amazon Simple Storage Service (Amazon S3).</p>
-- @param InvalidRecordCount [LongType] <p>The number of invalid records that Amazon Machine Learning saw while processing the <code>BatchPrediction</code>.</p>
-- @param CreatedByIamUser [AwsUserArn] <p>The AWS user account that invoked the <code>BatchPrediction</code>. The account type can be either an AWS root account or an AWS Identity and Access Management (IAM) user account.</p>
-- @param MLModelId [EntityId] <p>The ID of the <code>MLModel</code> that generated predictions for the <code>BatchPrediction</code> request.</p>
-- @param TotalRecordCount [LongType] <p>The number of total records that Amazon Machine Learning saw while processing the <code>BatchPrediction</code>.</p>
-- @param LastUpdatedAt [EpochTime] <p>The time of the most recent edit to <code>BatchPrediction</code>. The time is expressed in epoch time.</p>
-- @param BatchPredictionDataSourceId [EntityId] <p>The ID of the <code>DataSource</code> that was used to create the <code>BatchPrediction</code>. </p>
-- @param OutputUri [S3Url] <p>The location of an Amazon S3 bucket or directory to receive the operation results.</p>
-- @param StartedAt [EpochTime] <p>The epoch time when Amazon Machine Learning marked the <code>BatchPrediction</code> as <code>INPROGRESS</code>. <code>StartedAt</code> isn't available if the <code>BatchPrediction</code> is in the <code>PENDING</code> state.</p>
-- @param BatchPredictionId [EntityId] <p>An ID assigned to the <code>BatchPrediction</code> at creation. This value should be identical to the value of the <code>BatchPredictionID</code> in the request.</p>
-- @param LogUri [PresignedS3Url] <p>A link to the file that contains logs of the <code>CreateBatchPrediction</code> operation.</p>
-- @param Message [Message] <p>A description of the most recent details about processing the batch prediction request.</p>
-- @param CreatedAt [EpochTime] <p>The time when the <code>BatchPrediction</code> was created. The time is expressed in epoch time.</p>
-- @param FinishedAt [EpochTime] <p>The epoch time when Amazon Machine Learning marked the <code>BatchPrediction</code> as <code>COMPLETED</code> or <code>FAILED</code>. <code>FinishedAt</code> is only available when the <code>BatchPrediction</code> is in the <code>COMPLETED</code> or <code>FAILED</code> state.</p>
function M.GetBatchPredictionOutput(Status, ComputeTime, Name, InputDataLocationS3, InvalidRecordCount, CreatedByIamUser, MLModelId, TotalRecordCount, LastUpdatedAt, BatchPredictionDataSourceId, OutputUri, StartedAt, BatchPredictionId, LogUri, Message, CreatedAt, FinishedAt, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetBatchPredictionOutput")
	local t = { 
		["Status"] = Status,
		["ComputeTime"] = ComputeTime,
		["Name"] = Name,
		["InputDataLocationS3"] = InputDataLocationS3,
		["InvalidRecordCount"] = InvalidRecordCount,
		["CreatedByIamUser"] = CreatedByIamUser,
		["MLModelId"] = MLModelId,
		["TotalRecordCount"] = TotalRecordCount,
		["LastUpdatedAt"] = LastUpdatedAt,
		["BatchPredictionDataSourceId"] = BatchPredictionDataSourceId,
		["OutputUri"] = OutputUri,
		["StartedAt"] = StartedAt,
		["BatchPredictionId"] = BatchPredictionId,
		["LogUri"] = LogUri,
		["Message"] = Message,
		["CreatedAt"] = CreatedAt,
		["FinishedAt"] = FinishedAt,
	}
	M.AssertGetBatchPredictionOutput(t)
	return t
end

local Tag_keys = { "Value" = true, "Key" = true, nil }

function M.AssertTag(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Tag to be of type 'table'")
	if struct["Value"] then M.AssertTagValue(struct["Value"]) end
	if struct["Key"] then M.AssertTagKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(Tag_keys[k], "Tag contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Tag
-- <p>A custom key-value pair associated with an ML object, such as an ML model.</p>
-- @param Value [TagValue] <p>An optional string, typically used to describe or define the tag. Valid characters include Unicode letters, digits, white space, _, ., /, =, +, -, %, and @.</p>
-- @param Key [TagKey] <p>A unique identifier for the tag. Valid characters include Unicode letters, digits, white space, _, ., /, =, +, -, %, and @.</p>
function M.Tag(Value, Key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Tag")
	local t = { 
		["Value"] = Value,
		["Key"] = Key,
	}
	M.AssertTag(t)
	return t
end

local PredictOutput_keys = { "Prediction" = true, nil }

function M.AssertPredictOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PredictOutput to be of type 'table'")
	if struct["Prediction"] then M.AssertPrediction(struct["Prediction"]) end
	for k,_ in pairs(struct) do
		assert(PredictOutput_keys[k], "PredictOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PredictOutput
--  
-- @param Prediction [Prediction]  
function M.PredictOutput(Prediction, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PredictOutput")
	local t = { 
		["Prediction"] = Prediction,
	}
	M.AssertPredictOutput(t)
	return t
end

local DescribeDataSourcesInput_keys = { "GT" = true, "FilterVariable" = true, "GE" = true, "NE" = true, "LT" = true, "LE" = true, "Limit" = true, "SortOrder" = true, "NextToken" = true, "EQ" = true, "Prefix" = true, nil }

function M.AssertDescribeDataSourcesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDataSourcesInput to be of type 'table'")
	if struct["GT"] then M.AssertComparatorValue(struct["GT"]) end
	if struct["FilterVariable"] then M.AssertDataSourceFilterVariable(struct["FilterVariable"]) end
	if struct["GE"] then M.AssertComparatorValue(struct["GE"]) end
	if struct["NE"] then M.AssertComparatorValue(struct["NE"]) end
	if struct["LT"] then M.AssertComparatorValue(struct["LT"]) end
	if struct["LE"] then M.AssertComparatorValue(struct["LE"]) end
	if struct["Limit"] then M.AssertPageLimit(struct["Limit"]) end
	if struct["SortOrder"] then M.AssertSortOrder(struct["SortOrder"]) end
	if struct["NextToken"] then M.AssertStringType(struct["NextToken"]) end
	if struct["EQ"] then M.AssertComparatorValue(struct["EQ"]) end
	if struct["Prefix"] then M.AssertComparatorValue(struct["Prefix"]) end
	for k,_ in pairs(struct) do
		assert(DescribeDataSourcesInput_keys[k], "DescribeDataSourcesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDataSourcesInput
--  
-- @param GT [ComparatorValue] <p>The greater than operator. The <code>DataSource</code> results will have <code>FilterVariable</code> values that are greater than the value specified with <code>GT</code>.</p>
-- @param FilterVariable [DataSourceFilterVariable] <p>Use one of the following variables to filter a list of <code>DataSource</code>:</p> <ul> <li> <code>CreatedAt</code> - Sets the search criteria to <code>DataSource</code> creation dates.</li> <li> <code>Status</code> - Sets the search criteria to <code>DataSource</code> statuses.</li> <li> <code>Name</code> - Sets the search criteria to the contents of <code>DataSource</code> <b> </b> <code>Name</code>.</li> <li> <code>DataUri</code> - Sets the search criteria to the URI of data files used to create the <code>DataSource</code>. The URI can identify either a file or an Amazon Simple Storage Service (Amazon S3) bucket or directory.</li> <li> <code>IAMUser</code> - Sets the search criteria to the user account that invoked the <code>DataSource</code> creation.</li> </ul>
-- @param GE [ComparatorValue] <p>The greater than or equal to operator. The <code>DataSource</code> results will have <code>FilterVariable</code> values that are greater than or equal to the value specified with <code>GE</code>. </p>
-- @param NE [ComparatorValue] <p>The not equal to operator. The <code>DataSource</code> results will have <code>FilterVariable</code> values not equal to the value specified with <code>NE</code>.</p>
-- @param LT [ComparatorValue] <p>The less than operator. The <code>DataSource</code> results will have <code>FilterVariable</code> values that are less than the value specified with <code>LT</code>.</p>
-- @param LE [ComparatorValue] <p>The less than or equal to operator. The <code>DataSource</code> results will have <code>FilterVariable</code> values that are less than or equal to the value specified with <code>LE</code>.</p>
-- @param Limit [PageLimit] <p> The maximum number of <code>DataSource</code> to include in the result.</p>
-- @param SortOrder [SortOrder] <p>A two-value parameter that determines the sequence of the resulting list of <code>DataSource</code>.</p> <ul> <li> <code>asc</code> - Arranges the list in ascending order (A-Z, 0-9).</li> <li> <code>dsc</code> - Arranges the list in descending order (Z-A, 9-0).</li> </ul> <p>Results are sorted by <code>FilterVariable</code>.</p>
-- @param NextToken [StringType] <p>The ID of the page in the paginated results.</p>
-- @param EQ [ComparatorValue] <p>The equal to operator. The <code>DataSource</code> results will have <code>FilterVariable</code> values that exactly match the value specified with <code>EQ</code>.</p>
-- @param Prefix [ComparatorValue] <p>A string that is found at the beginning of a variable, such as <code>Name</code> or <code>Id</code>.</p> <p>For example, a <code>DataSource</code> could have the <code>Name</code> <code>2014-09-09-HolidayGiftMailer</code>. To search for this <code>DataSource</code>, select <code>Name</code> for the <code>FilterVariable</code> and any of the following strings for the <code>Prefix</code>: </p> <ul> <li><p>2014-09</p></li> <li><p>2014-09-09</p></li> <li><p>2014-09-09-Holiday</p></li> </ul>
function M.DescribeDataSourcesInput(GT, FilterVariable, GE, NE, LT, LE, Limit, SortOrder, NextToken, EQ, Prefix, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeDataSourcesInput")
	local t = { 
		["GT"] = GT,
		["FilterVariable"] = FilterVariable,
		["GE"] = GE,
		["NE"] = NE,
		["LT"] = LT,
		["LE"] = LE,
		["Limit"] = Limit,
		["SortOrder"] = SortOrder,
		["NextToken"] = NextToken,
		["EQ"] = EQ,
		["Prefix"] = Prefix,
	}
	M.AssertDescribeDataSourcesInput(t)
	return t
end

local Prediction_keys = { "predictedLabel" = true, "predictedValue" = true, "predictedScores" = true, "details" = true, nil }

function M.AssertPrediction(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Prediction to be of type 'table'")
	if struct["predictedLabel"] then M.AssertLabel(struct["predictedLabel"]) end
	if struct["predictedValue"] then M.AssertfloatLabel(struct["predictedValue"]) end
	if struct["predictedScores"] then M.AssertScoreValuePerLabelMap(struct["predictedScores"]) end
	if struct["details"] then M.AssertDetailsMap(struct["details"]) end
	for k,_ in pairs(struct) do
		assert(Prediction_keys[k], "Prediction contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Prediction
-- <p>The output from a <code>Predict</code> operation: </p> <ul> <li> <p> <code>Details</code> - Contains the following attributes: <code>DetailsAttributes.PREDICTIVE_MODEL_TYPE - REGRESSION | BINARY | MULTICLASS</code> <code>DetailsAttributes.ALGORITHM - SGD</code> </p> </li> <li> <p> <code>PredictedLabel</code> - Present for either a <code>BINARY</code> or <code>MULTICLASS</code> <code>MLModel</code> request. </p> </li> <li> <p> <code>PredictedScores</code> - Contains the raw classification score corresponding to each label. </p> </li> <li> <p> <code>PredictedValue</code> - Present for a <code>REGRESSION</code> <code>MLModel</code> request. </p> </li> </ul>
-- @param predictedLabel [Label] <p>The prediction label for either a <code>BINARY</code> or <code>MULTICLASS</code> <code>MLModel</code>.</p>
-- @param predictedValue [floatLabel] The prediction value for <code>REGRESSION</code> <code>MLModel</code>.
-- @param predictedScores [ScoreValuePerLabelMap] <p>The output from a <code>Predict</code> operation: </p> <ul> <li> <p> <code>Details</code> - Contains the following attributes: <code>DetailsAttributes.PREDICTIVE_MODEL_TYPE - REGRESSION | BINARY | MULTICLASS</code> <code>DetailsAttributes.ALGORITHM - SGD</code> </p> </li> <li> <p> <code>PredictedLabel</code> - Present for either a <code>BINARY</code> or <code>MULTICLASS</code> <code>MLModel</code> request. </p> </li> <li> <p> <code>PredictedScores</code> - Contains the raw classification score corresponding to each label. </p> </li> <li> <p> <code>PredictedValue</code> - Present for a <code>REGRESSION</code> <code>MLModel</code> request. </p> </li> </ul>
-- @param details [DetailsMap] <p>The output from a <code>Predict</code> operation: </p> <ul> <li> <p> <code>Details</code> - Contains the following attributes: <code>DetailsAttributes.PREDICTIVE_MODEL_TYPE - REGRESSION | BINARY | MULTICLASS</code> <code>DetailsAttributes.ALGORITHM - SGD</code> </p> </li> <li> <p> <code>PredictedLabel</code> - Present for either a <code>BINARY</code> or <code>MULTICLASS</code> <code>MLModel</code> request. </p> </li> <li> <p> <code>PredictedScores</code> - Contains the raw classification score corresponding to each label. </p> </li> <li> <p> <code>PredictedValue</code> - Present for a <code>REGRESSION</code> <code>MLModel</code> request. </p> </li> </ul>
function M.Prediction(predictedLabel, predictedValue, predictedScores, details, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Prediction")
	local t = { 
		["predictedLabel"] = predictedLabel,
		["predictedValue"] = predictedValue,
		["predictedScores"] = predictedScores,
		["details"] = details,
	}
	M.AssertPrediction(t)
	return t
end

local PredictorNotMountedException_keys = { "message" = true, nil }

function M.AssertPredictorNotMountedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PredictorNotMountedException to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(PredictorNotMountedException_keys[k], "PredictorNotMountedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PredictorNotMountedException
-- <p>The exception is thrown when a predict request is made to an unmounted <code>MLModel</code>.</p>
-- @param message [ErrorMessage] <p>The exception is thrown when a predict request is made to an unmounted <code>MLModel</code>.</p>
function M.PredictorNotMountedException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PredictorNotMountedException")
	local t = { 
		["message"] = message,
	}
	M.AssertPredictorNotMountedException(t)
	return t
end

local CreateDataSourceFromRedshiftInput_keys = { "DataSourceName" = true, "RoleARN" = true, "ComputeStatistics" = true, "DataSourceId" = true, "DataSpec" = true, nil }

function M.AssertCreateDataSourceFromRedshiftInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDataSourceFromRedshiftInput to be of type 'table'")
	assert(struct["DataSourceId"], "Expected key DataSourceId to exist in table")
	assert(struct["DataSpec"], "Expected key DataSpec to exist in table")
	assert(struct["RoleARN"], "Expected key RoleARN to exist in table")
	if struct["DataSourceName"] then M.AssertEntityName(struct["DataSourceName"]) end
	if struct["RoleARN"] then M.AssertRoleARN(struct["RoleARN"]) end
	if struct["ComputeStatistics"] then M.AssertComputeStatistics(struct["ComputeStatistics"]) end
	if struct["DataSourceId"] then M.AssertEntityId(struct["DataSourceId"]) end
	if struct["DataSpec"] then M.AssertRedshiftDataSpec(struct["DataSpec"]) end
	for k,_ in pairs(struct) do
		assert(CreateDataSourceFromRedshiftInput_keys[k], "CreateDataSourceFromRedshiftInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDataSourceFromRedshiftInput
--  
-- @param DataSourceName [EntityName] <p>A user-supplied name or description of the <code>DataSource</code>. </p>
-- @param RoleARN [RoleARN] <p>A fully specified role Amazon Resource Name (ARN). Amazon ML assumes the role on behalf of the user to create the following: </p> <p> <ul> <li><p>A security group to allow Amazon ML to execute the <code>SelectSqlQuery</code> query on an Amazon Redshift cluster</p></li> <li><p>An Amazon S3 bucket policy to grant Amazon ML read/write permissions on the <code>S3StagingLocation</code></p></li> </ul> </p>
-- @param ComputeStatistics [ComputeStatistics] <p>The compute statistics for a <code>DataSource</code>. The statistics are generated from the observation data referenced by a <code>DataSource</code>. Amazon ML uses the statistics internally during <code>MLModel</code> training. This parameter must be set to <code>true</code> if the <code>DataSource</code> needs to be used for <code>MLModel</code> training.</p>
-- @param DataSourceId [EntityId] <p>A user-supplied ID that uniquely identifies the <code>DataSource</code>.</p>
-- @param DataSpec [RedshiftDataSpec] <p>The data specification of an Amazon Redshift <code>DataSource</code>:</p> <ul> <li><p>DatabaseInformation - <ul> <li> <code>DatabaseName</code> - The name of the Amazon Redshift database. </li> <li> <code> ClusterIdentifier</code> - The unique ID for the Amazon Redshift cluster.</li> </ul></p></li> <li><p>DatabaseCredentials - The AWS Identity and Access Management (IAM) credentials that are used to connect to the Amazon Redshift database.</p></li> <li><p>SelectSqlQuery - The query that is used to retrieve the observation data for the <code>Datasource</code>.</p></li> <li><p>S3StagingLocation - The Amazon Simple Storage Service (Amazon S3) location for staging Amazon Redshift data. The data retrieved from Amazon Redshift using the <code>SelectSqlQuery</code> query is stored in this location.</p></li> <li><p>DataSchemaUri - The Amazon S3 location of the <code>DataSchema</code>.</p></li> <li><p>DataSchema - A JSON string representing the schema. This is not required if <code>DataSchemaUri</code> is specified. </p></li> <li> <p>DataRearrangement - A JSON string that represents the splitting and rearrangement requirements for the <code>DataSource</code>.</p> <p> Sample - <code> "{\"splitting\":{\"percentBegin\":10,\"percentEnd\":60}}"</code> </p> </li> </ul>
-- Required parameter: DataSourceId
-- Required parameter: DataSpec
-- Required parameter: RoleARN
function M.CreateDataSourceFromRedshiftInput(DataSourceName, RoleARN, ComputeStatistics, DataSourceId, DataSpec, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDataSourceFromRedshiftInput")
	local t = { 
		["DataSourceName"] = DataSourceName,
		["RoleARN"] = RoleARN,
		["ComputeStatistics"] = ComputeStatistics,
		["DataSourceId"] = DataSourceId,
		["DataSpec"] = DataSpec,
	}
	M.AssertCreateDataSourceFromRedshiftInput(t)
	return t
end

local TagLimitExceededException_keys = { "message" = true, nil }

function M.AssertTagLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TagLimitExceededException to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(TagLimitExceededException_keys[k], "TagLimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TagLimitExceededException
--  
-- @param message [ErrorMessage]  
function M.TagLimitExceededException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TagLimitExceededException")
	local t = { 
		["message"] = message,
	}
	M.AssertTagLimitExceededException(t)
	return t
end

local DeleteTagsOutput_keys = { "ResourceType" = true, "ResourceId" = true, nil }

function M.AssertDeleteTagsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteTagsOutput to be of type 'table'")
	if struct["ResourceType"] then M.AssertTaggableResourceType(struct["ResourceType"]) end
	if struct["ResourceId"] then M.AssertEntityId(struct["ResourceId"]) end
	for k,_ in pairs(struct) do
		assert(DeleteTagsOutput_keys[k], "DeleteTagsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteTagsOutput
-- <p>Amazon ML returns the following elements. </p>
-- @param ResourceType [TaggableResourceType] <p>The type of the ML object from which tags were deleted.</p>
-- @param ResourceId [EntityId] <p>The ID of the ML object from which tags were deleted.</p>
function M.DeleteTagsOutput(ResourceType, ResourceId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteTagsOutput")
	local t = { 
		["ResourceType"] = ResourceType,
		["ResourceId"] = ResourceId,
	}
	M.AssertDeleteTagsOutput(t)
	return t
end

function M.AssertTagKey(str)
	assert(str)
	assert(type(str) == "string", "Expected TagKey to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("^([%p{L}%p{Z}%p{N}_.:/=+%-@]*)$"), "Expected string to match pattern '^([%p{L}%p{Z}%p{N}_.:/=+%-@]*)$'")
end

--  
function M.TagKey(str)
	M.AssertTagKey(str)
	return str
end

function M.AssertMLModelType(str)
	assert(str)
	assert(type(str) == "string", "Expected MLModelType to be of type 'string'")
end

--  
function M.MLModelType(str)
	M.AssertMLModelType(str)
	return str
end

function M.AssertRDSDatabaseUsername(str)
	assert(str)
	assert(type(str) == "string", "Expected RDSDatabaseUsername to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

-- <p>The username to be used by Amazon ML to connect to database on an Amazon RDS instance. The username should have sufficient permissions to execute an <code>RDSSelectSqlQuery</code> query.</p>
function M.RDSDatabaseUsername(str)
	M.AssertRDSDatabaseUsername(str)
	return str
end

function M.AssertDetailsAttributes(str)
	assert(str)
	assert(type(str) == "string", "Expected DetailsAttributes to be of type 'string'")
end

-- Contains the key values of <code>DetailsMap</code>: <code>PredictiveModelType</code> - Indicates the type of the <code>MLModel</code>. <code>Algorithm</code> - Indicates the algorithm that was used for the <code>MLModel</code>.
function M.DetailsAttributes(str)
	M.AssertDetailsAttributes(str)
	return str
end

function M.AssertRDSDatabaseName(str)
	assert(str)
	assert(type(str) == "string", "Expected RDSDatabaseName to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

-- <p>The name of a database hosted on an RDS DB instance.</p>
function M.RDSDatabaseName(str)
	M.AssertRDSDatabaseName(str)
	return str
end

function M.AssertRedshiftDatabasePassword(str)
	assert(str)
	assert(type(str) == "string", "Expected RedshiftDatabasePassword to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 8, "Expected string to be min 8 characters")
end

-- <p>A password to be used by Amazon ML to connect to a database on an Amazon Redshift cluster. The password should have sufficient permissions to execute a <code>RedshiftSelectSqlQuery</code> query. The password should be valid for an Amazon Redshift <a href="http://docs.aws.amazon.com/redshift/latest/dg/r_CREATE_USER.html">USER</a>.</p>
function M.RedshiftDatabasePassword(str)
	M.AssertRedshiftDatabasePassword(str)
	return str
end

function M.AssertRecipe(str)
	assert(str)
	assert(type(str) == "string", "Expected Recipe to be of type 'string'")
	assert(#str <= 131071, "Expected string to be max 131071 characters")
end

--  
function M.Recipe(str)
	M.AssertRecipe(str)
	return str
end

function M.AssertEDPSubnetId(str)
	assert(str)
	assert(type(str) == "string", "Expected EDPSubnetId to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.EDPSubnetId(str)
	M.AssertEDPSubnetId(str)
	return str
end

function M.AssertEntityId(str)
	assert(str)
	assert(type(str) == "string", "Expected EntityId to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[a-zA-Z0-9_.-]+"), "Expected string to match pattern '[a-zA-Z0-9_.-]+'")
end

--  
function M.EntityId(str)
	M.AssertEntityId(str)
	return str
end

function M.AssertEDPServiceRole(str)
	assert(str)
	assert(type(str) == "string", "Expected EDPServiceRole to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.EDPServiceRole(str)
	M.AssertEDPServiceRole(str)
	return str
end

function M.AssertLabel(str)
	assert(str)
	assert(type(str) == "string", "Expected Label to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.Label(str)
	M.AssertLabel(str)
	return str
end

function M.AssertRedshiftSelectSqlQuery(str)
	assert(str)
	assert(type(str) == "string", "Expected RedshiftSelectSqlQuery to be of type 'string'")
	assert(#str <= 16777216, "Expected string to be max 16777216 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

-- <p> Describes the SQL query to execute on the Amazon Redshift database. The SQL query should be valid for an Amazon Redshift <a href="http://docs.aws.amazon.com/redshift/latest/dg/r_SELECT_synopsis.html">SELECT</a>. </p>
function M.RedshiftSelectSqlQuery(str)
	M.AssertRedshiftSelectSqlQuery(str)
	return str
end

function M.AssertPerformanceMetricsPropertyKey(str)
	assert(str)
	assert(type(str) == "string", "Expected PerformanceMetricsPropertyKey to be of type 'string'")
end

--  
function M.PerformanceMetricsPropertyKey(str)
	M.AssertPerformanceMetricsPropertyKey(str)
	return str
end

function M.AssertRedshiftClusterIdentifier(str)
	assert(str)
	assert(type(str) == "string", "Expected RedshiftClusterIdentifier to be of type 'string'")
	assert(#str <= 63, "Expected string to be max 63 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[a-z0-9-]+"), "Expected string to match pattern '[a-z0-9-]+'")
end

-- <p>The ID of an Amazon Redshift cluster.</p>
function M.RedshiftClusterIdentifier(str)
	M.AssertRedshiftClusterIdentifier(str)
	return str
end

function M.AssertRDSSelectSqlQuery(str)
	assert(str)
	assert(type(str) == "string", "Expected RDSSelectSqlQuery to be of type 'string'")
	assert(#str <= 16777216, "Expected string to be max 16777216 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

-- <p>The SQL query to be executed against the Amazon RDS database. The SQL query should be valid for the Amazon RDS type being used. </p>
function M.RDSSelectSqlQuery(str)
	M.AssertRDSSelectSqlQuery(str)
	return str
end

function M.AssertTaggableResourceType(str)
	assert(str)
	assert(type(str) == "string", "Expected TaggableResourceType to be of type 'string'")
end

--  
function M.TaggableResourceType(str)
	M.AssertTaggableResourceType(str)
	return str
end

function M.AssertAlgorithm(str)
	assert(str)
	assert(type(str) == "string", "Expected Algorithm to be of type 'string'")
end

-- <p>The function used to train an <code>MLModel</code>. Training choices supported by Amazon ML include the following:</p> <ul> <li> <code>SGD</code> - Stochastic Gradient Descent.</li> <li> <code>RandomForest</code> - Random forest of decision trees.</li> </ul>
function M.Algorithm(str)
	M.AssertAlgorithm(str)
	return str
end

function M.AssertMLModelName(str)
	assert(str)
	assert(type(str) == "string", "Expected MLModelName to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
end

--  
function M.MLModelName(str)
	M.AssertMLModelName(str)
	return str
end

function M.AssertTagValue(str)
	assert(str)
	assert(type(str) == "string", "Expected TagValue to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(str:match("^([%p{L}%p{Z}%p{N}_.:/=+%-@]*)$"), "Expected string to match pattern '^([%p{L}%p{Z}%p{N}_.:/=+%-@]*)$'")
end

--  
function M.TagValue(str)
	M.AssertTagValue(str)
	return str
end

function M.AssertErrorMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected ErrorMessage to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
end

--  
function M.ErrorMessage(str)
	M.AssertErrorMessage(str)
	return str
end

function M.AssertRedshiftDatabaseUsername(str)
	assert(str)
	assert(type(str) == "string", "Expected RedshiftDatabaseUsername to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

-- <p>A username to be used by Amazon Machine Learning (Amazon ML)to connect to a database on an Amazon Redshift cluster. The username should have sufficient permissions to execute the <code>RedshiftSelectSqlQuery</code> query. The username should be valid for an Amazon Redshift <a href="http://docs.aws.amazon.com/redshift/latest/dg/r_CREATE_USER.html">USER</a>.</p>
function M.RedshiftDatabaseUsername(str)
	M.AssertRedshiftDatabaseUsername(str)
	return str
end

function M.AssertMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected Message to be of type 'string'")
	assert(#str <= 10240, "Expected string to be max 10240 characters")
end

-- <p> Description of the most recent details about an object.</p>
function M.Message(str)
	M.AssertMessage(str)
	return str
end

function M.AssertDetailsValue(str)
	assert(str)
	assert(type(str) == "string", "Expected DetailsValue to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.DetailsValue(str)
	M.AssertDetailsValue(str)
	return str
end

function M.AssertMLModelFilterVariable(str)
	assert(str)
	assert(type(str) == "string", "Expected MLModelFilterVariable to be of type 'string'")
end

--  
function M.MLModelFilterVariable(str)
	M.AssertMLModelFilterVariable(str)
	return str
end

function M.AssertEntityName(str)
	assert(str)
	assert(type(str) == "string", "Expected EntityName to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
	assert(str:match(".*%S.*|^$"), "Expected string to match pattern '.*%S.*|^$'")
end

-- <p>A user-supplied name or description of the Amazon ML resource.</p>
function M.EntityName(str)
	M.AssertEntityName(str)
	return str
end

function M.AssertVipURL(str)
	assert(str)
	assert(type(str) == "string", "Expected VipURL to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
	assert(str:match("https://[a-zA-Z0-9-.]*%.amazon(aws)?%.com[/]?"), "Expected string to match pattern 'https://[a-zA-Z0-9-.]*%.amazon(aws)?%.com[/]?'")
end

--  
function M.VipURL(str)
	M.AssertVipURL(str)
	return str
end

function M.AssertBatchPredictionFilterVariable(str)
	assert(str)
	assert(type(str) == "string", "Expected BatchPredictionFilterVariable to be of type 'string'")
end

-- <p>A list of the variables to use in searching or filtering <code>BatchPrediction</code>.</p> <ul> <li> <code>CreatedAt</code> - Sets the search criteria to <code>BatchPrediction</code> creation date.</li> <li> <code>Status</code> - Sets the search criteria to <code>BatchPrediction</code> status.</li> <li> <code>Name</code> - Sets the search criteria to the contents of <code>BatchPrediction</code><b> </b> <code>Name</code>.</li> <li> <code>IAMUser</code> - Sets the search criteria to the user account that invoked the <code>BatchPrediction</code> creation.</li> <li> <code>MLModelId</code> - Sets the search criteria to the <code>MLModel</code> used in the <code>BatchPrediction</code>.</li> <li> <code>DataSourceId</code> - Sets the search criteria to the <code>DataSource</code> used in the <code>BatchPrediction</code>.</li> <li> <code>DataURI</code> - Sets the search criteria to the data file(s) used in the <code>BatchPrediction</code>. The URL can identify either a file or an Amazon Simple Storage Service (Amazon S3) bucket or directory.</li> </ul>
function M.BatchPredictionFilterVariable(str)
	M.AssertBatchPredictionFilterVariable(str)
	return str
end

function M.AssertRDSInstanceIdentifier(str)
	assert(str)
	assert(type(str) == "string", "Expected RDSInstanceIdentifier to be of type 'string'")
	assert(#str <= 63, "Expected string to be max 63 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[a-z0-9-]+"), "Expected string to match pattern '[a-z0-9-]+'")
end

-- Identifier of RDS DB Instances.
function M.RDSInstanceIdentifier(str)
	M.AssertRDSInstanceIdentifier(str)
	return str
end

function M.AssertDataSourceFilterVariable(str)
	assert(str)
	assert(type(str) == "string", "Expected DataSourceFilterVariable to be of type 'string'")
end

-- <p>A list of the variables to use in searching or filtering <code>DataSource</code>.</p> <ul> <li> <code>CreatedAt</code> - Sets the search criteria to <code>DataSource</code> creation date.</li> <li> <code>Status</code> - Sets the search criteria to <code>DataSource</code> status.</li> <li> <code>Name</code> - Sets the search criteria to the contents of <code>DataSource</code> <b> </b> <code>Name</code>.</li> <li> <code>DataUri</code> - Sets the search criteria to the URI of data files used to create the <code>DataSource</code>. The URI can identify either a file or an Amazon Simple Storage Service (Amazon S3) bucket or directory.</li> <li> <code>IAMUser</code> - Sets the search criteria to the user account that invoked the <code>DataSource</code> creation.</li> </ul> <note><title>Note</title> <p>The variable names should match the variable names in the <code>DataSource</code>.</p> </note>
function M.DataSourceFilterVariable(str)
	M.AssertDataSourceFilterVariable(str)
	return str
end

function M.AssertDataSchema(str)
	assert(str)
	assert(type(str) == "string", "Expected DataSchema to be of type 'string'")
	assert(#str <= 131071, "Expected string to be max 131071 characters")
end

-- <p>The schema of a <code>DataSource</code>. The <code>DataSchema</code> defines the structure of the observation data in the data file(s) referenced in the <code>DataSource</code>. The DataSource schema is expressed in JSON format.</p> <p><code>DataSchema</code> is not required if you specify a <code>DataSchemaUri</code></p> <p>{ "version": "1.0", "recordAnnotationFieldName": "F1", "recordWeightFieldName": "F2", "targetFieldName": "F3", "dataFormat": "CSV", "dataFileContainsHeader": true, "variables": [ { "fieldName": "F1", "fieldType": "TEXT" }, { "fieldName": "F2", "fieldType": "NUMERIC" }, { "fieldName": "F3", "fieldType": "CATEGORICAL" }, { "fieldName": "F4", "fieldType": "NUMERIC" }, { "fieldName": "F5", "fieldType": "CATEGORICAL" }, { "fieldName": "F6", "fieldType": "TEXT" }, { "fieldName": "F7", "fieldType": "WEIGHTED_INT_SEQUENCE" }, { "fieldName": "F8", "fieldType": "WEIGHTED_STRING_SEQUENCE" } ], "excludedVariableNames": [ "F6" ] } </p>
function M.DataSchema(str)
	M.AssertDataSchema(str)
	return str
end

function M.AssertEDPSecurityGroupId(str)
	assert(str)
	assert(type(str) == "string", "Expected EDPSecurityGroupId to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.EDPSecurityGroupId(str)
	M.AssertEDPSecurityGroupId(str)
	return str
end

function M.AssertVariableName(str)
	assert(str)
	assert(type(str) == "string", "Expected VariableName to be of type 'string'")
end

-- <p>The name of a variable. Currently it's used to specify the name of the target value, label, weight, and tags.</p>
function M.VariableName(str)
	M.AssertVariableName(str)
	return str
end

function M.AssertRedshiftDatabaseName(str)
	assert(str)
	assert(type(str) == "string", "Expected RedshiftDatabaseName to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[a-z0-9]+"), "Expected string to match pattern '[a-z0-9]+'")
end

-- <p>The name of a database hosted on an Amazon Redshift cluster.</p>
function M.RedshiftDatabaseName(str)
	M.AssertRedshiftDatabaseName(str)
	return str
end

function M.AssertVariableValue(str)
	assert(str)
	assert(type(str) == "string", "Expected VariableValue to be of type 'string'")
end

-- <p>The value of a variable. Currently it's used to specify values of the target value, weights, and tag variables and for filtering variable values.</p>
function M.VariableValue(str)
	M.AssertVariableValue(str)
	return str
end

function M.AssertRDSDatabasePassword(str)
	assert(str)
	assert(type(str) == "string", "Expected RDSDatabasePassword to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 8, "Expected string to be min 8 characters")
end

-- <p>The password to be used by Amazon ML to connect to a database on an RDS DB instance. The password should have sufficient permissions to execute the <code>RDSSelectQuery</code> query.</p>
function M.RDSDatabasePassword(str)
	M.AssertRDSDatabasePassword(str)
	return str
end

function M.AssertComparatorValue(str)
	assert(str)
	assert(type(str) == "string", "Expected ComparatorValue to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
	assert(str:match(".*%S.*|^$"), "Expected string to match pattern '.*%S.*|^$'")
end

-- <p>The value specified in a filtering condition. The <code>ComparatorValue</code> becomes the reference value when matching or evaluating data values in filtering and searching functions.</p>
function M.ComparatorValue(str)
	M.AssertComparatorValue(str)
	return str
end

function M.AssertEvaluationFilterVariable(str)
	assert(str)
	assert(type(str) == "string", "Expected EvaluationFilterVariable to be of type 'string'")
end

-- <p>A list of the variables to use in searching or filtering <code>Evaluation</code>.</p> <ul> <li> <code>CreatedAt</code> - Sets the search criteria to <code>Evaluation</code> creation date.</li> <li> <code>Status</code> - Sets the search criteria to <code>Evaluation</code> status.</li> <li> <code>Name</code> - Sets the search criteria to the contents of <code>Evaluation</code> <b> </b> <code>Name</code>.</li> <li> <code>IAMUser</code> - Sets the search criteria to the user account that invoked an evaluation.</li> <li> <code>MLModelId</code> - Sets the search criteria to the <code>Predictor</code> that was evaluated.</li> <li> <code>DataSourceId</code> - Sets the search criteria to the <code>DataSource</code> used in evaluation.</li> <li> <code>DataUri</code> - Sets the search criteria to the data file(s) used in evaluation. The URL can identify either a file or an Amazon Simple Storage Service (Amazon S3) bucket or directory.</li> </ul>
function M.EvaluationFilterVariable(str)
	M.AssertEvaluationFilterVariable(str)
	return str
end

function M.AssertRealtimeEndpointStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected RealtimeEndpointStatus to be of type 'string'")
end

--  
function M.RealtimeEndpointStatus(str)
	M.AssertRealtimeEndpointStatus(str)
	return str
end

function M.AssertEntityStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected EntityStatus to be of type 'string'")
end

-- <p>Object status with the following possible values:</p> <ul> <li><code>PENDING</code></li> <li><code>INPROGRESS</code></li> <li><code>FAILED</code></li> <li><code>COMPLETED</code></li> <li><code>DELETED</code></li> </ul>
function M.EntityStatus(str)
	M.AssertEntityStatus(str)
	return str
end

function M.AssertEDPPipelineId(str)
	assert(str)
	assert(type(str) == "string", "Expected EDPPipelineId to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.EDPPipelineId(str)
	M.AssertEDPPipelineId(str)
	return str
end

function M.AssertAwsUserArn(str)
	assert(str)
	assert(type(str) == "string", "Expected AwsUserArn to be of type 'string'")
	assert(str:match("arn:aws:iam::[0-9]+:((user/.+)|(root))"), "Expected string to match pattern 'arn:aws:iam::[0-9]+:((user/.+)|(root))'")
end

-- <p>An Amazon Web Service (AWS) user account identifier. The account identifier can be an AWS root account or an AWS Identity and Access Management (IAM) user.</p>
function M.AwsUserArn(str)
	M.AssertAwsUserArn(str)
	return str
end

function M.AssertPresignedS3Url(str)
	assert(str)
	assert(type(str) == "string", "Expected PresignedS3Url to be of type 'string'")
end

--  
function M.PresignedS3Url(str)
	M.AssertPresignedS3Url(str)
	return str
end

function M.AssertEDPResourceRole(str)
	assert(str)
	assert(type(str) == "string", "Expected EDPResourceRole to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.EDPResourceRole(str)
	M.AssertEDPResourceRole(str)
	return str
end

function M.AssertStringType(str)
	assert(str)
	assert(type(str) == "string", "Expected StringType to be of type 'string'")
end

-- <p>String type.</p>
function M.StringType(str)
	M.AssertStringType(str)
	return str
end

function M.AssertRoleARN(str)
	assert(str)
	assert(type(str) == "string", "Expected RoleARN to be of type 'string'")
	assert(#str <= 110, "Expected string to be max 110 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

-- <p>The Amazon Resource Name (ARN) of an <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/roles-toplevel.html#roles-about-termsandconcepts">AWS IAM Role</a>, such as the following: arn:aws:iam::account:role/rolename. </p>
function M.RoleARN(str)
	M.AssertRoleARN(str)
	return str
end

function M.AssertPerformanceMetricsPropertyValue(str)
	assert(str)
	assert(type(str) == "string", "Expected PerformanceMetricsPropertyValue to be of type 'string'")
end

--  
function M.PerformanceMetricsPropertyValue(str)
	M.AssertPerformanceMetricsPropertyValue(str)
	return str
end

function M.AssertS3Url(str)
	assert(str)
	assert(type(str) == "string", "Expected S3Url to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
	assert(str:match("s3://([^/]+)(/.*)?"), "Expected string to match pattern 's3://([^/]+)(/.*)?'")
end

-- <p>A reference to a file or bucket on Amazon Simple Storage Service (Amazon S3).</p>
function M.S3Url(str)
	M.AssertS3Url(str)
	return str
end

function M.AssertSortOrder(str)
	assert(str)
	assert(type(str) == "string", "Expected SortOrder to be of type 'string'")
end

-- <p>The sort order specified in a listing condition. Possible values include the following:</p> <ul> <li> <code>asc</code> - Present the information in ascending order (from A-Z).</li> <li> <code>dsc</code> - Present the information in descending order (from Z-A).</li> </ul>
function M.SortOrder(str)
	M.AssertSortOrder(str)
	return str
end

function M.AssertDataRearrangement(str)
	assert(str)
	assert(type(str) == "string", "Expected DataRearrangement to be of type 'string'")
end

--  
function M.DataRearrangement(str)
	M.AssertDataRearrangement(str)
	return str
end

function M.AssertScoreValue(float)
	assert(float)
	assert(type(float) == "number", "Expected ScoreValue to be of type 'number'")
end

function M.ScoreValue(float)
	M.AssertScoreValue(float)
	return float
end

function M.AssertScoreThreshold(float)
	assert(float)
	assert(type(float) == "number", "Expected ScoreThreshold to be of type 'number'")
end

function M.ScoreThreshold(float)
	M.AssertScoreThreshold(float)
	return float
end

function M.AssertfloatLabel(float)
	assert(float)
	assert(type(float) == "number", "Expected floatLabel to be of type 'number'")
end

function M.floatLabel(float)
	M.AssertfloatLabel(float)
	return float
end

function M.AssertLongType(long)
	assert(long)
	assert(type(long) == "number", "Expected LongType to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.LongType(long)
	M.AssertLongType(long)
	return long
end

function M.AssertPageLimit(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected PageLimit to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 100, "Expected integer to be max 100")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.PageLimit(integer)
	M.AssertPageLimit(integer)
	return integer
end

function M.AssertErrorCode(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected ErrorCode to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.ErrorCode(integer)
	M.AssertErrorCode(integer)
	return integer
end

function M.AssertIntegerType(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected IntegerType to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.IntegerType(integer)
	M.AssertIntegerType(integer)
	return integer
end

function M.AssertComputeStatistics(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected ComputeStatistics to be of type 'boolean'")
end

function M.ComputeStatistics(boolean)
	M.AssertComputeStatistics(boolean)
	return boolean
end

function M.AssertVerbose(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected Verbose to be of type 'boolean'")
end

function M.Verbose(boolean)
	M.AssertVerbose(boolean)
	return boolean
end

function M.AssertPerformanceMetricsProperties(map)
	assert(map)
	assert(type(map) == "table", "Expected PerformanceMetricsProperties to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertPerformanceMetricsPropertyKey(k)
		M.AssertPerformanceMetricsPropertyValue(v)
	end
end

function M.PerformanceMetricsProperties(map)
	M.AssertPerformanceMetricsProperties(map)
	return map
end

function M.AssertTrainingParameters(map)
	assert(map)
	assert(type(map) == "table", "Expected TrainingParameters to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertStringType(k)
		M.AssertStringType(v)
	end
end

function M.TrainingParameters(map)
	M.AssertTrainingParameters(map)
	return map
end

function M.AssertRecord(map)
	assert(map)
	assert(type(map) == "table", "Expected Record to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertVariableName(k)
		M.AssertVariableValue(v)
	end
end

function M.Record(map)
	M.AssertRecord(map)
	return map
end

function M.AssertScoreValuePerLabelMap(map)
	assert(map)
	assert(type(map) == "table", "Expected ScoreValuePerLabelMap to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertLabel(k)
		M.AssertScoreValue(v)
	end
end

function M.ScoreValuePerLabelMap(map)
	M.AssertScoreValuePerLabelMap(map)
	return map
end

function M.AssertDetailsMap(map)
	assert(map)
	assert(type(map) == "table", "Expected DetailsMap to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertDetailsAttributes(k)
		M.AssertDetailsValue(v)
	end
end

function M.DetailsMap(map)
	M.AssertDetailsMap(map)
	return map
end

function M.AssertEpochTime(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected EpochTime to be of type 'string'")
end

function M.EpochTime(timestamp)
	M.AssertEpochTime(timestamp)
	return timestamp
end

function M.AssertTagKeyList(list)
	assert(list)
	assert(type(list) == "table", "Expected TagKeyList to be of type ''table")
	assert(#list <= 100, "Expected list to be contain 100 elements")
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

function M.AssertBatchPredictions(list)
	assert(list)
	assert(type(list) == "table", "Expected BatchPredictions to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertBatchPrediction(v)
	end
end

--  
-- List of BatchPrediction objects
function M.BatchPredictions(list)
	M.AssertBatchPredictions(list)
	return list
end

function M.AssertEvaluations(list)
	assert(list)
	assert(type(list) == "table", "Expected Evaluations to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertEvaluation(v)
	end
end

--  
-- List of Evaluation objects
function M.Evaluations(list)
	M.AssertEvaluations(list)
	return list
end

function M.AssertDataSources(list)
	assert(list)
	assert(type(list) == "table", "Expected DataSources to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertDataSource(v)
	end
end

--  
-- List of DataSource objects
function M.DataSources(list)
	M.AssertDataSources(list)
	return list
end

function M.AssertMLModels(list)
	assert(list)
	assert(type(list) == "table", "Expected MLModels to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertMLModel(v)
	end
end

--  
-- List of MLModel objects
function M.MLModels(list)
	M.AssertMLModels(list)
	return list
end

function M.AssertEDPSecurityGroupIds(list)
	assert(list)
	assert(type(list) == "table", "Expected EDPSecurityGroupIds to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertEDPSecurityGroupId(v)
	end
end

--  
-- List of EDPSecurityGroupId objects
function M.EDPSecurityGroupIds(list)
	M.AssertEDPSecurityGroupIds(list)
	return list
end

function M.AssertTagList(list)
	assert(list)
	assert(type(list) == "table", "Expected TagList to be of type ''table")
	assert(#list <= 100, "Expected list to be contain 100 elements")
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
			return "machinelearning.amazonaws.com"
		end
	end
	local ss = { "machinelearning" }
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
--- DeleteTags
-- @param DeleteTagsInput
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteTagsAsync(DeleteTagsInput, cb)
	assert(DeleteTagsInput, "You must provide a DeleteTagsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonML_20141212.DeleteTags",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteTagsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateBatchPrediction
-- @param UpdateBatchPredictionInput
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateBatchPredictionAsync(UpdateBatchPredictionInput, cb)
	assert(UpdateBatchPredictionInput, "You must provide a UpdateBatchPredictionInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonML_20141212.UpdateBatchPrediction",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateBatchPredictionInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetEvaluation
-- @param GetEvaluationInput
-- @param cb Callback function accepting two args: response, error_message
function M.GetEvaluationAsync(GetEvaluationInput, cb)
	assert(GetEvaluationInput, "You must provide a GetEvaluationInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonML_20141212.GetEvaluation",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetEvaluationInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeBatchPredictions
-- @param DescribeBatchPredictionsInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeBatchPredictionsAsync(DescribeBatchPredictionsInput, cb)
	assert(DescribeBatchPredictionsInput, "You must provide a DescribeBatchPredictionsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonML_20141212.DescribeBatchPredictions",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeBatchPredictionsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateEvaluation
-- @param CreateEvaluationInput
-- @param cb Callback function accepting two args: response, error_message
function M.CreateEvaluationAsync(CreateEvaluationInput, cb)
	assert(CreateEvaluationInput, "You must provide a CreateEvaluationInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonML_20141212.CreateEvaluation",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateEvaluationInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeMLModels
-- @param DescribeMLModelsInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeMLModelsAsync(DescribeMLModelsInput, cb)
	assert(DescribeMLModelsInput, "You must provide a DescribeMLModelsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonML_20141212.DescribeMLModels",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeMLModelsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteMLModel
-- @param DeleteMLModelInput
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteMLModelAsync(DeleteMLModelInput, cb)
	assert(DeleteMLModelInput, "You must provide a DeleteMLModelInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonML_20141212.DeleteMLModel",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteMLModelInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateDataSourceFromS3
-- @param CreateDataSourceFromS3Input
-- @param cb Callback function accepting two args: response, error_message
function M.CreateDataSourceFromS3Async(CreateDataSourceFromS3Input, cb)
	assert(CreateDataSourceFromS3Input, "You must provide a CreateDataSourceFromS3Input")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonML_20141212.CreateDataSourceFromS3",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateDataSourceFromS3Input, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateDataSource
-- @param UpdateDataSourceInput
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateDataSourceAsync(UpdateDataSourceInput, cb)
	assert(UpdateDataSourceInput, "You must provide a UpdateDataSourceInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonML_20141212.UpdateDataSource",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateDataSourceInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeEvaluations
-- @param DescribeEvaluationsInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeEvaluationsAsync(DescribeEvaluationsInput, cb)
	assert(DescribeEvaluationsInput, "You must provide a DescribeEvaluationsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonML_20141212.DescribeEvaluations",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeEvaluationsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateDataSourceFromRedshift
-- @param CreateDataSourceFromRedshiftInput
-- @param cb Callback function accepting two args: response, error_message
function M.CreateDataSourceFromRedshiftAsync(CreateDataSourceFromRedshiftInput, cb)
	assert(CreateDataSourceFromRedshiftInput, "You must provide a CreateDataSourceFromRedshiftInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonML_20141212.CreateDataSourceFromRedshift",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateDataSourceFromRedshiftInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeDataSources
-- @param DescribeDataSourcesInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeDataSourcesAsync(DescribeDataSourcesInput, cb)
	assert(DescribeDataSourcesInput, "You must provide a DescribeDataSourcesInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonML_20141212.DescribeDataSources",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeDataSourcesInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetDataSource
-- @param GetDataSourceInput
-- @param cb Callback function accepting two args: response, error_message
function M.GetDataSourceAsync(GetDataSourceInput, cb)
	assert(GetDataSourceInput, "You must provide a GetDataSourceInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonML_20141212.GetDataSource",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetDataSourceInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateRealtimeEndpoint
-- @param CreateRealtimeEndpointInput
-- @param cb Callback function accepting two args: response, error_message
function M.CreateRealtimeEndpointAsync(CreateRealtimeEndpointInput, cb)
	assert(CreateRealtimeEndpointInput, "You must provide a CreateRealtimeEndpointInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonML_20141212.CreateRealtimeEndpoint",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateRealtimeEndpointInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateMLModel
-- @param UpdateMLModelInput
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateMLModelAsync(UpdateMLModelInput, cb)
	assert(UpdateMLModelInput, "You must provide a UpdateMLModelInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonML_20141212.UpdateMLModel",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateMLModelInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteRealtimeEndpoint
-- @param DeleteRealtimeEndpointInput
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteRealtimeEndpointAsync(DeleteRealtimeEndpointInput, cb)
	assert(DeleteRealtimeEndpointInput, "You must provide a DeleteRealtimeEndpointInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonML_20141212.DeleteRealtimeEndpoint",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteRealtimeEndpointInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeTags
-- @param DescribeTagsInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeTagsAsync(DescribeTagsInput, cb)
	assert(DescribeTagsInput, "You must provide a DescribeTagsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonML_20141212.DescribeTags",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeTagsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteDataSource
-- @param DeleteDataSourceInput
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteDataSourceAsync(DeleteDataSourceInput, cb)
	assert(DeleteDataSourceInput, "You must provide a DeleteDataSourceInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonML_20141212.DeleteDataSource",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteDataSourceInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateDataSourceFromRDS
-- @param CreateDataSourceFromRDSInput
-- @param cb Callback function accepting two args: response, error_message
function M.CreateDataSourceFromRDSAsync(CreateDataSourceFromRDSInput, cb)
	assert(CreateDataSourceFromRDSInput, "You must provide a CreateDataSourceFromRDSInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonML_20141212.CreateDataSourceFromRDS",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateDataSourceFromRDSInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateEvaluation
-- @param UpdateEvaluationInput
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateEvaluationAsync(UpdateEvaluationInput, cb)
	assert(UpdateEvaluationInput, "You must provide a UpdateEvaluationInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonML_20141212.UpdateEvaluation",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateEvaluationInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- AddTags
-- @param AddTagsInput
-- @param cb Callback function accepting two args: response, error_message
function M.AddTagsAsync(AddTagsInput, cb)
	assert(AddTagsInput, "You must provide a AddTagsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonML_20141212.AddTags",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", AddTagsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Predict
-- @param PredictInput
-- @param cb Callback function accepting two args: response, error_message
function M.PredictAsync(PredictInput, cb)
	assert(PredictInput, "You must provide a PredictInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonML_20141212.Predict",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", PredictInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetBatchPrediction
-- @param GetBatchPredictionInput
-- @param cb Callback function accepting two args: response, error_message
function M.GetBatchPredictionAsync(GetBatchPredictionInput, cb)
	assert(GetBatchPredictionInput, "You must provide a GetBatchPredictionInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonML_20141212.GetBatchPrediction",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetBatchPredictionInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteEvaluation
-- @param DeleteEvaluationInput
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteEvaluationAsync(DeleteEvaluationInput, cb)
	assert(DeleteEvaluationInput, "You must provide a DeleteEvaluationInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonML_20141212.DeleteEvaluation",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteEvaluationInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteBatchPrediction
-- @param DeleteBatchPredictionInput
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteBatchPredictionAsync(DeleteBatchPredictionInput, cb)
	assert(DeleteBatchPredictionInput, "You must provide a DeleteBatchPredictionInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonML_20141212.DeleteBatchPrediction",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteBatchPredictionInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateMLModel
-- @param CreateMLModelInput
-- @param cb Callback function accepting two args: response, error_message
function M.CreateMLModelAsync(CreateMLModelInput, cb)
	assert(CreateMLModelInput, "You must provide a CreateMLModelInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonML_20141212.CreateMLModel",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateMLModelInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateBatchPrediction
-- @param CreateBatchPredictionInput
-- @param cb Callback function accepting two args: response, error_message
function M.CreateBatchPredictionAsync(CreateBatchPredictionInput, cb)
	assert(CreateBatchPredictionInput, "You must provide a CreateBatchPredictionInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonML_20141212.CreateBatchPrediction",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateBatchPredictionInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetMLModel
-- @param GetMLModelInput
-- @param cb Callback function accepting two args: response, error_message
function M.GetMLModelAsync(GetMLModelInput, cb)
	assert(GetMLModelInput, "You must provide a GetMLModelInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonML_20141212.GetMLModel",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetMLModelInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end


return M
