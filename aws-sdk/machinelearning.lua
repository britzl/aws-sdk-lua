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

local keys = {}
local asserts = {}

keys.CreateDataSourceFromRedshiftOutput = { ["DataSourceId"] = true, nil }

function asserts.AssertCreateDataSourceFromRedshiftOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDataSourceFromRedshiftOutput to be of type 'table'")
	if struct["DataSourceId"] then asserts.AssertEntityId(struct["DataSourceId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateDataSourceFromRedshiftOutput[k], "CreateDataSourceFromRedshiftOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDataSourceFromRedshiftOutput
-- <p> Represents the output of a <code>CreateDataSourceFromRedshift</code> operation, and is an acknowledgement that Amazon ML received the request.</p> <p>The <code>CreateDataSourceFromRedshift</code> operation is asynchronous. You can poll for updates by using the <code>GetBatchPrediction</code> operation and checking the <code>Status</code> parameter. </p>
-- @param _DataSourceId [EntityId] <p>A user-supplied ID that uniquely identifies the datasource. This value should be identical to the value of the <code>DataSourceID</code> in the request. </p>
function M.CreateDataSourceFromRedshiftOutput(_DataSourceId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDataSourceFromRedshiftOutput")
	local t = { 
		["DataSourceId"] = _DataSourceId,
	}
	asserts.AssertCreateDataSourceFromRedshiftOutput(t)
	return t
end

keys.InternalServerException = { ["message"] = true, ["code"] = true, nil }

function asserts.AssertInternalServerException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InternalServerException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	if struct["code"] then asserts.AssertErrorCode(struct["code"]) end
	for k,_ in pairs(struct) do
		assert(keys.InternalServerException[k], "InternalServerException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InternalServerException
-- <p>An error on the server occurred when trying to process a request.</p>
-- @param _message [ErrorMessage] 
-- @param _code [ErrorCode] 
function M.InternalServerException(_message, _code, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InternalServerException")
	local t = { 
		["message"] = _message,
		["code"] = _code,
	}
	asserts.AssertInternalServerException(t)
	return t
end

keys.DeleteTagsInput = { ["ResourceType"] = true, ["ResourceId"] = true, ["TagKeys"] = true, nil }

function asserts.AssertDeleteTagsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteTagsInput to be of type 'table'")
	assert(struct["TagKeys"], "Expected key TagKeys to exist in table")
	assert(struct["ResourceId"], "Expected key ResourceId to exist in table")
	assert(struct["ResourceType"], "Expected key ResourceType to exist in table")
	if struct["ResourceType"] then asserts.AssertTaggableResourceType(struct["ResourceType"]) end
	if struct["ResourceId"] then asserts.AssertEntityId(struct["ResourceId"]) end
	if struct["TagKeys"] then asserts.AssertTagKeyList(struct["TagKeys"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteTagsInput[k], "DeleteTagsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteTagsInput
--  
-- @param _ResourceType [TaggableResourceType] <p>The type of the tagged ML object.</p>
-- @param _ResourceId [EntityId] <p>The ID of the tagged ML object. For example, <code>exampleModelId</code>.</p>
-- @param _TagKeys [TagKeyList] <p>One or more tags to delete.</p>
-- Required parameter: TagKeys
-- Required parameter: ResourceId
-- Required parameter: ResourceType
function M.DeleteTagsInput(_ResourceType, _ResourceId, _TagKeys, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteTagsInput")
	local t = { 
		["ResourceType"] = _ResourceType,
		["ResourceId"] = _ResourceId,
		["TagKeys"] = _TagKeys,
	}
	asserts.AssertDeleteTagsInput(t)
	return t
end

keys.DescribeBatchPredictionsInput = { ["GT"] = true, ["FilterVariable"] = true, ["GE"] = true, ["NE"] = true, ["LT"] = true, ["LE"] = true, ["Limit"] = true, ["SortOrder"] = true, ["NextToken"] = true, ["EQ"] = true, ["Prefix"] = true, nil }

function asserts.AssertDescribeBatchPredictionsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeBatchPredictionsInput to be of type 'table'")
	if struct["GT"] then asserts.AssertComparatorValue(struct["GT"]) end
	if struct["FilterVariable"] then asserts.AssertBatchPredictionFilterVariable(struct["FilterVariable"]) end
	if struct["GE"] then asserts.AssertComparatorValue(struct["GE"]) end
	if struct["NE"] then asserts.AssertComparatorValue(struct["NE"]) end
	if struct["LT"] then asserts.AssertComparatorValue(struct["LT"]) end
	if struct["LE"] then asserts.AssertComparatorValue(struct["LE"]) end
	if struct["Limit"] then asserts.AssertPageLimit(struct["Limit"]) end
	if struct["SortOrder"] then asserts.AssertSortOrder(struct["SortOrder"]) end
	if struct["NextToken"] then asserts.AssertStringType(struct["NextToken"]) end
	if struct["EQ"] then asserts.AssertComparatorValue(struct["EQ"]) end
	if struct["Prefix"] then asserts.AssertComparatorValue(struct["Prefix"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeBatchPredictionsInput[k], "DescribeBatchPredictionsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeBatchPredictionsInput
--  
-- @param _GT [ComparatorValue] <p>The greater than operator. The <code>BatchPrediction</code> results will have <code>FilterVariable</code> values that are greater than the value specified with <code>GT</code>.</p>
-- @param _FilterVariable [BatchPredictionFilterVariable] <p>Use one of the following variables to filter a list of <code>BatchPrediction</code>:</p> <ul> <li> <code>CreatedAt</code> - Sets the search criteria to the <code>BatchPrediction</code> creation date.</li> <li> <code>Status</code> - Sets the search criteria to the <code>BatchPrediction</code> status.</li> <li> <code>Name</code> - Sets the search criteria to the contents of the <code>BatchPrediction</code><b> </b> <code>Name</code>.</li> <li> <code>IAMUser</code> - Sets the search criteria to the user account that invoked the <code>BatchPrediction</code> creation.</li> <li> <code>MLModelId</code> - Sets the search criteria to the <code>MLModel</code> used in the <code>BatchPrediction</code>.</li> <li> <code>DataSourceId</code> - Sets the search criteria to the <code>DataSource</code> used in the <code>BatchPrediction</code>.</li> <li> <code>DataURI</code> - Sets the search criteria to the data file(s) used in the <code>BatchPrediction</code>. The URL can identify either a file or an Amazon Simple Storage Solution (Amazon S3) bucket or directory.</li> </ul>
-- @param _GE [ComparatorValue] <p>The greater than or equal to operator. The <code>BatchPrediction</code> results will have <code>FilterVariable</code> values that are greater than or equal to the value specified with <code>GE</code>. </p>
-- @param _NE [ComparatorValue] <p>The not equal to operator. The <code>BatchPrediction</code> results will have <code>FilterVariable</code> values not equal to the value specified with <code>NE</code>.</p>
-- @param _LT [ComparatorValue] <p>The less than operator. The <code>BatchPrediction</code> results will have <code>FilterVariable</code> values that are less than the value specified with <code>LT</code>.</p>
-- @param _LE [ComparatorValue] <p>The less than or equal to operator. The <code>BatchPrediction</code> results will have <code>FilterVariable</code> values that are less than or equal to the value specified with <code>LE</code>.</p>
-- @param _Limit [PageLimit] <p>The number of pages of information to include in the result. The range of acceptable values is <code>1</code> through <code>100</code>. The default value is <code>100</code>.</p>
-- @param _SortOrder [SortOrder] <p>A two-value parameter that determines the sequence of the resulting list of <code>MLModel</code>s.</p> <ul> <li> <code>asc</code> - Arranges the list in ascending order (A-Z, 0-9).</li> <li> <code>dsc</code> - Arranges the list in descending order (Z-A, 9-0).</li> </ul> <p>Results are sorted by <code>FilterVariable</code>.</p>
-- @param _NextToken [StringType] <p>An ID of the page in the paginated results.</p>
-- @param _EQ [ComparatorValue] <p>The equal to operator. The <code>BatchPrediction</code> results will have <code>FilterVariable</code> values that exactly match the value specified with <code>EQ</code>.</p>
-- @param _Prefix [ComparatorValue] <p>A string that is found at the beginning of a variable, such as <code>Name</code> or <code>Id</code>.</p> <p>For example, a <code>Batch Prediction</code> operation could have the <code>Name</code> <code>2014-09-09-HolidayGiftMailer</code>. To search for this <code>BatchPrediction</code>, select <code>Name</code> for the <code>FilterVariable</code> and any of the following strings for the <code>Prefix</code>: </p> <ul> <li><p>2014-09</p></li> <li><p>2014-09-09</p></li> <li><p>2014-09-09-Holiday</p></li> </ul>
function M.DescribeBatchPredictionsInput(_GT, _FilterVariable, _GE, _NE, _LT, _LE, _Limit, _SortOrder, _NextToken, _EQ, _Prefix, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeBatchPredictionsInput")
	local t = { 
		["GT"] = _GT,
		["FilterVariable"] = _FilterVariable,
		["GE"] = _GE,
		["NE"] = _NE,
		["LT"] = _LT,
		["LE"] = _LE,
		["Limit"] = _Limit,
		["SortOrder"] = _SortOrder,
		["NextToken"] = _NextToken,
		["EQ"] = _EQ,
		["Prefix"] = _Prefix,
	}
	asserts.AssertDescribeBatchPredictionsInput(t)
	return t
end

keys.CreateBatchPredictionOutput = { ["BatchPredictionId"] = true, nil }

function asserts.AssertCreateBatchPredictionOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateBatchPredictionOutput to be of type 'table'")
	if struct["BatchPredictionId"] then asserts.AssertEntityId(struct["BatchPredictionId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateBatchPredictionOutput[k], "CreateBatchPredictionOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateBatchPredictionOutput
-- <p> Represents the output of a <code>CreateBatchPrediction</code> operation, and is an acknowledgement that Amazon ML received the request.</p> <p>The <code>CreateBatchPrediction</code> operation is asynchronous. You can poll for status updates by using the <code>&gt;GetBatchPrediction</code> operation and checking the <code>Status</code> parameter of the result. </p>
-- @param _BatchPredictionId [EntityId] <p>A user-supplied ID that uniquely identifies the <code>BatchPrediction</code>. This value is identical to the value of the <code>BatchPredictionId</code> in the request.</p>
function M.CreateBatchPredictionOutput(_BatchPredictionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateBatchPredictionOutput")
	local t = { 
		["BatchPredictionId"] = _BatchPredictionId,
	}
	asserts.AssertCreateBatchPredictionOutput(t)
	return t
end

keys.AddTagsOutput = { ["ResourceType"] = true, ["ResourceId"] = true, nil }

function asserts.AssertAddTagsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddTagsOutput to be of type 'table'")
	if struct["ResourceType"] then asserts.AssertTaggableResourceType(struct["ResourceType"]) end
	if struct["ResourceId"] then asserts.AssertEntityId(struct["ResourceId"]) end
	for k,_ in pairs(struct) do
		assert(keys.AddTagsOutput[k], "AddTagsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddTagsOutput
-- <p>Amazon ML returns the following elements. </p>
-- @param _ResourceType [TaggableResourceType] <p>The type of the ML object that was tagged.</p>
-- @param _ResourceId [EntityId] <p>The ID of the ML object that was tagged.</p>
function M.AddTagsOutput(_ResourceType, _ResourceId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddTagsOutput")
	local t = { 
		["ResourceType"] = _ResourceType,
		["ResourceId"] = _ResourceId,
	}
	asserts.AssertAddTagsOutput(t)
	return t
end

keys.MLModel = { ["Status"] = true, ["SizeInBytes"] = true, ["ComputeTime"] = true, ["Name"] = true, ["Algorithm"] = true, ["ScoreThreshold"] = true, ["TrainingParameters"] = true, ["MLModelType"] = true, ["CreatedByIamUser"] = true, ["ScoreThresholdLastUpdatedAt"] = true, ["EndpointInfo"] = true, ["MLModelId"] = true, ["InputDataLocationS3"] = true, ["LastUpdatedAt"] = true, ["TrainingDataSourceId"] = true, ["StartedAt"] = true, ["Message"] = true, ["CreatedAt"] = true, ["FinishedAt"] = true, nil }

function asserts.AssertMLModel(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MLModel to be of type 'table'")
	if struct["Status"] then asserts.AssertEntityStatus(struct["Status"]) end
	if struct["SizeInBytes"] then asserts.AssertLongType(struct["SizeInBytes"]) end
	if struct["ComputeTime"] then asserts.AssertLongType(struct["ComputeTime"]) end
	if struct["Name"] then asserts.AssertMLModelName(struct["Name"]) end
	if struct["Algorithm"] then asserts.AssertAlgorithm(struct["Algorithm"]) end
	if struct["ScoreThreshold"] then asserts.AssertScoreThreshold(struct["ScoreThreshold"]) end
	if struct["TrainingParameters"] then asserts.AssertTrainingParameters(struct["TrainingParameters"]) end
	if struct["MLModelType"] then asserts.AssertMLModelType(struct["MLModelType"]) end
	if struct["CreatedByIamUser"] then asserts.AssertAwsUserArn(struct["CreatedByIamUser"]) end
	if struct["ScoreThresholdLastUpdatedAt"] then asserts.AssertEpochTime(struct["ScoreThresholdLastUpdatedAt"]) end
	if struct["EndpointInfo"] then asserts.AssertRealtimeEndpointInfo(struct["EndpointInfo"]) end
	if struct["MLModelId"] then asserts.AssertEntityId(struct["MLModelId"]) end
	if struct["InputDataLocationS3"] then asserts.AssertS3Url(struct["InputDataLocationS3"]) end
	if struct["LastUpdatedAt"] then asserts.AssertEpochTime(struct["LastUpdatedAt"]) end
	if struct["TrainingDataSourceId"] then asserts.AssertEntityId(struct["TrainingDataSourceId"]) end
	if struct["StartedAt"] then asserts.AssertEpochTime(struct["StartedAt"]) end
	if struct["Message"] then asserts.AssertMessage(struct["Message"]) end
	if struct["CreatedAt"] then asserts.AssertEpochTime(struct["CreatedAt"]) end
	if struct["FinishedAt"] then asserts.AssertEpochTime(struct["FinishedAt"]) end
	for k,_ in pairs(struct) do
		assert(keys.MLModel[k], "MLModel contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MLModel
-- <p> Represents the output of a <code>GetMLModel</code> operation. </p> <p>The content consists of the detailed metadata and the current status of the <code>MLModel</code>.</p>
-- @param _Status [EntityStatus] <p>The current status of an <code>MLModel</code>. This element can have one of the following values: </p> <ul> <li> <code>PENDING</code> - Amazon Machine Learning (Amazon ML) submitted a request to create an <code>MLModel</code>.</li> <li> <code>INPROGRESS</code> - The creation process is underway.</li> <li> <code>FAILED</code> - The request to create an <code>MLModel</code> didn't run to completion. The model isn't usable.</li> <li> <code>COMPLETED</code> - The creation process completed successfully.</li> <li> <code>DELETED</code> - The <code>MLModel</code> is marked as deleted. It isn't usable.</li> </ul>
-- @param _SizeInBytes [LongType] 
-- @param _ComputeTime [LongType] 
-- @param _Name [MLModelName] <p>A user-supplied name or description of the <code>MLModel</code>.</p>
-- @param _Algorithm [Algorithm] <p>The algorithm used to train the <code>MLModel</code>. The following algorithm is supported:</p> <ul> <li> <code>SGD</code> -- Stochastic gradient descent. The goal of <code>SGD</code> is to minimize the gradient of the loss function. </li> </ul>
-- @param _ScoreThreshold [ScoreThreshold] 
-- @param _TrainingParameters [TrainingParameters] <p>A list of the training parameters in the <code>MLModel</code>. The list is implemented as a map of key-value pairs.</p> <p>The following is the current set of training parameters: </p> <ul> <li> <p><code>sgd.maxMLModelSizeInBytes</code> - The maximum allowed size of the model. Depending on the input data, the size of the model might affect its performance.</p> <p> The value is an integer that ranges from <code>100000</code> to <code>2147483648</code>. The default value is <code>33554432</code>.</p> </li> <li><p><code>sgd.maxPasses</code> - The number of times that the training process traverses the observations to build the <code>MLModel</code>. The value is an integer that ranges from <code>1</code> to <code>10000</code>. The default value is <code>10</code>.</p></li> <li><p><code>sgd.shuffleType</code> - Whether Amazon ML shuffles the training data. Shuffling the data improves a model's ability to find the optimal solution for a variety of data types. The valid values are <code>auto</code> and <code>none</code>. The default value is <code>none</code>.</p></li> <li> <p><code>sgd.l1RegularizationAmount</code> - The coefficient regularization L1 norm, which controls overfitting the data by penalizing large coefficients. This parameter tends to drive coefficients to zero, resulting in sparse feature set. If you use this parameter, start by specifying a small value, such as <code>1.0E-08</code>.</p> <p>The value is a double that ranges from <code>0</code> to <code>MAX_DOUBLE</code>. The default is to not use L1 normalization. This parameter can't be used when <code>L2</code> is specified. Use this parameter sparingly.</p> </li> <li> <p><code>sgd.l2RegularizationAmount</code> - The coefficient regularization L2 norm, which controls overfitting the data by penalizing large coefficients. This tends to drive coefficients to small, nonzero values. If you use this parameter, start by specifying a small value, such as <code>1.0E-08</code>.</p> <p>The value is a double that ranges from <code>0</code> to <code>MAX_DOUBLE</code>. The default is to not use L2 normalization. This parameter can't be used when <code>L1</code> is specified. Use this parameter sparingly.</p> </li> </ul>
-- @param _MLModelType [MLModelType] <p>Identifies the <code>MLModel</code> category. The following are the available types:</p> <ul> <li> <code>REGRESSION</code> - Produces a numeric result. For example, "What price should a house be listed at?"</li> <li> <code>BINARY</code> - Produces one of two possible results. For example, "Is this a child-friendly web site?".</li> <li> <code>MULTICLASS</code> - Produces one of several possible results. For example, "Is this a HIGH-, LOW-, or MEDIUM<?oxy_delete author="annbech" timestamp="20160328T175050-0700" content=" "><?oxy_insert_start author="annbech" timestamp="20160328T175050-0700">-<?oxy_insert_end>risk trade?".</li> </ul>
-- @param _CreatedByIamUser [AwsUserArn] <p>The AWS user account from which the <code>MLModel</code> was created. The account type can be either an AWS root account or an AWS Identity and Access Management (IAM) user account.</p>
-- @param _ScoreThresholdLastUpdatedAt [EpochTime] <p>The time of the most recent edit to the <code>ScoreThreshold</code>. The time is expressed in epoch time.</p>
-- @param _EndpointInfo [RealtimeEndpointInfo] <p>The current endpoint of the <code>MLModel</code>.</p>
-- @param _MLModelId [EntityId] <p>The ID assigned to the <code>MLModel</code> at creation.</p>
-- @param _InputDataLocationS3 [S3Url] <p>The location of the data file or directory in Amazon Simple Storage Service (Amazon S3).</p>
-- @param _LastUpdatedAt [EpochTime] <p>The time of the most recent edit to the <code>MLModel</code>. The time is expressed in epoch time.</p>
-- @param _TrainingDataSourceId [EntityId] <p>The ID of the training <code>DataSource</code>. The <code>CreateMLModel</code> operation uses the <code>TrainingDataSourceId</code>.</p>
-- @param _StartedAt [EpochTime] 
-- @param _Message [Message] <p>A description of the most recent details about accessing the <code>MLModel</code>.</p>
-- @param _CreatedAt [EpochTime] <p>The time that the <code>MLModel</code> was created. The time is expressed in epoch time.</p>
-- @param _FinishedAt [EpochTime] 
function M.MLModel(_Status, _SizeInBytes, _ComputeTime, _Name, _Algorithm, _ScoreThreshold, _TrainingParameters, _MLModelType, _CreatedByIamUser, _ScoreThresholdLastUpdatedAt, _EndpointInfo, _MLModelId, _InputDataLocationS3, _LastUpdatedAt, _TrainingDataSourceId, _StartedAt, _Message, _CreatedAt, _FinishedAt, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MLModel")
	local t = { 
		["Status"] = _Status,
		["SizeInBytes"] = _SizeInBytes,
		["ComputeTime"] = _ComputeTime,
		["Name"] = _Name,
		["Algorithm"] = _Algorithm,
		["ScoreThreshold"] = _ScoreThreshold,
		["TrainingParameters"] = _TrainingParameters,
		["MLModelType"] = _MLModelType,
		["CreatedByIamUser"] = _CreatedByIamUser,
		["ScoreThresholdLastUpdatedAt"] = _ScoreThresholdLastUpdatedAt,
		["EndpointInfo"] = _EndpointInfo,
		["MLModelId"] = _MLModelId,
		["InputDataLocationS3"] = _InputDataLocationS3,
		["LastUpdatedAt"] = _LastUpdatedAt,
		["TrainingDataSourceId"] = _TrainingDataSourceId,
		["StartedAt"] = _StartedAt,
		["Message"] = _Message,
		["CreatedAt"] = _CreatedAt,
		["FinishedAt"] = _FinishedAt,
	}
	asserts.AssertMLModel(t)
	return t
end

keys.InvalidTagException = { ["message"] = true, nil }

function asserts.AssertInvalidTagException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidTagException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidTagException[k], "InvalidTagException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidTagException
--  
-- @param _message [ErrorMessage] 
function M.InvalidTagException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidTagException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertInvalidTagException(t)
	return t
end

keys.UpdateBatchPredictionInput = { ["BatchPredictionId"] = true, ["BatchPredictionName"] = true, nil }

function asserts.AssertUpdateBatchPredictionInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateBatchPredictionInput to be of type 'table'")
	assert(struct["BatchPredictionId"], "Expected key BatchPredictionId to exist in table")
	assert(struct["BatchPredictionName"], "Expected key BatchPredictionName to exist in table")
	if struct["BatchPredictionId"] then asserts.AssertEntityId(struct["BatchPredictionId"]) end
	if struct["BatchPredictionName"] then asserts.AssertEntityName(struct["BatchPredictionName"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateBatchPredictionInput[k], "UpdateBatchPredictionInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateBatchPredictionInput
--  
-- @param _BatchPredictionId [EntityId] <p>The ID assigned to the <code>BatchPrediction</code> during creation.</p>
-- @param _BatchPredictionName [EntityName] <p>A new user-supplied name or description of the <code>BatchPrediction</code>.</p>
-- Required parameter: BatchPredictionId
-- Required parameter: BatchPredictionName
function M.UpdateBatchPredictionInput(_BatchPredictionId, _BatchPredictionName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateBatchPredictionInput")
	local t = { 
		["BatchPredictionId"] = _BatchPredictionId,
		["BatchPredictionName"] = _BatchPredictionName,
	}
	asserts.AssertUpdateBatchPredictionInput(t)
	return t
end

keys.RedshiftMetadata = { ["RedshiftDatabase"] = true, ["DatabaseUserName"] = true, ["SelectSqlQuery"] = true, nil }

function asserts.AssertRedshiftMetadata(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RedshiftMetadata to be of type 'table'")
	if struct["RedshiftDatabase"] then asserts.AssertRedshiftDatabase(struct["RedshiftDatabase"]) end
	if struct["DatabaseUserName"] then asserts.AssertRedshiftDatabaseUsername(struct["DatabaseUserName"]) end
	if struct["SelectSqlQuery"] then asserts.AssertRedshiftSelectSqlQuery(struct["SelectSqlQuery"]) end
	for k,_ in pairs(struct) do
		assert(keys.RedshiftMetadata[k], "RedshiftMetadata contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RedshiftMetadata
-- <p>Describes the <code>DataSource</code> details specific to Amazon Redshift.</p>
-- @param _RedshiftDatabase [RedshiftDatabase] 
-- @param _DatabaseUserName [RedshiftDatabaseUsername] 
-- @param _SelectSqlQuery [RedshiftSelectSqlQuery] <p> The SQL query that is specified during <a>CreateDataSourceFromRedshift</a>. Returns only if <code>Verbose</code> is true in GetDataSourceInput. </p>
function M.RedshiftMetadata(_RedshiftDatabase, _DatabaseUserName, _SelectSqlQuery, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RedshiftMetadata")
	local t = { 
		["RedshiftDatabase"] = _RedshiftDatabase,
		["DatabaseUserName"] = _DatabaseUserName,
		["SelectSqlQuery"] = _SelectSqlQuery,
	}
	asserts.AssertRedshiftMetadata(t)
	return t
end

keys.UpdateBatchPredictionOutput = { ["BatchPredictionId"] = true, nil }

function asserts.AssertUpdateBatchPredictionOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateBatchPredictionOutput to be of type 'table'")
	if struct["BatchPredictionId"] then asserts.AssertEntityId(struct["BatchPredictionId"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateBatchPredictionOutput[k], "UpdateBatchPredictionOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateBatchPredictionOutput
-- <p>Represents the output of an <code>UpdateBatchPrediction</code> operation.</p> <p>You can see the updated content by using the <code>GetBatchPrediction</code> operation.</p>
-- @param _BatchPredictionId [EntityId] <p>The ID assigned to the <code>BatchPrediction</code> during creation. This value should be identical to the value of the <code>BatchPredictionId</code> in the request.</p>
function M.UpdateBatchPredictionOutput(_BatchPredictionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateBatchPredictionOutput")
	local t = { 
		["BatchPredictionId"] = _BatchPredictionId,
	}
	asserts.AssertUpdateBatchPredictionOutput(t)
	return t
end

keys.UpdateMLModelOutput = { ["MLModelId"] = true, nil }

function asserts.AssertUpdateMLModelOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateMLModelOutput to be of type 'table'")
	if struct["MLModelId"] then asserts.AssertEntityId(struct["MLModelId"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateMLModelOutput[k], "UpdateMLModelOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateMLModelOutput
-- <p>Represents the output of an <code>UpdateMLModel</code> operation.</p> <p>You can see the updated content by using the <code>GetMLModel</code> operation.</p>
-- @param _MLModelId [EntityId] <p>The ID assigned to the <code>MLModel</code> during creation. This value should be identical to the value of the <code>MLModelID</code> in the request.</p>
function M.UpdateMLModelOutput(_MLModelId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateMLModelOutput")
	local t = { 
		["MLModelId"] = _MLModelId,
	}
	asserts.AssertUpdateMLModelOutput(t)
	return t
end

keys.GetMLModelOutput = { ["Status"] = true, ["SizeInBytes"] = true, ["ComputeTime"] = true, ["Name"] = true, ["ScoreThreshold"] = true, ["TrainingParameters"] = true, ["MLModelType"] = true, ["CreatedByIamUser"] = true, ["Recipe"] = true, ["ScoreThresholdLastUpdatedAt"] = true, ["EndpointInfo"] = true, ["MLModelId"] = true, ["InputDataLocationS3"] = true, ["LastUpdatedAt"] = true, ["TrainingDataSourceId"] = true, ["StartedAt"] = true, ["LogUri"] = true, ["Schema"] = true, ["Message"] = true, ["CreatedAt"] = true, ["FinishedAt"] = true, nil }

function asserts.AssertGetMLModelOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetMLModelOutput to be of type 'table'")
	if struct["Status"] then asserts.AssertEntityStatus(struct["Status"]) end
	if struct["SizeInBytes"] then asserts.AssertLongType(struct["SizeInBytes"]) end
	if struct["ComputeTime"] then asserts.AssertLongType(struct["ComputeTime"]) end
	if struct["Name"] then asserts.AssertMLModelName(struct["Name"]) end
	if struct["ScoreThreshold"] then asserts.AssertScoreThreshold(struct["ScoreThreshold"]) end
	if struct["TrainingParameters"] then asserts.AssertTrainingParameters(struct["TrainingParameters"]) end
	if struct["MLModelType"] then asserts.AssertMLModelType(struct["MLModelType"]) end
	if struct["CreatedByIamUser"] then asserts.AssertAwsUserArn(struct["CreatedByIamUser"]) end
	if struct["Recipe"] then asserts.AssertRecipe(struct["Recipe"]) end
	if struct["ScoreThresholdLastUpdatedAt"] then asserts.AssertEpochTime(struct["ScoreThresholdLastUpdatedAt"]) end
	if struct["EndpointInfo"] then asserts.AssertRealtimeEndpointInfo(struct["EndpointInfo"]) end
	if struct["MLModelId"] then asserts.AssertEntityId(struct["MLModelId"]) end
	if struct["InputDataLocationS3"] then asserts.AssertS3Url(struct["InputDataLocationS3"]) end
	if struct["LastUpdatedAt"] then asserts.AssertEpochTime(struct["LastUpdatedAt"]) end
	if struct["TrainingDataSourceId"] then asserts.AssertEntityId(struct["TrainingDataSourceId"]) end
	if struct["StartedAt"] then asserts.AssertEpochTime(struct["StartedAt"]) end
	if struct["LogUri"] then asserts.AssertPresignedS3Url(struct["LogUri"]) end
	if struct["Schema"] then asserts.AssertDataSchema(struct["Schema"]) end
	if struct["Message"] then asserts.AssertMessage(struct["Message"]) end
	if struct["CreatedAt"] then asserts.AssertEpochTime(struct["CreatedAt"]) end
	if struct["FinishedAt"] then asserts.AssertEpochTime(struct["FinishedAt"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetMLModelOutput[k], "GetMLModelOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetMLModelOutput
-- <p>Represents the output of a <code>GetMLModel</code> operation, and provides detailed information about a <code>MLModel</code>.</p>
-- @param _Status [EntityStatus] <p>The current status of the <code>MLModel</code>. This element can have one of the following values:</p> <ul> <li> <code>PENDING</code> - Amazon Machine Learning (Amazon ML) submitted a request to describe a <code>MLModel</code>.</li> <li> <code>INPROGRESS</code> - The request is processing.</li> <li> <code>FAILED</code> - The request did not run to completion. The ML model isn't usable.</li> <li> <code>COMPLETED</code> - The request completed successfully.</li> <li> <code>DELETED</code> - The <code>MLModel</code> is marked as deleted. It isn't usable.</li> </ul>
-- @param _SizeInBytes [LongType] 
-- @param _ComputeTime [LongType] <p>The approximate CPU time in milliseconds that Amazon Machine Learning spent processing the <code>MLModel</code>, normalized and scaled on computation resources. <code>ComputeTime</code> is only available if the <code>MLModel</code> is in the <code>COMPLETED</code> state.</p>
-- @param _Name [MLModelName] <p>A user-supplied name or description of the <code>MLModel</code>.</p>
-- @param _ScoreThreshold [ScoreThreshold] <p>The scoring threshold is used in binary classification <code>MLModel</code><?oxy_insert_start author="laurama" timestamp="20160329T114851-0700"> <?oxy_insert_end>models. It marks the boundary between a positive prediction and a negative prediction.</p> <p>Output values greater than or equal to the threshold receive a positive result from the MLModel, such as <code>true</code>. Output values less than the threshold receive a negative response from the MLModel, such as <code>false</code>.</p>
-- @param _TrainingParameters [TrainingParameters] <p>A list of the training parameters in the <code>MLModel</code>. The list is implemented as a map of key-value pairs.</p> <p>The following is the current set of training parameters: </p> <ul> <li> <p><code>sgd.maxMLModelSizeInBytes</code> - The maximum allowed size of the model. Depending on the input data, the size of the model might affect its performance.</p> <p> The value is an integer that ranges from <code>100000</code> to <code>2147483648</code>. The default value is <code>33554432</code>.</p> </li> <li><p><code>sgd.maxPasses</code> - The number of times that the training process traverses the observations to build the <code>MLModel</code>. The value is an integer that ranges from <code>1</code> to <code>10000</code>. The default value is <code>10</code>.</p></li> <li><p><code>sgd.shuffleType</code> - Whether Amazon ML shuffles the training data. Shuffling data improves a model's ability to find the optimal solution for a variety of data types. The valid values are <code>auto</code> and <code>none</code>. The default value is <code>none</code>. We strongly recommend that you shuffle your data.</p></li> <li> <p><code>sgd.l1RegularizationAmount</code> - The coefficient regularization L1 norm. It controls overfitting the data by penalizing large coefficients. This tends to drive coefficients to zero, resulting in a sparse feature set. If you use this parameter, start by specifying a small value, such as <code>1.0E-08</code>.</p> <p>The value is a double that ranges from <code>0</code> to <code>MAX_DOUBLE</code>. The default is to not use L1 normalization. This parameter can't be used when <code>L2</code> is specified. Use this parameter sparingly.</p> </li> <li> <p><code>sgd.l2RegularizationAmount</code> - The coefficient regularization L2 norm. It controls overfitting the data by penalizing large coefficients. This tends to drive coefficients to small, nonzero values. If you use this parameter, start by specifying a small value, such as <code>1.0E-08</code>.</p> <p>The value is a double that ranges from <code>0</code> to <code>MAX_DOUBLE</code>. The default is to not use L2 normalization. This parameter can't be used when <code>L1</code> is specified. Use this parameter sparingly.</p> </li> </ul>
-- @param _MLModelType [MLModelType] <p>Identifies the <code>MLModel</code> category. The following are the available types: </p> <ul> <li>REGRESSION -- Produces a numeric result. For example, "What price should a house be listed at?"</li> <li>BINARY -- Produces one of two possible results. For example, "Is this an e-commerce website?"</li> <li>MULTICLASS -- Produces one of several possible results. For example, "Is this a HIGH, LOW or MEDIUM risk trade?"</li> </ul>
-- @param _CreatedByIamUser [AwsUserArn] <p>The AWS user account from which the <code>MLModel</code> was created. The account type can be either an AWS root account or an AWS Identity and Access Management (IAM) user account.</p>
-- @param _Recipe [Recipe] <p>The recipe to use when training the <code>MLModel</code>. The <code>Recipe</code> provides detailed information about the observation data to use during training, and manipulations to perform on the observation data during training.</p> <note><title>Note</title> <p>This parameter is provided as part of the verbose format.</p></note>
-- @param _ScoreThresholdLastUpdatedAt [EpochTime] <p>The time of the most recent edit to the <code>ScoreThreshold</code>. The time is expressed in epoch time.</p>
-- @param _EndpointInfo [RealtimeEndpointInfo] <p>The current endpoint of the <code>MLModel</code></p>
-- @param _MLModelId [EntityId] <p>The MLModel ID<?oxy_insert_start author="annbech" timestamp="20160328T151251-0700">,<?oxy_insert_end> which is same as the <code>MLModelId</code> in the request.</p>
-- @param _InputDataLocationS3 [S3Url] <p>The location of the data file or directory in Amazon Simple Storage Service (Amazon S3).</p>
-- @param _LastUpdatedAt [EpochTime] <p>The time of the most recent edit to the <code>MLModel</code>. The time is expressed in epoch time.</p>
-- @param _TrainingDataSourceId [EntityId] <p>The ID of the training <code>DataSource</code>.</p>
-- @param _StartedAt [EpochTime] <p>The epoch time when Amazon Machine Learning marked the <code>MLModel</code> as <code>INPROGRESS</code>. <code>StartedAt</code> isn't available if the <code>MLModel</code> is in the <code>PENDING</code> state.</p>
-- @param _LogUri [PresignedS3Url] <p>A link to the file that contains logs of the <code>CreateMLModel</code> operation.</p>
-- @param _Schema [DataSchema] <p>The schema used by all of the data files referenced by the <code>DataSource</code>.</p> <note><title>Note</title> <p>This parameter is provided as part of the verbose format.</p></note>
-- @param _Message [Message] <p>A description of the most recent details about accessing the <code>MLModel</code>.</p>
-- @param _CreatedAt [EpochTime] <p>The time that the <code>MLModel</code> was created. The time is expressed in epoch time.</p>
-- @param _FinishedAt [EpochTime] <p>The epoch time when Amazon Machine Learning marked the <code>MLModel</code> as <code>COMPLETED</code> or <code>FAILED</code>. <code>FinishedAt</code> is only available when the <code>MLModel</code> is in the <code>COMPLETED</code> or <code>FAILED</code> state.</p>
function M.GetMLModelOutput(_Status, _SizeInBytes, _ComputeTime, _Name, _ScoreThreshold, _TrainingParameters, _MLModelType, _CreatedByIamUser, _Recipe, _ScoreThresholdLastUpdatedAt, _EndpointInfo, _MLModelId, _InputDataLocationS3, _LastUpdatedAt, _TrainingDataSourceId, _StartedAt, _LogUri, _Schema, _Message, _CreatedAt, _FinishedAt, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetMLModelOutput")
	local t = { 
		["Status"] = _Status,
		["SizeInBytes"] = _SizeInBytes,
		["ComputeTime"] = _ComputeTime,
		["Name"] = _Name,
		["ScoreThreshold"] = _ScoreThreshold,
		["TrainingParameters"] = _TrainingParameters,
		["MLModelType"] = _MLModelType,
		["CreatedByIamUser"] = _CreatedByIamUser,
		["Recipe"] = _Recipe,
		["ScoreThresholdLastUpdatedAt"] = _ScoreThresholdLastUpdatedAt,
		["EndpointInfo"] = _EndpointInfo,
		["MLModelId"] = _MLModelId,
		["InputDataLocationS3"] = _InputDataLocationS3,
		["LastUpdatedAt"] = _LastUpdatedAt,
		["TrainingDataSourceId"] = _TrainingDataSourceId,
		["StartedAt"] = _StartedAt,
		["LogUri"] = _LogUri,
		["Schema"] = _Schema,
		["Message"] = _Message,
		["CreatedAt"] = _CreatedAt,
		["FinishedAt"] = _FinishedAt,
	}
	asserts.AssertGetMLModelOutput(t)
	return t
end

keys.DescribeTagsInput = { ["ResourceType"] = true, ["ResourceId"] = true, nil }

function asserts.AssertDescribeTagsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTagsInput to be of type 'table'")
	assert(struct["ResourceId"], "Expected key ResourceId to exist in table")
	assert(struct["ResourceType"], "Expected key ResourceType to exist in table")
	if struct["ResourceType"] then asserts.AssertTaggableResourceType(struct["ResourceType"]) end
	if struct["ResourceId"] then asserts.AssertEntityId(struct["ResourceId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeTagsInput[k], "DescribeTagsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTagsInput
--  
-- @param _ResourceType [TaggableResourceType] <p>The type of the ML object.</p>
-- @param _ResourceId [EntityId] <p>The ID of the ML object. For example, <code>exampleModelId</code>. </p>
-- Required parameter: ResourceId
-- Required parameter: ResourceType
function M.DescribeTagsInput(_ResourceType, _ResourceId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeTagsInput")
	local t = { 
		["ResourceType"] = _ResourceType,
		["ResourceId"] = _ResourceId,
	}
	asserts.AssertDescribeTagsInput(t)
	return t
end

keys.RedshiftDataSpec = { ["DatabaseCredentials"] = true, ["DataSchemaUri"] = true, ["DatabaseInformation"] = true, ["DataSchema"] = true, ["DataRearrangement"] = true, ["S3StagingLocation"] = true, ["SelectSqlQuery"] = true, nil }

function asserts.AssertRedshiftDataSpec(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RedshiftDataSpec to be of type 'table'")
	assert(struct["DatabaseInformation"], "Expected key DatabaseInformation to exist in table")
	assert(struct["SelectSqlQuery"], "Expected key SelectSqlQuery to exist in table")
	assert(struct["DatabaseCredentials"], "Expected key DatabaseCredentials to exist in table")
	assert(struct["S3StagingLocation"], "Expected key S3StagingLocation to exist in table")
	if struct["DatabaseCredentials"] then asserts.AssertRedshiftDatabaseCredentials(struct["DatabaseCredentials"]) end
	if struct["DataSchemaUri"] then asserts.AssertS3Url(struct["DataSchemaUri"]) end
	if struct["DatabaseInformation"] then asserts.AssertRedshiftDatabase(struct["DatabaseInformation"]) end
	if struct["DataSchema"] then asserts.AssertDataSchema(struct["DataSchema"]) end
	if struct["DataRearrangement"] then asserts.AssertDataRearrangement(struct["DataRearrangement"]) end
	if struct["S3StagingLocation"] then asserts.AssertS3Url(struct["S3StagingLocation"]) end
	if struct["SelectSqlQuery"] then asserts.AssertRedshiftSelectSqlQuery(struct["SelectSqlQuery"]) end
	for k,_ in pairs(struct) do
		assert(keys.RedshiftDataSpec[k], "RedshiftDataSpec contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RedshiftDataSpec
-- <p>Describes the data specification of an Amazon Redshift <code>DataSource</code>.</p>
-- @param _DatabaseCredentials [RedshiftDatabaseCredentials] <p>Describes AWS Identity and Access Management (IAM) credentials that are used connect to the Amazon Redshift database.</p>
-- @param _DataSchemaUri [S3Url] <p>Describes the schema location for an Amazon Redshift <code>DataSource</code>.</p>
-- @param _DatabaseInformation [RedshiftDatabase] <p>Describes the <code>DatabaseName</code> and <code>ClusterIdentifier</code> for an Amazon Redshift <code>DataSource</code>.</p>
-- @param _DataSchema [DataSchema] <p>A JSON string that represents the schema for an Amazon Redshift <code>DataSource</code>. The <code>DataSchema</code> defines the structure of the observation data in the data file(s) referenced in the <code>DataSource</code>.</p> <p>A <code>DataSchema</code> is not required if you specify a <code>DataSchemaUri</code>.</p> <p>Define your <code>DataSchema</code> as a series of key-value pairs. <code>attributes</code> and <code>excludedVariableNames</code> have an array of key-value pairs for their value. Use the following format to define your <code>DataSchema</code>.</p> <p>{ "version": "1.0",</p> <p> "recordAnnotationFieldName": "F1",</p> <p> "recordWeightFieldName": "F2",</p> <p> "targetFieldName": "F3",</p> <p> "dataFormat": "CSV",</p> <p> "dataFileContainsHeader": true,</p> <p> "attributes": [</p> <p> { "fieldName": "F1", "fieldType": "TEXT" }, { "fieldName": "F2", "fieldType": "NUMERIC" }, { "fieldName": "F3", "fieldType": "CATEGORICAL" }, { "fieldName": "F4", "fieldType": "NUMERIC" }, { "fieldName": "F5", "fieldType": "CATEGORICAL" }, { "fieldName": "F6", "fieldType": "TEXT" }, { "fieldName": "F7", "fieldType": "WEIGHTED_INT_SEQUENCE" }, { "fieldName": "F8", "fieldType": "WEIGHTED_STRING_SEQUENCE" } ],</p> <p> "excludedVariableNames": [ "F6" ] } </p>
-- @param _DataRearrangement [DataRearrangement] <p>A JSON string that represents the splitting and rearrangement processing to be applied to a <code>DataSource</code>. If the <code>DataRearrangement</code> parameter is not provided, all of the input data is used to create the <code>Datasource</code>.</p> <p>There are multiple parameters that control what data is used to create a datasource:</p> <ul> <li><p><b><code>percentBegin</code></b></p> <p>Use <code>percentBegin</code> to indicate the beginning of the range of the data used to create the Datasource. If you do not include <code>percentBegin</code> and <code>percentEnd</code>, Amazon ML includes all of the data when creating the datasource.</p></li> <li><p><b><code>percentEnd</code></b></p> <p>Use <code>percentEnd</code> to indicate the end of the range of the data used to create the Datasource. If you do not include <code>percentBegin</code> and <code>percentEnd</code>, Amazon ML includes all of the data when creating the datasource.</p></li> <li><p><b><code>complement</code></b></p> <p>The <code>complement</code> parameter instructs Amazon ML to use the data that is not included in the range of <code>percentBegin</code> to <code>percentEnd</code> to create a datasource. The <code>complement</code> parameter is useful if you need to create complementary datasources for training and evaluation. To create a complementary datasource, use the same values for <code>percentBegin</code> and <code>percentEnd</code>, along with the <code>complement</code> parameter.</p> <p>For example, the following two datasources do not share any data, and can be used to train and evaluate a model. The first datasource has 25 percent of the data, and the second one has 75 percent of the data.</p> <p>Datasource for evaluation: <code>{"splitting":{"percentBegin":0, "percentEnd":25}}</code></p> <p>Datasource for training: <code>{"splitting":{"percentBegin":0, "percentEnd":25, "complement":"true"}}</code></p> </li> <li><p><b><code>strategy</code></b></p> <p>To change how Amazon ML splits the data for a datasource, use the <code>strategy</code> parameter.</p> <p>The default value for the <code>strategy</code> parameter is <code>sequential</code>, meaning that Amazon ML takes all of the data records between the <code>percentBegin</code> and <code>percentEnd</code> parameters for the datasource, in the order that the records appear in the input data.</p> <p>The following two <code>DataRearrangement</code> lines are examples of sequentially ordered training and evaluation datasources:</p> <p>Datasource for evaluation: <code>{"splitting":{"percentBegin":70, "percentEnd":100, "strategy":"sequential"}}</code></p> <p>Datasource for training: <code>{"splitting":{"percentBegin":70, "percentEnd":100, "strategy":"sequential", "complement":"true"}}</code></p> <p>To randomly split the input data into the proportions indicated by the percentBegin and percentEnd parameters, set the <code>strategy</code> parameter to <code>random</code> and provide a string that is used as the seed value for the random data splitting (for example, you can use the S3 path to your data as the random seed string). If you choose the random split strategy, Amazon ML assigns each row of data a pseudo-random number between 0 and 100, and then selects the rows that have an assigned number between <code>percentBegin</code> and <code>percentEnd</code>. Pseudo-random numbers are assigned using both the input seed string value and the byte offset as a seed, so changing the data results in a different split. Any existing ordering is preserved. The random splitting strategy ensures that variables in the training and evaluation data are distributed similarly. It is useful in the cases where the input data may have an implicit sort order, which would otherwise result in training and evaluation datasources containing non-similar data records.</p> <p>The following two <code>DataRearrangement</code> lines are examples of non-sequentially ordered training and evaluation datasources:</p> <p>Datasource for evaluation: <code>{"splitting":{"percentBegin":70, "percentEnd":100, "strategy":"random", "randomSeed"="s3://my_s3_path/bucket/file.csv"}}</code></p> <p>Datasource for training: <code>{"splitting":{"percentBegin":70, "percentEnd":100, "strategy":"random", "randomSeed"="s3://my_s3_path/bucket/file.csv", "complement":"true"}}</code></p> </li> </ul>
-- @param _S3StagingLocation [S3Url] <p>Describes an Amazon S3 location to store the result set of the <code>SelectSqlQuery</code> query.</p>
-- @param _SelectSqlQuery [RedshiftSelectSqlQuery] <p>Describes the SQL Query to execute on an Amazon Redshift database for an Amazon Redshift <code>DataSource</code>.</p>
-- Required parameter: DatabaseInformation
-- Required parameter: SelectSqlQuery
-- Required parameter: DatabaseCredentials
-- Required parameter: S3StagingLocation
function M.RedshiftDataSpec(_DatabaseCredentials, _DataSchemaUri, _DatabaseInformation, _DataSchema, _DataRearrangement, _S3StagingLocation, _SelectSqlQuery, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RedshiftDataSpec")
	local t = { 
		["DatabaseCredentials"] = _DatabaseCredentials,
		["DataSchemaUri"] = _DataSchemaUri,
		["DatabaseInformation"] = _DatabaseInformation,
		["DataSchema"] = _DataSchema,
		["DataRearrangement"] = _DataRearrangement,
		["S3StagingLocation"] = _S3StagingLocation,
		["SelectSqlQuery"] = _SelectSqlQuery,
	}
	asserts.AssertRedshiftDataSpec(t)
	return t
end

keys.IdempotentParameterMismatchException = { ["message"] = true, ["code"] = true, nil }

function asserts.AssertIdempotentParameterMismatchException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IdempotentParameterMismatchException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	if struct["code"] then asserts.AssertErrorCode(struct["code"]) end
	for k,_ in pairs(struct) do
		assert(keys.IdempotentParameterMismatchException[k], "IdempotentParameterMismatchException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IdempotentParameterMismatchException
-- <p>A second request to use or change an object was not allowed. This can result from retrying a request using a parameter that was not present in the original request.</p>
-- @param _message [ErrorMessage] 
-- @param _code [ErrorCode] 
function M.IdempotentParameterMismatchException(_message, _code, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating IdempotentParameterMismatchException")
	local t = { 
		["message"] = _message,
		["code"] = _code,
	}
	asserts.AssertIdempotentParameterMismatchException(t)
	return t
end

keys.GetBatchPredictionInput = { ["BatchPredictionId"] = true, nil }

function asserts.AssertGetBatchPredictionInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBatchPredictionInput to be of type 'table'")
	assert(struct["BatchPredictionId"], "Expected key BatchPredictionId to exist in table")
	if struct["BatchPredictionId"] then asserts.AssertEntityId(struct["BatchPredictionId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetBatchPredictionInput[k], "GetBatchPredictionInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBatchPredictionInput
--  
-- @param _BatchPredictionId [EntityId] <p>An ID assigned to the <code>BatchPrediction</code> at creation.</p>
-- Required parameter: BatchPredictionId
function M.GetBatchPredictionInput(_BatchPredictionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetBatchPredictionInput")
	local t = { 
		["BatchPredictionId"] = _BatchPredictionId,
	}
	asserts.AssertGetBatchPredictionInput(t)
	return t
end

keys.RedshiftDatabaseCredentials = { ["Username"] = true, ["Password"] = true, nil }

function asserts.AssertRedshiftDatabaseCredentials(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RedshiftDatabaseCredentials to be of type 'table'")
	assert(struct["Username"], "Expected key Username to exist in table")
	assert(struct["Password"], "Expected key Password to exist in table")
	if struct["Username"] then asserts.AssertRedshiftDatabaseUsername(struct["Username"]) end
	if struct["Password"] then asserts.AssertRedshiftDatabasePassword(struct["Password"]) end
	for k,_ in pairs(struct) do
		assert(keys.RedshiftDatabaseCredentials[k], "RedshiftDatabaseCredentials contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RedshiftDatabaseCredentials
-- <p> Describes the database credentials for connecting to a database on an Amazon Redshift cluster.</p>
-- @param _Username [RedshiftDatabaseUsername] 
-- @param _Password [RedshiftDatabasePassword] 
-- Required parameter: Username
-- Required parameter: Password
function M.RedshiftDatabaseCredentials(_Username, _Password, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RedshiftDatabaseCredentials")
	local t = { 
		["Username"] = _Username,
		["Password"] = _Password,
	}
	asserts.AssertRedshiftDatabaseCredentials(t)
	return t
end

keys.DeleteBatchPredictionInput = { ["BatchPredictionId"] = true, nil }

function asserts.AssertDeleteBatchPredictionInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteBatchPredictionInput to be of type 'table'")
	assert(struct["BatchPredictionId"], "Expected key BatchPredictionId to exist in table")
	if struct["BatchPredictionId"] then asserts.AssertEntityId(struct["BatchPredictionId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteBatchPredictionInput[k], "DeleteBatchPredictionInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteBatchPredictionInput
--  
-- @param _BatchPredictionId [EntityId] <p>A user-supplied ID that uniquely identifies the <code>BatchPrediction</code>.</p>
-- Required parameter: BatchPredictionId
function M.DeleteBatchPredictionInput(_BatchPredictionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteBatchPredictionInput")
	local t = { 
		["BatchPredictionId"] = _BatchPredictionId,
	}
	asserts.AssertDeleteBatchPredictionInput(t)
	return t
end

keys.DescribeEvaluationsOutput = { ["NextToken"] = true, ["Results"] = true, nil }

function asserts.AssertDescribeEvaluationsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEvaluationsOutput to be of type 'table'")
	if struct["NextToken"] then asserts.AssertStringType(struct["NextToken"]) end
	if struct["Results"] then asserts.AssertEvaluations(struct["Results"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeEvaluationsOutput[k], "DescribeEvaluationsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEvaluationsOutput
-- <p>Represents the query results from a <code>DescribeEvaluations</code> operation. The content is essentially a list of <code>Evaluation</code>.</p>
-- @param _NextToken [StringType] <p>The ID of the next page in the paginated results that indicates at least one more page follows.</p>
-- @param _Results [Evaluations] <p>A list of <code>Evaluation</code> that meet the search criteria. </p>
function M.DescribeEvaluationsOutput(_NextToken, _Results, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeEvaluationsOutput")
	local t = { 
		["NextToken"] = _NextToken,
		["Results"] = _Results,
	}
	asserts.AssertDescribeEvaluationsOutput(t)
	return t
end

keys.UpdateEvaluationInput = { ["EvaluationId"] = true, ["EvaluationName"] = true, nil }

function asserts.AssertUpdateEvaluationInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateEvaluationInput to be of type 'table'")
	assert(struct["EvaluationId"], "Expected key EvaluationId to exist in table")
	assert(struct["EvaluationName"], "Expected key EvaluationName to exist in table")
	if struct["EvaluationId"] then asserts.AssertEntityId(struct["EvaluationId"]) end
	if struct["EvaluationName"] then asserts.AssertEntityName(struct["EvaluationName"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateEvaluationInput[k], "UpdateEvaluationInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateEvaluationInput
--  
-- @param _EvaluationId [EntityId] <p>The ID assigned to the <code>Evaluation</code> during creation.</p>
-- @param _EvaluationName [EntityName] <p>A new user-supplied name or description of the <code>Evaluation</code> that will replace the current content. </p>
-- Required parameter: EvaluationId
-- Required parameter: EvaluationName
function M.UpdateEvaluationInput(_EvaluationId, _EvaluationName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateEvaluationInput")
	local t = { 
		["EvaluationId"] = _EvaluationId,
		["EvaluationName"] = _EvaluationName,
	}
	asserts.AssertUpdateEvaluationInput(t)
	return t
end

keys.PerformanceMetrics = { ["Properties"] = true, nil }

function asserts.AssertPerformanceMetrics(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PerformanceMetrics to be of type 'table'")
	if struct["Properties"] then asserts.AssertPerformanceMetricsProperties(struct["Properties"]) end
	for k,_ in pairs(struct) do
		assert(keys.PerformanceMetrics[k], "PerformanceMetrics contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PerformanceMetrics
-- <p>Measurements of how well the <code>MLModel</code> performed on known observations. One of the following metrics is returned, based on the type of the <code>MLModel</code>: </p> <ul> <li> <p>BinaryAUC: The binary <code>MLModel</code> uses the Area Under the Curve (AUC) technique to measure performance. </p> </li> <li> <p>RegressionRMSE: The regression <code>MLModel</code> uses the Root Mean Square Error (RMSE) technique to measure performance. RMSE measures the difference between predicted and actual values for a single variable.</p> </li> <li> <p>MulticlassAvgFScore: The multiclass <code>MLModel</code> uses the F1 score technique to measure performance. </p> </li> </ul> <p> For more information about performance metrics, please see the <a href="http://docs.aws.amazon.com/machine-learning/latest/dg">Amazon Machine Learning Developer Guide</a>. </p>
-- @param _Properties [PerformanceMetricsProperties] 
function M.PerformanceMetrics(_Properties, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PerformanceMetrics")
	local t = { 
		["Properties"] = _Properties,
	}
	asserts.AssertPerformanceMetrics(t)
	return t
end

keys.InvalidInputException = { ["message"] = true, ["code"] = true, nil }

function asserts.AssertInvalidInputException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidInputException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	if struct["code"] then asserts.AssertErrorCode(struct["code"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidInputException[k], "InvalidInputException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidInputException
-- <p>An error on the client occurred. Typically, the cause is an invalid input value.</p>
-- @param _message [ErrorMessage] 
-- @param _code [ErrorCode] 
function M.InvalidInputException(_message, _code, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidInputException")
	local t = { 
		["message"] = _message,
		["code"] = _code,
	}
	asserts.AssertInvalidInputException(t)
	return t
end

keys.LimitExceededException = { ["message"] = true, ["code"] = true, nil }

function asserts.AssertLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LimitExceededException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	if struct["code"] then asserts.AssertErrorCode(struct["code"]) end
	for k,_ in pairs(struct) do
		assert(keys.LimitExceededException[k], "LimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LimitExceededException
-- <p>The subscriber exceeded the maximum number of operations. This exception can occur when listing objects such as <code>DataSource</code>.</p>
-- @param _message [ErrorMessage] 
-- @param _code [ErrorCode] 
function M.LimitExceededException(_message, _code, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LimitExceededException")
	local t = { 
		["message"] = _message,
		["code"] = _code,
	}
	asserts.AssertLimitExceededException(t)
	return t
end

keys.DescribeDataSourcesOutput = { ["NextToken"] = true, ["Results"] = true, nil }

function asserts.AssertDescribeDataSourcesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDataSourcesOutput to be of type 'table'")
	if struct["NextToken"] then asserts.AssertStringType(struct["NextToken"]) end
	if struct["Results"] then asserts.AssertDataSources(struct["Results"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeDataSourcesOutput[k], "DescribeDataSourcesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDataSourcesOutput
-- <p>Represents the query results from a <a>DescribeDataSources</a> operation. The content is essentially a list of <code>DataSource</code>.</p>
-- @param _NextToken [StringType] <p>An ID of the next page in the paginated results that indicates at least one more page follows.</p>
-- @param _Results [DataSources] <p>A list of <code>DataSource</code> that meet the search criteria. </p>
function M.DescribeDataSourcesOutput(_NextToken, _Results, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeDataSourcesOutput")
	local t = { 
		["NextToken"] = _NextToken,
		["Results"] = _Results,
	}
	asserts.AssertDescribeDataSourcesOutput(t)
	return t
end

keys.DescribeEvaluationsInput = { ["GT"] = true, ["FilterVariable"] = true, ["GE"] = true, ["NE"] = true, ["LT"] = true, ["LE"] = true, ["Limit"] = true, ["SortOrder"] = true, ["NextToken"] = true, ["EQ"] = true, ["Prefix"] = true, nil }

function asserts.AssertDescribeEvaluationsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEvaluationsInput to be of type 'table'")
	if struct["GT"] then asserts.AssertComparatorValue(struct["GT"]) end
	if struct["FilterVariable"] then asserts.AssertEvaluationFilterVariable(struct["FilterVariable"]) end
	if struct["GE"] then asserts.AssertComparatorValue(struct["GE"]) end
	if struct["NE"] then asserts.AssertComparatorValue(struct["NE"]) end
	if struct["LT"] then asserts.AssertComparatorValue(struct["LT"]) end
	if struct["LE"] then asserts.AssertComparatorValue(struct["LE"]) end
	if struct["Limit"] then asserts.AssertPageLimit(struct["Limit"]) end
	if struct["SortOrder"] then asserts.AssertSortOrder(struct["SortOrder"]) end
	if struct["NextToken"] then asserts.AssertStringType(struct["NextToken"]) end
	if struct["EQ"] then asserts.AssertComparatorValue(struct["EQ"]) end
	if struct["Prefix"] then asserts.AssertComparatorValue(struct["Prefix"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeEvaluationsInput[k], "DescribeEvaluationsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEvaluationsInput
--  
-- @param _GT [ComparatorValue] <p>The greater than operator. The <code>Evaluation</code> results will have <code>FilterVariable</code> values that are greater than the value specified with <code>GT</code>.</p>
-- @param _FilterVariable [EvaluationFilterVariable] <p>Use one of the following variable to filter a list of <code>Evaluation</code> objects:</p> <ul> <li> <code>CreatedAt</code> - Sets the search criteria to the <code>Evaluation</code> creation date.</li> <li> <code>Status</code> - Sets the search criteria to the <code>Evaluation</code> status.</li> <li> <code>Name</code> - Sets the search criteria to the contents of <code>Evaluation</code> <b> </b> <code>Name</code>.</li> <li> <code>IAMUser</code> - Sets the search criteria to the user account that invoked an <code>Evaluation</code>.</li> <li> <code>MLModelId</code> - Sets the search criteria to the <code>MLModel</code> that was evaluated.</li> <li> <code>DataSourceId</code> - Sets the search criteria to the <code>DataSource</code> used in <code>Evaluation</code>.</li> <li> <code>DataUri</code> - Sets the search criteria to the data file(s) used in <code>Evaluation</code>. The URL can identify either a file or an Amazon Simple Storage Solution (Amazon S3) bucket or directory.</li> </ul>
-- @param _GE [ComparatorValue] <p>The greater than or equal to operator. The <code>Evaluation</code> results will have <code>FilterVariable</code> values that are greater than or equal to the value specified with <code>GE</code>. </p>
-- @param _NE [ComparatorValue] <p>The not equal to operator. The <code>Evaluation</code> results will have <code>FilterVariable</code> values not equal to the value specified with <code>NE</code>.</p>
-- @param _LT [ComparatorValue] <p>The less than operator. The <code>Evaluation</code> results will have <code>FilterVariable</code> values that are less than the value specified with <code>LT</code>.</p>
-- @param _LE [ComparatorValue] <p>The less than or equal to operator. The <code>Evaluation</code> results will have <code>FilterVariable</code> values that are less than or equal to the value specified with <code>LE</code>.</p>
-- @param _Limit [PageLimit] <p> The maximum number of <code>Evaluation</code> to include in the result.</p>
-- @param _SortOrder [SortOrder] <p>A two-value parameter that determines the sequence of the resulting list of <code>Evaluation</code>.</p> <ul> <li> <code>asc</code> - Arranges the list in ascending order (A-Z, 0-9).</li> <li> <code>dsc</code> - Arranges the list in descending order (Z-A, 9-0).</li> </ul> <p>Results are sorted by <code>FilterVariable</code>.</p>
-- @param _NextToken [StringType] <p>The ID of the page in the paginated results.</p>
-- @param _EQ [ComparatorValue] <p>The equal to operator. The <code>Evaluation</code> results will have <code>FilterVariable</code> values that exactly match the value specified with <code>EQ</code>.</p>
-- @param _Prefix [ComparatorValue] <p>A string that is found at the beginning of a variable, such as <code>Name</code> or <code>Id</code>.</p> <p>For example, an <code>Evaluation</code> could have the <code>Name</code> <code>2014-09-09-HolidayGiftMailer</code>. To search for this <code>Evaluation</code>, select <code>Name</code> for the <code>FilterVariable</code> and any of the following strings for the <code>Prefix</code>: </p> <ul> <li><p>2014-09</p></li> <li><p>2014-09-09</p></li> <li><p>2014-09-09-Holiday</p></li> </ul>
function M.DescribeEvaluationsInput(_GT, _FilterVariable, _GE, _NE, _LT, _LE, _Limit, _SortOrder, _NextToken, _EQ, _Prefix, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeEvaluationsInput")
	local t = { 
		["GT"] = _GT,
		["FilterVariable"] = _FilterVariable,
		["GE"] = _GE,
		["NE"] = _NE,
		["LT"] = _LT,
		["LE"] = _LE,
		["Limit"] = _Limit,
		["SortOrder"] = _SortOrder,
		["NextToken"] = _NextToken,
		["EQ"] = _EQ,
		["Prefix"] = _Prefix,
	}
	asserts.AssertDescribeEvaluationsInput(t)
	return t
end

keys.CreateEvaluationInput = { ["MLModelId"] = true, ["EvaluationId"] = true, ["EvaluationName"] = true, ["EvaluationDataSourceId"] = true, nil }

function asserts.AssertCreateEvaluationInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateEvaluationInput to be of type 'table'")
	assert(struct["EvaluationId"], "Expected key EvaluationId to exist in table")
	assert(struct["MLModelId"], "Expected key MLModelId to exist in table")
	assert(struct["EvaluationDataSourceId"], "Expected key EvaluationDataSourceId to exist in table")
	if struct["MLModelId"] then asserts.AssertEntityId(struct["MLModelId"]) end
	if struct["EvaluationId"] then asserts.AssertEntityId(struct["EvaluationId"]) end
	if struct["EvaluationName"] then asserts.AssertEntityName(struct["EvaluationName"]) end
	if struct["EvaluationDataSourceId"] then asserts.AssertEntityId(struct["EvaluationDataSourceId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateEvaluationInput[k], "CreateEvaluationInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateEvaluationInput
--  
-- @param _MLModelId [EntityId] <p>The ID of the <code>MLModel</code> to evaluate.</p> <p>The schema used in creating the <code>MLModel</code> must match the schema of the <code>DataSource</code> used in the <code>Evaluation</code>.</p>
-- @param _EvaluationId [EntityId] <p>A user-supplied ID that uniquely identifies the <code>Evaluation</code>.</p>
-- @param _EvaluationName [EntityName] <p>A user-supplied name or description of the <code>Evaluation</code>.</p>
-- @param _EvaluationDataSourceId [EntityId] <p>The ID of the <code>DataSource</code> for the evaluation. The schema of the <code>DataSource</code> must match the schema used to create the <code>MLModel</code>.</p>
-- Required parameter: EvaluationId
-- Required parameter: MLModelId
-- Required parameter: EvaluationDataSourceId
function M.CreateEvaluationInput(_MLModelId, _EvaluationId, _EvaluationName, _EvaluationDataSourceId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateEvaluationInput")
	local t = { 
		["MLModelId"] = _MLModelId,
		["EvaluationId"] = _EvaluationId,
		["EvaluationName"] = _EvaluationName,
		["EvaluationDataSourceId"] = _EvaluationDataSourceId,
	}
	asserts.AssertCreateEvaluationInput(t)
	return t
end

keys.CreateMLModelOutput = { ["MLModelId"] = true, nil }

function asserts.AssertCreateMLModelOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateMLModelOutput to be of type 'table'")
	if struct["MLModelId"] then asserts.AssertEntityId(struct["MLModelId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateMLModelOutput[k], "CreateMLModelOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateMLModelOutput
-- <p> Represents the output of a <code>CreateMLModel</code> operation, and is an acknowledgement that Amazon ML received the request.</p> <p>The <code>CreateMLModel</code> operation is asynchronous. You can poll for status updates by using the <code>GetMLModel</code> operation and checking the <code>Status</code> parameter. </p>
-- @param _MLModelId [EntityId] <p>A user-supplied ID that uniquely identifies the <code>MLModel</code>. This value should be identical to the value of the <code>MLModelId</code> in the request. </p>
function M.CreateMLModelOutput(_MLModelId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateMLModelOutput")
	local t = { 
		["MLModelId"] = _MLModelId,
	}
	asserts.AssertCreateMLModelOutput(t)
	return t
end

keys.CreateDataSourceFromS3Input = { ["DataSourceName"] = true, ["ComputeStatistics"] = true, ["DataSourceId"] = true, ["DataSpec"] = true, nil }

function asserts.AssertCreateDataSourceFromS3Input(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDataSourceFromS3Input to be of type 'table'")
	assert(struct["DataSourceId"], "Expected key DataSourceId to exist in table")
	assert(struct["DataSpec"], "Expected key DataSpec to exist in table")
	if struct["DataSourceName"] then asserts.AssertEntityName(struct["DataSourceName"]) end
	if struct["ComputeStatistics"] then asserts.AssertComputeStatistics(struct["ComputeStatistics"]) end
	if struct["DataSourceId"] then asserts.AssertEntityId(struct["DataSourceId"]) end
	if struct["DataSpec"] then asserts.AssertS3DataSpec(struct["DataSpec"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateDataSourceFromS3Input[k], "CreateDataSourceFromS3Input contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDataSourceFromS3Input
--  
-- @param _DataSourceName [EntityName] <p>A user-supplied name or description of the <code>DataSource</code>. </p>
-- @param _ComputeStatistics [ComputeStatistics] <p>The compute statistics for a <code>DataSource</code>. The statistics are generated from the observation data referenced by a <code>DataSource</code>. Amazon ML uses the statistics internally during <code>MLModel</code> training. This parameter must be set to <code>true</code> if the <code></code>DataSource<code></code> needs to be used for <code>MLModel</code> training.</p>
-- @param _DataSourceId [EntityId] <p>A user-supplied identifier that uniquely identifies the <code>DataSource</code>. </p>
-- @param _DataSpec [S3DataSpec] <p>The data specification of a <code>DataSource</code>:</p> <ul> <li><p>DataLocationS3 - The Amazon S3 location of the observation data.</p></li> <li><p>DataSchemaLocationS3 - The Amazon S3 location of the <code>DataSchema</code>.</p></li> <li><p>DataSchema - A JSON string representing the schema. This is not required if <code>DataSchemaUri</code> is specified. </p></li> <li> <p>DataRearrangement - A JSON string that represents the splitting and rearrangement requirements for the <code>Datasource</code>. </p> <p> Sample - <code> "{\"splitting\":{\"percentBegin\":10,\"percentEnd\":60}}"</code> </p> </li> </ul>
-- Required parameter: DataSourceId
-- Required parameter: DataSpec
function M.CreateDataSourceFromS3Input(_DataSourceName, _ComputeStatistics, _DataSourceId, _DataSpec, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDataSourceFromS3Input")
	local t = { 
		["DataSourceName"] = _DataSourceName,
		["ComputeStatistics"] = _ComputeStatistics,
		["DataSourceId"] = _DataSourceId,
		["DataSpec"] = _DataSpec,
	}
	asserts.AssertCreateDataSourceFromS3Input(t)
	return t
end

keys.DeleteRealtimeEndpointInput = { ["MLModelId"] = true, nil }

function asserts.AssertDeleteRealtimeEndpointInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteRealtimeEndpointInput to be of type 'table'")
	assert(struct["MLModelId"], "Expected key MLModelId to exist in table")
	if struct["MLModelId"] then asserts.AssertEntityId(struct["MLModelId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteRealtimeEndpointInput[k], "DeleteRealtimeEndpointInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteRealtimeEndpointInput
--  
-- @param _MLModelId [EntityId] <p>The ID assigned to the <code>MLModel</code> during creation.</p>
-- Required parameter: MLModelId
function M.DeleteRealtimeEndpointInput(_MLModelId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteRealtimeEndpointInput")
	local t = { 
		["MLModelId"] = _MLModelId,
	}
	asserts.AssertDeleteRealtimeEndpointInput(t)
	return t
end

keys.GetDataSourceOutput = { ["Status"] = true, ["ComputeTime"] = true, ["NumberOfFiles"] = true, ["Name"] = true, ["DataSourceSchema"] = true, ["DataLocationS3"] = true, ["RoleARN"] = true, ["CreatedByIamUser"] = true, ["DataSizeInBytes"] = true, ["RDSMetadata"] = true, ["ComputeStatistics"] = true, ["LastUpdatedAt"] = true, ["DataSourceId"] = true, ["RedshiftMetadata"] = true, ["StartedAt"] = true, ["LogUri"] = true, ["DataRearrangement"] = true, ["Message"] = true, ["CreatedAt"] = true, ["FinishedAt"] = true, nil }

function asserts.AssertGetDataSourceOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDataSourceOutput to be of type 'table'")
	if struct["Status"] then asserts.AssertEntityStatus(struct["Status"]) end
	if struct["ComputeTime"] then asserts.AssertLongType(struct["ComputeTime"]) end
	if struct["NumberOfFiles"] then asserts.AssertLongType(struct["NumberOfFiles"]) end
	if struct["Name"] then asserts.AssertEntityName(struct["Name"]) end
	if struct["DataSourceSchema"] then asserts.AssertDataSchema(struct["DataSourceSchema"]) end
	if struct["DataLocationS3"] then asserts.AssertS3Url(struct["DataLocationS3"]) end
	if struct["RoleARN"] then asserts.AssertRoleARN(struct["RoleARN"]) end
	if struct["CreatedByIamUser"] then asserts.AssertAwsUserArn(struct["CreatedByIamUser"]) end
	if struct["DataSizeInBytes"] then asserts.AssertLongType(struct["DataSizeInBytes"]) end
	if struct["RDSMetadata"] then asserts.AssertRDSMetadata(struct["RDSMetadata"]) end
	if struct["ComputeStatistics"] then asserts.AssertComputeStatistics(struct["ComputeStatistics"]) end
	if struct["LastUpdatedAt"] then asserts.AssertEpochTime(struct["LastUpdatedAt"]) end
	if struct["DataSourceId"] then asserts.AssertEntityId(struct["DataSourceId"]) end
	if struct["RedshiftMetadata"] then asserts.AssertRedshiftMetadata(struct["RedshiftMetadata"]) end
	if struct["StartedAt"] then asserts.AssertEpochTime(struct["StartedAt"]) end
	if struct["LogUri"] then asserts.AssertPresignedS3Url(struct["LogUri"]) end
	if struct["DataRearrangement"] then asserts.AssertDataRearrangement(struct["DataRearrangement"]) end
	if struct["Message"] then asserts.AssertMessage(struct["Message"]) end
	if struct["CreatedAt"] then asserts.AssertEpochTime(struct["CreatedAt"]) end
	if struct["FinishedAt"] then asserts.AssertEpochTime(struct["FinishedAt"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetDataSourceOutput[k], "GetDataSourceOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDataSourceOutput
-- <p>Represents the output of a <code>GetDataSource</code> operation and describes a <code>DataSource</code>.</p>
-- @param _Status [EntityStatus] <p>The current status of the <code>DataSource</code>. This element can have one of the following values:</p> <ul> <li> <code>PENDING</code> - Amazon ML submitted a request to create a <code>DataSource</code>.</li> <li> <code>INPROGRESS</code> - The creation process is underway.</li> <li> <code>FAILED</code> - The request to create a <code>DataSource</code> did not run to completion. It is not usable.</li> <li> <code>COMPLETED</code> - The creation process completed successfully.</li> <li> <code>DELETED</code> - The <code>DataSource</code> is marked as deleted. It is not usable.</li> </ul>
-- @param _ComputeTime [LongType] <p>The approximate CPU time in milliseconds that Amazon Machine Learning spent processing the <code>DataSource</code>, normalized and scaled on computation resources. <code>ComputeTime</code> is only available if the <code>DataSource</code> is in the <code>COMPLETED</code> state and the <code>ComputeStatistics</code> is set to true.</p>
-- @param _NumberOfFiles [LongType] <p>The number of data files referenced by the <code>DataSource</code>.</p>
-- @param _Name [EntityName] <p>A user-supplied name or description of the <code>DataSource</code>.</p>
-- @param _DataSourceSchema [DataSchema] <p>The schema used by all of the data files of this <code>DataSource</code>.</p> <note><title>Note</title> <p>This parameter is provided as part of the verbose format.</p></note>
-- @param _DataLocationS3 [S3Url] <p>The location of the data file or directory in Amazon Simple Storage Service (Amazon S3).</p>
-- @param _RoleARN [RoleARN] 
-- @param _CreatedByIamUser [AwsUserArn] <p>The AWS user account from which the <code>DataSource</code> was created. The account type can be either an AWS root account or an AWS Identity and Access Management (IAM) user account.</p>
-- @param _DataSizeInBytes [LongType] <p>The total size of observations in the data files.</p>
-- @param _RDSMetadata [RDSMetadata] 
-- @param _ComputeStatistics [ComputeStatistics] <p> The parameter is <code>true</code> if statistics need to be generated from the observation data. </p>
-- @param _LastUpdatedAt [EpochTime] <p>The time of the most recent edit to the <code>DataSource</code>. The time is expressed in epoch time.</p>
-- @param _DataSourceId [EntityId] <p>The ID assigned to the <code>DataSource</code> at creation. This value should be identical to the value of the <code>DataSourceId</code> in the request.</p>
-- @param _RedshiftMetadata [RedshiftMetadata] 
-- @param _StartedAt [EpochTime] <p>The epoch time when Amazon Machine Learning marked the <code>DataSource</code> as <code>INPROGRESS</code>. <code>StartedAt</code> isn't available if the <code>DataSource</code> is in the <code>PENDING</code> state.</p>
-- @param _LogUri [PresignedS3Url] <p>A link to the file containing logs of <code>CreateDataSourceFrom*</code> operations.</p>
-- @param _DataRearrangement [DataRearrangement] <p>A JSON string that represents the splitting and rearrangement requirement used when this <code>DataSource</code> was created.</p>
-- @param _Message [Message] <p>The user-supplied description of the most recent details about creating the <code>DataSource</code>.</p>
-- @param _CreatedAt [EpochTime] <p>The time that the <code>DataSource</code> was created. The time is expressed in epoch time.</p>
-- @param _FinishedAt [EpochTime] <p>The epoch time when Amazon Machine Learning marked the <code>DataSource</code> as <code>COMPLETED</code> or <code>FAILED</code>. <code>FinishedAt</code> is only available when the <code>DataSource</code> is in the <code>COMPLETED</code> or <code>FAILED</code> state.</p>
function M.GetDataSourceOutput(_Status, _ComputeTime, _NumberOfFiles, _Name, _DataSourceSchema, _DataLocationS3, _RoleARN, _CreatedByIamUser, _DataSizeInBytes, _RDSMetadata, _ComputeStatistics, _LastUpdatedAt, _DataSourceId, _RedshiftMetadata, _StartedAt, _LogUri, _DataRearrangement, _Message, _CreatedAt, _FinishedAt, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetDataSourceOutput")
	local t = { 
		["Status"] = _Status,
		["ComputeTime"] = _ComputeTime,
		["NumberOfFiles"] = _NumberOfFiles,
		["Name"] = _Name,
		["DataSourceSchema"] = _DataSourceSchema,
		["DataLocationS3"] = _DataLocationS3,
		["RoleARN"] = _RoleARN,
		["CreatedByIamUser"] = _CreatedByIamUser,
		["DataSizeInBytes"] = _DataSizeInBytes,
		["RDSMetadata"] = _RDSMetadata,
		["ComputeStatistics"] = _ComputeStatistics,
		["LastUpdatedAt"] = _LastUpdatedAt,
		["DataSourceId"] = _DataSourceId,
		["RedshiftMetadata"] = _RedshiftMetadata,
		["StartedAt"] = _StartedAt,
		["LogUri"] = _LogUri,
		["DataRearrangement"] = _DataRearrangement,
		["Message"] = _Message,
		["CreatedAt"] = _CreatedAt,
		["FinishedAt"] = _FinishedAt,
	}
	asserts.AssertGetDataSourceOutput(t)
	return t
end

keys.UpdateDataSourceOutput = { ["DataSourceId"] = true, nil }

function asserts.AssertUpdateDataSourceOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateDataSourceOutput to be of type 'table'")
	if struct["DataSourceId"] then asserts.AssertEntityId(struct["DataSourceId"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateDataSourceOutput[k], "UpdateDataSourceOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateDataSourceOutput
-- <p>Represents the output of an <code>UpdateDataSource</code> operation.</p> <p>You can see the updated content by using the <code>GetBatchPrediction</code> operation.</p>
-- @param _DataSourceId [EntityId] <p>The ID assigned to the <code>DataSource</code> during creation. This value should be identical to the value of the <code>DataSourceID</code> in the request.</p>
function M.UpdateDataSourceOutput(_DataSourceId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateDataSourceOutput")
	local t = { 
		["DataSourceId"] = _DataSourceId,
	}
	asserts.AssertUpdateDataSourceOutput(t)
	return t
end

keys.DeleteEvaluationOutput = { ["EvaluationId"] = true, nil }

function asserts.AssertDeleteEvaluationOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteEvaluationOutput to be of type 'table'")
	if struct["EvaluationId"] then asserts.AssertEntityId(struct["EvaluationId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteEvaluationOutput[k], "DeleteEvaluationOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteEvaluationOutput
-- <p> Represents the output of a <code>DeleteEvaluation</code> operation. The output indicates that Amazon Machine Learning (Amazon ML) received the request.</p> <p>You can use the <code>GetEvaluation</code> operation and check the value of the <code>Status</code> parameter to see whether an <code>Evaluation</code> is marked as <code>DELETED</code>.</p>
-- @param _EvaluationId [EntityId] <p>A user-supplied ID that uniquely identifies the <code>Evaluation</code>. This value should be identical to the value of the <code>EvaluationId</code> in the request.</p>
function M.DeleteEvaluationOutput(_EvaluationId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteEvaluationOutput")
	local t = { 
		["EvaluationId"] = _EvaluationId,
	}
	asserts.AssertDeleteEvaluationOutput(t)
	return t
end

keys.S3DataSpec = { ["DataLocationS3"] = true, ["DataSchemaLocationS3"] = true, ["DataSchema"] = true, ["DataRearrangement"] = true, nil }

function asserts.AssertS3DataSpec(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected S3DataSpec to be of type 'table'")
	assert(struct["DataLocationS3"], "Expected key DataLocationS3 to exist in table")
	if struct["DataLocationS3"] then asserts.AssertS3Url(struct["DataLocationS3"]) end
	if struct["DataSchemaLocationS3"] then asserts.AssertS3Url(struct["DataSchemaLocationS3"]) end
	if struct["DataSchema"] then asserts.AssertDataSchema(struct["DataSchema"]) end
	if struct["DataRearrangement"] then asserts.AssertDataRearrangement(struct["DataRearrangement"]) end
	for k,_ in pairs(struct) do
		assert(keys.S3DataSpec[k], "S3DataSpec contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type S3DataSpec
-- <p> Describes the data specification of a <code>DataSource</code>.</p>
-- @param _DataLocationS3 [S3Url] <p>The location of the data file(s) used by a <code>DataSource</code>. The URI specifies a data file or an Amazon Simple Storage Service (Amazon S3) directory or bucket containing data files.</p>
-- @param _DataSchemaLocationS3 [S3Url] <p>Describes the schema location in Amazon S3. You must provide either the <code>DataSchema</code> or the <code>DataSchemaLocationS3</code>.</p>
-- @param _DataSchema [DataSchema] <p> A JSON string that represents the schema for an Amazon S3 <code>DataSource</code>. The <code>DataSchema</code> defines the structure of the observation data in the data file(s) referenced in the <code>DataSource</code>.</p> <p>You must provide either the <code>DataSchema</code> or the <code>DataSchemaLocationS3</code>.</p> <p>Define your <code>DataSchema</code> as a series of key-value pairs. <code>attributes</code> and <code>excludedVariableNames</code> have an array of key-value pairs for their value. Use the following format to define your <code>DataSchema</code>.</p> <p>{ "version": "1.0",</p> <p> "recordAnnotationFieldName": "F1",</p> <p> "recordWeightFieldName": "F2",</p> <p> "targetFieldName": "F3",</p> <p> "dataFormat": "CSV",</p> <p> "dataFileContainsHeader": true,</p> <p> "attributes": [</p> <p> { "fieldName": "F1", "fieldType": "TEXT" }, { "fieldName": "F2", "fieldType": "NUMERIC" }, { "fieldName": "F3", "fieldType": "CATEGORICAL" }, { "fieldName": "F4", "fieldType": "NUMERIC" }, { "fieldName": "F5", "fieldType": "CATEGORICAL" }, { "fieldName": "F6", "fieldType": "TEXT" }, { "fieldName": "F7", "fieldType": "WEIGHTED_INT_SEQUENCE" }, { "fieldName": "F8", "fieldType": "WEIGHTED_STRING_SEQUENCE" } ],</p> <p> "excludedVariableNames": [ "F6" ] } </p> <?oxy_insert_end>
-- @param _DataRearrangement [DataRearrangement] <p>A JSON string that represents the splitting and rearrangement processing to be applied to a <code>DataSource</code>. If the <code>DataRearrangement</code> parameter is not provided, all of the input data is used to create the <code>Datasource</code>.</p> <p>There are multiple parameters that control what data is used to create a datasource:</p> <ul> <li><p><b><code>percentBegin</code></b></p> <p>Use <code>percentBegin</code> to indicate the beginning of the range of the data used to create the Datasource. If you do not include <code>percentBegin</code> and <code>percentEnd</code>, Amazon ML includes all of the data when creating the datasource.</p></li> <li><p><b><code>percentEnd</code></b></p> <p>Use <code>percentEnd</code> to indicate the end of the range of the data used to create the Datasource. If you do not include <code>percentBegin</code> and <code>percentEnd</code>, Amazon ML includes all of the data when creating the datasource.</p></li> <li><p><b><code>complement</code></b></p> <p>The <code>complement</code> parameter instructs Amazon ML to use the data that is not included in the range of <code>percentBegin</code> to <code>percentEnd</code> to create a datasource. The <code>complement</code> parameter is useful if you need to create complementary datasources for training and evaluation. To create a complementary datasource, use the same values for <code>percentBegin</code> and <code>percentEnd</code>, along with the <code>complement</code> parameter.</p> <p>For example, the following two datasources do not share any data, and can be used to train and evaluate a model. The first datasource has 25 percent of the data, and the second one has 75 percent of the data.</p> <p>Datasource for evaluation: <code>{"splitting":{"percentBegin":0, "percentEnd":25}}</code></p> <p>Datasource for training: <code>{"splitting":{"percentBegin":0, "percentEnd":25, "complement":"true"}}</code></p> </li> <li><p><b><code>strategy</code></b></p> <p>To change how Amazon ML splits the data for a datasource, use the <code>strategy</code> parameter.</p> <p>The default value for the <code>strategy</code> parameter is <code>sequential</code>, meaning that Amazon ML takes all of the data records between the <code>percentBegin</code> and <code>percentEnd</code> parameters for the datasource, in the order that the records appear in the input data.</p> <p>The following two <code>DataRearrangement</code> lines are examples of sequentially ordered training and evaluation datasources:</p> <p>Datasource for evaluation: <code>{"splitting":{"percentBegin":70, "percentEnd":100, "strategy":"sequential"}}</code></p> <p>Datasource for training: <code>{"splitting":{"percentBegin":70, "percentEnd":100, "strategy":"sequential", "complement":"true"}}</code></p> <p>To randomly split the input data into the proportions indicated by the percentBegin and percentEnd parameters, set the <code>strategy</code> parameter to <code>random</code> and provide a string that is used as the seed value for the random data splitting (for example, you can use the S3 path to your data as the random seed string). If you choose the random split strategy, Amazon ML assigns each row of data a pseudo-random number between 0 and 100, and then selects the rows that have an assigned number between <code>percentBegin</code> and <code>percentEnd</code>. Pseudo-random numbers are assigned using both the input seed string value and the byte offset as a seed, so changing the data results in a different split. Any existing ordering is preserved. The random splitting strategy ensures that variables in the training and evaluation data are distributed similarly. It is useful in the cases where the input data may have an implicit sort order, which would otherwise result in training and evaluation datasources containing non-similar data records.</p> <p>The following two <code>DataRearrangement</code> lines are examples of non-sequentially ordered training and evaluation datasources:</p> <p>Datasource for evaluation: <code>{"splitting":{"percentBegin":70, "percentEnd":100, "strategy":"random", "randomSeed"="s3://my_s3_path/bucket/file.csv"}}</code></p> <p>Datasource for training: <code>{"splitting":{"percentBegin":70, "percentEnd":100, "strategy":"random", "randomSeed"="s3://my_s3_path/bucket/file.csv", "complement":"true"}}</code></p> </li> </ul>
-- Required parameter: DataLocationS3
function M.S3DataSpec(_DataLocationS3, _DataSchemaLocationS3, _DataSchema, _DataRearrangement, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating S3DataSpec")
	local t = { 
		["DataLocationS3"] = _DataLocationS3,
		["DataSchemaLocationS3"] = _DataSchemaLocationS3,
		["DataSchema"] = _DataSchema,
		["DataRearrangement"] = _DataRearrangement,
	}
	asserts.AssertS3DataSpec(t)
	return t
end

keys.DeleteMLModelOutput = { ["MLModelId"] = true, nil }

function asserts.AssertDeleteMLModelOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteMLModelOutput to be of type 'table'")
	if struct["MLModelId"] then asserts.AssertEntityId(struct["MLModelId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteMLModelOutput[k], "DeleteMLModelOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteMLModelOutput
-- <p>Represents the output of a <code>DeleteMLModel</code> operation.</p> <p>You can use the <code>GetMLModel</code> operation and check the value of the <code>Status</code> parameter to see whether an <code>MLModel</code> is marked as <code>DELETED</code>.</p>
-- @param _MLModelId [EntityId] <p>A user-supplied ID that uniquely identifies the <code>MLModel</code>. This value should be identical to the value of the <code>MLModelID</code> in the request.</p>
function M.DeleteMLModelOutput(_MLModelId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteMLModelOutput")
	local t = { 
		["MLModelId"] = _MLModelId,
	}
	asserts.AssertDeleteMLModelOutput(t)
	return t
end

keys.RedshiftDatabase = { ["ClusterIdentifier"] = true, ["DatabaseName"] = true, nil }

function asserts.AssertRedshiftDatabase(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RedshiftDatabase to be of type 'table'")
	assert(struct["DatabaseName"], "Expected key DatabaseName to exist in table")
	assert(struct["ClusterIdentifier"], "Expected key ClusterIdentifier to exist in table")
	if struct["ClusterIdentifier"] then asserts.AssertRedshiftClusterIdentifier(struct["ClusterIdentifier"]) end
	if struct["DatabaseName"] then asserts.AssertRedshiftDatabaseName(struct["DatabaseName"]) end
	for k,_ in pairs(struct) do
		assert(keys.RedshiftDatabase[k], "RedshiftDatabase contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RedshiftDatabase
-- <p>Describes the database details required to connect to an Amazon Redshift database.</p>
-- @param _ClusterIdentifier [RedshiftClusterIdentifier] 
-- @param _DatabaseName [RedshiftDatabaseName] 
-- Required parameter: DatabaseName
-- Required parameter: ClusterIdentifier
function M.RedshiftDatabase(_ClusterIdentifier, _DatabaseName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RedshiftDatabase")
	local t = { 
		["ClusterIdentifier"] = _ClusterIdentifier,
		["DatabaseName"] = _DatabaseName,
	}
	asserts.AssertRedshiftDatabase(t)
	return t
end

keys.CreateBatchPredictionInput = { ["MLModelId"] = true, ["BatchPredictionId"] = true, ["BatchPredictionDataSourceId"] = true, ["OutputUri"] = true, ["BatchPredictionName"] = true, nil }

function asserts.AssertCreateBatchPredictionInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateBatchPredictionInput to be of type 'table'")
	assert(struct["BatchPredictionId"], "Expected key BatchPredictionId to exist in table")
	assert(struct["MLModelId"], "Expected key MLModelId to exist in table")
	assert(struct["BatchPredictionDataSourceId"], "Expected key BatchPredictionDataSourceId to exist in table")
	assert(struct["OutputUri"], "Expected key OutputUri to exist in table")
	if struct["MLModelId"] then asserts.AssertEntityId(struct["MLModelId"]) end
	if struct["BatchPredictionId"] then asserts.AssertEntityId(struct["BatchPredictionId"]) end
	if struct["BatchPredictionDataSourceId"] then asserts.AssertEntityId(struct["BatchPredictionDataSourceId"]) end
	if struct["OutputUri"] then asserts.AssertS3Url(struct["OutputUri"]) end
	if struct["BatchPredictionName"] then asserts.AssertEntityName(struct["BatchPredictionName"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateBatchPredictionInput[k], "CreateBatchPredictionInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateBatchPredictionInput
--  
-- @param _MLModelId [EntityId] <p>The ID of the <code>MLModel</code> that will generate predictions for the group of observations. </p>
-- @param _BatchPredictionId [EntityId] <p>A user-supplied ID that uniquely identifies the <code>BatchPrediction</code>.</p>
-- @param _BatchPredictionDataSourceId [EntityId] <p>The ID of the <code>DataSource</code> that points to the group of observations to predict.</p>
-- @param _OutputUri [S3Url] <p>The location of an Amazon Simple Storage Service (Amazon S3) bucket or directory to store the batch prediction results. The following substrings are not allowed in the <code>s3 key</code> portion of the <code>outputURI</code> field: ':', '//', '/./', '/../'.</p> <p>Amazon ML needs permissions to store and retrieve the logs on your behalf. For information about how to set permissions, see the <a href="http://docs.aws.amazon.com/machine-learning/latest/dg">Amazon Machine Learning Developer Guide</a>.</p>
-- @param _BatchPredictionName [EntityName] <p>A user-supplied name or description of the <code>BatchPrediction</code>. <code>BatchPredictionName</code> can only use the UTF-8 character set.</p>
-- Required parameter: BatchPredictionId
-- Required parameter: MLModelId
-- Required parameter: BatchPredictionDataSourceId
-- Required parameter: OutputUri
function M.CreateBatchPredictionInput(_MLModelId, _BatchPredictionId, _BatchPredictionDataSourceId, _OutputUri, _BatchPredictionName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateBatchPredictionInput")
	local t = { 
		["MLModelId"] = _MLModelId,
		["BatchPredictionId"] = _BatchPredictionId,
		["BatchPredictionDataSourceId"] = _BatchPredictionDataSourceId,
		["OutputUri"] = _OutputUri,
		["BatchPredictionName"] = _BatchPredictionName,
	}
	asserts.AssertCreateBatchPredictionInput(t)
	return t
end

keys.DescribeBatchPredictionsOutput = { ["NextToken"] = true, ["Results"] = true, nil }

function asserts.AssertDescribeBatchPredictionsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeBatchPredictionsOutput to be of type 'table'")
	if struct["NextToken"] then asserts.AssertStringType(struct["NextToken"]) end
	if struct["Results"] then asserts.AssertBatchPredictions(struct["Results"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeBatchPredictionsOutput[k], "DescribeBatchPredictionsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeBatchPredictionsOutput
-- <p>Represents the output of a <code>DescribeBatchPredictions</code> operation. The content is essentially a list of <code>BatchPrediction</code>s.</p>
-- @param _NextToken [StringType] <p>The ID of the next page in the paginated results that indicates at least one more page follows.</p>
-- @param _Results [BatchPredictions] <p>A list of <code>BatchPrediction</code> objects that meet the search criteria. </p>
function M.DescribeBatchPredictionsOutput(_NextToken, _Results, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeBatchPredictionsOutput")
	local t = { 
		["NextToken"] = _NextToken,
		["Results"] = _Results,
	}
	asserts.AssertDescribeBatchPredictionsOutput(t)
	return t
end

keys.RealtimeEndpointInfo = { ["EndpointStatus"] = true, ["PeakRequestsPerSecond"] = true, ["CreatedAt"] = true, ["EndpointUrl"] = true, nil }

function asserts.AssertRealtimeEndpointInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RealtimeEndpointInfo to be of type 'table'")
	if struct["EndpointStatus"] then asserts.AssertRealtimeEndpointStatus(struct["EndpointStatus"]) end
	if struct["PeakRequestsPerSecond"] then asserts.AssertIntegerType(struct["PeakRequestsPerSecond"]) end
	if struct["CreatedAt"] then asserts.AssertEpochTime(struct["CreatedAt"]) end
	if struct["EndpointUrl"] then asserts.AssertVipURL(struct["EndpointUrl"]) end
	for k,_ in pairs(struct) do
		assert(keys.RealtimeEndpointInfo[k], "RealtimeEndpointInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RealtimeEndpointInfo
-- <p> Describes the real-time endpoint information for an <code>MLModel</code>.</p>
-- @param _EndpointStatus [RealtimeEndpointStatus] <p> The current status of the real-time endpoint for the <code>MLModel</code>. This element can have one of the following values: </p> <ul> <li> <code>NONE</code> - Endpoint does not exist or was previously deleted.</li> <li> <code>READY</code> - Endpoint is ready to be used for real-time predictions.</li> <li> <code>UPDATING</code> - Updating/creating the endpoint. </li> </ul>
-- @param _PeakRequestsPerSecond [IntegerType] <p> The maximum processing rate for the real-time endpoint for <code>MLModel</code>, measured in incoming requests per second.</p>
-- @param _CreatedAt [EpochTime] <p>The time that the request to create the real-time endpoint for the <code>MLModel</code> was received. The time is expressed in epoch time.</p>
-- @param _EndpointUrl [VipURL] <p>The URI that specifies where to send real-time prediction requests for the <code>MLModel</code>.</p> <note><title>Note</title> <p>The application must wait until the real-time endpoint is ready before using this URI.</p> </note>
function M.RealtimeEndpointInfo(_EndpointStatus, _PeakRequestsPerSecond, _CreatedAt, _EndpointUrl, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RealtimeEndpointInfo")
	local t = { 
		["EndpointStatus"] = _EndpointStatus,
		["PeakRequestsPerSecond"] = _PeakRequestsPerSecond,
		["CreatedAt"] = _CreatedAt,
		["EndpointUrl"] = _EndpointUrl,
	}
	asserts.AssertRealtimeEndpointInfo(t)
	return t
end

keys.DescribeMLModelsOutput = { ["NextToken"] = true, ["Results"] = true, nil }

function asserts.AssertDescribeMLModelsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeMLModelsOutput to be of type 'table'")
	if struct["NextToken"] then asserts.AssertStringType(struct["NextToken"]) end
	if struct["Results"] then asserts.AssertMLModels(struct["Results"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeMLModelsOutput[k], "DescribeMLModelsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeMLModelsOutput
-- <p>Represents the output of a <code>DescribeMLModels</code> operation. The content is essentially a list of <code>MLModel</code>.</p>
-- @param _NextToken [StringType] <p>The ID of the next page in the paginated results that indicates at least one more page follows.</p>
-- @param _Results [MLModels] <p>A list of <code>MLModel</code> that meet the search criteria.</p>
function M.DescribeMLModelsOutput(_NextToken, _Results, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeMLModelsOutput")
	local t = { 
		["NextToken"] = _NextToken,
		["Results"] = _Results,
	}
	asserts.AssertDescribeMLModelsOutput(t)
	return t
end

keys.DataSource = { ["Status"] = true, ["ComputeTime"] = true, ["NumberOfFiles"] = true, ["Name"] = true, ["DataLocationS3"] = true, ["RoleARN"] = true, ["CreatedByIamUser"] = true, ["DataSizeInBytes"] = true, ["RDSMetadata"] = true, ["ComputeStatistics"] = true, ["LastUpdatedAt"] = true, ["DataSourceId"] = true, ["RedshiftMetadata"] = true, ["StartedAt"] = true, ["Message"] = true, ["DataRearrangement"] = true, ["CreatedAt"] = true, ["FinishedAt"] = true, nil }

function asserts.AssertDataSource(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DataSource to be of type 'table'")
	if struct["Status"] then asserts.AssertEntityStatus(struct["Status"]) end
	if struct["ComputeTime"] then asserts.AssertLongType(struct["ComputeTime"]) end
	if struct["NumberOfFiles"] then asserts.AssertLongType(struct["NumberOfFiles"]) end
	if struct["Name"] then asserts.AssertEntityName(struct["Name"]) end
	if struct["DataLocationS3"] then asserts.AssertS3Url(struct["DataLocationS3"]) end
	if struct["RoleARN"] then asserts.AssertRoleARN(struct["RoleARN"]) end
	if struct["CreatedByIamUser"] then asserts.AssertAwsUserArn(struct["CreatedByIamUser"]) end
	if struct["DataSizeInBytes"] then asserts.AssertLongType(struct["DataSizeInBytes"]) end
	if struct["RDSMetadata"] then asserts.AssertRDSMetadata(struct["RDSMetadata"]) end
	if struct["ComputeStatistics"] then asserts.AssertComputeStatistics(struct["ComputeStatistics"]) end
	if struct["LastUpdatedAt"] then asserts.AssertEpochTime(struct["LastUpdatedAt"]) end
	if struct["DataSourceId"] then asserts.AssertEntityId(struct["DataSourceId"]) end
	if struct["RedshiftMetadata"] then asserts.AssertRedshiftMetadata(struct["RedshiftMetadata"]) end
	if struct["StartedAt"] then asserts.AssertEpochTime(struct["StartedAt"]) end
	if struct["Message"] then asserts.AssertMessage(struct["Message"]) end
	if struct["DataRearrangement"] then asserts.AssertDataRearrangement(struct["DataRearrangement"]) end
	if struct["CreatedAt"] then asserts.AssertEpochTime(struct["CreatedAt"]) end
	if struct["FinishedAt"] then asserts.AssertEpochTime(struct["FinishedAt"]) end
	for k,_ in pairs(struct) do
		assert(keys.DataSource[k], "DataSource contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DataSource
-- <p> Represents the output of the <code>GetDataSource</code> operation. </p> <p> The content consists of the detailed metadata and data file information and the current status of the <code>DataSource</code>. </p>
-- @param _Status [EntityStatus] <p>The current status of the <code>DataSource</code>. This element can have one of the following values: </p> <ul> <li>PENDING - Amazon Machine Learning (Amazon ML) submitted a request to create a <code>DataSource</code>.</li> <li>INPROGRESS - The creation process is underway.</li> <li>FAILED - The request to create a <code>DataSource</code> did not run to completion. It is not usable.</li> <li>COMPLETED - The creation process completed successfully.</li> <li>DELETED - The <code>DataSource</code> is marked as deleted. It is not usable.</li> </ul>
-- @param _ComputeTime [LongType] 
-- @param _NumberOfFiles [LongType] <p>The number of data files referenced by the <code>DataSource</code>.</p>
-- @param _Name [EntityName] <p>A user-supplied name or description of the <code>DataSource</code>.</p>
-- @param _DataLocationS3 [S3Url] <p>The location and name of the data in Amazon Simple Storage Service (Amazon S3) that is used by a <code>DataSource</code>.</p>
-- @param _RoleARN [RoleARN] 
-- @param _CreatedByIamUser [AwsUserArn] <p>The AWS user account from which the <code>DataSource</code> was created. The account type can be either an AWS root account or an AWS Identity and Access Management (IAM) user account.</p>
-- @param _DataSizeInBytes [LongType] <p>The total number of observations contained in the data files that the <code>DataSource</code> references.</p>
-- @param _RDSMetadata [RDSMetadata] 
-- @param _ComputeStatistics [ComputeStatistics] <p> The parameter is <code>true</code> if statistics need to be generated from the observation data. </p>
-- @param _LastUpdatedAt [EpochTime] <p>The time of the most recent edit to the <code>BatchPrediction</code>. The time is expressed in epoch time.</p>
-- @param _DataSourceId [EntityId] <p>The ID that is assigned to the <code>DataSource</code> during creation.</p>
-- @param _RedshiftMetadata [RedshiftMetadata] 
-- @param _StartedAt [EpochTime] 
-- @param _Message [Message] <p>A description of the most recent details about creating the <code>DataSource</code>.</p>
-- @param _DataRearrangement [DataRearrangement] <p>A JSON string that represents the splitting and rearrangement requirement used when this <code>DataSource</code> was created.</p>
-- @param _CreatedAt [EpochTime] <p>The time that the <code>DataSource</code> was created. The time is expressed in epoch time.</p>
-- @param _FinishedAt [EpochTime] 
function M.DataSource(_Status, _ComputeTime, _NumberOfFiles, _Name, _DataLocationS3, _RoleARN, _CreatedByIamUser, _DataSizeInBytes, _RDSMetadata, _ComputeStatistics, _LastUpdatedAt, _DataSourceId, _RedshiftMetadata, _StartedAt, _Message, _DataRearrangement, _CreatedAt, _FinishedAt, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DataSource")
	local t = { 
		["Status"] = _Status,
		["ComputeTime"] = _ComputeTime,
		["NumberOfFiles"] = _NumberOfFiles,
		["Name"] = _Name,
		["DataLocationS3"] = _DataLocationS3,
		["RoleARN"] = _RoleARN,
		["CreatedByIamUser"] = _CreatedByIamUser,
		["DataSizeInBytes"] = _DataSizeInBytes,
		["RDSMetadata"] = _RDSMetadata,
		["ComputeStatistics"] = _ComputeStatistics,
		["LastUpdatedAt"] = _LastUpdatedAt,
		["DataSourceId"] = _DataSourceId,
		["RedshiftMetadata"] = _RedshiftMetadata,
		["StartedAt"] = _StartedAt,
		["Message"] = _Message,
		["DataRearrangement"] = _DataRearrangement,
		["CreatedAt"] = _CreatedAt,
		["FinishedAt"] = _FinishedAt,
	}
	asserts.AssertDataSource(t)
	return t
end

keys.CreateRealtimeEndpointInput = { ["MLModelId"] = true, nil }

function asserts.AssertCreateRealtimeEndpointInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateRealtimeEndpointInput to be of type 'table'")
	assert(struct["MLModelId"], "Expected key MLModelId to exist in table")
	if struct["MLModelId"] then asserts.AssertEntityId(struct["MLModelId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateRealtimeEndpointInput[k], "CreateRealtimeEndpointInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateRealtimeEndpointInput
--  
-- @param _MLModelId [EntityId] <p>The ID assigned to the <code>MLModel</code> during creation.</p>
-- Required parameter: MLModelId
function M.CreateRealtimeEndpointInput(_MLModelId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateRealtimeEndpointInput")
	local t = { 
		["MLModelId"] = _MLModelId,
	}
	asserts.AssertCreateRealtimeEndpointInput(t)
	return t
end

keys.RDSDataSpec = { ["DatabaseCredentials"] = true, ["DataSchemaUri"] = true, ["ServiceRole"] = true, ["ResourceRole"] = true, ["DatabaseInformation"] = true, ["SecurityGroupIds"] = true, ["SubnetId"] = true, ["DataSchema"] = true, ["DataRearrangement"] = true, ["S3StagingLocation"] = true, ["SelectSqlQuery"] = true, nil }

function asserts.AssertRDSDataSpec(struct)
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
	if struct["DatabaseCredentials"] then asserts.AssertRDSDatabaseCredentials(struct["DatabaseCredentials"]) end
	if struct["DataSchemaUri"] then asserts.AssertS3Url(struct["DataSchemaUri"]) end
	if struct["ServiceRole"] then asserts.AssertEDPServiceRole(struct["ServiceRole"]) end
	if struct["ResourceRole"] then asserts.AssertEDPResourceRole(struct["ResourceRole"]) end
	if struct["DatabaseInformation"] then asserts.AssertRDSDatabase(struct["DatabaseInformation"]) end
	if struct["SecurityGroupIds"] then asserts.AssertEDPSecurityGroupIds(struct["SecurityGroupIds"]) end
	if struct["SubnetId"] then asserts.AssertEDPSubnetId(struct["SubnetId"]) end
	if struct["DataSchema"] then asserts.AssertDataSchema(struct["DataSchema"]) end
	if struct["DataRearrangement"] then asserts.AssertDataRearrangement(struct["DataRearrangement"]) end
	if struct["S3StagingLocation"] then asserts.AssertS3Url(struct["S3StagingLocation"]) end
	if struct["SelectSqlQuery"] then asserts.AssertRDSSelectSqlQuery(struct["SelectSqlQuery"]) end
	for k,_ in pairs(struct) do
		assert(keys.RDSDataSpec[k], "RDSDataSpec contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RDSDataSpec
-- <p>The data specification of an Amazon Relational Database Service (Amazon RDS) <code>DataSource</code>.</p>
-- @param _DatabaseCredentials [RDSDatabaseCredentials] <p>The AWS Identity and Access Management (IAM) credentials that are used connect to the Amazon RDS database.</p>
-- @param _DataSchemaUri [S3Url] <p>The Amazon S3 location of the <code>DataSchema</code>. </p>
-- @param _ServiceRole [EDPServiceRole] <p>The role (DataPipelineDefaultRole) assumed by AWS Data Pipeline service to monitor the progress of the copy task from Amazon RDS to Amazon S3. For more information, see <a href="http://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-iam-roles.html">Role templates</a> for data pipelines.</p>
-- @param _ResourceRole [EDPResourceRole] <p>The role (DataPipelineDefaultResourceRole) assumed by an Amazon Elastic Compute Cloud (Amazon EC2) instance to carry out the copy operation from Amazon RDS to an Amazon S3 task. For more information, see <a href="http://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-iam-roles.html">Role templates</a> for data pipelines.</p>
-- @param _DatabaseInformation [RDSDatabase] <p>Describes the <code>DatabaseName</code> and <code>InstanceIdentifier</code> of an Amazon RDS database.</p>
-- @param _SecurityGroupIds [EDPSecurityGroupIds] <p>The security group IDs to be used to access a VPC-based RDS DB instance. Ensure that there are appropriate ingress rules set up to allow access to the RDS DB instance. This attribute is used by Data Pipeline to carry out the copy operation from Amazon RDS to an Amazon S3 task.</p>
-- @param _SubnetId [EDPSubnetId] <p>The subnet ID to be used to access a VPC-based RDS DB instance. This attribute is used by Data Pipeline to carry out the copy task from Amazon RDS to Amazon S3.</p>
-- @param _DataSchema [DataSchema] <p>A JSON string that represents the schema for an Amazon RDS <code>DataSource</code>. The <code>DataSchema</code> defines the structure of the observation data in the data file(s) referenced in the <code>DataSource</code>.</p> <p>A <code>DataSchema</code> is not required if you specify a <code>DataSchemaUri</code></p> <p>Define your <code>DataSchema</code> as a series of key-value pairs. <code>attributes</code> and <code>excludedVariableNames</code> have an array of key-value pairs for their value. Use the following format to define your <code>DataSchema</code>.</p> <p>{ "version": "1.0",</p> <p> "recordAnnotationFieldName": "F1",</p> <p> "recordWeightFieldName": "F2",</p> <p> "targetFieldName": "F3",</p> <p> "dataFormat": "CSV",</p> <p> "dataFileContainsHeader": true,</p> <p> "attributes": [</p> <p> { "fieldName": "F1", "fieldType": "TEXT" }, { "fieldName": "F2", "fieldType": "NUMERIC" }, { "fieldName": "F3", "fieldType": "CATEGORICAL" }, { "fieldName": "F4", "fieldType": "NUMERIC" }, { "fieldName": "F5", "fieldType": "CATEGORICAL" }, { "fieldName": "F6", "fieldType": "TEXT" }, { "fieldName": "F7", "fieldType": "WEIGHTED_INT_SEQUENCE" }, { "fieldName": "F8", "fieldType": "WEIGHTED_STRING_SEQUENCE" } ],</p> <p> "excludedVariableNames": [ "F6" ] } </p> <?oxy_insert_end>
-- @param _DataRearrangement [DataRearrangement] <p>A JSON string that represents the splitting and rearrangement processing to be applied to a <code>DataSource</code>. If the <code>DataRearrangement</code> parameter is not provided, all of the input data is used to create the <code>Datasource</code>.</p> <p>There are multiple parameters that control what data is used to create a datasource:</p> <ul> <li><p><b><code>percentBegin</code></b></p> <p>Use <code>percentBegin</code> to indicate the beginning of the range of the data used to create the Datasource. If you do not include <code>percentBegin</code> and <code>percentEnd</code>, Amazon ML includes all of the data when creating the datasource.</p></li> <li><p><b><code>percentEnd</code></b></p> <p>Use <code>percentEnd</code> to indicate the end of the range of the data used to create the Datasource. If you do not include <code>percentBegin</code> and <code>percentEnd</code>, Amazon ML includes all of the data when creating the datasource.</p></li> <li><p><b><code>complement</code></b></p> <p>The <code>complement</code> parameter instructs Amazon ML to use the data that is not included in the range of <code>percentBegin</code> to <code>percentEnd</code> to create a datasource. The <code>complement</code> parameter is useful if you need to create complementary datasources for training and evaluation. To create a complementary datasource, use the same values for <code>percentBegin</code> and <code>percentEnd</code>, along with the <code>complement</code> parameter.</p> <p>For example, the following two datasources do not share any data, and can be used to train and evaluate a model. The first datasource has 25 percent of the data, and the second one has 75 percent of the data.</p> <p>Datasource for evaluation: <code>{"splitting":{"percentBegin":0, "percentEnd":25}}</code></p> <p>Datasource for training: <code>{"splitting":{"percentBegin":0, "percentEnd":25, "complement":"true"}}</code></p> </li> <li><p><b><code>strategy</code></b></p> <p>To change how Amazon ML splits the data for a datasource, use the <code>strategy</code> parameter.</p> <p>The default value for the <code>strategy</code> parameter is <code>sequential</code>, meaning that Amazon ML takes all of the data records between the <code>percentBegin</code> and <code>percentEnd</code> parameters for the datasource, in the order that the records appear in the input data.</p> <p>The following two <code>DataRearrangement</code> lines are examples of sequentially ordered training and evaluation datasources:</p> <p>Datasource for evaluation: <code>{"splitting":{"percentBegin":70, "percentEnd":100, "strategy":"sequential"}}</code></p> <p>Datasource for training: <code>{"splitting":{"percentBegin":70, "percentEnd":100, "strategy":"sequential", "complement":"true"}}</code></p> <p>To randomly split the input data into the proportions indicated by the percentBegin and percentEnd parameters, set the <code>strategy</code> parameter to <code>random</code> and provide a string that is used as the seed value for the random data splitting (for example, you can use the S3 path to your data as the random seed string). If you choose the random split strategy, Amazon ML assigns each row of data a pseudo-random number between 0 and 100, and then selects the rows that have an assigned number between <code>percentBegin</code> and <code>percentEnd</code>. Pseudo-random numbers are assigned using both the input seed string value and the byte offset as a seed, so changing the data results in a different split. Any existing ordering is preserved. The random splitting strategy ensures that variables in the training and evaluation data are distributed similarly. It is useful in the cases where the input data may have an implicit sort order, which would otherwise result in training and evaluation datasources containing non-similar data records.</p> <p>The following two <code>DataRearrangement</code> lines are examples of non-sequentially ordered training and evaluation datasources:</p> <p>Datasource for evaluation: <code>{"splitting":{"percentBegin":70, "percentEnd":100, "strategy":"random", "randomSeed"="s3://my_s3_path/bucket/file.csv"}}</code></p> <p>Datasource for training: <code>{"splitting":{"percentBegin":70, "percentEnd":100, "strategy":"random", "randomSeed"="s3://my_s3_path/bucket/file.csv", "complement":"true"}}</code></p> </li> </ul>
-- @param _S3StagingLocation [S3Url] <p>The Amazon S3 location for staging Amazon RDS data. The data retrieved from Amazon RDS using <code>SelectSqlQuery</code> is stored in this location.</p>
-- @param _SelectSqlQuery [RDSSelectSqlQuery] <p>The query that is used to retrieve the observation data for the <code>DataSource</code>.</p>
-- Required parameter: DatabaseInformation
-- Required parameter: SelectSqlQuery
-- Required parameter: DatabaseCredentials
-- Required parameter: S3StagingLocation
-- Required parameter: ResourceRole
-- Required parameter: ServiceRole
-- Required parameter: SubnetId
-- Required parameter: SecurityGroupIds
function M.RDSDataSpec(_DatabaseCredentials, _DataSchemaUri, _ServiceRole, _ResourceRole, _DatabaseInformation, _SecurityGroupIds, _SubnetId, _DataSchema, _DataRearrangement, _S3StagingLocation, _SelectSqlQuery, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RDSDataSpec")
	local t = { 
		["DatabaseCredentials"] = _DatabaseCredentials,
		["DataSchemaUri"] = _DataSchemaUri,
		["ServiceRole"] = _ServiceRole,
		["ResourceRole"] = _ResourceRole,
		["DatabaseInformation"] = _DatabaseInformation,
		["SecurityGroupIds"] = _SecurityGroupIds,
		["SubnetId"] = _SubnetId,
		["DataSchema"] = _DataSchema,
		["DataRearrangement"] = _DataRearrangement,
		["S3StagingLocation"] = _S3StagingLocation,
		["SelectSqlQuery"] = _SelectSqlQuery,
	}
	asserts.AssertRDSDataSpec(t)
	return t
end

keys.GetMLModelInput = { ["MLModelId"] = true, ["Verbose"] = true, nil }

function asserts.AssertGetMLModelInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetMLModelInput to be of type 'table'")
	assert(struct["MLModelId"], "Expected key MLModelId to exist in table")
	if struct["MLModelId"] then asserts.AssertEntityId(struct["MLModelId"]) end
	if struct["Verbose"] then asserts.AssertVerbose(struct["Verbose"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetMLModelInput[k], "GetMLModelInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetMLModelInput
--  
-- @param _MLModelId [EntityId] <p>The ID assigned to the <code>MLModel</code> at creation.</p>
-- @param _Verbose [Verbose] <p>Specifies whether the <code>GetMLModel</code> operation should return <code>Recipe</code>.</p> <p>If true, <code>Recipe</code> is returned.</p> <p>If false, <code>Recipe</code> is not returned.</p>
-- Required parameter: MLModelId
function M.GetMLModelInput(_MLModelId, _Verbose, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetMLModelInput")
	local t = { 
		["MLModelId"] = _MLModelId,
		["Verbose"] = _Verbose,
	}
	asserts.AssertGetMLModelInput(t)
	return t
end

keys.DeleteRealtimeEndpointOutput = { ["MLModelId"] = true, ["RealtimeEndpointInfo"] = true, nil }

function asserts.AssertDeleteRealtimeEndpointOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteRealtimeEndpointOutput to be of type 'table'")
	if struct["MLModelId"] then asserts.AssertEntityId(struct["MLModelId"]) end
	if struct["RealtimeEndpointInfo"] then asserts.AssertRealtimeEndpointInfo(struct["RealtimeEndpointInfo"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteRealtimeEndpointOutput[k], "DeleteRealtimeEndpointOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteRealtimeEndpointOutput
-- <p>Represents the output of an <code>DeleteRealtimeEndpoint</code> operation.</p> <p>The result contains the <code>MLModelId</code> and the endpoint information for the <code>MLModel</code>. </p>
-- @param _MLModelId [EntityId] <p>A user-supplied ID that uniquely identifies the <code>MLModel</code>. This value should be identical to the value of the <code>MLModelId</code> in the request.</p>
-- @param _RealtimeEndpointInfo [RealtimeEndpointInfo] <p>The endpoint information of the <code>MLModel</code> </p>
function M.DeleteRealtimeEndpointOutput(_MLModelId, _RealtimeEndpointInfo, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteRealtimeEndpointOutput")
	local t = { 
		["MLModelId"] = _MLModelId,
		["RealtimeEndpointInfo"] = _RealtimeEndpointInfo,
	}
	asserts.AssertDeleteRealtimeEndpointOutput(t)
	return t
end

keys.BatchPrediction = { ["Status"] = true, ["ComputeTime"] = true, ["Name"] = true, ["InputDataLocationS3"] = true, ["InvalidRecordCount"] = true, ["CreatedByIamUser"] = true, ["MLModelId"] = true, ["TotalRecordCount"] = true, ["LastUpdatedAt"] = true, ["BatchPredictionDataSourceId"] = true, ["OutputUri"] = true, ["StartedAt"] = true, ["BatchPredictionId"] = true, ["Message"] = true, ["CreatedAt"] = true, ["FinishedAt"] = true, nil }

function asserts.AssertBatchPrediction(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchPrediction to be of type 'table'")
	if struct["Status"] then asserts.AssertEntityStatus(struct["Status"]) end
	if struct["ComputeTime"] then asserts.AssertLongType(struct["ComputeTime"]) end
	if struct["Name"] then asserts.AssertEntityName(struct["Name"]) end
	if struct["InputDataLocationS3"] then asserts.AssertS3Url(struct["InputDataLocationS3"]) end
	if struct["InvalidRecordCount"] then asserts.AssertLongType(struct["InvalidRecordCount"]) end
	if struct["CreatedByIamUser"] then asserts.AssertAwsUserArn(struct["CreatedByIamUser"]) end
	if struct["MLModelId"] then asserts.AssertEntityId(struct["MLModelId"]) end
	if struct["TotalRecordCount"] then asserts.AssertLongType(struct["TotalRecordCount"]) end
	if struct["LastUpdatedAt"] then asserts.AssertEpochTime(struct["LastUpdatedAt"]) end
	if struct["BatchPredictionDataSourceId"] then asserts.AssertEntityId(struct["BatchPredictionDataSourceId"]) end
	if struct["OutputUri"] then asserts.AssertS3Url(struct["OutputUri"]) end
	if struct["StartedAt"] then asserts.AssertEpochTime(struct["StartedAt"]) end
	if struct["BatchPredictionId"] then asserts.AssertEntityId(struct["BatchPredictionId"]) end
	if struct["Message"] then asserts.AssertMessage(struct["Message"]) end
	if struct["CreatedAt"] then asserts.AssertEpochTime(struct["CreatedAt"]) end
	if struct["FinishedAt"] then asserts.AssertEpochTime(struct["FinishedAt"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchPrediction[k], "BatchPrediction contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchPrediction
-- <p> Represents the output of a <code>GetBatchPrediction</code> operation.</p> <p> The content consists of the detailed metadata, the status, and the data file information of a <code>Batch Prediction</code>.</p>
-- @param _Status [EntityStatus] <p>The status of the <code>BatchPrediction</code>. This element can have one of the following values:</p> <ul> <li> <code>PENDING</code> - Amazon Machine Learning (Amazon ML) submitted a request to generate predictions for a batch of observations.</li> <li> <code>INPROGRESS</code> - The process is underway.</li> <li> <code>FAILED</code> - The request to perform a batch prediction did not run to completion. It is not usable.</li> <li> <code>COMPLETED</code> - The batch prediction process completed successfully.</li> <li> <code>DELETED</code> - The <code>BatchPrediction</code> is marked as deleted. It is not usable.</li> </ul>
-- @param _ComputeTime [LongType] 
-- @param _Name [EntityName] <p>A user-supplied name or description of the <code>BatchPrediction</code>.</p>
-- @param _InputDataLocationS3 [S3Url] <p>The location of the data file or directory in Amazon Simple Storage Service (Amazon S3).</p>
-- @param _InvalidRecordCount [LongType] 
-- @param _CreatedByIamUser [AwsUserArn] <p>The AWS user account that invoked the <code>BatchPrediction</code>. The account type can be either an AWS root account or an AWS Identity and Access Management (IAM) user account.</p>
-- @param _MLModelId [EntityId] <p>The ID of the <code>MLModel</code> that generated predictions for the <code>BatchPrediction</code> request.</p>
-- @param _TotalRecordCount [LongType] 
-- @param _LastUpdatedAt [EpochTime] <p>The time of the most recent edit to the <code>BatchPrediction</code>. The time is expressed in epoch time.</p>
-- @param _BatchPredictionDataSourceId [EntityId] <p>The ID of the <code>DataSource</code> that points to the group of observations to predict.</p>
-- @param _OutputUri [S3Url] <p>The location of an Amazon S3 bucket or directory to receive the operation results. The following substrings are not allowed in the <code>s3 key</code> portion of the <code>outputURI</code> field: ':', '//', '/./', '/../'.</p>
-- @param _StartedAt [EpochTime] 
-- @param _BatchPredictionId [EntityId] <p>The ID assigned to the <code>BatchPrediction</code> at creation. This value should be identical to the value of the <code>BatchPredictionID</code> in the request. </p>
-- @param _Message [Message] <p>A description of the most recent details about processing the batch prediction request.</p>
-- @param _CreatedAt [EpochTime] <p>The time that the <code>BatchPrediction</code> was created. The time is expressed in epoch time.</p>
-- @param _FinishedAt [EpochTime] 
function M.BatchPrediction(_Status, _ComputeTime, _Name, _InputDataLocationS3, _InvalidRecordCount, _CreatedByIamUser, _MLModelId, _TotalRecordCount, _LastUpdatedAt, _BatchPredictionDataSourceId, _OutputUri, _StartedAt, _BatchPredictionId, _Message, _CreatedAt, _FinishedAt, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchPrediction")
	local t = { 
		["Status"] = _Status,
		["ComputeTime"] = _ComputeTime,
		["Name"] = _Name,
		["InputDataLocationS3"] = _InputDataLocationS3,
		["InvalidRecordCount"] = _InvalidRecordCount,
		["CreatedByIamUser"] = _CreatedByIamUser,
		["MLModelId"] = _MLModelId,
		["TotalRecordCount"] = _TotalRecordCount,
		["LastUpdatedAt"] = _LastUpdatedAt,
		["BatchPredictionDataSourceId"] = _BatchPredictionDataSourceId,
		["OutputUri"] = _OutputUri,
		["StartedAt"] = _StartedAt,
		["BatchPredictionId"] = _BatchPredictionId,
		["Message"] = _Message,
		["CreatedAt"] = _CreatedAt,
		["FinishedAt"] = _FinishedAt,
	}
	asserts.AssertBatchPrediction(t)
	return t
end

keys.CreateDataSourceFromRDSInput = { ["DataSourceName"] = true, ["RDSData"] = true, ["ComputeStatistics"] = true, ["DataSourceId"] = true, ["RoleARN"] = true, nil }

function asserts.AssertCreateDataSourceFromRDSInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDataSourceFromRDSInput to be of type 'table'")
	assert(struct["DataSourceId"], "Expected key DataSourceId to exist in table")
	assert(struct["RDSData"], "Expected key RDSData to exist in table")
	assert(struct["RoleARN"], "Expected key RoleARN to exist in table")
	if struct["DataSourceName"] then asserts.AssertEntityName(struct["DataSourceName"]) end
	if struct["RDSData"] then asserts.AssertRDSDataSpec(struct["RDSData"]) end
	if struct["ComputeStatistics"] then asserts.AssertComputeStatistics(struct["ComputeStatistics"]) end
	if struct["DataSourceId"] then asserts.AssertEntityId(struct["DataSourceId"]) end
	if struct["RoleARN"] then asserts.AssertRoleARN(struct["RoleARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateDataSourceFromRDSInput[k], "CreateDataSourceFromRDSInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDataSourceFromRDSInput
--  
-- @param _DataSourceName [EntityName] <p>A user-supplied name or description of the <code>DataSource</code>.</p>
-- @param _RDSData [RDSDataSpec] <p>The data specification of an Amazon RDS <code>DataSource</code>:</p> <ul> <li><p>DatabaseInformation - <ul> <li> <code>DatabaseName</code> - The name of the Amazon RDS database.</li> <li> <code>InstanceIdentifier </code> - A unique identifier for the Amazon RDS database instance.</li> </ul> </p></li> <li><p>DatabaseCredentials - AWS Identity and Access Management (IAM) credentials that are used to connect to the Amazon RDS database.</p></li> <li><p>ResourceRole - A role (DataPipelineDefaultResourceRole) assumed by an EC2 instance to carry out the copy task from Amazon RDS to Amazon Simple Storage Service (Amazon S3). For more information, see <a href="http://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-iam-roles.html">Role templates</a> for data pipelines.</p></li> <li><p>ServiceRole - A role (DataPipelineDefaultRole) assumed by the AWS Data Pipeline service to monitor the progress of the copy task from Amazon RDS to Amazon S3. For more information, see <a href="http://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-iam-roles.html">Role templates</a> for data pipelines.</p></li> <li><p>SecurityInfo - The security information to use to access an RDS DB instance. You need to set up appropriate ingress rules for the security entity IDs provided to allow access to the Amazon RDS instance. Specify a [<code>SubnetId</code>, <code>SecurityGroupIds</code>] pair for a VPC-based RDS DB instance.</p></li> <li><p>SelectSqlQuery - A query that is used to retrieve the observation data for the <code>Datasource</code>.</p></li> <li><p>S3StagingLocation - The Amazon S3 location for staging Amazon RDS data. The data retrieved from Amazon RDS using <code>SelectSqlQuery</code> is stored in this location.</p></li> <li><p>DataSchemaUri - The Amazon S3 location of the <code>DataSchema</code>.</p></li> <li><p>DataSchema - A JSON string representing the schema. This is not required if <code>DataSchemaUri</code> is specified. </p></li> <li> <p>DataRearrangement - A JSON string that represents the splitting and rearrangement requirements for the <code>Datasource</code>. </p> <br> <p> Sample - <code> "{\"splitting\":{\"percentBegin\":10,\"percentEnd\":60}}"</code> </p> </li> </ul>
-- @param _ComputeStatistics [ComputeStatistics] <p>The compute statistics for a <code>DataSource</code>. The statistics are generated from the observation data referenced by a <code>DataSource</code>. Amazon ML uses the statistics internally during <code>MLModel</code> training. This parameter must be set to <code>true</code> if the <code></code>DataSource<code></code> needs to be used for <code>MLModel</code> training. </p>
-- @param _DataSourceId [EntityId] <p>A user-supplied ID that uniquely identifies the <code>DataSource</code>. Typically, an Amazon Resource Number (ARN) becomes the ID for a <code>DataSource</code>.</p>
-- @param _RoleARN [RoleARN] <p>The role that Amazon ML assumes on behalf of the user to create and activate a data pipeline in the user's account and copy data using the <code>SelectSqlQuery</code> query from Amazon RDS to Amazon S3.</p> <p> </p>
-- Required parameter: DataSourceId
-- Required parameter: RDSData
-- Required parameter: RoleARN
function M.CreateDataSourceFromRDSInput(_DataSourceName, _RDSData, _ComputeStatistics, _DataSourceId, _RoleARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDataSourceFromRDSInput")
	local t = { 
		["DataSourceName"] = _DataSourceName,
		["RDSData"] = _RDSData,
		["ComputeStatistics"] = _ComputeStatistics,
		["DataSourceId"] = _DataSourceId,
		["RoleARN"] = _RoleARN,
	}
	asserts.AssertCreateDataSourceFromRDSInput(t)
	return t
end

keys.Evaluation = { ["EvaluationDataSourceId"] = true, ["Status"] = true, ["ComputeTime"] = true, ["Name"] = true, ["InputDataLocationS3"] = true, ["EvaluationId"] = true, ["CreatedByIamUser"] = true, ["MLModelId"] = true, ["LastUpdatedAt"] = true, ["StartedAt"] = true, ["Message"] = true, ["PerformanceMetrics"] = true, ["CreatedAt"] = true, ["FinishedAt"] = true, nil }

function asserts.AssertEvaluation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Evaluation to be of type 'table'")
	if struct["EvaluationDataSourceId"] then asserts.AssertEntityId(struct["EvaluationDataSourceId"]) end
	if struct["Status"] then asserts.AssertEntityStatus(struct["Status"]) end
	if struct["ComputeTime"] then asserts.AssertLongType(struct["ComputeTime"]) end
	if struct["Name"] then asserts.AssertEntityName(struct["Name"]) end
	if struct["InputDataLocationS3"] then asserts.AssertS3Url(struct["InputDataLocationS3"]) end
	if struct["EvaluationId"] then asserts.AssertEntityId(struct["EvaluationId"]) end
	if struct["CreatedByIamUser"] then asserts.AssertAwsUserArn(struct["CreatedByIamUser"]) end
	if struct["MLModelId"] then asserts.AssertEntityId(struct["MLModelId"]) end
	if struct["LastUpdatedAt"] then asserts.AssertEpochTime(struct["LastUpdatedAt"]) end
	if struct["StartedAt"] then asserts.AssertEpochTime(struct["StartedAt"]) end
	if struct["Message"] then asserts.AssertMessage(struct["Message"]) end
	if struct["PerformanceMetrics"] then asserts.AssertPerformanceMetrics(struct["PerformanceMetrics"]) end
	if struct["CreatedAt"] then asserts.AssertEpochTime(struct["CreatedAt"]) end
	if struct["FinishedAt"] then asserts.AssertEpochTime(struct["FinishedAt"]) end
	for k,_ in pairs(struct) do
		assert(keys.Evaluation[k], "Evaluation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Evaluation
-- <p> Represents the output of <code>GetEvaluation</code> operation. </p> <p>The content consists of the detailed metadata and data file information and the current status of the <code>Evaluation</code>.</p>
-- @param _EvaluationDataSourceId [EntityId] <p>The ID of the <code>DataSource</code> that is used to evaluate the <code>MLModel</code>.</p>
-- @param _Status [EntityStatus] <p>The status of the evaluation. This element can have one of the following values:</p> <ul> <li> <code>PENDING</code> - Amazon Machine Learning (Amazon ML) submitted a request to evaluate an <code>MLModel</code>.</li> <li> <code>INPROGRESS</code> - The evaluation is underway.</li> <li> <code>FAILED</code> - The request to evaluate an <code>MLModel</code> did not run to completion. It is not usable.</li> <li> <code>COMPLETED</code> - The evaluation process completed successfully.</li> <li> <code>DELETED</code> - The <code>Evaluation</code> is marked as deleted. It is not usable.</li> </ul>
-- @param _ComputeTime [LongType] 
-- @param _Name [EntityName] <p>A user-supplied name or description of the <code>Evaluation</code>. </p>
-- @param _InputDataLocationS3 [S3Url] <p>The location and name of the data in Amazon Simple Storage Server (Amazon S3) that is used in the evaluation.</p>
-- @param _EvaluationId [EntityId] <p>The ID that is assigned to the <code>Evaluation</code> at creation.</p>
-- @param _CreatedByIamUser [AwsUserArn] <p>The AWS user account that invoked the evaluation. The account type can be either an AWS root account or an AWS Identity and Access Management (IAM) user account.</p>
-- @param _MLModelId [EntityId] <p>The ID of the <code>MLModel</code> that is the focus of the evaluation.</p>
-- @param _LastUpdatedAt [EpochTime] <p>The time of the most recent edit to the <code>Evaluation</code>. The time is expressed in epoch time.</p>
-- @param _StartedAt [EpochTime] 
-- @param _Message [Message] <p>A description of the most recent details about evaluating the <code>MLModel</code>.</p>
-- @param _PerformanceMetrics [PerformanceMetrics] <p>Measurements of how well the <code>MLModel</code> performed, using observations referenced by the <code>DataSource</code>. One of the following metrics is returned, based on the type of the <code>MLModel</code>: </p> <ul> <li> <p>BinaryAUC: A binary <code>MLModel</code> uses the Area Under the Curve (AUC) technique to measure performance. </p> </li> <li> <p>RegressionRMSE: A regression <code>MLModel</code> uses the Root Mean Square Error (RMSE) technique to measure performance. RMSE measures the difference between predicted and actual values for a single variable.</p> </li> <li> <p>MulticlassAvgFScore: A multiclass <code>MLModel</code> uses the F1 score technique to measure performance. </p> </li> </ul> <p> For more information about performance metrics, please see the <a href="http://docs.aws.amazon.com/machine-learning/latest/dg">Amazon Machine Learning Developer Guide</a>. </p>
-- @param _CreatedAt [EpochTime] <p>The time that the <code>Evaluation</code> was created. The time is expressed in epoch time.</p>
-- @param _FinishedAt [EpochTime] 
function M.Evaluation(_EvaluationDataSourceId, _Status, _ComputeTime, _Name, _InputDataLocationS3, _EvaluationId, _CreatedByIamUser, _MLModelId, _LastUpdatedAt, _StartedAt, _Message, _PerformanceMetrics, _CreatedAt, _FinishedAt, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Evaluation")
	local t = { 
		["EvaluationDataSourceId"] = _EvaluationDataSourceId,
		["Status"] = _Status,
		["ComputeTime"] = _ComputeTime,
		["Name"] = _Name,
		["InputDataLocationS3"] = _InputDataLocationS3,
		["EvaluationId"] = _EvaluationId,
		["CreatedByIamUser"] = _CreatedByIamUser,
		["MLModelId"] = _MLModelId,
		["LastUpdatedAt"] = _LastUpdatedAt,
		["StartedAt"] = _StartedAt,
		["Message"] = _Message,
		["PerformanceMetrics"] = _PerformanceMetrics,
		["CreatedAt"] = _CreatedAt,
		["FinishedAt"] = _FinishedAt,
	}
	asserts.AssertEvaluation(t)
	return t
end

keys.UpdateEvaluationOutput = { ["EvaluationId"] = true, nil }

function asserts.AssertUpdateEvaluationOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateEvaluationOutput to be of type 'table'")
	if struct["EvaluationId"] then asserts.AssertEntityId(struct["EvaluationId"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateEvaluationOutput[k], "UpdateEvaluationOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateEvaluationOutput
-- <p>Represents the output of an <code>UpdateEvaluation</code> operation.</p> <p>You can see the updated content by using the <code>GetEvaluation</code> operation.</p>
-- @param _EvaluationId [EntityId] <p>The ID assigned to the <code>Evaluation</code> during creation. This value should be identical to the value of the <code>Evaluation</code> in the request.</p>
function M.UpdateEvaluationOutput(_EvaluationId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateEvaluationOutput")
	local t = { 
		["EvaluationId"] = _EvaluationId,
	}
	asserts.AssertUpdateEvaluationOutput(t)
	return t
end

keys.UpdateMLModelInput = { ["MLModelId"] = true, ["ScoreThreshold"] = true, ["MLModelName"] = true, nil }

function asserts.AssertUpdateMLModelInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateMLModelInput to be of type 'table'")
	assert(struct["MLModelId"], "Expected key MLModelId to exist in table")
	if struct["MLModelId"] then asserts.AssertEntityId(struct["MLModelId"]) end
	if struct["ScoreThreshold"] then asserts.AssertScoreThreshold(struct["ScoreThreshold"]) end
	if struct["MLModelName"] then asserts.AssertEntityName(struct["MLModelName"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateMLModelInput[k], "UpdateMLModelInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateMLModelInput
--  
-- @param _MLModelId [EntityId] <p>The ID assigned to the <code>MLModel</code> during creation.</p>
-- @param _ScoreThreshold [ScoreThreshold] <p>The <code>ScoreThreshold</code> used in binary classification <code>MLModel</code> that marks the boundary between a positive prediction and a negative prediction.</p> <p>Output values greater than or equal to the <code>ScoreThreshold</code> receive a positive result from the <code>MLModel</code>, such as <code>true</code>. Output values less than the <code>ScoreThreshold</code> receive a negative response from the <code>MLModel</code>, such as <code>false</code>.</p>
-- @param _MLModelName [EntityName] <p>A user-supplied name or description of the <code>MLModel</code>.</p>
-- Required parameter: MLModelId
function M.UpdateMLModelInput(_MLModelId, _ScoreThreshold, _MLModelName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateMLModelInput")
	local t = { 
		["MLModelId"] = _MLModelId,
		["ScoreThreshold"] = _ScoreThreshold,
		["MLModelName"] = _MLModelName,
	}
	asserts.AssertUpdateMLModelInput(t)
	return t
end

keys.DeleteDataSourceInput = { ["DataSourceId"] = true, nil }

function asserts.AssertDeleteDataSourceInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDataSourceInput to be of type 'table'")
	assert(struct["DataSourceId"], "Expected key DataSourceId to exist in table")
	if struct["DataSourceId"] then asserts.AssertEntityId(struct["DataSourceId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteDataSourceInput[k], "DeleteDataSourceInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDataSourceInput
--  
-- @param _DataSourceId [EntityId] <p>A user-supplied ID that uniquely identifies the <code>DataSource</code>.</p>
-- Required parameter: DataSourceId
function M.DeleteDataSourceInput(_DataSourceId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteDataSourceInput")
	local t = { 
		["DataSourceId"] = _DataSourceId,
	}
	asserts.AssertDeleteDataSourceInput(t)
	return t
end

keys.DeleteEvaluationInput = { ["EvaluationId"] = true, nil }

function asserts.AssertDeleteEvaluationInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteEvaluationInput to be of type 'table'")
	assert(struct["EvaluationId"], "Expected key EvaluationId to exist in table")
	if struct["EvaluationId"] then asserts.AssertEntityId(struct["EvaluationId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteEvaluationInput[k], "DeleteEvaluationInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteEvaluationInput
--  
-- @param _EvaluationId [EntityId] <p>A user-supplied ID that uniquely identifies the <code>Evaluation</code> to delete.</p>
-- Required parameter: EvaluationId
function M.DeleteEvaluationInput(_EvaluationId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteEvaluationInput")
	local t = { 
		["EvaluationId"] = _EvaluationId,
	}
	asserts.AssertDeleteEvaluationInput(t)
	return t
end

keys.GetDataSourceInput = { ["DataSourceId"] = true, ["Verbose"] = true, nil }

function asserts.AssertGetDataSourceInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDataSourceInput to be of type 'table'")
	assert(struct["DataSourceId"], "Expected key DataSourceId to exist in table")
	if struct["DataSourceId"] then asserts.AssertEntityId(struct["DataSourceId"]) end
	if struct["Verbose"] then asserts.AssertVerbose(struct["Verbose"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetDataSourceInput[k], "GetDataSourceInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDataSourceInput
--  
-- @param _DataSourceId [EntityId] <p>The ID assigned to the <code>DataSource</code> at creation.</p>
-- @param _Verbose [Verbose] <p>Specifies whether the <code>GetDataSource</code> operation should return <code>DataSourceSchema</code>.</p> <p>If true, <code>DataSourceSchema</code> is returned.</p> <p>If false, <code>DataSourceSchema</code> is not returned.</p>
-- Required parameter: DataSourceId
function M.GetDataSourceInput(_DataSourceId, _Verbose, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetDataSourceInput")
	local t = { 
		["DataSourceId"] = _DataSourceId,
		["Verbose"] = _Verbose,
	}
	asserts.AssertGetDataSourceInput(t)
	return t
end

keys.DeleteBatchPredictionOutput = { ["BatchPredictionId"] = true, nil }

function asserts.AssertDeleteBatchPredictionOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteBatchPredictionOutput to be of type 'table'")
	if struct["BatchPredictionId"] then asserts.AssertEntityId(struct["BatchPredictionId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteBatchPredictionOutput[k], "DeleteBatchPredictionOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteBatchPredictionOutput
-- <p> Represents the output of a <code>DeleteBatchPrediction</code> operation.</p> <p>You can use the <code>GetBatchPrediction</code> operation and check the value of the <code>Status</code> parameter to see whether a <code>BatchPrediction</code> is marked as <code>DELETED</code>.</p>
-- @param _BatchPredictionId [EntityId] <p>A user-supplied ID that uniquely identifies the <code>BatchPrediction</code>. This value should be identical to the value of the <code>BatchPredictionID</code> in the request.</p>
function M.DeleteBatchPredictionOutput(_BatchPredictionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteBatchPredictionOutput")
	local t = { 
		["BatchPredictionId"] = _BatchPredictionId,
	}
	asserts.AssertDeleteBatchPredictionOutput(t)
	return t
end

keys.DeleteDataSourceOutput = { ["DataSourceId"] = true, nil }

function asserts.AssertDeleteDataSourceOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDataSourceOutput to be of type 'table'")
	if struct["DataSourceId"] then asserts.AssertEntityId(struct["DataSourceId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteDataSourceOutput[k], "DeleteDataSourceOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDataSourceOutput
-- <p> Represents the output of a <code>DeleteDataSource</code> operation.</p>
-- @param _DataSourceId [EntityId] <p>A user-supplied ID that uniquely identifies the <code>DataSource</code>. This value should be identical to the value of the <code>DataSourceID</code> in the request.</p>
function M.DeleteDataSourceOutput(_DataSourceId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteDataSourceOutput")
	local t = { 
		["DataSourceId"] = _DataSourceId,
	}
	asserts.AssertDeleteDataSourceOutput(t)
	return t
end

keys.DeleteMLModelInput = { ["MLModelId"] = true, nil }

function asserts.AssertDeleteMLModelInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteMLModelInput to be of type 'table'")
	assert(struct["MLModelId"], "Expected key MLModelId to exist in table")
	if struct["MLModelId"] then asserts.AssertEntityId(struct["MLModelId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteMLModelInput[k], "DeleteMLModelInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteMLModelInput
--  
-- @param _MLModelId [EntityId] <p>A user-supplied ID that uniquely identifies the <code>MLModel</code>.</p>
-- Required parameter: MLModelId
function M.DeleteMLModelInput(_MLModelId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteMLModelInput")
	local t = { 
		["MLModelId"] = _MLModelId,
	}
	asserts.AssertDeleteMLModelInput(t)
	return t
end

keys.ResourceNotFoundException = { ["message"] = true, ["code"] = true, nil }

function asserts.AssertResourceNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceNotFoundException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	if struct["code"] then asserts.AssertErrorCode(struct["code"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResourceNotFoundException[k], "ResourceNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceNotFoundException
-- <p>A specified resource cannot be located.</p>
-- @param _message [ErrorMessage] 
-- @param _code [ErrorCode] 
function M.ResourceNotFoundException(_message, _code, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceNotFoundException")
	local t = { 
		["message"] = _message,
		["code"] = _code,
	}
	asserts.AssertResourceNotFoundException(t)
	return t
end

keys.CreateMLModelInput = { ["Parameters"] = true, ["MLModelType"] = true, ["Recipe"] = true, ["MLModelId"] = true, ["MLModelName"] = true, ["RecipeUri"] = true, ["TrainingDataSourceId"] = true, nil }

function asserts.AssertCreateMLModelInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateMLModelInput to be of type 'table'")
	assert(struct["MLModelId"], "Expected key MLModelId to exist in table")
	assert(struct["MLModelType"], "Expected key MLModelType to exist in table")
	assert(struct["TrainingDataSourceId"], "Expected key TrainingDataSourceId to exist in table")
	if struct["Parameters"] then asserts.AssertTrainingParameters(struct["Parameters"]) end
	if struct["MLModelType"] then asserts.AssertMLModelType(struct["MLModelType"]) end
	if struct["Recipe"] then asserts.AssertRecipe(struct["Recipe"]) end
	if struct["MLModelId"] then asserts.AssertEntityId(struct["MLModelId"]) end
	if struct["MLModelName"] then asserts.AssertEntityName(struct["MLModelName"]) end
	if struct["RecipeUri"] then asserts.AssertS3Url(struct["RecipeUri"]) end
	if struct["TrainingDataSourceId"] then asserts.AssertEntityId(struct["TrainingDataSourceId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateMLModelInput[k], "CreateMLModelInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateMLModelInput
--  
-- @param _Parameters [TrainingParameters] <p>A list of the training parameters in the <code>MLModel</code>. The list is implemented as a map of key-value pairs.</p> <p>The following is the current set of training parameters: </p> <ul> <li> <p><code>sgd.maxMLModelSizeInBytes</code> - The maximum allowed size of the model. Depending on the input data, the size of the model might affect its performance.</p> <p> The value is an integer that ranges from <code>100000</code> to <code>2147483648</code>. The default value is <code>33554432</code>.</p> </li> <li><p><code>sgd.maxPasses</code> - The number of times that the training process traverses the observations to build the <code>MLModel</code>. The value is an integer that ranges from <code>1</code> to <code>10000</code>. The default value is <code>10</code>.</p></li> <li> <p><code>sgd.shuffleType</code> - Whether Amazon ML shuffles the training data. Shuffling the data improves a model's ability to find the optimal solution for a variety of data types. The valid values are <code>auto</code> and <code>none</code>. The default value is <code>none</code>. We <?oxy_insert_start author="laurama" timestamp="20160329T131121-0700">strongly recommend that you shuffle your data.<?oxy_insert_end></p> </li> <li> <p><code>sgd.l1RegularizationAmount</code> - The coefficient regularization L1 norm. It controls overfitting the data by penalizing large coefficients. This tends to drive coefficients to zero, resulting in a sparse feature set. If you use this parameter, start by specifying a small value, such as <code>1.0E-08</code>.</p> <p>The value is a double that ranges from <code>0</code> to <code>MAX_DOUBLE</code>. The default is to not use L1 normalization. This parameter can't be used when <code>L2</code> is specified. Use this parameter sparingly.</p> </li> <li> <p><code>sgd.l2RegularizationAmount</code> - The coefficient regularization L2 norm. It controls overfitting the data by penalizing large coefficients. This tends to drive coefficients to small, nonzero values. If you use this parameter, start by specifying a small value, such as <code>1.0E-08</code>.</p> <p>The value is a double that ranges from <code>0</code> to <code>MAX_DOUBLE</code>. The default is to not use L2 normalization. This parameter can't be used when <code>L1</code> is specified. Use this parameter sparingly.</p> </li> </ul>
-- @param _MLModelType [MLModelType] <p>The category of supervised learning that this <code>MLModel</code> will address. Choose from the following types:</p> <ul> <li>Choose <code>REGRESSION</code> if the <code>MLModel</code> will be used to predict a numeric value.</li> <li>Choose <code>BINARY</code> if the <code>MLModel</code> result has two possible values.</li> <li>Choose <code>MULTICLASS</code> if the <code>MLModel</code> result has a limited number of values. </li> </ul> <p> For more information, see the <a href="http://docs.aws.amazon.com/machine-learning/latest/dg">Amazon Machine Learning Developer Guide</a>.</p>
-- @param _Recipe [Recipe] <p>The data recipe for creating the <code>MLModel</code>. You must specify either the recipe or its URI. If you don't specify a recipe or its URI, Amazon ML creates a default.</p>
-- @param _MLModelId [EntityId] <p>A user-supplied ID that uniquely identifies the <code>MLModel</code>.</p>
-- @param _MLModelName [EntityName] <p>A user-supplied name or description of the <code>MLModel</code>.</p>
-- @param _RecipeUri [S3Url] <p>The Amazon Simple Storage Service (Amazon S3) location and file name that contains the <code>MLModel</code> recipe. You must specify either the recipe or its URI. If you don't specify a recipe or its URI, Amazon ML creates a default.</p>
-- @param _TrainingDataSourceId [EntityId] <p>The <code>DataSource</code> that points to the training data.</p>
-- Required parameter: MLModelId
-- Required parameter: MLModelType
-- Required parameter: TrainingDataSourceId
function M.CreateMLModelInput(_Parameters, _MLModelType, _Recipe, _MLModelId, _MLModelName, _RecipeUri, _TrainingDataSourceId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateMLModelInput")
	local t = { 
		["Parameters"] = _Parameters,
		["MLModelType"] = _MLModelType,
		["Recipe"] = _Recipe,
		["MLModelId"] = _MLModelId,
		["MLModelName"] = _MLModelName,
		["RecipeUri"] = _RecipeUri,
		["TrainingDataSourceId"] = _TrainingDataSourceId,
	}
	asserts.AssertCreateMLModelInput(t)
	return t
end

keys.CreateEvaluationOutput = { ["EvaluationId"] = true, nil }

function asserts.AssertCreateEvaluationOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateEvaluationOutput to be of type 'table'")
	if struct["EvaluationId"] then asserts.AssertEntityId(struct["EvaluationId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateEvaluationOutput[k], "CreateEvaluationOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateEvaluationOutput
-- <p> Represents the output of a <code>CreateEvaluation</code> operation, and is an acknowledgement that Amazon ML received the request.</p> <p><code>CreateEvaluation</code> operation is asynchronous. You can poll for status updates by using the <code>GetEvcaluation</code> operation and checking the <code>Status</code> parameter. </p>
-- @param _EvaluationId [EntityId] <p>The user-supplied ID that uniquely identifies the <code>Evaluation</code>. This value should be identical to the value of the <code>EvaluationId</code> in the request.</p>
function M.CreateEvaluationOutput(_EvaluationId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateEvaluationOutput")
	local t = { 
		["EvaluationId"] = _EvaluationId,
	}
	asserts.AssertCreateEvaluationOutput(t)
	return t
end

keys.GetEvaluationInput = { ["EvaluationId"] = true, nil }

function asserts.AssertGetEvaluationInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetEvaluationInput to be of type 'table'")
	assert(struct["EvaluationId"], "Expected key EvaluationId to exist in table")
	if struct["EvaluationId"] then asserts.AssertEntityId(struct["EvaluationId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetEvaluationInput[k], "GetEvaluationInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetEvaluationInput
--  
-- @param _EvaluationId [EntityId] <p>The ID of the <code>Evaluation</code> to retrieve. The evaluation of each <code>MLModel</code> is recorded and cataloged. The ID provides the means to access the information. </p>
-- Required parameter: EvaluationId
function M.GetEvaluationInput(_EvaluationId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetEvaluationInput")
	local t = { 
		["EvaluationId"] = _EvaluationId,
	}
	asserts.AssertGetEvaluationInput(t)
	return t
end

keys.AddTagsInput = { ["ResourceType"] = true, ["ResourceId"] = true, ["Tags"] = true, nil }

function asserts.AssertAddTagsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddTagsInput to be of type 'table'")
	assert(struct["Tags"], "Expected key Tags to exist in table")
	assert(struct["ResourceId"], "Expected key ResourceId to exist in table")
	assert(struct["ResourceType"], "Expected key ResourceType to exist in table")
	if struct["ResourceType"] then asserts.AssertTaggableResourceType(struct["ResourceType"]) end
	if struct["ResourceId"] then asserts.AssertEntityId(struct["ResourceId"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.AddTagsInput[k], "AddTagsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddTagsInput
--  
-- @param _ResourceType [TaggableResourceType] <p>The type of the ML object to tag. </p>
-- @param _ResourceId [EntityId] <p>The ID of the ML object to tag. For example, <code>exampleModelId</code>.</p>
-- @param _Tags [TagList] <p>The key-value pairs to use to create tags. If you specify a key without specifying a value, Amazon ML creates a tag with the specified key and a value of null.</p>
-- Required parameter: Tags
-- Required parameter: ResourceId
-- Required parameter: ResourceType
function M.AddTagsInput(_ResourceType, _ResourceId, _Tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddTagsInput")
	local t = { 
		["ResourceType"] = _ResourceType,
		["ResourceId"] = _ResourceId,
		["Tags"] = _Tags,
	}
	asserts.AssertAddTagsInput(t)
	return t
end

keys.CreateDataSourceFromRDSOutput = { ["DataSourceId"] = true, nil }

function asserts.AssertCreateDataSourceFromRDSOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDataSourceFromRDSOutput to be of type 'table'")
	if struct["DataSourceId"] then asserts.AssertEntityId(struct["DataSourceId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateDataSourceFromRDSOutput[k], "CreateDataSourceFromRDSOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDataSourceFromRDSOutput
-- <p> Represents the output of a <code>CreateDataSourceFromRDS</code> operation, and is an acknowledgement that Amazon ML received the request.</p> <p>The <code>CreateDataSourceFromRDS</code>&gt; operation is asynchronous. You can poll for updates by using the <code>GetBatchPrediction</code> operation and checking the <code>Status</code> parameter. You can inspect the <code>Message</code> when <code>Status</code> shows up as <code>FAILED</code>. You can also check the progress of the copy operation by going to the <code>DataPipeline</code> console and looking up the pipeline using the <code>pipelineId </code> from the describe call.</p>
-- @param _DataSourceId [EntityId] <p>A user-supplied ID that uniquely identifies the datasource. This value should be identical to the value of the <code>DataSourceID</code> in the request. </p>
function M.CreateDataSourceFromRDSOutput(_DataSourceId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDataSourceFromRDSOutput")
	local t = { 
		["DataSourceId"] = _DataSourceId,
	}
	asserts.AssertCreateDataSourceFromRDSOutput(t)
	return t
end

keys.CreateRealtimeEndpointOutput = { ["MLModelId"] = true, ["RealtimeEndpointInfo"] = true, nil }

function asserts.AssertCreateRealtimeEndpointOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateRealtimeEndpointOutput to be of type 'table'")
	if struct["MLModelId"] then asserts.AssertEntityId(struct["MLModelId"]) end
	if struct["RealtimeEndpointInfo"] then asserts.AssertRealtimeEndpointInfo(struct["RealtimeEndpointInfo"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateRealtimeEndpointOutput[k], "CreateRealtimeEndpointOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateRealtimeEndpointOutput
-- <p>Represents the output of an <code>CreateRealtimeEndpoint</code> operation.</p> <p>The result contains the <code>MLModelId</code> and the endpoint information for the <code>MLModel</code>.</p> <note> <p>The endpoint information includes the URI of the <code>MLModel</code>; that is, the location to send online prediction requests for the specified <code>MLModel</code>.</p> </note>
-- @param _MLModelId [EntityId] <p>A user-supplied ID that uniquely identifies the <code>MLModel</code>. This value should be identical to the value of the <code>MLModelId</code> in the request.</p>
-- @param _RealtimeEndpointInfo [RealtimeEndpointInfo] <p>The endpoint information of the <code>MLModel</code> </p>
function M.CreateRealtimeEndpointOutput(_MLModelId, _RealtimeEndpointInfo, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateRealtimeEndpointOutput")
	local t = { 
		["MLModelId"] = _MLModelId,
		["RealtimeEndpointInfo"] = _RealtimeEndpointInfo,
	}
	asserts.AssertCreateRealtimeEndpointOutput(t)
	return t
end

keys.RDSDatabase = { ["InstanceIdentifier"] = true, ["DatabaseName"] = true, nil }

function asserts.AssertRDSDatabase(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RDSDatabase to be of type 'table'")
	assert(struct["InstanceIdentifier"], "Expected key InstanceIdentifier to exist in table")
	assert(struct["DatabaseName"], "Expected key DatabaseName to exist in table")
	if struct["InstanceIdentifier"] then asserts.AssertRDSInstanceIdentifier(struct["InstanceIdentifier"]) end
	if struct["DatabaseName"] then asserts.AssertRDSDatabaseName(struct["DatabaseName"]) end
	for k,_ in pairs(struct) do
		assert(keys.RDSDatabase[k], "RDSDatabase contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RDSDatabase
-- <p>The database details of an Amazon RDS database.</p>
-- @param _InstanceIdentifier [RDSInstanceIdentifier] <p>The ID of an RDS DB instance.</p>
-- @param _DatabaseName [RDSDatabaseName] 
-- Required parameter: InstanceIdentifier
-- Required parameter: DatabaseName
function M.RDSDatabase(_InstanceIdentifier, _DatabaseName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RDSDatabase")
	local t = { 
		["InstanceIdentifier"] = _InstanceIdentifier,
		["DatabaseName"] = _DatabaseName,
	}
	asserts.AssertRDSDatabase(t)
	return t
end

keys.DescribeMLModelsInput = { ["GT"] = true, ["FilterVariable"] = true, ["GE"] = true, ["NE"] = true, ["LT"] = true, ["LE"] = true, ["Limit"] = true, ["SortOrder"] = true, ["NextToken"] = true, ["EQ"] = true, ["Prefix"] = true, nil }

function asserts.AssertDescribeMLModelsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeMLModelsInput to be of type 'table'")
	if struct["GT"] then asserts.AssertComparatorValue(struct["GT"]) end
	if struct["FilterVariable"] then asserts.AssertMLModelFilterVariable(struct["FilterVariable"]) end
	if struct["GE"] then asserts.AssertComparatorValue(struct["GE"]) end
	if struct["NE"] then asserts.AssertComparatorValue(struct["NE"]) end
	if struct["LT"] then asserts.AssertComparatorValue(struct["LT"]) end
	if struct["LE"] then asserts.AssertComparatorValue(struct["LE"]) end
	if struct["Limit"] then asserts.AssertPageLimit(struct["Limit"]) end
	if struct["SortOrder"] then asserts.AssertSortOrder(struct["SortOrder"]) end
	if struct["NextToken"] then asserts.AssertStringType(struct["NextToken"]) end
	if struct["EQ"] then asserts.AssertComparatorValue(struct["EQ"]) end
	if struct["Prefix"] then asserts.AssertComparatorValue(struct["Prefix"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeMLModelsInput[k], "DescribeMLModelsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeMLModelsInput
--  
-- @param _GT [ComparatorValue] <p>The greater than operator. The <code>MLModel</code> results will have <code>FilterVariable</code> values that are greater than the value specified with <code>GT</code>.</p>
-- @param _FilterVariable [MLModelFilterVariable] <p>Use one of the following variables to filter a list of <code>MLModel</code>:</p> <ul> <li> <code>CreatedAt</code> - Sets the search criteria to <code>MLModel</code> creation date.</li> <li> <code>Status</code> - Sets the search criteria to <code>MLModel</code> status.</li> <li> <code>Name</code> - Sets the search criteria to the contents of <code>MLModel</code><b> </b> <code>Name</code>.</li> <li> <code>IAMUser</code> - Sets the search criteria to the user account that invoked the <code>MLModel</code> creation.</li> <li> <code>TrainingDataSourceId</code> - Sets the search criteria to the <code>DataSource</code> used to train one or more <code>MLModel</code>.</li> <li> <code>RealtimeEndpointStatus</code> - Sets the search criteria to the <code>MLModel</code> real-time endpoint status.</li> <li> <code>MLModelType</code> - Sets the search criteria to <code>MLModel</code> type: binary, regression, or multi-class.</li> <li> <code>Algorithm</code> - Sets the search criteria to the algorithm that the <code>MLModel</code> uses.</li> <li> <code>TrainingDataURI</code> - Sets the search criteria to the data file(s) used in training a <code>MLModel</code>. The URL can identify either a file or an Amazon Simple Storage Service (Amazon S3) bucket or directory.</li> </ul>
-- @param _GE [ComparatorValue] <p>The greater than or equal to operator. The <code>MLModel</code> results will have <code>FilterVariable</code> values that are greater than or equal to the value specified with <code>GE</code>. </p>
-- @param _NE [ComparatorValue] <p>The not equal to operator. The <code>MLModel</code> results will have <code>FilterVariable</code> values not equal to the value specified with <code>NE</code>.</p>
-- @param _LT [ComparatorValue] <p>The less than operator. The <code>MLModel</code> results will have <code>FilterVariable</code> values that are less than the value specified with <code>LT</code>.</p>
-- @param _LE [ComparatorValue] <p>The less than or equal to operator. The <code>MLModel</code> results will have <code>FilterVariable</code> values that are less than or equal to the value specified with <code>LE</code>.</p>
-- @param _Limit [PageLimit] <p>The number of pages of information to include in the result. The range of acceptable values is <code>1</code> through <code>100</code>. The default value is <code>100</code>.</p>
-- @param _SortOrder [SortOrder] <p>A two-value parameter that determines the sequence of the resulting list of <code>MLModel</code>.</p> <ul> <li> <code>asc</code> - Arranges the list in ascending order (A-Z, 0-9).</li> <li> <code>dsc</code> - Arranges the list in descending order (Z-A, 9-0).</li> </ul> <p>Results are sorted by <code>FilterVariable</code>.</p>
-- @param _NextToken [StringType] <p>The ID of the page in the paginated results.</p>
-- @param _EQ [ComparatorValue] <p>The equal to operator. The <code>MLModel</code> results will have <code>FilterVariable</code> values that exactly match the value specified with <code>EQ</code>.</p>
-- @param _Prefix [ComparatorValue] <p>A string that is found at the beginning of a variable, such as <code>Name</code> or <code>Id</code>.</p> <p>For example, an <code>MLModel</code> could have the <code>Name</code> <code>2014-09-09-HolidayGiftMailer</code>. To search for this <code>MLModel</code>, select <code>Name</code> for the <code>FilterVariable</code> and any of the following strings for the <code>Prefix</code>: </p> <ul> <li><p>2014-09</p></li> <li><p>2014-09-09</p></li> <li><p>2014-09-09-Holiday</p></li> </ul>
function M.DescribeMLModelsInput(_GT, _FilterVariable, _GE, _NE, _LT, _LE, _Limit, _SortOrder, _NextToken, _EQ, _Prefix, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeMLModelsInput")
	local t = { 
		["GT"] = _GT,
		["FilterVariable"] = _FilterVariable,
		["GE"] = _GE,
		["NE"] = _NE,
		["LT"] = _LT,
		["LE"] = _LE,
		["Limit"] = _Limit,
		["SortOrder"] = _SortOrder,
		["NextToken"] = _NextToken,
		["EQ"] = _EQ,
		["Prefix"] = _Prefix,
	}
	asserts.AssertDescribeMLModelsInput(t)
	return t
end

keys.PredictInput = { ["MLModelId"] = true, ["Record"] = true, ["PredictEndpoint"] = true, nil }

function asserts.AssertPredictInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PredictInput to be of type 'table'")
	assert(struct["MLModelId"], "Expected key MLModelId to exist in table")
	assert(struct["Record"], "Expected key Record to exist in table")
	assert(struct["PredictEndpoint"], "Expected key PredictEndpoint to exist in table")
	if struct["MLModelId"] then asserts.AssertEntityId(struct["MLModelId"]) end
	if struct["Record"] then asserts.AssertRecord(struct["Record"]) end
	if struct["PredictEndpoint"] then asserts.AssertVipURL(struct["PredictEndpoint"]) end
	for k,_ in pairs(struct) do
		assert(keys.PredictInput[k], "PredictInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PredictInput
--  
-- @param _MLModelId [EntityId] <p>A unique identifier of the <code>MLModel</code>.</p>
-- @param _Record [Record] 
-- @param _PredictEndpoint [VipURL] 
-- Required parameter: MLModelId
-- Required parameter: Record
-- Required parameter: PredictEndpoint
function M.PredictInput(_MLModelId, _Record, _PredictEndpoint, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PredictInput")
	local t = { 
		["MLModelId"] = _MLModelId,
		["Record"] = _Record,
		["PredictEndpoint"] = _PredictEndpoint,
	}
	asserts.AssertPredictInput(t)
	return t
end

keys.UpdateDataSourceInput = { ["DataSourceName"] = true, ["DataSourceId"] = true, nil }

function asserts.AssertUpdateDataSourceInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateDataSourceInput to be of type 'table'")
	assert(struct["DataSourceId"], "Expected key DataSourceId to exist in table")
	assert(struct["DataSourceName"], "Expected key DataSourceName to exist in table")
	if struct["DataSourceName"] then asserts.AssertEntityName(struct["DataSourceName"]) end
	if struct["DataSourceId"] then asserts.AssertEntityId(struct["DataSourceId"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateDataSourceInput[k], "UpdateDataSourceInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateDataSourceInput
--  
-- @param _DataSourceName [EntityName] <p>A new user-supplied name or description of the <code>DataSource</code> that will replace the current description. </p>
-- @param _DataSourceId [EntityId] <p>The ID assigned to the <code>DataSource</code> during creation.</p>
-- Required parameter: DataSourceId
-- Required parameter: DataSourceName
function M.UpdateDataSourceInput(_DataSourceName, _DataSourceId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateDataSourceInput")
	local t = { 
		["DataSourceName"] = _DataSourceName,
		["DataSourceId"] = _DataSourceId,
	}
	asserts.AssertUpdateDataSourceInput(t)
	return t
end

keys.GetEvaluationOutput = { ["EvaluationDataSourceId"] = true, ["Status"] = true, ["ComputeTime"] = true, ["Name"] = true, ["InputDataLocationS3"] = true, ["EvaluationId"] = true, ["CreatedByIamUser"] = true, ["MLModelId"] = true, ["Message"] = true, ["LastUpdatedAt"] = true, ["StartedAt"] = true, ["LogUri"] = true, ["PerformanceMetrics"] = true, ["CreatedAt"] = true, ["FinishedAt"] = true, nil }

function asserts.AssertGetEvaluationOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetEvaluationOutput to be of type 'table'")
	if struct["EvaluationDataSourceId"] then asserts.AssertEntityId(struct["EvaluationDataSourceId"]) end
	if struct["Status"] then asserts.AssertEntityStatus(struct["Status"]) end
	if struct["ComputeTime"] then asserts.AssertLongType(struct["ComputeTime"]) end
	if struct["Name"] then asserts.AssertEntityName(struct["Name"]) end
	if struct["InputDataLocationS3"] then asserts.AssertS3Url(struct["InputDataLocationS3"]) end
	if struct["EvaluationId"] then asserts.AssertEntityId(struct["EvaluationId"]) end
	if struct["CreatedByIamUser"] then asserts.AssertAwsUserArn(struct["CreatedByIamUser"]) end
	if struct["MLModelId"] then asserts.AssertEntityId(struct["MLModelId"]) end
	if struct["Message"] then asserts.AssertMessage(struct["Message"]) end
	if struct["LastUpdatedAt"] then asserts.AssertEpochTime(struct["LastUpdatedAt"]) end
	if struct["StartedAt"] then asserts.AssertEpochTime(struct["StartedAt"]) end
	if struct["LogUri"] then asserts.AssertPresignedS3Url(struct["LogUri"]) end
	if struct["PerformanceMetrics"] then asserts.AssertPerformanceMetrics(struct["PerformanceMetrics"]) end
	if struct["CreatedAt"] then asserts.AssertEpochTime(struct["CreatedAt"]) end
	if struct["FinishedAt"] then asserts.AssertEpochTime(struct["FinishedAt"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetEvaluationOutput[k], "GetEvaluationOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetEvaluationOutput
-- <p>Represents the output of a <code>GetEvaluation</code> operation and describes an <code>Evaluation</code>.</p>
-- @param _EvaluationDataSourceId [EntityId] <p>The <code>DataSource</code> used for this evaluation.</p>
-- @param _Status [EntityStatus] <p>The status of the evaluation. This element can have one of the following values:</p> <ul> <li> <code>PENDING</code> - Amazon Machine Language (Amazon ML) submitted a request to evaluate an <code>MLModel</code>.</li> <li> <code>INPROGRESS</code> - The evaluation is underway.</li> <li> <code>FAILED</code> - The request to evaluate an <code>MLModel</code> did not run to completion. It is not usable.</li> <li> <code>COMPLETED</code> - The evaluation process completed successfully.</li> <li> <code>DELETED</code> - The <code>Evaluation</code> is marked as deleted. It is not usable.</li> </ul>
-- @param _ComputeTime [LongType] <p>The approximate CPU time in milliseconds that Amazon Machine Learning spent processing the <code>Evaluation</code>, normalized and scaled on computation resources. <code>ComputeTime</code> is only available if the <code>Evaluation</code> is in the <code>COMPLETED</code> state.</p>
-- @param _Name [EntityName] <p>A user-supplied name or description of the <code>Evaluation</code>. </p>
-- @param _InputDataLocationS3 [S3Url] <p>The location of the data file or directory in Amazon Simple Storage Service (Amazon S3).</p>
-- @param _EvaluationId [EntityId] <p>The evaluation ID which is same as the <code>EvaluationId</code> in the request.</p>
-- @param _CreatedByIamUser [AwsUserArn] <p>The AWS user account that invoked the evaluation. The account type can be either an AWS root account or an AWS Identity and Access Management (IAM) user account.</p>
-- @param _MLModelId [EntityId] <p>The ID of the <code>MLModel</code> that was the focus of the evaluation.</p>
-- @param _Message [Message] <p>A description of the most recent details about evaluating the <code>MLModel</code>.</p>
-- @param _LastUpdatedAt [EpochTime] <p>The time of the most recent edit to the <code>Evaluation</code>. The time is expressed in epoch time.</p>
-- @param _StartedAt [EpochTime] <p>The epoch time when Amazon Machine Learning marked the <code>Evaluation</code> as <code>INPROGRESS</code>. <code>StartedAt</code> isn't available if the <code>Evaluation</code> is in the <code>PENDING</code> state.</p>
-- @param _LogUri [PresignedS3Url] <p>A link to the file that contains logs of the <code>CreateEvaluation</code> operation.</p>
-- @param _PerformanceMetrics [PerformanceMetrics] <p>Measurements of how well the <code>MLModel</code> performed using observations referenced by the <code>DataSource</code>. One of the following metric is returned based on the type of the <code>MLModel</code>: </p> <ul> <li> <p>BinaryAUC: A binary <code>MLModel</code> uses the Area Under the Curve (AUC) technique to measure performance. </p> </li> <li> <p>RegressionRMSE: A regression <code>MLModel</code> uses the Root Mean Square Error (RMSE) technique to measure performance. RMSE measures the difference between predicted and actual values for a single variable.</p> </li> <li> <p>MulticlassAvgFScore: A multiclass <code>MLModel</code> uses the F1 score technique to measure performance. </p> </li> </ul> <p> For more information about performance metrics, please see the <a href="http://docs.aws.amazon.com/machine-learning/latest/dg">Amazon Machine Learning Developer Guide</a>. </p>
-- @param _CreatedAt [EpochTime] <p>The time that the <code>Evaluation</code> was created. The time is expressed in epoch time.</p>
-- @param _FinishedAt [EpochTime] <p>The epoch time when Amazon Machine Learning marked the <code>Evaluation</code> as <code>COMPLETED</code> or <code>FAILED</code>. <code>FinishedAt</code> is only available when the <code>Evaluation</code> is in the <code>COMPLETED</code> or <code>FAILED</code> state.</p>
function M.GetEvaluationOutput(_EvaluationDataSourceId, _Status, _ComputeTime, _Name, _InputDataLocationS3, _EvaluationId, _CreatedByIamUser, _MLModelId, _Message, _LastUpdatedAt, _StartedAt, _LogUri, _PerformanceMetrics, _CreatedAt, _FinishedAt, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetEvaluationOutput")
	local t = { 
		["EvaluationDataSourceId"] = _EvaluationDataSourceId,
		["Status"] = _Status,
		["ComputeTime"] = _ComputeTime,
		["Name"] = _Name,
		["InputDataLocationS3"] = _InputDataLocationS3,
		["EvaluationId"] = _EvaluationId,
		["CreatedByIamUser"] = _CreatedByIamUser,
		["MLModelId"] = _MLModelId,
		["Message"] = _Message,
		["LastUpdatedAt"] = _LastUpdatedAt,
		["StartedAt"] = _StartedAt,
		["LogUri"] = _LogUri,
		["PerformanceMetrics"] = _PerformanceMetrics,
		["CreatedAt"] = _CreatedAt,
		["FinishedAt"] = _FinishedAt,
	}
	asserts.AssertGetEvaluationOutput(t)
	return t
end

keys.RDSMetadata = { ["ServiceRole"] = true, ["DataPipelineId"] = true, ["ResourceRole"] = true, ["DatabaseUserName"] = true, ["Database"] = true, ["SelectSqlQuery"] = true, nil }

function asserts.AssertRDSMetadata(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RDSMetadata to be of type 'table'")
	if struct["ServiceRole"] then asserts.AssertEDPServiceRole(struct["ServiceRole"]) end
	if struct["DataPipelineId"] then asserts.AssertEDPPipelineId(struct["DataPipelineId"]) end
	if struct["ResourceRole"] then asserts.AssertEDPResourceRole(struct["ResourceRole"]) end
	if struct["DatabaseUserName"] then asserts.AssertRDSDatabaseUsername(struct["DatabaseUserName"]) end
	if struct["Database"] then asserts.AssertRDSDatabase(struct["Database"]) end
	if struct["SelectSqlQuery"] then asserts.AssertRDSSelectSqlQuery(struct["SelectSqlQuery"]) end
	for k,_ in pairs(struct) do
		assert(keys.RDSMetadata[k], "RDSMetadata contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RDSMetadata
-- <p>The datasource details that are specific to Amazon RDS.</p>
-- @param _ServiceRole [EDPServiceRole] <p>The role (DataPipelineDefaultRole) assumed by the Data Pipeline service to monitor the progress of the copy task from Amazon RDS to Amazon S3. For more information, see <a href="http://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-iam-roles.html">Role templates</a> for data pipelines.</p>
-- @param _DataPipelineId [EDPPipelineId] <p>The ID of the Data Pipeline instance that is used to carry to copy data from Amazon RDS to Amazon S3. You can use the ID to find details about the instance in the Data Pipeline console.</p>
-- @param _ResourceRole [EDPResourceRole] <p>The role (DataPipelineDefaultResourceRole) assumed by an Amazon EC2 instance to carry out the copy task from Amazon RDS to Amazon S3. For more information, see <a href="http://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-iam-roles.html">Role templates</a> for data pipelines.</p>
-- @param _DatabaseUserName [RDSDatabaseUsername] 
-- @param _Database [RDSDatabase] <p>The database details required to connect to an Amazon RDS.</p>
-- @param _SelectSqlQuery [RDSSelectSqlQuery] <p>The SQL query that is supplied during <a>CreateDataSourceFromRDS</a>. Returns only if <code>Verbose</code> is true in <code>GetDataSourceInput</code>. </p>
function M.RDSMetadata(_ServiceRole, _DataPipelineId, _ResourceRole, _DatabaseUserName, _Database, _SelectSqlQuery, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RDSMetadata")
	local t = { 
		["ServiceRole"] = _ServiceRole,
		["DataPipelineId"] = _DataPipelineId,
		["ResourceRole"] = _ResourceRole,
		["DatabaseUserName"] = _DatabaseUserName,
		["Database"] = _Database,
		["SelectSqlQuery"] = _SelectSqlQuery,
	}
	asserts.AssertRDSMetadata(t)
	return t
end

keys.DescribeTagsOutput = { ["ResourceType"] = true, ["ResourceId"] = true, ["Tags"] = true, nil }

function asserts.AssertDescribeTagsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTagsOutput to be of type 'table'")
	if struct["ResourceType"] then asserts.AssertTaggableResourceType(struct["ResourceType"]) end
	if struct["ResourceId"] then asserts.AssertEntityId(struct["ResourceId"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeTagsOutput[k], "DescribeTagsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTagsOutput
-- <p>Amazon ML returns the following elements. </p>
-- @param _ResourceType [TaggableResourceType] <p>The type of the tagged ML object.</p>
-- @param _ResourceId [EntityId] <p>The ID of the tagged ML object.</p>
-- @param _Tags [TagList] <p>A list of tags associated with the ML object.</p>
function M.DescribeTagsOutput(_ResourceType, _ResourceId, _Tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeTagsOutput")
	local t = { 
		["ResourceType"] = _ResourceType,
		["ResourceId"] = _ResourceId,
		["Tags"] = _Tags,
	}
	asserts.AssertDescribeTagsOutput(t)
	return t
end

keys.RDSDatabaseCredentials = { ["Username"] = true, ["Password"] = true, nil }

function asserts.AssertRDSDatabaseCredentials(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RDSDatabaseCredentials to be of type 'table'")
	assert(struct["Username"], "Expected key Username to exist in table")
	assert(struct["Password"], "Expected key Password to exist in table")
	if struct["Username"] then asserts.AssertRDSDatabaseUsername(struct["Username"]) end
	if struct["Password"] then asserts.AssertRDSDatabasePassword(struct["Password"]) end
	for k,_ in pairs(struct) do
		assert(keys.RDSDatabaseCredentials[k], "RDSDatabaseCredentials contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RDSDatabaseCredentials
-- <p>The database credentials to connect to a database on an RDS DB instance.</p>
-- @param _Username [RDSDatabaseUsername] 
-- @param _Password [RDSDatabasePassword] 
-- Required parameter: Username
-- Required parameter: Password
function M.RDSDatabaseCredentials(_Username, _Password, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RDSDatabaseCredentials")
	local t = { 
		["Username"] = _Username,
		["Password"] = _Password,
	}
	asserts.AssertRDSDatabaseCredentials(t)
	return t
end

keys.CreateDataSourceFromS3Output = { ["DataSourceId"] = true, nil }

function asserts.AssertCreateDataSourceFromS3Output(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDataSourceFromS3Output to be of type 'table'")
	if struct["DataSourceId"] then asserts.AssertEntityId(struct["DataSourceId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateDataSourceFromS3Output[k], "CreateDataSourceFromS3Output contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDataSourceFromS3Output
-- <p> Represents the output of a <code>CreateDataSourceFromS3</code> operation, and is an acknowledgement that Amazon ML received the request.</p> <p>The <code>CreateDataSourceFromS3</code> operation is asynchronous. You can poll for updates by using the <code>GetBatchPrediction</code> operation and checking the <code>Status</code> parameter. </p>
-- @param _DataSourceId [EntityId] <p>A user-supplied ID that uniquely identifies the <code>DataSource</code>. This value should be identical to the value of the <code>DataSourceID</code> in the request. </p>
function M.CreateDataSourceFromS3Output(_DataSourceId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDataSourceFromS3Output")
	local t = { 
		["DataSourceId"] = _DataSourceId,
	}
	asserts.AssertCreateDataSourceFromS3Output(t)
	return t
end

keys.GetBatchPredictionOutput = { ["Status"] = true, ["ComputeTime"] = true, ["Name"] = true, ["InputDataLocationS3"] = true, ["InvalidRecordCount"] = true, ["CreatedByIamUser"] = true, ["MLModelId"] = true, ["TotalRecordCount"] = true, ["LastUpdatedAt"] = true, ["BatchPredictionDataSourceId"] = true, ["OutputUri"] = true, ["StartedAt"] = true, ["BatchPredictionId"] = true, ["LogUri"] = true, ["Message"] = true, ["CreatedAt"] = true, ["FinishedAt"] = true, nil }

function asserts.AssertGetBatchPredictionOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBatchPredictionOutput to be of type 'table'")
	if struct["Status"] then asserts.AssertEntityStatus(struct["Status"]) end
	if struct["ComputeTime"] then asserts.AssertLongType(struct["ComputeTime"]) end
	if struct["Name"] then asserts.AssertEntityName(struct["Name"]) end
	if struct["InputDataLocationS3"] then asserts.AssertS3Url(struct["InputDataLocationS3"]) end
	if struct["InvalidRecordCount"] then asserts.AssertLongType(struct["InvalidRecordCount"]) end
	if struct["CreatedByIamUser"] then asserts.AssertAwsUserArn(struct["CreatedByIamUser"]) end
	if struct["MLModelId"] then asserts.AssertEntityId(struct["MLModelId"]) end
	if struct["TotalRecordCount"] then asserts.AssertLongType(struct["TotalRecordCount"]) end
	if struct["LastUpdatedAt"] then asserts.AssertEpochTime(struct["LastUpdatedAt"]) end
	if struct["BatchPredictionDataSourceId"] then asserts.AssertEntityId(struct["BatchPredictionDataSourceId"]) end
	if struct["OutputUri"] then asserts.AssertS3Url(struct["OutputUri"]) end
	if struct["StartedAt"] then asserts.AssertEpochTime(struct["StartedAt"]) end
	if struct["BatchPredictionId"] then asserts.AssertEntityId(struct["BatchPredictionId"]) end
	if struct["LogUri"] then asserts.AssertPresignedS3Url(struct["LogUri"]) end
	if struct["Message"] then asserts.AssertMessage(struct["Message"]) end
	if struct["CreatedAt"] then asserts.AssertEpochTime(struct["CreatedAt"]) end
	if struct["FinishedAt"] then asserts.AssertEpochTime(struct["FinishedAt"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetBatchPredictionOutput[k], "GetBatchPredictionOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBatchPredictionOutput
-- <p>Represents the output of a <code>GetBatchPrediction</code> operation and describes a <code>BatchPrediction</code>.</p>
-- @param _Status [EntityStatus] <p>The status of the <code>BatchPrediction</code>, which can be one of the following values:</p> <ul> <li> <code>PENDING</code> - Amazon Machine Learning (Amazon ML) submitted a request to generate batch predictions.</li> <li> <code>INPROGRESS</code> - The batch predictions are in progress.</li> <li> <code>FAILED</code> - The request to perform a batch prediction did not run to completion. It is not usable.</li> <li> <code>COMPLETED</code> - The batch prediction process completed successfully.</li> <li> <code>DELETED</code> - The <code>BatchPrediction</code> is marked as deleted. It is not usable.</li> </ul>
-- @param _ComputeTime [LongType] <p>The approximate CPU time in milliseconds that Amazon Machine Learning spent processing the <code>BatchPrediction</code>, normalized and scaled on computation resources. <code>ComputeTime</code> is only available if the <code>BatchPrediction</code> is in the <code>COMPLETED</code> state.</p>
-- @param _Name [EntityName] <p>A user-supplied name or description of the <code>BatchPrediction</code>.</p>
-- @param _InputDataLocationS3 [S3Url] <p>The location of the data file or directory in Amazon Simple Storage Service (Amazon S3).</p>
-- @param _InvalidRecordCount [LongType] <p>The number of invalid records that Amazon Machine Learning saw while processing the <code>BatchPrediction</code>.</p>
-- @param _CreatedByIamUser [AwsUserArn] <p>The AWS user account that invoked the <code>BatchPrediction</code>. The account type can be either an AWS root account or an AWS Identity and Access Management (IAM) user account.</p>
-- @param _MLModelId [EntityId] <p>The ID of the <code>MLModel</code> that generated predictions for the <code>BatchPrediction</code> request.</p>
-- @param _TotalRecordCount [LongType] <p>The number of total records that Amazon Machine Learning saw while processing the <code>BatchPrediction</code>.</p>
-- @param _LastUpdatedAt [EpochTime] <p>The time of the most recent edit to <code>BatchPrediction</code>. The time is expressed in epoch time.</p>
-- @param _BatchPredictionDataSourceId [EntityId] <p>The ID of the <code>DataSource</code> that was used to create the <code>BatchPrediction</code>. </p>
-- @param _OutputUri [S3Url] <p>The location of an Amazon S3 bucket or directory to receive the operation results.</p>
-- @param _StartedAt [EpochTime] <p>The epoch time when Amazon Machine Learning marked the <code>BatchPrediction</code> as <code>INPROGRESS</code>. <code>StartedAt</code> isn't available if the <code>BatchPrediction</code> is in the <code>PENDING</code> state.</p>
-- @param _BatchPredictionId [EntityId] <p>An ID assigned to the <code>BatchPrediction</code> at creation. This value should be identical to the value of the <code>BatchPredictionID</code> in the request.</p>
-- @param _LogUri [PresignedS3Url] <p>A link to the file that contains logs of the <code>CreateBatchPrediction</code> operation.</p>
-- @param _Message [Message] <p>A description of the most recent details about processing the batch prediction request.</p>
-- @param _CreatedAt [EpochTime] <p>The time when the <code>BatchPrediction</code> was created. The time is expressed in epoch time.</p>
-- @param _FinishedAt [EpochTime] <p>The epoch time when Amazon Machine Learning marked the <code>BatchPrediction</code> as <code>COMPLETED</code> or <code>FAILED</code>. <code>FinishedAt</code> is only available when the <code>BatchPrediction</code> is in the <code>COMPLETED</code> or <code>FAILED</code> state.</p>
function M.GetBatchPredictionOutput(_Status, _ComputeTime, _Name, _InputDataLocationS3, _InvalidRecordCount, _CreatedByIamUser, _MLModelId, _TotalRecordCount, _LastUpdatedAt, _BatchPredictionDataSourceId, _OutputUri, _StartedAt, _BatchPredictionId, _LogUri, _Message, _CreatedAt, _FinishedAt, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetBatchPredictionOutput")
	local t = { 
		["Status"] = _Status,
		["ComputeTime"] = _ComputeTime,
		["Name"] = _Name,
		["InputDataLocationS3"] = _InputDataLocationS3,
		["InvalidRecordCount"] = _InvalidRecordCount,
		["CreatedByIamUser"] = _CreatedByIamUser,
		["MLModelId"] = _MLModelId,
		["TotalRecordCount"] = _TotalRecordCount,
		["LastUpdatedAt"] = _LastUpdatedAt,
		["BatchPredictionDataSourceId"] = _BatchPredictionDataSourceId,
		["OutputUri"] = _OutputUri,
		["StartedAt"] = _StartedAt,
		["BatchPredictionId"] = _BatchPredictionId,
		["LogUri"] = _LogUri,
		["Message"] = _Message,
		["CreatedAt"] = _CreatedAt,
		["FinishedAt"] = _FinishedAt,
	}
	asserts.AssertGetBatchPredictionOutput(t)
	return t
end

keys.Tag = { ["Value"] = true, ["Key"] = true, nil }

function asserts.AssertTag(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Tag to be of type 'table'")
	if struct["Value"] then asserts.AssertTagValue(struct["Value"]) end
	if struct["Key"] then asserts.AssertTagKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(keys.Tag[k], "Tag contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Tag
-- <p>A custom key-value pair associated with an ML object, such as an ML model.</p>
-- @param _Value [TagValue] <p>An optional string, typically used to describe or define the tag. Valid characters include Unicode letters, digits, white space, _, ., /, =, +, -, %, and @.</p>
-- @param _Key [TagKey] <p>A unique identifier for the tag. Valid characters include Unicode letters, digits, white space, _, ., /, =, +, -, %, and @.</p>
function M.Tag(_Value, _Key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Tag")
	local t = { 
		["Value"] = _Value,
		["Key"] = _Key,
	}
	asserts.AssertTag(t)
	return t
end

keys.PredictOutput = { ["Prediction"] = true, nil }

function asserts.AssertPredictOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PredictOutput to be of type 'table'")
	if struct["Prediction"] then asserts.AssertPrediction(struct["Prediction"]) end
	for k,_ in pairs(struct) do
		assert(keys.PredictOutput[k], "PredictOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PredictOutput
--  
-- @param _Prediction [Prediction] 
function M.PredictOutput(_Prediction, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PredictOutput")
	local t = { 
		["Prediction"] = _Prediction,
	}
	asserts.AssertPredictOutput(t)
	return t
end

keys.DescribeDataSourcesInput = { ["GT"] = true, ["FilterVariable"] = true, ["GE"] = true, ["NE"] = true, ["LT"] = true, ["LE"] = true, ["Limit"] = true, ["SortOrder"] = true, ["NextToken"] = true, ["EQ"] = true, ["Prefix"] = true, nil }

function asserts.AssertDescribeDataSourcesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDataSourcesInput to be of type 'table'")
	if struct["GT"] then asserts.AssertComparatorValue(struct["GT"]) end
	if struct["FilterVariable"] then asserts.AssertDataSourceFilterVariable(struct["FilterVariable"]) end
	if struct["GE"] then asserts.AssertComparatorValue(struct["GE"]) end
	if struct["NE"] then asserts.AssertComparatorValue(struct["NE"]) end
	if struct["LT"] then asserts.AssertComparatorValue(struct["LT"]) end
	if struct["LE"] then asserts.AssertComparatorValue(struct["LE"]) end
	if struct["Limit"] then asserts.AssertPageLimit(struct["Limit"]) end
	if struct["SortOrder"] then asserts.AssertSortOrder(struct["SortOrder"]) end
	if struct["NextToken"] then asserts.AssertStringType(struct["NextToken"]) end
	if struct["EQ"] then asserts.AssertComparatorValue(struct["EQ"]) end
	if struct["Prefix"] then asserts.AssertComparatorValue(struct["Prefix"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeDataSourcesInput[k], "DescribeDataSourcesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDataSourcesInput
--  
-- @param _GT [ComparatorValue] <p>The greater than operator. The <code>DataSource</code> results will have <code>FilterVariable</code> values that are greater than the value specified with <code>GT</code>.</p>
-- @param _FilterVariable [DataSourceFilterVariable] <p>Use one of the following variables to filter a list of <code>DataSource</code>:</p> <ul> <li> <code>CreatedAt</code> - Sets the search criteria to <code>DataSource</code> creation dates.</li> <li> <code>Status</code> - Sets the search criteria to <code>DataSource</code> statuses.</li> <li> <code>Name</code> - Sets the search criteria to the contents of <code>DataSource</code> <b> </b> <code>Name</code>.</li> <li> <code>DataUri</code> - Sets the search criteria to the URI of data files used to create the <code>DataSource</code>. The URI can identify either a file or an Amazon Simple Storage Service (Amazon S3) bucket or directory.</li> <li> <code>IAMUser</code> - Sets the search criteria to the user account that invoked the <code>DataSource</code> creation.</li> </ul>
-- @param _GE [ComparatorValue] <p>The greater than or equal to operator. The <code>DataSource</code> results will have <code>FilterVariable</code> values that are greater than or equal to the value specified with <code>GE</code>. </p>
-- @param _NE [ComparatorValue] <p>The not equal to operator. The <code>DataSource</code> results will have <code>FilterVariable</code> values not equal to the value specified with <code>NE</code>.</p>
-- @param _LT [ComparatorValue] <p>The less than operator. The <code>DataSource</code> results will have <code>FilterVariable</code> values that are less than the value specified with <code>LT</code>.</p>
-- @param _LE [ComparatorValue] <p>The less than or equal to operator. The <code>DataSource</code> results will have <code>FilterVariable</code> values that are less than or equal to the value specified with <code>LE</code>.</p>
-- @param _Limit [PageLimit] <p> The maximum number of <code>DataSource</code> to include in the result.</p>
-- @param _SortOrder [SortOrder] <p>A two-value parameter that determines the sequence of the resulting list of <code>DataSource</code>.</p> <ul> <li> <code>asc</code> - Arranges the list in ascending order (A-Z, 0-9).</li> <li> <code>dsc</code> - Arranges the list in descending order (Z-A, 9-0).</li> </ul> <p>Results are sorted by <code>FilterVariable</code>.</p>
-- @param _NextToken [StringType] <p>The ID of the page in the paginated results.</p>
-- @param _EQ [ComparatorValue] <p>The equal to operator. The <code>DataSource</code> results will have <code>FilterVariable</code> values that exactly match the value specified with <code>EQ</code>.</p>
-- @param _Prefix [ComparatorValue] <p>A string that is found at the beginning of a variable, such as <code>Name</code> or <code>Id</code>.</p> <p>For example, a <code>DataSource</code> could have the <code>Name</code> <code>2014-09-09-HolidayGiftMailer</code>. To search for this <code>DataSource</code>, select <code>Name</code> for the <code>FilterVariable</code> and any of the following strings for the <code>Prefix</code>: </p> <ul> <li><p>2014-09</p></li> <li><p>2014-09-09</p></li> <li><p>2014-09-09-Holiday</p></li> </ul>
function M.DescribeDataSourcesInput(_GT, _FilterVariable, _GE, _NE, _LT, _LE, _Limit, _SortOrder, _NextToken, _EQ, _Prefix, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeDataSourcesInput")
	local t = { 
		["GT"] = _GT,
		["FilterVariable"] = _FilterVariable,
		["GE"] = _GE,
		["NE"] = _NE,
		["LT"] = _LT,
		["LE"] = _LE,
		["Limit"] = _Limit,
		["SortOrder"] = _SortOrder,
		["NextToken"] = _NextToken,
		["EQ"] = _EQ,
		["Prefix"] = _Prefix,
	}
	asserts.AssertDescribeDataSourcesInput(t)
	return t
end

keys.Prediction = { ["predictedLabel"] = true, ["predictedValue"] = true, ["predictedScores"] = true, ["details"] = true, nil }

function asserts.AssertPrediction(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Prediction to be of type 'table'")
	if struct["predictedLabel"] then asserts.AssertLabel(struct["predictedLabel"]) end
	if struct["predictedValue"] then asserts.AssertfloatLabel(struct["predictedValue"]) end
	if struct["predictedScores"] then asserts.AssertScoreValuePerLabelMap(struct["predictedScores"]) end
	if struct["details"] then asserts.AssertDetailsMap(struct["details"]) end
	for k,_ in pairs(struct) do
		assert(keys.Prediction[k], "Prediction contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Prediction
-- <p>The output from a <code>Predict</code> operation: </p> <ul> <li> <p> <code>Details</code> - Contains the following attributes: <code>DetailsAttributes.PREDICTIVE_MODEL_TYPE - REGRESSION | BINARY | MULTICLASS</code> <code>DetailsAttributes.ALGORITHM - SGD</code> </p> </li> <li> <p> <code>PredictedLabel</code> - Present for either a <code>BINARY</code> or <code>MULTICLASS</code> <code>MLModel</code> request. </p> </li> <li> <p> <code>PredictedScores</code> - Contains the raw classification score corresponding to each label. </p> </li> <li> <p> <code>PredictedValue</code> - Present for a <code>REGRESSION</code> <code>MLModel</code> request. </p> </li> </ul>
-- @param _predictedLabel [Label] <p>The prediction label for either a <code>BINARY</code> or <code>MULTICLASS</code> <code>MLModel</code>.</p>
-- @param _predictedValue [floatLabel] The prediction value for <code>REGRESSION</code> <code>MLModel</code>.
-- @param _predictedScores [ScoreValuePerLabelMap] 
-- @param _details [DetailsMap] 
function M.Prediction(_predictedLabel, _predictedValue, _predictedScores, _details, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Prediction")
	local t = { 
		["predictedLabel"] = _predictedLabel,
		["predictedValue"] = _predictedValue,
		["predictedScores"] = _predictedScores,
		["details"] = _details,
	}
	asserts.AssertPrediction(t)
	return t
end

keys.PredictorNotMountedException = { ["message"] = true, nil }

function asserts.AssertPredictorNotMountedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PredictorNotMountedException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.PredictorNotMountedException[k], "PredictorNotMountedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PredictorNotMountedException
-- <p>The exception is thrown when a predict request is made to an unmounted <code>MLModel</code>.</p>
-- @param _message [ErrorMessage] 
function M.PredictorNotMountedException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PredictorNotMountedException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertPredictorNotMountedException(t)
	return t
end

keys.CreateDataSourceFromRedshiftInput = { ["DataSourceName"] = true, ["RoleARN"] = true, ["ComputeStatistics"] = true, ["DataSourceId"] = true, ["DataSpec"] = true, nil }

function asserts.AssertCreateDataSourceFromRedshiftInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDataSourceFromRedshiftInput to be of type 'table'")
	assert(struct["DataSourceId"], "Expected key DataSourceId to exist in table")
	assert(struct["DataSpec"], "Expected key DataSpec to exist in table")
	assert(struct["RoleARN"], "Expected key RoleARN to exist in table")
	if struct["DataSourceName"] then asserts.AssertEntityName(struct["DataSourceName"]) end
	if struct["RoleARN"] then asserts.AssertRoleARN(struct["RoleARN"]) end
	if struct["ComputeStatistics"] then asserts.AssertComputeStatistics(struct["ComputeStatistics"]) end
	if struct["DataSourceId"] then asserts.AssertEntityId(struct["DataSourceId"]) end
	if struct["DataSpec"] then asserts.AssertRedshiftDataSpec(struct["DataSpec"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateDataSourceFromRedshiftInput[k], "CreateDataSourceFromRedshiftInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDataSourceFromRedshiftInput
--  
-- @param _DataSourceName [EntityName] <p>A user-supplied name or description of the <code>DataSource</code>. </p>
-- @param _RoleARN [RoleARN] <p>A fully specified role Amazon Resource Name (ARN). Amazon ML assumes the role on behalf of the user to create the following: </p> <p> <ul> <li><p>A security group to allow Amazon ML to execute the <code>SelectSqlQuery</code> query on an Amazon Redshift cluster</p></li> <li><p>An Amazon S3 bucket policy to grant Amazon ML read/write permissions on the <code>S3StagingLocation</code></p></li> </ul> </p>
-- @param _ComputeStatistics [ComputeStatistics] <p>The compute statistics for a <code>DataSource</code>. The statistics are generated from the observation data referenced by a <code>DataSource</code>. Amazon ML uses the statistics internally during <code>MLModel</code> training. This parameter must be set to <code>true</code> if the <code>DataSource</code> needs to be used for <code>MLModel</code> training.</p>
-- @param _DataSourceId [EntityId] <p>A user-supplied ID that uniquely identifies the <code>DataSource</code>.</p>
-- @param _DataSpec [RedshiftDataSpec] <p>The data specification of an Amazon Redshift <code>DataSource</code>:</p> <ul> <li><p>DatabaseInformation - <ul> <li> <code>DatabaseName</code> - The name of the Amazon Redshift database. </li> <li> <code> ClusterIdentifier</code> - The unique ID for the Amazon Redshift cluster.</li> </ul></p></li> <li><p>DatabaseCredentials - The AWS Identity and Access Management (IAM) credentials that are used to connect to the Amazon Redshift database.</p></li> <li><p>SelectSqlQuery - The query that is used to retrieve the observation data for the <code>Datasource</code>.</p></li> <li><p>S3StagingLocation - The Amazon Simple Storage Service (Amazon S3) location for staging Amazon Redshift data. The data retrieved from Amazon Redshift using the <code>SelectSqlQuery</code> query is stored in this location.</p></li> <li><p>DataSchemaUri - The Amazon S3 location of the <code>DataSchema</code>.</p></li> <li><p>DataSchema - A JSON string representing the schema. This is not required if <code>DataSchemaUri</code> is specified. </p></li> <li> <p>DataRearrangement - A JSON string that represents the splitting and rearrangement requirements for the <code>DataSource</code>.</p> <p> Sample - <code> "{\"splitting\":{\"percentBegin\":10,\"percentEnd\":60}}"</code> </p> </li> </ul>
-- Required parameter: DataSourceId
-- Required parameter: DataSpec
-- Required parameter: RoleARN
function M.CreateDataSourceFromRedshiftInput(_DataSourceName, _RoleARN, _ComputeStatistics, _DataSourceId, _DataSpec, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDataSourceFromRedshiftInput")
	local t = { 
		["DataSourceName"] = _DataSourceName,
		["RoleARN"] = _RoleARN,
		["ComputeStatistics"] = _ComputeStatistics,
		["DataSourceId"] = _DataSourceId,
		["DataSpec"] = _DataSpec,
	}
	asserts.AssertCreateDataSourceFromRedshiftInput(t)
	return t
end

keys.TagLimitExceededException = { ["message"] = true, nil }

function asserts.AssertTagLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TagLimitExceededException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.TagLimitExceededException[k], "TagLimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TagLimitExceededException
--  
-- @param _message [ErrorMessage] 
function M.TagLimitExceededException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TagLimitExceededException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertTagLimitExceededException(t)
	return t
end

keys.DeleteTagsOutput = { ["ResourceType"] = true, ["ResourceId"] = true, nil }

function asserts.AssertDeleteTagsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteTagsOutput to be of type 'table'")
	if struct["ResourceType"] then asserts.AssertTaggableResourceType(struct["ResourceType"]) end
	if struct["ResourceId"] then asserts.AssertEntityId(struct["ResourceId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteTagsOutput[k], "DeleteTagsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteTagsOutput
-- <p>Amazon ML returns the following elements. </p>
-- @param _ResourceType [TaggableResourceType] <p>The type of the ML object from which tags were deleted.</p>
-- @param _ResourceId [EntityId] <p>The ID of the ML object from which tags were deleted.</p>
function M.DeleteTagsOutput(_ResourceType, _ResourceId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteTagsOutput")
	local t = { 
		["ResourceType"] = _ResourceType,
		["ResourceId"] = _ResourceId,
	}
	asserts.AssertDeleteTagsOutput(t)
	return t
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

function asserts.AssertMLModelType(str)
	assert(str)
	assert(type(str) == "string", "Expected MLModelType to be of type 'string'")
end

--  
function M.MLModelType(str)
	asserts.AssertMLModelType(str)
	return str
end

function asserts.AssertRDSDatabaseUsername(str)
	assert(str)
	assert(type(str) == "string", "Expected RDSDatabaseUsername to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

-- <p>The username to be used by Amazon ML to connect to database on an Amazon RDS instance. The username should have sufficient permissions to execute an <code>RDSSelectSqlQuery</code> query.</p>
function M.RDSDatabaseUsername(str)
	asserts.AssertRDSDatabaseUsername(str)
	return str
end

function asserts.AssertDetailsAttributes(str)
	assert(str)
	assert(type(str) == "string", "Expected DetailsAttributes to be of type 'string'")
end

-- Contains the key values of <code>DetailsMap</code>: <code>PredictiveModelType</code> - Indicates the type of the <code>MLModel</code>. <code>Algorithm</code> - Indicates the algorithm that was used for the <code>MLModel</code>.
function M.DetailsAttributes(str)
	asserts.AssertDetailsAttributes(str)
	return str
end

function asserts.AssertRDSDatabaseName(str)
	assert(str)
	assert(type(str) == "string", "Expected RDSDatabaseName to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

-- <p>The name of a database hosted on an RDS DB instance.</p>
function M.RDSDatabaseName(str)
	asserts.AssertRDSDatabaseName(str)
	return str
end

function asserts.AssertRedshiftDatabasePassword(str)
	assert(str)
	assert(type(str) == "string", "Expected RedshiftDatabasePassword to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 8, "Expected string to be min 8 characters")
end

-- <p>A password to be used by Amazon ML to connect to a database on an Amazon Redshift cluster. The password should have sufficient permissions to execute a <code>RedshiftSelectSqlQuery</code> query. The password should be valid for an Amazon Redshift <a href="http://docs.aws.amazon.com/redshift/latest/dg/r_CREATE_USER.html">USER</a>.</p>
function M.RedshiftDatabasePassword(str)
	asserts.AssertRedshiftDatabasePassword(str)
	return str
end

function asserts.AssertRecipe(str)
	assert(str)
	assert(type(str) == "string", "Expected Recipe to be of type 'string'")
	assert(#str <= 131071, "Expected string to be max 131071 characters")
end

--  
function M.Recipe(str)
	asserts.AssertRecipe(str)
	return str
end

function asserts.AssertEDPSubnetId(str)
	assert(str)
	assert(type(str) == "string", "Expected EDPSubnetId to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.EDPSubnetId(str)
	asserts.AssertEDPSubnetId(str)
	return str
end

function asserts.AssertEntityId(str)
	assert(str)
	assert(type(str) == "string", "Expected EntityId to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.EntityId(str)
	asserts.AssertEntityId(str)
	return str
end

function asserts.AssertEDPServiceRole(str)
	assert(str)
	assert(type(str) == "string", "Expected EDPServiceRole to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.EDPServiceRole(str)
	asserts.AssertEDPServiceRole(str)
	return str
end

function asserts.AssertLabel(str)
	assert(str)
	assert(type(str) == "string", "Expected Label to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.Label(str)
	asserts.AssertLabel(str)
	return str
end

function asserts.AssertRedshiftSelectSqlQuery(str)
	assert(str)
	assert(type(str) == "string", "Expected RedshiftSelectSqlQuery to be of type 'string'")
	assert(#str <= 16777216, "Expected string to be max 16777216 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

-- <p> Describes the SQL query to execute on the Amazon Redshift database. The SQL query should be valid for an Amazon Redshift <a href="http://docs.aws.amazon.com/redshift/latest/dg/r_SELECT_synopsis.html">SELECT</a>. </p>
function M.RedshiftSelectSqlQuery(str)
	asserts.AssertRedshiftSelectSqlQuery(str)
	return str
end

function asserts.AssertPerformanceMetricsPropertyKey(str)
	assert(str)
	assert(type(str) == "string", "Expected PerformanceMetricsPropertyKey to be of type 'string'")
end

--  
function M.PerformanceMetricsPropertyKey(str)
	asserts.AssertPerformanceMetricsPropertyKey(str)
	return str
end

function asserts.AssertRedshiftClusterIdentifier(str)
	assert(str)
	assert(type(str) == "string", "Expected RedshiftClusterIdentifier to be of type 'string'")
	assert(#str <= 63, "Expected string to be max 63 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

-- <p>The ID of an Amazon Redshift cluster.</p>
function M.RedshiftClusterIdentifier(str)
	asserts.AssertRedshiftClusterIdentifier(str)
	return str
end

function asserts.AssertRDSSelectSqlQuery(str)
	assert(str)
	assert(type(str) == "string", "Expected RDSSelectSqlQuery to be of type 'string'")
	assert(#str <= 16777216, "Expected string to be max 16777216 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

-- <p>The SQL query to be executed against the Amazon RDS database. The SQL query should be valid for the Amazon RDS type being used. </p>
function M.RDSSelectSqlQuery(str)
	asserts.AssertRDSSelectSqlQuery(str)
	return str
end

function asserts.AssertTaggableResourceType(str)
	assert(str)
	assert(type(str) == "string", "Expected TaggableResourceType to be of type 'string'")
end

--  
function M.TaggableResourceType(str)
	asserts.AssertTaggableResourceType(str)
	return str
end

function asserts.AssertAlgorithm(str)
	assert(str)
	assert(type(str) == "string", "Expected Algorithm to be of type 'string'")
end

-- <p>The function used to train an <code>MLModel</code>. Training choices supported by Amazon ML include the following:</p> <ul> <li> <code>SGD</code> - Stochastic Gradient Descent.</li> <li> <code>RandomForest</code> - Random forest of decision trees.</li> </ul>
function M.Algorithm(str)
	asserts.AssertAlgorithm(str)
	return str
end

function asserts.AssertMLModelName(str)
	assert(str)
	assert(type(str) == "string", "Expected MLModelName to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
end

--  
function M.MLModelName(str)
	asserts.AssertMLModelName(str)
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
	assert(#str <= 2048, "Expected string to be max 2048 characters")
end

--  
function M.ErrorMessage(str)
	asserts.AssertErrorMessage(str)
	return str
end

function asserts.AssertRedshiftDatabaseUsername(str)
	assert(str)
	assert(type(str) == "string", "Expected RedshiftDatabaseUsername to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

-- <p>A username to be used by Amazon Machine Learning (Amazon ML)to connect to a database on an Amazon Redshift cluster. The username should have sufficient permissions to execute the <code>RedshiftSelectSqlQuery</code> query. The username should be valid for an Amazon Redshift <a href="http://docs.aws.amazon.com/redshift/latest/dg/r_CREATE_USER.html">USER</a>.</p>
function M.RedshiftDatabaseUsername(str)
	asserts.AssertRedshiftDatabaseUsername(str)
	return str
end

function asserts.AssertMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected Message to be of type 'string'")
	assert(#str <= 10240, "Expected string to be max 10240 characters")
end

-- <p> Description of the most recent details about an object.</p>
function M.Message(str)
	asserts.AssertMessage(str)
	return str
end

function asserts.AssertDetailsValue(str)
	assert(str)
	assert(type(str) == "string", "Expected DetailsValue to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.DetailsValue(str)
	asserts.AssertDetailsValue(str)
	return str
end

function asserts.AssertMLModelFilterVariable(str)
	assert(str)
	assert(type(str) == "string", "Expected MLModelFilterVariable to be of type 'string'")
end

--  
function M.MLModelFilterVariable(str)
	asserts.AssertMLModelFilterVariable(str)
	return str
end

function asserts.AssertEntityName(str)
	assert(str)
	assert(type(str) == "string", "Expected EntityName to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
end

-- <p>A user-supplied name or description of the Amazon ML resource.</p>
function M.EntityName(str)
	asserts.AssertEntityName(str)
	return str
end

function asserts.AssertVipURL(str)
	assert(str)
	assert(type(str) == "string", "Expected VipURL to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
end

--  
function M.VipURL(str)
	asserts.AssertVipURL(str)
	return str
end

function asserts.AssertBatchPredictionFilterVariable(str)
	assert(str)
	assert(type(str) == "string", "Expected BatchPredictionFilterVariable to be of type 'string'")
end

-- <p>A list of the variables to use in searching or filtering <code>BatchPrediction</code>.</p> <ul> <li> <code>CreatedAt</code> - Sets the search criteria to <code>BatchPrediction</code> creation date.</li> <li> <code>Status</code> - Sets the search criteria to <code>BatchPrediction</code> status.</li> <li> <code>Name</code> - Sets the search criteria to the contents of <code>BatchPrediction</code><b> </b> <code>Name</code>.</li> <li> <code>IAMUser</code> - Sets the search criteria to the user account that invoked the <code>BatchPrediction</code> creation.</li> <li> <code>MLModelId</code> - Sets the search criteria to the <code>MLModel</code> used in the <code>BatchPrediction</code>.</li> <li> <code>DataSourceId</code> - Sets the search criteria to the <code>DataSource</code> used in the <code>BatchPrediction</code>.</li> <li> <code>DataURI</code> - Sets the search criteria to the data file(s) used in the <code>BatchPrediction</code>. The URL can identify either a file or an Amazon Simple Storage Service (Amazon S3) bucket or directory.</li> </ul>
function M.BatchPredictionFilterVariable(str)
	asserts.AssertBatchPredictionFilterVariable(str)
	return str
end

function asserts.AssertRDSInstanceIdentifier(str)
	assert(str)
	assert(type(str) == "string", "Expected RDSInstanceIdentifier to be of type 'string'")
	assert(#str <= 63, "Expected string to be max 63 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

-- Identifier of RDS DB Instances.
function M.RDSInstanceIdentifier(str)
	asserts.AssertRDSInstanceIdentifier(str)
	return str
end

function asserts.AssertDataSourceFilterVariable(str)
	assert(str)
	assert(type(str) == "string", "Expected DataSourceFilterVariable to be of type 'string'")
end

-- <p>A list of the variables to use in searching or filtering <code>DataSource</code>.</p> <ul> <li> <code>CreatedAt</code> - Sets the search criteria to <code>DataSource</code> creation date.</li> <li> <code>Status</code> - Sets the search criteria to <code>DataSource</code> status.</li> <li> <code>Name</code> - Sets the search criteria to the contents of <code>DataSource</code> <b> </b> <code>Name</code>.</li> <li> <code>DataUri</code> - Sets the search criteria to the URI of data files used to create the <code>DataSource</code>. The URI can identify either a file or an Amazon Simple Storage Service (Amazon S3) bucket or directory.</li> <li> <code>IAMUser</code> - Sets the search criteria to the user account that invoked the <code>DataSource</code> creation.</li> </ul> <note><title>Note</title> <p>The variable names should match the variable names in the <code>DataSource</code>.</p> </note>
function M.DataSourceFilterVariable(str)
	asserts.AssertDataSourceFilterVariable(str)
	return str
end

function asserts.AssertDataSchema(str)
	assert(str)
	assert(type(str) == "string", "Expected DataSchema to be of type 'string'")
	assert(#str <= 131071, "Expected string to be max 131071 characters")
end

-- <p>The schema of a <code>DataSource</code>. The <code>DataSchema</code> defines the structure of the observation data in the data file(s) referenced in the <code>DataSource</code>. The DataSource schema is expressed in JSON format.</p> <p><code>DataSchema</code> is not required if you specify a <code>DataSchemaUri</code></p> <p>{ "version": "1.0", "recordAnnotationFieldName": "F1", "recordWeightFieldName": "F2", "targetFieldName": "F3", "dataFormat": "CSV", "dataFileContainsHeader": true, "variables": [ { "fieldName": "F1", "fieldType": "TEXT" }, { "fieldName": "F2", "fieldType": "NUMERIC" }, { "fieldName": "F3", "fieldType": "CATEGORICAL" }, { "fieldName": "F4", "fieldType": "NUMERIC" }, { "fieldName": "F5", "fieldType": "CATEGORICAL" }, { "fieldName": "F6", "fieldType": "TEXT" }, { "fieldName": "F7", "fieldType": "WEIGHTED_INT_SEQUENCE" }, { "fieldName": "F8", "fieldType": "WEIGHTED_STRING_SEQUENCE" } ], "excludedVariableNames": [ "F6" ] } </p>
function M.DataSchema(str)
	asserts.AssertDataSchema(str)
	return str
end

function asserts.AssertEDPSecurityGroupId(str)
	assert(str)
	assert(type(str) == "string", "Expected EDPSecurityGroupId to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.EDPSecurityGroupId(str)
	asserts.AssertEDPSecurityGroupId(str)
	return str
end

function asserts.AssertVariableName(str)
	assert(str)
	assert(type(str) == "string", "Expected VariableName to be of type 'string'")
end

-- <p>The name of a variable. Currently it's used to specify the name of the target value, label, weight, and tags.</p>
function M.VariableName(str)
	asserts.AssertVariableName(str)
	return str
end

function asserts.AssertRedshiftDatabaseName(str)
	assert(str)
	assert(type(str) == "string", "Expected RedshiftDatabaseName to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

-- <p>The name of a database hosted on an Amazon Redshift cluster.</p>
function M.RedshiftDatabaseName(str)
	asserts.AssertRedshiftDatabaseName(str)
	return str
end

function asserts.AssertVariableValue(str)
	assert(str)
	assert(type(str) == "string", "Expected VariableValue to be of type 'string'")
end

-- <p>The value of a variable. Currently it's used to specify values of the target value, weights, and tag variables and for filtering variable values.</p>
function M.VariableValue(str)
	asserts.AssertVariableValue(str)
	return str
end

function asserts.AssertRDSDatabasePassword(str)
	assert(str)
	assert(type(str) == "string", "Expected RDSDatabasePassword to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 8, "Expected string to be min 8 characters")
end

-- <p>The password to be used by Amazon ML to connect to a database on an RDS DB instance. The password should have sufficient permissions to execute the <code>RDSSelectQuery</code> query.</p>
function M.RDSDatabasePassword(str)
	asserts.AssertRDSDatabasePassword(str)
	return str
end

function asserts.AssertComparatorValue(str)
	assert(str)
	assert(type(str) == "string", "Expected ComparatorValue to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
end

-- <p>The value specified in a filtering condition. The <code>ComparatorValue</code> becomes the reference value when matching or evaluating data values in filtering and searching functions.</p>
function M.ComparatorValue(str)
	asserts.AssertComparatorValue(str)
	return str
end

function asserts.AssertEvaluationFilterVariable(str)
	assert(str)
	assert(type(str) == "string", "Expected EvaluationFilterVariable to be of type 'string'")
end

-- <p>A list of the variables to use in searching or filtering <code>Evaluation</code>.</p> <ul> <li> <code>CreatedAt</code> - Sets the search criteria to <code>Evaluation</code> creation date.</li> <li> <code>Status</code> - Sets the search criteria to <code>Evaluation</code> status.</li> <li> <code>Name</code> - Sets the search criteria to the contents of <code>Evaluation</code> <b> </b> <code>Name</code>.</li> <li> <code>IAMUser</code> - Sets the search criteria to the user account that invoked an evaluation.</li> <li> <code>MLModelId</code> - Sets the search criteria to the <code>Predictor</code> that was evaluated.</li> <li> <code>DataSourceId</code> - Sets the search criteria to the <code>DataSource</code> used in evaluation.</li> <li> <code>DataUri</code> - Sets the search criteria to the data file(s) used in evaluation. The URL can identify either a file or an Amazon Simple Storage Service (Amazon S3) bucket or directory.</li> </ul>
function M.EvaluationFilterVariable(str)
	asserts.AssertEvaluationFilterVariable(str)
	return str
end

function asserts.AssertRealtimeEndpointStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected RealtimeEndpointStatus to be of type 'string'")
end

--  
function M.RealtimeEndpointStatus(str)
	asserts.AssertRealtimeEndpointStatus(str)
	return str
end

function asserts.AssertEntityStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected EntityStatus to be of type 'string'")
end

-- <p>Object status with the following possible values:</p> <ul> <li><code>PENDING</code></li> <li><code>INPROGRESS</code></li> <li><code>FAILED</code></li> <li><code>COMPLETED</code></li> <li><code>DELETED</code></li> </ul>
function M.EntityStatus(str)
	asserts.AssertEntityStatus(str)
	return str
end

function asserts.AssertEDPPipelineId(str)
	assert(str)
	assert(type(str) == "string", "Expected EDPPipelineId to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.EDPPipelineId(str)
	asserts.AssertEDPPipelineId(str)
	return str
end

function asserts.AssertAwsUserArn(str)
	assert(str)
	assert(type(str) == "string", "Expected AwsUserArn to be of type 'string'")
end

-- <p>An Amazon Web Service (AWS) user account identifier. The account identifier can be an AWS root account or an AWS Identity and Access Management (IAM) user.</p>
function M.AwsUserArn(str)
	asserts.AssertAwsUserArn(str)
	return str
end

function asserts.AssertPresignedS3Url(str)
	assert(str)
	assert(type(str) == "string", "Expected PresignedS3Url to be of type 'string'")
end

--  
function M.PresignedS3Url(str)
	asserts.AssertPresignedS3Url(str)
	return str
end

function asserts.AssertEDPResourceRole(str)
	assert(str)
	assert(type(str) == "string", "Expected EDPResourceRole to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.EDPResourceRole(str)
	asserts.AssertEDPResourceRole(str)
	return str
end

function asserts.AssertStringType(str)
	assert(str)
	assert(type(str) == "string", "Expected StringType to be of type 'string'")
end

-- <p>String type.</p>
function M.StringType(str)
	asserts.AssertStringType(str)
	return str
end

function asserts.AssertRoleARN(str)
	assert(str)
	assert(type(str) == "string", "Expected RoleARN to be of type 'string'")
	assert(#str <= 110, "Expected string to be max 110 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

-- <p>The Amazon Resource Name (ARN) of an <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/roles-toplevel.html#roles-about-termsandconcepts">AWS IAM Role</a>, such as the following: arn:aws:iam::account:role/rolename. </p>
function M.RoleARN(str)
	asserts.AssertRoleARN(str)
	return str
end

function asserts.AssertPerformanceMetricsPropertyValue(str)
	assert(str)
	assert(type(str) == "string", "Expected PerformanceMetricsPropertyValue to be of type 'string'")
end

--  
function M.PerformanceMetricsPropertyValue(str)
	asserts.AssertPerformanceMetricsPropertyValue(str)
	return str
end

function asserts.AssertS3Url(str)
	assert(str)
	assert(type(str) == "string", "Expected S3Url to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
end

-- <p>A reference to a file or bucket on Amazon Simple Storage Service (Amazon S3).</p>
function M.S3Url(str)
	asserts.AssertS3Url(str)
	return str
end

function asserts.AssertSortOrder(str)
	assert(str)
	assert(type(str) == "string", "Expected SortOrder to be of type 'string'")
end

-- <p>The sort order specified in a listing condition. Possible values include the following:</p> <ul> <li> <code>asc</code> - Present the information in ascending order (from A-Z).</li> <li> <code>dsc</code> - Present the information in descending order (from Z-A).</li> </ul>
function M.SortOrder(str)
	asserts.AssertSortOrder(str)
	return str
end

function asserts.AssertDataRearrangement(str)
	assert(str)
	assert(type(str) == "string", "Expected DataRearrangement to be of type 'string'")
end

--  
function M.DataRearrangement(str)
	asserts.AssertDataRearrangement(str)
	return str
end

function asserts.AssertScoreValue(float)
	assert(float)
	assert(type(float) == "number", "Expected ScoreValue to be of type 'number'")
end

function M.ScoreValue(float)
	asserts.AssertScoreValue(float)
	return float
end

function asserts.AssertScoreThreshold(float)
	assert(float)
	assert(type(float) == "number", "Expected ScoreThreshold to be of type 'number'")
end

function M.ScoreThreshold(float)
	asserts.AssertScoreThreshold(float)
	return float
end

function asserts.AssertfloatLabel(float)
	assert(float)
	assert(type(float) == "number", "Expected floatLabel to be of type 'number'")
end

function M.floatLabel(float)
	asserts.AssertfloatLabel(float)
	return float
end

function asserts.AssertLongType(long)
	assert(long)
	assert(type(long) == "number", "Expected LongType to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.LongType(long)
	asserts.AssertLongType(long)
	return long
end

function asserts.AssertPageLimit(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected PageLimit to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 100, "Expected integer to be max 100")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.PageLimit(integer)
	asserts.AssertPageLimit(integer)
	return integer
end

function asserts.AssertErrorCode(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected ErrorCode to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.ErrorCode(integer)
	asserts.AssertErrorCode(integer)
	return integer
end

function asserts.AssertIntegerType(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected IntegerType to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.IntegerType(integer)
	asserts.AssertIntegerType(integer)
	return integer
end

function asserts.AssertComputeStatistics(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected ComputeStatistics to be of type 'boolean'")
end

function M.ComputeStatistics(boolean)
	asserts.AssertComputeStatistics(boolean)
	return boolean
end

function asserts.AssertVerbose(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected Verbose to be of type 'boolean'")
end

function M.Verbose(boolean)
	asserts.AssertVerbose(boolean)
	return boolean
end

function asserts.AssertPerformanceMetricsProperties(map)
	assert(map)
	assert(type(map) == "table", "Expected PerformanceMetricsProperties to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertPerformanceMetricsPropertyKey(k)
		asserts.AssertPerformanceMetricsPropertyValue(v)
	end
end

function M.PerformanceMetricsProperties(map)
	asserts.AssertPerformanceMetricsProperties(map)
	return map
end

function asserts.AssertTrainingParameters(map)
	assert(map)
	assert(type(map) == "table", "Expected TrainingParameters to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertStringType(k)
		asserts.AssertStringType(v)
	end
end

function M.TrainingParameters(map)
	asserts.AssertTrainingParameters(map)
	return map
end

function asserts.AssertRecord(map)
	assert(map)
	assert(type(map) == "table", "Expected Record to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertVariableName(k)
		asserts.AssertVariableValue(v)
	end
end

function M.Record(map)
	asserts.AssertRecord(map)
	return map
end

function asserts.AssertScoreValuePerLabelMap(map)
	assert(map)
	assert(type(map) == "table", "Expected ScoreValuePerLabelMap to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertLabel(k)
		asserts.AssertScoreValue(v)
	end
end

function M.ScoreValuePerLabelMap(map)
	asserts.AssertScoreValuePerLabelMap(map)
	return map
end

function asserts.AssertDetailsMap(map)
	assert(map)
	assert(type(map) == "table", "Expected DetailsMap to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertDetailsAttributes(k)
		asserts.AssertDetailsValue(v)
	end
end

function M.DetailsMap(map)
	asserts.AssertDetailsMap(map)
	return map
end

function asserts.AssertEpochTime(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected EpochTime to be of type 'string'")
end

function M.EpochTime(timestamp)
	asserts.AssertEpochTime(timestamp)
	return timestamp
end

function asserts.AssertTagKeyList(list)
	assert(list)
	assert(type(list) == "table", "Expected TagKeyList to be of type ''table")
	assert(#list <= 100, "Expected list to be contain 100 elements")
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

function asserts.AssertBatchPredictions(list)
	assert(list)
	assert(type(list) == "table", "Expected BatchPredictions to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertBatchPrediction(v)
	end
end

--  
-- List of BatchPrediction objects
function M.BatchPredictions(list)
	asserts.AssertBatchPredictions(list)
	return list
end

function asserts.AssertEvaluations(list)
	assert(list)
	assert(type(list) == "table", "Expected Evaluations to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertEvaluation(v)
	end
end

--  
-- List of Evaluation objects
function M.Evaluations(list)
	asserts.AssertEvaluations(list)
	return list
end

function asserts.AssertDataSources(list)
	assert(list)
	assert(type(list) == "table", "Expected DataSources to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDataSource(v)
	end
end

--  
-- List of DataSource objects
function M.DataSources(list)
	asserts.AssertDataSources(list)
	return list
end

function asserts.AssertMLModels(list)
	assert(list)
	assert(type(list) == "table", "Expected MLModels to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertMLModel(v)
	end
end

--  
-- List of MLModel objects
function M.MLModels(list)
	asserts.AssertMLModels(list)
	return list
end

function asserts.AssertEDPSecurityGroupIds(list)
	assert(list)
	assert(type(list) == "table", "Expected EDPSecurityGroupIds to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertEDPSecurityGroupId(v)
	end
end

--  
-- List of EDPSecurityGroupId objects
function M.EDPSecurityGroupIds(list)
	asserts.AssertEDPSecurityGroupIds(list)
	return list
end

function asserts.AssertTagList(list)
	assert(list)
	assert(type(list) == "table", "Expected TagList to be of type ''table")
	assert(#list <= 100, "Expected list to be contain 100 elements")
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
--- Call DeleteTags asynchronously, invoking a callback when done
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

--- Call DeleteTags synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteTagsInput
-- @return response
-- @return error_message
function M.DeleteTagsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteTagsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateBatchPrediction asynchronously, invoking a callback when done
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

--- Call UpdateBatchPrediction synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateBatchPredictionInput
-- @return response
-- @return error_message
function M.UpdateBatchPredictionSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateBatchPredictionAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetEvaluation asynchronously, invoking a callback when done
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

--- Call GetEvaluation synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetEvaluationInput
-- @return response
-- @return error_message
function M.GetEvaluationSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetEvaluationAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeBatchPredictions asynchronously, invoking a callback when done
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

--- Call DescribeBatchPredictions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeBatchPredictionsInput
-- @return response
-- @return error_message
function M.DescribeBatchPredictionsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeBatchPredictionsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateEvaluation asynchronously, invoking a callback when done
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

--- Call CreateEvaluation synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateEvaluationInput
-- @return response
-- @return error_message
function M.CreateEvaluationSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateEvaluationAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeMLModels asynchronously, invoking a callback when done
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

--- Call DescribeMLModels synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeMLModelsInput
-- @return response
-- @return error_message
function M.DescribeMLModelsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeMLModelsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteMLModel asynchronously, invoking a callback when done
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

--- Call DeleteMLModel synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteMLModelInput
-- @return response
-- @return error_message
function M.DeleteMLModelSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteMLModelAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateDataSourceFromS3 asynchronously, invoking a callback when done
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

--- Call CreateDataSourceFromS3 synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateDataSourceFromS3Input
-- @return response
-- @return error_message
function M.CreateDataSourceFromS3Sync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateDataSourceFromS3Async(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateDataSource asynchronously, invoking a callback when done
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

--- Call UpdateDataSource synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateDataSourceInput
-- @return response
-- @return error_message
function M.UpdateDataSourceSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateDataSourceAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeEvaluations asynchronously, invoking a callback when done
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

--- Call DescribeEvaluations synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeEvaluationsInput
-- @return response
-- @return error_message
function M.DescribeEvaluationsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeEvaluationsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateDataSourceFromRedshift asynchronously, invoking a callback when done
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

--- Call CreateDataSourceFromRedshift synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateDataSourceFromRedshiftInput
-- @return response
-- @return error_message
function M.CreateDataSourceFromRedshiftSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateDataSourceFromRedshiftAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeDataSources asynchronously, invoking a callback when done
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

--- Call DescribeDataSources synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeDataSourcesInput
-- @return response
-- @return error_message
function M.DescribeDataSourcesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeDataSourcesAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetDataSource asynchronously, invoking a callback when done
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

--- Call GetDataSource synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetDataSourceInput
-- @return response
-- @return error_message
function M.GetDataSourceSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetDataSourceAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateRealtimeEndpoint asynchronously, invoking a callback when done
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

--- Call CreateRealtimeEndpoint synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateRealtimeEndpointInput
-- @return response
-- @return error_message
function M.CreateRealtimeEndpointSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateRealtimeEndpointAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateMLModel asynchronously, invoking a callback when done
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

--- Call UpdateMLModel synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateMLModelInput
-- @return response
-- @return error_message
function M.UpdateMLModelSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateMLModelAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteRealtimeEndpoint asynchronously, invoking a callback when done
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

--- Call DeleteRealtimeEndpoint synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteRealtimeEndpointInput
-- @return response
-- @return error_message
function M.DeleteRealtimeEndpointSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteRealtimeEndpointAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeTags asynchronously, invoking a callback when done
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

--- Call DescribeTags synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeTagsInput
-- @return response
-- @return error_message
function M.DescribeTagsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeTagsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteDataSource asynchronously, invoking a callback when done
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

--- Call DeleteDataSource synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteDataSourceInput
-- @return response
-- @return error_message
function M.DeleteDataSourceSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteDataSourceAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateDataSourceFromRDS asynchronously, invoking a callback when done
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

--- Call CreateDataSourceFromRDS synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateDataSourceFromRDSInput
-- @return response
-- @return error_message
function M.CreateDataSourceFromRDSSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateDataSourceFromRDSAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateEvaluation asynchronously, invoking a callback when done
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

--- Call UpdateEvaluation synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateEvaluationInput
-- @return response
-- @return error_message
function M.UpdateEvaluationSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateEvaluationAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call AddTags asynchronously, invoking a callback when done
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

--- Call AddTags synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AddTagsInput
-- @return response
-- @return error_message
function M.AddTagsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AddTagsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call Predict asynchronously, invoking a callback when done
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

--- Call Predict synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PredictInput
-- @return response
-- @return error_message
function M.PredictSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PredictAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetBatchPrediction asynchronously, invoking a callback when done
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

--- Call GetBatchPrediction synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetBatchPredictionInput
-- @return response
-- @return error_message
function M.GetBatchPredictionSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetBatchPredictionAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteEvaluation asynchronously, invoking a callback when done
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

--- Call DeleteEvaluation synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteEvaluationInput
-- @return response
-- @return error_message
function M.DeleteEvaluationSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteEvaluationAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteBatchPrediction asynchronously, invoking a callback when done
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

--- Call DeleteBatchPrediction synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteBatchPredictionInput
-- @return response
-- @return error_message
function M.DeleteBatchPredictionSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteBatchPredictionAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateMLModel asynchronously, invoking a callback when done
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

--- Call CreateMLModel synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateMLModelInput
-- @return response
-- @return error_message
function M.CreateMLModelSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateMLModelAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateBatchPrediction asynchronously, invoking a callback when done
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

--- Call CreateBatchPrediction synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateBatchPredictionInput
-- @return response
-- @return error_message
function M.CreateBatchPredictionSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateBatchPredictionAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetMLModel asynchronously, invoking a callback when done
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

--- Call GetMLModel synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetMLModelInput
-- @return response
-- @return error_message
function M.GetMLModelSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetMLModelAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end


return M
