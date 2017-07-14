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
-- &lt;p&gt; Represents the output of a &lt;code&gt;CreateDataSourceFromRedshift&lt;/code&gt; operation, and is an acknowledgement that Amazon ML received the request.&lt;/p&gt; &lt;p&gt;The &lt;code&gt;CreateDataSourceFromRedshift&lt;/code&gt; operation is asynchronous. You can poll for updates by using the &lt;code&gt;GetBatchPrediction&lt;/code&gt; operation and checking the &lt;code&gt;Status&lt;/code&gt; parameter. &lt;/p&gt;
-- @param DataSourceId [EntityId] &lt;p&gt;A user-supplied ID that uniquely identifies the datasource. This value should be identical to the value of the &lt;code&gt;DataSourceID&lt;/code&gt; in the request. &lt;/p&gt;
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
-- &lt;p&gt;An error on the server occurred when trying to process a request.&lt;/p&gt;
-- @param message [ErrorMessage] &lt;p&gt;An error on the server occurred when trying to process a request.&lt;/p&gt;
-- @param code [ErrorCode] &lt;p&gt;An error on the server occurred when trying to process a request.&lt;/p&gt;
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
-- @param ResourceType [TaggableResourceType] &lt;p&gt;The type of the tagged ML object.&lt;/p&gt;
-- @param ResourceId [EntityId] &lt;p&gt;The ID of the tagged ML object. For example, &lt;code&gt;exampleModelId&lt;/code&gt;.&lt;/p&gt;
-- @param TagKeys [TagKeyList] &lt;p&gt;One or more tags to delete.&lt;/p&gt;
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
-- @param GT [ComparatorValue] &lt;p&gt;The greater than operator. The &lt;code&gt;BatchPrediction&lt;/code&gt; results will have &lt;code&gt;FilterVariable&lt;/code&gt; values that are greater than the value specified with &lt;code&gt;GT&lt;/code&gt;.&lt;/p&gt;
-- @param FilterVariable [BatchPredictionFilterVariable] &lt;p&gt;Use one of the following variables to filter a list of &lt;code&gt;BatchPrediction&lt;/code&gt;:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;code&gt;CreatedAt&lt;/code&gt; - Sets the search criteria to the &lt;code&gt;BatchPrediction&lt;/code&gt; creation date.&lt;/li&gt; &lt;li&gt; &lt;code&gt;Status&lt;/code&gt; - Sets the search criteria to the &lt;code&gt;BatchPrediction&lt;/code&gt; status.&lt;/li&gt; &lt;li&gt; &lt;code&gt;Name&lt;/code&gt; - Sets the search criteria to the contents of the &lt;code&gt;BatchPrediction&lt;/code&gt;&lt;b&gt; &lt;/b&gt; &lt;code&gt;Name&lt;/code&gt;.&lt;/li&gt; &lt;li&gt; &lt;code&gt;IAMUser&lt;/code&gt; - Sets the search criteria to the user account that invoked the &lt;code&gt;BatchPrediction&lt;/code&gt; creation.&lt;/li&gt; &lt;li&gt; &lt;code&gt;MLModelId&lt;/code&gt; - Sets the search criteria to the &lt;code&gt;MLModel&lt;/code&gt; used in the &lt;code&gt;BatchPrediction&lt;/code&gt;.&lt;/li&gt; &lt;li&gt; &lt;code&gt;DataSourceId&lt;/code&gt; - Sets the search criteria to the &lt;code&gt;DataSource&lt;/code&gt; used in the &lt;code&gt;BatchPrediction&lt;/code&gt;.&lt;/li&gt; &lt;li&gt; &lt;code&gt;DataURI&lt;/code&gt; - Sets the search criteria to the data file(s) used in the &lt;code&gt;BatchPrediction&lt;/code&gt;. The URL can identify either a file or an Amazon Simple Storage Solution (Amazon S3) bucket or directory.&lt;/li&gt; &lt;/ul&gt;
-- @param GE [ComparatorValue] &lt;p&gt;The greater than or equal to operator. The &lt;code&gt;BatchPrediction&lt;/code&gt; results will have &lt;code&gt;FilterVariable&lt;/code&gt; values that are greater than or equal to the value specified with &lt;code&gt;GE&lt;/code&gt;. &lt;/p&gt;
-- @param NE [ComparatorValue] &lt;p&gt;The not equal to operator. The &lt;code&gt;BatchPrediction&lt;/code&gt; results will have &lt;code&gt;FilterVariable&lt;/code&gt; values not equal to the value specified with &lt;code&gt;NE&lt;/code&gt;.&lt;/p&gt;
-- @param LT [ComparatorValue] &lt;p&gt;The less than operator. The &lt;code&gt;BatchPrediction&lt;/code&gt; results will have &lt;code&gt;FilterVariable&lt;/code&gt; values that are less than the value specified with &lt;code&gt;LT&lt;/code&gt;.&lt;/p&gt;
-- @param LE [ComparatorValue] &lt;p&gt;The less than or equal to operator. The &lt;code&gt;BatchPrediction&lt;/code&gt; results will have &lt;code&gt;FilterVariable&lt;/code&gt; values that are less than or equal to the value specified with &lt;code&gt;LE&lt;/code&gt;.&lt;/p&gt;
-- @param Limit [PageLimit] &lt;p&gt;The number of pages of information to include in the result. The range of acceptable values is &lt;code&gt;1&lt;/code&gt; through &lt;code&gt;100&lt;/code&gt;. The default value is &lt;code&gt;100&lt;/code&gt;.&lt;/p&gt;
-- @param SortOrder [SortOrder] &lt;p&gt;A two-value parameter that determines the sequence of the resulting list of &lt;code&gt;MLModel&lt;/code&gt;s.&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;code&gt;asc&lt;/code&gt; - Arranges the list in ascending order (A-Z, 0-9).&lt;/li&gt; &lt;li&gt; &lt;code&gt;dsc&lt;/code&gt; - Arranges the list in descending order (Z-A, 9-0).&lt;/li&gt; &lt;/ul&gt; &lt;p&gt;Results are sorted by &lt;code&gt;FilterVariable&lt;/code&gt;.&lt;/p&gt;
-- @param NextToken [StringType] &lt;p&gt;An ID of the page in the paginated results.&lt;/p&gt;
-- @param EQ [ComparatorValue] &lt;p&gt;The equal to operator. The &lt;code&gt;BatchPrediction&lt;/code&gt; results will have &lt;code&gt;FilterVariable&lt;/code&gt; values that exactly match the value specified with &lt;code&gt;EQ&lt;/code&gt;.&lt;/p&gt;
-- @param Prefix [ComparatorValue] &lt;p&gt;A string that is found at the beginning of a variable, such as &lt;code&gt;Name&lt;/code&gt; or &lt;code&gt;Id&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;For example, a &lt;code&gt;Batch Prediction&lt;/code&gt; operation could have the &lt;code&gt;Name&lt;/code&gt; &lt;code&gt;2014-09-09-HolidayGiftMailer&lt;/code&gt;. To search for this &lt;code&gt;BatchPrediction&lt;/code&gt;, select &lt;code&gt;Name&lt;/code&gt; for the &lt;code&gt;FilterVariable&lt;/code&gt; and any of the following strings for the &lt;code&gt;Prefix&lt;/code&gt;: &lt;/p&gt; &lt;ul&gt; &lt;li&gt;&lt;p&gt;2014-09&lt;/p&gt;&lt;/li&gt; &lt;li&gt;&lt;p&gt;2014-09-09&lt;/p&gt;&lt;/li&gt; &lt;li&gt;&lt;p&gt;2014-09-09-Holiday&lt;/p&gt;&lt;/li&gt; &lt;/ul&gt;
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
-- &lt;p&gt; Represents the output of a &lt;code&gt;CreateBatchPrediction&lt;/code&gt; operation, and is an acknowledgement that Amazon ML received the request.&lt;/p&gt; &lt;p&gt;The &lt;code&gt;CreateBatchPrediction&lt;/code&gt; operation is asynchronous. You can poll for status updates by using the &lt;code&gt;&amp;gt;GetBatchPrediction&lt;/code&gt; operation and checking the &lt;code&gt;Status&lt;/code&gt; parameter of the result. &lt;/p&gt;
-- @param BatchPredictionId [EntityId] &lt;p&gt;A user-supplied ID that uniquely identifies the &lt;code&gt;BatchPrediction&lt;/code&gt;. This value is identical to the value of the &lt;code&gt;BatchPredictionId&lt;/code&gt; in the request.&lt;/p&gt;
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
-- &lt;p&gt;Amazon ML returns the following elements. &lt;/p&gt;
-- @param ResourceType [TaggableResourceType] &lt;p&gt;The type of the ML object that was tagged.&lt;/p&gt;
-- @param ResourceId [EntityId] &lt;p&gt;The ID of the ML object that was tagged.&lt;/p&gt;
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
-- &lt;p&gt; Represents the output of a &lt;code&gt;GetMLModel&lt;/code&gt; operation. &lt;/p&gt; &lt;p&gt;The content consists of the detailed metadata and the current status of the &lt;code&gt;MLModel&lt;/code&gt;.&lt;/p&gt;
-- @param Status [EntityStatus] &lt;p&gt;The current status of an &lt;code&gt;MLModel&lt;/code&gt;. This element can have one of the following values: &lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;code&gt;PENDING&lt;/code&gt; - Amazon Machine Learning (Amazon ML) submitted a request to create an &lt;code&gt;MLModel&lt;/code&gt;.&lt;/li&gt; &lt;li&gt; &lt;code&gt;INPROGRESS&lt;/code&gt; - The creation process is underway.&lt;/li&gt; &lt;li&gt; &lt;code&gt;FAILED&lt;/code&gt; - The request to create an &lt;code&gt;MLModel&lt;/code&gt; didn't run to completion. The model isn't usable.&lt;/li&gt; &lt;li&gt; &lt;code&gt;COMPLETED&lt;/code&gt; - The creation process completed successfully.&lt;/li&gt; &lt;li&gt; &lt;code&gt;DELETED&lt;/code&gt; - The &lt;code&gt;MLModel&lt;/code&gt; is marked as deleted. It isn't usable.&lt;/li&gt; &lt;/ul&gt;
-- @param SizeInBytes [LongType] &lt;p&gt; Represents the output of a &lt;code&gt;GetMLModel&lt;/code&gt; operation. &lt;/p&gt; &lt;p&gt;The content consists of the detailed metadata and the current status of the &lt;code&gt;MLModel&lt;/code&gt;.&lt;/p&gt;
-- @param ComputeTime [LongType] &lt;p&gt; Represents the output of a &lt;code&gt;GetMLModel&lt;/code&gt; operation. &lt;/p&gt; &lt;p&gt;The content consists of the detailed metadata and the current status of the &lt;code&gt;MLModel&lt;/code&gt;.&lt;/p&gt;
-- @param Name [MLModelName] &lt;p&gt;A user-supplied name or description of the &lt;code&gt;MLModel&lt;/code&gt;.&lt;/p&gt;
-- @param Algorithm [Algorithm] &lt;p&gt;The algorithm used to train the &lt;code&gt;MLModel&lt;/code&gt;. The following algorithm is supported:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;code&gt;SGD&lt;/code&gt; -- Stochastic gradient descent. The goal of &lt;code&gt;SGD&lt;/code&gt; is to minimize the gradient of the loss function. &lt;/li&gt; &lt;/ul&gt;
-- @param ScoreThreshold [ScoreThreshold] &lt;p&gt; Represents the output of a &lt;code&gt;GetMLModel&lt;/code&gt; operation. &lt;/p&gt; &lt;p&gt;The content consists of the detailed metadata and the current status of the &lt;code&gt;MLModel&lt;/code&gt;.&lt;/p&gt;
-- @param TrainingParameters [TrainingParameters] &lt;p&gt;A list of the training parameters in the &lt;code&gt;MLModel&lt;/code&gt;. The list is implemented as a map of key-value pairs.&lt;/p&gt; &lt;p&gt;The following is the current set of training parameters: &lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;&lt;code&gt;sgd.maxMLModelSizeInBytes&lt;/code&gt; - The maximum allowed size of the model. Depending on the input data, the size of the model might affect its performance.&lt;/p&gt; &lt;p&gt; The value is an integer that ranges from &lt;code&gt;100000&lt;/code&gt; to &lt;code&gt;2147483648&lt;/code&gt;. The default value is &lt;code&gt;33554432&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt;&lt;p&gt;&lt;code&gt;sgd.maxPasses&lt;/code&gt; - The number of times that the training process traverses the observations to build the &lt;code&gt;MLModel&lt;/code&gt;. The value is an integer that ranges from &lt;code&gt;1&lt;/code&gt; to &lt;code&gt;10000&lt;/code&gt;. The default value is &lt;code&gt;10&lt;/code&gt;.&lt;/p&gt;&lt;/li&gt; &lt;li&gt;&lt;p&gt;&lt;code&gt;sgd.shuffleType&lt;/code&gt; - Whether Amazon ML shuffles the training data. Shuffling the data improves a model's ability to find the optimal solution for a variety of data types. The valid values are &lt;code&gt;auto&lt;/code&gt; and &lt;code&gt;none&lt;/code&gt;. The default value is &lt;code&gt;none&lt;/code&gt;.&lt;/p&gt;&lt;/li&gt; &lt;li&gt; &lt;p&gt;&lt;code&gt;sgd.l1RegularizationAmount&lt;/code&gt; - The coefficient regularization L1 norm, which controls overfitting the data by penalizing large coefficients. This parameter tends to drive coefficients to zero, resulting in sparse feature set. If you use this parameter, start by specifying a small value, such as &lt;code&gt;1.0E-08&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;The value is a double that ranges from &lt;code&gt;0&lt;/code&gt; to &lt;code&gt;MAX_DOUBLE&lt;/code&gt;. The default is to not use L1 normalization. This parameter can't be used when &lt;code&gt;L2&lt;/code&gt; is specified. Use this parameter sparingly.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;&lt;code&gt;sgd.l2RegularizationAmount&lt;/code&gt; - The coefficient regularization L2 norm, which controls overfitting the data by penalizing large coefficients. This tends to drive coefficients to small, nonzero values. If you use this parameter, start by specifying a small value, such as &lt;code&gt;1.0E-08&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;The value is a double that ranges from &lt;code&gt;0&lt;/code&gt; to &lt;code&gt;MAX_DOUBLE&lt;/code&gt;. The default is to not use L2 normalization. This parameter can't be used when &lt;code&gt;L1&lt;/code&gt; is specified. Use this parameter sparingly.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param MLModelType [MLModelType] &lt;p&gt;Identifies the &lt;code&gt;MLModel&lt;/code&gt; category. The following are the available types:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;code&gt;REGRESSION&lt;/code&gt; - Produces a numeric result. For example, &quot;What price should a house be listed at?&quot;&lt;/li&gt; &lt;li&gt; &lt;code&gt;BINARY&lt;/code&gt; - Produces one of two possible results. For example, &quot;Is this a child-friendly web site?&quot;.&lt;/li&gt; &lt;li&gt; &lt;code&gt;MULTICLASS&lt;/code&gt; - Produces one of several possible results. For example, &quot;Is this a HIGH-, LOW-, or MEDIUM&lt;?oxy_delete author=&quot;annbech&quot; timestamp=&quot;20160328T175050-0700&quot; content=&quot; &quot;&gt;&lt;?oxy_insert_start author=&quot;annbech&quot; timestamp=&quot;20160328T175050-0700&quot;&gt;-&lt;?oxy_insert_end&gt;risk trade?&quot;.&lt;/li&gt; &lt;/ul&gt;
-- @param CreatedByIamUser [AwsUserArn] &lt;p&gt;The AWS user account from which the &lt;code&gt;MLModel&lt;/code&gt; was created. The account type can be either an AWS root account or an AWS Identity and Access Management (IAM) user account.&lt;/p&gt;
-- @param ScoreThresholdLastUpdatedAt [EpochTime] &lt;p&gt;The time of the most recent edit to the &lt;code&gt;ScoreThreshold&lt;/code&gt;. The time is expressed in epoch time.&lt;/p&gt;
-- @param EndpointInfo [RealtimeEndpointInfo] &lt;p&gt;The current endpoint of the &lt;code&gt;MLModel&lt;/code&gt;.&lt;/p&gt;
-- @param MLModelId [EntityId] &lt;p&gt;The ID assigned to the &lt;code&gt;MLModel&lt;/code&gt; at creation.&lt;/p&gt;
-- @param InputDataLocationS3 [S3Url] &lt;p&gt;The location of the data file or directory in Amazon Simple Storage Service (Amazon S3).&lt;/p&gt;
-- @param LastUpdatedAt [EpochTime] &lt;p&gt;The time of the most recent edit to the &lt;code&gt;MLModel&lt;/code&gt;. The time is expressed in epoch time.&lt;/p&gt;
-- @param TrainingDataSourceId [EntityId] &lt;p&gt;The ID of the training &lt;code&gt;DataSource&lt;/code&gt;. The &lt;code&gt;CreateMLModel&lt;/code&gt; operation uses the &lt;code&gt;TrainingDataSourceId&lt;/code&gt;.&lt;/p&gt;
-- @param StartedAt [EpochTime] &lt;p&gt; Represents the output of a &lt;code&gt;GetMLModel&lt;/code&gt; operation. &lt;/p&gt; &lt;p&gt;The content consists of the detailed metadata and the current status of the &lt;code&gt;MLModel&lt;/code&gt;.&lt;/p&gt;
-- @param Message [Message] &lt;p&gt;A description of the most recent details about accessing the &lt;code&gt;MLModel&lt;/code&gt;.&lt;/p&gt;
-- @param CreatedAt [EpochTime] &lt;p&gt;The time that the &lt;code&gt;MLModel&lt;/code&gt; was created. The time is expressed in epoch time.&lt;/p&gt;
-- @param FinishedAt [EpochTime] &lt;p&gt; Represents the output of a &lt;code&gt;GetMLModel&lt;/code&gt; operation. &lt;/p&gt; &lt;p&gt;The content consists of the detailed metadata and the current status of the &lt;code&gt;MLModel&lt;/code&gt;.&lt;/p&gt;
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
-- @param BatchPredictionId [EntityId] &lt;p&gt;The ID assigned to the &lt;code&gt;BatchPrediction&lt;/code&gt; during creation.&lt;/p&gt;
-- @param BatchPredictionName [EntityName] &lt;p&gt;A new user-supplied name or description of the &lt;code&gt;BatchPrediction&lt;/code&gt;.&lt;/p&gt;
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
-- &lt;p&gt;Describes the &lt;code&gt;DataSource&lt;/code&gt; details specific to Amazon Redshift.&lt;/p&gt;
-- @param RedshiftDatabase [RedshiftDatabase] &lt;p&gt;Describes the &lt;code&gt;DataSource&lt;/code&gt; details specific to Amazon Redshift.&lt;/p&gt;
-- @param DatabaseUserName [RedshiftDatabaseUsername] &lt;p&gt;Describes the &lt;code&gt;DataSource&lt;/code&gt; details specific to Amazon Redshift.&lt;/p&gt;
-- @param SelectSqlQuery [RedshiftSelectSqlQuery] &lt;p&gt; The SQL query that is specified during &lt;a&gt;CreateDataSourceFromRedshift&lt;/a&gt;. Returns only if &lt;code&gt;Verbose&lt;/code&gt; is true in GetDataSourceInput. &lt;/p&gt;
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
-- &lt;p&gt;Represents the output of an &lt;code&gt;UpdateBatchPrediction&lt;/code&gt; operation.&lt;/p&gt; &lt;p&gt;You can see the updated content by using the &lt;code&gt;GetBatchPrediction&lt;/code&gt; operation.&lt;/p&gt;
-- @param BatchPredictionId [EntityId] &lt;p&gt;The ID assigned to the &lt;code&gt;BatchPrediction&lt;/code&gt; during creation. This value should be identical to the value of the &lt;code&gt;BatchPredictionId&lt;/code&gt; in the request.&lt;/p&gt;
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
-- &lt;p&gt;Represents the output of an &lt;code&gt;UpdateMLModel&lt;/code&gt; operation.&lt;/p&gt; &lt;p&gt;You can see the updated content by using the &lt;code&gt;GetMLModel&lt;/code&gt; operation.&lt;/p&gt;
-- @param MLModelId [EntityId] &lt;p&gt;The ID assigned to the &lt;code&gt;MLModel&lt;/code&gt; during creation. This value should be identical to the value of the &lt;code&gt;MLModelID&lt;/code&gt; in the request.&lt;/p&gt;
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
-- &lt;p&gt;Represents the output of a &lt;code&gt;GetMLModel&lt;/code&gt; operation, and provides detailed information about a &lt;code&gt;MLModel&lt;/code&gt;.&lt;/p&gt;
-- @param Status [EntityStatus] &lt;p&gt;The current status of the &lt;code&gt;MLModel&lt;/code&gt;. This element can have one of the following values:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;code&gt;PENDING&lt;/code&gt; - Amazon Machine Learning (Amazon ML) submitted a request to describe a &lt;code&gt;MLModel&lt;/code&gt;.&lt;/li&gt; &lt;li&gt; &lt;code&gt;INPROGRESS&lt;/code&gt; - The request is processing.&lt;/li&gt; &lt;li&gt; &lt;code&gt;FAILED&lt;/code&gt; - The request did not run to completion. The ML model isn't usable.&lt;/li&gt; &lt;li&gt; &lt;code&gt;COMPLETED&lt;/code&gt; - The request completed successfully.&lt;/li&gt; &lt;li&gt; &lt;code&gt;DELETED&lt;/code&gt; - The &lt;code&gt;MLModel&lt;/code&gt; is marked as deleted. It isn't usable.&lt;/li&gt; &lt;/ul&gt;
-- @param SizeInBytes [LongType] &lt;p&gt;Represents the output of a &lt;code&gt;GetMLModel&lt;/code&gt; operation, and provides detailed information about a &lt;code&gt;MLModel&lt;/code&gt;.&lt;/p&gt;
-- @param ComputeTime [LongType] &lt;p&gt;The approximate CPU time in milliseconds that Amazon Machine Learning spent processing the &lt;code&gt;MLModel&lt;/code&gt;, normalized and scaled on computation resources. &lt;code&gt;ComputeTime&lt;/code&gt; is only available if the &lt;code&gt;MLModel&lt;/code&gt; is in the &lt;code&gt;COMPLETED&lt;/code&gt; state.&lt;/p&gt;
-- @param Name [MLModelName] &lt;p&gt;A user-supplied name or description of the &lt;code&gt;MLModel&lt;/code&gt;.&lt;/p&gt;
-- @param ScoreThreshold [ScoreThreshold] &lt;p&gt;The scoring threshold is used in binary classification &lt;code&gt;MLModel&lt;/code&gt;&lt;?oxy_insert_start author=&quot;laurama&quot; timestamp=&quot;20160329T114851-0700&quot;&gt; &lt;?oxy_insert_end&gt;models. It marks the boundary between a positive prediction and a negative prediction.&lt;/p&gt; &lt;p&gt;Output values greater than or equal to the threshold receive a positive result from the MLModel, such as &lt;code&gt;true&lt;/code&gt;. Output values less than the threshold receive a negative response from the MLModel, such as &lt;code&gt;false&lt;/code&gt;.&lt;/p&gt;
-- @param TrainingParameters [TrainingParameters] &lt;p&gt;A list of the training parameters in the &lt;code&gt;MLModel&lt;/code&gt;. The list is implemented as a map of key-value pairs.&lt;/p&gt; &lt;p&gt;The following is the current set of training parameters: &lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;&lt;code&gt;sgd.maxMLModelSizeInBytes&lt;/code&gt; - The maximum allowed size of the model. Depending on the input data, the size of the model might affect its performance.&lt;/p&gt; &lt;p&gt; The value is an integer that ranges from &lt;code&gt;100000&lt;/code&gt; to &lt;code&gt;2147483648&lt;/code&gt;. The default value is &lt;code&gt;33554432&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt;&lt;p&gt;&lt;code&gt;sgd.maxPasses&lt;/code&gt; - The number of times that the training process traverses the observations to build the &lt;code&gt;MLModel&lt;/code&gt;. The value is an integer that ranges from &lt;code&gt;1&lt;/code&gt; to &lt;code&gt;10000&lt;/code&gt;. The default value is &lt;code&gt;10&lt;/code&gt;.&lt;/p&gt;&lt;/li&gt; &lt;li&gt;&lt;p&gt;&lt;code&gt;sgd.shuffleType&lt;/code&gt; - Whether Amazon ML shuffles the training data. Shuffling data improves a model's ability to find the optimal solution for a variety of data types. The valid values are &lt;code&gt;auto&lt;/code&gt; and &lt;code&gt;none&lt;/code&gt;. The default value is &lt;code&gt;none&lt;/code&gt;. We strongly recommend that you shuffle your data.&lt;/p&gt;&lt;/li&gt; &lt;li&gt; &lt;p&gt;&lt;code&gt;sgd.l1RegularizationAmount&lt;/code&gt; - The coefficient regularization L1 norm. It controls overfitting the data by penalizing large coefficients. This tends to drive coefficients to zero, resulting in a sparse feature set. If you use this parameter, start by specifying a small value, such as &lt;code&gt;1.0E-08&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;The value is a double that ranges from &lt;code&gt;0&lt;/code&gt; to &lt;code&gt;MAX_DOUBLE&lt;/code&gt;. The default is to not use L1 normalization. This parameter can't be used when &lt;code&gt;L2&lt;/code&gt; is specified. Use this parameter sparingly.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;&lt;code&gt;sgd.l2RegularizationAmount&lt;/code&gt; - The coefficient regularization L2 norm. It controls overfitting the data by penalizing large coefficients. This tends to drive coefficients to small, nonzero values. If you use this parameter, start by specifying a small value, such as &lt;code&gt;1.0E-08&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;The value is a double that ranges from &lt;code&gt;0&lt;/code&gt; to &lt;code&gt;MAX_DOUBLE&lt;/code&gt;. The default is to not use L2 normalization. This parameter can't be used when &lt;code&gt;L1&lt;/code&gt; is specified. Use this parameter sparingly.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param MLModelType [MLModelType] &lt;p&gt;Identifies the &lt;code&gt;MLModel&lt;/code&gt; category. The following are the available types: &lt;/p&gt; &lt;ul&gt; &lt;li&gt;REGRESSION -- Produces a numeric result. For example, &quot;What price should a house be listed at?&quot;&lt;/li&gt; &lt;li&gt;BINARY -- Produces one of two possible results. For example, &quot;Is this an e-commerce website?&quot;&lt;/li&gt; &lt;li&gt;MULTICLASS -- Produces one of several possible results. For example, &quot;Is this a HIGH, LOW or MEDIUM risk trade?&quot;&lt;/li&gt; &lt;/ul&gt;
-- @param CreatedByIamUser [AwsUserArn] &lt;p&gt;The AWS user account from which the &lt;code&gt;MLModel&lt;/code&gt; was created. The account type can be either an AWS root account or an AWS Identity and Access Management (IAM) user account.&lt;/p&gt;
-- @param Recipe [Recipe] &lt;p&gt;The recipe to use when training the &lt;code&gt;MLModel&lt;/code&gt;. The &lt;code&gt;Recipe&lt;/code&gt; provides detailed information about the observation data to use during training, and manipulations to perform on the observation data during training.&lt;/p&gt; &lt;note&gt;&lt;title&gt;Note&lt;/title&gt; &lt;p&gt;This parameter is provided as part of the verbose format.&lt;/p&gt;&lt;/note&gt;
-- @param ScoreThresholdLastUpdatedAt [EpochTime] &lt;p&gt;The time of the most recent edit to the &lt;code&gt;ScoreThreshold&lt;/code&gt;. The time is expressed in epoch time.&lt;/p&gt;
-- @param EndpointInfo [RealtimeEndpointInfo] &lt;p&gt;The current endpoint of the &lt;code&gt;MLModel&lt;/code&gt;&lt;/p&gt;
-- @param MLModelId [EntityId] &lt;p&gt;The MLModel ID&lt;?oxy_insert_start author=&quot;annbech&quot; timestamp=&quot;20160328T151251-0700&quot;&gt;,&lt;?oxy_insert_end&gt; which is same as the &lt;code&gt;MLModelId&lt;/code&gt; in the request.&lt;/p&gt;
-- @param InputDataLocationS3 [S3Url] &lt;p&gt;The location of the data file or directory in Amazon Simple Storage Service (Amazon S3).&lt;/p&gt;
-- @param LastUpdatedAt [EpochTime] &lt;p&gt;The time of the most recent edit to the &lt;code&gt;MLModel&lt;/code&gt;. The time is expressed in epoch time.&lt;/p&gt;
-- @param TrainingDataSourceId [EntityId] &lt;p&gt;The ID of the training &lt;code&gt;DataSource&lt;/code&gt;.&lt;/p&gt;
-- @param StartedAt [EpochTime] &lt;p&gt;The epoch time when Amazon Machine Learning marked the &lt;code&gt;MLModel&lt;/code&gt; as &lt;code&gt;INPROGRESS&lt;/code&gt;. &lt;code&gt;StartedAt&lt;/code&gt; isn't available if the &lt;code&gt;MLModel&lt;/code&gt; is in the &lt;code&gt;PENDING&lt;/code&gt; state.&lt;/p&gt;
-- @param LogUri [PresignedS3Url] &lt;p&gt;A link to the file that contains logs of the &lt;code&gt;CreateMLModel&lt;/code&gt; operation.&lt;/p&gt;
-- @param Schema [DataSchema] &lt;p&gt;The schema used by all of the data files referenced by the &lt;code&gt;DataSource&lt;/code&gt;.&lt;/p&gt; &lt;note&gt;&lt;title&gt;Note&lt;/title&gt; &lt;p&gt;This parameter is provided as part of the verbose format.&lt;/p&gt;&lt;/note&gt;
-- @param Message [Message] &lt;p&gt;A description of the most recent details about accessing the &lt;code&gt;MLModel&lt;/code&gt;.&lt;/p&gt;
-- @param CreatedAt [EpochTime] &lt;p&gt;The time that the &lt;code&gt;MLModel&lt;/code&gt; was created. The time is expressed in epoch time.&lt;/p&gt;
-- @param FinishedAt [EpochTime] &lt;p&gt;The epoch time when Amazon Machine Learning marked the &lt;code&gt;MLModel&lt;/code&gt; as &lt;code&gt;COMPLETED&lt;/code&gt; or &lt;code&gt;FAILED&lt;/code&gt;. &lt;code&gt;FinishedAt&lt;/code&gt; is only available when the &lt;code&gt;MLModel&lt;/code&gt; is in the &lt;code&gt;COMPLETED&lt;/code&gt; or &lt;code&gt;FAILED&lt;/code&gt; state.&lt;/p&gt;
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
-- @param ResourceType [TaggableResourceType] &lt;p&gt;The type of the ML object.&lt;/p&gt;
-- @param ResourceId [EntityId] &lt;p&gt;The ID of the ML object. For example, &lt;code&gt;exampleModelId&lt;/code&gt;. &lt;/p&gt;
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
-- &lt;p&gt;Describes the data specification of an Amazon Redshift &lt;code&gt;DataSource&lt;/code&gt;.&lt;/p&gt;
-- @param DatabaseCredentials [RedshiftDatabaseCredentials] &lt;p&gt;Describes AWS Identity and Access Management (IAM) credentials that are used connect to the Amazon Redshift database.&lt;/p&gt;
-- @param DataSchemaUri [S3Url] &lt;p&gt;Describes the schema location for an Amazon Redshift &lt;code&gt;DataSource&lt;/code&gt;.&lt;/p&gt;
-- @param DatabaseInformation [RedshiftDatabase] &lt;p&gt;Describes the &lt;code&gt;DatabaseName&lt;/code&gt; and &lt;code&gt;ClusterIdentifier&lt;/code&gt; for an Amazon Redshift &lt;code&gt;DataSource&lt;/code&gt;.&lt;/p&gt;
-- @param DataSchema [DataSchema] &lt;p&gt;A JSON string that represents the schema for an Amazon Redshift &lt;code&gt;DataSource&lt;/code&gt;. The &lt;code&gt;DataSchema&lt;/code&gt; defines the structure of the observation data in the data file(s) referenced in the &lt;code&gt;DataSource&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;A &lt;code&gt;DataSchema&lt;/code&gt; is not required if you specify a &lt;code&gt;DataSchemaUri&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;Define your &lt;code&gt;DataSchema&lt;/code&gt; as a series of key-value pairs. &lt;code&gt;attributes&lt;/code&gt; and &lt;code&gt;excludedVariableNames&lt;/code&gt; have an array of key-value pairs for their value. Use the following format to define your &lt;code&gt;DataSchema&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;{ &quot;version&quot;: &quot;1.0&quot;,&lt;/p&gt; &lt;p&gt; &quot;recordAnnotationFieldName&quot;: &quot;F1&quot;,&lt;/p&gt; &lt;p&gt; &quot;recordWeightFieldName&quot;: &quot;F2&quot;,&lt;/p&gt; &lt;p&gt; &quot;targetFieldName&quot;: &quot;F3&quot;,&lt;/p&gt; &lt;p&gt; &quot;dataFormat&quot;: &quot;CSV&quot;,&lt;/p&gt; &lt;p&gt; &quot;dataFileContainsHeader&quot;: true,&lt;/p&gt; &lt;p&gt; &quot;attributes&quot;: [&lt;/p&gt; &lt;p&gt; { &quot;fieldName&quot;: &quot;F1&quot;, &quot;fieldType&quot;: &quot;TEXT&quot; }, { &quot;fieldName&quot;: &quot;F2&quot;, &quot;fieldType&quot;: &quot;NUMERIC&quot; }, { &quot;fieldName&quot;: &quot;F3&quot;, &quot;fieldType&quot;: &quot;CATEGORICAL&quot; }, { &quot;fieldName&quot;: &quot;F4&quot;, &quot;fieldType&quot;: &quot;NUMERIC&quot; }, { &quot;fieldName&quot;: &quot;F5&quot;, &quot;fieldType&quot;: &quot;CATEGORICAL&quot; }, { &quot;fieldName&quot;: &quot;F6&quot;, &quot;fieldType&quot;: &quot;TEXT&quot; }, { &quot;fieldName&quot;: &quot;F7&quot;, &quot;fieldType&quot;: &quot;WEIGHTED_INT_SEQUENCE&quot; }, { &quot;fieldName&quot;: &quot;F8&quot;, &quot;fieldType&quot;: &quot;WEIGHTED_STRING_SEQUENCE&quot; } ],&lt;/p&gt; &lt;p&gt; &quot;excludedVariableNames&quot;: [ &quot;F6&quot; ] } &lt;/p&gt;
-- @param DataRearrangement [DataRearrangement] &lt;p&gt;A JSON string that represents the splitting and rearrangement processing to be applied to a &lt;code&gt;DataSource&lt;/code&gt;. If the &lt;code&gt;DataRearrangement&lt;/code&gt; parameter is not provided, all of the input data is used to create the &lt;code&gt;Datasource&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;There are multiple parameters that control what data is used to create a datasource:&lt;/p&gt; &lt;ul&gt; &lt;li&gt;&lt;p&gt;&lt;b&gt;&lt;code&gt;percentBegin&lt;/code&gt;&lt;/b&gt;&lt;/p&gt; &lt;p&gt;Use &lt;code&gt;percentBegin&lt;/code&gt; to indicate the beginning of the range of the data used to create the Datasource. If you do not include &lt;code&gt;percentBegin&lt;/code&gt; and &lt;code&gt;percentEnd&lt;/code&gt;, Amazon ML includes all of the data when creating the datasource.&lt;/p&gt;&lt;/li&gt; &lt;li&gt;&lt;p&gt;&lt;b&gt;&lt;code&gt;percentEnd&lt;/code&gt;&lt;/b&gt;&lt;/p&gt; &lt;p&gt;Use &lt;code&gt;percentEnd&lt;/code&gt; to indicate the end of the range of the data used to create the Datasource. If you do not include &lt;code&gt;percentBegin&lt;/code&gt; and &lt;code&gt;percentEnd&lt;/code&gt;, Amazon ML includes all of the data when creating the datasource.&lt;/p&gt;&lt;/li&gt; &lt;li&gt;&lt;p&gt;&lt;b&gt;&lt;code&gt;complement&lt;/code&gt;&lt;/b&gt;&lt;/p&gt; &lt;p&gt;The &lt;code&gt;complement&lt;/code&gt; parameter instructs Amazon ML to use the data that is not included in the range of &lt;code&gt;percentBegin&lt;/code&gt; to &lt;code&gt;percentEnd&lt;/code&gt; to create a datasource. The &lt;code&gt;complement&lt;/code&gt; parameter is useful if you need to create complementary datasources for training and evaluation. To create a complementary datasource, use the same values for &lt;code&gt;percentBegin&lt;/code&gt; and &lt;code&gt;percentEnd&lt;/code&gt;, along with the &lt;code&gt;complement&lt;/code&gt; parameter.&lt;/p&gt; &lt;p&gt;For example, the following two datasources do not share any data, and can be used to train and evaluate a model. The first datasource has 25 percent of the data, and the second one has 75 percent of the data.&lt;/p&gt; &lt;p&gt;Datasource for evaluation: &lt;code&gt;{&quot;splitting&quot;:{&quot;percentBegin&quot;:0, &quot;percentEnd&quot;:25}}&lt;/code&gt;&lt;/p&gt; &lt;p&gt;Datasource for training: &lt;code&gt;{&quot;splitting&quot;:{&quot;percentBegin&quot;:0, &quot;percentEnd&quot;:25, &quot;complement&quot;:&quot;true&quot;}}&lt;/code&gt;&lt;/p&gt; &lt;/li&gt; &lt;li&gt;&lt;p&gt;&lt;b&gt;&lt;code&gt;strategy&lt;/code&gt;&lt;/b&gt;&lt;/p&gt; &lt;p&gt;To change how Amazon ML splits the data for a datasource, use the &lt;code&gt;strategy&lt;/code&gt; parameter.&lt;/p&gt; &lt;p&gt;The default value for the &lt;code&gt;strategy&lt;/code&gt; parameter is &lt;code&gt;sequential&lt;/code&gt;, meaning that Amazon ML takes all of the data records between the &lt;code&gt;percentBegin&lt;/code&gt; and &lt;code&gt;percentEnd&lt;/code&gt; parameters for the datasource, in the order that the records appear in the input data.&lt;/p&gt; &lt;p&gt;The following two &lt;code&gt;DataRearrangement&lt;/code&gt; lines are examples of sequentially ordered training and evaluation datasources:&lt;/p&gt; &lt;p&gt;Datasource for evaluation: &lt;code&gt;{&quot;splitting&quot;:{&quot;percentBegin&quot;:70, &quot;percentEnd&quot;:100, &quot;strategy&quot;:&quot;sequential&quot;}}&lt;/code&gt;&lt;/p&gt; &lt;p&gt;Datasource for training: &lt;code&gt;{&quot;splitting&quot;:{&quot;percentBegin&quot;:70, &quot;percentEnd&quot;:100, &quot;strategy&quot;:&quot;sequential&quot;, &quot;complement&quot;:&quot;true&quot;}}&lt;/code&gt;&lt;/p&gt; &lt;p&gt;To randomly split the input data into the proportions indicated by the percentBegin and percentEnd parameters, set the &lt;code&gt;strategy&lt;/code&gt; parameter to &lt;code&gt;random&lt;/code&gt; and provide a string that is used as the seed value for the random data splitting (for example, you can use the S3 path to your data as the random seed string). If you choose the random split strategy, Amazon ML assigns each row of data a pseudo-random number between 0 and 100, and then selects the rows that have an assigned number between &lt;code&gt;percentBegin&lt;/code&gt; and &lt;code&gt;percentEnd&lt;/code&gt;. Pseudo-random numbers are assigned using both the input seed string value and the byte offset as a seed, so changing the data results in a different split. Any existing ordering is preserved. The random splitting strategy ensures that variables in the training and evaluation data are distributed similarly. It is useful in the cases where the input data may have an implicit sort order, which would otherwise result in training and evaluation datasources containing non-similar data records.&lt;/p&gt; &lt;p&gt;The following two &lt;code&gt;DataRearrangement&lt;/code&gt; lines are examples of non-sequentially ordered training and evaluation datasources:&lt;/p&gt; &lt;p&gt;Datasource for evaluation: &lt;code&gt;{&quot;splitting&quot;:{&quot;percentBegin&quot;:70, &quot;percentEnd&quot;:100, &quot;strategy&quot;:&quot;random&quot;, &quot;randomSeed&quot;=&quot;s3://my_s3_path/bucket/file.csv&quot;}}&lt;/code&gt;&lt;/p&gt; &lt;p&gt;Datasource for training: &lt;code&gt;{&quot;splitting&quot;:{&quot;percentBegin&quot;:70, &quot;percentEnd&quot;:100, &quot;strategy&quot;:&quot;random&quot;, &quot;randomSeed&quot;=&quot;s3://my_s3_path/bucket/file.csv&quot;, &quot;complement&quot;:&quot;true&quot;}}&lt;/code&gt;&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param S3StagingLocation [S3Url] &lt;p&gt;Describes an Amazon S3 location to store the result set of the &lt;code&gt;SelectSqlQuery&lt;/code&gt; query.&lt;/p&gt;
-- @param SelectSqlQuery [RedshiftSelectSqlQuery] &lt;p&gt;Describes the SQL Query to execute on an Amazon Redshift database for an Amazon Redshift &lt;code&gt;DataSource&lt;/code&gt;.&lt;/p&gt;
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
-- &lt;p&gt;A second request to use or change an object was not allowed. This can result from retrying a request using a parameter that was not present in the original request.&lt;/p&gt;
-- @param message [ErrorMessage] &lt;p&gt;A second request to use or change an object was not allowed. This can result from retrying a request using a parameter that was not present in the original request.&lt;/p&gt;
-- @param code [ErrorCode] &lt;p&gt;A second request to use or change an object was not allowed. This can result from retrying a request using a parameter that was not present in the original request.&lt;/p&gt;
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
-- @param BatchPredictionId [EntityId] &lt;p&gt;An ID assigned to the &lt;code&gt;BatchPrediction&lt;/code&gt; at creation.&lt;/p&gt;
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
-- &lt;p&gt; Describes the database credentials for connecting to a database on an Amazon Redshift cluster.&lt;/p&gt;
-- @param Username [RedshiftDatabaseUsername] &lt;p&gt; Describes the database credentials for connecting to a database on an Amazon Redshift cluster.&lt;/p&gt;
-- @param Password [RedshiftDatabasePassword] &lt;p&gt; Describes the database credentials for connecting to a database on an Amazon Redshift cluster.&lt;/p&gt;
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
-- @param BatchPredictionId [EntityId] &lt;p&gt;A user-supplied ID that uniquely identifies the &lt;code&gt;BatchPrediction&lt;/code&gt;.&lt;/p&gt;
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
-- &lt;p&gt;Represents the query results from a &lt;code&gt;DescribeEvaluations&lt;/code&gt; operation. The content is essentially a list of &lt;code&gt;Evaluation&lt;/code&gt;.&lt;/p&gt;
-- @param NextToken [StringType] &lt;p&gt;The ID of the next page in the paginated results that indicates at least one more page follows.&lt;/p&gt;
-- @param Results [Evaluations] &lt;p&gt;A list of &lt;code&gt;Evaluation&lt;/code&gt; that meet the search criteria. &lt;/p&gt;
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
-- @param EvaluationId [EntityId] &lt;p&gt;The ID assigned to the &lt;code&gt;Evaluation&lt;/code&gt; during creation.&lt;/p&gt;
-- @param EvaluationName [EntityName] &lt;p&gt;A new user-supplied name or description of the &lt;code&gt;Evaluation&lt;/code&gt; that will replace the current content. &lt;/p&gt;
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
-- &lt;p&gt;Measurements of how well the &lt;code&gt;MLModel&lt;/code&gt; performed on known observations. One of the following metrics is returned, based on the type of the &lt;code&gt;MLModel&lt;/code&gt;: &lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;BinaryAUC: The binary &lt;code&gt;MLModel&lt;/code&gt; uses the Area Under the Curve (AUC) technique to measure performance. &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;RegressionRMSE: The regression &lt;code&gt;MLModel&lt;/code&gt; uses the Root Mean Square Error (RMSE) technique to measure performance. RMSE measures the difference between predicted and actual values for a single variable.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;MulticlassAvgFScore: The multiclass &lt;code&gt;MLModel&lt;/code&gt; uses the F1 score technique to measure performance. &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt; For more information about performance metrics, please see the &lt;a href=&quot;http://docs.aws.amazon.com/machine-learning/latest/dg&quot;&gt;Amazon Machine Learning Developer Guide&lt;/a&gt;. &lt;/p&gt;
-- @param Properties [PerformanceMetricsProperties] &lt;p&gt;Measurements of how well the &lt;code&gt;MLModel&lt;/code&gt; performed on known observations. One of the following metrics is returned, based on the type of the &lt;code&gt;MLModel&lt;/code&gt;: &lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;BinaryAUC: The binary &lt;code&gt;MLModel&lt;/code&gt; uses the Area Under the Curve (AUC) technique to measure performance. &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;RegressionRMSE: The regression &lt;code&gt;MLModel&lt;/code&gt; uses the Root Mean Square Error (RMSE) technique to measure performance. RMSE measures the difference between predicted and actual values for a single variable.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;MulticlassAvgFScore: The multiclass &lt;code&gt;MLModel&lt;/code&gt; uses the F1 score technique to measure performance. &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt; For more information about performance metrics, please see the &lt;a href=&quot;http://docs.aws.amazon.com/machine-learning/latest/dg&quot;&gt;Amazon Machine Learning Developer Guide&lt;/a&gt;. &lt;/p&gt;
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
-- &lt;p&gt;An error on the client occurred. Typically, the cause is an invalid input value.&lt;/p&gt;
-- @param message [ErrorMessage] &lt;p&gt;An error on the client occurred. Typically, the cause is an invalid input value.&lt;/p&gt;
-- @param code [ErrorCode] &lt;p&gt;An error on the client occurred. Typically, the cause is an invalid input value.&lt;/p&gt;
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
-- &lt;p&gt;The subscriber exceeded the maximum number of operations. This exception can occur when listing objects such as &lt;code&gt;DataSource&lt;/code&gt;.&lt;/p&gt;
-- @param message [ErrorMessage] &lt;p&gt;The subscriber exceeded the maximum number of operations. This exception can occur when listing objects such as &lt;code&gt;DataSource&lt;/code&gt;.&lt;/p&gt;
-- @param code [ErrorCode] &lt;p&gt;The subscriber exceeded the maximum number of operations. This exception can occur when listing objects such as &lt;code&gt;DataSource&lt;/code&gt;.&lt;/p&gt;
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
-- &lt;p&gt;Represents the query results from a &lt;a&gt;DescribeDataSources&lt;/a&gt; operation. The content is essentially a list of &lt;code&gt;DataSource&lt;/code&gt;.&lt;/p&gt;
-- @param NextToken [StringType] &lt;p&gt;An ID of the next page in the paginated results that indicates at least one more page follows.&lt;/p&gt;
-- @param Results [DataSources] &lt;p&gt;A list of &lt;code&gt;DataSource&lt;/code&gt; that meet the search criteria. &lt;/p&gt;
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
-- @param GT [ComparatorValue] &lt;p&gt;The greater than operator. The &lt;code&gt;Evaluation&lt;/code&gt; results will have &lt;code&gt;FilterVariable&lt;/code&gt; values that are greater than the value specified with &lt;code&gt;GT&lt;/code&gt;.&lt;/p&gt;
-- @param FilterVariable [EvaluationFilterVariable] &lt;p&gt;Use one of the following variable to filter a list of &lt;code&gt;Evaluation&lt;/code&gt; objects:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;code&gt;CreatedAt&lt;/code&gt; - Sets the search criteria to the &lt;code&gt;Evaluation&lt;/code&gt; creation date.&lt;/li&gt; &lt;li&gt; &lt;code&gt;Status&lt;/code&gt; - Sets the search criteria to the &lt;code&gt;Evaluation&lt;/code&gt; status.&lt;/li&gt; &lt;li&gt; &lt;code&gt;Name&lt;/code&gt; - Sets the search criteria to the contents of &lt;code&gt;Evaluation&lt;/code&gt; &lt;b&gt; &lt;/b&gt; &lt;code&gt;Name&lt;/code&gt;.&lt;/li&gt; &lt;li&gt; &lt;code&gt;IAMUser&lt;/code&gt; - Sets the search criteria to the user account that invoked an &lt;code&gt;Evaluation&lt;/code&gt;.&lt;/li&gt; &lt;li&gt; &lt;code&gt;MLModelId&lt;/code&gt; - Sets the search criteria to the &lt;code&gt;MLModel&lt;/code&gt; that was evaluated.&lt;/li&gt; &lt;li&gt; &lt;code&gt;DataSourceId&lt;/code&gt; - Sets the search criteria to the &lt;code&gt;DataSource&lt;/code&gt; used in &lt;code&gt;Evaluation&lt;/code&gt;.&lt;/li&gt; &lt;li&gt; &lt;code&gt;DataUri&lt;/code&gt; - Sets the search criteria to the data file(s) used in &lt;code&gt;Evaluation&lt;/code&gt;. The URL can identify either a file or an Amazon Simple Storage Solution (Amazon S3) bucket or directory.&lt;/li&gt; &lt;/ul&gt;
-- @param GE [ComparatorValue] &lt;p&gt;The greater than or equal to operator. The &lt;code&gt;Evaluation&lt;/code&gt; results will have &lt;code&gt;FilterVariable&lt;/code&gt; values that are greater than or equal to the value specified with &lt;code&gt;GE&lt;/code&gt;. &lt;/p&gt;
-- @param NE [ComparatorValue] &lt;p&gt;The not equal to operator. The &lt;code&gt;Evaluation&lt;/code&gt; results will have &lt;code&gt;FilterVariable&lt;/code&gt; values not equal to the value specified with &lt;code&gt;NE&lt;/code&gt;.&lt;/p&gt;
-- @param LT [ComparatorValue] &lt;p&gt;The less than operator. The &lt;code&gt;Evaluation&lt;/code&gt; results will have &lt;code&gt;FilterVariable&lt;/code&gt; values that are less than the value specified with &lt;code&gt;LT&lt;/code&gt;.&lt;/p&gt;
-- @param LE [ComparatorValue] &lt;p&gt;The less than or equal to operator. The &lt;code&gt;Evaluation&lt;/code&gt; results will have &lt;code&gt;FilterVariable&lt;/code&gt; values that are less than or equal to the value specified with &lt;code&gt;LE&lt;/code&gt;.&lt;/p&gt;
-- @param Limit [PageLimit] &lt;p&gt; The maximum number of &lt;code&gt;Evaluation&lt;/code&gt; to include in the result.&lt;/p&gt;
-- @param SortOrder [SortOrder] &lt;p&gt;A two-value parameter that determines the sequence of the resulting list of &lt;code&gt;Evaluation&lt;/code&gt;.&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;code&gt;asc&lt;/code&gt; - Arranges the list in ascending order (A-Z, 0-9).&lt;/li&gt; &lt;li&gt; &lt;code&gt;dsc&lt;/code&gt; - Arranges the list in descending order (Z-A, 9-0).&lt;/li&gt; &lt;/ul&gt; &lt;p&gt;Results are sorted by &lt;code&gt;FilterVariable&lt;/code&gt;.&lt;/p&gt;
-- @param NextToken [StringType] &lt;p&gt;The ID of the page in the paginated results.&lt;/p&gt;
-- @param EQ [ComparatorValue] &lt;p&gt;The equal to operator. The &lt;code&gt;Evaluation&lt;/code&gt; results will have &lt;code&gt;FilterVariable&lt;/code&gt; values that exactly match the value specified with &lt;code&gt;EQ&lt;/code&gt;.&lt;/p&gt;
-- @param Prefix [ComparatorValue] &lt;p&gt;A string that is found at the beginning of a variable, such as &lt;code&gt;Name&lt;/code&gt; or &lt;code&gt;Id&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;For example, an &lt;code&gt;Evaluation&lt;/code&gt; could have the &lt;code&gt;Name&lt;/code&gt; &lt;code&gt;2014-09-09-HolidayGiftMailer&lt;/code&gt;. To search for this &lt;code&gt;Evaluation&lt;/code&gt;, select &lt;code&gt;Name&lt;/code&gt; for the &lt;code&gt;FilterVariable&lt;/code&gt; and any of the following strings for the &lt;code&gt;Prefix&lt;/code&gt;: &lt;/p&gt; &lt;ul&gt; &lt;li&gt;&lt;p&gt;2014-09&lt;/p&gt;&lt;/li&gt; &lt;li&gt;&lt;p&gt;2014-09-09&lt;/p&gt;&lt;/li&gt; &lt;li&gt;&lt;p&gt;2014-09-09-Holiday&lt;/p&gt;&lt;/li&gt; &lt;/ul&gt;
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
-- @param MLModelId [EntityId] &lt;p&gt;The ID of the &lt;code&gt;MLModel&lt;/code&gt; to evaluate.&lt;/p&gt; &lt;p&gt;The schema used in creating the &lt;code&gt;MLModel&lt;/code&gt; must match the schema of the &lt;code&gt;DataSource&lt;/code&gt; used in the &lt;code&gt;Evaluation&lt;/code&gt;.&lt;/p&gt;
-- @param EvaluationId [EntityId] &lt;p&gt;A user-supplied ID that uniquely identifies the &lt;code&gt;Evaluation&lt;/code&gt;.&lt;/p&gt;
-- @param EvaluationName [EntityName] &lt;p&gt;A user-supplied name or description of the &lt;code&gt;Evaluation&lt;/code&gt;.&lt;/p&gt;
-- @param EvaluationDataSourceId [EntityId] &lt;p&gt;The ID of the &lt;code&gt;DataSource&lt;/code&gt; for the evaluation. The schema of the &lt;code&gt;DataSource&lt;/code&gt; must match the schema used to create the &lt;code&gt;MLModel&lt;/code&gt;.&lt;/p&gt;
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
-- &lt;p&gt; Represents the output of a &lt;code&gt;CreateMLModel&lt;/code&gt; operation, and is an acknowledgement that Amazon ML received the request.&lt;/p&gt; &lt;p&gt;The &lt;code&gt;CreateMLModel&lt;/code&gt; operation is asynchronous. You can poll for status updates by using the &lt;code&gt;GetMLModel&lt;/code&gt; operation and checking the &lt;code&gt;Status&lt;/code&gt; parameter. &lt;/p&gt;
-- @param MLModelId [EntityId] &lt;p&gt;A user-supplied ID that uniquely identifies the &lt;code&gt;MLModel&lt;/code&gt;. This value should be identical to the value of the &lt;code&gt;MLModelId&lt;/code&gt; in the request. &lt;/p&gt;
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
-- @param DataSourceName [EntityName] &lt;p&gt;A user-supplied name or description of the &lt;code&gt;DataSource&lt;/code&gt;. &lt;/p&gt;
-- @param ComputeStatistics [ComputeStatistics] &lt;p&gt;The compute statistics for a &lt;code&gt;DataSource&lt;/code&gt;. The statistics are generated from the observation data referenced by a &lt;code&gt;DataSource&lt;/code&gt;. Amazon ML uses the statistics internally during &lt;code&gt;MLModel&lt;/code&gt; training. This parameter must be set to &lt;code&gt;true&lt;/code&gt; if the &lt;code&gt;&lt;/code&gt;DataSource&lt;code&gt;&lt;/code&gt; needs to be used for &lt;code&gt;MLModel&lt;/code&gt; training.&lt;/p&gt;
-- @param DataSourceId [EntityId] &lt;p&gt;A user-supplied identifier that uniquely identifies the &lt;code&gt;DataSource&lt;/code&gt;. &lt;/p&gt;
-- @param DataSpec [S3DataSpec] &lt;p&gt;The data specification of a &lt;code&gt;DataSource&lt;/code&gt;:&lt;/p&gt; &lt;ul&gt; &lt;li&gt;&lt;p&gt;DataLocationS3 - The Amazon S3 location of the observation data.&lt;/p&gt;&lt;/li&gt; &lt;li&gt;&lt;p&gt;DataSchemaLocationS3 - The Amazon S3 location of the &lt;code&gt;DataSchema&lt;/code&gt;.&lt;/p&gt;&lt;/li&gt; &lt;li&gt;&lt;p&gt;DataSchema - A JSON string representing the schema. This is not required if &lt;code&gt;DataSchemaUri&lt;/code&gt; is specified. &lt;/p&gt;&lt;/li&gt; &lt;li&gt; &lt;p&gt;DataRearrangement - A JSON string that represents the splitting and rearrangement requirements for the &lt;code&gt;Datasource&lt;/code&gt;. &lt;/p&gt; &lt;p&gt; Sample - &lt;code&gt; &quot;{\&quot;splitting\&quot;:{\&quot;percentBegin\&quot;:10,\&quot;percentEnd\&quot;:60}}&quot;&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
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
-- @param MLModelId [EntityId] &lt;p&gt;The ID assigned to the &lt;code&gt;MLModel&lt;/code&gt; during creation.&lt;/p&gt;
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
-- &lt;p&gt;Represents the output of a &lt;code&gt;GetDataSource&lt;/code&gt; operation and describes a &lt;code&gt;DataSource&lt;/code&gt;.&lt;/p&gt;
-- @param Status [EntityStatus] &lt;p&gt;The current status of the &lt;code&gt;DataSource&lt;/code&gt;. This element can have one of the following values:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;code&gt;PENDING&lt;/code&gt; - Amazon ML submitted a request to create a &lt;code&gt;DataSource&lt;/code&gt;.&lt;/li&gt; &lt;li&gt; &lt;code&gt;INPROGRESS&lt;/code&gt; - The creation process is underway.&lt;/li&gt; &lt;li&gt; &lt;code&gt;FAILED&lt;/code&gt; - The request to create a &lt;code&gt;DataSource&lt;/code&gt; did not run to completion. It is not usable.&lt;/li&gt; &lt;li&gt; &lt;code&gt;COMPLETED&lt;/code&gt; - The creation process completed successfully.&lt;/li&gt; &lt;li&gt; &lt;code&gt;DELETED&lt;/code&gt; - The &lt;code&gt;DataSource&lt;/code&gt; is marked as deleted. It is not usable.&lt;/li&gt; &lt;/ul&gt;
-- @param ComputeTime [LongType] &lt;p&gt;The approximate CPU time in milliseconds that Amazon Machine Learning spent processing the &lt;code&gt;DataSource&lt;/code&gt;, normalized and scaled on computation resources. &lt;code&gt;ComputeTime&lt;/code&gt; is only available if the &lt;code&gt;DataSource&lt;/code&gt; is in the &lt;code&gt;COMPLETED&lt;/code&gt; state and the &lt;code&gt;ComputeStatistics&lt;/code&gt; is set to true.&lt;/p&gt;
-- @param NumberOfFiles [LongType] &lt;p&gt;The number of data files referenced by the &lt;code&gt;DataSource&lt;/code&gt;.&lt;/p&gt;
-- @param Name [EntityName] &lt;p&gt;A user-supplied name or description of the &lt;code&gt;DataSource&lt;/code&gt;.&lt;/p&gt;
-- @param DataSourceSchema [DataSchema] &lt;p&gt;The schema used by all of the data files of this &lt;code&gt;DataSource&lt;/code&gt;.&lt;/p&gt; &lt;note&gt;&lt;title&gt;Note&lt;/title&gt; &lt;p&gt;This parameter is provided as part of the verbose format.&lt;/p&gt;&lt;/note&gt;
-- @param DataLocationS3 [S3Url] &lt;p&gt;The location of the data file or directory in Amazon Simple Storage Service (Amazon S3).&lt;/p&gt;
-- @param RoleARN [RoleARN] &lt;p&gt;Represents the output of a &lt;code&gt;GetDataSource&lt;/code&gt; operation and describes a &lt;code&gt;DataSource&lt;/code&gt;.&lt;/p&gt;
-- @param CreatedByIamUser [AwsUserArn] &lt;p&gt;The AWS user account from which the &lt;code&gt;DataSource&lt;/code&gt; was created. The account type can be either an AWS root account or an AWS Identity and Access Management (IAM) user account.&lt;/p&gt;
-- @param DataSizeInBytes [LongType] &lt;p&gt;The total size of observations in the data files.&lt;/p&gt;
-- @param RDSMetadata [RDSMetadata] &lt;p&gt;Represents the output of a &lt;code&gt;GetDataSource&lt;/code&gt; operation and describes a &lt;code&gt;DataSource&lt;/code&gt;.&lt;/p&gt;
-- @param ComputeStatistics [ComputeStatistics] &lt;p&gt; The parameter is &lt;code&gt;true&lt;/code&gt; if statistics need to be generated from the observation data. &lt;/p&gt;
-- @param LastUpdatedAt [EpochTime] &lt;p&gt;The time of the most recent edit to the &lt;code&gt;DataSource&lt;/code&gt;. The time is expressed in epoch time.&lt;/p&gt;
-- @param DataSourceId [EntityId] &lt;p&gt;The ID assigned to the &lt;code&gt;DataSource&lt;/code&gt; at creation. This value should be identical to the value of the &lt;code&gt;DataSourceId&lt;/code&gt; in the request.&lt;/p&gt;
-- @param RedshiftMetadata [RedshiftMetadata] &lt;p&gt;Represents the output of a &lt;code&gt;GetDataSource&lt;/code&gt; operation and describes a &lt;code&gt;DataSource&lt;/code&gt;.&lt;/p&gt;
-- @param StartedAt [EpochTime] &lt;p&gt;The epoch time when Amazon Machine Learning marked the &lt;code&gt;DataSource&lt;/code&gt; as &lt;code&gt;INPROGRESS&lt;/code&gt;. &lt;code&gt;StartedAt&lt;/code&gt; isn't available if the &lt;code&gt;DataSource&lt;/code&gt; is in the &lt;code&gt;PENDING&lt;/code&gt; state.&lt;/p&gt;
-- @param LogUri [PresignedS3Url] &lt;p&gt;A link to the file containing logs of &lt;code&gt;CreateDataSourceFrom*&lt;/code&gt; operations.&lt;/p&gt;
-- @param DataRearrangement [DataRearrangement] &lt;p&gt;A JSON string that represents the splitting and rearrangement requirement used when this &lt;code&gt;DataSource&lt;/code&gt; was created.&lt;/p&gt;
-- @param Message [Message] &lt;p&gt;The user-supplied description of the most recent details about creating the &lt;code&gt;DataSource&lt;/code&gt;.&lt;/p&gt;
-- @param CreatedAt [EpochTime] &lt;p&gt;The time that the &lt;code&gt;DataSource&lt;/code&gt; was created. The time is expressed in epoch time.&lt;/p&gt;
-- @param FinishedAt [EpochTime] &lt;p&gt;The epoch time when Amazon Machine Learning marked the &lt;code&gt;DataSource&lt;/code&gt; as &lt;code&gt;COMPLETED&lt;/code&gt; or &lt;code&gt;FAILED&lt;/code&gt;. &lt;code&gt;FinishedAt&lt;/code&gt; is only available when the &lt;code&gt;DataSource&lt;/code&gt; is in the &lt;code&gt;COMPLETED&lt;/code&gt; or &lt;code&gt;FAILED&lt;/code&gt; state.&lt;/p&gt;
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
-- &lt;p&gt;Represents the output of an &lt;code&gt;UpdateDataSource&lt;/code&gt; operation.&lt;/p&gt; &lt;p&gt;You can see the updated content by using the &lt;code&gt;GetBatchPrediction&lt;/code&gt; operation.&lt;/p&gt;
-- @param DataSourceId [EntityId] &lt;p&gt;The ID assigned to the &lt;code&gt;DataSource&lt;/code&gt; during creation. This value should be identical to the value of the &lt;code&gt;DataSourceID&lt;/code&gt; in the request.&lt;/p&gt;
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
-- &lt;p&gt; Represents the output of a &lt;code&gt;DeleteEvaluation&lt;/code&gt; operation. The output indicates that Amazon Machine Learning (Amazon ML) received the request.&lt;/p&gt; &lt;p&gt;You can use the &lt;code&gt;GetEvaluation&lt;/code&gt; operation and check the value of the &lt;code&gt;Status&lt;/code&gt; parameter to see whether an &lt;code&gt;Evaluation&lt;/code&gt; is marked as &lt;code&gt;DELETED&lt;/code&gt;.&lt;/p&gt;
-- @param EvaluationId [EntityId] &lt;p&gt;A user-supplied ID that uniquely identifies the &lt;code&gt;Evaluation&lt;/code&gt;. This value should be identical to the value of the &lt;code&gt;EvaluationId&lt;/code&gt; in the request.&lt;/p&gt;
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
-- &lt;p&gt; Describes the data specification of a &lt;code&gt;DataSource&lt;/code&gt;.&lt;/p&gt;
-- @param DataLocationS3 [S3Url] &lt;p&gt;The location of the data file(s) used by a &lt;code&gt;DataSource&lt;/code&gt;. The URI specifies a data file or an Amazon Simple Storage Service (Amazon S3) directory or bucket containing data files.&lt;/p&gt;
-- @param DataSchemaLocationS3 [S3Url] &lt;p&gt;Describes the schema location in Amazon S3. You must provide either the &lt;code&gt;DataSchema&lt;/code&gt; or the &lt;code&gt;DataSchemaLocationS3&lt;/code&gt;.&lt;/p&gt;
-- @param DataSchema [DataSchema] &lt;p&gt; A JSON string that represents the schema for an Amazon S3 &lt;code&gt;DataSource&lt;/code&gt;. The &lt;code&gt;DataSchema&lt;/code&gt; defines the structure of the observation data in the data file(s) referenced in the &lt;code&gt;DataSource&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;You must provide either the &lt;code&gt;DataSchema&lt;/code&gt; or the &lt;code&gt;DataSchemaLocationS3&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;Define your &lt;code&gt;DataSchema&lt;/code&gt; as a series of key-value pairs. &lt;code&gt;attributes&lt;/code&gt; and &lt;code&gt;excludedVariableNames&lt;/code&gt; have an array of key-value pairs for their value. Use the following format to define your &lt;code&gt;DataSchema&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;{ &quot;version&quot;: &quot;1.0&quot;,&lt;/p&gt; &lt;p&gt; &quot;recordAnnotationFieldName&quot;: &quot;F1&quot;,&lt;/p&gt; &lt;p&gt; &quot;recordWeightFieldName&quot;: &quot;F2&quot;,&lt;/p&gt; &lt;p&gt; &quot;targetFieldName&quot;: &quot;F3&quot;,&lt;/p&gt; &lt;p&gt; &quot;dataFormat&quot;: &quot;CSV&quot;,&lt;/p&gt; &lt;p&gt; &quot;dataFileContainsHeader&quot;: true,&lt;/p&gt; &lt;p&gt; &quot;attributes&quot;: [&lt;/p&gt; &lt;p&gt; { &quot;fieldName&quot;: &quot;F1&quot;, &quot;fieldType&quot;: &quot;TEXT&quot; }, { &quot;fieldName&quot;: &quot;F2&quot;, &quot;fieldType&quot;: &quot;NUMERIC&quot; }, { &quot;fieldName&quot;: &quot;F3&quot;, &quot;fieldType&quot;: &quot;CATEGORICAL&quot; }, { &quot;fieldName&quot;: &quot;F4&quot;, &quot;fieldType&quot;: &quot;NUMERIC&quot; }, { &quot;fieldName&quot;: &quot;F5&quot;, &quot;fieldType&quot;: &quot;CATEGORICAL&quot; }, { &quot;fieldName&quot;: &quot;F6&quot;, &quot;fieldType&quot;: &quot;TEXT&quot; }, { &quot;fieldName&quot;: &quot;F7&quot;, &quot;fieldType&quot;: &quot;WEIGHTED_INT_SEQUENCE&quot; }, { &quot;fieldName&quot;: &quot;F8&quot;, &quot;fieldType&quot;: &quot;WEIGHTED_STRING_SEQUENCE&quot; } ],&lt;/p&gt; &lt;p&gt; &quot;excludedVariableNames&quot;: [ &quot;F6&quot; ] } &lt;/p&gt; &lt;?oxy_insert_end&gt;
-- @param DataRearrangement [DataRearrangement] &lt;p&gt;A JSON string that represents the splitting and rearrangement processing to be applied to a &lt;code&gt;DataSource&lt;/code&gt;. If the &lt;code&gt;DataRearrangement&lt;/code&gt; parameter is not provided, all of the input data is used to create the &lt;code&gt;Datasource&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;There are multiple parameters that control what data is used to create a datasource:&lt;/p&gt; &lt;ul&gt; &lt;li&gt;&lt;p&gt;&lt;b&gt;&lt;code&gt;percentBegin&lt;/code&gt;&lt;/b&gt;&lt;/p&gt; &lt;p&gt;Use &lt;code&gt;percentBegin&lt;/code&gt; to indicate the beginning of the range of the data used to create the Datasource. If you do not include &lt;code&gt;percentBegin&lt;/code&gt; and &lt;code&gt;percentEnd&lt;/code&gt;, Amazon ML includes all of the data when creating the datasource.&lt;/p&gt;&lt;/li&gt; &lt;li&gt;&lt;p&gt;&lt;b&gt;&lt;code&gt;percentEnd&lt;/code&gt;&lt;/b&gt;&lt;/p&gt; &lt;p&gt;Use &lt;code&gt;percentEnd&lt;/code&gt; to indicate the end of the range of the data used to create the Datasource. If you do not include &lt;code&gt;percentBegin&lt;/code&gt; and &lt;code&gt;percentEnd&lt;/code&gt;, Amazon ML includes all of the data when creating the datasource.&lt;/p&gt;&lt;/li&gt; &lt;li&gt;&lt;p&gt;&lt;b&gt;&lt;code&gt;complement&lt;/code&gt;&lt;/b&gt;&lt;/p&gt; &lt;p&gt;The &lt;code&gt;complement&lt;/code&gt; parameter instructs Amazon ML to use the data that is not included in the range of &lt;code&gt;percentBegin&lt;/code&gt; to &lt;code&gt;percentEnd&lt;/code&gt; to create a datasource. The &lt;code&gt;complement&lt;/code&gt; parameter is useful if you need to create complementary datasources for training and evaluation. To create a complementary datasource, use the same values for &lt;code&gt;percentBegin&lt;/code&gt; and &lt;code&gt;percentEnd&lt;/code&gt;, along with the &lt;code&gt;complement&lt;/code&gt; parameter.&lt;/p&gt; &lt;p&gt;For example, the following two datasources do not share any data, and can be used to train and evaluate a model. The first datasource has 25 percent of the data, and the second one has 75 percent of the data.&lt;/p&gt; &lt;p&gt;Datasource for evaluation: &lt;code&gt;{&quot;splitting&quot;:{&quot;percentBegin&quot;:0, &quot;percentEnd&quot;:25}}&lt;/code&gt;&lt;/p&gt; &lt;p&gt;Datasource for training: &lt;code&gt;{&quot;splitting&quot;:{&quot;percentBegin&quot;:0, &quot;percentEnd&quot;:25, &quot;complement&quot;:&quot;true&quot;}}&lt;/code&gt;&lt;/p&gt; &lt;/li&gt; &lt;li&gt;&lt;p&gt;&lt;b&gt;&lt;code&gt;strategy&lt;/code&gt;&lt;/b&gt;&lt;/p&gt; &lt;p&gt;To change how Amazon ML splits the data for a datasource, use the &lt;code&gt;strategy&lt;/code&gt; parameter.&lt;/p&gt; &lt;p&gt;The default value for the &lt;code&gt;strategy&lt;/code&gt; parameter is &lt;code&gt;sequential&lt;/code&gt;, meaning that Amazon ML takes all of the data records between the &lt;code&gt;percentBegin&lt;/code&gt; and &lt;code&gt;percentEnd&lt;/code&gt; parameters for the datasource, in the order that the records appear in the input data.&lt;/p&gt; &lt;p&gt;The following two &lt;code&gt;DataRearrangement&lt;/code&gt; lines are examples of sequentially ordered training and evaluation datasources:&lt;/p&gt; &lt;p&gt;Datasource for evaluation: &lt;code&gt;{&quot;splitting&quot;:{&quot;percentBegin&quot;:70, &quot;percentEnd&quot;:100, &quot;strategy&quot;:&quot;sequential&quot;}}&lt;/code&gt;&lt;/p&gt; &lt;p&gt;Datasource for training: &lt;code&gt;{&quot;splitting&quot;:{&quot;percentBegin&quot;:70, &quot;percentEnd&quot;:100, &quot;strategy&quot;:&quot;sequential&quot;, &quot;complement&quot;:&quot;true&quot;}}&lt;/code&gt;&lt;/p&gt; &lt;p&gt;To randomly split the input data into the proportions indicated by the percentBegin and percentEnd parameters, set the &lt;code&gt;strategy&lt;/code&gt; parameter to &lt;code&gt;random&lt;/code&gt; and provide a string that is used as the seed value for the random data splitting (for example, you can use the S3 path to your data as the random seed string). If you choose the random split strategy, Amazon ML assigns each row of data a pseudo-random number between 0 and 100, and then selects the rows that have an assigned number between &lt;code&gt;percentBegin&lt;/code&gt; and &lt;code&gt;percentEnd&lt;/code&gt;. Pseudo-random numbers are assigned using both the input seed string value and the byte offset as a seed, so changing the data results in a different split. Any existing ordering is preserved. The random splitting strategy ensures that variables in the training and evaluation data are distributed similarly. It is useful in the cases where the input data may have an implicit sort order, which would otherwise result in training and evaluation datasources containing non-similar data records.&lt;/p&gt; &lt;p&gt;The following two &lt;code&gt;DataRearrangement&lt;/code&gt; lines are examples of non-sequentially ordered training and evaluation datasources:&lt;/p&gt; &lt;p&gt;Datasource for evaluation: &lt;code&gt;{&quot;splitting&quot;:{&quot;percentBegin&quot;:70, &quot;percentEnd&quot;:100, &quot;strategy&quot;:&quot;random&quot;, &quot;randomSeed&quot;=&quot;s3://my_s3_path/bucket/file.csv&quot;}}&lt;/code&gt;&lt;/p&gt; &lt;p&gt;Datasource for training: &lt;code&gt;{&quot;splitting&quot;:{&quot;percentBegin&quot;:70, &quot;percentEnd&quot;:100, &quot;strategy&quot;:&quot;random&quot;, &quot;randomSeed&quot;=&quot;s3://my_s3_path/bucket/file.csv&quot;, &quot;complement&quot;:&quot;true&quot;}}&lt;/code&gt;&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
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
-- &lt;p&gt;Represents the output of a &lt;code&gt;DeleteMLModel&lt;/code&gt; operation.&lt;/p&gt; &lt;p&gt;You can use the &lt;code&gt;GetMLModel&lt;/code&gt; operation and check the value of the &lt;code&gt;Status&lt;/code&gt; parameter to see whether an &lt;code&gt;MLModel&lt;/code&gt; is marked as &lt;code&gt;DELETED&lt;/code&gt;.&lt;/p&gt;
-- @param MLModelId [EntityId] &lt;p&gt;A user-supplied ID that uniquely identifies the &lt;code&gt;MLModel&lt;/code&gt;. This value should be identical to the value of the &lt;code&gt;MLModelID&lt;/code&gt; in the request.&lt;/p&gt;
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
-- &lt;p&gt;Describes the database details required to connect to an Amazon Redshift database.&lt;/p&gt;
-- @param ClusterIdentifier [RedshiftClusterIdentifier] &lt;p&gt;Describes the database details required to connect to an Amazon Redshift database.&lt;/p&gt;
-- @param DatabaseName [RedshiftDatabaseName] &lt;p&gt;Describes the database details required to connect to an Amazon Redshift database.&lt;/p&gt;
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
-- @param MLModelId [EntityId] &lt;p&gt;The ID of the &lt;code&gt;MLModel&lt;/code&gt; that will generate predictions for the group of observations. &lt;/p&gt;
-- @param BatchPredictionId [EntityId] &lt;p&gt;A user-supplied ID that uniquely identifies the &lt;code&gt;BatchPrediction&lt;/code&gt;.&lt;/p&gt;
-- @param BatchPredictionDataSourceId [EntityId] &lt;p&gt;The ID of the &lt;code&gt;DataSource&lt;/code&gt; that points to the group of observations to predict.&lt;/p&gt;
-- @param OutputUri [S3Url] &lt;p&gt;The location of an Amazon Simple Storage Service (Amazon S3) bucket or directory to store the batch prediction results. The following substrings are not allowed in the &lt;code&gt;s3 key&lt;/code&gt; portion of the &lt;code&gt;outputURI&lt;/code&gt; field: ':', '//', '/./', '/../'.&lt;/p&gt; &lt;p&gt;Amazon ML needs permissions to store and retrieve the logs on your behalf. For information about how to set permissions, see the &lt;a href=&quot;http://docs.aws.amazon.com/machine-learning/latest/dg&quot;&gt;Amazon Machine Learning Developer Guide&lt;/a&gt;.&lt;/p&gt;
-- @param BatchPredictionName [EntityName] &lt;p&gt;A user-supplied name or description of the &lt;code&gt;BatchPrediction&lt;/code&gt;. &lt;code&gt;BatchPredictionName&lt;/code&gt; can only use the UTF-8 character set.&lt;/p&gt;
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
-- &lt;p&gt;Represents the output of a &lt;code&gt;DescribeBatchPredictions&lt;/code&gt; operation. The content is essentially a list of &lt;code&gt;BatchPrediction&lt;/code&gt;s.&lt;/p&gt;
-- @param NextToken [StringType] &lt;p&gt;The ID of the next page in the paginated results that indicates at least one more page follows.&lt;/p&gt;
-- @param Results [BatchPredictions] &lt;p&gt;A list of &lt;code&gt;BatchPrediction&lt;/code&gt; objects that meet the search criteria. &lt;/p&gt;
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
-- &lt;p&gt; Describes the real-time endpoint information for an &lt;code&gt;MLModel&lt;/code&gt;.&lt;/p&gt;
-- @param EndpointStatus [RealtimeEndpointStatus] &lt;p&gt; The current status of the real-time endpoint for the &lt;code&gt;MLModel&lt;/code&gt;. This element can have one of the following values: &lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;code&gt;NONE&lt;/code&gt; - Endpoint does not exist or was previously deleted.&lt;/li&gt; &lt;li&gt; &lt;code&gt;READY&lt;/code&gt; - Endpoint is ready to be used for real-time predictions.&lt;/li&gt; &lt;li&gt; &lt;code&gt;UPDATING&lt;/code&gt; - Updating/creating the endpoint. &lt;/li&gt; &lt;/ul&gt;
-- @param PeakRequestsPerSecond [IntegerType] &lt;p&gt; The maximum processing rate for the real-time endpoint for &lt;code&gt;MLModel&lt;/code&gt;, measured in incoming requests per second.&lt;/p&gt;
-- @param CreatedAt [EpochTime] &lt;p&gt;The time that the request to create the real-time endpoint for the &lt;code&gt;MLModel&lt;/code&gt; was received. The time is expressed in epoch time.&lt;/p&gt;
-- @param EndpointUrl [VipURL] &lt;p&gt;The URI that specifies where to send real-time prediction requests for the &lt;code&gt;MLModel&lt;/code&gt;.&lt;/p&gt; &lt;note&gt;&lt;title&gt;Note&lt;/title&gt; &lt;p&gt;The application must wait until the real-time endpoint is ready before using this URI.&lt;/p&gt; &lt;/note&gt;
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
-- &lt;p&gt;Represents the output of a &lt;code&gt;DescribeMLModels&lt;/code&gt; operation. The content is essentially a list of &lt;code&gt;MLModel&lt;/code&gt;.&lt;/p&gt;
-- @param NextToken [StringType] &lt;p&gt;The ID of the next page in the paginated results that indicates at least one more page follows.&lt;/p&gt;
-- @param Results [MLModels] &lt;p&gt;A list of &lt;code&gt;MLModel&lt;/code&gt; that meet the search criteria.&lt;/p&gt;
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
-- &lt;p&gt; Represents the output of the &lt;code&gt;GetDataSource&lt;/code&gt; operation. &lt;/p&gt; &lt;p&gt; The content consists of the detailed metadata and data file information and the current status of the &lt;code&gt;DataSource&lt;/code&gt;. &lt;/p&gt;
-- @param Status [EntityStatus] &lt;p&gt;The current status of the &lt;code&gt;DataSource&lt;/code&gt;. This element can have one of the following values: &lt;/p&gt; &lt;ul&gt; &lt;li&gt;PENDING - Amazon Machine Learning (Amazon ML) submitted a request to create a &lt;code&gt;DataSource&lt;/code&gt;.&lt;/li&gt; &lt;li&gt;INPROGRESS - The creation process is underway.&lt;/li&gt; &lt;li&gt;FAILED - The request to create a &lt;code&gt;DataSource&lt;/code&gt; did not run to completion. It is not usable.&lt;/li&gt; &lt;li&gt;COMPLETED - The creation process completed successfully.&lt;/li&gt; &lt;li&gt;DELETED - The &lt;code&gt;DataSource&lt;/code&gt; is marked as deleted. It is not usable.&lt;/li&gt; &lt;/ul&gt;
-- @param ComputeTime [LongType] &lt;p&gt; Represents the output of the &lt;code&gt;GetDataSource&lt;/code&gt; operation. &lt;/p&gt; &lt;p&gt; The content consists of the detailed metadata and data file information and the current status of the &lt;code&gt;DataSource&lt;/code&gt;. &lt;/p&gt;
-- @param NumberOfFiles [LongType] &lt;p&gt;The number of data files referenced by the &lt;code&gt;DataSource&lt;/code&gt;.&lt;/p&gt;
-- @param Name [EntityName] &lt;p&gt;A user-supplied name or description of the &lt;code&gt;DataSource&lt;/code&gt;.&lt;/p&gt;
-- @param DataLocationS3 [S3Url] &lt;p&gt;The location and name of the data in Amazon Simple Storage Service (Amazon S3) that is used by a &lt;code&gt;DataSource&lt;/code&gt;.&lt;/p&gt;
-- @param RoleARN [RoleARN] &lt;p&gt; Represents the output of the &lt;code&gt;GetDataSource&lt;/code&gt; operation. &lt;/p&gt; &lt;p&gt; The content consists of the detailed metadata and data file information and the current status of the &lt;code&gt;DataSource&lt;/code&gt;. &lt;/p&gt;
-- @param CreatedByIamUser [AwsUserArn] &lt;p&gt;The AWS user account from which the &lt;code&gt;DataSource&lt;/code&gt; was created. The account type can be either an AWS root account or an AWS Identity and Access Management (IAM) user account.&lt;/p&gt;
-- @param DataSizeInBytes [LongType] &lt;p&gt;The total number of observations contained in the data files that the &lt;code&gt;DataSource&lt;/code&gt; references.&lt;/p&gt;
-- @param RDSMetadata [RDSMetadata] &lt;p&gt; Represents the output of the &lt;code&gt;GetDataSource&lt;/code&gt; operation. &lt;/p&gt; &lt;p&gt; The content consists of the detailed metadata and data file information and the current status of the &lt;code&gt;DataSource&lt;/code&gt;. &lt;/p&gt;
-- @param ComputeStatistics [ComputeStatistics] &lt;p&gt; The parameter is &lt;code&gt;true&lt;/code&gt; if statistics need to be generated from the observation data. &lt;/p&gt;
-- @param LastUpdatedAt [EpochTime] &lt;p&gt;The time of the most recent edit to the &lt;code&gt;BatchPrediction&lt;/code&gt;. The time is expressed in epoch time.&lt;/p&gt;
-- @param DataSourceId [EntityId] &lt;p&gt;The ID that is assigned to the &lt;code&gt;DataSource&lt;/code&gt; during creation.&lt;/p&gt;
-- @param RedshiftMetadata [RedshiftMetadata] &lt;p&gt; Represents the output of the &lt;code&gt;GetDataSource&lt;/code&gt; operation. &lt;/p&gt; &lt;p&gt; The content consists of the detailed metadata and data file information and the current status of the &lt;code&gt;DataSource&lt;/code&gt;. &lt;/p&gt;
-- @param StartedAt [EpochTime] &lt;p&gt; Represents the output of the &lt;code&gt;GetDataSource&lt;/code&gt; operation. &lt;/p&gt; &lt;p&gt; The content consists of the detailed metadata and data file information and the current status of the &lt;code&gt;DataSource&lt;/code&gt;. &lt;/p&gt;
-- @param Message [Message] &lt;p&gt;A description of the most recent details about creating the &lt;code&gt;DataSource&lt;/code&gt;.&lt;/p&gt;
-- @param DataRearrangement [DataRearrangement] &lt;p&gt;A JSON string that represents the splitting and rearrangement requirement used when this &lt;code&gt;DataSource&lt;/code&gt; was created.&lt;/p&gt;
-- @param CreatedAt [EpochTime] &lt;p&gt;The time that the &lt;code&gt;DataSource&lt;/code&gt; was created. The time is expressed in epoch time.&lt;/p&gt;
-- @param FinishedAt [EpochTime] &lt;p&gt; Represents the output of the &lt;code&gt;GetDataSource&lt;/code&gt; operation. &lt;/p&gt; &lt;p&gt; The content consists of the detailed metadata and data file information and the current status of the &lt;code&gt;DataSource&lt;/code&gt;. &lt;/p&gt;
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
-- @param MLModelId [EntityId] &lt;p&gt;The ID assigned to the &lt;code&gt;MLModel&lt;/code&gt; during creation.&lt;/p&gt;
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
-- &lt;p&gt;The data specification of an Amazon Relational Database Service (Amazon RDS) &lt;code&gt;DataSource&lt;/code&gt;.&lt;/p&gt;
-- @param DatabaseCredentials [RDSDatabaseCredentials] &lt;p&gt;The AWS Identity and Access Management (IAM) credentials that are used connect to the Amazon RDS database.&lt;/p&gt;
-- @param DataSchemaUri [S3Url] &lt;p&gt;The Amazon S3 location of the &lt;code&gt;DataSchema&lt;/code&gt;. &lt;/p&gt;
-- @param ServiceRole [EDPServiceRole] &lt;p&gt;The role (DataPipelineDefaultRole) assumed by AWS Data Pipeline service to monitor the progress of the copy task from Amazon RDS to Amazon S3. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-iam-roles.html&quot;&gt;Role templates&lt;/a&gt; for data pipelines.&lt;/p&gt;
-- @param ResourceRole [EDPResourceRole] &lt;p&gt;The role (DataPipelineDefaultResourceRole) assumed by an Amazon Elastic Compute Cloud (Amazon EC2) instance to carry out the copy operation from Amazon RDS to an Amazon S3 task. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-iam-roles.html&quot;&gt;Role templates&lt;/a&gt; for data pipelines.&lt;/p&gt;
-- @param DatabaseInformation [RDSDatabase] &lt;p&gt;Describes the &lt;code&gt;DatabaseName&lt;/code&gt; and &lt;code&gt;InstanceIdentifier&lt;/code&gt; of an Amazon RDS database.&lt;/p&gt;
-- @param SecurityGroupIds [EDPSecurityGroupIds] &lt;p&gt;The security group IDs to be used to access a VPC-based RDS DB instance. Ensure that there are appropriate ingress rules set up to allow access to the RDS DB instance. This attribute is used by Data Pipeline to carry out the copy operation from Amazon RDS to an Amazon S3 task.&lt;/p&gt;
-- @param SubnetId [EDPSubnetId] &lt;p&gt;The subnet ID to be used to access a VPC-based RDS DB instance. This attribute is used by Data Pipeline to carry out the copy task from Amazon RDS to Amazon S3.&lt;/p&gt;
-- @param DataSchema [DataSchema] &lt;p&gt;A JSON string that represents the schema for an Amazon RDS &lt;code&gt;DataSource&lt;/code&gt;. The &lt;code&gt;DataSchema&lt;/code&gt; defines the structure of the observation data in the data file(s) referenced in the &lt;code&gt;DataSource&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;A &lt;code&gt;DataSchema&lt;/code&gt; is not required if you specify a &lt;code&gt;DataSchemaUri&lt;/code&gt;&lt;/p&gt; &lt;p&gt;Define your &lt;code&gt;DataSchema&lt;/code&gt; as a series of key-value pairs. &lt;code&gt;attributes&lt;/code&gt; and &lt;code&gt;excludedVariableNames&lt;/code&gt; have an array of key-value pairs for their value. Use the following format to define your &lt;code&gt;DataSchema&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;{ &quot;version&quot;: &quot;1.0&quot;,&lt;/p&gt; &lt;p&gt; &quot;recordAnnotationFieldName&quot;: &quot;F1&quot;,&lt;/p&gt; &lt;p&gt; &quot;recordWeightFieldName&quot;: &quot;F2&quot;,&lt;/p&gt; &lt;p&gt; &quot;targetFieldName&quot;: &quot;F3&quot;,&lt;/p&gt; &lt;p&gt; &quot;dataFormat&quot;: &quot;CSV&quot;,&lt;/p&gt; &lt;p&gt; &quot;dataFileContainsHeader&quot;: true,&lt;/p&gt; &lt;p&gt; &quot;attributes&quot;: [&lt;/p&gt; &lt;p&gt; { &quot;fieldName&quot;: &quot;F1&quot;, &quot;fieldType&quot;: &quot;TEXT&quot; }, { &quot;fieldName&quot;: &quot;F2&quot;, &quot;fieldType&quot;: &quot;NUMERIC&quot; }, { &quot;fieldName&quot;: &quot;F3&quot;, &quot;fieldType&quot;: &quot;CATEGORICAL&quot; }, { &quot;fieldName&quot;: &quot;F4&quot;, &quot;fieldType&quot;: &quot;NUMERIC&quot; }, { &quot;fieldName&quot;: &quot;F5&quot;, &quot;fieldType&quot;: &quot;CATEGORICAL&quot; }, { &quot;fieldName&quot;: &quot;F6&quot;, &quot;fieldType&quot;: &quot;TEXT&quot; }, { &quot;fieldName&quot;: &quot;F7&quot;, &quot;fieldType&quot;: &quot;WEIGHTED_INT_SEQUENCE&quot; }, { &quot;fieldName&quot;: &quot;F8&quot;, &quot;fieldType&quot;: &quot;WEIGHTED_STRING_SEQUENCE&quot; } ],&lt;/p&gt; &lt;p&gt; &quot;excludedVariableNames&quot;: [ &quot;F6&quot; ] } &lt;/p&gt; &lt;?oxy_insert_end&gt;
-- @param DataRearrangement [DataRearrangement] &lt;p&gt;A JSON string that represents the splitting and rearrangement processing to be applied to a &lt;code&gt;DataSource&lt;/code&gt;. If the &lt;code&gt;DataRearrangement&lt;/code&gt; parameter is not provided, all of the input data is used to create the &lt;code&gt;Datasource&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;There are multiple parameters that control what data is used to create a datasource:&lt;/p&gt; &lt;ul&gt; &lt;li&gt;&lt;p&gt;&lt;b&gt;&lt;code&gt;percentBegin&lt;/code&gt;&lt;/b&gt;&lt;/p&gt; &lt;p&gt;Use &lt;code&gt;percentBegin&lt;/code&gt; to indicate the beginning of the range of the data used to create the Datasource. If you do not include &lt;code&gt;percentBegin&lt;/code&gt; and &lt;code&gt;percentEnd&lt;/code&gt;, Amazon ML includes all of the data when creating the datasource.&lt;/p&gt;&lt;/li&gt; &lt;li&gt;&lt;p&gt;&lt;b&gt;&lt;code&gt;percentEnd&lt;/code&gt;&lt;/b&gt;&lt;/p&gt; &lt;p&gt;Use &lt;code&gt;percentEnd&lt;/code&gt; to indicate the end of the range of the data used to create the Datasource. If you do not include &lt;code&gt;percentBegin&lt;/code&gt; and &lt;code&gt;percentEnd&lt;/code&gt;, Amazon ML includes all of the data when creating the datasource.&lt;/p&gt;&lt;/li&gt; &lt;li&gt;&lt;p&gt;&lt;b&gt;&lt;code&gt;complement&lt;/code&gt;&lt;/b&gt;&lt;/p&gt; &lt;p&gt;The &lt;code&gt;complement&lt;/code&gt; parameter instructs Amazon ML to use the data that is not included in the range of &lt;code&gt;percentBegin&lt;/code&gt; to &lt;code&gt;percentEnd&lt;/code&gt; to create a datasource. The &lt;code&gt;complement&lt;/code&gt; parameter is useful if you need to create complementary datasources for training and evaluation. To create a complementary datasource, use the same values for &lt;code&gt;percentBegin&lt;/code&gt; and &lt;code&gt;percentEnd&lt;/code&gt;, along with the &lt;code&gt;complement&lt;/code&gt; parameter.&lt;/p&gt; &lt;p&gt;For example, the following two datasources do not share any data, and can be used to train and evaluate a model. The first datasource has 25 percent of the data, and the second one has 75 percent of the data.&lt;/p&gt; &lt;p&gt;Datasource for evaluation: &lt;code&gt;{&quot;splitting&quot;:{&quot;percentBegin&quot;:0, &quot;percentEnd&quot;:25}}&lt;/code&gt;&lt;/p&gt; &lt;p&gt;Datasource for training: &lt;code&gt;{&quot;splitting&quot;:{&quot;percentBegin&quot;:0, &quot;percentEnd&quot;:25, &quot;complement&quot;:&quot;true&quot;}}&lt;/code&gt;&lt;/p&gt; &lt;/li&gt; &lt;li&gt;&lt;p&gt;&lt;b&gt;&lt;code&gt;strategy&lt;/code&gt;&lt;/b&gt;&lt;/p&gt; &lt;p&gt;To change how Amazon ML splits the data for a datasource, use the &lt;code&gt;strategy&lt;/code&gt; parameter.&lt;/p&gt; &lt;p&gt;The default value for the &lt;code&gt;strategy&lt;/code&gt; parameter is &lt;code&gt;sequential&lt;/code&gt;, meaning that Amazon ML takes all of the data records between the &lt;code&gt;percentBegin&lt;/code&gt; and &lt;code&gt;percentEnd&lt;/code&gt; parameters for the datasource, in the order that the records appear in the input data.&lt;/p&gt; &lt;p&gt;The following two &lt;code&gt;DataRearrangement&lt;/code&gt; lines are examples of sequentially ordered training and evaluation datasources:&lt;/p&gt; &lt;p&gt;Datasource for evaluation: &lt;code&gt;{&quot;splitting&quot;:{&quot;percentBegin&quot;:70, &quot;percentEnd&quot;:100, &quot;strategy&quot;:&quot;sequential&quot;}}&lt;/code&gt;&lt;/p&gt; &lt;p&gt;Datasource for training: &lt;code&gt;{&quot;splitting&quot;:{&quot;percentBegin&quot;:70, &quot;percentEnd&quot;:100, &quot;strategy&quot;:&quot;sequential&quot;, &quot;complement&quot;:&quot;true&quot;}}&lt;/code&gt;&lt;/p&gt; &lt;p&gt;To randomly split the input data into the proportions indicated by the percentBegin and percentEnd parameters, set the &lt;code&gt;strategy&lt;/code&gt; parameter to &lt;code&gt;random&lt;/code&gt; and provide a string that is used as the seed value for the random data splitting (for example, you can use the S3 path to your data as the random seed string). If you choose the random split strategy, Amazon ML assigns each row of data a pseudo-random number between 0 and 100, and then selects the rows that have an assigned number between &lt;code&gt;percentBegin&lt;/code&gt; and &lt;code&gt;percentEnd&lt;/code&gt;. Pseudo-random numbers are assigned using both the input seed string value and the byte offset as a seed, so changing the data results in a different split. Any existing ordering is preserved. The random splitting strategy ensures that variables in the training and evaluation data are distributed similarly. It is useful in the cases where the input data may have an implicit sort order, which would otherwise result in training and evaluation datasources containing non-similar data records.&lt;/p&gt; &lt;p&gt;The following two &lt;code&gt;DataRearrangement&lt;/code&gt; lines are examples of non-sequentially ordered training and evaluation datasources:&lt;/p&gt; &lt;p&gt;Datasource for evaluation: &lt;code&gt;{&quot;splitting&quot;:{&quot;percentBegin&quot;:70, &quot;percentEnd&quot;:100, &quot;strategy&quot;:&quot;random&quot;, &quot;randomSeed&quot;=&quot;s3://my_s3_path/bucket/file.csv&quot;}}&lt;/code&gt;&lt;/p&gt; &lt;p&gt;Datasource for training: &lt;code&gt;{&quot;splitting&quot;:{&quot;percentBegin&quot;:70, &quot;percentEnd&quot;:100, &quot;strategy&quot;:&quot;random&quot;, &quot;randomSeed&quot;=&quot;s3://my_s3_path/bucket/file.csv&quot;, &quot;complement&quot;:&quot;true&quot;}}&lt;/code&gt;&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param S3StagingLocation [S3Url] &lt;p&gt;The Amazon S3 location for staging Amazon RDS data. The data retrieved from Amazon RDS using &lt;code&gt;SelectSqlQuery&lt;/code&gt; is stored in this location.&lt;/p&gt;
-- @param SelectSqlQuery [RDSSelectSqlQuery] &lt;p&gt;The query that is used to retrieve the observation data for the &lt;code&gt;DataSource&lt;/code&gt;.&lt;/p&gt;
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
-- @param MLModelId [EntityId] &lt;p&gt;The ID assigned to the &lt;code&gt;MLModel&lt;/code&gt; at creation.&lt;/p&gt;
-- @param Verbose [Verbose] &lt;p&gt;Specifies whether the &lt;code&gt;GetMLModel&lt;/code&gt; operation should return &lt;code&gt;Recipe&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;If true, &lt;code&gt;Recipe&lt;/code&gt; is returned.&lt;/p&gt; &lt;p&gt;If false, &lt;code&gt;Recipe&lt;/code&gt; is not returned.&lt;/p&gt;
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
-- &lt;p&gt;Represents the output of an &lt;code&gt;DeleteRealtimeEndpoint&lt;/code&gt; operation.&lt;/p&gt; &lt;p&gt;The result contains the &lt;code&gt;MLModelId&lt;/code&gt; and the endpoint information for the &lt;code&gt;MLModel&lt;/code&gt;. &lt;/p&gt;
-- @param MLModelId [EntityId] &lt;p&gt;A user-supplied ID that uniquely identifies the &lt;code&gt;MLModel&lt;/code&gt;. This value should be identical to the value of the &lt;code&gt;MLModelId&lt;/code&gt; in the request.&lt;/p&gt;
-- @param RealtimeEndpointInfo [RealtimeEndpointInfo] &lt;p&gt;The endpoint information of the &lt;code&gt;MLModel&lt;/code&gt; &lt;/p&gt;
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
-- &lt;p&gt; Represents the output of a &lt;code&gt;GetBatchPrediction&lt;/code&gt; operation.&lt;/p&gt; &lt;p&gt; The content consists of the detailed metadata, the status, and the data file information of a &lt;code&gt;Batch Prediction&lt;/code&gt;.&lt;/p&gt;
-- @param Status [EntityStatus] &lt;p&gt;The status of the &lt;code&gt;BatchPrediction&lt;/code&gt;. This element can have one of the following values:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;code&gt;PENDING&lt;/code&gt; - Amazon Machine Learning (Amazon ML) submitted a request to generate predictions for a batch of observations.&lt;/li&gt; &lt;li&gt; &lt;code&gt;INPROGRESS&lt;/code&gt; - The process is underway.&lt;/li&gt; &lt;li&gt; &lt;code&gt;FAILED&lt;/code&gt; - The request to perform a batch prediction did not run to completion. It is not usable.&lt;/li&gt; &lt;li&gt; &lt;code&gt;COMPLETED&lt;/code&gt; - The batch prediction process completed successfully.&lt;/li&gt; &lt;li&gt; &lt;code&gt;DELETED&lt;/code&gt; - The &lt;code&gt;BatchPrediction&lt;/code&gt; is marked as deleted. It is not usable.&lt;/li&gt; &lt;/ul&gt;
-- @param ComputeTime [LongType] &lt;p&gt; Represents the output of a &lt;code&gt;GetBatchPrediction&lt;/code&gt; operation.&lt;/p&gt; &lt;p&gt; The content consists of the detailed metadata, the status, and the data file information of a &lt;code&gt;Batch Prediction&lt;/code&gt;.&lt;/p&gt;
-- @param Name [EntityName] &lt;p&gt;A user-supplied name or description of the &lt;code&gt;BatchPrediction&lt;/code&gt;.&lt;/p&gt;
-- @param InputDataLocationS3 [S3Url] &lt;p&gt;The location of the data file or directory in Amazon Simple Storage Service (Amazon S3).&lt;/p&gt;
-- @param InvalidRecordCount [LongType] &lt;p&gt; Represents the output of a &lt;code&gt;GetBatchPrediction&lt;/code&gt; operation.&lt;/p&gt; &lt;p&gt; The content consists of the detailed metadata, the status, and the data file information of a &lt;code&gt;Batch Prediction&lt;/code&gt;.&lt;/p&gt;
-- @param CreatedByIamUser [AwsUserArn] &lt;p&gt;The AWS user account that invoked the &lt;code&gt;BatchPrediction&lt;/code&gt;. The account type can be either an AWS root account or an AWS Identity and Access Management (IAM) user account.&lt;/p&gt;
-- @param MLModelId [EntityId] &lt;p&gt;The ID of the &lt;code&gt;MLModel&lt;/code&gt; that generated predictions for the &lt;code&gt;BatchPrediction&lt;/code&gt; request.&lt;/p&gt;
-- @param TotalRecordCount [LongType] &lt;p&gt; Represents the output of a &lt;code&gt;GetBatchPrediction&lt;/code&gt; operation.&lt;/p&gt; &lt;p&gt; The content consists of the detailed metadata, the status, and the data file information of a &lt;code&gt;Batch Prediction&lt;/code&gt;.&lt;/p&gt;
-- @param LastUpdatedAt [EpochTime] &lt;p&gt;The time of the most recent edit to the &lt;code&gt;BatchPrediction&lt;/code&gt;. The time is expressed in epoch time.&lt;/p&gt;
-- @param BatchPredictionDataSourceId [EntityId] &lt;p&gt;The ID of the &lt;code&gt;DataSource&lt;/code&gt; that points to the group of observations to predict.&lt;/p&gt;
-- @param OutputUri [S3Url] &lt;p&gt;The location of an Amazon S3 bucket or directory to receive the operation results. The following substrings are not allowed in the &lt;code&gt;s3 key&lt;/code&gt; portion of the &lt;code&gt;outputURI&lt;/code&gt; field: ':', '//', '/./', '/../'.&lt;/p&gt;
-- @param StartedAt [EpochTime] &lt;p&gt; Represents the output of a &lt;code&gt;GetBatchPrediction&lt;/code&gt; operation.&lt;/p&gt; &lt;p&gt; The content consists of the detailed metadata, the status, and the data file information of a &lt;code&gt;Batch Prediction&lt;/code&gt;.&lt;/p&gt;
-- @param BatchPredictionId [EntityId] &lt;p&gt;The ID assigned to the &lt;code&gt;BatchPrediction&lt;/code&gt; at creation. This value should be identical to the value of the &lt;code&gt;BatchPredictionID&lt;/code&gt; in the request. &lt;/p&gt;
-- @param Message [Message] &lt;p&gt;A description of the most recent details about processing the batch prediction request.&lt;/p&gt;
-- @param CreatedAt [EpochTime] &lt;p&gt;The time that the &lt;code&gt;BatchPrediction&lt;/code&gt; was created. The time is expressed in epoch time.&lt;/p&gt;
-- @param FinishedAt [EpochTime] &lt;p&gt; Represents the output of a &lt;code&gt;GetBatchPrediction&lt;/code&gt; operation.&lt;/p&gt; &lt;p&gt; The content consists of the detailed metadata, the status, and the data file information of a &lt;code&gt;Batch Prediction&lt;/code&gt;.&lt;/p&gt;
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
-- @param DataSourceName [EntityName] &lt;p&gt;A user-supplied name or description of the &lt;code&gt;DataSource&lt;/code&gt;.&lt;/p&gt;
-- @param RDSData [RDSDataSpec] &lt;p&gt;The data specification of an Amazon RDS &lt;code&gt;DataSource&lt;/code&gt;:&lt;/p&gt; &lt;ul&gt; &lt;li&gt;&lt;p&gt;DatabaseInformation - &lt;ul&gt; &lt;li&gt; &lt;code&gt;DatabaseName&lt;/code&gt; - The name of the Amazon RDS database.&lt;/li&gt; &lt;li&gt; &lt;code&gt;InstanceIdentifier &lt;/code&gt; - A unique identifier for the Amazon RDS database instance.&lt;/li&gt; &lt;/ul&gt; &lt;/p&gt;&lt;/li&gt; &lt;li&gt;&lt;p&gt;DatabaseCredentials - AWS Identity and Access Management (IAM) credentials that are used to connect to the Amazon RDS database.&lt;/p&gt;&lt;/li&gt; &lt;li&gt;&lt;p&gt;ResourceRole - A role (DataPipelineDefaultResourceRole) assumed by an EC2 instance to carry out the copy task from Amazon RDS to Amazon Simple Storage Service (Amazon S3). For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-iam-roles.html&quot;&gt;Role templates&lt;/a&gt; for data pipelines.&lt;/p&gt;&lt;/li&gt; &lt;li&gt;&lt;p&gt;ServiceRole - A role (DataPipelineDefaultRole) assumed by the AWS Data Pipeline service to monitor the progress of the copy task from Amazon RDS to Amazon S3. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-iam-roles.html&quot;&gt;Role templates&lt;/a&gt; for data pipelines.&lt;/p&gt;&lt;/li&gt; &lt;li&gt;&lt;p&gt;SecurityInfo - The security information to use to access an RDS DB instance. You need to set up appropriate ingress rules for the security entity IDs provided to allow access to the Amazon RDS instance. Specify a [&lt;code&gt;SubnetId&lt;/code&gt;, &lt;code&gt;SecurityGroupIds&lt;/code&gt;] pair for a VPC-based RDS DB instance.&lt;/p&gt;&lt;/li&gt; &lt;li&gt;&lt;p&gt;SelectSqlQuery - A query that is used to retrieve the observation data for the &lt;code&gt;Datasource&lt;/code&gt;.&lt;/p&gt;&lt;/li&gt; &lt;li&gt;&lt;p&gt;S3StagingLocation - The Amazon S3 location for staging Amazon RDS data. The data retrieved from Amazon RDS using &lt;code&gt;SelectSqlQuery&lt;/code&gt; is stored in this location.&lt;/p&gt;&lt;/li&gt; &lt;li&gt;&lt;p&gt;DataSchemaUri - The Amazon S3 location of the &lt;code&gt;DataSchema&lt;/code&gt;.&lt;/p&gt;&lt;/li&gt; &lt;li&gt;&lt;p&gt;DataSchema - A JSON string representing the schema. This is not required if &lt;code&gt;DataSchemaUri&lt;/code&gt; is specified. &lt;/p&gt;&lt;/li&gt; &lt;li&gt; &lt;p&gt;DataRearrangement - A JSON string that represents the splitting and rearrangement requirements for the &lt;code&gt;Datasource&lt;/code&gt;. &lt;/p&gt; &lt;br&gt; &lt;p&gt; Sample - &lt;code&gt; &quot;{\&quot;splitting\&quot;:{\&quot;percentBegin\&quot;:10,\&quot;percentEnd\&quot;:60}}&quot;&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param ComputeStatistics [ComputeStatistics] &lt;p&gt;The compute statistics for a &lt;code&gt;DataSource&lt;/code&gt;. The statistics are generated from the observation data referenced by a &lt;code&gt;DataSource&lt;/code&gt;. Amazon ML uses the statistics internally during &lt;code&gt;MLModel&lt;/code&gt; training. This parameter must be set to &lt;code&gt;true&lt;/code&gt; if the &lt;code&gt;&lt;/code&gt;DataSource&lt;code&gt;&lt;/code&gt; needs to be used for &lt;code&gt;MLModel&lt;/code&gt; training. &lt;/p&gt;
-- @param DataSourceId [EntityId] &lt;p&gt;A user-supplied ID that uniquely identifies the &lt;code&gt;DataSource&lt;/code&gt;. Typically, an Amazon Resource Number (ARN) becomes the ID for a &lt;code&gt;DataSource&lt;/code&gt;.&lt;/p&gt;
-- @param RoleARN [RoleARN] &lt;p&gt;The role that Amazon ML assumes on behalf of the user to create and activate a data pipeline in the user's account and copy data using the &lt;code&gt;SelectSqlQuery&lt;/code&gt; query from Amazon RDS to Amazon S3.&lt;/p&gt; &lt;p&gt; &lt;/p&gt;
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
-- &lt;p&gt; Represents the output of &lt;code&gt;GetEvaluation&lt;/code&gt; operation. &lt;/p&gt; &lt;p&gt;The content consists of the detailed metadata and data file information and the current status of the &lt;code&gt;Evaluation&lt;/code&gt;.&lt;/p&gt;
-- @param EvaluationDataSourceId [EntityId] &lt;p&gt;The ID of the &lt;code&gt;DataSource&lt;/code&gt; that is used to evaluate the &lt;code&gt;MLModel&lt;/code&gt;.&lt;/p&gt;
-- @param Status [EntityStatus] &lt;p&gt;The status of the evaluation. This element can have one of the following values:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;code&gt;PENDING&lt;/code&gt; - Amazon Machine Learning (Amazon ML) submitted a request to evaluate an &lt;code&gt;MLModel&lt;/code&gt;.&lt;/li&gt; &lt;li&gt; &lt;code&gt;INPROGRESS&lt;/code&gt; - The evaluation is underway.&lt;/li&gt; &lt;li&gt; &lt;code&gt;FAILED&lt;/code&gt; - The request to evaluate an &lt;code&gt;MLModel&lt;/code&gt; did not run to completion. It is not usable.&lt;/li&gt; &lt;li&gt; &lt;code&gt;COMPLETED&lt;/code&gt; - The evaluation process completed successfully.&lt;/li&gt; &lt;li&gt; &lt;code&gt;DELETED&lt;/code&gt; - The &lt;code&gt;Evaluation&lt;/code&gt; is marked as deleted. It is not usable.&lt;/li&gt; &lt;/ul&gt;
-- @param ComputeTime [LongType] &lt;p&gt; Represents the output of &lt;code&gt;GetEvaluation&lt;/code&gt; operation. &lt;/p&gt; &lt;p&gt;The content consists of the detailed metadata and data file information and the current status of the &lt;code&gt;Evaluation&lt;/code&gt;.&lt;/p&gt;
-- @param Name [EntityName] &lt;p&gt;A user-supplied name or description of the &lt;code&gt;Evaluation&lt;/code&gt;. &lt;/p&gt;
-- @param InputDataLocationS3 [S3Url] &lt;p&gt;The location and name of the data in Amazon Simple Storage Server (Amazon S3) that is used in the evaluation.&lt;/p&gt;
-- @param EvaluationId [EntityId] &lt;p&gt;The ID that is assigned to the &lt;code&gt;Evaluation&lt;/code&gt; at creation.&lt;/p&gt;
-- @param CreatedByIamUser [AwsUserArn] &lt;p&gt;The AWS user account that invoked the evaluation. The account type can be either an AWS root account or an AWS Identity and Access Management (IAM) user account.&lt;/p&gt;
-- @param MLModelId [EntityId] &lt;p&gt;The ID of the &lt;code&gt;MLModel&lt;/code&gt; that is the focus of the evaluation.&lt;/p&gt;
-- @param LastUpdatedAt [EpochTime] &lt;p&gt;The time of the most recent edit to the &lt;code&gt;Evaluation&lt;/code&gt;. The time is expressed in epoch time.&lt;/p&gt;
-- @param StartedAt [EpochTime] &lt;p&gt; Represents the output of &lt;code&gt;GetEvaluation&lt;/code&gt; operation. &lt;/p&gt; &lt;p&gt;The content consists of the detailed metadata and data file information and the current status of the &lt;code&gt;Evaluation&lt;/code&gt;.&lt;/p&gt;
-- @param Message [Message] &lt;p&gt;A description of the most recent details about evaluating the &lt;code&gt;MLModel&lt;/code&gt;.&lt;/p&gt;
-- @param PerformanceMetrics [PerformanceMetrics] &lt;p&gt;Measurements of how well the &lt;code&gt;MLModel&lt;/code&gt; performed, using observations referenced by the &lt;code&gt;DataSource&lt;/code&gt;. One of the following metrics is returned, based on the type of the &lt;code&gt;MLModel&lt;/code&gt;: &lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;BinaryAUC: A binary &lt;code&gt;MLModel&lt;/code&gt; uses the Area Under the Curve (AUC) technique to measure performance. &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;RegressionRMSE: A regression &lt;code&gt;MLModel&lt;/code&gt; uses the Root Mean Square Error (RMSE) technique to measure performance. RMSE measures the difference between predicted and actual values for a single variable.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;MulticlassAvgFScore: A multiclass &lt;code&gt;MLModel&lt;/code&gt; uses the F1 score technique to measure performance. &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt; For more information about performance metrics, please see the &lt;a href=&quot;http://docs.aws.amazon.com/machine-learning/latest/dg&quot;&gt;Amazon Machine Learning Developer Guide&lt;/a&gt;. &lt;/p&gt;
-- @param CreatedAt [EpochTime] &lt;p&gt;The time that the &lt;code&gt;Evaluation&lt;/code&gt; was created. The time is expressed in epoch time.&lt;/p&gt;
-- @param FinishedAt [EpochTime] &lt;p&gt; Represents the output of &lt;code&gt;GetEvaluation&lt;/code&gt; operation. &lt;/p&gt; &lt;p&gt;The content consists of the detailed metadata and data file information and the current status of the &lt;code&gt;Evaluation&lt;/code&gt;.&lt;/p&gt;
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
-- &lt;p&gt;Represents the output of an &lt;code&gt;UpdateEvaluation&lt;/code&gt; operation.&lt;/p&gt; &lt;p&gt;You can see the updated content by using the &lt;code&gt;GetEvaluation&lt;/code&gt; operation.&lt;/p&gt;
-- @param EvaluationId [EntityId] &lt;p&gt;The ID assigned to the &lt;code&gt;Evaluation&lt;/code&gt; during creation. This value should be identical to the value of the &lt;code&gt;Evaluation&lt;/code&gt; in the request.&lt;/p&gt;
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
-- @param MLModelId [EntityId] &lt;p&gt;The ID assigned to the &lt;code&gt;MLModel&lt;/code&gt; during creation.&lt;/p&gt;
-- @param ScoreThreshold [ScoreThreshold] &lt;p&gt;The &lt;code&gt;ScoreThreshold&lt;/code&gt; used in binary classification &lt;code&gt;MLModel&lt;/code&gt; that marks the boundary between a positive prediction and a negative prediction.&lt;/p&gt; &lt;p&gt;Output values greater than or equal to the &lt;code&gt;ScoreThreshold&lt;/code&gt; receive a positive result from the &lt;code&gt;MLModel&lt;/code&gt;, such as &lt;code&gt;true&lt;/code&gt;. Output values less than the &lt;code&gt;ScoreThreshold&lt;/code&gt; receive a negative response from the &lt;code&gt;MLModel&lt;/code&gt;, such as &lt;code&gt;false&lt;/code&gt;.&lt;/p&gt;
-- @param MLModelName [EntityName] &lt;p&gt;A user-supplied name or description of the &lt;code&gt;MLModel&lt;/code&gt;.&lt;/p&gt;
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
-- @param DataSourceId [EntityId] &lt;p&gt;A user-supplied ID that uniquely identifies the &lt;code&gt;DataSource&lt;/code&gt;.&lt;/p&gt;
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
-- @param EvaluationId [EntityId] &lt;p&gt;A user-supplied ID that uniquely identifies the &lt;code&gt;Evaluation&lt;/code&gt; to delete.&lt;/p&gt;
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
-- @param DataSourceId [EntityId] &lt;p&gt;The ID assigned to the &lt;code&gt;DataSource&lt;/code&gt; at creation.&lt;/p&gt;
-- @param Verbose [Verbose] &lt;p&gt;Specifies whether the &lt;code&gt;GetDataSource&lt;/code&gt; operation should return &lt;code&gt;DataSourceSchema&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;If true, &lt;code&gt;DataSourceSchema&lt;/code&gt; is returned.&lt;/p&gt; &lt;p&gt;If false, &lt;code&gt;DataSourceSchema&lt;/code&gt; is not returned.&lt;/p&gt;
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
-- &lt;p&gt; Represents the output of a &lt;code&gt;DeleteBatchPrediction&lt;/code&gt; operation.&lt;/p&gt; &lt;p&gt;You can use the &lt;code&gt;GetBatchPrediction&lt;/code&gt; operation and check the value of the &lt;code&gt;Status&lt;/code&gt; parameter to see whether a &lt;code&gt;BatchPrediction&lt;/code&gt; is marked as &lt;code&gt;DELETED&lt;/code&gt;.&lt;/p&gt;
-- @param BatchPredictionId [EntityId] &lt;p&gt;A user-supplied ID that uniquely identifies the &lt;code&gt;BatchPrediction&lt;/code&gt;. This value should be identical to the value of the &lt;code&gt;BatchPredictionID&lt;/code&gt; in the request.&lt;/p&gt;
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
-- &lt;p&gt; Represents the output of a &lt;code&gt;DeleteDataSource&lt;/code&gt; operation.&lt;/p&gt;
-- @param DataSourceId [EntityId] &lt;p&gt;A user-supplied ID that uniquely identifies the &lt;code&gt;DataSource&lt;/code&gt;. This value should be identical to the value of the &lt;code&gt;DataSourceID&lt;/code&gt; in the request.&lt;/p&gt;
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
-- @param MLModelId [EntityId] &lt;p&gt;A user-supplied ID that uniquely identifies the &lt;code&gt;MLModel&lt;/code&gt;.&lt;/p&gt;
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
-- &lt;p&gt;A specified resource cannot be located.&lt;/p&gt;
-- @param message [ErrorMessage] &lt;p&gt;A specified resource cannot be located.&lt;/p&gt;
-- @param code [ErrorCode] &lt;p&gt;A specified resource cannot be located.&lt;/p&gt;
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
-- @param Parameters [TrainingParameters] &lt;p&gt;A list of the training parameters in the &lt;code&gt;MLModel&lt;/code&gt;. The list is implemented as a map of key-value pairs.&lt;/p&gt; &lt;p&gt;The following is the current set of training parameters: &lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;&lt;code&gt;sgd.maxMLModelSizeInBytes&lt;/code&gt; - The maximum allowed size of the model. Depending on the input data, the size of the model might affect its performance.&lt;/p&gt; &lt;p&gt; The value is an integer that ranges from &lt;code&gt;100000&lt;/code&gt; to &lt;code&gt;2147483648&lt;/code&gt;. The default value is &lt;code&gt;33554432&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt;&lt;p&gt;&lt;code&gt;sgd.maxPasses&lt;/code&gt; - The number of times that the training process traverses the observations to build the &lt;code&gt;MLModel&lt;/code&gt;. The value is an integer that ranges from &lt;code&gt;1&lt;/code&gt; to &lt;code&gt;10000&lt;/code&gt;. The default value is &lt;code&gt;10&lt;/code&gt;.&lt;/p&gt;&lt;/li&gt; &lt;li&gt; &lt;p&gt;&lt;code&gt;sgd.shuffleType&lt;/code&gt; - Whether Amazon ML shuffles the training data. Shuffling the data improves a model's ability to find the optimal solution for a variety of data types. The valid values are &lt;code&gt;auto&lt;/code&gt; and &lt;code&gt;none&lt;/code&gt;. The default value is &lt;code&gt;none&lt;/code&gt;. We &lt;?oxy_insert_start author=&quot;laurama&quot; timestamp=&quot;20160329T131121-0700&quot;&gt;strongly recommend that you shuffle your data.&lt;?oxy_insert_end&gt;&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;&lt;code&gt;sgd.l1RegularizationAmount&lt;/code&gt; - The coefficient regularization L1 norm. It controls overfitting the data by penalizing large coefficients. This tends to drive coefficients to zero, resulting in a sparse feature set. If you use this parameter, start by specifying a small value, such as &lt;code&gt;1.0E-08&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;The value is a double that ranges from &lt;code&gt;0&lt;/code&gt; to &lt;code&gt;MAX_DOUBLE&lt;/code&gt;. The default is to not use L1 normalization. This parameter can't be used when &lt;code&gt;L2&lt;/code&gt; is specified. Use this parameter sparingly.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;&lt;code&gt;sgd.l2RegularizationAmount&lt;/code&gt; - The coefficient regularization L2 norm. It controls overfitting the data by penalizing large coefficients. This tends to drive coefficients to small, nonzero values. If you use this parameter, start by specifying a small value, such as &lt;code&gt;1.0E-08&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;The value is a double that ranges from &lt;code&gt;0&lt;/code&gt; to &lt;code&gt;MAX_DOUBLE&lt;/code&gt;. The default is to not use L2 normalization. This parameter can't be used when &lt;code&gt;L1&lt;/code&gt; is specified. Use this parameter sparingly.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param MLModelType [MLModelType] &lt;p&gt;The category of supervised learning that this &lt;code&gt;MLModel&lt;/code&gt; will address. Choose from the following types:&lt;/p&gt; &lt;ul&gt; &lt;li&gt;Choose &lt;code&gt;REGRESSION&lt;/code&gt; if the &lt;code&gt;MLModel&lt;/code&gt; will be used to predict a numeric value.&lt;/li&gt; &lt;li&gt;Choose &lt;code&gt;BINARY&lt;/code&gt; if the &lt;code&gt;MLModel&lt;/code&gt; result has two possible values.&lt;/li&gt; &lt;li&gt;Choose &lt;code&gt;MULTICLASS&lt;/code&gt; if the &lt;code&gt;MLModel&lt;/code&gt; result has a limited number of values. &lt;/li&gt; &lt;/ul&gt; &lt;p&gt; For more information, see the &lt;a href=&quot;http://docs.aws.amazon.com/machine-learning/latest/dg&quot;&gt;Amazon Machine Learning Developer Guide&lt;/a&gt;.&lt;/p&gt;
-- @param Recipe [Recipe] &lt;p&gt;The data recipe for creating the &lt;code&gt;MLModel&lt;/code&gt;. You must specify either the recipe or its URI. If you don't specify a recipe or its URI, Amazon ML creates a default.&lt;/p&gt;
-- @param MLModelId [EntityId] &lt;p&gt;A user-supplied ID that uniquely identifies the &lt;code&gt;MLModel&lt;/code&gt;.&lt;/p&gt;
-- @param MLModelName [EntityName] &lt;p&gt;A user-supplied name or description of the &lt;code&gt;MLModel&lt;/code&gt;.&lt;/p&gt;
-- @param RecipeUri [S3Url] &lt;p&gt;The Amazon Simple Storage Service (Amazon S3) location and file name that contains the &lt;code&gt;MLModel&lt;/code&gt; recipe. You must specify either the recipe or its URI. If you don't specify a recipe or its URI, Amazon ML creates a default.&lt;/p&gt;
-- @param TrainingDataSourceId [EntityId] &lt;p&gt;The &lt;code&gt;DataSource&lt;/code&gt; that points to the training data.&lt;/p&gt;
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
-- &lt;p&gt; Represents the output of a &lt;code&gt;CreateEvaluation&lt;/code&gt; operation, and is an acknowledgement that Amazon ML received the request.&lt;/p&gt; &lt;p&gt;&lt;code&gt;CreateEvaluation&lt;/code&gt; operation is asynchronous. You can poll for status updates by using the &lt;code&gt;GetEvcaluation&lt;/code&gt; operation and checking the &lt;code&gt;Status&lt;/code&gt; parameter. &lt;/p&gt;
-- @param EvaluationId [EntityId] &lt;p&gt;The user-supplied ID that uniquely identifies the &lt;code&gt;Evaluation&lt;/code&gt;. This value should be identical to the value of the &lt;code&gt;EvaluationId&lt;/code&gt; in the request.&lt;/p&gt;
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
-- @param EvaluationId [EntityId] &lt;p&gt;The ID of the &lt;code&gt;Evaluation&lt;/code&gt; to retrieve. The evaluation of each &lt;code&gt;MLModel&lt;/code&gt; is recorded and cataloged. The ID provides the means to access the information. &lt;/p&gt;
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
-- @param ResourceType [TaggableResourceType] &lt;p&gt;The type of the ML object to tag. &lt;/p&gt;
-- @param ResourceId [EntityId] &lt;p&gt;The ID of the ML object to tag. For example, &lt;code&gt;exampleModelId&lt;/code&gt;.&lt;/p&gt;
-- @param Tags [TagList] &lt;p&gt;The key-value pairs to use to create tags. If you specify a key without specifying a value, Amazon ML creates a tag with the specified key and a value of null.&lt;/p&gt;
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
-- &lt;p&gt; Represents the output of a &lt;code&gt;CreateDataSourceFromRDS&lt;/code&gt; operation, and is an acknowledgement that Amazon ML received the request.&lt;/p&gt; &lt;p&gt;The &lt;code&gt;CreateDataSourceFromRDS&lt;/code&gt;&amp;gt; operation is asynchronous. You can poll for updates by using the &lt;code&gt;GetBatchPrediction&lt;/code&gt; operation and checking the &lt;code&gt;Status&lt;/code&gt; parameter. You can inspect the &lt;code&gt;Message&lt;/code&gt; when &lt;code&gt;Status&lt;/code&gt; shows up as &lt;code&gt;FAILED&lt;/code&gt;. You can also check the progress of the copy operation by going to the &lt;code&gt;DataPipeline&lt;/code&gt; console and looking up the pipeline using the &lt;code&gt;pipelineId &lt;/code&gt; from the describe call.&lt;/p&gt;
-- @param DataSourceId [EntityId] &lt;p&gt;A user-supplied ID that uniquely identifies the datasource. This value should be identical to the value of the &lt;code&gt;DataSourceID&lt;/code&gt; in the request. &lt;/p&gt;
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
-- &lt;p&gt;Represents the output of an &lt;code&gt;CreateRealtimeEndpoint&lt;/code&gt; operation.&lt;/p&gt; &lt;p&gt;The result contains the &lt;code&gt;MLModelId&lt;/code&gt; and the endpoint information for the &lt;code&gt;MLModel&lt;/code&gt;.&lt;/p&gt; &lt;note&gt; &lt;p&gt;The endpoint information includes the URI of the &lt;code&gt;MLModel&lt;/code&gt;; that is, the location to send online prediction requests for the specified &lt;code&gt;MLModel&lt;/code&gt;.&lt;/p&gt; &lt;/note&gt;
-- @param MLModelId [EntityId] &lt;p&gt;A user-supplied ID that uniquely identifies the &lt;code&gt;MLModel&lt;/code&gt;. This value should be identical to the value of the &lt;code&gt;MLModelId&lt;/code&gt; in the request.&lt;/p&gt;
-- @param RealtimeEndpointInfo [RealtimeEndpointInfo] &lt;p&gt;The endpoint information of the &lt;code&gt;MLModel&lt;/code&gt; &lt;/p&gt;
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
-- &lt;p&gt;The database details of an Amazon RDS database.&lt;/p&gt;
-- @param InstanceIdentifier [RDSInstanceIdentifier] &lt;p&gt;The ID of an RDS DB instance.&lt;/p&gt;
-- @param DatabaseName [RDSDatabaseName] &lt;p&gt;The database details of an Amazon RDS database.&lt;/p&gt;
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
-- @param GT [ComparatorValue] &lt;p&gt;The greater than operator. The &lt;code&gt;MLModel&lt;/code&gt; results will have &lt;code&gt;FilterVariable&lt;/code&gt; values that are greater than the value specified with &lt;code&gt;GT&lt;/code&gt;.&lt;/p&gt;
-- @param FilterVariable [MLModelFilterVariable] &lt;p&gt;Use one of the following variables to filter a list of &lt;code&gt;MLModel&lt;/code&gt;:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;code&gt;CreatedAt&lt;/code&gt; - Sets the search criteria to &lt;code&gt;MLModel&lt;/code&gt; creation date.&lt;/li&gt; &lt;li&gt; &lt;code&gt;Status&lt;/code&gt; - Sets the search criteria to &lt;code&gt;MLModel&lt;/code&gt; status.&lt;/li&gt; &lt;li&gt; &lt;code&gt;Name&lt;/code&gt; - Sets the search criteria to the contents of &lt;code&gt;MLModel&lt;/code&gt;&lt;b&gt; &lt;/b&gt; &lt;code&gt;Name&lt;/code&gt;.&lt;/li&gt; &lt;li&gt; &lt;code&gt;IAMUser&lt;/code&gt; - Sets the search criteria to the user account that invoked the &lt;code&gt;MLModel&lt;/code&gt; creation.&lt;/li&gt; &lt;li&gt; &lt;code&gt;TrainingDataSourceId&lt;/code&gt; - Sets the search criteria to the &lt;code&gt;DataSource&lt;/code&gt; used to train one or more &lt;code&gt;MLModel&lt;/code&gt;.&lt;/li&gt; &lt;li&gt; &lt;code&gt;RealtimeEndpointStatus&lt;/code&gt; - Sets the search criteria to the &lt;code&gt;MLModel&lt;/code&gt; real-time endpoint status.&lt;/li&gt; &lt;li&gt; &lt;code&gt;MLModelType&lt;/code&gt; - Sets the search criteria to &lt;code&gt;MLModel&lt;/code&gt; type: binary, regression, or multi-class.&lt;/li&gt; &lt;li&gt; &lt;code&gt;Algorithm&lt;/code&gt; - Sets the search criteria to the algorithm that the &lt;code&gt;MLModel&lt;/code&gt; uses.&lt;/li&gt; &lt;li&gt; &lt;code&gt;TrainingDataURI&lt;/code&gt; - Sets the search criteria to the data file(s) used in training a &lt;code&gt;MLModel&lt;/code&gt;. The URL can identify either a file or an Amazon Simple Storage Service (Amazon S3) bucket or directory.&lt;/li&gt; &lt;/ul&gt;
-- @param GE [ComparatorValue] &lt;p&gt;The greater than or equal to operator. The &lt;code&gt;MLModel&lt;/code&gt; results will have &lt;code&gt;FilterVariable&lt;/code&gt; values that are greater than or equal to the value specified with &lt;code&gt;GE&lt;/code&gt;. &lt;/p&gt;
-- @param NE [ComparatorValue] &lt;p&gt;The not equal to operator. The &lt;code&gt;MLModel&lt;/code&gt; results will have &lt;code&gt;FilterVariable&lt;/code&gt; values not equal to the value specified with &lt;code&gt;NE&lt;/code&gt;.&lt;/p&gt;
-- @param LT [ComparatorValue] &lt;p&gt;The less than operator. The &lt;code&gt;MLModel&lt;/code&gt; results will have &lt;code&gt;FilterVariable&lt;/code&gt; values that are less than the value specified with &lt;code&gt;LT&lt;/code&gt;.&lt;/p&gt;
-- @param LE [ComparatorValue] &lt;p&gt;The less than or equal to operator. The &lt;code&gt;MLModel&lt;/code&gt; results will have &lt;code&gt;FilterVariable&lt;/code&gt; values that are less than or equal to the value specified with &lt;code&gt;LE&lt;/code&gt;.&lt;/p&gt;
-- @param Limit [PageLimit] &lt;p&gt;The number of pages of information to include in the result. The range of acceptable values is &lt;code&gt;1&lt;/code&gt; through &lt;code&gt;100&lt;/code&gt;. The default value is &lt;code&gt;100&lt;/code&gt;.&lt;/p&gt;
-- @param SortOrder [SortOrder] &lt;p&gt;A two-value parameter that determines the sequence of the resulting list of &lt;code&gt;MLModel&lt;/code&gt;.&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;code&gt;asc&lt;/code&gt; - Arranges the list in ascending order (A-Z, 0-9).&lt;/li&gt; &lt;li&gt; &lt;code&gt;dsc&lt;/code&gt; - Arranges the list in descending order (Z-A, 9-0).&lt;/li&gt; &lt;/ul&gt; &lt;p&gt;Results are sorted by &lt;code&gt;FilterVariable&lt;/code&gt;.&lt;/p&gt;
-- @param NextToken [StringType] &lt;p&gt;The ID of the page in the paginated results.&lt;/p&gt;
-- @param EQ [ComparatorValue] &lt;p&gt;The equal to operator. The &lt;code&gt;MLModel&lt;/code&gt; results will have &lt;code&gt;FilterVariable&lt;/code&gt; values that exactly match the value specified with &lt;code&gt;EQ&lt;/code&gt;.&lt;/p&gt;
-- @param Prefix [ComparatorValue] &lt;p&gt;A string that is found at the beginning of a variable, such as &lt;code&gt;Name&lt;/code&gt; or &lt;code&gt;Id&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;For example, an &lt;code&gt;MLModel&lt;/code&gt; could have the &lt;code&gt;Name&lt;/code&gt; &lt;code&gt;2014-09-09-HolidayGiftMailer&lt;/code&gt;. To search for this &lt;code&gt;MLModel&lt;/code&gt;, select &lt;code&gt;Name&lt;/code&gt; for the &lt;code&gt;FilterVariable&lt;/code&gt; and any of the following strings for the &lt;code&gt;Prefix&lt;/code&gt;: &lt;/p&gt; &lt;ul&gt; &lt;li&gt;&lt;p&gt;2014-09&lt;/p&gt;&lt;/li&gt; &lt;li&gt;&lt;p&gt;2014-09-09&lt;/p&gt;&lt;/li&gt; &lt;li&gt;&lt;p&gt;2014-09-09-Holiday&lt;/p&gt;&lt;/li&gt; &lt;/ul&gt;
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
-- @param MLModelId [EntityId] &lt;p&gt;A unique identifier of the &lt;code&gt;MLModel&lt;/code&gt;.&lt;/p&gt;
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
-- @param DataSourceName [EntityName] &lt;p&gt;A new user-supplied name or description of the &lt;code&gt;DataSource&lt;/code&gt; that will replace the current description. &lt;/p&gt;
-- @param DataSourceId [EntityId] &lt;p&gt;The ID assigned to the &lt;code&gt;DataSource&lt;/code&gt; during creation.&lt;/p&gt;
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
-- &lt;p&gt;Represents the output of a &lt;code&gt;GetEvaluation&lt;/code&gt; operation and describes an &lt;code&gt;Evaluation&lt;/code&gt;.&lt;/p&gt;
-- @param EvaluationDataSourceId [EntityId] &lt;p&gt;The &lt;code&gt;DataSource&lt;/code&gt; used for this evaluation.&lt;/p&gt;
-- @param Status [EntityStatus] &lt;p&gt;The status of the evaluation. This element can have one of the following values:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;code&gt;PENDING&lt;/code&gt; - Amazon Machine Language (Amazon ML) submitted a request to evaluate an &lt;code&gt;MLModel&lt;/code&gt;.&lt;/li&gt; &lt;li&gt; &lt;code&gt;INPROGRESS&lt;/code&gt; - The evaluation is underway.&lt;/li&gt; &lt;li&gt; &lt;code&gt;FAILED&lt;/code&gt; - The request to evaluate an &lt;code&gt;MLModel&lt;/code&gt; did not run to completion. It is not usable.&lt;/li&gt; &lt;li&gt; &lt;code&gt;COMPLETED&lt;/code&gt; - The evaluation process completed successfully.&lt;/li&gt; &lt;li&gt; &lt;code&gt;DELETED&lt;/code&gt; - The &lt;code&gt;Evaluation&lt;/code&gt; is marked as deleted. It is not usable.&lt;/li&gt; &lt;/ul&gt;
-- @param ComputeTime [LongType] &lt;p&gt;The approximate CPU time in milliseconds that Amazon Machine Learning spent processing the &lt;code&gt;Evaluation&lt;/code&gt;, normalized and scaled on computation resources. &lt;code&gt;ComputeTime&lt;/code&gt; is only available if the &lt;code&gt;Evaluation&lt;/code&gt; is in the &lt;code&gt;COMPLETED&lt;/code&gt; state.&lt;/p&gt;
-- @param Name [EntityName] &lt;p&gt;A user-supplied name or description of the &lt;code&gt;Evaluation&lt;/code&gt;. &lt;/p&gt;
-- @param InputDataLocationS3 [S3Url] &lt;p&gt;The location of the data file or directory in Amazon Simple Storage Service (Amazon S3).&lt;/p&gt;
-- @param EvaluationId [EntityId] &lt;p&gt;The evaluation ID which is same as the &lt;code&gt;EvaluationId&lt;/code&gt; in the request.&lt;/p&gt;
-- @param CreatedByIamUser [AwsUserArn] &lt;p&gt;The AWS user account that invoked the evaluation. The account type can be either an AWS root account or an AWS Identity and Access Management (IAM) user account.&lt;/p&gt;
-- @param MLModelId [EntityId] &lt;p&gt;The ID of the &lt;code&gt;MLModel&lt;/code&gt; that was the focus of the evaluation.&lt;/p&gt;
-- @param Message [Message] &lt;p&gt;A description of the most recent details about evaluating the &lt;code&gt;MLModel&lt;/code&gt;.&lt;/p&gt;
-- @param LastUpdatedAt [EpochTime] &lt;p&gt;The time of the most recent edit to the &lt;code&gt;Evaluation&lt;/code&gt;. The time is expressed in epoch time.&lt;/p&gt;
-- @param StartedAt [EpochTime] &lt;p&gt;The epoch time when Amazon Machine Learning marked the &lt;code&gt;Evaluation&lt;/code&gt; as &lt;code&gt;INPROGRESS&lt;/code&gt;. &lt;code&gt;StartedAt&lt;/code&gt; isn't available if the &lt;code&gt;Evaluation&lt;/code&gt; is in the &lt;code&gt;PENDING&lt;/code&gt; state.&lt;/p&gt;
-- @param LogUri [PresignedS3Url] &lt;p&gt;A link to the file that contains logs of the &lt;code&gt;CreateEvaluation&lt;/code&gt; operation.&lt;/p&gt;
-- @param PerformanceMetrics [PerformanceMetrics] &lt;p&gt;Measurements of how well the &lt;code&gt;MLModel&lt;/code&gt; performed using observations referenced by the &lt;code&gt;DataSource&lt;/code&gt;. One of the following metric is returned based on the type of the &lt;code&gt;MLModel&lt;/code&gt;: &lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;BinaryAUC: A binary &lt;code&gt;MLModel&lt;/code&gt; uses the Area Under the Curve (AUC) technique to measure performance. &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;RegressionRMSE: A regression &lt;code&gt;MLModel&lt;/code&gt; uses the Root Mean Square Error (RMSE) technique to measure performance. RMSE measures the difference between predicted and actual values for a single variable.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;MulticlassAvgFScore: A multiclass &lt;code&gt;MLModel&lt;/code&gt; uses the F1 score technique to measure performance. &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt; For more information about performance metrics, please see the &lt;a href=&quot;http://docs.aws.amazon.com/machine-learning/latest/dg&quot;&gt;Amazon Machine Learning Developer Guide&lt;/a&gt;. &lt;/p&gt;
-- @param CreatedAt [EpochTime] &lt;p&gt;The time that the &lt;code&gt;Evaluation&lt;/code&gt; was created. The time is expressed in epoch time.&lt;/p&gt;
-- @param FinishedAt [EpochTime] &lt;p&gt;The epoch time when Amazon Machine Learning marked the &lt;code&gt;Evaluation&lt;/code&gt; as &lt;code&gt;COMPLETED&lt;/code&gt; or &lt;code&gt;FAILED&lt;/code&gt;. &lt;code&gt;FinishedAt&lt;/code&gt; is only available when the &lt;code&gt;Evaluation&lt;/code&gt; is in the &lt;code&gt;COMPLETED&lt;/code&gt; or &lt;code&gt;FAILED&lt;/code&gt; state.&lt;/p&gt;
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
-- &lt;p&gt;The datasource details that are specific to Amazon RDS.&lt;/p&gt;
-- @param ServiceRole [EDPServiceRole] &lt;p&gt;The role (DataPipelineDefaultRole) assumed by the Data Pipeline service to monitor the progress of the copy task from Amazon RDS to Amazon S3. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-iam-roles.html&quot;&gt;Role templates&lt;/a&gt; for data pipelines.&lt;/p&gt;
-- @param DataPipelineId [EDPPipelineId] &lt;p&gt;The ID of the Data Pipeline instance that is used to carry to copy data from Amazon RDS to Amazon S3. You can use the ID to find details about the instance in the Data Pipeline console.&lt;/p&gt;
-- @param ResourceRole [EDPResourceRole] &lt;p&gt;The role (DataPipelineDefaultResourceRole) assumed by an Amazon EC2 instance to carry out the copy task from Amazon RDS to Amazon S3. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-iam-roles.html&quot;&gt;Role templates&lt;/a&gt; for data pipelines.&lt;/p&gt;
-- @param DatabaseUserName [RDSDatabaseUsername] &lt;p&gt;The datasource details that are specific to Amazon RDS.&lt;/p&gt;
-- @param Database [RDSDatabase] &lt;p&gt;The database details required to connect to an Amazon RDS.&lt;/p&gt;
-- @param SelectSqlQuery [RDSSelectSqlQuery] &lt;p&gt;The SQL query that is supplied during &lt;a&gt;CreateDataSourceFromRDS&lt;/a&gt;. Returns only if &lt;code&gt;Verbose&lt;/code&gt; is true in &lt;code&gt;GetDataSourceInput&lt;/code&gt;. &lt;/p&gt;
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
-- &lt;p&gt;Amazon ML returns the following elements. &lt;/p&gt;
-- @param ResourceType [TaggableResourceType] &lt;p&gt;The type of the tagged ML object.&lt;/p&gt;
-- @param ResourceId [EntityId] &lt;p&gt;The ID of the tagged ML object.&lt;/p&gt;
-- @param Tags [TagList] &lt;p&gt;A list of tags associated with the ML object.&lt;/p&gt;
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
-- &lt;p&gt;The database credentials to connect to a database on an RDS DB instance.&lt;/p&gt;
-- @param Username [RDSDatabaseUsername] &lt;p&gt;The database credentials to connect to a database on an RDS DB instance.&lt;/p&gt;
-- @param Password [RDSDatabasePassword] &lt;p&gt;The database credentials to connect to a database on an RDS DB instance.&lt;/p&gt;
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
-- &lt;p&gt; Represents the output of a &lt;code&gt;CreateDataSourceFromS3&lt;/code&gt; operation, and is an acknowledgement that Amazon ML received the request.&lt;/p&gt; &lt;p&gt;The &lt;code&gt;CreateDataSourceFromS3&lt;/code&gt; operation is asynchronous. You can poll for updates by using the &lt;code&gt;GetBatchPrediction&lt;/code&gt; operation and checking the &lt;code&gt;Status&lt;/code&gt; parameter. &lt;/p&gt;
-- @param DataSourceId [EntityId] &lt;p&gt;A user-supplied ID that uniquely identifies the &lt;code&gt;DataSource&lt;/code&gt;. This value should be identical to the value of the &lt;code&gt;DataSourceID&lt;/code&gt; in the request. &lt;/p&gt;
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
-- &lt;p&gt;Represents the output of a &lt;code&gt;GetBatchPrediction&lt;/code&gt; operation and describes a &lt;code&gt;BatchPrediction&lt;/code&gt;.&lt;/p&gt;
-- @param Status [EntityStatus] &lt;p&gt;The status of the &lt;code&gt;BatchPrediction&lt;/code&gt;, which can be one of the following values:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;code&gt;PENDING&lt;/code&gt; - Amazon Machine Learning (Amazon ML) submitted a request to generate batch predictions.&lt;/li&gt; &lt;li&gt; &lt;code&gt;INPROGRESS&lt;/code&gt; - The batch predictions are in progress.&lt;/li&gt; &lt;li&gt; &lt;code&gt;FAILED&lt;/code&gt; - The request to perform a batch prediction did not run to completion. It is not usable.&lt;/li&gt; &lt;li&gt; &lt;code&gt;COMPLETED&lt;/code&gt; - The batch prediction process completed successfully.&lt;/li&gt; &lt;li&gt; &lt;code&gt;DELETED&lt;/code&gt; - The &lt;code&gt;BatchPrediction&lt;/code&gt; is marked as deleted. It is not usable.&lt;/li&gt; &lt;/ul&gt;
-- @param ComputeTime [LongType] &lt;p&gt;The approximate CPU time in milliseconds that Amazon Machine Learning spent processing the &lt;code&gt;BatchPrediction&lt;/code&gt;, normalized and scaled on computation resources. &lt;code&gt;ComputeTime&lt;/code&gt; is only available if the &lt;code&gt;BatchPrediction&lt;/code&gt; is in the &lt;code&gt;COMPLETED&lt;/code&gt; state.&lt;/p&gt;
-- @param Name [EntityName] &lt;p&gt;A user-supplied name or description of the &lt;code&gt;BatchPrediction&lt;/code&gt;.&lt;/p&gt;
-- @param InputDataLocationS3 [S3Url] &lt;p&gt;The location of the data file or directory in Amazon Simple Storage Service (Amazon S3).&lt;/p&gt;
-- @param InvalidRecordCount [LongType] &lt;p&gt;The number of invalid records that Amazon Machine Learning saw while processing the &lt;code&gt;BatchPrediction&lt;/code&gt;.&lt;/p&gt;
-- @param CreatedByIamUser [AwsUserArn] &lt;p&gt;The AWS user account that invoked the &lt;code&gt;BatchPrediction&lt;/code&gt;. The account type can be either an AWS root account or an AWS Identity and Access Management (IAM) user account.&lt;/p&gt;
-- @param MLModelId [EntityId] &lt;p&gt;The ID of the &lt;code&gt;MLModel&lt;/code&gt; that generated predictions for the &lt;code&gt;BatchPrediction&lt;/code&gt; request.&lt;/p&gt;
-- @param TotalRecordCount [LongType] &lt;p&gt;The number of total records that Amazon Machine Learning saw while processing the &lt;code&gt;BatchPrediction&lt;/code&gt;.&lt;/p&gt;
-- @param LastUpdatedAt [EpochTime] &lt;p&gt;The time of the most recent edit to &lt;code&gt;BatchPrediction&lt;/code&gt;. The time is expressed in epoch time.&lt;/p&gt;
-- @param BatchPredictionDataSourceId [EntityId] &lt;p&gt;The ID of the &lt;code&gt;DataSource&lt;/code&gt; that was used to create the &lt;code&gt;BatchPrediction&lt;/code&gt;. &lt;/p&gt;
-- @param OutputUri [S3Url] &lt;p&gt;The location of an Amazon S3 bucket or directory to receive the operation results.&lt;/p&gt;
-- @param StartedAt [EpochTime] &lt;p&gt;The epoch time when Amazon Machine Learning marked the &lt;code&gt;BatchPrediction&lt;/code&gt; as &lt;code&gt;INPROGRESS&lt;/code&gt;. &lt;code&gt;StartedAt&lt;/code&gt; isn't available if the &lt;code&gt;BatchPrediction&lt;/code&gt; is in the &lt;code&gt;PENDING&lt;/code&gt; state.&lt;/p&gt;
-- @param BatchPredictionId [EntityId] &lt;p&gt;An ID assigned to the &lt;code&gt;BatchPrediction&lt;/code&gt; at creation. This value should be identical to the value of the &lt;code&gt;BatchPredictionID&lt;/code&gt; in the request.&lt;/p&gt;
-- @param LogUri [PresignedS3Url] &lt;p&gt;A link to the file that contains logs of the &lt;code&gt;CreateBatchPrediction&lt;/code&gt; operation.&lt;/p&gt;
-- @param Message [Message] &lt;p&gt;A description of the most recent details about processing the batch prediction request.&lt;/p&gt;
-- @param CreatedAt [EpochTime] &lt;p&gt;The time when the &lt;code&gt;BatchPrediction&lt;/code&gt; was created. The time is expressed in epoch time.&lt;/p&gt;
-- @param FinishedAt [EpochTime] &lt;p&gt;The epoch time when Amazon Machine Learning marked the &lt;code&gt;BatchPrediction&lt;/code&gt; as &lt;code&gt;COMPLETED&lt;/code&gt; or &lt;code&gt;FAILED&lt;/code&gt;. &lt;code&gt;FinishedAt&lt;/code&gt; is only available when the &lt;code&gt;BatchPrediction&lt;/code&gt; is in the &lt;code&gt;COMPLETED&lt;/code&gt; or &lt;code&gt;FAILED&lt;/code&gt; state.&lt;/p&gt;
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
-- &lt;p&gt;A custom key-value pair associated with an ML object, such as an ML model.&lt;/p&gt;
-- @param Value [TagValue] &lt;p&gt;An optional string, typically used to describe or define the tag. Valid characters include Unicode letters, digits, white space, _, ., /, =, +, -, %, and @.&lt;/p&gt;
-- @param Key [TagKey] &lt;p&gt;A unique identifier for the tag. Valid characters include Unicode letters, digits, white space, _, ., /, =, +, -, %, and @.&lt;/p&gt;
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
-- @param GT [ComparatorValue] &lt;p&gt;The greater than operator. The &lt;code&gt;DataSource&lt;/code&gt; results will have &lt;code&gt;FilterVariable&lt;/code&gt; values that are greater than the value specified with &lt;code&gt;GT&lt;/code&gt;.&lt;/p&gt;
-- @param FilterVariable [DataSourceFilterVariable] &lt;p&gt;Use one of the following variables to filter a list of &lt;code&gt;DataSource&lt;/code&gt;:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;code&gt;CreatedAt&lt;/code&gt; - Sets the search criteria to &lt;code&gt;DataSource&lt;/code&gt; creation dates.&lt;/li&gt; &lt;li&gt; &lt;code&gt;Status&lt;/code&gt; - Sets the search criteria to &lt;code&gt;DataSource&lt;/code&gt; statuses.&lt;/li&gt; &lt;li&gt; &lt;code&gt;Name&lt;/code&gt; - Sets the search criteria to the contents of &lt;code&gt;DataSource&lt;/code&gt; &lt;b&gt; &lt;/b&gt; &lt;code&gt;Name&lt;/code&gt;.&lt;/li&gt; &lt;li&gt; &lt;code&gt;DataUri&lt;/code&gt; - Sets the search criteria to the URI of data files used to create the &lt;code&gt;DataSource&lt;/code&gt;. The URI can identify either a file or an Amazon Simple Storage Service (Amazon S3) bucket or directory.&lt;/li&gt; &lt;li&gt; &lt;code&gt;IAMUser&lt;/code&gt; - Sets the search criteria to the user account that invoked the &lt;code&gt;DataSource&lt;/code&gt; creation.&lt;/li&gt; &lt;/ul&gt;
-- @param GE [ComparatorValue] &lt;p&gt;The greater than or equal to operator. The &lt;code&gt;DataSource&lt;/code&gt; results will have &lt;code&gt;FilterVariable&lt;/code&gt; values that are greater than or equal to the value specified with &lt;code&gt;GE&lt;/code&gt;. &lt;/p&gt;
-- @param NE [ComparatorValue] &lt;p&gt;The not equal to operator. The &lt;code&gt;DataSource&lt;/code&gt; results will have &lt;code&gt;FilterVariable&lt;/code&gt; values not equal to the value specified with &lt;code&gt;NE&lt;/code&gt;.&lt;/p&gt;
-- @param LT [ComparatorValue] &lt;p&gt;The less than operator. The &lt;code&gt;DataSource&lt;/code&gt; results will have &lt;code&gt;FilterVariable&lt;/code&gt; values that are less than the value specified with &lt;code&gt;LT&lt;/code&gt;.&lt;/p&gt;
-- @param LE [ComparatorValue] &lt;p&gt;The less than or equal to operator. The &lt;code&gt;DataSource&lt;/code&gt; results will have &lt;code&gt;FilterVariable&lt;/code&gt; values that are less than or equal to the value specified with &lt;code&gt;LE&lt;/code&gt;.&lt;/p&gt;
-- @param Limit [PageLimit] &lt;p&gt; The maximum number of &lt;code&gt;DataSource&lt;/code&gt; to include in the result.&lt;/p&gt;
-- @param SortOrder [SortOrder] &lt;p&gt;A two-value parameter that determines the sequence of the resulting list of &lt;code&gt;DataSource&lt;/code&gt;.&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;code&gt;asc&lt;/code&gt; - Arranges the list in ascending order (A-Z, 0-9).&lt;/li&gt; &lt;li&gt; &lt;code&gt;dsc&lt;/code&gt; - Arranges the list in descending order (Z-A, 9-0).&lt;/li&gt; &lt;/ul&gt; &lt;p&gt;Results are sorted by &lt;code&gt;FilterVariable&lt;/code&gt;.&lt;/p&gt;
-- @param NextToken [StringType] &lt;p&gt;The ID of the page in the paginated results.&lt;/p&gt;
-- @param EQ [ComparatorValue] &lt;p&gt;The equal to operator. The &lt;code&gt;DataSource&lt;/code&gt; results will have &lt;code&gt;FilterVariable&lt;/code&gt; values that exactly match the value specified with &lt;code&gt;EQ&lt;/code&gt;.&lt;/p&gt;
-- @param Prefix [ComparatorValue] &lt;p&gt;A string that is found at the beginning of a variable, such as &lt;code&gt;Name&lt;/code&gt; or &lt;code&gt;Id&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;For example, a &lt;code&gt;DataSource&lt;/code&gt; could have the &lt;code&gt;Name&lt;/code&gt; &lt;code&gt;2014-09-09-HolidayGiftMailer&lt;/code&gt;. To search for this &lt;code&gt;DataSource&lt;/code&gt;, select &lt;code&gt;Name&lt;/code&gt; for the &lt;code&gt;FilterVariable&lt;/code&gt; and any of the following strings for the &lt;code&gt;Prefix&lt;/code&gt;: &lt;/p&gt; &lt;ul&gt; &lt;li&gt;&lt;p&gt;2014-09&lt;/p&gt;&lt;/li&gt; &lt;li&gt;&lt;p&gt;2014-09-09&lt;/p&gt;&lt;/li&gt; &lt;li&gt;&lt;p&gt;2014-09-09-Holiday&lt;/p&gt;&lt;/li&gt; &lt;/ul&gt;
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
-- &lt;p&gt;The output from a &lt;code&gt;Predict&lt;/code&gt; operation: &lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Details&lt;/code&gt; - Contains the following attributes: &lt;code&gt;DetailsAttributes.PREDICTIVE_MODEL_TYPE - REGRESSION | BINARY | MULTICLASS&lt;/code&gt; &lt;code&gt;DetailsAttributes.ALGORITHM - SGD&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;PredictedLabel&lt;/code&gt; - Present for either a &lt;code&gt;BINARY&lt;/code&gt; or &lt;code&gt;MULTICLASS&lt;/code&gt; &lt;code&gt;MLModel&lt;/code&gt; request. &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;PredictedScores&lt;/code&gt; - Contains the raw classification score corresponding to each label. &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;PredictedValue&lt;/code&gt; - Present for a &lt;code&gt;REGRESSION&lt;/code&gt; &lt;code&gt;MLModel&lt;/code&gt; request. &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param predictedLabel [Label] &lt;p&gt;The prediction label for either a &lt;code&gt;BINARY&lt;/code&gt; or &lt;code&gt;MULTICLASS&lt;/code&gt; &lt;code&gt;MLModel&lt;/code&gt;.&lt;/p&gt;
-- @param predictedValue [floatLabel] The prediction value for &lt;code&gt;REGRESSION&lt;/code&gt; &lt;code&gt;MLModel&lt;/code&gt;.
-- @param predictedScores [ScoreValuePerLabelMap] &lt;p&gt;The output from a &lt;code&gt;Predict&lt;/code&gt; operation: &lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Details&lt;/code&gt; - Contains the following attributes: &lt;code&gt;DetailsAttributes.PREDICTIVE_MODEL_TYPE - REGRESSION | BINARY | MULTICLASS&lt;/code&gt; &lt;code&gt;DetailsAttributes.ALGORITHM - SGD&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;PredictedLabel&lt;/code&gt; - Present for either a &lt;code&gt;BINARY&lt;/code&gt; or &lt;code&gt;MULTICLASS&lt;/code&gt; &lt;code&gt;MLModel&lt;/code&gt; request. &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;PredictedScores&lt;/code&gt; - Contains the raw classification score corresponding to each label. &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;PredictedValue&lt;/code&gt; - Present for a &lt;code&gt;REGRESSION&lt;/code&gt; &lt;code&gt;MLModel&lt;/code&gt; request. &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param details [DetailsMap] &lt;p&gt;The output from a &lt;code&gt;Predict&lt;/code&gt; operation: &lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Details&lt;/code&gt; - Contains the following attributes: &lt;code&gt;DetailsAttributes.PREDICTIVE_MODEL_TYPE - REGRESSION | BINARY | MULTICLASS&lt;/code&gt; &lt;code&gt;DetailsAttributes.ALGORITHM - SGD&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;PredictedLabel&lt;/code&gt; - Present for either a &lt;code&gt;BINARY&lt;/code&gt; or &lt;code&gt;MULTICLASS&lt;/code&gt; &lt;code&gt;MLModel&lt;/code&gt; request. &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;PredictedScores&lt;/code&gt; - Contains the raw classification score corresponding to each label. &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;PredictedValue&lt;/code&gt; - Present for a &lt;code&gt;REGRESSION&lt;/code&gt; &lt;code&gt;MLModel&lt;/code&gt; request. &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
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
-- &lt;p&gt;The exception is thrown when a predict request is made to an unmounted &lt;code&gt;MLModel&lt;/code&gt;.&lt;/p&gt;
-- @param message [ErrorMessage] &lt;p&gt;The exception is thrown when a predict request is made to an unmounted &lt;code&gt;MLModel&lt;/code&gt;.&lt;/p&gt;
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
-- @param DataSourceName [EntityName] &lt;p&gt;A user-supplied name or description of the &lt;code&gt;DataSource&lt;/code&gt;. &lt;/p&gt;
-- @param RoleARN [RoleARN] &lt;p&gt;A fully specified role Amazon Resource Name (ARN). Amazon ML assumes the role on behalf of the user to create the following: &lt;/p&gt; &lt;p&gt; &lt;ul&gt; &lt;li&gt;&lt;p&gt;A security group to allow Amazon ML to execute the &lt;code&gt;SelectSqlQuery&lt;/code&gt; query on an Amazon Redshift cluster&lt;/p&gt;&lt;/li&gt; &lt;li&gt;&lt;p&gt;An Amazon S3 bucket policy to grant Amazon ML read/write permissions on the &lt;code&gt;S3StagingLocation&lt;/code&gt;&lt;/p&gt;&lt;/li&gt; &lt;/ul&gt; &lt;/p&gt;
-- @param ComputeStatistics [ComputeStatistics] &lt;p&gt;The compute statistics for a &lt;code&gt;DataSource&lt;/code&gt;. The statistics are generated from the observation data referenced by a &lt;code&gt;DataSource&lt;/code&gt;. Amazon ML uses the statistics internally during &lt;code&gt;MLModel&lt;/code&gt; training. This parameter must be set to &lt;code&gt;true&lt;/code&gt; if the &lt;code&gt;DataSource&lt;/code&gt; needs to be used for &lt;code&gt;MLModel&lt;/code&gt; training.&lt;/p&gt;
-- @param DataSourceId [EntityId] &lt;p&gt;A user-supplied ID that uniquely identifies the &lt;code&gt;DataSource&lt;/code&gt;.&lt;/p&gt;
-- @param DataSpec [RedshiftDataSpec] &lt;p&gt;The data specification of an Amazon Redshift &lt;code&gt;DataSource&lt;/code&gt;:&lt;/p&gt; &lt;ul&gt; &lt;li&gt;&lt;p&gt;DatabaseInformation - &lt;ul&gt; &lt;li&gt; &lt;code&gt;DatabaseName&lt;/code&gt; - The name of the Amazon Redshift database. &lt;/li&gt; &lt;li&gt; &lt;code&gt; ClusterIdentifier&lt;/code&gt; - The unique ID for the Amazon Redshift cluster.&lt;/li&gt; &lt;/ul&gt;&lt;/p&gt;&lt;/li&gt; &lt;li&gt;&lt;p&gt;DatabaseCredentials - The AWS Identity and Access Management (IAM) credentials that are used to connect to the Amazon Redshift database.&lt;/p&gt;&lt;/li&gt; &lt;li&gt;&lt;p&gt;SelectSqlQuery - The query that is used to retrieve the observation data for the &lt;code&gt;Datasource&lt;/code&gt;.&lt;/p&gt;&lt;/li&gt; &lt;li&gt;&lt;p&gt;S3StagingLocation - The Amazon Simple Storage Service (Amazon S3) location for staging Amazon Redshift data. The data retrieved from Amazon Redshift using the &lt;code&gt;SelectSqlQuery&lt;/code&gt; query is stored in this location.&lt;/p&gt;&lt;/li&gt; &lt;li&gt;&lt;p&gt;DataSchemaUri - The Amazon S3 location of the &lt;code&gt;DataSchema&lt;/code&gt;.&lt;/p&gt;&lt;/li&gt; &lt;li&gt;&lt;p&gt;DataSchema - A JSON string representing the schema. This is not required if &lt;code&gt;DataSchemaUri&lt;/code&gt; is specified. &lt;/p&gt;&lt;/li&gt; &lt;li&gt; &lt;p&gt;DataRearrangement - A JSON string that represents the splitting and rearrangement requirements for the &lt;code&gt;DataSource&lt;/code&gt;.&lt;/p&gt; &lt;p&gt; Sample - &lt;code&gt; &quot;{\&quot;splitting\&quot;:{\&quot;percentBegin\&quot;:10,\&quot;percentEnd\&quot;:60}}&quot;&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
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
-- &lt;p&gt;Amazon ML returns the following elements. &lt;/p&gt;
-- @param ResourceType [TaggableResourceType] &lt;p&gt;The type of the ML object from which tags were deleted.&lt;/p&gt;
-- @param ResourceId [EntityId] &lt;p&gt;The ID of the ML object from which tags were deleted.&lt;/p&gt;
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

-- &lt;p&gt;The username to be used by Amazon ML to connect to database on an Amazon RDS instance. The username should have sufficient permissions to execute an &lt;code&gt;RDSSelectSqlQuery&lt;/code&gt; query.&lt;/p&gt;
function M.RDSDatabaseUsername(str)
	M.AssertRDSDatabaseUsername(str)
	return str
end

function M.AssertDetailsAttributes(str)
	assert(str)
	assert(type(str) == "string", "Expected DetailsAttributes to be of type 'string'")
end

-- Contains the key values of &lt;code&gt;DetailsMap&lt;/code&gt;: &lt;code&gt;PredictiveModelType&lt;/code&gt; - Indicates the type of the &lt;code&gt;MLModel&lt;/code&gt;. &lt;code&gt;Algorithm&lt;/code&gt; - Indicates the algorithm that was used for the &lt;code&gt;MLModel&lt;/code&gt;.
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

-- &lt;p&gt;The name of a database hosted on an RDS DB instance.&lt;/p&gt;
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

-- &lt;p&gt;A password to be used by Amazon ML to connect to a database on an Amazon Redshift cluster. The password should have sufficient permissions to execute a &lt;code&gt;RedshiftSelectSqlQuery&lt;/code&gt; query. The password should be valid for an Amazon Redshift &lt;a href=&quot;http://docs.aws.amazon.com/redshift/latest/dg/r_CREATE_USER.html&quot;&gt;USER&lt;/a&gt;.&lt;/p&gt;
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

-- &lt;p&gt; Describes the SQL query to execute on the Amazon Redshift database. The SQL query should be valid for an Amazon Redshift &lt;a href=&quot;http://docs.aws.amazon.com/redshift/latest/dg/r_SELECT_synopsis.html&quot;&gt;SELECT&lt;/a&gt;. &lt;/p&gt;
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

-- &lt;p&gt;The ID of an Amazon Redshift cluster.&lt;/p&gt;
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

-- &lt;p&gt;The SQL query to be executed against the Amazon RDS database. The SQL query should be valid for the Amazon RDS type being used. &lt;/p&gt;
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

-- &lt;p&gt;The function used to train an &lt;code&gt;MLModel&lt;/code&gt;. Training choices supported by Amazon ML include the following:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;code&gt;SGD&lt;/code&gt; - Stochastic Gradient Descent.&lt;/li&gt; &lt;li&gt; &lt;code&gt;RandomForest&lt;/code&gt; - Random forest of decision trees.&lt;/li&gt; &lt;/ul&gt;
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

-- &lt;p&gt;A username to be used by Amazon Machine Learning (Amazon ML)to connect to a database on an Amazon Redshift cluster. The username should have sufficient permissions to execute the &lt;code&gt;RedshiftSelectSqlQuery&lt;/code&gt; query. The username should be valid for an Amazon Redshift &lt;a href=&quot;http://docs.aws.amazon.com/redshift/latest/dg/r_CREATE_USER.html&quot;&gt;USER&lt;/a&gt;.&lt;/p&gt;
function M.RedshiftDatabaseUsername(str)
	M.AssertRedshiftDatabaseUsername(str)
	return str
end

function M.AssertMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected Message to be of type 'string'")
	assert(#str <= 10240, "Expected string to be max 10240 characters")
end

-- &lt;p&gt; Description of the most recent details about an object.&lt;/p&gt;
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

-- &lt;p&gt;A user-supplied name or description of the Amazon ML resource.&lt;/p&gt;
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

-- &lt;p&gt;A list of the variables to use in searching or filtering &lt;code&gt;BatchPrediction&lt;/code&gt;.&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;code&gt;CreatedAt&lt;/code&gt; - Sets the search criteria to &lt;code&gt;BatchPrediction&lt;/code&gt; creation date.&lt;/li&gt; &lt;li&gt; &lt;code&gt;Status&lt;/code&gt; - Sets the search criteria to &lt;code&gt;BatchPrediction&lt;/code&gt; status.&lt;/li&gt; &lt;li&gt; &lt;code&gt;Name&lt;/code&gt; - Sets the search criteria to the contents of &lt;code&gt;BatchPrediction&lt;/code&gt;&lt;b&gt; &lt;/b&gt; &lt;code&gt;Name&lt;/code&gt;.&lt;/li&gt; &lt;li&gt; &lt;code&gt;IAMUser&lt;/code&gt; - Sets the search criteria to the user account that invoked the &lt;code&gt;BatchPrediction&lt;/code&gt; creation.&lt;/li&gt; &lt;li&gt; &lt;code&gt;MLModelId&lt;/code&gt; - Sets the search criteria to the &lt;code&gt;MLModel&lt;/code&gt; used in the &lt;code&gt;BatchPrediction&lt;/code&gt;.&lt;/li&gt; &lt;li&gt; &lt;code&gt;DataSourceId&lt;/code&gt; - Sets the search criteria to the &lt;code&gt;DataSource&lt;/code&gt; used in the &lt;code&gt;BatchPrediction&lt;/code&gt;.&lt;/li&gt; &lt;li&gt; &lt;code&gt;DataURI&lt;/code&gt; - Sets the search criteria to the data file(s) used in the &lt;code&gt;BatchPrediction&lt;/code&gt;. The URL can identify either a file or an Amazon Simple Storage Service (Amazon S3) bucket or directory.&lt;/li&gt; &lt;/ul&gt;
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

-- &lt;p&gt;A list of the variables to use in searching or filtering &lt;code&gt;DataSource&lt;/code&gt;.&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;code&gt;CreatedAt&lt;/code&gt; - Sets the search criteria to &lt;code&gt;DataSource&lt;/code&gt; creation date.&lt;/li&gt; &lt;li&gt; &lt;code&gt;Status&lt;/code&gt; - Sets the search criteria to &lt;code&gt;DataSource&lt;/code&gt; status.&lt;/li&gt; &lt;li&gt; &lt;code&gt;Name&lt;/code&gt; - Sets the search criteria to the contents of &lt;code&gt;DataSource&lt;/code&gt; &lt;b&gt; &lt;/b&gt; &lt;code&gt;Name&lt;/code&gt;.&lt;/li&gt; &lt;li&gt; &lt;code&gt;DataUri&lt;/code&gt; - Sets the search criteria to the URI of data files used to create the &lt;code&gt;DataSource&lt;/code&gt;. The URI can identify either a file or an Amazon Simple Storage Service (Amazon S3) bucket or directory.&lt;/li&gt; &lt;li&gt; &lt;code&gt;IAMUser&lt;/code&gt; - Sets the search criteria to the user account that invoked the &lt;code&gt;DataSource&lt;/code&gt; creation.&lt;/li&gt; &lt;/ul&gt; &lt;note&gt;&lt;title&gt;Note&lt;/title&gt; &lt;p&gt;The variable names should match the variable names in the &lt;code&gt;DataSource&lt;/code&gt;.&lt;/p&gt; &lt;/note&gt;
function M.DataSourceFilterVariable(str)
	M.AssertDataSourceFilterVariable(str)
	return str
end

function M.AssertDataSchema(str)
	assert(str)
	assert(type(str) == "string", "Expected DataSchema to be of type 'string'")
	assert(#str <= 131071, "Expected string to be max 131071 characters")
end

-- &lt;p&gt;The schema of a &lt;code&gt;DataSource&lt;/code&gt;. The &lt;code&gt;DataSchema&lt;/code&gt; defines the structure of the observation data in the data file(s) referenced in the &lt;code&gt;DataSource&lt;/code&gt;. The DataSource schema is expressed in JSON format.&lt;/p&gt; &lt;p&gt;&lt;code&gt;DataSchema&lt;/code&gt; is not required if you specify a &lt;code&gt;DataSchemaUri&lt;/code&gt;&lt;/p&gt; &lt;p&gt;{ &quot;version&quot;: &quot;1.0&quot;, &quot;recordAnnotationFieldName&quot;: &quot;F1&quot;, &quot;recordWeightFieldName&quot;: &quot;F2&quot;, &quot;targetFieldName&quot;: &quot;F3&quot;, &quot;dataFormat&quot;: &quot;CSV&quot;, &quot;dataFileContainsHeader&quot;: true, &quot;variables&quot;: [ { &quot;fieldName&quot;: &quot;F1&quot;, &quot;fieldType&quot;: &quot;TEXT&quot; }, { &quot;fieldName&quot;: &quot;F2&quot;, &quot;fieldType&quot;: &quot;NUMERIC&quot; }, { &quot;fieldName&quot;: &quot;F3&quot;, &quot;fieldType&quot;: &quot;CATEGORICAL&quot; }, { &quot;fieldName&quot;: &quot;F4&quot;, &quot;fieldType&quot;: &quot;NUMERIC&quot; }, { &quot;fieldName&quot;: &quot;F5&quot;, &quot;fieldType&quot;: &quot;CATEGORICAL&quot; }, { &quot;fieldName&quot;: &quot;F6&quot;, &quot;fieldType&quot;: &quot;TEXT&quot; }, { &quot;fieldName&quot;: &quot;F7&quot;, &quot;fieldType&quot;: &quot;WEIGHTED_INT_SEQUENCE&quot; }, { &quot;fieldName&quot;: &quot;F8&quot;, &quot;fieldType&quot;: &quot;WEIGHTED_STRING_SEQUENCE&quot; } ], &quot;excludedVariableNames&quot;: [ &quot;F6&quot; ] } &lt;/p&gt;
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

-- &lt;p&gt;The name of a variable. Currently it's used to specify the name of the target value, label, weight, and tags.&lt;/p&gt;
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

-- &lt;p&gt;The name of a database hosted on an Amazon Redshift cluster.&lt;/p&gt;
function M.RedshiftDatabaseName(str)
	M.AssertRedshiftDatabaseName(str)
	return str
end

function M.AssertVariableValue(str)
	assert(str)
	assert(type(str) == "string", "Expected VariableValue to be of type 'string'")
end

-- &lt;p&gt;The value of a variable. Currently it's used to specify values of the target value, weights, and tag variables and for filtering variable values.&lt;/p&gt;
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

-- &lt;p&gt;The password to be used by Amazon ML to connect to a database on an RDS DB instance. The password should have sufficient permissions to execute the &lt;code&gt;RDSSelectQuery&lt;/code&gt; query.&lt;/p&gt;
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

-- &lt;p&gt;The value specified in a filtering condition. The &lt;code&gt;ComparatorValue&lt;/code&gt; becomes the reference value when matching or evaluating data values in filtering and searching functions.&lt;/p&gt;
function M.ComparatorValue(str)
	M.AssertComparatorValue(str)
	return str
end

function M.AssertEvaluationFilterVariable(str)
	assert(str)
	assert(type(str) == "string", "Expected EvaluationFilterVariable to be of type 'string'")
end

-- &lt;p&gt;A list of the variables to use in searching or filtering &lt;code&gt;Evaluation&lt;/code&gt;.&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;code&gt;CreatedAt&lt;/code&gt; - Sets the search criteria to &lt;code&gt;Evaluation&lt;/code&gt; creation date.&lt;/li&gt; &lt;li&gt; &lt;code&gt;Status&lt;/code&gt; - Sets the search criteria to &lt;code&gt;Evaluation&lt;/code&gt; status.&lt;/li&gt; &lt;li&gt; &lt;code&gt;Name&lt;/code&gt; - Sets the search criteria to the contents of &lt;code&gt;Evaluation&lt;/code&gt; &lt;b&gt; &lt;/b&gt; &lt;code&gt;Name&lt;/code&gt;.&lt;/li&gt; &lt;li&gt; &lt;code&gt;IAMUser&lt;/code&gt; - Sets the search criteria to the user account that invoked an evaluation.&lt;/li&gt; &lt;li&gt; &lt;code&gt;MLModelId&lt;/code&gt; - Sets the search criteria to the &lt;code&gt;Predictor&lt;/code&gt; that was evaluated.&lt;/li&gt; &lt;li&gt; &lt;code&gt;DataSourceId&lt;/code&gt; - Sets the search criteria to the &lt;code&gt;DataSource&lt;/code&gt; used in evaluation.&lt;/li&gt; &lt;li&gt; &lt;code&gt;DataUri&lt;/code&gt; - Sets the search criteria to the data file(s) used in evaluation. The URL can identify either a file or an Amazon Simple Storage Service (Amazon S3) bucket or directory.&lt;/li&gt; &lt;/ul&gt;
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

-- &lt;p&gt;Object status with the following possible values:&lt;/p&gt; &lt;ul&gt; &lt;li&gt;&lt;code&gt;PENDING&lt;/code&gt;&lt;/li&gt; &lt;li&gt;&lt;code&gt;INPROGRESS&lt;/code&gt;&lt;/li&gt; &lt;li&gt;&lt;code&gt;FAILED&lt;/code&gt;&lt;/li&gt; &lt;li&gt;&lt;code&gt;COMPLETED&lt;/code&gt;&lt;/li&gt; &lt;li&gt;&lt;code&gt;DELETED&lt;/code&gt;&lt;/li&gt; &lt;/ul&gt;
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

-- &lt;p&gt;An Amazon Web Service (AWS) user account identifier. The account identifier can be an AWS root account or an AWS Identity and Access Management (IAM) user.&lt;/p&gt;
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

-- &lt;p&gt;String type.&lt;/p&gt;
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

-- &lt;p&gt;The Amazon Resource Name (ARN) of an &lt;a href=&quot;http://docs.aws.amazon.com/IAM/latest/UserGuide/roles-toplevel.html#roles-about-termsandconcepts&quot;&gt;AWS IAM Role&lt;/a&gt;, such as the following: arn:aws:iam::account:role/rolename. &lt;/p&gt;
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

-- &lt;p&gt;A reference to a file or bucket on Amazon Simple Storage Service (Amazon S3).&lt;/p&gt;
function M.S3Url(str)
	M.AssertS3Url(str)
	return str
end

function M.AssertSortOrder(str)
	assert(str)
	assert(type(str) == "string", "Expected SortOrder to be of type 'string'")
end

-- &lt;p&gt;The sort order specified in a listing condition. Possible values include the following:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;code&gt;asc&lt;/code&gt; - Present the information in ascending order (from A-Z).&lt;/li&gt; &lt;li&gt; &lt;code&gt;dsc&lt;/code&gt; - Present the information in descending order (from Z-A).&lt;/li&gt; &lt;/ul&gt;
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
