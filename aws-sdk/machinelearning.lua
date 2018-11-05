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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DataSourceId [EntityId] <p>A user-supplied ID that uniquely identifies the datasource. This value should be identical to the value of the <code>DataSourceID</code> in the request. </p>
-- @return CreateDataSourceFromRedshiftOutput structure as a key-value pair table
function M.CreateDataSourceFromRedshiftOutput(args)
	assert(args, "You must provide an argument table when creating CreateDataSourceFromRedshiftOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DataSourceId"] = args["DataSourceId"],
	}
	asserts.AssertCreateDataSourceFromRedshiftOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] 
-- * code [ErrorCode] 
-- @return InternalServerException structure as a key-value pair table
function M.InternalServerException(args)
	assert(args, "You must provide an argument table when creating InternalServerException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
		["code"] = args["code"],
	}
	asserts.AssertInternalServerException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceType [TaggableResourceType] <p>The type of the tagged ML object.</p>
-- * ResourceId [EntityId] <p>The ID of the tagged ML object. For example, <code>exampleModelId</code>.</p>
-- * TagKeys [TagKeyList] <p>One or more tags to delete.</p>
-- Required key: TagKeys
-- Required key: ResourceId
-- Required key: ResourceType
-- @return DeleteTagsInput structure as a key-value pair table
function M.DeleteTagsInput(args)
	assert(args, "You must provide an argument table when creating DeleteTagsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ResourceType"] = args["ResourceType"],
		["ResourceId"] = args["ResourceId"],
		["TagKeys"] = args["TagKeys"],
	}
	asserts.AssertDeleteTagsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GT [ComparatorValue] <p>The greater than operator. The <code>BatchPrediction</code> results will have <code>FilterVariable</code> values that are greater than the value specified with <code>GT</code>.</p>
-- * FilterVariable [BatchPredictionFilterVariable] <p>Use one of the following variables to filter a list of <code>BatchPrediction</code>:</p> <ul> <li> <code>CreatedAt</code> - Sets the search criteria to the <code>BatchPrediction</code> creation date.</li> <li> <code>Status</code> - Sets the search criteria to the <code>BatchPrediction</code> status.</li> <li> <code>Name</code> - Sets the search criteria to the contents of the <code>BatchPrediction</code><b> </b> <code>Name</code>.</li> <li> <code>IAMUser</code> - Sets the search criteria to the user account that invoked the <code>BatchPrediction</code> creation.</li> <li> <code>MLModelId</code> - Sets the search criteria to the <code>MLModel</code> used in the <code>BatchPrediction</code>.</li> <li> <code>DataSourceId</code> - Sets the search criteria to the <code>DataSource</code> used in the <code>BatchPrediction</code>.</li> <li> <code>DataURI</code> - Sets the search criteria to the data file(s) used in the <code>BatchPrediction</code>. The URL can identify either a file or an Amazon Simple Storage Solution (Amazon S3) bucket or directory.</li> </ul>
-- * GE [ComparatorValue] <p>The greater than or equal to operator. The <code>BatchPrediction</code> results will have <code>FilterVariable</code> values that are greater than or equal to the value specified with <code>GE</code>. </p>
-- * NE [ComparatorValue] <p>The not equal to operator. The <code>BatchPrediction</code> results will have <code>FilterVariable</code> values not equal to the value specified with <code>NE</code>.</p>
-- * LT [ComparatorValue] <p>The less than operator. The <code>BatchPrediction</code> results will have <code>FilterVariable</code> values that are less than the value specified with <code>LT</code>.</p>
-- * LE [ComparatorValue] <p>The less than or equal to operator. The <code>BatchPrediction</code> results will have <code>FilterVariable</code> values that are less than or equal to the value specified with <code>LE</code>.</p>
-- * Limit [PageLimit] <p>The number of pages of information to include in the result. The range of acceptable values is <code>1</code> through <code>100</code>. The default value is <code>100</code>.</p>
-- * SortOrder [SortOrder] <p>A two-value parameter that determines the sequence of the resulting list of <code>MLModel</code>s.</p> <ul> <li> <code>asc</code> - Arranges the list in ascending order (A-Z, 0-9).</li> <li> <code>dsc</code> - Arranges the list in descending order (Z-A, 9-0).</li> </ul> <p>Results are sorted by <code>FilterVariable</code>.</p>
-- * NextToken [StringType] <p>An ID of the page in the paginated results.</p>
-- * EQ [ComparatorValue] <p>The equal to operator. The <code>BatchPrediction</code> results will have <code>FilterVariable</code> values that exactly match the value specified with <code>EQ</code>.</p>
-- * Prefix [ComparatorValue] <p>A string that is found at the beginning of a variable, such as <code>Name</code> or <code>Id</code>.</p> <p>For example, a <code>Batch Prediction</code> operation could have the <code>Name</code> <code>2014-09-09-HolidayGiftMailer</code>. To search for this <code>BatchPrediction</code>, select <code>Name</code> for the <code>FilterVariable</code> and any of the following strings for the <code>Prefix</code>: </p> <ul> <li><p>2014-09</p></li> <li><p>2014-09-09</p></li> <li><p>2014-09-09-Holiday</p></li> </ul>
-- @return DescribeBatchPredictionsInput structure as a key-value pair table
function M.DescribeBatchPredictionsInput(args)
	assert(args, "You must provide an argument table when creating DescribeBatchPredictionsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GT"] = args["GT"],
		["FilterVariable"] = args["FilterVariable"],
		["GE"] = args["GE"],
		["NE"] = args["NE"],
		["LT"] = args["LT"],
		["LE"] = args["LE"],
		["Limit"] = args["Limit"],
		["SortOrder"] = args["SortOrder"],
		["NextToken"] = args["NextToken"],
		["EQ"] = args["EQ"],
		["Prefix"] = args["Prefix"],
	}
	asserts.AssertDescribeBatchPredictionsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * BatchPredictionId [EntityId] <p>A user-supplied ID that uniquely identifies the <code>BatchPrediction</code>. This value is identical to the value of the <code>BatchPredictionId</code> in the request.</p>
-- @return CreateBatchPredictionOutput structure as a key-value pair table
function M.CreateBatchPredictionOutput(args)
	assert(args, "You must provide an argument table when creating CreateBatchPredictionOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["BatchPredictionId"] = args["BatchPredictionId"],
	}
	asserts.AssertCreateBatchPredictionOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceType [TaggableResourceType] <p>The type of the ML object that was tagged.</p>
-- * ResourceId [EntityId] <p>The ID of the ML object that was tagged.</p>
-- @return AddTagsOutput structure as a key-value pair table
function M.AddTagsOutput(args)
	assert(args, "You must provide an argument table when creating AddTagsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ResourceType"] = args["ResourceType"],
		["ResourceId"] = args["ResourceId"],
	}
	asserts.AssertAddTagsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [EntityStatus] <p>The current status of an <code>MLModel</code>. This element can have one of the following values: </p> <ul> <li> <code>PENDING</code> - Amazon Machine Learning (Amazon ML) submitted a request to create an <code>MLModel</code>.</li> <li> <code>INPROGRESS</code> - The creation process is underway.</li> <li> <code>FAILED</code> - The request to create an <code>MLModel</code> didn't run to completion. The model isn't usable.</li> <li> <code>COMPLETED</code> - The creation process completed successfully.</li> <li> <code>DELETED</code> - The <code>MLModel</code> is marked as deleted. It isn't usable.</li> </ul>
-- * SizeInBytes [LongType] 
-- * ComputeTime [LongType] 
-- * Name [MLModelName] <p>A user-supplied name or description of the <code>MLModel</code>.</p>
-- * Algorithm [Algorithm] <p>The algorithm used to train the <code>MLModel</code>. The following algorithm is supported:</p> <ul> <li> <code>SGD</code> -- Stochastic gradient descent. The goal of <code>SGD</code> is to minimize the gradient of the loss function. </li> </ul>
-- * ScoreThreshold [ScoreThreshold] 
-- * TrainingParameters [TrainingParameters] <p>A list of the training parameters in the <code>MLModel</code>. The list is implemented as a map of key-value pairs.</p> <p>The following is the current set of training parameters: </p> <ul> <li> <p><code>sgd.maxMLModelSizeInBytes</code> - The maximum allowed size of the model. Depending on the input data, the size of the model might affect its performance.</p> <p> The value is an integer that ranges from <code>100000</code> to <code>2147483648</code>. The default value is <code>33554432</code>.</p> </li> <li><p><code>sgd.maxPasses</code> - The number of times that the training process traverses the observations to build the <code>MLModel</code>. The value is an integer that ranges from <code>1</code> to <code>10000</code>. The default value is <code>10</code>.</p></li> <li><p><code>sgd.shuffleType</code> - Whether Amazon ML shuffles the training data. Shuffling the data improves a model's ability to find the optimal solution for a variety of data types. The valid values are <code>auto</code> and <code>none</code>. The default value is <code>none</code>.</p></li> <li> <p><code>sgd.l1RegularizationAmount</code> - The coefficient regularization L1 norm, which controls overfitting the data by penalizing large coefficients. This parameter tends to drive coefficients to zero, resulting in sparse feature set. If you use this parameter, start by specifying a small value, such as <code>1.0E-08</code>.</p> <p>The value is a double that ranges from <code>0</code> to <code>MAX_DOUBLE</code>. The default is to not use L1 normalization. This parameter can't be used when <code>L2</code> is specified. Use this parameter sparingly.</p> </li> <li> <p><code>sgd.l2RegularizationAmount</code> - The coefficient regularization L2 norm, which controls overfitting the data by penalizing large coefficients. This tends to drive coefficients to small, nonzero values. If you use this parameter, start by specifying a small value, such as <code>1.0E-08</code>.</p> <p>The value is a double that ranges from <code>0</code> to <code>MAX_DOUBLE</code>. The default is to not use L2 normalization. This parameter can't be used when <code>L1</code> is specified. Use this parameter sparingly.</p> </li> </ul>
-- * MLModelType [MLModelType] <p>Identifies the <code>MLModel</code> category. The following are the available types:</p> <ul> <li> <code>REGRESSION</code> - Produces a numeric result. For example, "What price should a house be listed at?"</li> <li> <code>BINARY</code> - Produces one of two possible results. For example, "Is this a child-friendly web site?".</li> <li> <code>MULTICLASS</code> - Produces one of several possible results. For example, "Is this a HIGH-, LOW-, or MEDIUM<?oxy_delete author="annbech" timestamp="20160328T175050-0700" content=" "><?oxy_insert_start author="annbech" timestamp="20160328T175050-0700">-<?oxy_insert_end>risk trade?".</li> </ul>
-- * CreatedByIamUser [AwsUserArn] <p>The AWS user account from which the <code>MLModel</code> was created. The account type can be either an AWS root account or an AWS Identity and Access Management (IAM) user account.</p>
-- * ScoreThresholdLastUpdatedAt [EpochTime] <p>The time of the most recent edit to the <code>ScoreThreshold</code>. The time is expressed in epoch time.</p>
-- * EndpointInfo [RealtimeEndpointInfo] <p>The current endpoint of the <code>MLModel</code>.</p>
-- * MLModelId [EntityId] <p>The ID assigned to the <code>MLModel</code> at creation.</p>
-- * InputDataLocationS3 [S3Url] <p>The location of the data file or directory in Amazon Simple Storage Service (Amazon S3).</p>
-- * LastUpdatedAt [EpochTime] <p>The time of the most recent edit to the <code>MLModel</code>. The time is expressed in epoch time.</p>
-- * TrainingDataSourceId [EntityId] <p>The ID of the training <code>DataSource</code>. The <code>CreateMLModel</code> operation uses the <code>TrainingDataSourceId</code>.</p>
-- * StartedAt [EpochTime] 
-- * Message [Message] <p>A description of the most recent details about accessing the <code>MLModel</code>.</p>
-- * CreatedAt [EpochTime] <p>The time that the <code>MLModel</code> was created. The time is expressed in epoch time.</p>
-- * FinishedAt [EpochTime] 
-- @return MLModel structure as a key-value pair table
function M.MLModel(args)
	assert(args, "You must provide an argument table when creating MLModel")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["SizeInBytes"] = args["SizeInBytes"],
		["ComputeTime"] = args["ComputeTime"],
		["Name"] = args["Name"],
		["Algorithm"] = args["Algorithm"],
		["ScoreThreshold"] = args["ScoreThreshold"],
		["TrainingParameters"] = args["TrainingParameters"],
		["MLModelType"] = args["MLModelType"],
		["CreatedByIamUser"] = args["CreatedByIamUser"],
		["ScoreThresholdLastUpdatedAt"] = args["ScoreThresholdLastUpdatedAt"],
		["EndpointInfo"] = args["EndpointInfo"],
		["MLModelId"] = args["MLModelId"],
		["InputDataLocationS3"] = args["InputDataLocationS3"],
		["LastUpdatedAt"] = args["LastUpdatedAt"],
		["TrainingDataSourceId"] = args["TrainingDataSourceId"],
		["StartedAt"] = args["StartedAt"],
		["Message"] = args["Message"],
		["CreatedAt"] = args["CreatedAt"],
		["FinishedAt"] = args["FinishedAt"],
	}
	asserts.AssertMLModel(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] 
-- @return InvalidTagException structure as a key-value pair table
function M.InvalidTagException(args)
	assert(args, "You must provide an argument table when creating InvalidTagException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertInvalidTagException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * BatchPredictionId [EntityId] <p>The ID assigned to the <code>BatchPrediction</code> during creation.</p>
-- * BatchPredictionName [EntityName] <p>A new user-supplied name or description of the <code>BatchPrediction</code>.</p>
-- Required key: BatchPredictionId
-- Required key: BatchPredictionName
-- @return UpdateBatchPredictionInput structure as a key-value pair table
function M.UpdateBatchPredictionInput(args)
	assert(args, "You must provide an argument table when creating UpdateBatchPredictionInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["BatchPredictionId"] = args["BatchPredictionId"],
		["BatchPredictionName"] = args["BatchPredictionName"],
	}
	asserts.AssertUpdateBatchPredictionInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RedshiftDatabase [RedshiftDatabase] 
-- * DatabaseUserName [RedshiftDatabaseUsername] 
-- * SelectSqlQuery [RedshiftSelectSqlQuery] <p> The SQL query that is specified during <a>CreateDataSourceFromRedshift</a>. Returns only if <code>Verbose</code> is true in GetDataSourceInput. </p>
-- @return RedshiftMetadata structure as a key-value pair table
function M.RedshiftMetadata(args)
	assert(args, "You must provide an argument table when creating RedshiftMetadata")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RedshiftDatabase"] = args["RedshiftDatabase"],
		["DatabaseUserName"] = args["DatabaseUserName"],
		["SelectSqlQuery"] = args["SelectSqlQuery"],
	}
	asserts.AssertRedshiftMetadata(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * BatchPredictionId [EntityId] <p>The ID assigned to the <code>BatchPrediction</code> during creation. This value should be identical to the value of the <code>BatchPredictionId</code> in the request.</p>
-- @return UpdateBatchPredictionOutput structure as a key-value pair table
function M.UpdateBatchPredictionOutput(args)
	assert(args, "You must provide an argument table when creating UpdateBatchPredictionOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["BatchPredictionId"] = args["BatchPredictionId"],
	}
	asserts.AssertUpdateBatchPredictionOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MLModelId [EntityId] <p>The ID assigned to the <code>MLModel</code> during creation. This value should be identical to the value of the <code>MLModelID</code> in the request.</p>
-- @return UpdateMLModelOutput structure as a key-value pair table
function M.UpdateMLModelOutput(args)
	assert(args, "You must provide an argument table when creating UpdateMLModelOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["MLModelId"] = args["MLModelId"],
	}
	asserts.AssertUpdateMLModelOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [EntityStatus] <p>The current status of the <code>MLModel</code>. This element can have one of the following values:</p> <ul> <li> <code>PENDING</code> - Amazon Machine Learning (Amazon ML) submitted a request to describe a <code>MLModel</code>.</li> <li> <code>INPROGRESS</code> - The request is processing.</li> <li> <code>FAILED</code> - The request did not run to completion. The ML model isn't usable.</li> <li> <code>COMPLETED</code> - The request completed successfully.</li> <li> <code>DELETED</code> - The <code>MLModel</code> is marked as deleted. It isn't usable.</li> </ul>
-- * SizeInBytes [LongType] 
-- * ComputeTime [LongType] <p>The approximate CPU time in milliseconds that Amazon Machine Learning spent processing the <code>MLModel</code>, normalized and scaled on computation resources. <code>ComputeTime</code> is only available if the <code>MLModel</code> is in the <code>COMPLETED</code> state.</p>
-- * Name [MLModelName] <p>A user-supplied name or description of the <code>MLModel</code>.</p>
-- * ScoreThreshold [ScoreThreshold] <p>The scoring threshold is used in binary classification <code>MLModel</code><?oxy_insert_start author="laurama" timestamp="20160329T114851-0700"> <?oxy_insert_end>models. It marks the boundary between a positive prediction and a negative prediction.</p> <p>Output values greater than or equal to the threshold receive a positive result from the MLModel, such as <code>true</code>. Output values less than the threshold receive a negative response from the MLModel, such as <code>false</code>.</p>
-- * TrainingParameters [TrainingParameters] <p>A list of the training parameters in the <code>MLModel</code>. The list is implemented as a map of key-value pairs.</p> <p>The following is the current set of training parameters: </p> <ul> <li> <p><code>sgd.maxMLModelSizeInBytes</code> - The maximum allowed size of the model. Depending on the input data, the size of the model might affect its performance.</p> <p> The value is an integer that ranges from <code>100000</code> to <code>2147483648</code>. The default value is <code>33554432</code>.</p> </li> <li><p><code>sgd.maxPasses</code> - The number of times that the training process traverses the observations to build the <code>MLModel</code>. The value is an integer that ranges from <code>1</code> to <code>10000</code>. The default value is <code>10</code>.</p></li> <li><p><code>sgd.shuffleType</code> - Whether Amazon ML shuffles the training data. Shuffling data improves a model's ability to find the optimal solution for a variety of data types. The valid values are <code>auto</code> and <code>none</code>. The default value is <code>none</code>. We strongly recommend that you shuffle your data.</p></li> <li> <p><code>sgd.l1RegularizationAmount</code> - The coefficient regularization L1 norm. It controls overfitting the data by penalizing large coefficients. This tends to drive coefficients to zero, resulting in a sparse feature set. If you use this parameter, start by specifying a small value, such as <code>1.0E-08</code>.</p> <p>The value is a double that ranges from <code>0</code> to <code>MAX_DOUBLE</code>. The default is to not use L1 normalization. This parameter can't be used when <code>L2</code> is specified. Use this parameter sparingly.</p> </li> <li> <p><code>sgd.l2RegularizationAmount</code> - The coefficient regularization L2 norm. It controls overfitting the data by penalizing large coefficients. This tends to drive coefficients to small, nonzero values. If you use this parameter, start by specifying a small value, such as <code>1.0E-08</code>.</p> <p>The value is a double that ranges from <code>0</code> to <code>MAX_DOUBLE</code>. The default is to not use L2 normalization. This parameter can't be used when <code>L1</code> is specified. Use this parameter sparingly.</p> </li> </ul>
-- * MLModelType [MLModelType] <p>Identifies the <code>MLModel</code> category. The following are the available types: </p> <ul> <li>REGRESSION -- Produces a numeric result. For example, "What price should a house be listed at?"</li> <li>BINARY -- Produces one of two possible results. For example, "Is this an e-commerce website?"</li> <li>MULTICLASS -- Produces one of several possible results. For example, "Is this a HIGH, LOW or MEDIUM risk trade?"</li> </ul>
-- * CreatedByIamUser [AwsUserArn] <p>The AWS user account from which the <code>MLModel</code> was created. The account type can be either an AWS root account or an AWS Identity and Access Management (IAM) user account.</p>
-- * Recipe [Recipe] <p>The recipe to use when training the <code>MLModel</code>. The <code>Recipe</code> provides detailed information about the observation data to use during training, and manipulations to perform on the observation data during training.</p> <note><title>Note</title> <p>This parameter is provided as part of the verbose format.</p></note>
-- * ScoreThresholdLastUpdatedAt [EpochTime] <p>The time of the most recent edit to the <code>ScoreThreshold</code>. The time is expressed in epoch time.</p>
-- * EndpointInfo [RealtimeEndpointInfo] <p>The current endpoint of the <code>MLModel</code></p>
-- * MLModelId [EntityId] <p>The MLModel ID<?oxy_insert_start author="annbech" timestamp="20160328T151251-0700">,<?oxy_insert_end> which is same as the <code>MLModelId</code> in the request.</p>
-- * InputDataLocationS3 [S3Url] <p>The location of the data file or directory in Amazon Simple Storage Service (Amazon S3).</p>
-- * LastUpdatedAt [EpochTime] <p>The time of the most recent edit to the <code>MLModel</code>. The time is expressed in epoch time.</p>
-- * TrainingDataSourceId [EntityId] <p>The ID of the training <code>DataSource</code>.</p>
-- * StartedAt [EpochTime] <p>The epoch time when Amazon Machine Learning marked the <code>MLModel</code> as <code>INPROGRESS</code>. <code>StartedAt</code> isn't available if the <code>MLModel</code> is in the <code>PENDING</code> state.</p>
-- * LogUri [PresignedS3Url] <p>A link to the file that contains logs of the <code>CreateMLModel</code> operation.</p>
-- * Schema [DataSchema] <p>The schema used by all of the data files referenced by the <code>DataSource</code>.</p> <note><title>Note</title> <p>This parameter is provided as part of the verbose format.</p></note>
-- * Message [Message] <p>A description of the most recent details about accessing the <code>MLModel</code>.</p>
-- * CreatedAt [EpochTime] <p>The time that the <code>MLModel</code> was created. The time is expressed in epoch time.</p>
-- * FinishedAt [EpochTime] <p>The epoch time when Amazon Machine Learning marked the <code>MLModel</code> as <code>COMPLETED</code> or <code>FAILED</code>. <code>FinishedAt</code> is only available when the <code>MLModel</code> is in the <code>COMPLETED</code> or <code>FAILED</code> state.</p>
-- @return GetMLModelOutput structure as a key-value pair table
function M.GetMLModelOutput(args)
	assert(args, "You must provide an argument table when creating GetMLModelOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["SizeInBytes"] = args["SizeInBytes"],
		["ComputeTime"] = args["ComputeTime"],
		["Name"] = args["Name"],
		["ScoreThreshold"] = args["ScoreThreshold"],
		["TrainingParameters"] = args["TrainingParameters"],
		["MLModelType"] = args["MLModelType"],
		["CreatedByIamUser"] = args["CreatedByIamUser"],
		["Recipe"] = args["Recipe"],
		["ScoreThresholdLastUpdatedAt"] = args["ScoreThresholdLastUpdatedAt"],
		["EndpointInfo"] = args["EndpointInfo"],
		["MLModelId"] = args["MLModelId"],
		["InputDataLocationS3"] = args["InputDataLocationS3"],
		["LastUpdatedAt"] = args["LastUpdatedAt"],
		["TrainingDataSourceId"] = args["TrainingDataSourceId"],
		["StartedAt"] = args["StartedAt"],
		["LogUri"] = args["LogUri"],
		["Schema"] = args["Schema"],
		["Message"] = args["Message"],
		["CreatedAt"] = args["CreatedAt"],
		["FinishedAt"] = args["FinishedAt"],
	}
	asserts.AssertGetMLModelOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceType [TaggableResourceType] <p>The type of the ML object.</p>
-- * ResourceId [EntityId] <p>The ID of the ML object. For example, <code>exampleModelId</code>. </p>
-- Required key: ResourceId
-- Required key: ResourceType
-- @return DescribeTagsInput structure as a key-value pair table
function M.DescribeTagsInput(args)
	assert(args, "You must provide an argument table when creating DescribeTagsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ResourceType"] = args["ResourceType"],
		["ResourceId"] = args["ResourceId"],
	}
	asserts.AssertDescribeTagsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DatabaseCredentials [RedshiftDatabaseCredentials] <p>Describes AWS Identity and Access Management (IAM) credentials that are used connect to the Amazon Redshift database.</p>
-- * DataSchemaUri [S3Url] <p>Describes the schema location for an Amazon Redshift <code>DataSource</code>.</p>
-- * DatabaseInformation [RedshiftDatabase] <p>Describes the <code>DatabaseName</code> and <code>ClusterIdentifier</code> for an Amazon Redshift <code>DataSource</code>.</p>
-- * DataSchema [DataSchema] <p>A JSON string that represents the schema for an Amazon Redshift <code>DataSource</code>. The <code>DataSchema</code> defines the structure of the observation data in the data file(s) referenced in the <code>DataSource</code>.</p> <p>A <code>DataSchema</code> is not required if you specify a <code>DataSchemaUri</code>.</p> <p>Define your <code>DataSchema</code> as a series of key-value pairs. <code>attributes</code> and <code>excludedVariableNames</code> have an array of key-value pairs for their value. Use the following format to define your <code>DataSchema</code>.</p> <p>{ "version": "1.0",</p> <p> "recordAnnotationFieldName": "F1",</p> <p> "recordWeightFieldName": "F2",</p> <p> "targetFieldName": "F3",</p> <p> "dataFormat": "CSV",</p> <p> "dataFileContainsHeader": true,</p> <p> "attributes": [</p> <p> { "fieldName": "F1", "fieldType": "TEXT" }, { "fieldName": "F2", "fieldType": "NUMERIC" }, { "fieldName": "F3", "fieldType": "CATEGORICAL" }, { "fieldName": "F4", "fieldType": "NUMERIC" }, { "fieldName": "F5", "fieldType": "CATEGORICAL" }, { "fieldName": "F6", "fieldType": "TEXT" }, { "fieldName": "F7", "fieldType": "WEIGHTED_INT_SEQUENCE" }, { "fieldName": "F8", "fieldType": "WEIGHTED_STRING_SEQUENCE" } ],</p> <p> "excludedVariableNames": [ "F6" ] } </p>
-- * DataRearrangement [DataRearrangement] <p>A JSON string that represents the splitting and rearrangement processing to be applied to a <code>DataSource</code>. If the <code>DataRearrangement</code> parameter is not provided, all of the input data is used to create the <code>Datasource</code>.</p> <p>There are multiple parameters that control what data is used to create a datasource:</p> <ul> <li><p><b><code>percentBegin</code></b></p> <p>Use <code>percentBegin</code> to indicate the beginning of the range of the data used to create the Datasource. If you do not include <code>percentBegin</code> and <code>percentEnd</code>, Amazon ML includes all of the data when creating the datasource.</p></li> <li><p><b><code>percentEnd</code></b></p> <p>Use <code>percentEnd</code> to indicate the end of the range of the data used to create the Datasource. If you do not include <code>percentBegin</code> and <code>percentEnd</code>, Amazon ML includes all of the data when creating the datasource.</p></li> <li><p><b><code>complement</code></b></p> <p>The <code>complement</code> parameter instructs Amazon ML to use the data that is not included in the range of <code>percentBegin</code> to <code>percentEnd</code> to create a datasource. The <code>complement</code> parameter is useful if you need to create complementary datasources for training and evaluation. To create a complementary datasource, use the same values for <code>percentBegin</code> and <code>percentEnd</code>, along with the <code>complement</code> parameter.</p> <p>For example, the following two datasources do not share any data, and can be used to train and evaluate a model. The first datasource has 25 percent of the data, and the second one has 75 percent of the data.</p> <p>Datasource for evaluation: <code>{"splitting":{"percentBegin":0, "percentEnd":25}}</code></p> <p>Datasource for training: <code>{"splitting":{"percentBegin":0, "percentEnd":25, "complement":"true"}}</code></p> </li> <li><p><b><code>strategy</code></b></p> <p>To change how Amazon ML splits the data for a datasource, use the <code>strategy</code> parameter.</p> <p>The default value for the <code>strategy</code> parameter is <code>sequential</code>, meaning that Amazon ML takes all of the data records between the <code>percentBegin</code> and <code>percentEnd</code> parameters for the datasource, in the order that the records appear in the input data.</p> <p>The following two <code>DataRearrangement</code> lines are examples of sequentially ordered training and evaluation datasources:</p> <p>Datasource for evaluation: <code>{"splitting":{"percentBegin":70, "percentEnd":100, "strategy":"sequential"}}</code></p> <p>Datasource for training: <code>{"splitting":{"percentBegin":70, "percentEnd":100, "strategy":"sequential", "complement":"true"}}</code></p> <p>To randomly split the input data into the proportions indicated by the percentBegin and percentEnd parameters, set the <code>strategy</code> parameter to <code>random</code> and provide a string that is used as the seed value for the random data splitting (for example, you can use the S3 path to your data as the random seed string). If you choose the random split strategy, Amazon ML assigns each row of data a pseudo-random number between 0 and 100, and then selects the rows that have an assigned number between <code>percentBegin</code> and <code>percentEnd</code>. Pseudo-random numbers are assigned using both the input seed string value and the byte offset as a seed, so changing the data results in a different split. Any existing ordering is preserved. The random splitting strategy ensures that variables in the training and evaluation data are distributed similarly. It is useful in the cases where the input data may have an implicit sort order, which would otherwise result in training and evaluation datasources containing non-similar data records.</p> <p>The following two <code>DataRearrangement</code> lines are examples of non-sequentially ordered training and evaluation datasources:</p> <p>Datasource for evaluation: <code>{"splitting":{"percentBegin":70, "percentEnd":100, "strategy":"random", "randomSeed"="s3://my_s3_path/bucket/file.csv"}}</code></p> <p>Datasource for training: <code>{"splitting":{"percentBegin":70, "percentEnd":100, "strategy":"random", "randomSeed"="s3://my_s3_path/bucket/file.csv", "complement":"true"}}</code></p> </li> </ul>
-- * S3StagingLocation [S3Url] <p>Describes an Amazon S3 location to store the result set of the <code>SelectSqlQuery</code> query.</p>
-- * SelectSqlQuery [RedshiftSelectSqlQuery] <p>Describes the SQL Query to execute on an Amazon Redshift database for an Amazon Redshift <code>DataSource</code>.</p>
-- Required key: DatabaseInformation
-- Required key: SelectSqlQuery
-- Required key: DatabaseCredentials
-- Required key: S3StagingLocation
-- @return RedshiftDataSpec structure as a key-value pair table
function M.RedshiftDataSpec(args)
	assert(args, "You must provide an argument table when creating RedshiftDataSpec")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DatabaseCredentials"] = args["DatabaseCredentials"],
		["DataSchemaUri"] = args["DataSchemaUri"],
		["DatabaseInformation"] = args["DatabaseInformation"],
		["DataSchema"] = args["DataSchema"],
		["DataRearrangement"] = args["DataRearrangement"],
		["S3StagingLocation"] = args["S3StagingLocation"],
		["SelectSqlQuery"] = args["SelectSqlQuery"],
	}
	asserts.AssertRedshiftDataSpec(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] 
-- * code [ErrorCode] 
-- @return IdempotentParameterMismatchException structure as a key-value pair table
function M.IdempotentParameterMismatchException(args)
	assert(args, "You must provide an argument table when creating IdempotentParameterMismatchException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
		["code"] = args["code"],
	}
	asserts.AssertIdempotentParameterMismatchException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * BatchPredictionId [EntityId] <p>An ID assigned to the <code>BatchPrediction</code> at creation.</p>
-- Required key: BatchPredictionId
-- @return GetBatchPredictionInput structure as a key-value pair table
function M.GetBatchPredictionInput(args)
	assert(args, "You must provide an argument table when creating GetBatchPredictionInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["BatchPredictionId"] = args["BatchPredictionId"],
	}
	asserts.AssertGetBatchPredictionInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Username [RedshiftDatabaseUsername] 
-- * Password [RedshiftDatabasePassword] 
-- Required key: Username
-- Required key: Password
-- @return RedshiftDatabaseCredentials structure as a key-value pair table
function M.RedshiftDatabaseCredentials(args)
	assert(args, "You must provide an argument table when creating RedshiftDatabaseCredentials")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Username"] = args["Username"],
		["Password"] = args["Password"],
	}
	asserts.AssertRedshiftDatabaseCredentials(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * BatchPredictionId [EntityId] <p>A user-supplied ID that uniquely identifies the <code>BatchPrediction</code>.</p>
-- Required key: BatchPredictionId
-- @return DeleteBatchPredictionInput structure as a key-value pair table
function M.DeleteBatchPredictionInput(args)
	assert(args, "You must provide an argument table when creating DeleteBatchPredictionInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["BatchPredictionId"] = args["BatchPredictionId"],
	}
	asserts.AssertDeleteBatchPredictionInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [StringType] <p>The ID of the next page in the paginated results that indicates at least one more page follows.</p>
-- * Results [Evaluations] <p>A list of <code>Evaluation</code> that meet the search criteria. </p>
-- @return DescribeEvaluationsOutput structure as a key-value pair table
function M.DescribeEvaluationsOutput(args)
	assert(args, "You must provide an argument table when creating DescribeEvaluationsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["Results"] = args["Results"],
	}
	asserts.AssertDescribeEvaluationsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EvaluationId [EntityId] <p>The ID assigned to the <code>Evaluation</code> during creation.</p>
-- * EvaluationName [EntityName] <p>A new user-supplied name or description of the <code>Evaluation</code> that will replace the current content. </p>
-- Required key: EvaluationId
-- Required key: EvaluationName
-- @return UpdateEvaluationInput structure as a key-value pair table
function M.UpdateEvaluationInput(args)
	assert(args, "You must provide an argument table when creating UpdateEvaluationInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EvaluationId"] = args["EvaluationId"],
		["EvaluationName"] = args["EvaluationName"],
	}
	asserts.AssertUpdateEvaluationInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Properties [PerformanceMetricsProperties] 
-- @return PerformanceMetrics structure as a key-value pair table
function M.PerformanceMetrics(args)
	assert(args, "You must provide an argument table when creating PerformanceMetrics")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Properties"] = args["Properties"],
	}
	asserts.AssertPerformanceMetrics(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] 
-- * code [ErrorCode] 
-- @return InvalidInputException structure as a key-value pair table
function M.InvalidInputException(args)
	assert(args, "You must provide an argument table when creating InvalidInputException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
		["code"] = args["code"],
	}
	asserts.AssertInvalidInputException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] 
-- * code [ErrorCode] 
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
		["code"] = args["code"],
	}
	asserts.AssertLimitExceededException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [StringType] <p>An ID of the next page in the paginated results that indicates at least one more page follows.</p>
-- * Results [DataSources] <p>A list of <code>DataSource</code> that meet the search criteria. </p>
-- @return DescribeDataSourcesOutput structure as a key-value pair table
function M.DescribeDataSourcesOutput(args)
	assert(args, "You must provide an argument table when creating DescribeDataSourcesOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["Results"] = args["Results"],
	}
	asserts.AssertDescribeDataSourcesOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GT [ComparatorValue] <p>The greater than operator. The <code>Evaluation</code> results will have <code>FilterVariable</code> values that are greater than the value specified with <code>GT</code>.</p>
-- * FilterVariable [EvaluationFilterVariable] <p>Use one of the following variable to filter a list of <code>Evaluation</code> objects:</p> <ul> <li> <code>CreatedAt</code> - Sets the search criteria to the <code>Evaluation</code> creation date.</li> <li> <code>Status</code> - Sets the search criteria to the <code>Evaluation</code> status.</li> <li> <code>Name</code> - Sets the search criteria to the contents of <code>Evaluation</code> <b> </b> <code>Name</code>.</li> <li> <code>IAMUser</code> - Sets the search criteria to the user account that invoked an <code>Evaluation</code>.</li> <li> <code>MLModelId</code> - Sets the search criteria to the <code>MLModel</code> that was evaluated.</li> <li> <code>DataSourceId</code> - Sets the search criteria to the <code>DataSource</code> used in <code>Evaluation</code>.</li> <li> <code>DataUri</code> - Sets the search criteria to the data file(s) used in <code>Evaluation</code>. The URL can identify either a file or an Amazon Simple Storage Solution (Amazon S3) bucket or directory.</li> </ul>
-- * GE [ComparatorValue] <p>The greater than or equal to operator. The <code>Evaluation</code> results will have <code>FilterVariable</code> values that are greater than or equal to the value specified with <code>GE</code>. </p>
-- * NE [ComparatorValue] <p>The not equal to operator. The <code>Evaluation</code> results will have <code>FilterVariable</code> values not equal to the value specified with <code>NE</code>.</p>
-- * LT [ComparatorValue] <p>The less than operator. The <code>Evaluation</code> results will have <code>FilterVariable</code> values that are less than the value specified with <code>LT</code>.</p>
-- * LE [ComparatorValue] <p>The less than or equal to operator. The <code>Evaluation</code> results will have <code>FilterVariable</code> values that are less than or equal to the value specified with <code>LE</code>.</p>
-- * Limit [PageLimit] <p> The maximum number of <code>Evaluation</code> to include in the result.</p>
-- * SortOrder [SortOrder] <p>A two-value parameter that determines the sequence of the resulting list of <code>Evaluation</code>.</p> <ul> <li> <code>asc</code> - Arranges the list in ascending order (A-Z, 0-9).</li> <li> <code>dsc</code> - Arranges the list in descending order (Z-A, 9-0).</li> </ul> <p>Results are sorted by <code>FilterVariable</code>.</p>
-- * NextToken [StringType] <p>The ID of the page in the paginated results.</p>
-- * EQ [ComparatorValue] <p>The equal to operator. The <code>Evaluation</code> results will have <code>FilterVariable</code> values that exactly match the value specified with <code>EQ</code>.</p>
-- * Prefix [ComparatorValue] <p>A string that is found at the beginning of a variable, such as <code>Name</code> or <code>Id</code>.</p> <p>For example, an <code>Evaluation</code> could have the <code>Name</code> <code>2014-09-09-HolidayGiftMailer</code>. To search for this <code>Evaluation</code>, select <code>Name</code> for the <code>FilterVariable</code> and any of the following strings for the <code>Prefix</code>: </p> <ul> <li><p>2014-09</p></li> <li><p>2014-09-09</p></li> <li><p>2014-09-09-Holiday</p></li> </ul>
-- @return DescribeEvaluationsInput structure as a key-value pair table
function M.DescribeEvaluationsInput(args)
	assert(args, "You must provide an argument table when creating DescribeEvaluationsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GT"] = args["GT"],
		["FilterVariable"] = args["FilterVariable"],
		["GE"] = args["GE"],
		["NE"] = args["NE"],
		["LT"] = args["LT"],
		["LE"] = args["LE"],
		["Limit"] = args["Limit"],
		["SortOrder"] = args["SortOrder"],
		["NextToken"] = args["NextToken"],
		["EQ"] = args["EQ"],
		["Prefix"] = args["Prefix"],
	}
	asserts.AssertDescribeEvaluationsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MLModelId [EntityId] <p>The ID of the <code>MLModel</code> to evaluate.</p> <p>The schema used in creating the <code>MLModel</code> must match the schema of the <code>DataSource</code> used in the <code>Evaluation</code>.</p>
-- * EvaluationId [EntityId] <p>A user-supplied ID that uniquely identifies the <code>Evaluation</code>.</p>
-- * EvaluationName [EntityName] <p>A user-supplied name or description of the <code>Evaluation</code>.</p>
-- * EvaluationDataSourceId [EntityId] <p>The ID of the <code>DataSource</code> for the evaluation. The schema of the <code>DataSource</code> must match the schema used to create the <code>MLModel</code>.</p>
-- Required key: EvaluationId
-- Required key: MLModelId
-- Required key: EvaluationDataSourceId
-- @return CreateEvaluationInput structure as a key-value pair table
function M.CreateEvaluationInput(args)
	assert(args, "You must provide an argument table when creating CreateEvaluationInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["MLModelId"] = args["MLModelId"],
		["EvaluationId"] = args["EvaluationId"],
		["EvaluationName"] = args["EvaluationName"],
		["EvaluationDataSourceId"] = args["EvaluationDataSourceId"],
	}
	asserts.AssertCreateEvaluationInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MLModelId [EntityId] <p>A user-supplied ID that uniquely identifies the <code>MLModel</code>. This value should be identical to the value of the <code>MLModelId</code> in the request. </p>
-- @return CreateMLModelOutput structure as a key-value pair table
function M.CreateMLModelOutput(args)
	assert(args, "You must provide an argument table when creating CreateMLModelOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["MLModelId"] = args["MLModelId"],
	}
	asserts.AssertCreateMLModelOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DataSourceName [EntityName] <p>A user-supplied name or description of the <code>DataSource</code>. </p>
-- * ComputeStatistics [ComputeStatistics] <p>The compute statistics for a <code>DataSource</code>. The statistics are generated from the observation data referenced by a <code>DataSource</code>. Amazon ML uses the statistics internally during <code>MLModel</code> training. This parameter must be set to <code>true</code> if the <code></code>DataSource<code></code> needs to be used for <code>MLModel</code> training.</p>
-- * DataSourceId [EntityId] <p>A user-supplied identifier that uniquely identifies the <code>DataSource</code>. </p>
-- * DataSpec [S3DataSpec] <p>The data specification of a <code>DataSource</code>:</p> <ul> <li><p>DataLocationS3 - The Amazon S3 location of the observation data.</p></li> <li><p>DataSchemaLocationS3 - The Amazon S3 location of the <code>DataSchema</code>.</p></li> <li><p>DataSchema - A JSON string representing the schema. This is not required if <code>DataSchemaUri</code> is specified. </p></li> <li> <p>DataRearrangement - A JSON string that represents the splitting and rearrangement requirements for the <code>Datasource</code>. </p> <p> Sample - <code> "{\"splitting\":{\"percentBegin\":10,\"percentEnd\":60}}"</code> </p> </li> </ul>
-- Required key: DataSourceId
-- Required key: DataSpec
-- @return CreateDataSourceFromS3Input structure as a key-value pair table
function M.CreateDataSourceFromS3Input(args)
	assert(args, "You must provide an argument table when creating CreateDataSourceFromS3Input")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DataSourceName"] = args["DataSourceName"],
		["ComputeStatistics"] = args["ComputeStatistics"],
		["DataSourceId"] = args["DataSourceId"],
		["DataSpec"] = args["DataSpec"],
	}
	asserts.AssertCreateDataSourceFromS3Input(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MLModelId [EntityId] <p>The ID assigned to the <code>MLModel</code> during creation.</p>
-- Required key: MLModelId
-- @return DeleteRealtimeEndpointInput structure as a key-value pair table
function M.DeleteRealtimeEndpointInput(args)
	assert(args, "You must provide an argument table when creating DeleteRealtimeEndpointInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["MLModelId"] = args["MLModelId"],
	}
	asserts.AssertDeleteRealtimeEndpointInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [EntityStatus] <p>The current status of the <code>DataSource</code>. This element can have one of the following values:</p> <ul> <li> <code>PENDING</code> - Amazon ML submitted a request to create a <code>DataSource</code>.</li> <li> <code>INPROGRESS</code> - The creation process is underway.</li> <li> <code>FAILED</code> - The request to create a <code>DataSource</code> did not run to completion. It is not usable.</li> <li> <code>COMPLETED</code> - The creation process completed successfully.</li> <li> <code>DELETED</code> - The <code>DataSource</code> is marked as deleted. It is not usable.</li> </ul>
-- * ComputeTime [LongType] <p>The approximate CPU time in milliseconds that Amazon Machine Learning spent processing the <code>DataSource</code>, normalized and scaled on computation resources. <code>ComputeTime</code> is only available if the <code>DataSource</code> is in the <code>COMPLETED</code> state and the <code>ComputeStatistics</code> is set to true.</p>
-- * NumberOfFiles [LongType] <p>The number of data files referenced by the <code>DataSource</code>.</p>
-- * Name [EntityName] <p>A user-supplied name or description of the <code>DataSource</code>.</p>
-- * DataSourceSchema [DataSchema] <p>The schema used by all of the data files of this <code>DataSource</code>.</p> <note><title>Note</title> <p>This parameter is provided as part of the verbose format.</p></note>
-- * DataLocationS3 [S3Url] <p>The location of the data file or directory in Amazon Simple Storage Service (Amazon S3).</p>
-- * RoleARN [RoleARN] 
-- * CreatedByIamUser [AwsUserArn] <p>The AWS user account from which the <code>DataSource</code> was created. The account type can be either an AWS root account or an AWS Identity and Access Management (IAM) user account.</p>
-- * DataSizeInBytes [LongType] <p>The total size of observations in the data files.</p>
-- * RDSMetadata [RDSMetadata] 
-- * ComputeStatistics [ComputeStatistics] <p> The parameter is <code>true</code> if statistics need to be generated from the observation data. </p>
-- * LastUpdatedAt [EpochTime] <p>The time of the most recent edit to the <code>DataSource</code>. The time is expressed in epoch time.</p>
-- * DataSourceId [EntityId] <p>The ID assigned to the <code>DataSource</code> at creation. This value should be identical to the value of the <code>DataSourceId</code> in the request.</p>
-- * RedshiftMetadata [RedshiftMetadata] 
-- * StartedAt [EpochTime] <p>The epoch time when Amazon Machine Learning marked the <code>DataSource</code> as <code>INPROGRESS</code>. <code>StartedAt</code> isn't available if the <code>DataSource</code> is in the <code>PENDING</code> state.</p>
-- * LogUri [PresignedS3Url] <p>A link to the file containing logs of <code>CreateDataSourceFrom*</code> operations.</p>
-- * DataRearrangement [DataRearrangement] <p>A JSON string that represents the splitting and rearrangement requirement used when this <code>DataSource</code> was created.</p>
-- * Message [Message] <p>The user-supplied description of the most recent details about creating the <code>DataSource</code>.</p>
-- * CreatedAt [EpochTime] <p>The time that the <code>DataSource</code> was created. The time is expressed in epoch time.</p>
-- * FinishedAt [EpochTime] <p>The epoch time when Amazon Machine Learning marked the <code>DataSource</code> as <code>COMPLETED</code> or <code>FAILED</code>. <code>FinishedAt</code> is only available when the <code>DataSource</code> is in the <code>COMPLETED</code> or <code>FAILED</code> state.</p>
-- @return GetDataSourceOutput structure as a key-value pair table
function M.GetDataSourceOutput(args)
	assert(args, "You must provide an argument table when creating GetDataSourceOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["ComputeTime"] = args["ComputeTime"],
		["NumberOfFiles"] = args["NumberOfFiles"],
		["Name"] = args["Name"],
		["DataSourceSchema"] = args["DataSourceSchema"],
		["DataLocationS3"] = args["DataLocationS3"],
		["RoleARN"] = args["RoleARN"],
		["CreatedByIamUser"] = args["CreatedByIamUser"],
		["DataSizeInBytes"] = args["DataSizeInBytes"],
		["RDSMetadata"] = args["RDSMetadata"],
		["ComputeStatistics"] = args["ComputeStatistics"],
		["LastUpdatedAt"] = args["LastUpdatedAt"],
		["DataSourceId"] = args["DataSourceId"],
		["RedshiftMetadata"] = args["RedshiftMetadata"],
		["StartedAt"] = args["StartedAt"],
		["LogUri"] = args["LogUri"],
		["DataRearrangement"] = args["DataRearrangement"],
		["Message"] = args["Message"],
		["CreatedAt"] = args["CreatedAt"],
		["FinishedAt"] = args["FinishedAt"],
	}
	asserts.AssertGetDataSourceOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DataSourceId [EntityId] <p>The ID assigned to the <code>DataSource</code> during creation. This value should be identical to the value of the <code>DataSourceID</code> in the request.</p>
-- @return UpdateDataSourceOutput structure as a key-value pair table
function M.UpdateDataSourceOutput(args)
	assert(args, "You must provide an argument table when creating UpdateDataSourceOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DataSourceId"] = args["DataSourceId"],
	}
	asserts.AssertUpdateDataSourceOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EvaluationId [EntityId] <p>A user-supplied ID that uniquely identifies the <code>Evaluation</code>. This value should be identical to the value of the <code>EvaluationId</code> in the request.</p>
-- @return DeleteEvaluationOutput structure as a key-value pair table
function M.DeleteEvaluationOutput(args)
	assert(args, "You must provide an argument table when creating DeleteEvaluationOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EvaluationId"] = args["EvaluationId"],
	}
	asserts.AssertDeleteEvaluationOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DataLocationS3 [S3Url] <p>The location of the data file(s) used by a <code>DataSource</code>. The URI specifies a data file or an Amazon Simple Storage Service (Amazon S3) directory or bucket containing data files.</p>
-- * DataSchemaLocationS3 [S3Url] <p>Describes the schema location in Amazon S3. You must provide either the <code>DataSchema</code> or the <code>DataSchemaLocationS3</code>.</p>
-- * DataSchema [DataSchema] <p> A JSON string that represents the schema for an Amazon S3 <code>DataSource</code>. The <code>DataSchema</code> defines the structure of the observation data in the data file(s) referenced in the <code>DataSource</code>.</p> <p>You must provide either the <code>DataSchema</code> or the <code>DataSchemaLocationS3</code>.</p> <p>Define your <code>DataSchema</code> as a series of key-value pairs. <code>attributes</code> and <code>excludedVariableNames</code> have an array of key-value pairs for their value. Use the following format to define your <code>DataSchema</code>.</p> <p>{ "version": "1.0",</p> <p> "recordAnnotationFieldName": "F1",</p> <p> "recordWeightFieldName": "F2",</p> <p> "targetFieldName": "F3",</p> <p> "dataFormat": "CSV",</p> <p> "dataFileContainsHeader": true,</p> <p> "attributes": [</p> <p> { "fieldName": "F1", "fieldType": "TEXT" }, { "fieldName": "F2", "fieldType": "NUMERIC" }, { "fieldName": "F3", "fieldType": "CATEGORICAL" }, { "fieldName": "F4", "fieldType": "NUMERIC" }, { "fieldName": "F5", "fieldType": "CATEGORICAL" }, { "fieldName": "F6", "fieldType": "TEXT" }, { "fieldName": "F7", "fieldType": "WEIGHTED_INT_SEQUENCE" }, { "fieldName": "F8", "fieldType": "WEIGHTED_STRING_SEQUENCE" } ],</p> <p> "excludedVariableNames": [ "F6" ] } </p> <?oxy_insert_end>
-- * DataRearrangement [DataRearrangement] <p>A JSON string that represents the splitting and rearrangement processing to be applied to a <code>DataSource</code>. If the <code>DataRearrangement</code> parameter is not provided, all of the input data is used to create the <code>Datasource</code>.</p> <p>There are multiple parameters that control what data is used to create a datasource:</p> <ul> <li><p><b><code>percentBegin</code></b></p> <p>Use <code>percentBegin</code> to indicate the beginning of the range of the data used to create the Datasource. If you do not include <code>percentBegin</code> and <code>percentEnd</code>, Amazon ML includes all of the data when creating the datasource.</p></li> <li><p><b><code>percentEnd</code></b></p> <p>Use <code>percentEnd</code> to indicate the end of the range of the data used to create the Datasource. If you do not include <code>percentBegin</code> and <code>percentEnd</code>, Amazon ML includes all of the data when creating the datasource.</p></li> <li><p><b><code>complement</code></b></p> <p>The <code>complement</code> parameter instructs Amazon ML to use the data that is not included in the range of <code>percentBegin</code> to <code>percentEnd</code> to create a datasource. The <code>complement</code> parameter is useful if you need to create complementary datasources for training and evaluation. To create a complementary datasource, use the same values for <code>percentBegin</code> and <code>percentEnd</code>, along with the <code>complement</code> parameter.</p> <p>For example, the following two datasources do not share any data, and can be used to train and evaluate a model. The first datasource has 25 percent of the data, and the second one has 75 percent of the data.</p> <p>Datasource for evaluation: <code>{"splitting":{"percentBegin":0, "percentEnd":25}}</code></p> <p>Datasource for training: <code>{"splitting":{"percentBegin":0, "percentEnd":25, "complement":"true"}}</code></p> </li> <li><p><b><code>strategy</code></b></p> <p>To change how Amazon ML splits the data for a datasource, use the <code>strategy</code> parameter.</p> <p>The default value for the <code>strategy</code> parameter is <code>sequential</code>, meaning that Amazon ML takes all of the data records between the <code>percentBegin</code> and <code>percentEnd</code> parameters for the datasource, in the order that the records appear in the input data.</p> <p>The following two <code>DataRearrangement</code> lines are examples of sequentially ordered training and evaluation datasources:</p> <p>Datasource for evaluation: <code>{"splitting":{"percentBegin":70, "percentEnd":100, "strategy":"sequential"}}</code></p> <p>Datasource for training: <code>{"splitting":{"percentBegin":70, "percentEnd":100, "strategy":"sequential", "complement":"true"}}</code></p> <p>To randomly split the input data into the proportions indicated by the percentBegin and percentEnd parameters, set the <code>strategy</code> parameter to <code>random</code> and provide a string that is used as the seed value for the random data splitting (for example, you can use the S3 path to your data as the random seed string). If you choose the random split strategy, Amazon ML assigns each row of data a pseudo-random number between 0 and 100, and then selects the rows that have an assigned number between <code>percentBegin</code> and <code>percentEnd</code>. Pseudo-random numbers are assigned using both the input seed string value and the byte offset as a seed, so changing the data results in a different split. Any existing ordering is preserved. The random splitting strategy ensures that variables in the training and evaluation data are distributed similarly. It is useful in the cases where the input data may have an implicit sort order, which would otherwise result in training and evaluation datasources containing non-similar data records.</p> <p>The following two <code>DataRearrangement</code> lines are examples of non-sequentially ordered training and evaluation datasources:</p> <p>Datasource for evaluation: <code>{"splitting":{"percentBegin":70, "percentEnd":100, "strategy":"random", "randomSeed"="s3://my_s3_path/bucket/file.csv"}}</code></p> <p>Datasource for training: <code>{"splitting":{"percentBegin":70, "percentEnd":100, "strategy":"random", "randomSeed"="s3://my_s3_path/bucket/file.csv", "complement":"true"}}</code></p> </li> </ul>
-- Required key: DataLocationS3
-- @return S3DataSpec structure as a key-value pair table
function M.S3DataSpec(args)
	assert(args, "You must provide an argument table when creating S3DataSpec")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DataLocationS3"] = args["DataLocationS3"],
		["DataSchemaLocationS3"] = args["DataSchemaLocationS3"],
		["DataSchema"] = args["DataSchema"],
		["DataRearrangement"] = args["DataRearrangement"],
	}
	asserts.AssertS3DataSpec(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MLModelId [EntityId] <p>A user-supplied ID that uniquely identifies the <code>MLModel</code>. This value should be identical to the value of the <code>MLModelID</code> in the request.</p>
-- @return DeleteMLModelOutput structure as a key-value pair table
function M.DeleteMLModelOutput(args)
	assert(args, "You must provide an argument table when creating DeleteMLModelOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["MLModelId"] = args["MLModelId"],
	}
	asserts.AssertDeleteMLModelOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ClusterIdentifier [RedshiftClusterIdentifier] 
-- * DatabaseName [RedshiftDatabaseName] 
-- Required key: DatabaseName
-- Required key: ClusterIdentifier
-- @return RedshiftDatabase structure as a key-value pair table
function M.RedshiftDatabase(args)
	assert(args, "You must provide an argument table when creating RedshiftDatabase")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ClusterIdentifier"] = args["ClusterIdentifier"],
		["DatabaseName"] = args["DatabaseName"],
	}
	asserts.AssertRedshiftDatabase(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MLModelId [EntityId] <p>The ID of the <code>MLModel</code> that will generate predictions for the group of observations. </p>
-- * BatchPredictionId [EntityId] <p>A user-supplied ID that uniquely identifies the <code>BatchPrediction</code>.</p>
-- * BatchPredictionDataSourceId [EntityId] <p>The ID of the <code>DataSource</code> that points to the group of observations to predict.</p>
-- * OutputUri [S3Url] <p>The location of an Amazon Simple Storage Service (Amazon S3) bucket or directory to store the batch prediction results. The following substrings are not allowed in the <code>s3 key</code> portion of the <code>outputURI</code> field: ':', '//', '/./', '/../'.</p> <p>Amazon ML needs permissions to store and retrieve the logs on your behalf. For information about how to set permissions, see the <a href="http://docs.aws.amazon.com/machine-learning/latest/dg">Amazon Machine Learning Developer Guide</a>.</p>
-- * BatchPredictionName [EntityName] <p>A user-supplied name or description of the <code>BatchPrediction</code>. <code>BatchPredictionName</code> can only use the UTF-8 character set.</p>
-- Required key: BatchPredictionId
-- Required key: MLModelId
-- Required key: BatchPredictionDataSourceId
-- Required key: OutputUri
-- @return CreateBatchPredictionInput structure as a key-value pair table
function M.CreateBatchPredictionInput(args)
	assert(args, "You must provide an argument table when creating CreateBatchPredictionInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["MLModelId"] = args["MLModelId"],
		["BatchPredictionId"] = args["BatchPredictionId"],
		["BatchPredictionDataSourceId"] = args["BatchPredictionDataSourceId"],
		["OutputUri"] = args["OutputUri"],
		["BatchPredictionName"] = args["BatchPredictionName"],
	}
	asserts.AssertCreateBatchPredictionInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [StringType] <p>The ID of the next page in the paginated results that indicates at least one more page follows.</p>
-- * Results [BatchPredictions] <p>A list of <code>BatchPrediction</code> objects that meet the search criteria. </p>
-- @return DescribeBatchPredictionsOutput structure as a key-value pair table
function M.DescribeBatchPredictionsOutput(args)
	assert(args, "You must provide an argument table when creating DescribeBatchPredictionsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["Results"] = args["Results"],
	}
	asserts.AssertDescribeBatchPredictionsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EndpointStatus [RealtimeEndpointStatus] <p> The current status of the real-time endpoint for the <code>MLModel</code>. This element can have one of the following values: </p> <ul> <li> <code>NONE</code> - Endpoint does not exist or was previously deleted.</li> <li> <code>READY</code> - Endpoint is ready to be used for real-time predictions.</li> <li> <code>UPDATING</code> - Updating/creating the endpoint. </li> </ul>
-- * PeakRequestsPerSecond [IntegerType] <p> The maximum processing rate for the real-time endpoint for <code>MLModel</code>, measured in incoming requests per second.</p>
-- * CreatedAt [EpochTime] <p>The time that the request to create the real-time endpoint for the <code>MLModel</code> was received. The time is expressed in epoch time.</p>
-- * EndpointUrl [VipURL] <p>The URI that specifies where to send real-time prediction requests for the <code>MLModel</code>.</p> <note><title>Note</title> <p>The application must wait until the real-time endpoint is ready before using this URI.</p> </note>
-- @return RealtimeEndpointInfo structure as a key-value pair table
function M.RealtimeEndpointInfo(args)
	assert(args, "You must provide an argument table when creating RealtimeEndpointInfo")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EndpointStatus"] = args["EndpointStatus"],
		["PeakRequestsPerSecond"] = args["PeakRequestsPerSecond"],
		["CreatedAt"] = args["CreatedAt"],
		["EndpointUrl"] = args["EndpointUrl"],
	}
	asserts.AssertRealtimeEndpointInfo(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [StringType] <p>The ID of the next page in the paginated results that indicates at least one more page follows.</p>
-- * Results [MLModels] <p>A list of <code>MLModel</code> that meet the search criteria.</p>
-- @return DescribeMLModelsOutput structure as a key-value pair table
function M.DescribeMLModelsOutput(args)
	assert(args, "You must provide an argument table when creating DescribeMLModelsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["Results"] = args["Results"],
	}
	asserts.AssertDescribeMLModelsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [EntityStatus] <p>The current status of the <code>DataSource</code>. This element can have one of the following values: </p> <ul> <li>PENDING - Amazon Machine Learning (Amazon ML) submitted a request to create a <code>DataSource</code>.</li> <li>INPROGRESS - The creation process is underway.</li> <li>FAILED - The request to create a <code>DataSource</code> did not run to completion. It is not usable.</li> <li>COMPLETED - The creation process completed successfully.</li> <li>DELETED - The <code>DataSource</code> is marked as deleted. It is not usable.</li> </ul>
-- * ComputeTime [LongType] 
-- * NumberOfFiles [LongType] <p>The number of data files referenced by the <code>DataSource</code>.</p>
-- * Name [EntityName] <p>A user-supplied name or description of the <code>DataSource</code>.</p>
-- * DataLocationS3 [S3Url] <p>The location and name of the data in Amazon Simple Storage Service (Amazon S3) that is used by a <code>DataSource</code>.</p>
-- * RoleARN [RoleARN] 
-- * CreatedByIamUser [AwsUserArn] <p>The AWS user account from which the <code>DataSource</code> was created. The account type can be either an AWS root account or an AWS Identity and Access Management (IAM) user account.</p>
-- * DataSizeInBytes [LongType] <p>The total number of observations contained in the data files that the <code>DataSource</code> references.</p>
-- * RDSMetadata [RDSMetadata] 
-- * ComputeStatistics [ComputeStatistics] <p> The parameter is <code>true</code> if statistics need to be generated from the observation data. </p>
-- * LastUpdatedAt [EpochTime] <p>The time of the most recent edit to the <code>BatchPrediction</code>. The time is expressed in epoch time.</p>
-- * DataSourceId [EntityId] <p>The ID that is assigned to the <code>DataSource</code> during creation.</p>
-- * RedshiftMetadata [RedshiftMetadata] 
-- * StartedAt [EpochTime] 
-- * Message [Message] <p>A description of the most recent details about creating the <code>DataSource</code>.</p>
-- * DataRearrangement [DataRearrangement] <p>A JSON string that represents the splitting and rearrangement requirement used when this <code>DataSource</code> was created.</p>
-- * CreatedAt [EpochTime] <p>The time that the <code>DataSource</code> was created. The time is expressed in epoch time.</p>
-- * FinishedAt [EpochTime] 
-- @return DataSource structure as a key-value pair table
function M.DataSource(args)
	assert(args, "You must provide an argument table when creating DataSource")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["ComputeTime"] = args["ComputeTime"],
		["NumberOfFiles"] = args["NumberOfFiles"],
		["Name"] = args["Name"],
		["DataLocationS3"] = args["DataLocationS3"],
		["RoleARN"] = args["RoleARN"],
		["CreatedByIamUser"] = args["CreatedByIamUser"],
		["DataSizeInBytes"] = args["DataSizeInBytes"],
		["RDSMetadata"] = args["RDSMetadata"],
		["ComputeStatistics"] = args["ComputeStatistics"],
		["LastUpdatedAt"] = args["LastUpdatedAt"],
		["DataSourceId"] = args["DataSourceId"],
		["RedshiftMetadata"] = args["RedshiftMetadata"],
		["StartedAt"] = args["StartedAt"],
		["Message"] = args["Message"],
		["DataRearrangement"] = args["DataRearrangement"],
		["CreatedAt"] = args["CreatedAt"],
		["FinishedAt"] = args["FinishedAt"],
	}
	asserts.AssertDataSource(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MLModelId [EntityId] <p>The ID assigned to the <code>MLModel</code> during creation.</p>
-- Required key: MLModelId
-- @return CreateRealtimeEndpointInput structure as a key-value pair table
function M.CreateRealtimeEndpointInput(args)
	assert(args, "You must provide an argument table when creating CreateRealtimeEndpointInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["MLModelId"] = args["MLModelId"],
	}
	asserts.AssertCreateRealtimeEndpointInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DatabaseCredentials [RDSDatabaseCredentials] <p>The AWS Identity and Access Management (IAM) credentials that are used connect to the Amazon RDS database.</p>
-- * DataSchemaUri [S3Url] <p>The Amazon S3 location of the <code>DataSchema</code>. </p>
-- * ServiceRole [EDPServiceRole] <p>The role (DataPipelineDefaultRole) assumed by AWS Data Pipeline service to monitor the progress of the copy task from Amazon RDS to Amazon S3. For more information, see <a href="http://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-iam-roles.html">Role templates</a> for data pipelines.</p>
-- * ResourceRole [EDPResourceRole] <p>The role (DataPipelineDefaultResourceRole) assumed by an Amazon Elastic Compute Cloud (Amazon EC2) instance to carry out the copy operation from Amazon RDS to an Amazon S3 task. For more information, see <a href="http://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-iam-roles.html">Role templates</a> for data pipelines.</p>
-- * DatabaseInformation [RDSDatabase] <p>Describes the <code>DatabaseName</code> and <code>InstanceIdentifier</code> of an Amazon RDS database.</p>
-- * SecurityGroupIds [EDPSecurityGroupIds] <p>The security group IDs to be used to access a VPC-based RDS DB instance. Ensure that there are appropriate ingress rules set up to allow access to the RDS DB instance. This attribute is used by Data Pipeline to carry out the copy operation from Amazon RDS to an Amazon S3 task.</p>
-- * SubnetId [EDPSubnetId] <p>The subnet ID to be used to access a VPC-based RDS DB instance. This attribute is used by Data Pipeline to carry out the copy task from Amazon RDS to Amazon S3.</p>
-- * DataSchema [DataSchema] <p>A JSON string that represents the schema for an Amazon RDS <code>DataSource</code>. The <code>DataSchema</code> defines the structure of the observation data in the data file(s) referenced in the <code>DataSource</code>.</p> <p>A <code>DataSchema</code> is not required if you specify a <code>DataSchemaUri</code></p> <p>Define your <code>DataSchema</code> as a series of key-value pairs. <code>attributes</code> and <code>excludedVariableNames</code> have an array of key-value pairs for their value. Use the following format to define your <code>DataSchema</code>.</p> <p>{ "version": "1.0",</p> <p> "recordAnnotationFieldName": "F1",</p> <p> "recordWeightFieldName": "F2",</p> <p> "targetFieldName": "F3",</p> <p> "dataFormat": "CSV",</p> <p> "dataFileContainsHeader": true,</p> <p> "attributes": [</p> <p> { "fieldName": "F1", "fieldType": "TEXT" }, { "fieldName": "F2", "fieldType": "NUMERIC" }, { "fieldName": "F3", "fieldType": "CATEGORICAL" }, { "fieldName": "F4", "fieldType": "NUMERIC" }, { "fieldName": "F5", "fieldType": "CATEGORICAL" }, { "fieldName": "F6", "fieldType": "TEXT" }, { "fieldName": "F7", "fieldType": "WEIGHTED_INT_SEQUENCE" }, { "fieldName": "F8", "fieldType": "WEIGHTED_STRING_SEQUENCE" } ],</p> <p> "excludedVariableNames": [ "F6" ] } </p> <?oxy_insert_end>
-- * DataRearrangement [DataRearrangement] <p>A JSON string that represents the splitting and rearrangement processing to be applied to a <code>DataSource</code>. If the <code>DataRearrangement</code> parameter is not provided, all of the input data is used to create the <code>Datasource</code>.</p> <p>There are multiple parameters that control what data is used to create a datasource:</p> <ul> <li><p><b><code>percentBegin</code></b></p> <p>Use <code>percentBegin</code> to indicate the beginning of the range of the data used to create the Datasource. If you do not include <code>percentBegin</code> and <code>percentEnd</code>, Amazon ML includes all of the data when creating the datasource.</p></li> <li><p><b><code>percentEnd</code></b></p> <p>Use <code>percentEnd</code> to indicate the end of the range of the data used to create the Datasource. If you do not include <code>percentBegin</code> and <code>percentEnd</code>, Amazon ML includes all of the data when creating the datasource.</p></li> <li><p><b><code>complement</code></b></p> <p>The <code>complement</code> parameter instructs Amazon ML to use the data that is not included in the range of <code>percentBegin</code> to <code>percentEnd</code> to create a datasource. The <code>complement</code> parameter is useful if you need to create complementary datasources for training and evaluation. To create a complementary datasource, use the same values for <code>percentBegin</code> and <code>percentEnd</code>, along with the <code>complement</code> parameter.</p> <p>For example, the following two datasources do not share any data, and can be used to train and evaluate a model. The first datasource has 25 percent of the data, and the second one has 75 percent of the data.</p> <p>Datasource for evaluation: <code>{"splitting":{"percentBegin":0, "percentEnd":25}}</code></p> <p>Datasource for training: <code>{"splitting":{"percentBegin":0, "percentEnd":25, "complement":"true"}}</code></p> </li> <li><p><b><code>strategy</code></b></p> <p>To change how Amazon ML splits the data for a datasource, use the <code>strategy</code> parameter.</p> <p>The default value for the <code>strategy</code> parameter is <code>sequential</code>, meaning that Amazon ML takes all of the data records between the <code>percentBegin</code> and <code>percentEnd</code> parameters for the datasource, in the order that the records appear in the input data.</p> <p>The following two <code>DataRearrangement</code> lines are examples of sequentially ordered training and evaluation datasources:</p> <p>Datasource for evaluation: <code>{"splitting":{"percentBegin":70, "percentEnd":100, "strategy":"sequential"}}</code></p> <p>Datasource for training: <code>{"splitting":{"percentBegin":70, "percentEnd":100, "strategy":"sequential", "complement":"true"}}</code></p> <p>To randomly split the input data into the proportions indicated by the percentBegin and percentEnd parameters, set the <code>strategy</code> parameter to <code>random</code> and provide a string that is used as the seed value for the random data splitting (for example, you can use the S3 path to your data as the random seed string). If you choose the random split strategy, Amazon ML assigns each row of data a pseudo-random number between 0 and 100, and then selects the rows that have an assigned number between <code>percentBegin</code> and <code>percentEnd</code>. Pseudo-random numbers are assigned using both the input seed string value and the byte offset as a seed, so changing the data results in a different split. Any existing ordering is preserved. The random splitting strategy ensures that variables in the training and evaluation data are distributed similarly. It is useful in the cases where the input data may have an implicit sort order, which would otherwise result in training and evaluation datasources containing non-similar data records.</p> <p>The following two <code>DataRearrangement</code> lines are examples of non-sequentially ordered training and evaluation datasources:</p> <p>Datasource for evaluation: <code>{"splitting":{"percentBegin":70, "percentEnd":100, "strategy":"random", "randomSeed"="s3://my_s3_path/bucket/file.csv"}}</code></p> <p>Datasource for training: <code>{"splitting":{"percentBegin":70, "percentEnd":100, "strategy":"random", "randomSeed"="s3://my_s3_path/bucket/file.csv", "complement":"true"}}</code></p> </li> </ul>
-- * S3StagingLocation [S3Url] <p>The Amazon S3 location for staging Amazon RDS data. The data retrieved from Amazon RDS using <code>SelectSqlQuery</code> is stored in this location.</p>
-- * SelectSqlQuery [RDSSelectSqlQuery] <p>The query that is used to retrieve the observation data for the <code>DataSource</code>.</p>
-- Required key: DatabaseInformation
-- Required key: SelectSqlQuery
-- Required key: DatabaseCredentials
-- Required key: S3StagingLocation
-- Required key: ResourceRole
-- Required key: ServiceRole
-- Required key: SubnetId
-- Required key: SecurityGroupIds
-- @return RDSDataSpec structure as a key-value pair table
function M.RDSDataSpec(args)
	assert(args, "You must provide an argument table when creating RDSDataSpec")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DatabaseCredentials"] = args["DatabaseCredentials"],
		["DataSchemaUri"] = args["DataSchemaUri"],
		["ServiceRole"] = args["ServiceRole"],
		["ResourceRole"] = args["ResourceRole"],
		["DatabaseInformation"] = args["DatabaseInformation"],
		["SecurityGroupIds"] = args["SecurityGroupIds"],
		["SubnetId"] = args["SubnetId"],
		["DataSchema"] = args["DataSchema"],
		["DataRearrangement"] = args["DataRearrangement"],
		["S3StagingLocation"] = args["S3StagingLocation"],
		["SelectSqlQuery"] = args["SelectSqlQuery"],
	}
	asserts.AssertRDSDataSpec(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MLModelId [EntityId] <p>The ID assigned to the <code>MLModel</code> at creation.</p>
-- * Verbose [Verbose] <p>Specifies whether the <code>GetMLModel</code> operation should return <code>Recipe</code>.</p> <p>If true, <code>Recipe</code> is returned.</p> <p>If false, <code>Recipe</code> is not returned.</p>
-- Required key: MLModelId
-- @return GetMLModelInput structure as a key-value pair table
function M.GetMLModelInput(args)
	assert(args, "You must provide an argument table when creating GetMLModelInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["MLModelId"] = args["MLModelId"],
		["Verbose"] = args["Verbose"],
	}
	asserts.AssertGetMLModelInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MLModelId [EntityId] <p>A user-supplied ID that uniquely identifies the <code>MLModel</code>. This value should be identical to the value of the <code>MLModelId</code> in the request.</p>
-- * RealtimeEndpointInfo [RealtimeEndpointInfo] <p>The endpoint information of the <code>MLModel</code> </p>
-- @return DeleteRealtimeEndpointOutput structure as a key-value pair table
function M.DeleteRealtimeEndpointOutput(args)
	assert(args, "You must provide an argument table when creating DeleteRealtimeEndpointOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["MLModelId"] = args["MLModelId"],
		["RealtimeEndpointInfo"] = args["RealtimeEndpointInfo"],
	}
	asserts.AssertDeleteRealtimeEndpointOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [EntityStatus] <p>The status of the <code>BatchPrediction</code>. This element can have one of the following values:</p> <ul> <li> <code>PENDING</code> - Amazon Machine Learning (Amazon ML) submitted a request to generate predictions for a batch of observations.</li> <li> <code>INPROGRESS</code> - The process is underway.</li> <li> <code>FAILED</code> - The request to perform a batch prediction did not run to completion. It is not usable.</li> <li> <code>COMPLETED</code> - The batch prediction process completed successfully.</li> <li> <code>DELETED</code> - The <code>BatchPrediction</code> is marked as deleted. It is not usable.</li> </ul>
-- * ComputeTime [LongType] 
-- * Name [EntityName] <p>A user-supplied name or description of the <code>BatchPrediction</code>.</p>
-- * InputDataLocationS3 [S3Url] <p>The location of the data file or directory in Amazon Simple Storage Service (Amazon S3).</p>
-- * InvalidRecordCount [LongType] 
-- * CreatedByIamUser [AwsUserArn] <p>The AWS user account that invoked the <code>BatchPrediction</code>. The account type can be either an AWS root account or an AWS Identity and Access Management (IAM) user account.</p>
-- * MLModelId [EntityId] <p>The ID of the <code>MLModel</code> that generated predictions for the <code>BatchPrediction</code> request.</p>
-- * TotalRecordCount [LongType] 
-- * LastUpdatedAt [EpochTime] <p>The time of the most recent edit to the <code>BatchPrediction</code>. The time is expressed in epoch time.</p>
-- * BatchPredictionDataSourceId [EntityId] <p>The ID of the <code>DataSource</code> that points to the group of observations to predict.</p>
-- * OutputUri [S3Url] <p>The location of an Amazon S3 bucket or directory to receive the operation results. The following substrings are not allowed in the <code>s3 key</code> portion of the <code>outputURI</code> field: ':', '//', '/./', '/../'.</p>
-- * StartedAt [EpochTime] 
-- * BatchPredictionId [EntityId] <p>The ID assigned to the <code>BatchPrediction</code> at creation. This value should be identical to the value of the <code>BatchPredictionID</code> in the request. </p>
-- * Message [Message] <p>A description of the most recent details about processing the batch prediction request.</p>
-- * CreatedAt [EpochTime] <p>The time that the <code>BatchPrediction</code> was created. The time is expressed in epoch time.</p>
-- * FinishedAt [EpochTime] 
-- @return BatchPrediction structure as a key-value pair table
function M.BatchPrediction(args)
	assert(args, "You must provide an argument table when creating BatchPrediction")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["ComputeTime"] = args["ComputeTime"],
		["Name"] = args["Name"],
		["InputDataLocationS3"] = args["InputDataLocationS3"],
		["InvalidRecordCount"] = args["InvalidRecordCount"],
		["CreatedByIamUser"] = args["CreatedByIamUser"],
		["MLModelId"] = args["MLModelId"],
		["TotalRecordCount"] = args["TotalRecordCount"],
		["LastUpdatedAt"] = args["LastUpdatedAt"],
		["BatchPredictionDataSourceId"] = args["BatchPredictionDataSourceId"],
		["OutputUri"] = args["OutputUri"],
		["StartedAt"] = args["StartedAt"],
		["BatchPredictionId"] = args["BatchPredictionId"],
		["Message"] = args["Message"],
		["CreatedAt"] = args["CreatedAt"],
		["FinishedAt"] = args["FinishedAt"],
	}
	asserts.AssertBatchPrediction(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DataSourceName [EntityName] <p>A user-supplied name or description of the <code>DataSource</code>.</p>
-- * RDSData [RDSDataSpec] <p>The data specification of an Amazon RDS <code>DataSource</code>:</p> <ul> <li><p>DatabaseInformation - <ul> <li> <code>DatabaseName</code> - The name of the Amazon RDS database.</li> <li> <code>InstanceIdentifier </code> - A unique identifier for the Amazon RDS database instance.</li> </ul> </p></li> <li><p>DatabaseCredentials - AWS Identity and Access Management (IAM) credentials that are used to connect to the Amazon RDS database.</p></li> <li><p>ResourceRole - A role (DataPipelineDefaultResourceRole) assumed by an EC2 instance to carry out the copy task from Amazon RDS to Amazon Simple Storage Service (Amazon S3). For more information, see <a href="http://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-iam-roles.html">Role templates</a> for data pipelines.</p></li> <li><p>ServiceRole - A role (DataPipelineDefaultRole) assumed by the AWS Data Pipeline service to monitor the progress of the copy task from Amazon RDS to Amazon S3. For more information, see <a href="http://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-iam-roles.html">Role templates</a> for data pipelines.</p></li> <li><p>SecurityInfo - The security information to use to access an RDS DB instance. You need to set up appropriate ingress rules for the security entity IDs provided to allow access to the Amazon RDS instance. Specify a [<code>SubnetId</code>, <code>SecurityGroupIds</code>] pair for a VPC-based RDS DB instance.</p></li> <li><p>SelectSqlQuery - A query that is used to retrieve the observation data for the <code>Datasource</code>.</p></li> <li><p>S3StagingLocation - The Amazon S3 location for staging Amazon RDS data. The data retrieved from Amazon RDS using <code>SelectSqlQuery</code> is stored in this location.</p></li> <li><p>DataSchemaUri - The Amazon S3 location of the <code>DataSchema</code>.</p></li> <li><p>DataSchema - A JSON string representing the schema. This is not required if <code>DataSchemaUri</code> is specified. </p></li> <li> <p>DataRearrangement - A JSON string that represents the splitting and rearrangement requirements for the <code>Datasource</code>. </p> <br> <p> Sample - <code> "{\"splitting\":{\"percentBegin\":10,\"percentEnd\":60}}"</code> </p> </li> </ul>
-- * ComputeStatistics [ComputeStatistics] <p>The compute statistics for a <code>DataSource</code>. The statistics are generated from the observation data referenced by a <code>DataSource</code>. Amazon ML uses the statistics internally during <code>MLModel</code> training. This parameter must be set to <code>true</code> if the <code></code>DataSource<code></code> needs to be used for <code>MLModel</code> training. </p>
-- * DataSourceId [EntityId] <p>A user-supplied ID that uniquely identifies the <code>DataSource</code>. Typically, an Amazon Resource Number (ARN) becomes the ID for a <code>DataSource</code>.</p>
-- * RoleARN [RoleARN] <p>The role that Amazon ML assumes on behalf of the user to create and activate a data pipeline in the user's account and copy data using the <code>SelectSqlQuery</code> query from Amazon RDS to Amazon S3.</p> <p> </p>
-- Required key: DataSourceId
-- Required key: RDSData
-- Required key: RoleARN
-- @return CreateDataSourceFromRDSInput structure as a key-value pair table
function M.CreateDataSourceFromRDSInput(args)
	assert(args, "You must provide an argument table when creating CreateDataSourceFromRDSInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DataSourceName"] = args["DataSourceName"],
		["RDSData"] = args["RDSData"],
		["ComputeStatistics"] = args["ComputeStatistics"],
		["DataSourceId"] = args["DataSourceId"],
		["RoleARN"] = args["RoleARN"],
	}
	asserts.AssertCreateDataSourceFromRDSInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EvaluationDataSourceId [EntityId] <p>The ID of the <code>DataSource</code> that is used to evaluate the <code>MLModel</code>.</p>
-- * Status [EntityStatus] <p>The status of the evaluation. This element can have one of the following values:</p> <ul> <li> <code>PENDING</code> - Amazon Machine Learning (Amazon ML) submitted a request to evaluate an <code>MLModel</code>.</li> <li> <code>INPROGRESS</code> - The evaluation is underway.</li> <li> <code>FAILED</code> - The request to evaluate an <code>MLModel</code> did not run to completion. It is not usable.</li> <li> <code>COMPLETED</code> - The evaluation process completed successfully.</li> <li> <code>DELETED</code> - The <code>Evaluation</code> is marked as deleted. It is not usable.</li> </ul>
-- * ComputeTime [LongType] 
-- * Name [EntityName] <p>A user-supplied name or description of the <code>Evaluation</code>. </p>
-- * InputDataLocationS3 [S3Url] <p>The location and name of the data in Amazon Simple Storage Server (Amazon S3) that is used in the evaluation.</p>
-- * EvaluationId [EntityId] <p>The ID that is assigned to the <code>Evaluation</code> at creation.</p>
-- * CreatedByIamUser [AwsUserArn] <p>The AWS user account that invoked the evaluation. The account type can be either an AWS root account or an AWS Identity and Access Management (IAM) user account.</p>
-- * MLModelId [EntityId] <p>The ID of the <code>MLModel</code> that is the focus of the evaluation.</p>
-- * LastUpdatedAt [EpochTime] <p>The time of the most recent edit to the <code>Evaluation</code>. The time is expressed in epoch time.</p>
-- * StartedAt [EpochTime] 
-- * Message [Message] <p>A description of the most recent details about evaluating the <code>MLModel</code>.</p>
-- * PerformanceMetrics [PerformanceMetrics] <p>Measurements of how well the <code>MLModel</code> performed, using observations referenced by the <code>DataSource</code>. One of the following metrics is returned, based on the type of the <code>MLModel</code>: </p> <ul> <li> <p>BinaryAUC: A binary <code>MLModel</code> uses the Area Under the Curve (AUC) technique to measure performance. </p> </li> <li> <p>RegressionRMSE: A regression <code>MLModel</code> uses the Root Mean Square Error (RMSE) technique to measure performance. RMSE measures the difference between predicted and actual values for a single variable.</p> </li> <li> <p>MulticlassAvgFScore: A multiclass <code>MLModel</code> uses the F1 score technique to measure performance. </p> </li> </ul> <p> For more information about performance metrics, please see the <a href="http://docs.aws.amazon.com/machine-learning/latest/dg">Amazon Machine Learning Developer Guide</a>. </p>
-- * CreatedAt [EpochTime] <p>The time that the <code>Evaluation</code> was created. The time is expressed in epoch time.</p>
-- * FinishedAt [EpochTime] 
-- @return Evaluation structure as a key-value pair table
function M.Evaluation(args)
	assert(args, "You must provide an argument table when creating Evaluation")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EvaluationDataSourceId"] = args["EvaluationDataSourceId"],
		["Status"] = args["Status"],
		["ComputeTime"] = args["ComputeTime"],
		["Name"] = args["Name"],
		["InputDataLocationS3"] = args["InputDataLocationS3"],
		["EvaluationId"] = args["EvaluationId"],
		["CreatedByIamUser"] = args["CreatedByIamUser"],
		["MLModelId"] = args["MLModelId"],
		["LastUpdatedAt"] = args["LastUpdatedAt"],
		["StartedAt"] = args["StartedAt"],
		["Message"] = args["Message"],
		["PerformanceMetrics"] = args["PerformanceMetrics"],
		["CreatedAt"] = args["CreatedAt"],
		["FinishedAt"] = args["FinishedAt"],
	}
	asserts.AssertEvaluation(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EvaluationId [EntityId] <p>The ID assigned to the <code>Evaluation</code> during creation. This value should be identical to the value of the <code>Evaluation</code> in the request.</p>
-- @return UpdateEvaluationOutput structure as a key-value pair table
function M.UpdateEvaluationOutput(args)
	assert(args, "You must provide an argument table when creating UpdateEvaluationOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EvaluationId"] = args["EvaluationId"],
	}
	asserts.AssertUpdateEvaluationOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MLModelId [EntityId] <p>The ID assigned to the <code>MLModel</code> during creation.</p>
-- * ScoreThreshold [ScoreThreshold] <p>The <code>ScoreThreshold</code> used in binary classification <code>MLModel</code> that marks the boundary between a positive prediction and a negative prediction.</p> <p>Output values greater than or equal to the <code>ScoreThreshold</code> receive a positive result from the <code>MLModel</code>, such as <code>true</code>. Output values less than the <code>ScoreThreshold</code> receive a negative response from the <code>MLModel</code>, such as <code>false</code>.</p>
-- * MLModelName [EntityName] <p>A user-supplied name or description of the <code>MLModel</code>.</p>
-- Required key: MLModelId
-- @return UpdateMLModelInput structure as a key-value pair table
function M.UpdateMLModelInput(args)
	assert(args, "You must provide an argument table when creating UpdateMLModelInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["MLModelId"] = args["MLModelId"],
		["ScoreThreshold"] = args["ScoreThreshold"],
		["MLModelName"] = args["MLModelName"],
	}
	asserts.AssertUpdateMLModelInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DataSourceId [EntityId] <p>A user-supplied ID that uniquely identifies the <code>DataSource</code>.</p>
-- Required key: DataSourceId
-- @return DeleteDataSourceInput structure as a key-value pair table
function M.DeleteDataSourceInput(args)
	assert(args, "You must provide an argument table when creating DeleteDataSourceInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DataSourceId"] = args["DataSourceId"],
	}
	asserts.AssertDeleteDataSourceInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EvaluationId [EntityId] <p>A user-supplied ID that uniquely identifies the <code>Evaluation</code> to delete.</p>
-- Required key: EvaluationId
-- @return DeleteEvaluationInput structure as a key-value pair table
function M.DeleteEvaluationInput(args)
	assert(args, "You must provide an argument table when creating DeleteEvaluationInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EvaluationId"] = args["EvaluationId"],
	}
	asserts.AssertDeleteEvaluationInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DataSourceId [EntityId] <p>The ID assigned to the <code>DataSource</code> at creation.</p>
-- * Verbose [Verbose] <p>Specifies whether the <code>GetDataSource</code> operation should return <code>DataSourceSchema</code>.</p> <p>If true, <code>DataSourceSchema</code> is returned.</p> <p>If false, <code>DataSourceSchema</code> is not returned.</p>
-- Required key: DataSourceId
-- @return GetDataSourceInput structure as a key-value pair table
function M.GetDataSourceInput(args)
	assert(args, "You must provide an argument table when creating GetDataSourceInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DataSourceId"] = args["DataSourceId"],
		["Verbose"] = args["Verbose"],
	}
	asserts.AssertGetDataSourceInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * BatchPredictionId [EntityId] <p>A user-supplied ID that uniquely identifies the <code>BatchPrediction</code>. This value should be identical to the value of the <code>BatchPredictionID</code> in the request.</p>
-- @return DeleteBatchPredictionOutput structure as a key-value pair table
function M.DeleteBatchPredictionOutput(args)
	assert(args, "You must provide an argument table when creating DeleteBatchPredictionOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["BatchPredictionId"] = args["BatchPredictionId"],
	}
	asserts.AssertDeleteBatchPredictionOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DataSourceId [EntityId] <p>A user-supplied ID that uniquely identifies the <code>DataSource</code>. This value should be identical to the value of the <code>DataSourceID</code> in the request.</p>
-- @return DeleteDataSourceOutput structure as a key-value pair table
function M.DeleteDataSourceOutput(args)
	assert(args, "You must provide an argument table when creating DeleteDataSourceOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DataSourceId"] = args["DataSourceId"],
	}
	asserts.AssertDeleteDataSourceOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MLModelId [EntityId] <p>A user-supplied ID that uniquely identifies the <code>MLModel</code>.</p>
-- Required key: MLModelId
-- @return DeleteMLModelInput structure as a key-value pair table
function M.DeleteMLModelInput(args)
	assert(args, "You must provide an argument table when creating DeleteMLModelInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["MLModelId"] = args["MLModelId"],
	}
	asserts.AssertDeleteMLModelInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] 
-- * code [ErrorCode] 
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
		["code"] = args["code"],
	}
	asserts.AssertResourceNotFoundException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Parameters [TrainingParameters] <p>A list of the training parameters in the <code>MLModel</code>. The list is implemented as a map of key-value pairs.</p> <p>The following is the current set of training parameters: </p> <ul> <li> <p><code>sgd.maxMLModelSizeInBytes</code> - The maximum allowed size of the model. Depending on the input data, the size of the model might affect its performance.</p> <p> The value is an integer that ranges from <code>100000</code> to <code>2147483648</code>. The default value is <code>33554432</code>.</p> </li> <li><p><code>sgd.maxPasses</code> - The number of times that the training process traverses the observations to build the <code>MLModel</code>. The value is an integer that ranges from <code>1</code> to <code>10000</code>. The default value is <code>10</code>.</p></li> <li> <p><code>sgd.shuffleType</code> - Whether Amazon ML shuffles the training data. Shuffling the data improves a model's ability to find the optimal solution for a variety of data types. The valid values are <code>auto</code> and <code>none</code>. The default value is <code>none</code>. We <?oxy_insert_start author="laurama" timestamp="20160329T131121-0700">strongly recommend that you shuffle your data.<?oxy_insert_end></p> </li> <li> <p><code>sgd.l1RegularizationAmount</code> - The coefficient regularization L1 norm. It controls overfitting the data by penalizing large coefficients. This tends to drive coefficients to zero, resulting in a sparse feature set. If you use this parameter, start by specifying a small value, such as <code>1.0E-08</code>.</p> <p>The value is a double that ranges from <code>0</code> to <code>MAX_DOUBLE</code>. The default is to not use L1 normalization. This parameter can't be used when <code>L2</code> is specified. Use this parameter sparingly.</p> </li> <li> <p><code>sgd.l2RegularizationAmount</code> - The coefficient regularization L2 norm. It controls overfitting the data by penalizing large coefficients. This tends to drive coefficients to small, nonzero values. If you use this parameter, start by specifying a small value, such as <code>1.0E-08</code>.</p> <p>The value is a double that ranges from <code>0</code> to <code>MAX_DOUBLE</code>. The default is to not use L2 normalization. This parameter can't be used when <code>L1</code> is specified. Use this parameter sparingly.</p> </li> </ul>
-- * MLModelType [MLModelType] <p>The category of supervised learning that this <code>MLModel</code> will address. Choose from the following types:</p> <ul> <li>Choose <code>REGRESSION</code> if the <code>MLModel</code> will be used to predict a numeric value.</li> <li>Choose <code>BINARY</code> if the <code>MLModel</code> result has two possible values.</li> <li>Choose <code>MULTICLASS</code> if the <code>MLModel</code> result has a limited number of values. </li> </ul> <p> For more information, see the <a href="http://docs.aws.amazon.com/machine-learning/latest/dg">Amazon Machine Learning Developer Guide</a>.</p>
-- * Recipe [Recipe] <p>The data recipe for creating the <code>MLModel</code>. You must specify either the recipe or its URI. If you don't specify a recipe or its URI, Amazon ML creates a default.</p>
-- * MLModelId [EntityId] <p>A user-supplied ID that uniquely identifies the <code>MLModel</code>.</p>
-- * MLModelName [EntityName] <p>A user-supplied name or description of the <code>MLModel</code>.</p>
-- * RecipeUri [S3Url] <p>The Amazon Simple Storage Service (Amazon S3) location and file name that contains the <code>MLModel</code> recipe. You must specify either the recipe or its URI. If you don't specify a recipe or its URI, Amazon ML creates a default.</p>
-- * TrainingDataSourceId [EntityId] <p>The <code>DataSource</code> that points to the training data.</p>
-- Required key: MLModelId
-- Required key: MLModelType
-- Required key: TrainingDataSourceId
-- @return CreateMLModelInput structure as a key-value pair table
function M.CreateMLModelInput(args)
	assert(args, "You must provide an argument table when creating CreateMLModelInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Parameters"] = args["Parameters"],
		["MLModelType"] = args["MLModelType"],
		["Recipe"] = args["Recipe"],
		["MLModelId"] = args["MLModelId"],
		["MLModelName"] = args["MLModelName"],
		["RecipeUri"] = args["RecipeUri"],
		["TrainingDataSourceId"] = args["TrainingDataSourceId"],
	}
	asserts.AssertCreateMLModelInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EvaluationId [EntityId] <p>The user-supplied ID that uniquely identifies the <code>Evaluation</code>. This value should be identical to the value of the <code>EvaluationId</code> in the request.</p>
-- @return CreateEvaluationOutput structure as a key-value pair table
function M.CreateEvaluationOutput(args)
	assert(args, "You must provide an argument table when creating CreateEvaluationOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EvaluationId"] = args["EvaluationId"],
	}
	asserts.AssertCreateEvaluationOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EvaluationId [EntityId] <p>The ID of the <code>Evaluation</code> to retrieve. The evaluation of each <code>MLModel</code> is recorded and cataloged. The ID provides the means to access the information. </p>
-- Required key: EvaluationId
-- @return GetEvaluationInput structure as a key-value pair table
function M.GetEvaluationInput(args)
	assert(args, "You must provide an argument table when creating GetEvaluationInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EvaluationId"] = args["EvaluationId"],
	}
	asserts.AssertGetEvaluationInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceType [TaggableResourceType] <p>The type of the ML object to tag. </p>
-- * ResourceId [EntityId] <p>The ID of the ML object to tag. For example, <code>exampleModelId</code>.</p>
-- * Tags [TagList] <p>The key-value pairs to use to create tags. If you specify a key without specifying a value, Amazon ML creates a tag with the specified key and a value of null.</p>
-- Required key: Tags
-- Required key: ResourceId
-- Required key: ResourceType
-- @return AddTagsInput structure as a key-value pair table
function M.AddTagsInput(args)
	assert(args, "You must provide an argument table when creating AddTagsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ResourceType"] = args["ResourceType"],
		["ResourceId"] = args["ResourceId"],
		["Tags"] = args["Tags"],
	}
	asserts.AssertAddTagsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DataSourceId [EntityId] <p>A user-supplied ID that uniquely identifies the datasource. This value should be identical to the value of the <code>DataSourceID</code> in the request. </p>
-- @return CreateDataSourceFromRDSOutput structure as a key-value pair table
function M.CreateDataSourceFromRDSOutput(args)
	assert(args, "You must provide an argument table when creating CreateDataSourceFromRDSOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DataSourceId"] = args["DataSourceId"],
	}
	asserts.AssertCreateDataSourceFromRDSOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MLModelId [EntityId] <p>A user-supplied ID that uniquely identifies the <code>MLModel</code>. This value should be identical to the value of the <code>MLModelId</code> in the request.</p>
-- * RealtimeEndpointInfo [RealtimeEndpointInfo] <p>The endpoint information of the <code>MLModel</code> </p>
-- @return CreateRealtimeEndpointOutput structure as a key-value pair table
function M.CreateRealtimeEndpointOutput(args)
	assert(args, "You must provide an argument table when creating CreateRealtimeEndpointOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["MLModelId"] = args["MLModelId"],
		["RealtimeEndpointInfo"] = args["RealtimeEndpointInfo"],
	}
	asserts.AssertCreateRealtimeEndpointOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InstanceIdentifier [RDSInstanceIdentifier] <p>The ID of an RDS DB instance.</p>
-- * DatabaseName [RDSDatabaseName] 
-- Required key: InstanceIdentifier
-- Required key: DatabaseName
-- @return RDSDatabase structure as a key-value pair table
function M.RDSDatabase(args)
	assert(args, "You must provide an argument table when creating RDSDatabase")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["InstanceIdentifier"] = args["InstanceIdentifier"],
		["DatabaseName"] = args["DatabaseName"],
	}
	asserts.AssertRDSDatabase(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GT [ComparatorValue] <p>The greater than operator. The <code>MLModel</code> results will have <code>FilterVariable</code> values that are greater than the value specified with <code>GT</code>.</p>
-- * FilterVariable [MLModelFilterVariable] <p>Use one of the following variables to filter a list of <code>MLModel</code>:</p> <ul> <li> <code>CreatedAt</code> - Sets the search criteria to <code>MLModel</code> creation date.</li> <li> <code>Status</code> - Sets the search criteria to <code>MLModel</code> status.</li> <li> <code>Name</code> - Sets the search criteria to the contents of <code>MLModel</code><b> </b> <code>Name</code>.</li> <li> <code>IAMUser</code> - Sets the search criteria to the user account that invoked the <code>MLModel</code> creation.</li> <li> <code>TrainingDataSourceId</code> - Sets the search criteria to the <code>DataSource</code> used to train one or more <code>MLModel</code>.</li> <li> <code>RealtimeEndpointStatus</code> - Sets the search criteria to the <code>MLModel</code> real-time endpoint status.</li> <li> <code>MLModelType</code> - Sets the search criteria to <code>MLModel</code> type: binary, regression, or multi-class.</li> <li> <code>Algorithm</code> - Sets the search criteria to the algorithm that the <code>MLModel</code> uses.</li> <li> <code>TrainingDataURI</code> - Sets the search criteria to the data file(s) used in training a <code>MLModel</code>. The URL can identify either a file or an Amazon Simple Storage Service (Amazon S3) bucket or directory.</li> </ul>
-- * GE [ComparatorValue] <p>The greater than or equal to operator. The <code>MLModel</code> results will have <code>FilterVariable</code> values that are greater than or equal to the value specified with <code>GE</code>. </p>
-- * NE [ComparatorValue] <p>The not equal to operator. The <code>MLModel</code> results will have <code>FilterVariable</code> values not equal to the value specified with <code>NE</code>.</p>
-- * LT [ComparatorValue] <p>The less than operator. The <code>MLModel</code> results will have <code>FilterVariable</code> values that are less than the value specified with <code>LT</code>.</p>
-- * LE [ComparatorValue] <p>The less than or equal to operator. The <code>MLModel</code> results will have <code>FilterVariable</code> values that are less than or equal to the value specified with <code>LE</code>.</p>
-- * Limit [PageLimit] <p>The number of pages of information to include in the result. The range of acceptable values is <code>1</code> through <code>100</code>. The default value is <code>100</code>.</p>
-- * SortOrder [SortOrder] <p>A two-value parameter that determines the sequence of the resulting list of <code>MLModel</code>.</p> <ul> <li> <code>asc</code> - Arranges the list in ascending order (A-Z, 0-9).</li> <li> <code>dsc</code> - Arranges the list in descending order (Z-A, 9-0).</li> </ul> <p>Results are sorted by <code>FilterVariable</code>.</p>
-- * NextToken [StringType] <p>The ID of the page in the paginated results.</p>
-- * EQ [ComparatorValue] <p>The equal to operator. The <code>MLModel</code> results will have <code>FilterVariable</code> values that exactly match the value specified with <code>EQ</code>.</p>
-- * Prefix [ComparatorValue] <p>A string that is found at the beginning of a variable, such as <code>Name</code> or <code>Id</code>.</p> <p>For example, an <code>MLModel</code> could have the <code>Name</code> <code>2014-09-09-HolidayGiftMailer</code>. To search for this <code>MLModel</code>, select <code>Name</code> for the <code>FilterVariable</code> and any of the following strings for the <code>Prefix</code>: </p> <ul> <li><p>2014-09</p></li> <li><p>2014-09-09</p></li> <li><p>2014-09-09-Holiday</p></li> </ul>
-- @return DescribeMLModelsInput structure as a key-value pair table
function M.DescribeMLModelsInput(args)
	assert(args, "You must provide an argument table when creating DescribeMLModelsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GT"] = args["GT"],
		["FilterVariable"] = args["FilterVariable"],
		["GE"] = args["GE"],
		["NE"] = args["NE"],
		["LT"] = args["LT"],
		["LE"] = args["LE"],
		["Limit"] = args["Limit"],
		["SortOrder"] = args["SortOrder"],
		["NextToken"] = args["NextToken"],
		["EQ"] = args["EQ"],
		["Prefix"] = args["Prefix"],
	}
	asserts.AssertDescribeMLModelsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MLModelId [EntityId] <p>A unique identifier of the <code>MLModel</code>.</p>
-- * Record [Record] 
-- * PredictEndpoint [VipURL] 
-- Required key: MLModelId
-- Required key: Record
-- Required key: PredictEndpoint
-- @return PredictInput structure as a key-value pair table
function M.PredictInput(args)
	assert(args, "You must provide an argument table when creating PredictInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["MLModelId"] = args["MLModelId"],
		["Record"] = args["Record"],
		["PredictEndpoint"] = args["PredictEndpoint"],
	}
	asserts.AssertPredictInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DataSourceName [EntityName] <p>A new user-supplied name or description of the <code>DataSource</code> that will replace the current description. </p>
-- * DataSourceId [EntityId] <p>The ID assigned to the <code>DataSource</code> during creation.</p>
-- Required key: DataSourceId
-- Required key: DataSourceName
-- @return UpdateDataSourceInput structure as a key-value pair table
function M.UpdateDataSourceInput(args)
	assert(args, "You must provide an argument table when creating UpdateDataSourceInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DataSourceName"] = args["DataSourceName"],
		["DataSourceId"] = args["DataSourceId"],
	}
	asserts.AssertUpdateDataSourceInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EvaluationDataSourceId [EntityId] <p>The <code>DataSource</code> used for this evaluation.</p>
-- * Status [EntityStatus] <p>The status of the evaluation. This element can have one of the following values:</p> <ul> <li> <code>PENDING</code> - Amazon Machine Language (Amazon ML) submitted a request to evaluate an <code>MLModel</code>.</li> <li> <code>INPROGRESS</code> - The evaluation is underway.</li> <li> <code>FAILED</code> - The request to evaluate an <code>MLModel</code> did not run to completion. It is not usable.</li> <li> <code>COMPLETED</code> - The evaluation process completed successfully.</li> <li> <code>DELETED</code> - The <code>Evaluation</code> is marked as deleted. It is not usable.</li> </ul>
-- * ComputeTime [LongType] <p>The approximate CPU time in milliseconds that Amazon Machine Learning spent processing the <code>Evaluation</code>, normalized and scaled on computation resources. <code>ComputeTime</code> is only available if the <code>Evaluation</code> is in the <code>COMPLETED</code> state.</p>
-- * Name [EntityName] <p>A user-supplied name or description of the <code>Evaluation</code>. </p>
-- * InputDataLocationS3 [S3Url] <p>The location of the data file or directory in Amazon Simple Storage Service (Amazon S3).</p>
-- * EvaluationId [EntityId] <p>The evaluation ID which is same as the <code>EvaluationId</code> in the request.</p>
-- * CreatedByIamUser [AwsUserArn] <p>The AWS user account that invoked the evaluation. The account type can be either an AWS root account or an AWS Identity and Access Management (IAM) user account.</p>
-- * MLModelId [EntityId] <p>The ID of the <code>MLModel</code> that was the focus of the evaluation.</p>
-- * Message [Message] <p>A description of the most recent details about evaluating the <code>MLModel</code>.</p>
-- * LastUpdatedAt [EpochTime] <p>The time of the most recent edit to the <code>Evaluation</code>. The time is expressed in epoch time.</p>
-- * StartedAt [EpochTime] <p>The epoch time when Amazon Machine Learning marked the <code>Evaluation</code> as <code>INPROGRESS</code>. <code>StartedAt</code> isn't available if the <code>Evaluation</code> is in the <code>PENDING</code> state.</p>
-- * LogUri [PresignedS3Url] <p>A link to the file that contains logs of the <code>CreateEvaluation</code> operation.</p>
-- * PerformanceMetrics [PerformanceMetrics] <p>Measurements of how well the <code>MLModel</code> performed using observations referenced by the <code>DataSource</code>. One of the following metric is returned based on the type of the <code>MLModel</code>: </p> <ul> <li> <p>BinaryAUC: A binary <code>MLModel</code> uses the Area Under the Curve (AUC) technique to measure performance. </p> </li> <li> <p>RegressionRMSE: A regression <code>MLModel</code> uses the Root Mean Square Error (RMSE) technique to measure performance. RMSE measures the difference between predicted and actual values for a single variable.</p> </li> <li> <p>MulticlassAvgFScore: A multiclass <code>MLModel</code> uses the F1 score technique to measure performance. </p> </li> </ul> <p> For more information about performance metrics, please see the <a href="http://docs.aws.amazon.com/machine-learning/latest/dg">Amazon Machine Learning Developer Guide</a>. </p>
-- * CreatedAt [EpochTime] <p>The time that the <code>Evaluation</code> was created. The time is expressed in epoch time.</p>
-- * FinishedAt [EpochTime] <p>The epoch time when Amazon Machine Learning marked the <code>Evaluation</code> as <code>COMPLETED</code> or <code>FAILED</code>. <code>FinishedAt</code> is only available when the <code>Evaluation</code> is in the <code>COMPLETED</code> or <code>FAILED</code> state.</p>
-- @return GetEvaluationOutput structure as a key-value pair table
function M.GetEvaluationOutput(args)
	assert(args, "You must provide an argument table when creating GetEvaluationOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EvaluationDataSourceId"] = args["EvaluationDataSourceId"],
		["Status"] = args["Status"],
		["ComputeTime"] = args["ComputeTime"],
		["Name"] = args["Name"],
		["InputDataLocationS3"] = args["InputDataLocationS3"],
		["EvaluationId"] = args["EvaluationId"],
		["CreatedByIamUser"] = args["CreatedByIamUser"],
		["MLModelId"] = args["MLModelId"],
		["Message"] = args["Message"],
		["LastUpdatedAt"] = args["LastUpdatedAt"],
		["StartedAt"] = args["StartedAt"],
		["LogUri"] = args["LogUri"],
		["PerformanceMetrics"] = args["PerformanceMetrics"],
		["CreatedAt"] = args["CreatedAt"],
		["FinishedAt"] = args["FinishedAt"],
	}
	asserts.AssertGetEvaluationOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ServiceRole [EDPServiceRole] <p>The role (DataPipelineDefaultRole) assumed by the Data Pipeline service to monitor the progress of the copy task from Amazon RDS to Amazon S3. For more information, see <a href="http://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-iam-roles.html">Role templates</a> for data pipelines.</p>
-- * DataPipelineId [EDPPipelineId] <p>The ID of the Data Pipeline instance that is used to carry to copy data from Amazon RDS to Amazon S3. You can use the ID to find details about the instance in the Data Pipeline console.</p>
-- * ResourceRole [EDPResourceRole] <p>The role (DataPipelineDefaultResourceRole) assumed by an Amazon EC2 instance to carry out the copy task from Amazon RDS to Amazon S3. For more information, see <a href="http://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-iam-roles.html">Role templates</a> for data pipelines.</p>
-- * DatabaseUserName [RDSDatabaseUsername] 
-- * Database [RDSDatabase] <p>The database details required to connect to an Amazon RDS.</p>
-- * SelectSqlQuery [RDSSelectSqlQuery] <p>The SQL query that is supplied during <a>CreateDataSourceFromRDS</a>. Returns only if <code>Verbose</code> is true in <code>GetDataSourceInput</code>. </p>
-- @return RDSMetadata structure as a key-value pair table
function M.RDSMetadata(args)
	assert(args, "You must provide an argument table when creating RDSMetadata")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ServiceRole"] = args["ServiceRole"],
		["DataPipelineId"] = args["DataPipelineId"],
		["ResourceRole"] = args["ResourceRole"],
		["DatabaseUserName"] = args["DatabaseUserName"],
		["Database"] = args["Database"],
		["SelectSqlQuery"] = args["SelectSqlQuery"],
	}
	asserts.AssertRDSMetadata(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceType [TaggableResourceType] <p>The type of the tagged ML object.</p>
-- * ResourceId [EntityId] <p>The ID of the tagged ML object.</p>
-- * Tags [TagList] <p>A list of tags associated with the ML object.</p>
-- @return DescribeTagsOutput structure as a key-value pair table
function M.DescribeTagsOutput(args)
	assert(args, "You must provide an argument table when creating DescribeTagsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ResourceType"] = args["ResourceType"],
		["ResourceId"] = args["ResourceId"],
		["Tags"] = args["Tags"],
	}
	asserts.AssertDescribeTagsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Username [RDSDatabaseUsername] 
-- * Password [RDSDatabasePassword] 
-- Required key: Username
-- Required key: Password
-- @return RDSDatabaseCredentials structure as a key-value pair table
function M.RDSDatabaseCredentials(args)
	assert(args, "You must provide an argument table when creating RDSDatabaseCredentials")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Username"] = args["Username"],
		["Password"] = args["Password"],
	}
	asserts.AssertRDSDatabaseCredentials(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DataSourceId [EntityId] <p>A user-supplied ID that uniquely identifies the <code>DataSource</code>. This value should be identical to the value of the <code>DataSourceID</code> in the request. </p>
-- @return CreateDataSourceFromS3Output structure as a key-value pair table
function M.CreateDataSourceFromS3Output(args)
	assert(args, "You must provide an argument table when creating CreateDataSourceFromS3Output")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DataSourceId"] = args["DataSourceId"],
	}
	asserts.AssertCreateDataSourceFromS3Output(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [EntityStatus] <p>The status of the <code>BatchPrediction</code>, which can be one of the following values:</p> <ul> <li> <code>PENDING</code> - Amazon Machine Learning (Amazon ML) submitted a request to generate batch predictions.</li> <li> <code>INPROGRESS</code> - The batch predictions are in progress.</li> <li> <code>FAILED</code> - The request to perform a batch prediction did not run to completion. It is not usable.</li> <li> <code>COMPLETED</code> - The batch prediction process completed successfully.</li> <li> <code>DELETED</code> - The <code>BatchPrediction</code> is marked as deleted. It is not usable.</li> </ul>
-- * ComputeTime [LongType] <p>The approximate CPU time in milliseconds that Amazon Machine Learning spent processing the <code>BatchPrediction</code>, normalized and scaled on computation resources. <code>ComputeTime</code> is only available if the <code>BatchPrediction</code> is in the <code>COMPLETED</code> state.</p>
-- * Name [EntityName] <p>A user-supplied name or description of the <code>BatchPrediction</code>.</p>
-- * InputDataLocationS3 [S3Url] <p>The location of the data file or directory in Amazon Simple Storage Service (Amazon S3).</p>
-- * InvalidRecordCount [LongType] <p>The number of invalid records that Amazon Machine Learning saw while processing the <code>BatchPrediction</code>.</p>
-- * CreatedByIamUser [AwsUserArn] <p>The AWS user account that invoked the <code>BatchPrediction</code>. The account type can be either an AWS root account or an AWS Identity and Access Management (IAM) user account.</p>
-- * MLModelId [EntityId] <p>The ID of the <code>MLModel</code> that generated predictions for the <code>BatchPrediction</code> request.</p>
-- * TotalRecordCount [LongType] <p>The number of total records that Amazon Machine Learning saw while processing the <code>BatchPrediction</code>.</p>
-- * LastUpdatedAt [EpochTime] <p>The time of the most recent edit to <code>BatchPrediction</code>. The time is expressed in epoch time.</p>
-- * BatchPredictionDataSourceId [EntityId] <p>The ID of the <code>DataSource</code> that was used to create the <code>BatchPrediction</code>. </p>
-- * OutputUri [S3Url] <p>The location of an Amazon S3 bucket or directory to receive the operation results.</p>
-- * StartedAt [EpochTime] <p>The epoch time when Amazon Machine Learning marked the <code>BatchPrediction</code> as <code>INPROGRESS</code>. <code>StartedAt</code> isn't available if the <code>BatchPrediction</code> is in the <code>PENDING</code> state.</p>
-- * BatchPredictionId [EntityId] <p>An ID assigned to the <code>BatchPrediction</code> at creation. This value should be identical to the value of the <code>BatchPredictionID</code> in the request.</p>
-- * LogUri [PresignedS3Url] <p>A link to the file that contains logs of the <code>CreateBatchPrediction</code> operation.</p>
-- * Message [Message] <p>A description of the most recent details about processing the batch prediction request.</p>
-- * CreatedAt [EpochTime] <p>The time when the <code>BatchPrediction</code> was created. The time is expressed in epoch time.</p>
-- * FinishedAt [EpochTime] <p>The epoch time when Amazon Machine Learning marked the <code>BatchPrediction</code> as <code>COMPLETED</code> or <code>FAILED</code>. <code>FinishedAt</code> is only available when the <code>BatchPrediction</code> is in the <code>COMPLETED</code> or <code>FAILED</code> state.</p>
-- @return GetBatchPredictionOutput structure as a key-value pair table
function M.GetBatchPredictionOutput(args)
	assert(args, "You must provide an argument table when creating GetBatchPredictionOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["ComputeTime"] = args["ComputeTime"],
		["Name"] = args["Name"],
		["InputDataLocationS3"] = args["InputDataLocationS3"],
		["InvalidRecordCount"] = args["InvalidRecordCount"],
		["CreatedByIamUser"] = args["CreatedByIamUser"],
		["MLModelId"] = args["MLModelId"],
		["TotalRecordCount"] = args["TotalRecordCount"],
		["LastUpdatedAt"] = args["LastUpdatedAt"],
		["BatchPredictionDataSourceId"] = args["BatchPredictionDataSourceId"],
		["OutputUri"] = args["OutputUri"],
		["StartedAt"] = args["StartedAt"],
		["BatchPredictionId"] = args["BatchPredictionId"],
		["LogUri"] = args["LogUri"],
		["Message"] = args["Message"],
		["CreatedAt"] = args["CreatedAt"],
		["FinishedAt"] = args["FinishedAt"],
	}
	asserts.AssertGetBatchPredictionOutput(all_args)
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
	if struct["Value"] then asserts.AssertTagValue(struct["Value"]) end
	if struct["Key"] then asserts.AssertTagKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(keys.Tag[k], "Tag contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Tag
-- <p>A custom key-value pair associated with an ML object, such as an ML model.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Value [TagValue] <p>An optional string, typically used to describe or define the tag. Valid characters include Unicode letters, digits, white space, _, ., /, =, +, -, %, and @.</p>
-- * Key [TagKey] <p>A unique identifier for the tag. Valid characters include Unicode letters, digits, white space, _, ., /, =, +, -, %, and @.</p>
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Prediction [Prediction] 
-- @return PredictOutput structure as a key-value pair table
function M.PredictOutput(args)
	assert(args, "You must provide an argument table when creating PredictOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Prediction"] = args["Prediction"],
	}
	asserts.AssertPredictOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GT [ComparatorValue] <p>The greater than operator. The <code>DataSource</code> results will have <code>FilterVariable</code> values that are greater than the value specified with <code>GT</code>.</p>
-- * FilterVariable [DataSourceFilterVariable] <p>Use one of the following variables to filter a list of <code>DataSource</code>:</p> <ul> <li> <code>CreatedAt</code> - Sets the search criteria to <code>DataSource</code> creation dates.</li> <li> <code>Status</code> - Sets the search criteria to <code>DataSource</code> statuses.</li> <li> <code>Name</code> - Sets the search criteria to the contents of <code>DataSource</code> <b> </b> <code>Name</code>.</li> <li> <code>DataUri</code> - Sets the search criteria to the URI of data files used to create the <code>DataSource</code>. The URI can identify either a file or an Amazon Simple Storage Service (Amazon S3) bucket or directory.</li> <li> <code>IAMUser</code> - Sets the search criteria to the user account that invoked the <code>DataSource</code> creation.</li> </ul>
-- * GE [ComparatorValue] <p>The greater than or equal to operator. The <code>DataSource</code> results will have <code>FilterVariable</code> values that are greater than or equal to the value specified with <code>GE</code>. </p>
-- * NE [ComparatorValue] <p>The not equal to operator. The <code>DataSource</code> results will have <code>FilterVariable</code> values not equal to the value specified with <code>NE</code>.</p>
-- * LT [ComparatorValue] <p>The less than operator. The <code>DataSource</code> results will have <code>FilterVariable</code> values that are less than the value specified with <code>LT</code>.</p>
-- * LE [ComparatorValue] <p>The less than or equal to operator. The <code>DataSource</code> results will have <code>FilterVariable</code> values that are less than or equal to the value specified with <code>LE</code>.</p>
-- * Limit [PageLimit] <p> The maximum number of <code>DataSource</code> to include in the result.</p>
-- * SortOrder [SortOrder] <p>A two-value parameter that determines the sequence of the resulting list of <code>DataSource</code>.</p> <ul> <li> <code>asc</code> - Arranges the list in ascending order (A-Z, 0-9).</li> <li> <code>dsc</code> - Arranges the list in descending order (Z-A, 9-0).</li> </ul> <p>Results are sorted by <code>FilterVariable</code>.</p>
-- * NextToken [StringType] <p>The ID of the page in the paginated results.</p>
-- * EQ [ComparatorValue] <p>The equal to operator. The <code>DataSource</code> results will have <code>FilterVariable</code> values that exactly match the value specified with <code>EQ</code>.</p>
-- * Prefix [ComparatorValue] <p>A string that is found at the beginning of a variable, such as <code>Name</code> or <code>Id</code>.</p> <p>For example, a <code>DataSource</code> could have the <code>Name</code> <code>2014-09-09-HolidayGiftMailer</code>. To search for this <code>DataSource</code>, select <code>Name</code> for the <code>FilterVariable</code> and any of the following strings for the <code>Prefix</code>: </p> <ul> <li><p>2014-09</p></li> <li><p>2014-09-09</p></li> <li><p>2014-09-09-Holiday</p></li> </ul>
-- @return DescribeDataSourcesInput structure as a key-value pair table
function M.DescribeDataSourcesInput(args)
	assert(args, "You must provide an argument table when creating DescribeDataSourcesInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GT"] = args["GT"],
		["FilterVariable"] = args["FilterVariable"],
		["GE"] = args["GE"],
		["NE"] = args["NE"],
		["LT"] = args["LT"],
		["LE"] = args["LE"],
		["Limit"] = args["Limit"],
		["SortOrder"] = args["SortOrder"],
		["NextToken"] = args["NextToken"],
		["EQ"] = args["EQ"],
		["Prefix"] = args["Prefix"],
	}
	asserts.AssertDescribeDataSourcesInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * predictedLabel [Label] <p>The prediction label for either a <code>BINARY</code> or <code>MULTICLASS</code> <code>MLModel</code>.</p>
-- * predictedValue [floatLabel] The prediction value for <code>REGRESSION</code> <code>MLModel</code>.
-- * predictedScores [ScoreValuePerLabelMap] 
-- * details [DetailsMap] 
-- @return Prediction structure as a key-value pair table
function M.Prediction(args)
	assert(args, "You must provide an argument table when creating Prediction")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["predictedLabel"] = args["predictedLabel"],
		["predictedValue"] = args["predictedValue"],
		["predictedScores"] = args["predictedScores"],
		["details"] = args["details"],
	}
	asserts.AssertPrediction(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] 
-- @return PredictorNotMountedException structure as a key-value pair table
function M.PredictorNotMountedException(args)
	assert(args, "You must provide an argument table when creating PredictorNotMountedException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertPredictorNotMountedException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DataSourceName [EntityName] <p>A user-supplied name or description of the <code>DataSource</code>. </p>
-- * RoleARN [RoleARN] <p>A fully specified role Amazon Resource Name (ARN). Amazon ML assumes the role on behalf of the user to create the following: </p> <p> <ul> <li><p>A security group to allow Amazon ML to execute the <code>SelectSqlQuery</code> query on an Amazon Redshift cluster</p></li> <li><p>An Amazon S3 bucket policy to grant Amazon ML read/write permissions on the <code>S3StagingLocation</code></p></li> </ul> </p>
-- * ComputeStatistics [ComputeStatistics] <p>The compute statistics for a <code>DataSource</code>. The statistics are generated from the observation data referenced by a <code>DataSource</code>. Amazon ML uses the statistics internally during <code>MLModel</code> training. This parameter must be set to <code>true</code> if the <code>DataSource</code> needs to be used for <code>MLModel</code> training.</p>
-- * DataSourceId [EntityId] <p>A user-supplied ID that uniquely identifies the <code>DataSource</code>.</p>
-- * DataSpec [RedshiftDataSpec] <p>The data specification of an Amazon Redshift <code>DataSource</code>:</p> <ul> <li><p>DatabaseInformation - <ul> <li> <code>DatabaseName</code> - The name of the Amazon Redshift database. </li> <li> <code> ClusterIdentifier</code> - The unique ID for the Amazon Redshift cluster.</li> </ul></p></li> <li><p>DatabaseCredentials - The AWS Identity and Access Management (IAM) credentials that are used to connect to the Amazon Redshift database.</p></li> <li><p>SelectSqlQuery - The query that is used to retrieve the observation data for the <code>Datasource</code>.</p></li> <li><p>S3StagingLocation - The Amazon Simple Storage Service (Amazon S3) location for staging Amazon Redshift data. The data retrieved from Amazon Redshift using the <code>SelectSqlQuery</code> query is stored in this location.</p></li> <li><p>DataSchemaUri - The Amazon S3 location of the <code>DataSchema</code>.</p></li> <li><p>DataSchema - A JSON string representing the schema. This is not required if <code>DataSchemaUri</code> is specified. </p></li> <li> <p>DataRearrangement - A JSON string that represents the splitting and rearrangement requirements for the <code>DataSource</code>.</p> <p> Sample - <code> "{\"splitting\":{\"percentBegin\":10,\"percentEnd\":60}}"</code> </p> </li> </ul>
-- Required key: DataSourceId
-- Required key: DataSpec
-- Required key: RoleARN
-- @return CreateDataSourceFromRedshiftInput structure as a key-value pair table
function M.CreateDataSourceFromRedshiftInput(args)
	assert(args, "You must provide an argument table when creating CreateDataSourceFromRedshiftInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DataSourceName"] = args["DataSourceName"],
		["RoleARN"] = args["RoleARN"],
		["ComputeStatistics"] = args["ComputeStatistics"],
		["DataSourceId"] = args["DataSourceId"],
		["DataSpec"] = args["DataSpec"],
	}
	asserts.AssertCreateDataSourceFromRedshiftInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] 
-- @return TagLimitExceededException structure as a key-value pair table
function M.TagLimitExceededException(args)
	assert(args, "You must provide an argument table when creating TagLimitExceededException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertTagLimitExceededException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceType [TaggableResourceType] <p>The type of the ML object from which tags were deleted.</p>
-- * ResourceId [EntityId] <p>The ID of the ML object from which tags were deleted.</p>
-- @return DeleteTagsOutput structure as a key-value pair table
function M.DeleteTagsOutput(args)
	assert(args, "You must provide an argument table when creating DeleteTagsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ResourceType"] = args["ResourceType"],
		["ResourceId"] = args["ResourceId"],
	}
	asserts.AssertDeleteTagsOutput(all_args)
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


local content_type = require "aws-sdk.core.content_type"
local request_headers = require "aws-sdk.core.request_headers"
local request_handlers = require "aws-sdk.core.request_handlers"

local settings = {}


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
--- Call DeleteTags asynchronously, invoking a callback when done
-- @param DeleteTagsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteTagsAsync(DeleteTagsInput, cb)
	assert(DeleteTagsInput, "You must provide a DeleteTagsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonML_20141212.DeleteTags",
	}
	for header,value in pairs(DeleteTagsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteTagsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteTags synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteTagsInput
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteTagsSync(DeleteTagsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteTagsAsync(DeleteTagsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateBatchPrediction asynchronously, invoking a callback when done
-- @param UpdateBatchPredictionInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateBatchPredictionAsync(UpdateBatchPredictionInput, cb)
	assert(UpdateBatchPredictionInput, "You must provide a UpdateBatchPredictionInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonML_20141212.UpdateBatchPrediction",
	}
	for header,value in pairs(UpdateBatchPredictionInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateBatchPredictionInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateBatchPrediction synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateBatchPredictionInput
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateBatchPredictionSync(UpdateBatchPredictionInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateBatchPredictionAsync(UpdateBatchPredictionInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetEvaluation asynchronously, invoking a callback when done
-- @param GetEvaluationInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetEvaluationAsync(GetEvaluationInput, cb)
	assert(GetEvaluationInput, "You must provide a GetEvaluationInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonML_20141212.GetEvaluation",
	}
	for header,value in pairs(GetEvaluationInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetEvaluationInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetEvaluation synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetEvaluationInput
-- @return response
-- @return error_type
-- @return error_message
function M.GetEvaluationSync(GetEvaluationInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetEvaluationAsync(GetEvaluationInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeBatchPredictions asynchronously, invoking a callback when done
-- @param DescribeBatchPredictionsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeBatchPredictionsAsync(DescribeBatchPredictionsInput, cb)
	assert(DescribeBatchPredictionsInput, "You must provide a DescribeBatchPredictionsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonML_20141212.DescribeBatchPredictions",
	}
	for header,value in pairs(DescribeBatchPredictionsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeBatchPredictionsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeBatchPredictions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeBatchPredictionsInput
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeBatchPredictionsSync(DescribeBatchPredictionsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeBatchPredictionsAsync(DescribeBatchPredictionsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateEvaluation asynchronously, invoking a callback when done
-- @param CreateEvaluationInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateEvaluationAsync(CreateEvaluationInput, cb)
	assert(CreateEvaluationInput, "You must provide a CreateEvaluationInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonML_20141212.CreateEvaluation",
	}
	for header,value in pairs(CreateEvaluationInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateEvaluationInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateEvaluation synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateEvaluationInput
-- @return response
-- @return error_type
-- @return error_message
function M.CreateEvaluationSync(CreateEvaluationInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateEvaluationAsync(CreateEvaluationInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeMLModels asynchronously, invoking a callback when done
-- @param DescribeMLModelsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeMLModelsAsync(DescribeMLModelsInput, cb)
	assert(DescribeMLModelsInput, "You must provide a DescribeMLModelsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonML_20141212.DescribeMLModels",
	}
	for header,value in pairs(DescribeMLModelsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeMLModelsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeMLModels synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeMLModelsInput
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeMLModelsSync(DescribeMLModelsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeMLModelsAsync(DescribeMLModelsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteMLModel asynchronously, invoking a callback when done
-- @param DeleteMLModelInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteMLModelAsync(DeleteMLModelInput, cb)
	assert(DeleteMLModelInput, "You must provide a DeleteMLModelInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonML_20141212.DeleteMLModel",
	}
	for header,value in pairs(DeleteMLModelInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteMLModelInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteMLModel synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteMLModelInput
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteMLModelSync(DeleteMLModelInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteMLModelAsync(DeleteMLModelInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateDataSourceFromS3 asynchronously, invoking a callback when done
-- @param CreateDataSourceFromS3Input
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateDataSourceFromS3Async(CreateDataSourceFromS3Input, cb)
	assert(CreateDataSourceFromS3Input, "You must provide a CreateDataSourceFromS3Input")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonML_20141212.CreateDataSourceFromS3",
	}
	for header,value in pairs(CreateDataSourceFromS3Input.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateDataSourceFromS3Input, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateDataSourceFromS3 synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateDataSourceFromS3Input
-- @return response
-- @return error_type
-- @return error_message
function M.CreateDataSourceFromS3Sync(CreateDataSourceFromS3Input, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateDataSourceFromS3Async(CreateDataSourceFromS3Input, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateDataSource asynchronously, invoking a callback when done
-- @param UpdateDataSourceInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateDataSourceAsync(UpdateDataSourceInput, cb)
	assert(UpdateDataSourceInput, "You must provide a UpdateDataSourceInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonML_20141212.UpdateDataSource",
	}
	for header,value in pairs(UpdateDataSourceInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateDataSourceInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateDataSource synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateDataSourceInput
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateDataSourceSync(UpdateDataSourceInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateDataSourceAsync(UpdateDataSourceInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeEvaluations asynchronously, invoking a callback when done
-- @param DescribeEvaluationsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeEvaluationsAsync(DescribeEvaluationsInput, cb)
	assert(DescribeEvaluationsInput, "You must provide a DescribeEvaluationsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonML_20141212.DescribeEvaluations",
	}
	for header,value in pairs(DescribeEvaluationsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeEvaluationsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeEvaluations synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeEvaluationsInput
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeEvaluationsSync(DescribeEvaluationsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeEvaluationsAsync(DescribeEvaluationsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateDataSourceFromRedshift asynchronously, invoking a callback when done
-- @param CreateDataSourceFromRedshiftInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateDataSourceFromRedshiftAsync(CreateDataSourceFromRedshiftInput, cb)
	assert(CreateDataSourceFromRedshiftInput, "You must provide a CreateDataSourceFromRedshiftInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonML_20141212.CreateDataSourceFromRedshift",
	}
	for header,value in pairs(CreateDataSourceFromRedshiftInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateDataSourceFromRedshiftInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateDataSourceFromRedshift synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateDataSourceFromRedshiftInput
-- @return response
-- @return error_type
-- @return error_message
function M.CreateDataSourceFromRedshiftSync(CreateDataSourceFromRedshiftInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateDataSourceFromRedshiftAsync(CreateDataSourceFromRedshiftInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeDataSources asynchronously, invoking a callback when done
-- @param DescribeDataSourcesInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeDataSourcesAsync(DescribeDataSourcesInput, cb)
	assert(DescribeDataSourcesInput, "You must provide a DescribeDataSourcesInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonML_20141212.DescribeDataSources",
	}
	for header,value in pairs(DescribeDataSourcesInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeDataSourcesInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeDataSources synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeDataSourcesInput
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeDataSourcesSync(DescribeDataSourcesInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeDataSourcesAsync(DescribeDataSourcesInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetDataSource asynchronously, invoking a callback when done
-- @param GetDataSourceInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetDataSourceAsync(GetDataSourceInput, cb)
	assert(GetDataSourceInput, "You must provide a GetDataSourceInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonML_20141212.GetDataSource",
	}
	for header,value in pairs(GetDataSourceInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetDataSourceInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetDataSource synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetDataSourceInput
-- @return response
-- @return error_type
-- @return error_message
function M.GetDataSourceSync(GetDataSourceInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetDataSourceAsync(GetDataSourceInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateRealtimeEndpoint asynchronously, invoking a callback when done
-- @param CreateRealtimeEndpointInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateRealtimeEndpointAsync(CreateRealtimeEndpointInput, cb)
	assert(CreateRealtimeEndpointInput, "You must provide a CreateRealtimeEndpointInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonML_20141212.CreateRealtimeEndpoint",
	}
	for header,value in pairs(CreateRealtimeEndpointInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateRealtimeEndpointInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateRealtimeEndpoint synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateRealtimeEndpointInput
-- @return response
-- @return error_type
-- @return error_message
function M.CreateRealtimeEndpointSync(CreateRealtimeEndpointInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateRealtimeEndpointAsync(CreateRealtimeEndpointInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateMLModel asynchronously, invoking a callback when done
-- @param UpdateMLModelInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateMLModelAsync(UpdateMLModelInput, cb)
	assert(UpdateMLModelInput, "You must provide a UpdateMLModelInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonML_20141212.UpdateMLModel",
	}
	for header,value in pairs(UpdateMLModelInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateMLModelInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateMLModel synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateMLModelInput
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateMLModelSync(UpdateMLModelInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateMLModelAsync(UpdateMLModelInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteRealtimeEndpoint asynchronously, invoking a callback when done
-- @param DeleteRealtimeEndpointInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteRealtimeEndpointAsync(DeleteRealtimeEndpointInput, cb)
	assert(DeleteRealtimeEndpointInput, "You must provide a DeleteRealtimeEndpointInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonML_20141212.DeleteRealtimeEndpoint",
	}
	for header,value in pairs(DeleteRealtimeEndpointInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteRealtimeEndpointInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteRealtimeEndpoint synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteRealtimeEndpointInput
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteRealtimeEndpointSync(DeleteRealtimeEndpointInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteRealtimeEndpointAsync(DeleteRealtimeEndpointInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeTags asynchronously, invoking a callback when done
-- @param DescribeTagsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeTagsAsync(DescribeTagsInput, cb)
	assert(DescribeTagsInput, "You must provide a DescribeTagsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonML_20141212.DescribeTags",
	}
	for header,value in pairs(DescribeTagsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeTagsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeTags synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeTagsInput
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeTagsSync(DescribeTagsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeTagsAsync(DescribeTagsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteDataSource asynchronously, invoking a callback when done
-- @param DeleteDataSourceInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteDataSourceAsync(DeleteDataSourceInput, cb)
	assert(DeleteDataSourceInput, "You must provide a DeleteDataSourceInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonML_20141212.DeleteDataSource",
	}
	for header,value in pairs(DeleteDataSourceInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteDataSourceInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteDataSource synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteDataSourceInput
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteDataSourceSync(DeleteDataSourceInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteDataSourceAsync(DeleteDataSourceInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateDataSourceFromRDS asynchronously, invoking a callback when done
-- @param CreateDataSourceFromRDSInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateDataSourceFromRDSAsync(CreateDataSourceFromRDSInput, cb)
	assert(CreateDataSourceFromRDSInput, "You must provide a CreateDataSourceFromRDSInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonML_20141212.CreateDataSourceFromRDS",
	}
	for header,value in pairs(CreateDataSourceFromRDSInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateDataSourceFromRDSInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateDataSourceFromRDS synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateDataSourceFromRDSInput
-- @return response
-- @return error_type
-- @return error_message
function M.CreateDataSourceFromRDSSync(CreateDataSourceFromRDSInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateDataSourceFromRDSAsync(CreateDataSourceFromRDSInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateEvaluation asynchronously, invoking a callback when done
-- @param UpdateEvaluationInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateEvaluationAsync(UpdateEvaluationInput, cb)
	assert(UpdateEvaluationInput, "You must provide a UpdateEvaluationInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonML_20141212.UpdateEvaluation",
	}
	for header,value in pairs(UpdateEvaluationInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateEvaluationInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateEvaluation synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateEvaluationInput
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateEvaluationSync(UpdateEvaluationInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateEvaluationAsync(UpdateEvaluationInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AddTags asynchronously, invoking a callback when done
-- @param AddTagsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AddTagsAsync(AddTagsInput, cb)
	assert(AddTagsInput, "You must provide a AddTagsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonML_20141212.AddTags",
	}
	for header,value in pairs(AddTagsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", AddTagsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AddTags synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AddTagsInput
-- @return response
-- @return error_type
-- @return error_message
function M.AddTagsSync(AddTagsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AddTagsAsync(AddTagsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call Predict asynchronously, invoking a callback when done
-- @param PredictInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PredictAsync(PredictInput, cb)
	assert(PredictInput, "You must provide a PredictInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonML_20141212.Predict",
	}
	for header,value in pairs(PredictInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", PredictInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call Predict synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PredictInput
-- @return response
-- @return error_type
-- @return error_message
function M.PredictSync(PredictInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PredictAsync(PredictInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetBatchPrediction asynchronously, invoking a callback when done
-- @param GetBatchPredictionInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetBatchPredictionAsync(GetBatchPredictionInput, cb)
	assert(GetBatchPredictionInput, "You must provide a GetBatchPredictionInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonML_20141212.GetBatchPrediction",
	}
	for header,value in pairs(GetBatchPredictionInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetBatchPredictionInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetBatchPrediction synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetBatchPredictionInput
-- @return response
-- @return error_type
-- @return error_message
function M.GetBatchPredictionSync(GetBatchPredictionInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetBatchPredictionAsync(GetBatchPredictionInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteEvaluation asynchronously, invoking a callback when done
-- @param DeleteEvaluationInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteEvaluationAsync(DeleteEvaluationInput, cb)
	assert(DeleteEvaluationInput, "You must provide a DeleteEvaluationInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonML_20141212.DeleteEvaluation",
	}
	for header,value in pairs(DeleteEvaluationInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteEvaluationInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteEvaluation synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteEvaluationInput
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteEvaluationSync(DeleteEvaluationInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteEvaluationAsync(DeleteEvaluationInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteBatchPrediction asynchronously, invoking a callback when done
-- @param DeleteBatchPredictionInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteBatchPredictionAsync(DeleteBatchPredictionInput, cb)
	assert(DeleteBatchPredictionInput, "You must provide a DeleteBatchPredictionInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonML_20141212.DeleteBatchPrediction",
	}
	for header,value in pairs(DeleteBatchPredictionInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteBatchPredictionInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteBatchPrediction synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteBatchPredictionInput
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteBatchPredictionSync(DeleteBatchPredictionInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteBatchPredictionAsync(DeleteBatchPredictionInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateMLModel asynchronously, invoking a callback when done
-- @param CreateMLModelInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateMLModelAsync(CreateMLModelInput, cb)
	assert(CreateMLModelInput, "You must provide a CreateMLModelInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonML_20141212.CreateMLModel",
	}
	for header,value in pairs(CreateMLModelInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateMLModelInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateMLModel synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateMLModelInput
-- @return response
-- @return error_type
-- @return error_message
function M.CreateMLModelSync(CreateMLModelInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateMLModelAsync(CreateMLModelInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateBatchPrediction asynchronously, invoking a callback when done
-- @param CreateBatchPredictionInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateBatchPredictionAsync(CreateBatchPredictionInput, cb)
	assert(CreateBatchPredictionInput, "You must provide a CreateBatchPredictionInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonML_20141212.CreateBatchPrediction",
	}
	for header,value in pairs(CreateBatchPredictionInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateBatchPredictionInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateBatchPrediction synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateBatchPredictionInput
-- @return response
-- @return error_type
-- @return error_message
function M.CreateBatchPredictionSync(CreateBatchPredictionInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateBatchPredictionAsync(CreateBatchPredictionInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetMLModel asynchronously, invoking a callback when done
-- @param GetMLModelInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetMLModelAsync(GetMLModelInput, cb)
	assert(GetMLModelInput, "You must provide a GetMLModelInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonML_20141212.GetMLModel",
	}
	for header,value in pairs(GetMLModelInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetMLModelInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetMLModel synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetMLModelInput
-- @return response
-- @return error_type
-- @return error_message
function M.GetMLModelSync(GetMLModelInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetMLModelAsync(GetMLModelInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
