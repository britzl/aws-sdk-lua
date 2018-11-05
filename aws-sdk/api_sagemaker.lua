--- GENERATED CODE - DO NOT MODIFY
-- Amazon SageMaker Service (sagemaker-2017-07-24)

local M = {}

M.metadata = {
	api_version = "2017-07-24",
	json_version = "1.1",
	protocol = "json",
	checksum_format = "",
	endpoint_prefix = "api.sagemaker",
	service_abbreviation = "SageMaker",
	service_full_name = "Amazon SageMaker Service",
	signature_version = "v4",
	target_prefix = "SageMaker",
	timestamp_format = "",
	global_endpoint = "",
	uid = "sagemaker-2017-07-24",
}

local keys = {}
local asserts = {}

keys.CategoricalParameterRange = { ["Values"] = true, ["Name"] = true, nil }

function asserts.AssertCategoricalParameterRange(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CategoricalParameterRange to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["Values"], "Expected key Values to exist in table")
	if struct["Values"] then asserts.AssertParameterValues(struct["Values"]) end
	if struct["Name"] then asserts.AssertParameterKey(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.CategoricalParameterRange[k], "CategoricalParameterRange contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CategoricalParameterRange
-- <p>A list of categorical hyperparameters to tune.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Values [ParameterValues] <p>A list of the categories for the hyperparameter.</p>
-- * Name [ParameterKey] <p>The name of the categorical hyperparameter to tune.</p>
-- Required key: Name
-- Required key: Values
-- @return CategoricalParameterRange structure as a key-value pair table
function M.CategoricalParameterRange(args)
	assert(args, "You must provide an argument table when creating CategoricalParameterRange")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Values"] = args["Values"],
		["Name"] = args["Name"],
	}
	asserts.AssertCategoricalParameterRange(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateEndpointConfigInput = { ["EndpointConfigName"] = true, ["KmsKeyId"] = true, ["ProductionVariants"] = true, ["Tags"] = true, nil }

function asserts.AssertCreateEndpointConfigInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateEndpointConfigInput to be of type 'table'")
	assert(struct["EndpointConfigName"], "Expected key EndpointConfigName to exist in table")
	assert(struct["ProductionVariants"], "Expected key ProductionVariants to exist in table")
	if struct["EndpointConfigName"] then asserts.AssertEndpointConfigName(struct["EndpointConfigName"]) end
	if struct["KmsKeyId"] then asserts.AssertKmsKeyId(struct["KmsKeyId"]) end
	if struct["ProductionVariants"] then asserts.AssertProductionVariantList(struct["ProductionVariants"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateEndpointConfigInput[k], "CreateEndpointConfigInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateEndpointConfigInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EndpointConfigName [EndpointConfigName] <p>The name of the endpoint configuration. You specify this name in a <a href="http://docs.aws.amazon.com/sagemaker/latest/dg/API_CreateEndpoint.html">CreateEndpoint</a> request. </p>
-- * KmsKeyId [KmsKeyId] <p>The Amazon Resource Name (ARN) of a AWS Key Management Service key that Amazon SageMaker uses to encrypt data on the storage volume attached to the ML compute instance that hosts the endpoint.</p>
-- * ProductionVariants [ProductionVariantList] <p>An array of <code>ProductionVariant</code> objects, one for each model that you want to host at this endpoint.</p>
-- * Tags [TagList] <p>An array of key-value pairs. For more information, see <a href="http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html#allocation-what">Using Cost Allocation Tags</a> in the <i>AWS Billing and Cost Management User Guide</i>. </p>
-- Required key: EndpointConfigName
-- Required key: ProductionVariants
-- @return CreateEndpointConfigInput structure as a key-value pair table
function M.CreateEndpointConfigInput(args)
	assert(args, "You must provide an argument table when creating CreateEndpointConfigInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EndpointConfigName"] = args["EndpointConfigName"],
		["KmsKeyId"] = args["KmsKeyId"],
		["ProductionVariants"] = args["ProductionVariants"],
		["Tags"] = args["Tags"],
	}
	asserts.AssertCreateEndpointConfigInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TrainingJobStatusCounters = { ["Stopped"] = true, ["Completed"] = true, ["NonRetryableError"] = true, ["InProgress"] = true, ["RetryableError"] = true, nil }

function asserts.AssertTrainingJobStatusCounters(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TrainingJobStatusCounters to be of type 'table'")
	if struct["Stopped"] then asserts.AssertTrainingJobStatusCounter(struct["Stopped"]) end
	if struct["Completed"] then asserts.AssertTrainingJobStatusCounter(struct["Completed"]) end
	if struct["NonRetryableError"] then asserts.AssertTrainingJobStatusCounter(struct["NonRetryableError"]) end
	if struct["InProgress"] then asserts.AssertTrainingJobStatusCounter(struct["InProgress"]) end
	if struct["RetryableError"] then asserts.AssertTrainingJobStatusCounter(struct["RetryableError"]) end
	for k,_ in pairs(struct) do
		assert(keys.TrainingJobStatusCounters[k], "TrainingJobStatusCounters contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TrainingJobStatusCounters
-- <p>The numbers of training jobs launched by a hyperparameter tuning job, categorized by status.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Stopped [TrainingJobStatusCounter] <p>The number of training jobs launched by a hyperparameter tuning job that were manually stopped.</p>
-- * Completed [TrainingJobStatusCounter] <p>The number of completed training jobs launched by a hyperparameter tuning job.</p>
-- * NonRetryableError [TrainingJobStatusCounter] <p>The number of training jobs that failed and can't be retried. A failed training job can't be retried if it failed because a client error occurred.</p>
-- * InProgress [TrainingJobStatusCounter] <p>The number of in-progress training jobs launched by a hyperparameter tuning job.</p>
-- * RetryableError [TrainingJobStatusCounter] <p>The number of training jobs that failed, but can be retried. A failed training job can be retried only if it failed because an internal service error occurred.</p>
-- @return TrainingJobStatusCounters structure as a key-value pair table
function M.TrainingJobStatusCounters(args)
	assert(args, "You must provide an argument table when creating TrainingJobStatusCounters")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Stopped"] = args["Stopped"],
		["Completed"] = args["Completed"],
		["NonRetryableError"] = args["NonRetryableError"],
		["InProgress"] = args["InProgress"],
		["RetryableError"] = args["RetryableError"],
	}
	asserts.AssertTrainingJobStatusCounters(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ProductionVariant = { ["InitialVariantWeight"] = true, ["ModelName"] = true, ["VariantName"] = true, ["InitialInstanceCount"] = true, ["InstanceType"] = true, nil }

function asserts.AssertProductionVariant(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ProductionVariant to be of type 'table'")
	assert(struct["VariantName"], "Expected key VariantName to exist in table")
	assert(struct["ModelName"], "Expected key ModelName to exist in table")
	assert(struct["InitialInstanceCount"], "Expected key InitialInstanceCount to exist in table")
	assert(struct["InstanceType"], "Expected key InstanceType to exist in table")
	if struct["InitialVariantWeight"] then asserts.AssertVariantWeight(struct["InitialVariantWeight"]) end
	if struct["ModelName"] then asserts.AssertModelName(struct["ModelName"]) end
	if struct["VariantName"] then asserts.AssertVariantName(struct["VariantName"]) end
	if struct["InitialInstanceCount"] then asserts.AssertTaskCount(struct["InitialInstanceCount"]) end
	if struct["InstanceType"] then asserts.AssertProductionVariantInstanceType(struct["InstanceType"]) end
	for k,_ in pairs(struct) do
		assert(keys.ProductionVariant[k], "ProductionVariant contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ProductionVariant
-- <p>Identifies a model that you want to host and the resources to deploy for hosting it. If you are deploying multiple models, tell Amazon SageMaker how to distribute traffic among the models by specifying variant weights. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InitialVariantWeight [VariantWeight] <p>Determines initial traffic distribution among all of the models that you specify in the endpoint configuration. The traffic to a production variant is determined by the ratio of the <code>VariantWeight</code> to the sum of all <code>VariantWeight</code> values across all ProductionVariants. If unspecified, it defaults to 1.0. </p>
-- * ModelName [ModelName] <p>The name of the model that you want to host. This is the name that you specified when creating the model.</p>
-- * VariantName [VariantName] <p>The name of the production variant.</p>
-- * InitialInstanceCount [TaskCount] <p>Number of instances to launch initially.</p>
-- * InstanceType [ProductionVariantInstanceType] <p>The ML compute instance type.</p>
-- Required key: VariantName
-- Required key: ModelName
-- Required key: InitialInstanceCount
-- Required key: InstanceType
-- @return ProductionVariant structure as a key-value pair table
function M.ProductionVariant(args)
	assert(args, "You must provide an argument table when creating ProductionVariant")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["InitialVariantWeight"] = args["InitialVariantWeight"],
		["ModelName"] = args["ModelName"],
		["VariantName"] = args["VariantName"],
		["InitialInstanceCount"] = args["InitialInstanceCount"],
		["InstanceType"] = args["InstanceType"],
	}
	asserts.AssertProductionVariant(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateNotebookInstanceOutput = { ["NotebookInstanceArn"] = true, nil }

function asserts.AssertCreateNotebookInstanceOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateNotebookInstanceOutput to be of type 'table'")
	if struct["NotebookInstanceArn"] then asserts.AssertNotebookInstanceArn(struct["NotebookInstanceArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateNotebookInstanceOutput[k], "CreateNotebookInstanceOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateNotebookInstanceOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NotebookInstanceArn [NotebookInstanceArn] <p>The Amazon Resource Name (ARN) of the notebook instance. </p>
-- @return CreateNotebookInstanceOutput structure as a key-value pair table
function M.CreateNotebookInstanceOutput(args)
	assert(args, "You must provide an argument table when creating CreateNotebookInstanceOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NotebookInstanceArn"] = args["NotebookInstanceArn"],
	}
	asserts.AssertCreateNotebookInstanceOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListEndpointsOutput = { ["Endpoints"] = true, ["NextToken"] = true, nil }

function asserts.AssertListEndpointsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListEndpointsOutput to be of type 'table'")
	assert(struct["Endpoints"], "Expected key Endpoints to exist in table")
	if struct["Endpoints"] then asserts.AssertEndpointSummaryList(struct["Endpoints"]) end
	if struct["NextToken"] then asserts.AssertPaginationToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListEndpointsOutput[k], "ListEndpointsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListEndpointsOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Endpoints [EndpointSummaryList] <p> An array or endpoint objects. </p>
-- * NextToken [PaginationToken] <p> If the response is truncated, Amazon SageMaker returns this token. To retrieve the next set of training jobs, use it in the subsequent request. </p>
-- Required key: Endpoints
-- @return ListEndpointsOutput structure as a key-value pair table
function M.ListEndpointsOutput(args)
	assert(args, "You must provide an argument table when creating ListEndpointsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Endpoints"] = args["Endpoints"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListEndpointsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.HyperParameterAlgorithmSpecification = { ["TrainingInputMode"] = true, ["TrainingImage"] = true, ["MetricDefinitions"] = true, nil }

function asserts.AssertHyperParameterAlgorithmSpecification(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HyperParameterAlgorithmSpecification to be of type 'table'")
	assert(struct["TrainingImage"], "Expected key TrainingImage to exist in table")
	assert(struct["TrainingInputMode"], "Expected key TrainingInputMode to exist in table")
	if struct["TrainingInputMode"] then asserts.AssertTrainingInputMode(struct["TrainingInputMode"]) end
	if struct["TrainingImage"] then asserts.AssertAlgorithmImage(struct["TrainingImage"]) end
	if struct["MetricDefinitions"] then asserts.AssertMetricDefinitionList(struct["MetricDefinitions"]) end
	for k,_ in pairs(struct) do
		assert(keys.HyperParameterAlgorithmSpecification[k], "HyperParameterAlgorithmSpecification contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HyperParameterAlgorithmSpecification
-- <p>Specifies which training algorithm to use for training jobs that a hyperparameter tuning job launches and the metrics to monitor.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TrainingInputMode [TrainingInputMode] <p>The input mode that the algorithm supports: File or Pipe. In File input mode, Amazon SageMaker downloads the training data from Amazon S3 to the storage volume that is attached to the training instance and mounts the directory to the Docker volume for the training container. In Pipe input mode, Amazon SageMaker streams data directly from Amazon S3 to the container. </p> <p>If you specify File mode, make sure that you provision the storage volume that is attached to the training instance with enough capacity to accommodate the training data downloaded from Amazon S3, the model artifacts, and intermediate information.</p> <p/> <p>For more information about input modes, see <a href="http://docs.aws.amazon.com/sagemaker/latest/dg/algos.html">Algorithms</a>. </p>
-- * TrainingImage [AlgorithmImage] <p> The registry path of the Docker image that contains the training algorithm. For information about Docker registry paths for built-in algorithms, see <a href="http://docs.aws.amazon.com/sagemaker/latest/dg/sagemaker-algo-docker-registry-paths.html">Algorithms Provided by Amazon SageMaker: Common Parameters</a>.</p>
-- * MetricDefinitions [MetricDefinitionList] <p>An array of <a>MetricDefinition</a> objects that specify the metrics that the algorithm emits.</p>
-- Required key: TrainingImage
-- Required key: TrainingInputMode
-- @return HyperParameterAlgorithmSpecification structure as a key-value pair table
function M.HyperParameterAlgorithmSpecification(args)
	assert(args, "You must provide an argument table when creating HyperParameterAlgorithmSpecification")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TrainingInputMode"] = args["TrainingInputMode"],
		["TrainingImage"] = args["TrainingImage"],
		["MetricDefinitions"] = args["MetricDefinitions"],
	}
	asserts.AssertHyperParameterAlgorithmSpecification(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateEndpointOutput = { ["EndpointArn"] = true, nil }

function asserts.AssertCreateEndpointOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateEndpointOutput to be of type 'table'")
	assert(struct["EndpointArn"], "Expected key EndpointArn to exist in table")
	if struct["EndpointArn"] then asserts.AssertEndpointArn(struct["EndpointArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateEndpointOutput[k], "CreateEndpointOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateEndpointOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EndpointArn [EndpointArn] <p>The Amazon Resource Name (ARN) of the endpoint.</p>
-- Required key: EndpointArn
-- @return CreateEndpointOutput structure as a key-value pair table
function M.CreateEndpointOutput(args)
	assert(args, "You must provide an argument table when creating CreateEndpointOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EndpointArn"] = args["EndpointArn"],
	}
	asserts.AssertCreateEndpointOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StopTrainingJobRequest = { ["TrainingJobName"] = true, nil }

function asserts.AssertStopTrainingJobRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopTrainingJobRequest to be of type 'table'")
	assert(struct["TrainingJobName"], "Expected key TrainingJobName to exist in table")
	if struct["TrainingJobName"] then asserts.AssertTrainingJobName(struct["TrainingJobName"]) end
	for k,_ in pairs(struct) do
		assert(keys.StopTrainingJobRequest[k], "StopTrainingJobRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopTrainingJobRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TrainingJobName [TrainingJobName] <p>The name of the training job to stop.</p>
-- Required key: TrainingJobName
-- @return StopTrainingJobRequest structure as a key-value pair table
function M.StopTrainingJobRequest(args)
	assert(args, "You must provide an argument table when creating StopTrainingJobRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TrainingJobName"] = args["TrainingJobName"],
	}
	asserts.AssertStopTrainingJobRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StopHyperParameterTuningJobRequest = { ["HyperParameterTuningJobName"] = true, nil }

function asserts.AssertStopHyperParameterTuningJobRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopHyperParameterTuningJobRequest to be of type 'table'")
	assert(struct["HyperParameterTuningJobName"], "Expected key HyperParameterTuningJobName to exist in table")
	if struct["HyperParameterTuningJobName"] then asserts.AssertHyperParameterTuningJobName(struct["HyperParameterTuningJobName"]) end
	for k,_ in pairs(struct) do
		assert(keys.StopHyperParameterTuningJobRequest[k], "StopHyperParameterTuningJobRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopHyperParameterTuningJobRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * HyperParameterTuningJobName [HyperParameterTuningJobName] <p>The name of the tuning job to stop.</p>
-- Required key: HyperParameterTuningJobName
-- @return StopHyperParameterTuningJobRequest structure as a key-value pair table
function M.StopHyperParameterTuningJobRequest(args)
	assert(args, "You must provide an argument table when creating StopHyperParameterTuningJobRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["HyperParameterTuningJobName"] = args["HyperParameterTuningJobName"],
	}
	asserts.AssertStopHyperParameterTuningJobRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListTrainingJobsForHyperParameterTuningJobRequest = { ["HyperParameterTuningJobName"] = true, ["MaxResults"] = true, ["SortOrder"] = true, ["StatusEquals"] = true, ["NextToken"] = true, ["SortBy"] = true, nil }

function asserts.AssertListTrainingJobsForHyperParameterTuningJobRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTrainingJobsForHyperParameterTuningJobRequest to be of type 'table'")
	assert(struct["HyperParameterTuningJobName"], "Expected key HyperParameterTuningJobName to exist in table")
	if struct["HyperParameterTuningJobName"] then asserts.AssertHyperParameterTuningJobName(struct["HyperParameterTuningJobName"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	if struct["SortOrder"] then asserts.AssertSortOrder(struct["SortOrder"]) end
	if struct["StatusEquals"] then asserts.AssertTrainingJobStatus(struct["StatusEquals"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["SortBy"] then asserts.AssertTrainingJobSortByOptions(struct["SortBy"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTrainingJobsForHyperParameterTuningJobRequest[k], "ListTrainingJobsForHyperParameterTuningJobRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTrainingJobsForHyperParameterTuningJobRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * HyperParameterTuningJobName [HyperParameterTuningJobName] <p>The name of the tuning job whose training jobs you want to list.</p>
-- * MaxResults [MaxResults] <p>The maximum number of training jobs to return. The default value is 10.</p>
-- * SortOrder [SortOrder] <p>The sort order for results. The default is <code>Ascending</code>.</p>
-- * StatusEquals [TrainingJobStatus] <p>A filter that returns only training jobs with the specified status.</p>
-- * NextToken [NextToken] <p>If the result of the previous <code>ListTrainingJobsForHyperParameterTuningJob</code> request was truncated, the response includes a <code>NextToken</code>. To retrieve the next set of training jobs, use the token in the next request.</p>
-- * SortBy [TrainingJobSortByOptions] <p>The field to sort results by. The default is <code>Name</code>.</p> <p>If the value of this field is <code>FinalObjectiveMetricValue</code>, any training jobs that did not return an objective metric are not listed.</p>
-- Required key: HyperParameterTuningJobName
-- @return ListTrainingJobsForHyperParameterTuningJobRequest structure as a key-value pair table
function M.ListTrainingJobsForHyperParameterTuningJobRequest(args)
	assert(args, "You must provide an argument table when creating ListTrainingJobsForHyperParameterTuningJobRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["HyperParameterTuningJobName"] = args["HyperParameterTuningJobName"],
		["MaxResults"] = args["MaxResults"],
		["SortOrder"] = args["SortOrder"],
		["StatusEquals"] = args["StatusEquals"],
		["NextToken"] = args["NextToken"],
		["SortBy"] = args["SortBy"],
	}
	asserts.AssertListTrainingJobsForHyperParameterTuningJobRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateEndpointWeightsAndCapacitiesInput = { ["EndpointName"] = true, ["DesiredWeightsAndCapacities"] = true, nil }

function asserts.AssertUpdateEndpointWeightsAndCapacitiesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateEndpointWeightsAndCapacitiesInput to be of type 'table'")
	assert(struct["EndpointName"], "Expected key EndpointName to exist in table")
	assert(struct["DesiredWeightsAndCapacities"], "Expected key DesiredWeightsAndCapacities to exist in table")
	if struct["EndpointName"] then asserts.AssertEndpointName(struct["EndpointName"]) end
	if struct["DesiredWeightsAndCapacities"] then asserts.AssertDesiredWeightAndCapacityList(struct["DesiredWeightsAndCapacities"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateEndpointWeightsAndCapacitiesInput[k], "UpdateEndpointWeightsAndCapacitiesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateEndpointWeightsAndCapacitiesInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EndpointName [EndpointName] <p>The name of an existing Amazon SageMaker endpoint.</p>
-- * DesiredWeightsAndCapacities [DesiredWeightAndCapacityList] <p>An object that provides new capacity and weight values for a variant.</p>
-- Required key: EndpointName
-- Required key: DesiredWeightsAndCapacities
-- @return UpdateEndpointWeightsAndCapacitiesInput structure as a key-value pair table
function M.UpdateEndpointWeightsAndCapacitiesInput(args)
	assert(args, "You must provide an argument table when creating UpdateEndpointWeightsAndCapacitiesInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EndpointName"] = args["EndpointName"],
		["DesiredWeightsAndCapacities"] = args["DesiredWeightsAndCapacities"],
	}
	asserts.AssertUpdateEndpointWeightsAndCapacitiesInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeTransformJobRequest = { ["TransformJobName"] = true, nil }

function asserts.AssertDescribeTransformJobRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTransformJobRequest to be of type 'table'")
	assert(struct["TransformJobName"], "Expected key TransformJobName to exist in table")
	if struct["TransformJobName"] then asserts.AssertTransformJobName(struct["TransformJobName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeTransformJobRequest[k], "DescribeTransformJobRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTransformJobRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TransformJobName [TransformJobName] <p>The name of the transform job that you want to view details of.</p>
-- Required key: TransformJobName
-- @return DescribeTransformJobRequest structure as a key-value pair table
function M.DescribeTransformJobRequest(args)
	assert(args, "You must provide an argument table when creating DescribeTransformJobRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TransformJobName"] = args["TransformJobName"],
	}
	asserts.AssertDescribeTransformJobRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.HyperParameterTuningJobSummary = { ["HyperParameterTuningJobArn"] = true, ["HyperParameterTuningJobStatus"] = true, ["HyperParameterTuningJobName"] = true, ["HyperParameterTuningEndTime"] = true, ["CreationTime"] = true, ["Strategy"] = true, ["ObjectiveStatusCounters"] = true, ["LastModifiedTime"] = true, ["TrainingJobStatusCounters"] = true, ["ResourceLimits"] = true, nil }

function asserts.AssertHyperParameterTuningJobSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HyperParameterTuningJobSummary to be of type 'table'")
	assert(struct["HyperParameterTuningJobName"], "Expected key HyperParameterTuningJobName to exist in table")
	assert(struct["HyperParameterTuningJobArn"], "Expected key HyperParameterTuningJobArn to exist in table")
	assert(struct["HyperParameterTuningJobStatus"], "Expected key HyperParameterTuningJobStatus to exist in table")
	assert(struct["Strategy"], "Expected key Strategy to exist in table")
	assert(struct["CreationTime"], "Expected key CreationTime to exist in table")
	assert(struct["TrainingJobStatusCounters"], "Expected key TrainingJobStatusCounters to exist in table")
	assert(struct["ObjectiveStatusCounters"], "Expected key ObjectiveStatusCounters to exist in table")
	if struct["HyperParameterTuningJobArn"] then asserts.AssertHyperParameterTuningJobArn(struct["HyperParameterTuningJobArn"]) end
	if struct["HyperParameterTuningJobStatus"] then asserts.AssertHyperParameterTuningJobStatus(struct["HyperParameterTuningJobStatus"]) end
	if struct["HyperParameterTuningJobName"] then asserts.AssertHyperParameterTuningJobName(struct["HyperParameterTuningJobName"]) end
	if struct["HyperParameterTuningEndTime"] then asserts.AssertTimestamp(struct["HyperParameterTuningEndTime"]) end
	if struct["CreationTime"] then asserts.AssertTimestamp(struct["CreationTime"]) end
	if struct["Strategy"] then asserts.AssertHyperParameterTuningJobStrategyType(struct["Strategy"]) end
	if struct["ObjectiveStatusCounters"] then asserts.AssertObjectiveStatusCounters(struct["ObjectiveStatusCounters"]) end
	if struct["LastModifiedTime"] then asserts.AssertTimestamp(struct["LastModifiedTime"]) end
	if struct["TrainingJobStatusCounters"] then asserts.AssertTrainingJobStatusCounters(struct["TrainingJobStatusCounters"]) end
	if struct["ResourceLimits"] then asserts.AssertResourceLimits(struct["ResourceLimits"]) end
	for k,_ in pairs(struct) do
		assert(keys.HyperParameterTuningJobSummary[k], "HyperParameterTuningJobSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HyperParameterTuningJobSummary
-- <p>Provides summary information about a hyperparameter tuning job.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * HyperParameterTuningJobArn [HyperParameterTuningJobArn] <p>The Amazon Resource Name (ARN) of the tuning job.</p>
-- * HyperParameterTuningJobStatus [HyperParameterTuningJobStatus] <p>The status of the tuning job.</p>
-- * HyperParameterTuningJobName [HyperParameterTuningJobName] <p>The name of the tuning job.</p>
-- * HyperParameterTuningEndTime [Timestamp] <p>The date and time that the tuning job ended.</p>
-- * CreationTime [Timestamp] <p>The date and time that the tuning job was created.</p>
-- * Strategy [HyperParameterTuningJobStrategyType] <p>Specifies the search strategy hyperparameter tuning uses to choose which hyperparameters to use for each iteration. Currently, the only valid value is Bayesian.</p>
-- * ObjectiveStatusCounters [ObjectiveStatusCounters] <p>The <a>ObjectiveStatusCounters</a> object that specifies the numbers of training jobs, categorized by objective metric status, that this tuning job launched.</p>
-- * LastModifiedTime [Timestamp] <p>The date and time that the tuning job was modified.</p>
-- * TrainingJobStatusCounters [TrainingJobStatusCounters] <p>The <a>TrainingJobStatusCounters</a> object that specifies the numbers of training jobs, categorized by status, that this tuning job launched.</p>
-- * ResourceLimits [ResourceLimits] <p>The <a>ResourceLimits</a> object that specifies the maximum number of training jobs and parallel training jobs allowed for this tuning job.</p>
-- Required key: HyperParameterTuningJobName
-- Required key: HyperParameterTuningJobArn
-- Required key: HyperParameterTuningJobStatus
-- Required key: Strategy
-- Required key: CreationTime
-- Required key: TrainingJobStatusCounters
-- Required key: ObjectiveStatusCounters
-- @return HyperParameterTuningJobSummary structure as a key-value pair table
function M.HyperParameterTuningJobSummary(args)
	assert(args, "You must provide an argument table when creating HyperParameterTuningJobSummary")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["HyperParameterTuningJobArn"] = args["HyperParameterTuningJobArn"],
		["HyperParameterTuningJobStatus"] = args["HyperParameterTuningJobStatus"],
		["HyperParameterTuningJobName"] = args["HyperParameterTuningJobName"],
		["HyperParameterTuningEndTime"] = args["HyperParameterTuningEndTime"],
		["CreationTime"] = args["CreationTime"],
		["Strategy"] = args["Strategy"],
		["ObjectiveStatusCounters"] = args["ObjectiveStatusCounters"],
		["LastModifiedTime"] = args["LastModifiedTime"],
		["TrainingJobStatusCounters"] = args["TrainingJobStatusCounters"],
		["ResourceLimits"] = args["ResourceLimits"],
	}
	asserts.AssertHyperParameterTuningJobSummary(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateNotebookInstanceInput = { ["LifecycleConfigName"] = true, ["RoleArn"] = true, ["NotebookInstanceName"] = true, ["DisassociateLifecycleConfig"] = true, ["VolumeSizeInGB"] = true, ["InstanceType"] = true, nil }

function asserts.AssertUpdateNotebookInstanceInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateNotebookInstanceInput to be of type 'table'")
	assert(struct["NotebookInstanceName"], "Expected key NotebookInstanceName to exist in table")
	if struct["LifecycleConfigName"] then asserts.AssertNotebookInstanceLifecycleConfigName(struct["LifecycleConfigName"]) end
	if struct["RoleArn"] then asserts.AssertRoleArn(struct["RoleArn"]) end
	if struct["NotebookInstanceName"] then asserts.AssertNotebookInstanceName(struct["NotebookInstanceName"]) end
	if struct["DisassociateLifecycleConfig"] then asserts.AssertDisassociateNotebookInstanceLifecycleConfig(struct["DisassociateLifecycleConfig"]) end
	if struct["VolumeSizeInGB"] then asserts.AssertNotebookInstanceVolumeSizeInGB(struct["VolumeSizeInGB"]) end
	if struct["InstanceType"] then asserts.AssertInstanceType(struct["InstanceType"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateNotebookInstanceInput[k], "UpdateNotebookInstanceInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateNotebookInstanceInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LifecycleConfigName [NotebookInstanceLifecycleConfigName] <p>The name of a lifecycle configuration to associate with the notebook instance. For information about lifestyle configurations, see <a href="http://docs.aws.amazon.com/sagemaker/latest/dg/notebook-lifecycle-config.html">Step 2.1: (Optional) Customize a Notebook Instance</a>.</p>
-- * RoleArn [RoleArn] <p>The Amazon Resource Name (ARN) of the IAM role that Amazon SageMaker can assume to access the notebook instance. For more information, see <a href="http://docs.aws.amazon.com/sagemaker/latest/dg/sagemaker-roles.html">Amazon SageMaker Roles</a>. </p> <note> <p>To be able to pass this role to Amazon SageMaker, the caller of this API must have the <code>iam:PassRole</code> permission.</p> </note>
-- * NotebookInstanceName [NotebookInstanceName] <p>The name of the notebook instance to update.</p>
-- * DisassociateLifecycleConfig [DisassociateNotebookInstanceLifecycleConfig] <p>Set to <code>true</code> to remove the notebook instance lifecycle configuration currently associated with the notebook instance.</p>
-- * VolumeSizeInGB [NotebookInstanceVolumeSizeInGB] <p>The size, in GB, of the ML storage volume to attach to the notebook instance.</p>
-- * InstanceType [InstanceType] <p>The Amazon ML compute instance type.</p>
-- Required key: NotebookInstanceName
-- @return UpdateNotebookInstanceInput structure as a key-value pair table
function M.UpdateNotebookInstanceInput(args)
	assert(args, "You must provide an argument table when creating UpdateNotebookInstanceInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LifecycleConfigName"] = args["LifecycleConfigName"],
		["RoleArn"] = args["RoleArn"],
		["NotebookInstanceName"] = args["NotebookInstanceName"],
		["DisassociateLifecycleConfig"] = args["DisassociateLifecycleConfig"],
		["VolumeSizeInGB"] = args["VolumeSizeInGB"],
		["InstanceType"] = args["InstanceType"],
	}
	asserts.AssertUpdateNotebookInstanceInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteTagsInput = { ["ResourceArn"] = true, ["TagKeys"] = true, nil }

function asserts.AssertDeleteTagsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteTagsInput to be of type 'table'")
	assert(struct["ResourceArn"], "Expected key ResourceArn to exist in table")
	assert(struct["TagKeys"], "Expected key TagKeys to exist in table")
	if struct["ResourceArn"] then asserts.AssertResourceArn(struct["ResourceArn"]) end
	if struct["TagKeys"] then asserts.AssertTagKeyList(struct["TagKeys"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteTagsInput[k], "DeleteTagsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteTagsInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceArn [ResourceArn] <p>The Amazon Resource Name (ARN) of the resource whose tags you want to delete.</p>
-- * TagKeys [TagKeyList] <p>An array or one or more tag keys to delete.</p>
-- Required key: ResourceArn
-- Required key: TagKeys
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
		["ResourceArn"] = args["ResourceArn"],
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

keys.ResourceLimits = { ["MaxNumberOfTrainingJobs"] = true, ["MaxParallelTrainingJobs"] = true, nil }

function asserts.AssertResourceLimits(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceLimits to be of type 'table'")
	assert(struct["MaxNumberOfTrainingJobs"], "Expected key MaxNumberOfTrainingJobs to exist in table")
	assert(struct["MaxParallelTrainingJobs"], "Expected key MaxParallelTrainingJobs to exist in table")
	if struct["MaxNumberOfTrainingJobs"] then asserts.AssertMaxNumberOfTrainingJobs(struct["MaxNumberOfTrainingJobs"]) end
	if struct["MaxParallelTrainingJobs"] then asserts.AssertMaxParallelTrainingJobs(struct["MaxParallelTrainingJobs"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResourceLimits[k], "ResourceLimits contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceLimits
-- <p>Specifies the maximum number of training jobs and parallel training jobs that a hyperparameter tuning job can launch.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MaxNumberOfTrainingJobs [MaxNumberOfTrainingJobs] <p>The maximum number of training jobs that a hyperparameter tuning job can launch.</p>
-- * MaxParallelTrainingJobs [MaxParallelTrainingJobs] <p>The maximum number of concurrent training jobs that a hyperparameter tuning job can launch.</p>
-- Required key: MaxNumberOfTrainingJobs
-- Required key: MaxParallelTrainingJobs
-- @return ResourceLimits structure as a key-value pair table
function M.ResourceLimits(args)
	assert(args, "You must provide an argument table when creating ResourceLimits")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["MaxNumberOfTrainingJobs"] = args["MaxNumberOfTrainingJobs"],
		["MaxParallelTrainingJobs"] = args["MaxParallelTrainingJobs"],
	}
	asserts.AssertResourceLimits(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteEndpointInput = { ["EndpointName"] = true, nil }

function asserts.AssertDeleteEndpointInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteEndpointInput to be of type 'table'")
	assert(struct["EndpointName"], "Expected key EndpointName to exist in table")
	if struct["EndpointName"] then asserts.AssertEndpointName(struct["EndpointName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteEndpointInput[k], "DeleteEndpointInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteEndpointInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EndpointName [EndpointName] <p>The name of the endpoint that you want to delete.</p>
-- Required key: EndpointName
-- @return DeleteEndpointInput structure as a key-value pair table
function M.DeleteEndpointInput(args)
	assert(args, "You must provide an argument table when creating DeleteEndpointInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EndpointName"] = args["EndpointName"],
	}
	asserts.AssertDeleteEndpointInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListModelsInput = { ["CreationTimeAfter"] = true, ["CreationTimeBefore"] = true, ["MaxResults"] = true, ["NameContains"] = true, ["SortBy"] = true, ["NextToken"] = true, ["SortOrder"] = true, nil }

function asserts.AssertListModelsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListModelsInput to be of type 'table'")
	if struct["CreationTimeAfter"] then asserts.AssertTimestamp(struct["CreationTimeAfter"]) end
	if struct["CreationTimeBefore"] then asserts.AssertTimestamp(struct["CreationTimeBefore"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	if struct["NameContains"] then asserts.AssertModelNameContains(struct["NameContains"]) end
	if struct["SortBy"] then asserts.AssertModelSortKey(struct["SortBy"]) end
	if struct["NextToken"] then asserts.AssertPaginationToken(struct["NextToken"]) end
	if struct["SortOrder"] then asserts.AssertOrderKey(struct["SortOrder"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListModelsInput[k], "ListModelsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListModelsInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CreationTimeAfter [Timestamp] <p>A filter that returns only models created after the specified time (timestamp).</p>
-- * CreationTimeBefore [Timestamp] <p>A filter that returns only models created before the specified time (timestamp).</p>
-- * MaxResults [MaxResults] <p>The maximum number of models to return in the response.</p>
-- * NameContains [ModelNameContains] <p>A string in the training job name. This filter returns only models in the training job whose name contains the specified string.</p>
-- * SortBy [ModelSortKey] <p>Sorts the list of results. The default is <code>CreationTime</code>.</p>
-- * NextToken [PaginationToken] <p>If the response to a previous <code>ListModels</code> request was truncated, the response includes a <code>NextToken</code>. To retrieve the next set of models, use the token in the next request.</p>
-- * SortOrder [OrderKey] <p>The sort order for results. The default is <code>Ascending</code>.</p>
-- @return ListModelsInput structure as a key-value pair table
function M.ListModelsInput(args)
	assert(args, "You must provide an argument table when creating ListModelsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CreationTimeAfter"] = args["CreationTimeAfter"],
		["CreationTimeBefore"] = args["CreationTimeBefore"],
		["MaxResults"] = args["MaxResults"],
		["NameContains"] = args["NameContains"],
		["SortBy"] = args["SortBy"],
		["NextToken"] = args["NextToken"],
		["SortOrder"] = args["SortOrder"],
	}
	asserts.AssertListModelsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListModelsOutput = { ["Models"] = true, ["NextToken"] = true, nil }

function asserts.AssertListModelsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListModelsOutput to be of type 'table'")
	assert(struct["Models"], "Expected key Models to exist in table")
	if struct["Models"] then asserts.AssertModelSummaryList(struct["Models"]) end
	if struct["NextToken"] then asserts.AssertPaginationToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListModelsOutput[k], "ListModelsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListModelsOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Models [ModelSummaryList] <p>An array of <code>ModelSummary</code> objects, each of which lists a model.</p>
-- * NextToken [PaginationToken] <p> If the response is truncated, Amazon SageMaker returns this token. To retrieve the next set of models, use it in the subsequent request. </p>
-- Required key: Models
-- @return ListModelsOutput structure as a key-value pair table
function M.ListModelsOutput(args)
	assert(args, "You must provide an argument table when creating ListModelsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Models"] = args["Models"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListModelsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TransformOutput = { ["AssembleWith"] = true, ["KmsKeyId"] = true, ["S3OutputPath"] = true, ["Accept"] = true, nil }

function asserts.AssertTransformOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TransformOutput to be of type 'table'")
	assert(struct["S3OutputPath"], "Expected key S3OutputPath to exist in table")
	if struct["AssembleWith"] then asserts.AssertAssemblyType(struct["AssembleWith"]) end
	if struct["KmsKeyId"] then asserts.AssertKmsKeyId(struct["KmsKeyId"]) end
	if struct["S3OutputPath"] then asserts.AssertS3Uri(struct["S3OutputPath"]) end
	if struct["Accept"] then asserts.AssertAccept(struct["Accept"]) end
	for k,_ in pairs(struct) do
		assert(keys.TransformOutput[k], "TransformOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TransformOutput
-- <p>Describes the results of a transform job output.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AssembleWith [AssemblyType] <p>Defines how to assemble the results of the transform job as a single S3 object. You should select a format that is most convenient to you. To concatenate the results in binary format, specify <code>None</code>. To add a newline character at the end of every transformed record, specify <code>Line</code>.</p>
-- * KmsKeyId [KmsKeyId] <p>The AWS Key Management Service (AWS KMS) key that Amazon SageMaker uses to encrypt the model artifacts at rest using Amazon S3 server-side encryption. The <code>KmsKeyId</code> can be any of the following formats: </p> <ul> <li> <p>// KMS Key ID</p> <p> <code>"1234abcd-12ab-34cd-56ef-1234567890ab"</code> </p> </li> <li> <p>// Amazon Resource Name (ARN) of a KMS Key</p> <p> <code>"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"</code> </p> </li> <li> <p>// KMS Key Alias</p> <p> <code>"alias/ExampleAlias"</code> </p> </li> <li> <p>// Amazon Resource Name (ARN) of a KMS Key Alias</p> <p> <code>"arn:aws:kms:us-west-2:111122223333:alias/ExampleAlias"</code> </p> </li> </ul> <p>If you don't provide a KMS key ID, Amazon SageMaker uses the default KMS key for Amazon S3 for your role's account. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingKMSEncryption.html">KMS-Managed Encryption Keys</a> in the <i>Amazon Simple Storage Service Developer Guide.</i> </p> <p>The KMS key policy must grant permission to the IAM role that you specify in your <code>CreateTramsformJob</code> request. For more information, see <a href="http://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html">Using Key Policies in AWS KMS</a> in the <i>AWS Key Management Service Developer Guide</i>.</p>
-- * S3OutputPath [S3Uri] <p>The Amazon S3 path where you want Amazon SageMaker to store the results of the transform job. For example, <code>s3://bucket-name/key-name-prefix</code>.</p> <p>For every S3 object used as input for the transform job, the transformed data is stored in a corresponding subfolder in the location under the output prefix. For example, the input data <code>s3://bucket-name/input-name-prefix/dataset01/data.csv</code> will have the transformed data stored at <code>s3://bucket-name/key-name-prefix/dataset01/</code>, based on the original name, as a series of .part files (.part0001, part0002, etc).</p>
-- * Accept [Accept] <p>The MIME type used to specify the output data. Amazon SageMaker uses the MIME type with each http call to transfer data from the transform job.</p>
-- Required key: S3OutputPath
-- @return TransformOutput structure as a key-value pair table
function M.TransformOutput(args)
	assert(args, "You must provide an argument table when creating TransformOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AssembleWith"] = args["AssembleWith"],
		["KmsKeyId"] = args["KmsKeyId"],
		["S3OutputPath"] = args["S3OutputPath"],
		["Accept"] = args["Accept"],
	}
	asserts.AssertTransformOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.HyperParameterTuningJobConfig = { ["ParameterRanges"] = true, ["ResourceLimits"] = true, ["HyperParameterTuningJobObjective"] = true, ["Strategy"] = true, nil }

function asserts.AssertHyperParameterTuningJobConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HyperParameterTuningJobConfig to be of type 'table'")
	assert(struct["Strategy"], "Expected key Strategy to exist in table")
	assert(struct["HyperParameterTuningJobObjective"], "Expected key HyperParameterTuningJobObjective to exist in table")
	assert(struct["ResourceLimits"], "Expected key ResourceLimits to exist in table")
	assert(struct["ParameterRanges"], "Expected key ParameterRanges to exist in table")
	if struct["ParameterRanges"] then asserts.AssertParameterRanges(struct["ParameterRanges"]) end
	if struct["ResourceLimits"] then asserts.AssertResourceLimits(struct["ResourceLimits"]) end
	if struct["HyperParameterTuningJobObjective"] then asserts.AssertHyperParameterTuningJobObjective(struct["HyperParameterTuningJobObjective"]) end
	if struct["Strategy"] then asserts.AssertHyperParameterTuningJobStrategyType(struct["Strategy"]) end
	for k,_ in pairs(struct) do
		assert(keys.HyperParameterTuningJobConfig[k], "HyperParameterTuningJobConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HyperParameterTuningJobConfig
-- <p>Configures a hyperparameter tuning job.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ParameterRanges [ParameterRanges] <p>The <a>ParameterRanges</a> object that specifies the ranges of hyperparameters that this tuning job searches.</p>
-- * ResourceLimits [ResourceLimits] <p>The <a>ResourceLimits</a> object that specifies the maximum number of training jobs and parallel training jobs for this tuning job.</p>
-- * HyperParameterTuningJobObjective [HyperParameterTuningJobObjective] <p>The <a>HyperParameterTuningJobObjective</a> object that specifies the objective metric for this tuning job.</p>
-- * Strategy [HyperParameterTuningJobStrategyType] <p>Specifies the search strategy for hyperparameters. Currently, the only valid value is <code>Bayesian</code>.</p>
-- Required key: Strategy
-- Required key: HyperParameterTuningJobObjective
-- Required key: ResourceLimits
-- Required key: ParameterRanges
-- @return HyperParameterTuningJobConfig structure as a key-value pair table
function M.HyperParameterTuningJobConfig(args)
	assert(args, "You must provide an argument table when creating HyperParameterTuningJobConfig")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ParameterRanges"] = args["ParameterRanges"],
		["ResourceLimits"] = args["ResourceLimits"],
		["HyperParameterTuningJobObjective"] = args["HyperParameterTuningJobObjective"],
		["Strategy"] = args["Strategy"],
	}
	asserts.AssertHyperParameterTuningJobConfig(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteEndpointConfigInput = { ["EndpointConfigName"] = true, nil }

function asserts.AssertDeleteEndpointConfigInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteEndpointConfigInput to be of type 'table'")
	assert(struct["EndpointConfigName"], "Expected key EndpointConfigName to exist in table")
	if struct["EndpointConfigName"] then asserts.AssertEndpointConfigName(struct["EndpointConfigName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteEndpointConfigInput[k], "DeleteEndpointConfigInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteEndpointConfigInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EndpointConfigName [EndpointConfigName] <p>The name of the endpoint configuration that you want to delete.</p>
-- Required key: EndpointConfigName
-- @return DeleteEndpointConfigInput structure as a key-value pair table
function M.DeleteEndpointConfigInput(args)
	assert(args, "You must provide an argument table when creating DeleteEndpointConfigInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EndpointConfigName"] = args["EndpointConfigName"],
	}
	asserts.AssertDeleteEndpointConfigInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StartNotebookInstanceInput = { ["NotebookInstanceName"] = true, nil }

function asserts.AssertStartNotebookInstanceInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartNotebookInstanceInput to be of type 'table'")
	assert(struct["NotebookInstanceName"], "Expected key NotebookInstanceName to exist in table")
	if struct["NotebookInstanceName"] then asserts.AssertNotebookInstanceName(struct["NotebookInstanceName"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartNotebookInstanceInput[k], "StartNotebookInstanceInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartNotebookInstanceInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NotebookInstanceName [NotebookInstanceName] <p>The name of the notebook instance to start.</p>
-- Required key: NotebookInstanceName
-- @return StartNotebookInstanceInput structure as a key-value pair table
function M.StartNotebookInstanceInput(args)
	assert(args, "You must provide an argument table when creating StartNotebookInstanceInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NotebookInstanceName"] = args["NotebookInstanceName"],
	}
	asserts.AssertStartNotebookInstanceInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeNotebookInstanceInput = { ["NotebookInstanceName"] = true, nil }

function asserts.AssertDescribeNotebookInstanceInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeNotebookInstanceInput to be of type 'table'")
	assert(struct["NotebookInstanceName"], "Expected key NotebookInstanceName to exist in table")
	if struct["NotebookInstanceName"] then asserts.AssertNotebookInstanceName(struct["NotebookInstanceName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeNotebookInstanceInput[k], "DescribeNotebookInstanceInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeNotebookInstanceInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NotebookInstanceName [NotebookInstanceName] <p>The name of the notebook instance that you want information about.</p>
-- Required key: NotebookInstanceName
-- @return DescribeNotebookInstanceInput structure as a key-value pair table
function M.DescribeNotebookInstanceInput(args)
	assert(args, "You must provide an argument table when creating DescribeNotebookInstanceInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NotebookInstanceName"] = args["NotebookInstanceName"],
	}
	asserts.AssertDescribeNotebookInstanceInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListTransformJobsResponse = { ["TransformJobSummaries"] = true, ["NextToken"] = true, nil }

function asserts.AssertListTransformJobsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTransformJobsResponse to be of type 'table'")
	assert(struct["TransformJobSummaries"], "Expected key TransformJobSummaries to exist in table")
	if struct["TransformJobSummaries"] then asserts.AssertTransformJobSummaries(struct["TransformJobSummaries"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTransformJobsResponse[k], "ListTransformJobsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTransformJobsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TransformJobSummaries [TransformJobSummaries] <p>An array of <code>TransformJobSummary</code> objects.</p>
-- * NextToken [NextToken] <p>If the response is truncated, Amazon SageMaker returns this token. To retrieve the next set of transform jobs, use it in the next request.</p>
-- Required key: TransformJobSummaries
-- @return ListTransformJobsResponse structure as a key-value pair table
function M.ListTransformJobsResponse(args)
	assert(args, "You must provide an argument table when creating ListTransformJobsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TransformJobSummaries"] = args["TransformJobSummaries"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListTransformJobsResponse(all_args)
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
	assert(struct["Value"], "Expected key Value to exist in table")
	if struct["Value"] then asserts.AssertTagValue(struct["Value"]) end
	if struct["Key"] then asserts.AssertTagKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(keys.Tag[k], "Tag contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Tag
-- <p>Describes a tag. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Value [TagValue] <p>The tag value.</p>
-- * Key [TagKey] <p>The tag key.</p>
-- Required key: Key
-- Required key: Value
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

keys.UpdateEndpointInput = { ["EndpointName"] = true, ["EndpointConfigName"] = true, nil }

function asserts.AssertUpdateEndpointInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateEndpointInput to be of type 'table'")
	assert(struct["EndpointName"], "Expected key EndpointName to exist in table")
	assert(struct["EndpointConfigName"], "Expected key EndpointConfigName to exist in table")
	if struct["EndpointName"] then asserts.AssertEndpointName(struct["EndpointName"]) end
	if struct["EndpointConfigName"] then asserts.AssertEndpointConfigName(struct["EndpointConfigName"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateEndpointInput[k], "UpdateEndpointInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateEndpointInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EndpointName [EndpointName] <p>The name of the endpoint whose configuration you want to update.</p>
-- * EndpointConfigName [EndpointConfigName] <p>The name of the new endpoint configuration.</p>
-- Required key: EndpointName
-- Required key: EndpointConfigName
-- @return UpdateEndpointInput structure as a key-value pair table
function M.UpdateEndpointInput(args)
	assert(args, "You must provide an argument table when creating UpdateEndpointInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EndpointName"] = args["EndpointName"],
		["EndpointConfigName"] = args["EndpointConfigName"],
	}
	asserts.AssertUpdateEndpointInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateTransformJobResponse = { ["TransformJobArn"] = true, nil }

function asserts.AssertCreateTransformJobResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateTransformJobResponse to be of type 'table'")
	assert(struct["TransformJobArn"], "Expected key TransformJobArn to exist in table")
	if struct["TransformJobArn"] then asserts.AssertTransformJobArn(struct["TransformJobArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateTransformJobResponse[k], "CreateTransformJobResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateTransformJobResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TransformJobArn [TransformJobArn] <p>The Amazon Resource Name (ARN) of the transform job.</p>
-- Required key: TransformJobArn
-- @return CreateTransformJobResponse structure as a key-value pair table
function M.CreateTransformJobResponse(args)
	assert(args, "You must provide an argument table when creating CreateTransformJobResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TransformJobArn"] = args["TransformJobArn"],
	}
	asserts.AssertCreateTransformJobResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeModelOutput = { ["ModelName"] = true, ["VpcConfig"] = true, ["CreationTime"] = true, ["ExecutionRoleArn"] = true, ["ModelArn"] = true, ["PrimaryContainer"] = true, nil }

function asserts.AssertDescribeModelOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeModelOutput to be of type 'table'")
	assert(struct["ModelName"], "Expected key ModelName to exist in table")
	assert(struct["PrimaryContainer"], "Expected key PrimaryContainer to exist in table")
	assert(struct["ExecutionRoleArn"], "Expected key ExecutionRoleArn to exist in table")
	assert(struct["CreationTime"], "Expected key CreationTime to exist in table")
	assert(struct["ModelArn"], "Expected key ModelArn to exist in table")
	if struct["ModelName"] then asserts.AssertModelName(struct["ModelName"]) end
	if struct["VpcConfig"] then asserts.AssertVpcConfig(struct["VpcConfig"]) end
	if struct["CreationTime"] then asserts.AssertTimestamp(struct["CreationTime"]) end
	if struct["ExecutionRoleArn"] then asserts.AssertRoleArn(struct["ExecutionRoleArn"]) end
	if struct["ModelArn"] then asserts.AssertModelArn(struct["ModelArn"]) end
	if struct["PrimaryContainer"] then asserts.AssertContainerDefinition(struct["PrimaryContainer"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeModelOutput[k], "DescribeModelOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeModelOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ModelName [ModelName] <p>Name of the Amazon SageMaker model.</p>
-- * VpcConfig [VpcConfig] <p>A <a>VpcConfig</a> object that specifies the VPC that this model has access to. For more information, see <a href="http://docs.aws.amazon.com/sagemaker/latest/dg/host-vpc.html">Protect Endpoints by Using an Amazon Virtual Private Cloud</a> </p>
-- * CreationTime [Timestamp] <p>A timestamp that shows when the model was created.</p>
-- * ExecutionRoleArn [RoleArn] <p>The Amazon Resource Name (ARN) of the IAM role that you specified for the model.</p>
-- * ModelArn [ModelArn] <p>The Amazon Resource Name (ARN) of the model.</p>
-- * PrimaryContainer [ContainerDefinition] <p>The location of the primary inference code, associated artifacts, and custom environment map that the inference code uses when it is deployed in production. </p>
-- Required key: ModelName
-- Required key: PrimaryContainer
-- Required key: ExecutionRoleArn
-- Required key: CreationTime
-- Required key: ModelArn
-- @return DescribeModelOutput structure as a key-value pair table
function M.DescribeModelOutput(args)
	assert(args, "You must provide an argument table when creating DescribeModelOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ModelName"] = args["ModelName"],
		["VpcConfig"] = args["VpcConfig"],
		["CreationTime"] = args["CreationTime"],
		["ExecutionRoleArn"] = args["ExecutionRoleArn"],
		["ModelArn"] = args["ModelArn"],
		["PrimaryContainer"] = args["PrimaryContainer"],
	}
	asserts.AssertDescribeModelOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateNotebookInstanceLifecycleConfigOutput = { nil }

function asserts.AssertUpdateNotebookInstanceLifecycleConfigOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateNotebookInstanceLifecycleConfigOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.UpdateNotebookInstanceLifecycleConfigOutput[k], "UpdateNotebookInstanceLifecycleConfigOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateNotebookInstanceLifecycleConfigOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return UpdateNotebookInstanceLifecycleConfigOutput structure as a key-value pair table
function M.UpdateNotebookInstanceLifecycleConfigOutput(args)
	assert(args, "You must provide an argument table when creating UpdateNotebookInstanceLifecycleConfigOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertUpdateNotebookInstanceLifecycleConfigOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListNotebookInstanceLifecycleConfigsInput = { ["LastModifiedTimeBefore"] = true, ["CreationTimeAfter"] = true, ["CreationTimeBefore"] = true, ["MaxResults"] = true, ["NameContains"] = true, ["SortBy"] = true, ["LastModifiedTimeAfter"] = true, ["NextToken"] = true, ["SortOrder"] = true, nil }

function asserts.AssertListNotebookInstanceLifecycleConfigsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListNotebookInstanceLifecycleConfigsInput to be of type 'table'")
	if struct["LastModifiedTimeBefore"] then asserts.AssertLastModifiedTime(struct["LastModifiedTimeBefore"]) end
	if struct["CreationTimeAfter"] then asserts.AssertCreationTime(struct["CreationTimeAfter"]) end
	if struct["CreationTimeBefore"] then asserts.AssertCreationTime(struct["CreationTimeBefore"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	if struct["NameContains"] then asserts.AssertNotebookInstanceLifecycleConfigNameContains(struct["NameContains"]) end
	if struct["SortBy"] then asserts.AssertNotebookInstanceLifecycleConfigSortKey(struct["SortBy"]) end
	if struct["LastModifiedTimeAfter"] then asserts.AssertLastModifiedTime(struct["LastModifiedTimeAfter"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["SortOrder"] then asserts.AssertNotebookInstanceLifecycleConfigSortOrder(struct["SortOrder"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListNotebookInstanceLifecycleConfigsInput[k], "ListNotebookInstanceLifecycleConfigsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListNotebookInstanceLifecycleConfigsInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LastModifiedTimeBefore [LastModifiedTime] <p>A filter that returns only lifecycle configurations that were modified before the specified time (timestamp).</p>
-- * CreationTimeAfter [CreationTime] <p>A filter that returns only lifecycle configurations that were created after the specified time (timestamp).</p>
-- * CreationTimeBefore [CreationTime] <p>A filter that returns only lifecycle configurations that were created before the specified time (timestamp).</p>
-- * MaxResults [MaxResults] <p>The maximum number of lifecycle configurations to return in the response.</p>
-- * NameContains [NotebookInstanceLifecycleConfigNameContains] <p>A string in the lifecycle configuration name. This filter returns only lifecycle configurations whose name contains the specified string.</p>
-- * SortBy [NotebookInstanceLifecycleConfigSortKey] <p>Sorts the list of results. The default is <code>CreationTime</code>.</p>
-- * LastModifiedTimeAfter [LastModifiedTime] <p>A filter that returns only lifecycle configurations that were modified after the specified time (timestamp).</p>
-- * NextToken [NextToken] <p>If the result of a <code>ListNotebookInstanceLifecycleConfigs</code> request was truncated, the response includes a <code>NextToken</code>. To get the next set of lifecycle configurations, use the token in the next request.</p>
-- * SortOrder [NotebookInstanceLifecycleConfigSortOrder] <p>The sort order for results.</p>
-- @return ListNotebookInstanceLifecycleConfigsInput structure as a key-value pair table
function M.ListNotebookInstanceLifecycleConfigsInput(args)
	assert(args, "You must provide an argument table when creating ListNotebookInstanceLifecycleConfigsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LastModifiedTimeBefore"] = args["LastModifiedTimeBefore"],
		["CreationTimeAfter"] = args["CreationTimeAfter"],
		["CreationTimeBefore"] = args["CreationTimeBefore"],
		["MaxResults"] = args["MaxResults"],
		["NameContains"] = args["NameContains"],
		["SortBy"] = args["SortBy"],
		["LastModifiedTimeAfter"] = args["LastModifiedTimeAfter"],
		["NextToken"] = args["NextToken"],
		["SortOrder"] = args["SortOrder"],
	}
	asserts.AssertListNotebookInstanceLifecycleConfigsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ContainerDefinition = { ["Environment"] = true, ["Image"] = true, ["ModelDataUrl"] = true, ["ContainerHostname"] = true, nil }

function asserts.AssertContainerDefinition(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ContainerDefinition to be of type 'table'")
	assert(struct["Image"], "Expected key Image to exist in table")
	if struct["Environment"] then asserts.AssertEnvironmentMap(struct["Environment"]) end
	if struct["Image"] then asserts.AssertImage(struct["Image"]) end
	if struct["ModelDataUrl"] then asserts.AssertUrl(struct["ModelDataUrl"]) end
	if struct["ContainerHostname"] then asserts.AssertContainerHostname(struct["ContainerHostname"]) end
	for k,_ in pairs(struct) do
		assert(keys.ContainerDefinition[k], "ContainerDefinition contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ContainerDefinition
-- <p>Describes the container, as part of model definition.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Environment [EnvironmentMap] <p>The environment variables to set in the Docker container. Each key and value in the <code>Environment</code> string to string map can have length of up to 1024. We support up to 16 entries in the map. </p>
-- * Image [Image] <p>The Amazon EC2 Container Registry (Amazon ECR) path where inference code is stored. If you are using your own custom algorithm instead of an algorithm provided by Amazon SageMaker, the inference code must meet Amazon SageMaker requirements. Amazon SageMaker supports both <code>registry/repository[:tag]</code> and <code>registry/repository[@digest]</code> image path formats. For more information, see <a href="http://docs.aws.amazon.com/sagemaker/latest/dg/your-algorithms.html">Using Your Own Algorithms with Amazon SageMaker</a> </p>
-- * ModelDataUrl [Url] <p>The S3 path where the model artifacts, which result from model training, are stored. This path must point to a single gzip compressed tar archive (.tar.gz suffix). </p> <p>If you provide a value for this parameter, Amazon SageMaker uses AWS Security Token Service to download model artifacts from the S3 path you provide. AWS STS is activated in your IAM user account by default. If you previously deactivated AWS STS for a region, you need to reactivate AWS STS for that region. For more information, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_enable-regions.html">Activating and Deactivating AWS STS i an AWS Region</a> in the <i>AWS Identity and Access Management User Guide</i>.</p>
-- * ContainerHostname [ContainerHostname] <p>The DNS host name for the container after Amazon SageMaker deploys it.</p>
-- Required key: Image
-- @return ContainerDefinition structure as a key-value pair table
function M.ContainerDefinition(args)
	assert(args, "You must provide an argument table when creating ContainerDefinition")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Environment"] = args["Environment"],
		["Image"] = args["Image"],
		["ModelDataUrl"] = args["ModelDataUrl"],
		["ContainerHostname"] = args["ContainerHostname"],
	}
	asserts.AssertContainerDefinition(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeHyperParameterTuningJobRequest = { ["HyperParameterTuningJobName"] = true, nil }

function asserts.AssertDescribeHyperParameterTuningJobRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeHyperParameterTuningJobRequest to be of type 'table'")
	assert(struct["HyperParameterTuningJobName"], "Expected key HyperParameterTuningJobName to exist in table")
	if struct["HyperParameterTuningJobName"] then asserts.AssertHyperParameterTuningJobName(struct["HyperParameterTuningJobName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeHyperParameterTuningJobRequest[k], "DescribeHyperParameterTuningJobRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeHyperParameterTuningJobRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * HyperParameterTuningJobName [HyperParameterTuningJobName] <p>The name of the tuning job to describe.</p>
-- Required key: HyperParameterTuningJobName
-- @return DescribeHyperParameterTuningJobRequest structure as a key-value pair table
function M.DescribeHyperParameterTuningJobRequest(args)
	assert(args, "You must provide an argument table when creating DescribeHyperParameterTuningJobRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["HyperParameterTuningJobName"] = args["HyperParameterTuningJobName"],
	}
	asserts.AssertDescribeHyperParameterTuningJobRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StoppingCondition = { ["MaxRuntimeInSeconds"] = true, nil }

function asserts.AssertStoppingCondition(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StoppingCondition to be of type 'table'")
	if struct["MaxRuntimeInSeconds"] then asserts.AssertMaxRuntimeInSeconds(struct["MaxRuntimeInSeconds"]) end
	for k,_ in pairs(struct) do
		assert(keys.StoppingCondition[k], "StoppingCondition contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StoppingCondition
-- <p>Specifies how long model training can run. When model training reaches the limit, Amazon SageMaker ends the training job. Use this API to cap model training cost.</p> <p>To stop a job, Amazon SageMaker sends the algorithm the <code>SIGTERM</code> signal, which delays job termination for120 seconds. Algorithms might use this 120-second window to save the model artifacts, so the results of training is not lost. </p> <p>Training algorithms provided by Amazon SageMaker automatically saves the intermediate results of a model training job (it is best effort case, as model might not be ready to save as some stages, for example training just started). This intermediate data is a valid model artifact. You can use it to create a model (<code>CreateModel</code>). </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MaxRuntimeInSeconds [MaxRuntimeInSeconds] <p>The maximum length of time, in seconds, that the training job can run. If model training does not complete during this time, Amazon SageMaker ends the job. If value is not specified, default value is 1 day. Maximum value is 5 days.</p>
-- @return StoppingCondition structure as a key-value pair table
function M.StoppingCondition(args)
	assert(args, "You must provide an argument table when creating StoppingCondition")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["MaxRuntimeInSeconds"] = args["MaxRuntimeInSeconds"],
	}
	asserts.AssertStoppingCondition(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.S3DataSource = { ["S3DataType"] = true, ["S3DataDistributionType"] = true, ["S3Uri"] = true, nil }

function asserts.AssertS3DataSource(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected S3DataSource to be of type 'table'")
	assert(struct["S3DataType"], "Expected key S3DataType to exist in table")
	assert(struct["S3Uri"], "Expected key S3Uri to exist in table")
	if struct["S3DataType"] then asserts.AssertS3DataType(struct["S3DataType"]) end
	if struct["S3DataDistributionType"] then asserts.AssertS3DataDistribution(struct["S3DataDistributionType"]) end
	if struct["S3Uri"] then asserts.AssertS3Uri(struct["S3Uri"]) end
	for k,_ in pairs(struct) do
		assert(keys.S3DataSource[k], "S3DataSource contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type S3DataSource
-- <p>Describes the S3 data source.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * S3DataType [S3DataType] <p>If you choose <code>S3Prefix</code>, <code>S3Uri</code> identifies a key name prefix. Amazon SageMaker uses all objects with the specified key name prefix for model training. </p> <p>If you choose <code>ManifestFile</code>, <code>S3Uri</code> identifies an object that is a manifest file containing a list of object keys that you want Amazon SageMaker to use for model training. </p>
-- * S3DataDistributionType [S3DataDistribution] <p>If you want Amazon SageMaker to replicate the entire dataset on each ML compute instance that is launched for model training, specify <code>FullyReplicated</code>. </p> <p>If you want Amazon SageMaker to replicate a subset of data on each ML compute instance that is launched for model training, specify <code>ShardedByS3Key</code>. If there are <i>n</i> ML compute instances launched for a training job, each instance gets approximately 1/<i>n</i> of the number of S3 objects. In this case, model training on each machine uses only the subset of training data. </p> <p>Don't choose more ML compute instances for training than available S3 objects. If you do, some nodes won't get any data and you will pay for nodes that aren't getting any training data. This applies in both FILE and PIPE modes. Keep this in mind when developing algorithms. </p> <p>In distributed training, where you use multiple ML compute EC2 instances, you might choose <code>ShardedByS3Key</code>. If the algorithm requires copying training data to the ML storage volume (when <code>TrainingInputMode</code> is set to <code>File</code>), this copies 1/<i>n</i> of the number of objects. </p>
-- * S3Uri [S3Uri] <p>Depending on the value specified for the <code>S3DataType</code>, identifies either a key name prefix or a manifest. For example: </p> <ul> <li> <p> A key name prefix might look like this: <code>s3://bucketname/exampleprefix</code>. </p> </li> <li> <p> A manifest might look like this: <code>s3://bucketname/example.manifest</code> </p> <p> The manifest is an S3 object which is a JSON file with the following format: </p> <p> <code>[</code> </p> <p> <code> {"prefix": "s3://customer_bucket/some/prefix/"},</code> </p> <p> <code> "relative/path/to/custdata-1",</code> </p> <p> <code> "relative/path/custdata-2",</code> </p> <p> <code> ...</code> </p> <p> <code> ]</code> </p> <p> The preceding JSON matches the following <code>s3Uris</code>: </p> <p> <code>s3://customer_bucket/some/prefix/relative/path/to/custdata-1</code> </p> <p> <code>s3://customer_bucket/some/prefix/relative/path/custdata-1</code> </p> <p> <code>...</code> </p> <p> The complete set of <code>s3uris</code> in this manifest constitutes the input data for the channel for this datasource. The object that each <code>s3uris</code> points to must readable by the IAM role that Amazon SageMaker uses to perform tasks on your behalf. </p> </li> </ul>
-- Required key: S3DataType
-- Required key: S3Uri
-- @return S3DataSource structure as a key-value pair table
function M.S3DataSource(args)
	assert(args, "You must provide an argument table when creating S3DataSource")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["S3DataType"] = args["S3DataType"],
		["S3DataDistributionType"] = args["S3DataDistributionType"],
		["S3Uri"] = args["S3Uri"],
	}
	asserts.AssertS3DataSource(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Channel = { ["CompressionType"] = true, ["ContentType"] = true, ["RecordWrapperType"] = true, ["InputMode"] = true, ["DataSource"] = true, ["ChannelName"] = true, nil }

function asserts.AssertChannel(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Channel to be of type 'table'")
	assert(struct["ChannelName"], "Expected key ChannelName to exist in table")
	assert(struct["DataSource"], "Expected key DataSource to exist in table")
	if struct["CompressionType"] then asserts.AssertCompressionType(struct["CompressionType"]) end
	if struct["ContentType"] then asserts.AssertContentType(struct["ContentType"]) end
	if struct["RecordWrapperType"] then asserts.AssertRecordWrapper(struct["RecordWrapperType"]) end
	if struct["InputMode"] then asserts.AssertTrainingInputMode(struct["InputMode"]) end
	if struct["DataSource"] then asserts.AssertDataSource(struct["DataSource"]) end
	if struct["ChannelName"] then asserts.AssertChannelName(struct["ChannelName"]) end
	for k,_ in pairs(struct) do
		assert(keys.Channel[k], "Channel contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Channel
-- <p>A channel is a named input source that training algorithms can consume. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CompressionType [CompressionType] <p>If training data is compressed, the compression type. The default value is <code>None</code>. <code>CompressionType</code> is used only in Pipe input mode. In File mode, leave this field unset or set it to None.</p>
-- * ContentType [ContentType] <p>The MIME type of the data.</p>
-- * RecordWrapperType [RecordWrapper] <p/> <p>Specify RecordIO as the value when input data is in raw format but the training algorithm requires the RecordIO format, in which case, Amazon SageMaker wraps each individual S3 object in a RecordIO record. If the input data is already in RecordIO format, you don't need to set this attribute. For more information, see <a href="https://mxnet.incubator.apache.org/architecture/note_data_loading.html#data-format">Create a Dataset Using RecordIO</a>. </p> <p>In FILE mode, leave this field unset or set it to None.</p> <p/>
-- * InputMode [TrainingInputMode] 
-- * DataSource [DataSource] <p>The location of the channel data.</p>
-- * ChannelName [ChannelName] <p>The name of the channel. </p>
-- Required key: ChannelName
-- Required key: DataSource
-- @return Channel structure as a key-value pair table
function M.Channel(args)
	assert(args, "You must provide an argument table when creating Channel")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CompressionType"] = args["CompressionType"],
		["ContentType"] = args["ContentType"],
		["RecordWrapperType"] = args["RecordWrapperType"],
		["InputMode"] = args["InputMode"],
		["DataSource"] = args["DataSource"],
		["ChannelName"] = args["ChannelName"],
	}
	asserts.AssertChannel(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListNotebookInstancesInput = { ["NotebookInstanceLifecycleConfigNameContains"] = true, ["LastModifiedTimeBefore"] = true, ["CreationTimeAfter"] = true, ["CreationTimeBefore"] = true, ["MaxResults"] = true, ["NameContains"] = true, ["SortBy"] = true, ["StatusEquals"] = true, ["LastModifiedTimeAfter"] = true, ["NextToken"] = true, ["SortOrder"] = true, nil }

function asserts.AssertListNotebookInstancesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListNotebookInstancesInput to be of type 'table'")
	if struct["NotebookInstanceLifecycleConfigNameContains"] then asserts.AssertNotebookInstanceLifecycleConfigName(struct["NotebookInstanceLifecycleConfigNameContains"]) end
	if struct["LastModifiedTimeBefore"] then asserts.AssertLastModifiedTime(struct["LastModifiedTimeBefore"]) end
	if struct["CreationTimeAfter"] then asserts.AssertCreationTime(struct["CreationTimeAfter"]) end
	if struct["CreationTimeBefore"] then asserts.AssertCreationTime(struct["CreationTimeBefore"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	if struct["NameContains"] then asserts.AssertNotebookInstanceNameContains(struct["NameContains"]) end
	if struct["SortBy"] then asserts.AssertNotebookInstanceSortKey(struct["SortBy"]) end
	if struct["StatusEquals"] then asserts.AssertNotebookInstanceStatus(struct["StatusEquals"]) end
	if struct["LastModifiedTimeAfter"] then asserts.AssertLastModifiedTime(struct["LastModifiedTimeAfter"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["SortOrder"] then asserts.AssertNotebookInstanceSortOrder(struct["SortOrder"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListNotebookInstancesInput[k], "ListNotebookInstancesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListNotebookInstancesInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NotebookInstanceLifecycleConfigNameContains [NotebookInstanceLifecycleConfigName] <p>A string in the name of a notebook instances lifecycle configuration associated with this notebook instance. This filter returns only notebook instances associated with a lifecycle configuration with a name that contains the specified string.</p>
-- * LastModifiedTimeBefore [LastModifiedTime] <p>A filter that returns only notebook instances that were modified before the specified time (timestamp).</p>
-- * CreationTimeAfter [CreationTime] <p>A filter that returns only notebook instances that were created after the specified time (timestamp).</p>
-- * CreationTimeBefore [CreationTime] <p>A filter that returns only notebook instances that were created before the specified time (timestamp). </p>
-- * MaxResults [MaxResults] <p>The maximum number of notebook instances to return.</p>
-- * NameContains [NotebookInstanceNameContains] <p>A string in the notebook instances' name. This filter returns only notebook instances whose name contains the specified string.</p>
-- * SortBy [NotebookInstanceSortKey] <p>The field to sort results by. The default is <code>Name</code>.</p>
-- * StatusEquals [NotebookInstanceStatus] <p>A filter that returns only notebook instances with the specified status.</p>
-- * LastModifiedTimeAfter [LastModifiedTime] <p>A filter that returns only notebook instances that were modified after the specified time (timestamp).</p>
-- * NextToken [NextToken] <p> If the previous call to the <code>ListNotebookInstances</code> is truncated, the response includes a <code>NextToken</code>. You can use this token in your subsequent <code>ListNotebookInstances</code> request to fetch the next set of notebook instances. </p> <note> <p> You might specify a filter or a sort order in your request. When response is truncated, you must use the same values for the filer and sort order in the next request. </p> </note>
-- * SortOrder [NotebookInstanceSortOrder] <p>The sort order for results. </p>
-- @return ListNotebookInstancesInput structure as a key-value pair table
function M.ListNotebookInstancesInput(args)
	assert(args, "You must provide an argument table when creating ListNotebookInstancesInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NotebookInstanceLifecycleConfigNameContains"] = args["NotebookInstanceLifecycleConfigNameContains"],
		["LastModifiedTimeBefore"] = args["LastModifiedTimeBefore"],
		["CreationTimeAfter"] = args["CreationTimeAfter"],
		["CreationTimeBefore"] = args["CreationTimeBefore"],
		["MaxResults"] = args["MaxResults"],
		["NameContains"] = args["NameContains"],
		["SortBy"] = args["SortBy"],
		["StatusEquals"] = args["StatusEquals"],
		["LastModifiedTimeAfter"] = args["LastModifiedTimeAfter"],
		["NextToken"] = args["NextToken"],
		["SortOrder"] = args["SortOrder"],
	}
	asserts.AssertListNotebookInstancesInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateNotebookInstanceOutput = { nil }

function asserts.AssertUpdateNotebookInstanceOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateNotebookInstanceOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.UpdateNotebookInstanceOutput[k], "UpdateNotebookInstanceOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateNotebookInstanceOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return UpdateNotebookInstanceOutput structure as a key-value pair table
function M.UpdateNotebookInstanceOutput(args)
	assert(args, "You must provide an argument table when creating UpdateNotebookInstanceOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertUpdateNotebookInstanceOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StopNotebookInstanceInput = { ["NotebookInstanceName"] = true, nil }

function asserts.AssertStopNotebookInstanceInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopNotebookInstanceInput to be of type 'table'")
	assert(struct["NotebookInstanceName"], "Expected key NotebookInstanceName to exist in table")
	if struct["NotebookInstanceName"] then asserts.AssertNotebookInstanceName(struct["NotebookInstanceName"]) end
	for k,_ in pairs(struct) do
		assert(keys.StopNotebookInstanceInput[k], "StopNotebookInstanceInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopNotebookInstanceInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NotebookInstanceName [NotebookInstanceName] <p>The name of the notebook instance to terminate.</p>
-- Required key: NotebookInstanceName
-- @return StopNotebookInstanceInput structure as a key-value pair table
function M.StopNotebookInstanceInput(args)
	assert(args, "You must provide an argument table when creating StopNotebookInstanceInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NotebookInstanceName"] = args["NotebookInstanceName"],
	}
	asserts.AssertStopNotebookInstanceInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeployedImage = { ["ResolvedImage"] = true, ["SpecifiedImage"] = true, ["ResolutionTime"] = true, nil }

function asserts.AssertDeployedImage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeployedImage to be of type 'table'")
	if struct["ResolvedImage"] then asserts.AssertImage(struct["ResolvedImage"]) end
	if struct["SpecifiedImage"] then asserts.AssertImage(struct["SpecifiedImage"]) end
	if struct["ResolutionTime"] then asserts.AssertTimestamp(struct["ResolutionTime"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeployedImage[k], "DeployedImage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeployedImage
-- <p>Gets the Amazon EC2 Container Registry path of the docker image of the model that is hosted in this <a>ProductionVariant</a>.</p> <p>If you used the <code>registry/repository[:tag]</code> form to specify the image path of the primary container when you created the model hosted in this <code>ProductionVariant</code>, the path resolves to a path of the form <code>registry/repository[@digest]</code>. A digest is a hash value that identifies a specific version of an image. For information about Amazon ECR paths, see <a href="http://docs.aws.amazon.com//AmazonECR/latest/userguide/docker-pull-ecr-image.html">Pulling an Image</a> in the <i>Amazon ECR User Guide</i>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResolvedImage [Image] <p>The specific digest path of the image hosted in this <code>ProductionVariant</code>.</p>
-- * SpecifiedImage [Image] <p>The image path you specified when you created the model.</p>
-- * ResolutionTime [Timestamp] <p>The date and time when the image path for the model resolved to the <code>ResolvedImage</code> </p>
-- @return DeployedImage structure as a key-value pair table
function M.DeployedImage(args)
	assert(args, "You must provide an argument table when creating DeployedImage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ResolvedImage"] = args["ResolvedImage"],
		["SpecifiedImage"] = args["SpecifiedImage"],
		["ResolutionTime"] = args["ResolutionTime"],
	}
	asserts.AssertDeployedImage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeEndpointConfigOutput = { ["EndpointConfigName"] = true, ["EndpointConfigArn"] = true, ["CreationTime"] = true, ["ProductionVariants"] = true, ["KmsKeyId"] = true, nil }

function asserts.AssertDescribeEndpointConfigOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEndpointConfigOutput to be of type 'table'")
	assert(struct["EndpointConfigName"], "Expected key EndpointConfigName to exist in table")
	assert(struct["EndpointConfigArn"], "Expected key EndpointConfigArn to exist in table")
	assert(struct["ProductionVariants"], "Expected key ProductionVariants to exist in table")
	assert(struct["CreationTime"], "Expected key CreationTime to exist in table")
	if struct["EndpointConfigName"] then asserts.AssertEndpointConfigName(struct["EndpointConfigName"]) end
	if struct["EndpointConfigArn"] then asserts.AssertEndpointConfigArn(struct["EndpointConfigArn"]) end
	if struct["CreationTime"] then asserts.AssertTimestamp(struct["CreationTime"]) end
	if struct["ProductionVariants"] then asserts.AssertProductionVariantList(struct["ProductionVariants"]) end
	if struct["KmsKeyId"] then asserts.AssertKmsKeyId(struct["KmsKeyId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeEndpointConfigOutput[k], "DescribeEndpointConfigOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEndpointConfigOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EndpointConfigName [EndpointConfigName] <p>Name of the Amazon SageMaker endpoint configuration.</p>
-- * EndpointConfigArn [EndpointConfigArn] <p>The Amazon Resource Name (ARN) of the endpoint configuration.</p>
-- * CreationTime [Timestamp] <p>A timestamp that shows when the endpoint configuration was created.</p>
-- * ProductionVariants [ProductionVariantList] <p>An array of <code>ProductionVariant</code> objects, one for each model that you want to host at this endpoint.</p>
-- * KmsKeyId [KmsKeyId] <p>AWS KMS key ID Amazon SageMaker uses to encrypt data when storing it on the ML storage volume attached to the instance.</p>
-- Required key: EndpointConfigName
-- Required key: EndpointConfigArn
-- Required key: ProductionVariants
-- Required key: CreationTime
-- @return DescribeEndpointConfigOutput structure as a key-value pair table
function M.DescribeEndpointConfigOutput(args)
	assert(args, "You must provide an argument table when creating DescribeEndpointConfigOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EndpointConfigName"] = args["EndpointConfigName"],
		["EndpointConfigArn"] = args["EndpointConfigArn"],
		["CreationTime"] = args["CreationTime"],
		["ProductionVariants"] = args["ProductionVariants"],
		["KmsKeyId"] = args["KmsKeyId"],
	}
	asserts.AssertDescribeEndpointConfigOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListTransformJobsRequest = { ["SortBy"] = true, ["SortOrder"] = true, ["CreationTimeBefore"] = true, ["MaxResults"] = true, ["NameContains"] = true, ["LastModifiedTimeBefore"] = true, ["LastModifiedTimeAfter"] = true, ["StatusEquals"] = true, ["NextToken"] = true, ["CreationTimeAfter"] = true, nil }

function asserts.AssertListTransformJobsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTransformJobsRequest to be of type 'table'")
	if struct["SortBy"] then asserts.AssertSortBy(struct["SortBy"]) end
	if struct["SortOrder"] then asserts.AssertSortOrder(struct["SortOrder"]) end
	if struct["CreationTimeBefore"] then asserts.AssertTimestamp(struct["CreationTimeBefore"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	if struct["NameContains"] then asserts.AssertNameContains(struct["NameContains"]) end
	if struct["LastModifiedTimeBefore"] then asserts.AssertTimestamp(struct["LastModifiedTimeBefore"]) end
	if struct["LastModifiedTimeAfter"] then asserts.AssertTimestamp(struct["LastModifiedTimeAfter"]) end
	if struct["StatusEquals"] then asserts.AssertTransformJobStatus(struct["StatusEquals"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["CreationTimeAfter"] then asserts.AssertTimestamp(struct["CreationTimeAfter"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTransformJobsRequest[k], "ListTransformJobsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTransformJobsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SortBy [SortBy] <p>The field to sort results by. The default is <code>CreationTime</code>.</p>
-- * SortOrder [SortOrder] <p>The sort order for results. The default is <code>Descending</code>.</p>
-- * CreationTimeBefore [Timestamp] <p>A filter that returns only transform jobs created before the specified time.</p>
-- * MaxResults [MaxResults] <p>The maximum number of transform jobs to return in the response. The default value is <code>10</code>.</p>
-- * NameContains [NameContains] <p>A string in the transform job name. This filter returns only transform jobs whose name contains the specified string.</p>
-- * LastModifiedTimeBefore [Timestamp] <p>A filter that returns only transform jobs modified before the specified time.</p>
-- * LastModifiedTimeAfter [Timestamp] <p>A filter that returns only transform jobs modified after the specified time.</p>
-- * StatusEquals [TransformJobStatus] <p>A filter that retrieves only transform jobs with a specific status.</p>
-- * NextToken [NextToken] <p>If the result of the previous <code>ListTransformJobs</code> request was truncated, the response includes a <code>NextToken</code>. To retrieve the next set of transform jobs, use the token in the next request.</p>
-- * CreationTimeAfter [Timestamp] <p>A filter that returns only transform jobs created after the specified time.</p>
-- @return ListTransformJobsRequest structure as a key-value pair table
function M.ListTransformJobsRequest(args)
	assert(args, "You must provide an argument table when creating ListTransformJobsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SortBy"] = args["SortBy"],
		["SortOrder"] = args["SortOrder"],
		["CreationTimeBefore"] = args["CreationTimeBefore"],
		["MaxResults"] = args["MaxResults"],
		["NameContains"] = args["NameContains"],
		["LastModifiedTimeBefore"] = args["LastModifiedTimeBefore"],
		["LastModifiedTimeAfter"] = args["LastModifiedTimeAfter"],
		["StatusEquals"] = args["StatusEquals"],
		["NextToken"] = args["NextToken"],
		["CreationTimeAfter"] = args["CreationTimeAfter"],
	}
	asserts.AssertListTransformJobsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListEndpointsInput = { ["LastModifiedTimeBefore"] = true, ["CreationTimeAfter"] = true, ["CreationTimeBefore"] = true, ["MaxResults"] = true, ["NameContains"] = true, ["SortBy"] = true, ["StatusEquals"] = true, ["LastModifiedTimeAfter"] = true, ["NextToken"] = true, ["SortOrder"] = true, nil }

function asserts.AssertListEndpointsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListEndpointsInput to be of type 'table'")
	if struct["LastModifiedTimeBefore"] then asserts.AssertTimestamp(struct["LastModifiedTimeBefore"]) end
	if struct["CreationTimeAfter"] then asserts.AssertTimestamp(struct["CreationTimeAfter"]) end
	if struct["CreationTimeBefore"] then asserts.AssertTimestamp(struct["CreationTimeBefore"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	if struct["NameContains"] then asserts.AssertEndpointNameContains(struct["NameContains"]) end
	if struct["SortBy"] then asserts.AssertEndpointSortKey(struct["SortBy"]) end
	if struct["StatusEquals"] then asserts.AssertEndpointStatus(struct["StatusEquals"]) end
	if struct["LastModifiedTimeAfter"] then asserts.AssertTimestamp(struct["LastModifiedTimeAfter"]) end
	if struct["NextToken"] then asserts.AssertPaginationToken(struct["NextToken"]) end
	if struct["SortOrder"] then asserts.AssertOrderKey(struct["SortOrder"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListEndpointsInput[k], "ListEndpointsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListEndpointsInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LastModifiedTimeBefore [Timestamp] <p> A filter that returns only endpoints that were modified before the specified timestamp. </p>
-- * CreationTimeAfter [Timestamp] <p>A filter that returns only endpoints that were created after the specified time (timestamp).</p>
-- * CreationTimeBefore [Timestamp] <p>A filter that returns only endpoints that were created before the specified time (timestamp).</p>
-- * MaxResults [MaxResults] <p>The maximum number of endpoints to return in the response.</p>
-- * NameContains [EndpointNameContains] <p>A string in endpoint names. This filter returns only endpoints whose name contains the specified string.</p>
-- * SortBy [EndpointSortKey] <p>Sorts the list of results. The default is <code>CreationTime</code>.</p>
-- * StatusEquals [EndpointStatus] <p> A filter that returns only endpoints with the specified status.</p>
-- * LastModifiedTimeAfter [Timestamp] <p> A filter that returns only endpoints that were modified after the specified timestamp. </p>
-- * NextToken [PaginationToken] <p>If the result of a <code>ListEndpoints</code> request was truncated, the response includes a <code>NextToken</code>. To retrieve the next set of endpoints, use the token in the next request.</p>
-- * SortOrder [OrderKey] <p>The sort order for results. The default is <code>Ascending</code>.</p>
-- @return ListEndpointsInput structure as a key-value pair table
function M.ListEndpointsInput(args)
	assert(args, "You must provide an argument table when creating ListEndpointsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LastModifiedTimeBefore"] = args["LastModifiedTimeBefore"],
		["CreationTimeAfter"] = args["CreationTimeAfter"],
		["CreationTimeBefore"] = args["CreationTimeBefore"],
		["MaxResults"] = args["MaxResults"],
		["NameContains"] = args["NameContains"],
		["SortBy"] = args["SortBy"],
		["StatusEquals"] = args["StatusEquals"],
		["LastModifiedTimeAfter"] = args["LastModifiedTimeAfter"],
		["NextToken"] = args["NextToken"],
		["SortOrder"] = args["SortOrder"],
	}
	asserts.AssertListEndpointsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.FinalHyperParameterTuningJobObjectiveMetric = { ["Type"] = true, ["Value"] = true, ["MetricName"] = true, nil }

function asserts.AssertFinalHyperParameterTuningJobObjectiveMetric(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FinalHyperParameterTuningJobObjectiveMetric to be of type 'table'")
	assert(struct["MetricName"], "Expected key MetricName to exist in table")
	assert(struct["Value"], "Expected key Value to exist in table")
	if struct["Type"] then asserts.AssertHyperParameterTuningJobObjectiveType(struct["Type"]) end
	if struct["Value"] then asserts.AssertMetricValue(struct["Value"]) end
	if struct["MetricName"] then asserts.AssertMetricName(struct["MetricName"]) end
	for k,_ in pairs(struct) do
		assert(keys.FinalHyperParameterTuningJobObjectiveMetric[k], "FinalHyperParameterTuningJobObjectiveMetric contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FinalHyperParameterTuningJobObjectiveMetric
-- <p>Shows the final value for the objective metric for a training job that was launched by a hyperparameter tuning job. You define the objective metric in the <code>HyperParameterTuningJobObjective</code> parameter of <a>HyperParameterTuningJobConfig</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Type [HyperParameterTuningJobObjectiveType] <p>Whether to minimize or maximize the objective metric. Valid values are Minimize and Maximize.</p>
-- * Value [MetricValue] <p>The value of the objective metric.</p>
-- * MetricName [MetricName] <p>The name of the objective metric.</p>
-- Required key: MetricName
-- Required key: Value
-- @return FinalHyperParameterTuningJobObjectiveMetric structure as a key-value pair table
function M.FinalHyperParameterTuningJobObjectiveMetric(args)
	assert(args, "You must provide an argument table when creating FinalHyperParameterTuningJobObjectiveMetric")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Type"] = args["Type"],
		["Value"] = args["Value"],
		["MetricName"] = args["MetricName"],
	}
	asserts.AssertFinalHyperParameterTuningJobObjectiveMetric(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeNotebookInstanceOutput = { ["NetworkInterfaceId"] = true, ["NotebookInstanceStatus"] = true, ["VolumeSizeInGB"] = true, ["Url"] = true, ["RoleArn"] = true, ["NotebookInstanceName"] = true, ["CreationTime"] = true, ["NotebookInstanceArn"] = true, ["DirectInternetAccess"] = true, ["KmsKeyId"] = true, ["SecurityGroups"] = true, ["SubnetId"] = true, ["LastModifiedTime"] = true, ["InstanceType"] = true, ["NotebookInstanceLifecycleConfigName"] = true, ["FailureReason"] = true, nil }

function asserts.AssertDescribeNotebookInstanceOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeNotebookInstanceOutput to be of type 'table'")
	if struct["NetworkInterfaceId"] then asserts.AssertNetworkInterfaceId(struct["NetworkInterfaceId"]) end
	if struct["NotebookInstanceStatus"] then asserts.AssertNotebookInstanceStatus(struct["NotebookInstanceStatus"]) end
	if struct["VolumeSizeInGB"] then asserts.AssertNotebookInstanceVolumeSizeInGB(struct["VolumeSizeInGB"]) end
	if struct["Url"] then asserts.AssertNotebookInstanceUrl(struct["Url"]) end
	if struct["RoleArn"] then asserts.AssertRoleArn(struct["RoleArn"]) end
	if struct["NotebookInstanceName"] then asserts.AssertNotebookInstanceName(struct["NotebookInstanceName"]) end
	if struct["CreationTime"] then asserts.AssertCreationTime(struct["CreationTime"]) end
	if struct["NotebookInstanceArn"] then asserts.AssertNotebookInstanceArn(struct["NotebookInstanceArn"]) end
	if struct["DirectInternetAccess"] then asserts.AssertDirectInternetAccess(struct["DirectInternetAccess"]) end
	if struct["KmsKeyId"] then asserts.AssertKmsKeyId(struct["KmsKeyId"]) end
	if struct["SecurityGroups"] then asserts.AssertSecurityGroupIds(struct["SecurityGroups"]) end
	if struct["SubnetId"] then asserts.AssertSubnetId(struct["SubnetId"]) end
	if struct["LastModifiedTime"] then asserts.AssertLastModifiedTime(struct["LastModifiedTime"]) end
	if struct["InstanceType"] then asserts.AssertInstanceType(struct["InstanceType"]) end
	if struct["NotebookInstanceLifecycleConfigName"] then asserts.AssertNotebookInstanceLifecycleConfigName(struct["NotebookInstanceLifecycleConfigName"]) end
	if struct["FailureReason"] then asserts.AssertFailureReason(struct["FailureReason"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeNotebookInstanceOutput[k], "DescribeNotebookInstanceOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeNotebookInstanceOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NetworkInterfaceId [NetworkInterfaceId] <p> Network interface IDs that Amazon SageMaker created at the time of creating the instance. </p>
-- * NotebookInstanceStatus [NotebookInstanceStatus] <p>The status of the notebook instance.</p>
-- * VolumeSizeInGB [NotebookInstanceVolumeSizeInGB] <p>The size, in GB, of the ML storage volume attached to the notebook instance.</p>
-- * Url [NotebookInstanceUrl] <p>The URL that you use to connect to the Jupyter notebook that is running in your notebook instance. </p>
-- * RoleArn [RoleArn] <p> Amazon Resource Name (ARN) of the IAM role associated with the instance. </p>
-- * NotebookInstanceName [NotebookInstanceName] <p> Name of the Amazon SageMaker notebook instance. </p>
-- * CreationTime [CreationTime] <p>A timestamp. Use this parameter to return the time when the notebook instance was created</p>
-- * NotebookInstanceArn [NotebookInstanceArn] <p>The Amazon Resource Name (ARN) of the notebook instance.</p>
-- * DirectInternetAccess [DirectInternetAccess] <p>Describes whether Amazon SageMaker provides internet access to the notebook instance. If this value is set to <i>Disabled, he notebook instance does not have internet access, and cannot connect to Amazon SageMaker training and endpoint services</i>.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/sagemaker/latest/dg/appendix-additional-considerations.html#appendix-notebook-and-internet-access">Notebook Instances Are Internet-Enabled by Default</a>.</p>
-- * KmsKeyId [KmsKeyId] <p> AWS KMS key ID Amazon SageMaker uses to encrypt data when storing it on the ML storage volume attached to the instance. </p>
-- * SecurityGroups [SecurityGroupIds] <p>The IDs of the VPC security groups.</p>
-- * SubnetId [SubnetId] <p>The ID of the VPC subnet.</p>
-- * LastModifiedTime [LastModifiedTime] <p>A timestamp. Use this parameter to retrieve the time when the notebook instance was last modified. </p>
-- * InstanceType [InstanceType] <p>The type of ML compute instance running on the notebook instance.</p>
-- * NotebookInstanceLifecycleConfigName [NotebookInstanceLifecycleConfigName] <p>Returns the name of a notebook instance lifecycle configuration.</p> <p>For information about notebook instance lifestyle configurations, see <a href="http://docs.aws.amazon.com/sagemaker/latest/dg/notebook-lifecycle-config.html">Step 2.1: (Optional) Customize a Notebook Instance</a> </p>
-- * FailureReason [FailureReason] <p>If status is failed, the reason it failed.</p>
-- @return DescribeNotebookInstanceOutput structure as a key-value pair table
function M.DescribeNotebookInstanceOutput(args)
	assert(args, "You must provide an argument table when creating DescribeNotebookInstanceOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NetworkInterfaceId"] = args["NetworkInterfaceId"],
		["NotebookInstanceStatus"] = args["NotebookInstanceStatus"],
		["VolumeSizeInGB"] = args["VolumeSizeInGB"],
		["Url"] = args["Url"],
		["RoleArn"] = args["RoleArn"],
		["NotebookInstanceName"] = args["NotebookInstanceName"],
		["CreationTime"] = args["CreationTime"],
		["NotebookInstanceArn"] = args["NotebookInstanceArn"],
		["DirectInternetAccess"] = args["DirectInternetAccess"],
		["KmsKeyId"] = args["KmsKeyId"],
		["SecurityGroups"] = args["SecurityGroups"],
		["SubnetId"] = args["SubnetId"],
		["LastModifiedTime"] = args["LastModifiedTime"],
		["InstanceType"] = args["InstanceType"],
		["NotebookInstanceLifecycleConfigName"] = args["NotebookInstanceLifecycleConfigName"],
		["FailureReason"] = args["FailureReason"],
	}
	asserts.AssertDescribeNotebookInstanceOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.HyperParameterTuningJobObjective = { ["Type"] = true, ["MetricName"] = true, nil }

function asserts.AssertHyperParameterTuningJobObjective(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HyperParameterTuningJobObjective to be of type 'table'")
	assert(struct["Type"], "Expected key Type to exist in table")
	assert(struct["MetricName"], "Expected key MetricName to exist in table")
	if struct["Type"] then asserts.AssertHyperParameterTuningJobObjectiveType(struct["Type"]) end
	if struct["MetricName"] then asserts.AssertMetricName(struct["MetricName"]) end
	for k,_ in pairs(struct) do
		assert(keys.HyperParameterTuningJobObjective[k], "HyperParameterTuningJobObjective contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HyperParameterTuningJobObjective
-- <p>Defines the objective metric for a hyperparameter tuning job. Hyperparameter tuning uses the value of this metric to evaluate the training jobs it launches, and returns the training job that results in either the highest or lowest value for this metric, depending on the value you specify for the <code>Type</code> parameter.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Type [HyperParameterTuningJobObjectiveType] <p>Whether to minimize or maximize the objective metric.</p>
-- * MetricName [MetricName] <p>The name of the metric to use for the objective metric.</p>
-- Required key: Type
-- Required key: MetricName
-- @return HyperParameterTuningJobObjective structure as a key-value pair table
function M.HyperParameterTuningJobObjective(args)
	assert(args, "You must provide an argument table when creating HyperParameterTuningJobObjective")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Type"] = args["Type"],
		["MetricName"] = args["MetricName"],
	}
	asserts.AssertHyperParameterTuningJobObjective(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreatePresignedNotebookInstanceUrlOutput = { ["AuthorizedUrl"] = true, nil }

function asserts.AssertCreatePresignedNotebookInstanceUrlOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreatePresignedNotebookInstanceUrlOutput to be of type 'table'")
	if struct["AuthorizedUrl"] then asserts.AssertNotebookInstanceUrl(struct["AuthorizedUrl"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreatePresignedNotebookInstanceUrlOutput[k], "CreatePresignedNotebookInstanceUrlOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreatePresignedNotebookInstanceUrlOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AuthorizedUrl [NotebookInstanceUrl] <p>A JSON object that contains the URL string. </p>
-- @return CreatePresignedNotebookInstanceUrlOutput structure as a key-value pair table
function M.CreatePresignedNotebookInstanceUrlOutput(args)
	assert(args, "You must provide an argument table when creating CreatePresignedNotebookInstanceUrlOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AuthorizedUrl"] = args["AuthorizedUrl"],
	}
	asserts.AssertCreatePresignedNotebookInstanceUrlOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateTrainingJobRequest = { ["TrainingJobName"] = true, ["VpcConfig"] = true, ["InputDataConfig"] = true, ["AlgorithmSpecification"] = true, ["HyperParameters"] = true, ["RoleArn"] = true, ["Tags"] = true, ["OutputDataConfig"] = true, ["StoppingCondition"] = true, ["ResourceConfig"] = true, nil }

function asserts.AssertCreateTrainingJobRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateTrainingJobRequest to be of type 'table'")
	assert(struct["TrainingJobName"], "Expected key TrainingJobName to exist in table")
	assert(struct["AlgorithmSpecification"], "Expected key AlgorithmSpecification to exist in table")
	assert(struct["RoleArn"], "Expected key RoleArn to exist in table")
	assert(struct["OutputDataConfig"], "Expected key OutputDataConfig to exist in table")
	assert(struct["ResourceConfig"], "Expected key ResourceConfig to exist in table")
	assert(struct["StoppingCondition"], "Expected key StoppingCondition to exist in table")
	if struct["TrainingJobName"] then asserts.AssertTrainingJobName(struct["TrainingJobName"]) end
	if struct["VpcConfig"] then asserts.AssertVpcConfig(struct["VpcConfig"]) end
	if struct["InputDataConfig"] then asserts.AssertInputDataConfig(struct["InputDataConfig"]) end
	if struct["AlgorithmSpecification"] then asserts.AssertAlgorithmSpecification(struct["AlgorithmSpecification"]) end
	if struct["HyperParameters"] then asserts.AssertHyperParameters(struct["HyperParameters"]) end
	if struct["RoleArn"] then asserts.AssertRoleArn(struct["RoleArn"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	if struct["OutputDataConfig"] then asserts.AssertOutputDataConfig(struct["OutputDataConfig"]) end
	if struct["StoppingCondition"] then asserts.AssertStoppingCondition(struct["StoppingCondition"]) end
	if struct["ResourceConfig"] then asserts.AssertResourceConfig(struct["ResourceConfig"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateTrainingJobRequest[k], "CreateTrainingJobRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateTrainingJobRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TrainingJobName [TrainingJobName] <p>The name of the training job. The name must be unique within an AWS Region in an AWS account. </p>
-- * VpcConfig [VpcConfig] <p>A <a>VpcConfig</a> object that specifies the VPC that you want your training job to connect to. Control access to and from your training container by configuring the VPC. For more information, see <a href="http://docs.aws.amazon.com/sagemaker/latest/dg/train-vpc.html">Protect Training Jobs by Using an Amazon Virtual Private Cloud</a>.</p>
-- * InputDataConfig [InputDataConfig] <p>An array of <code>Channel</code> objects. Each channel is a named input source. <code>InputDataConfig</code> describes the input data and its location. </p> <p>Algorithms can accept input data from one or more channels. For example, an algorithm might have two channels of input data, <code>training_data</code> and <code>validation_data</code>. The configuration for each channel provides the S3 location where the input data is stored. It also provides information about the stored data: the MIME type, compression method, and whether the data is wrapped in RecordIO format. </p> <p>Depending on the input mode that the algorithm supports, Amazon SageMaker either copies input data files from an S3 bucket to a local directory in the Docker container, or makes it available as input streams. </p>
-- * AlgorithmSpecification [AlgorithmSpecification] <p>The registry path of the Docker image that contains the training algorithm and algorithm-specific metadata, including the input mode. For more information about algorithms provided by Amazon SageMaker, see <a href="http://docs.aws.amazon.com/sagemaker/latest/dg/algos.html">Algorithms</a>. For information about providing your own algorithms, see <a href="http://docs.aws.amazon.com/sagemaker/latest/dg/your-algorithms.html">Using Your Own Algorithms with Amazon SageMaker</a>. </p>
-- * HyperParameters [HyperParameters] <p>Algorithm-specific parameters that influence the quality of the model. You set hyperparameters before you start the learning process. For a list of hyperparameters for each training algorithm provided by Amazon SageMaker, see <a href="http://docs.aws.amazon.com/sagemaker/latest/dg/algos.html">Algorithms</a>. </p> <p>You can specify a maximum of 100 hyperparameters. Each hyperparameter is a key-value pair. Each key and value is limited to 256 characters, as specified by the <code>Length Constraint</code>. </p>
-- * RoleArn [RoleArn] <p>The Amazon Resource Name (ARN) of an IAM role that Amazon SageMaker can assume to perform tasks on your behalf. </p> <p>During model training, Amazon SageMaker needs your permission to read input data from an S3 bucket, download a Docker image that contains training code, write model artifacts to an S3 bucket, write logs to Amazon CloudWatch Logs, and publish metrics to Amazon CloudWatch. You grant permissions for all of these tasks to an IAM role. For more information, see <a href="http://docs.aws.amazon.com/sagemaker/latest/dg/sagemaker-roles.html">Amazon SageMaker Roles</a>. </p> <note> <p>To be able to pass this role to Amazon SageMaker, the caller of this API must have the <code>iam:PassRole</code> permission.</p> </note>
-- * Tags [TagList] <p>An array of key-value pairs. For more information, see <a href="http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html#allocation-what">Using Cost Allocation Tags</a> in the <i>AWS Billing and Cost Management User Guide</i>. </p>
-- * OutputDataConfig [OutputDataConfig] <p>Specifies the path to the S3 bucket where you want to store model artifacts. Amazon SageMaker creates subfolders for the artifacts. </p>
-- * StoppingCondition [StoppingCondition] <p>Sets a duration for training. Use this parameter to cap model training costs. To stop a job, Amazon SageMaker sends the algorithm the <code>SIGTERM</code> signal, which delays job termination for 120 seconds. Algorithms might use this 120-second window to save the model artifacts. </p> <p>When Amazon SageMaker terminates a job because the stopping condition has been met, training algorithms provided by Amazon SageMaker save the intermediate results of the job. This intermediate data is a valid model artifact. You can use it to create a model using the <code>CreateModel</code> API. </p>
-- * ResourceConfig [ResourceConfig] <p>The resources, including the ML compute instances and ML storage volumes, to use for model training. </p> <p>ML storage volumes store model artifacts and incremental states. Training algorithms might also use ML storage volumes for scratch space. If you want Amazon SageMaker to use the ML storage volume to store the training data, choose <code>File</code> as the <code>TrainingInputMode</code> in the algorithm specification. For distributed training algorithms, specify an instance count greater than 1.</p>
-- Required key: TrainingJobName
-- Required key: AlgorithmSpecification
-- Required key: RoleArn
-- Required key: OutputDataConfig
-- Required key: ResourceConfig
-- Required key: StoppingCondition
-- @return CreateTrainingJobRequest structure as a key-value pair table
function M.CreateTrainingJobRequest(args)
	assert(args, "You must provide an argument table when creating CreateTrainingJobRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TrainingJobName"] = args["TrainingJobName"],
		["VpcConfig"] = args["VpcConfig"],
		["InputDataConfig"] = args["InputDataConfig"],
		["AlgorithmSpecification"] = args["AlgorithmSpecification"],
		["HyperParameters"] = args["HyperParameters"],
		["RoleArn"] = args["RoleArn"],
		["Tags"] = args["Tags"],
		["OutputDataConfig"] = args["OutputDataConfig"],
		["StoppingCondition"] = args["StoppingCondition"],
		["ResourceConfig"] = args["ResourceConfig"],
	}
	asserts.AssertCreateTrainingJobRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateEndpointConfigOutput = { ["EndpointConfigArn"] = true, nil }

function asserts.AssertCreateEndpointConfigOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateEndpointConfigOutput to be of type 'table'")
	assert(struct["EndpointConfigArn"], "Expected key EndpointConfigArn to exist in table")
	if struct["EndpointConfigArn"] then asserts.AssertEndpointConfigArn(struct["EndpointConfigArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateEndpointConfigOutput[k], "CreateEndpointConfigOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateEndpointConfigOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EndpointConfigArn [EndpointConfigArn] <p>The Amazon Resource Name (ARN) of the endpoint configuration. </p>
-- Required key: EndpointConfigArn
-- @return CreateEndpointConfigOutput structure as a key-value pair table
function M.CreateEndpointConfigOutput(args)
	assert(args, "You must provide an argument table when creating CreateEndpointConfigOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EndpointConfigArn"] = args["EndpointConfigArn"],
	}
	asserts.AssertCreateEndpointConfigOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListHyperParameterTuningJobsResponse = { ["NextToken"] = true, ["HyperParameterTuningJobSummaries"] = true, nil }

function asserts.AssertListHyperParameterTuningJobsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListHyperParameterTuningJobsResponse to be of type 'table'")
	assert(struct["HyperParameterTuningJobSummaries"], "Expected key HyperParameterTuningJobSummaries to exist in table")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["HyperParameterTuningJobSummaries"] then asserts.AssertHyperParameterTuningJobSummaries(struct["HyperParameterTuningJobSummaries"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListHyperParameterTuningJobsResponse[k], "ListHyperParameterTuningJobsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListHyperParameterTuningJobsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>If the result of this <code>ListHyperParameterTuningJobs</code> request was truncated, the response includes a <code>NextToken</code>. To retrieve the next set of tuning jobs, use the token in the next request.</p>
-- * HyperParameterTuningJobSummaries [HyperParameterTuningJobSummaries] <p>A list of <a>HyperParameterTuningJobSummary</a> objects that describe the tuning jobs that the <code>ListHyperParameterTuningJobs</code> request returned.</p>
-- Required key: HyperParameterTuningJobSummaries
-- @return ListHyperParameterTuningJobsResponse structure as a key-value pair table
function M.ListHyperParameterTuningJobsResponse(args)
	assert(args, "You must provide an argument table when creating ListHyperParameterTuningJobsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["HyperParameterTuningJobSummaries"] = args["HyperParameterTuningJobSummaries"],
	}
	asserts.AssertListHyperParameterTuningJobsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListTagsOutput = { ["NextToken"] = true, ["Tags"] = true, nil }

function asserts.AssertListTagsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagsOutput to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTagsOutput[k], "ListTagsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagsOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p> If response is truncated, Amazon SageMaker includes a token in the response. You can use this token in your subsequent request to fetch next set of tokens. </p>
-- * Tags [TagList] <p>An array of <code>Tag</code> objects, each with a tag key and a value.</p>
-- @return ListTagsOutput structure as a key-value pair table
function M.ListTagsOutput(args)
	assert(args, "You must provide an argument table when creating ListTagsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["Tags"] = args["Tags"],
	}
	asserts.AssertListTagsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeNotebookInstanceLifecycleConfigInput = { ["NotebookInstanceLifecycleConfigName"] = true, nil }

function asserts.AssertDescribeNotebookInstanceLifecycleConfigInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeNotebookInstanceLifecycleConfigInput to be of type 'table'")
	assert(struct["NotebookInstanceLifecycleConfigName"], "Expected key NotebookInstanceLifecycleConfigName to exist in table")
	if struct["NotebookInstanceLifecycleConfigName"] then asserts.AssertNotebookInstanceLifecycleConfigName(struct["NotebookInstanceLifecycleConfigName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeNotebookInstanceLifecycleConfigInput[k], "DescribeNotebookInstanceLifecycleConfigInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeNotebookInstanceLifecycleConfigInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NotebookInstanceLifecycleConfigName [NotebookInstanceLifecycleConfigName] <p>The name of the lifecycle configuration to describe.</p>
-- Required key: NotebookInstanceLifecycleConfigName
-- @return DescribeNotebookInstanceLifecycleConfigInput structure as a key-value pair table
function M.DescribeNotebookInstanceLifecycleConfigInput(args)
	assert(args, "You must provide an argument table when creating DescribeNotebookInstanceLifecycleConfigInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NotebookInstanceLifecycleConfigName"] = args["NotebookInstanceLifecycleConfigName"],
	}
	asserts.AssertDescribeNotebookInstanceLifecycleConfigInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateHyperParameterTuningJobRequest = { ["TrainingJobDefinition"] = true, ["HyperParameterTuningJobConfig"] = true, ["Tags"] = true, ["HyperParameterTuningJobName"] = true, nil }

function asserts.AssertCreateHyperParameterTuningJobRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateHyperParameterTuningJobRequest to be of type 'table'")
	assert(struct["HyperParameterTuningJobName"], "Expected key HyperParameterTuningJobName to exist in table")
	assert(struct["HyperParameterTuningJobConfig"], "Expected key HyperParameterTuningJobConfig to exist in table")
	assert(struct["TrainingJobDefinition"], "Expected key TrainingJobDefinition to exist in table")
	if struct["TrainingJobDefinition"] then asserts.AssertHyperParameterTrainingJobDefinition(struct["TrainingJobDefinition"]) end
	if struct["HyperParameterTuningJobConfig"] then asserts.AssertHyperParameterTuningJobConfig(struct["HyperParameterTuningJobConfig"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	if struct["HyperParameterTuningJobName"] then asserts.AssertHyperParameterTuningJobName(struct["HyperParameterTuningJobName"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateHyperParameterTuningJobRequest[k], "CreateHyperParameterTuningJobRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateHyperParameterTuningJobRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TrainingJobDefinition [HyperParameterTrainingJobDefinition] <p>The <a>HyperParameterTrainingJobDefinition</a> object that describes the training jobs that this tuning job launches, including static hyperparameters, input data configuration, output data configuration, resource configuration, and stopping condition.</p>
-- * HyperParameterTuningJobConfig [HyperParameterTuningJobConfig] <p>The <a>HyperParameterTuningJobConfig</a> object that describes the tuning job, including the search strategy, metric used to evaluate training jobs, ranges of parameters to search, and resource limits for the tuning job.</p>
-- * Tags [TagList] <p>An array of key-value pairs. You can use tags to categorize your AWS resources in different ways, for example, by purpose, owner, or environment. For more information, see <a href="https://aws.amazon.com/answers/account-management/aws-tagging-strategies/">AWS Tagging Strategies</a>.</p> <p>Tags that you specify for the tuning job are also added to all training jobs that the tuning job launches.</p>
-- * HyperParameterTuningJobName [HyperParameterTuningJobName] <p>The name of the tuning job. This name is the prefix for the names of all training jobs that this tuning job launches. The name must be unique within the same AWS account and AWS Region. Names are not case sensitive, and must be between 1-32 characters.</p>
-- Required key: HyperParameterTuningJobName
-- Required key: HyperParameterTuningJobConfig
-- Required key: TrainingJobDefinition
-- @return CreateHyperParameterTuningJobRequest structure as a key-value pair table
function M.CreateHyperParameterTuningJobRequest(args)
	assert(args, "You must provide an argument table when creating CreateHyperParameterTuningJobRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TrainingJobDefinition"] = args["TrainingJobDefinition"],
		["HyperParameterTuningJobConfig"] = args["HyperParameterTuningJobConfig"],
		["Tags"] = args["Tags"],
		["HyperParameterTuningJobName"] = args["HyperParameterTuningJobName"],
	}
	asserts.AssertCreateHyperParameterTuningJobRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteModelInput = { ["ModelName"] = true, nil }

function asserts.AssertDeleteModelInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteModelInput to be of type 'table'")
	assert(struct["ModelName"], "Expected key ModelName to exist in table")
	if struct["ModelName"] then asserts.AssertModelName(struct["ModelName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteModelInput[k], "DeleteModelInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteModelInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ModelName [ModelName] <p>The name of the model to delete.</p>
-- Required key: ModelName
-- @return DeleteModelInput structure as a key-value pair table
function M.DeleteModelInput(args)
	assert(args, "You must provide an argument table when creating DeleteModelInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ModelName"] = args["ModelName"],
	}
	asserts.AssertDeleteModelInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DataSource = { ["S3DataSource"] = true, nil }

function asserts.AssertDataSource(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DataSource to be of type 'table'")
	assert(struct["S3DataSource"], "Expected key S3DataSource to exist in table")
	if struct["S3DataSource"] then asserts.AssertS3DataSource(struct["S3DataSource"]) end
	for k,_ in pairs(struct) do
		assert(keys.DataSource[k], "DataSource contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DataSource
-- <p>Describes the location of the channel data.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * S3DataSource [S3DataSource] <p>The S3 location of the data source that is associated with a channel.</p>
-- Required key: S3DataSource
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
		["S3DataSource"] = args["S3DataSource"],
	}
	asserts.AssertDataSource(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TransformDataSource = { ["S3DataSource"] = true, nil }

function asserts.AssertTransformDataSource(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TransformDataSource to be of type 'table'")
	assert(struct["S3DataSource"], "Expected key S3DataSource to exist in table")
	if struct["S3DataSource"] then asserts.AssertTransformS3DataSource(struct["S3DataSource"]) end
	for k,_ in pairs(struct) do
		assert(keys.TransformDataSource[k], "TransformDataSource contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TransformDataSource
-- <p>Describes the location of the channel data.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * S3DataSource [TransformS3DataSource] <p>The S3 location of the data source that is associated with a channel.</p>
-- Required key: S3DataSource
-- @return TransformDataSource structure as a key-value pair table
function M.TransformDataSource(args)
	assert(args, "You must provide an argument table when creating TransformDataSource")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["S3DataSource"] = args["S3DataSource"],
	}
	asserts.AssertTransformDataSource(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.HyperParameterTrainingJobSummary = { ["TrainingJobName"] = true, ["TrainingJobArn"] = true, ["FinalHyperParameterTuningJobObjectiveMetric"] = true, ["ObjectiveStatus"] = true, ["CreationTime"] = true, ["TrainingJobStatus"] = true, ["TunedHyperParameters"] = true, ["TrainingEndTime"] = true, ["TrainingStartTime"] = true, ["FailureReason"] = true, nil }

function asserts.AssertHyperParameterTrainingJobSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HyperParameterTrainingJobSummary to be of type 'table'")
	assert(struct["TrainingJobName"], "Expected key TrainingJobName to exist in table")
	assert(struct["TrainingJobArn"], "Expected key TrainingJobArn to exist in table")
	assert(struct["CreationTime"], "Expected key CreationTime to exist in table")
	assert(struct["TrainingJobStatus"], "Expected key TrainingJobStatus to exist in table")
	assert(struct["TunedHyperParameters"], "Expected key TunedHyperParameters to exist in table")
	if struct["TrainingJobName"] then asserts.AssertTrainingJobName(struct["TrainingJobName"]) end
	if struct["TrainingJobArn"] then asserts.AssertTrainingJobArn(struct["TrainingJobArn"]) end
	if struct["FinalHyperParameterTuningJobObjectiveMetric"] then asserts.AssertFinalHyperParameterTuningJobObjectiveMetric(struct["FinalHyperParameterTuningJobObjectiveMetric"]) end
	if struct["ObjectiveStatus"] then asserts.AssertObjectiveStatus(struct["ObjectiveStatus"]) end
	if struct["CreationTime"] then asserts.AssertTimestamp(struct["CreationTime"]) end
	if struct["TrainingJobStatus"] then asserts.AssertTrainingJobStatus(struct["TrainingJobStatus"]) end
	if struct["TunedHyperParameters"] then asserts.AssertHyperParameters(struct["TunedHyperParameters"]) end
	if struct["TrainingEndTime"] then asserts.AssertTimestamp(struct["TrainingEndTime"]) end
	if struct["TrainingStartTime"] then asserts.AssertTimestamp(struct["TrainingStartTime"]) end
	if struct["FailureReason"] then asserts.AssertFailureReason(struct["FailureReason"]) end
	for k,_ in pairs(struct) do
		assert(keys.HyperParameterTrainingJobSummary[k], "HyperParameterTrainingJobSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HyperParameterTrainingJobSummary
-- <p>Specifies summary information about a training job.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TrainingJobName [TrainingJobName] <p>The name of the training job.</p>
-- * TrainingJobArn [TrainingJobArn] <p>The Amazon Resource Name (ARN) of the training job.</p>
-- * FinalHyperParameterTuningJobObjectiveMetric [FinalHyperParameterTuningJobObjectiveMetric] <p>The <a>FinalHyperParameterTuningJobObjectiveMetric</a> object that specifies the value of the objective metric of the tuning job that launched this training job.</p>
-- * ObjectiveStatus [ObjectiveStatus] <p>The status of the objective metric for the training job:</p> <ul> <li> <p>Succeeded: The final objective metric for the training job was evaluated by the hyperparameter tuning job and used in the hyperparameter tuning process.</p> </li> </ul> <ul> <li> <p>Pending: The training job is in progress and evaluation of its final objective metric is pending.</p> </li> </ul> <ul> <li> <p>Failed: The final objective metric for the training job was not evaluated, and was not used in the hyperparameter tuning process. This typically occurs when the training job failed or did not emit an objective metric.</p> </li> </ul>
-- * CreationTime [Timestamp] <p>The date and time that the training job was created.</p>
-- * TrainingJobStatus [TrainingJobStatus] <p>The status of the training job.</p>
-- * TunedHyperParameters [HyperParameters] <p>A list of the hyperparameters for which you specified ranges to search.</p>
-- * TrainingEndTime [Timestamp] <p>The date and time that the training job ended.</p>
-- * TrainingStartTime [Timestamp] <p>The date and time that the training job started.</p>
-- * FailureReason [FailureReason] <p>The reason that the training job failed. </p>
-- Required key: TrainingJobName
-- Required key: TrainingJobArn
-- Required key: CreationTime
-- Required key: TrainingJobStatus
-- Required key: TunedHyperParameters
-- @return HyperParameterTrainingJobSummary structure as a key-value pair table
function M.HyperParameterTrainingJobSummary(args)
	assert(args, "You must provide an argument table when creating HyperParameterTrainingJobSummary")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TrainingJobName"] = args["TrainingJobName"],
		["TrainingJobArn"] = args["TrainingJobArn"],
		["FinalHyperParameterTuningJobObjectiveMetric"] = args["FinalHyperParameterTuningJobObjectiveMetric"],
		["ObjectiveStatus"] = args["ObjectiveStatus"],
		["CreationTime"] = args["CreationTime"],
		["TrainingJobStatus"] = args["TrainingJobStatus"],
		["TunedHyperParameters"] = args["TunedHyperParameters"],
		["TrainingEndTime"] = args["TrainingEndTime"],
		["TrainingStartTime"] = args["TrainingStartTime"],
		["FailureReason"] = args["FailureReason"],
	}
	asserts.AssertHyperParameterTrainingJobSummary(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.OutputDataConfig = { ["KmsKeyId"] = true, ["S3OutputPath"] = true, nil }

function asserts.AssertOutputDataConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OutputDataConfig to be of type 'table'")
	assert(struct["S3OutputPath"], "Expected key S3OutputPath to exist in table")
	if struct["KmsKeyId"] then asserts.AssertKmsKeyId(struct["KmsKeyId"]) end
	if struct["S3OutputPath"] then asserts.AssertS3Uri(struct["S3OutputPath"]) end
	for k,_ in pairs(struct) do
		assert(keys.OutputDataConfig[k], "OutputDataConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OutputDataConfig
-- <p>Provides information about how to store model training results (model artifacts).</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * KmsKeyId [KmsKeyId] <p>The AWS Key Management Service (AWS KMS) key that Amazon SageMaker uses to encrypt the model artifacts at rest using Amazon S3 server-side encryption. The <code>KmsKeyId</code> can be any of the following formats: </p> <ul> <li> <p>// KMS Key ID</p> <p> <code>"1234abcd-12ab-34cd-56ef-1234567890ab"</code> </p> </li> <li> <p>// Amazon Resource Name (ARN) of a KMS Key</p> <p> <code>"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"</code> </p> </li> <li> <p>// KMS Key Alias</p> <p> <code>"alias/ExampleAlias"</code> </p> </li> <li> <p>// Amazon Resource Name (ARN) of a KMS Key Alias</p> <p> <code>"arn:aws:kms:us-west-2:111122223333:alias/ExampleAlias"</code> </p> </li> </ul> <p>If you don't provide the KMS key ID, Amazon SageMaker uses the default KMS key for Amazon S3 for your role's account. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingKMSEncryption.html">KMS-Managed Encryption Keys</a> in <i>Amazon Simple Storage Service Developer Guide.</i> </p> <note> <p>The KMS key policy must grant permission to the IAM role that you specify in your <code>CreateTrainingJob</code> request. <a href="http://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html">Using Key Policies in AWS KMS</a> in the <i>AWS Key Management Service Developer Guide</i>. </p> </note>
-- * S3OutputPath [S3Uri] <p>Identifies the S3 path where you want Amazon SageMaker to store the model artifacts. For example, <code>s3://bucket-name/key-name-prefix</code>. </p>
-- Required key: S3OutputPath
-- @return OutputDataConfig structure as a key-value pair table
function M.OutputDataConfig(args)
	assert(args, "You must provide an argument table when creating OutputDataConfig")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["KmsKeyId"] = args["KmsKeyId"],
		["S3OutputPath"] = args["S3OutputPath"],
	}
	asserts.AssertOutputDataConfig(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateEndpointWeightsAndCapacitiesOutput = { ["EndpointArn"] = true, nil }

function asserts.AssertUpdateEndpointWeightsAndCapacitiesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateEndpointWeightsAndCapacitiesOutput to be of type 'table'")
	assert(struct["EndpointArn"], "Expected key EndpointArn to exist in table")
	if struct["EndpointArn"] then asserts.AssertEndpointArn(struct["EndpointArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateEndpointWeightsAndCapacitiesOutput[k], "UpdateEndpointWeightsAndCapacitiesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateEndpointWeightsAndCapacitiesOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EndpointArn [EndpointArn] <p>The Amazon Resource Name (ARN) of the updated endpoint.</p>
-- Required key: EndpointArn
-- @return UpdateEndpointWeightsAndCapacitiesOutput structure as a key-value pair table
function M.UpdateEndpointWeightsAndCapacitiesOutput(args)
	assert(args, "You must provide an argument table when creating UpdateEndpointWeightsAndCapacitiesOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EndpointArn"] = args["EndpointArn"],
	}
	asserts.AssertUpdateEndpointWeightsAndCapacitiesOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListTrainingJobsResponse = { ["TrainingJobSummaries"] = true, ["NextToken"] = true, nil }

function asserts.AssertListTrainingJobsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTrainingJobsResponse to be of type 'table'")
	assert(struct["TrainingJobSummaries"], "Expected key TrainingJobSummaries to exist in table")
	if struct["TrainingJobSummaries"] then asserts.AssertTrainingJobSummaries(struct["TrainingJobSummaries"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTrainingJobsResponse[k], "ListTrainingJobsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTrainingJobsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TrainingJobSummaries [TrainingJobSummaries] <p>An array of <code>TrainingJobSummary</code> objects, each listing a training job.</p>
-- * NextToken [NextToken] <p>If the response is truncated, Amazon SageMaker returns this token. To retrieve the next set of training jobs, use it in the subsequent request.</p>
-- Required key: TrainingJobSummaries
-- @return ListTrainingJobsResponse structure as a key-value pair table
function M.ListTrainingJobsResponse(args)
	assert(args, "You must provide an argument table when creating ListTrainingJobsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TrainingJobSummaries"] = args["TrainingJobSummaries"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListTrainingJobsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateModelOutput = { ["ModelArn"] = true, nil }

function asserts.AssertCreateModelOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateModelOutput to be of type 'table'")
	assert(struct["ModelArn"], "Expected key ModelArn to exist in table")
	if struct["ModelArn"] then asserts.AssertModelArn(struct["ModelArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateModelOutput[k], "CreateModelOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateModelOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ModelArn [ModelArn] <p>The ARN of the model created in Amazon SageMaker.</p>
-- Required key: ModelArn
-- @return CreateModelOutput structure as a key-value pair table
function M.CreateModelOutput(args)
	assert(args, "You must provide an argument table when creating CreateModelOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ModelArn"] = args["ModelArn"],
	}
	asserts.AssertCreateModelOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TransformS3DataSource = { ["S3DataType"] = true, ["S3Uri"] = true, nil }

function asserts.AssertTransformS3DataSource(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TransformS3DataSource to be of type 'table'")
	assert(struct["S3DataType"], "Expected key S3DataType to exist in table")
	assert(struct["S3Uri"], "Expected key S3Uri to exist in table")
	if struct["S3DataType"] then asserts.AssertS3DataType(struct["S3DataType"]) end
	if struct["S3Uri"] then asserts.AssertS3Uri(struct["S3Uri"]) end
	for k,_ in pairs(struct) do
		assert(keys.TransformS3DataSource[k], "TransformS3DataSource contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TransformS3DataSource
-- <p>Describes the S3 data source.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * S3DataType [S3DataType] <p>If you choose <code>S3Prefix</code>, <code>S3Uri</code> identifies a key name prefix. Amazon SageMaker uses all objects with the specified key name prefix for batch transform. </p> <p>If you choose <code>ManifestFile</code>, <code>S3Uri</code> identifies an object that is a manifest file containing a list of object keys that you want Amazon SageMaker to use for batch transform. </p>
-- * S3Uri [S3Uri] <p>Depending on the value specified for the <code>S3DataType</code>, identifies either a key name prefix or a manifest. For example:</p> <ul> <li> <p> A key name prefix might look like this: <code>s3://bucketname/exampleprefix</code>. </p> </li> <li> <p> A manifest might look like this: <code>s3://bucketname/example.manifest</code> </p> <p> The manifest is an S3 object which is a JSON file with the following format: </p> <p> <code>[</code> </p> <p> <code> {"prefix": "s3://customer_bucket/some/prefix/"},</code> </p> <p> <code> "relative/path/to/custdata-1",</code> </p> <p> <code> "relative/path/custdata-2",</code> </p> <p> <code> ...</code> </p> <p> <code> ]</code> </p> <p> The preceding JSON matches the following <code>S3Uris</code>: </p> <p> <code>s3://customer_bucket/some/prefix/relative/path/to/custdata-1</code> </p> <p> <code>s3://customer_bucket/some/prefix/relative/path/custdata-1</code> </p> <p> <code>...</code> </p> <p> The complete set of <code>S3Uris</code> in this manifest constitutes the input data for the channel for this datasource. The object that each <code>S3Uris</code> points to must be readable by the IAM role that Amazon SageMaker uses to perform tasks on your behalf.</p> </li> </ul>
-- Required key: S3DataType
-- Required key: S3Uri
-- @return TransformS3DataSource structure as a key-value pair table
function M.TransformS3DataSource(args)
	assert(args, "You must provide an argument table when creating TransformS3DataSource")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["S3DataType"] = args["S3DataType"],
		["S3Uri"] = args["S3Uri"],
	}
	asserts.AssertTransformS3DataSource(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateNotebookInstanceInput = { ["VolumeSizeInGB"] = true, ["Tags"] = true, ["LifecycleConfigName"] = true, ["RoleArn"] = true, ["NotebookInstanceName"] = true, ["SecurityGroupIds"] = true, ["DirectInternetAccess"] = true, ["KmsKeyId"] = true, ["SubnetId"] = true, ["InstanceType"] = true, nil }

function asserts.AssertCreateNotebookInstanceInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateNotebookInstanceInput to be of type 'table'")
	assert(struct["NotebookInstanceName"], "Expected key NotebookInstanceName to exist in table")
	assert(struct["InstanceType"], "Expected key InstanceType to exist in table")
	assert(struct["RoleArn"], "Expected key RoleArn to exist in table")
	if struct["VolumeSizeInGB"] then asserts.AssertNotebookInstanceVolumeSizeInGB(struct["VolumeSizeInGB"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	if struct["LifecycleConfigName"] then asserts.AssertNotebookInstanceLifecycleConfigName(struct["LifecycleConfigName"]) end
	if struct["RoleArn"] then asserts.AssertRoleArn(struct["RoleArn"]) end
	if struct["NotebookInstanceName"] then asserts.AssertNotebookInstanceName(struct["NotebookInstanceName"]) end
	if struct["SecurityGroupIds"] then asserts.AssertSecurityGroupIds(struct["SecurityGroupIds"]) end
	if struct["DirectInternetAccess"] then asserts.AssertDirectInternetAccess(struct["DirectInternetAccess"]) end
	if struct["KmsKeyId"] then asserts.AssertKmsKeyId(struct["KmsKeyId"]) end
	if struct["SubnetId"] then asserts.AssertSubnetId(struct["SubnetId"]) end
	if struct["InstanceType"] then asserts.AssertInstanceType(struct["InstanceType"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateNotebookInstanceInput[k], "CreateNotebookInstanceInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateNotebookInstanceInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * VolumeSizeInGB [NotebookInstanceVolumeSizeInGB] <p>The size, in GB, of the ML storage volume to attach to the notebook instance.</p>
-- * Tags [TagList] <p>A list of tags to associate with the notebook instance. You can add tags later by using the <code>CreateTags</code> API.</p>
-- * LifecycleConfigName [NotebookInstanceLifecycleConfigName] <p>The name of a lifecycle configuration to associate with the notebook instance. For information about lifestyle configurations, see <a href="http://docs.aws.amazon.com/sagemaker/latest/dg/notebook-lifecycle-config.html">Step 2.1: (Optional) Customize a Notebook Instance</a>.</p>
-- * RoleArn [RoleArn] <p> When you send any requests to AWS resources from the notebook instance, Amazon SageMaker assumes this role to perform tasks on your behalf. You must grant this role necessary permissions so Amazon SageMaker can perform these tasks. The policy must allow the Amazon SageMaker service principal (sagemaker.amazonaws.com) permissions to assume this role. For more information, see <a href="http://docs.aws.amazon.com/sagemaker/latest/dg/sagemaker-roles.html">Amazon SageMaker Roles</a>. </p> <note> <p>To be able to pass this role to Amazon SageMaker, the caller of this API must have the <code>iam:PassRole</code> permission.</p> </note>
-- * NotebookInstanceName [NotebookInstanceName] <p>The name of the new notebook instance.</p>
-- * SecurityGroupIds [SecurityGroupIds] <p>The VPC security group IDs, in the form sg-xxxxxxxx. The security groups must be for the same VPC as specified in the subnet. </p>
-- * DirectInternetAccess [DirectInternetAccess] <p>Sets whether Amazon SageMaker provides internet access to the notebook instance. If you set this to <code>Disabled</code> this notebook instance will be able to access resources only in your VPC, and will not be able to connect to Amazon SageMaker training and endpoint services unless your configure a NAT Gateway in your VPC.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/sagemaker/latest/dg/appendix-additional-considerations.html#appendix-notebook-and-internet-access">Notebook Instances Are Internet-Enabled by Default</a>. You can set the value of this parameter to <code>Disabled</code> only if you set a value for the <code>SubnetId</code> parameter.</p>
-- * KmsKeyId [KmsKeyId] <p> If you provide a AWS KMS key ID, Amazon SageMaker uses it to encrypt data at rest on the ML storage volume that is attached to your notebook instance. </p>
-- * SubnetId [SubnetId] <p>The ID of the subnet in a VPC to which you would like to have a connectivity from your ML compute instance. </p>
-- * InstanceType [InstanceType] <p>The type of ML compute instance to launch for the notebook instance.</p>
-- Required key: NotebookInstanceName
-- Required key: InstanceType
-- Required key: RoleArn
-- @return CreateNotebookInstanceInput structure as a key-value pair table
function M.CreateNotebookInstanceInput(args)
	assert(args, "You must provide an argument table when creating CreateNotebookInstanceInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["VolumeSizeInGB"] = args["VolumeSizeInGB"],
		["Tags"] = args["Tags"],
		["LifecycleConfigName"] = args["LifecycleConfigName"],
		["RoleArn"] = args["RoleArn"],
		["NotebookInstanceName"] = args["NotebookInstanceName"],
		["SecurityGroupIds"] = args["SecurityGroupIds"],
		["DirectInternetAccess"] = args["DirectInternetAccess"],
		["KmsKeyId"] = args["KmsKeyId"],
		["SubnetId"] = args["SubnetId"],
		["InstanceType"] = args["InstanceType"],
	}
	asserts.AssertCreateNotebookInstanceInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeTrainingJobResponse = { ["TrainingJobName"] = true, ["VpcConfig"] = true, ["TrainingJobArn"] = true, ["TuningJobArn"] = true, ["AlgorithmSpecification"] = true, ["HyperParameters"] = true, ["RoleArn"] = true, ["CreationTime"] = true, ["InputDataConfig"] = true, ["SecondaryStatusTransitions"] = true, ["TrainingJobStatus"] = true, ["OutputDataConfig"] = true, ["ModelArtifacts"] = true, ["ResourceConfig"] = true, ["TrainingEndTime"] = true, ["LastModifiedTime"] = true, ["SecondaryStatus"] = true, ["TrainingStartTime"] = true, ["StoppingCondition"] = true, ["FailureReason"] = true, nil }

function asserts.AssertDescribeTrainingJobResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTrainingJobResponse to be of type 'table'")
	assert(struct["TrainingJobName"], "Expected key TrainingJobName to exist in table")
	assert(struct["TrainingJobArn"], "Expected key TrainingJobArn to exist in table")
	assert(struct["ModelArtifacts"], "Expected key ModelArtifacts to exist in table")
	assert(struct["TrainingJobStatus"], "Expected key TrainingJobStatus to exist in table")
	assert(struct["SecondaryStatus"], "Expected key SecondaryStatus to exist in table")
	assert(struct["AlgorithmSpecification"], "Expected key AlgorithmSpecification to exist in table")
	assert(struct["ResourceConfig"], "Expected key ResourceConfig to exist in table")
	assert(struct["StoppingCondition"], "Expected key StoppingCondition to exist in table")
	assert(struct["CreationTime"], "Expected key CreationTime to exist in table")
	if struct["TrainingJobName"] then asserts.AssertTrainingJobName(struct["TrainingJobName"]) end
	if struct["VpcConfig"] then asserts.AssertVpcConfig(struct["VpcConfig"]) end
	if struct["TrainingJobArn"] then asserts.AssertTrainingJobArn(struct["TrainingJobArn"]) end
	if struct["TuningJobArn"] then asserts.AssertHyperParameterTuningJobArn(struct["TuningJobArn"]) end
	if struct["AlgorithmSpecification"] then asserts.AssertAlgorithmSpecification(struct["AlgorithmSpecification"]) end
	if struct["HyperParameters"] then asserts.AssertHyperParameters(struct["HyperParameters"]) end
	if struct["RoleArn"] then asserts.AssertRoleArn(struct["RoleArn"]) end
	if struct["CreationTime"] then asserts.AssertTimestamp(struct["CreationTime"]) end
	if struct["InputDataConfig"] then asserts.AssertInputDataConfig(struct["InputDataConfig"]) end
	if struct["SecondaryStatusTransitions"] then asserts.AssertSecondaryStatusTransitions(struct["SecondaryStatusTransitions"]) end
	if struct["TrainingJobStatus"] then asserts.AssertTrainingJobStatus(struct["TrainingJobStatus"]) end
	if struct["OutputDataConfig"] then asserts.AssertOutputDataConfig(struct["OutputDataConfig"]) end
	if struct["ModelArtifacts"] then asserts.AssertModelArtifacts(struct["ModelArtifacts"]) end
	if struct["ResourceConfig"] then asserts.AssertResourceConfig(struct["ResourceConfig"]) end
	if struct["TrainingEndTime"] then asserts.AssertTimestamp(struct["TrainingEndTime"]) end
	if struct["LastModifiedTime"] then asserts.AssertTimestamp(struct["LastModifiedTime"]) end
	if struct["SecondaryStatus"] then asserts.AssertSecondaryStatus(struct["SecondaryStatus"]) end
	if struct["TrainingStartTime"] then asserts.AssertTimestamp(struct["TrainingStartTime"]) end
	if struct["StoppingCondition"] then asserts.AssertStoppingCondition(struct["StoppingCondition"]) end
	if struct["FailureReason"] then asserts.AssertFailureReason(struct["FailureReason"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeTrainingJobResponse[k], "DescribeTrainingJobResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTrainingJobResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TrainingJobName [TrainingJobName] <p> Name of the model training job. </p>
-- * VpcConfig [VpcConfig] <p>A <a>VpcConfig</a> object that specifies the VPC that this training job has access to. For more information, see <a href="http://docs.aws.amazon.com/sagemaker/latest/dg/train-vpc.html">Protect Training Jobs by Using an Amazon Virtual Private Cloud</a>.</p>
-- * TrainingJobArn [TrainingJobArn] <p>The Amazon Resource Name (ARN) of the training job.</p>
-- * TuningJobArn [HyperParameterTuningJobArn] <p>The Amazon Resource Name (ARN) of the associated hyperparameter tuning job if the training job was launched by a hyperparameter tuning job.</p>
-- * AlgorithmSpecification [AlgorithmSpecification] <p>Information about the algorithm used for training, and algorithm metadata. </p>
-- * HyperParameters [HyperParameters] <p>Algorithm-specific parameters. </p>
-- * RoleArn [RoleArn] <p>The AWS Identity and Access Management (IAM) role configured for the training job. </p>
-- * CreationTime [Timestamp] <p>A timestamp that indicates when the training job was created.</p>
-- * InputDataConfig [InputDataConfig] <p>An array of <code>Channel</code> objects that describes each data input channel. </p>
-- * SecondaryStatusTransitions [SecondaryStatusTransitions] <p>A history of all of the secondary statuses that the training job has transitioned through.</p>
-- * TrainingJobStatus [TrainingJobStatus] <p>The status of the training job.</p> <p>Amazon SageMaker provides the following training job statuses:</p> <ul> <li> <p> <code>InProgress</code> - The training is in progress.</p> </li> <li> <p> <code>Completed</code> - The training job has completed.</p> </li> <li> <p> <code>Failed</code> - The training job has failed. To see the reason for the failure, see the <code>FailureReason</code> field in the response to a <code>DescribeTrainingJobResponse</code> call.</p> </li> <li> <p> <code>Stopping</code> - The training job is stopping.</p> </li> <li> <p> <code>Stopped</code> - The training job has stopped.</p> </li> </ul> <p>For more detailed information, see <code>SecondaryStatus</code>. </p>
-- * OutputDataConfig [OutputDataConfig] <p>The S3 path where model artifacts that you configured when creating the job are stored. Amazon SageMaker creates subfolders for model artifacts. </p>
-- * ModelArtifacts [ModelArtifacts] <p>Information about the Amazon S3 location that is configured for storing model artifacts. </p>
-- * ResourceConfig [ResourceConfig] <p>Resources, including ML compute instances and ML storage volumes, that are configured for model training. </p>
-- * TrainingEndTime [Timestamp] <p>Indicates the time when the training job ends on training instances. You are billed for the time interval between the value of <code>TrainingStartTime</code> and this time. For successful jobs and stopped jobs, this is the time after model artifacts are uploaded. For failed jobs, this is the time when Amazon SageMaker detects a job failure.</p>
-- * LastModifiedTime [Timestamp] <p>A timestamp that indicates when the status of the training job was last modified.</p>
-- * SecondaryStatus [SecondaryStatus] <p> Provides detailed information about the state of the training job. For detailed information on the secondary status of the training job, see <code>StatusMessage</code> under <a>SecondaryStatusTransition</a>.</p> <p>Amazon SageMaker provides primary statuses and secondary statuses that apply to each of them:</p> <dl> <dt>InProgress</dt> <dd> <ul> <li> <p> <code>Starting</code> - Starting the training job.</p> </li> <li> <p> <code>Downloading</code> - An optional stage for algorithms that support <code>File</code> training input mode. It indicates that data is being downloaded to the ML storage volumes.</p> </li> <li> <p> <code>Training</code> - Training is in progress.</p> </li> <li> <p> <code>Uploading</code> - Training is complete and the model artifacts are being uploaded to the S3 location.</p> </li> </ul> </dd> <dt>Completed</dt> <dd> <ul> <li> <p> <code>Completed</code> - The training job has completed.</p> </li> </ul> </dd> <dt>Failed</dt> <dd> <ul> <li> <p> <code>Failed</code> - The training job has failed. The reason for the failure is returned in the <code>FailureReason</code> field of <code>DescribeTrainingJobResponse</code>.</p> </li> </ul> </dd> <dt>Stopped</dt> <dd> <ul> <li> <p> <code>MaxRuntimeExceeded</code> - The job stopped because it exceeded the maximum allowed runtime.</p> </li> <li> <p> <code>Stopped</code> - The training job has stopped.</p> </li> </ul> </dd> <dt>Stopping</dt> <dd> <ul> <li> <p> <code>Stopping</code> - Stopping the training job.</p> </li> </ul> </dd> </dl> <important> <p>Valid values for <code>SecondaryStatus</code> are subject to change. </p> </important> <p>We no longer support the following secondary statuses:</p> <ul> <li> <p> <code>LaunchingMLInstances</code> </p> </li> <li> <p> <code>PreparingTrainingStack</code> </p> </li> <li> <p> <code>DownloadingTrainingImage</code> </p> </li> </ul>
-- * TrainingStartTime [Timestamp] <p>Indicates the time when the training job starts on training instances. You are billed for the time interval between this time and the value of <code>TrainingEndTime</code>. The start time in CloudWatch Logs might be later than this time. The difference is due to the time it takes to download the training data and to the size of the training container.</p>
-- * StoppingCondition [StoppingCondition] <p>The condition under which to stop the training job. </p>
-- * FailureReason [FailureReason] <p>If the training job failed, the reason it failed. </p>
-- Required key: TrainingJobName
-- Required key: TrainingJobArn
-- Required key: ModelArtifacts
-- Required key: TrainingJobStatus
-- Required key: SecondaryStatus
-- Required key: AlgorithmSpecification
-- Required key: ResourceConfig
-- Required key: StoppingCondition
-- Required key: CreationTime
-- @return DescribeTrainingJobResponse structure as a key-value pair table
function M.DescribeTrainingJobResponse(args)
	assert(args, "You must provide an argument table when creating DescribeTrainingJobResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TrainingJobName"] = args["TrainingJobName"],
		["VpcConfig"] = args["VpcConfig"],
		["TrainingJobArn"] = args["TrainingJobArn"],
		["TuningJobArn"] = args["TuningJobArn"],
		["AlgorithmSpecification"] = args["AlgorithmSpecification"],
		["HyperParameters"] = args["HyperParameters"],
		["RoleArn"] = args["RoleArn"],
		["CreationTime"] = args["CreationTime"],
		["InputDataConfig"] = args["InputDataConfig"],
		["SecondaryStatusTransitions"] = args["SecondaryStatusTransitions"],
		["TrainingJobStatus"] = args["TrainingJobStatus"],
		["OutputDataConfig"] = args["OutputDataConfig"],
		["ModelArtifacts"] = args["ModelArtifacts"],
		["ResourceConfig"] = args["ResourceConfig"],
		["TrainingEndTime"] = args["TrainingEndTime"],
		["LastModifiedTime"] = args["LastModifiedTime"],
		["SecondaryStatus"] = args["SecondaryStatus"],
		["TrainingStartTime"] = args["TrainingStartTime"],
		["StoppingCondition"] = args["StoppingCondition"],
		["FailureReason"] = args["FailureReason"],
	}
	asserts.AssertDescribeTrainingJobResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListNotebookInstanceLifecycleConfigsOutput = { ["NextToken"] = true, ["NotebookInstanceLifecycleConfigs"] = true, nil }

function asserts.AssertListNotebookInstanceLifecycleConfigsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListNotebookInstanceLifecycleConfigsOutput to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["NotebookInstanceLifecycleConfigs"] then asserts.AssertNotebookInstanceLifecycleConfigSummaryList(struct["NotebookInstanceLifecycleConfigs"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListNotebookInstanceLifecycleConfigsOutput[k], "ListNotebookInstanceLifecycleConfigsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListNotebookInstanceLifecycleConfigsOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>If the response is truncated, Amazon SageMaker returns this token. To get the next set of lifecycle configurations, use it in the next request. </p>
-- * NotebookInstanceLifecycleConfigs [NotebookInstanceLifecycleConfigSummaryList] <p>An array of <code>NotebookInstanceLifecycleConfiguration</code> objects, each listing a lifecycle configuration.</p>
-- @return ListNotebookInstanceLifecycleConfigsOutput structure as a key-value pair table
function M.ListNotebookInstanceLifecycleConfigsOutput(args)
	assert(args, "You must provide an argument table when creating ListNotebookInstanceLifecycleConfigsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["NotebookInstanceLifecycleConfigs"] = args["NotebookInstanceLifecycleConfigs"],
	}
	asserts.AssertListNotebookInstanceLifecycleConfigsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateModelInput = { ["Tags"] = true, ["ModelName"] = true, ["VpcConfig"] = true, ["ExecutionRoleArn"] = true, ["PrimaryContainer"] = true, nil }

function asserts.AssertCreateModelInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateModelInput to be of type 'table'")
	assert(struct["ModelName"], "Expected key ModelName to exist in table")
	assert(struct["PrimaryContainer"], "Expected key PrimaryContainer to exist in table")
	assert(struct["ExecutionRoleArn"], "Expected key ExecutionRoleArn to exist in table")
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	if struct["ModelName"] then asserts.AssertModelName(struct["ModelName"]) end
	if struct["VpcConfig"] then asserts.AssertVpcConfig(struct["VpcConfig"]) end
	if struct["ExecutionRoleArn"] then asserts.AssertRoleArn(struct["ExecutionRoleArn"]) end
	if struct["PrimaryContainer"] then asserts.AssertContainerDefinition(struct["PrimaryContainer"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateModelInput[k], "CreateModelInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateModelInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Tags [TagList] <p>An array of key-value pairs. For more information, see <a href="http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html#allocation-what">Using Cost Allocation Tags</a> in the <i>AWS Billing and Cost Management User Guide</i>. </p>
-- * ModelName [ModelName] <p>The name of the new model.</p>
-- * VpcConfig [VpcConfig] <p>A <a>VpcConfig</a> object that specifies the VPC that you want your model to connect to. Control access to and from your model container by configuring the VPC. <code>VpcConfig</code> is used in hosting services and in batch transform. For more information, see <a href="http://docs.aws.amazon.com/sagemaker/latest/dg/host-vpc.html">Protect Endpoints by Using an Amazon Virtual Private Cloud</a> and <a href="http://docs.aws.amazon.com/sagemaker/latest/dg/batch-vpc.html">Protect Data in Batch Transform Jobs by Using an Amazon Virtual Private Cloud</a>.</p>
-- * ExecutionRoleArn [RoleArn] <p>The Amazon Resource Name (ARN) of the IAM role that Amazon SageMaker can assume to access model artifacts and docker image for deployment on ML compute instances or for batch transform jobs. Deploying on ML compute instances is part of model hosting. For more information, see <a href="http://docs.aws.amazon.com/sagemaker/latest/dg/sagemaker-roles.html">Amazon SageMaker Roles</a>. </p> <note> <p>To be able to pass this role to Amazon SageMaker, the caller of this API must have the <code>iam:PassRole</code> permission.</p> </note>
-- * PrimaryContainer [ContainerDefinition] <p>The location of the primary docker image containing inference code, associated artifacts, and custom environment map that the inference code uses when the model is deployed for predictions. </p>
-- Required key: ModelName
-- Required key: PrimaryContainer
-- Required key: ExecutionRoleArn
-- @return CreateModelInput structure as a key-value pair table
function M.CreateModelInput(args)
	assert(args, "You must provide an argument table when creating CreateModelInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Tags"] = args["Tags"],
		["ModelName"] = args["ModelName"],
		["VpcConfig"] = args["VpcConfig"],
		["ExecutionRoleArn"] = args["ExecutionRoleArn"],
		["PrimaryContainer"] = args["PrimaryContainer"],
	}
	asserts.AssertCreateModelInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateNotebookInstanceLifecycleConfigInput = { ["OnCreate"] = true, ["OnStart"] = true, ["NotebookInstanceLifecycleConfigName"] = true, nil }

function asserts.AssertCreateNotebookInstanceLifecycleConfigInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateNotebookInstanceLifecycleConfigInput to be of type 'table'")
	assert(struct["NotebookInstanceLifecycleConfigName"], "Expected key NotebookInstanceLifecycleConfigName to exist in table")
	if struct["OnCreate"] then asserts.AssertNotebookInstanceLifecycleConfigList(struct["OnCreate"]) end
	if struct["OnStart"] then asserts.AssertNotebookInstanceLifecycleConfigList(struct["OnStart"]) end
	if struct["NotebookInstanceLifecycleConfigName"] then asserts.AssertNotebookInstanceLifecycleConfigName(struct["NotebookInstanceLifecycleConfigName"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateNotebookInstanceLifecycleConfigInput[k], "CreateNotebookInstanceLifecycleConfigInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateNotebookInstanceLifecycleConfigInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OnCreate [NotebookInstanceLifecycleConfigList] <p>A shell script that runs only once, when you create a notebook instance. The shell script must be a base64-encoded string.</p>
-- * OnStart [NotebookInstanceLifecycleConfigList] <p>A shell script that runs every time you start a notebook instance, including when you create the notebook instance. The shell script must be a base64-encoded string.</p>
-- * NotebookInstanceLifecycleConfigName [NotebookInstanceLifecycleConfigName] <p>The name of the lifecycle configuration.</p>
-- Required key: NotebookInstanceLifecycleConfigName
-- @return CreateNotebookInstanceLifecycleConfigInput structure as a key-value pair table
function M.CreateNotebookInstanceLifecycleConfigInput(args)
	assert(args, "You must provide an argument table when creating CreateNotebookInstanceLifecycleConfigInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["OnCreate"] = args["OnCreate"],
		["OnStart"] = args["OnStart"],
		["NotebookInstanceLifecycleConfigName"] = args["NotebookInstanceLifecycleConfigName"],
	}
	asserts.AssertCreateNotebookInstanceLifecycleConfigInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListHyperParameterTuningJobsRequest = { ["LastModifiedTimeBefore"] = true, ["SortOrder"] = true, ["CreationTimeBefore"] = true, ["MaxResults"] = true, ["NameContains"] = true, ["SortBy"] = true, ["StatusEquals"] = true, ["LastModifiedTimeAfter"] = true, ["NextToken"] = true, ["CreationTimeAfter"] = true, nil }

function asserts.AssertListHyperParameterTuningJobsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListHyperParameterTuningJobsRequest to be of type 'table'")
	if struct["LastModifiedTimeBefore"] then asserts.AssertTimestamp(struct["LastModifiedTimeBefore"]) end
	if struct["SortOrder"] then asserts.AssertSortOrder(struct["SortOrder"]) end
	if struct["CreationTimeBefore"] then asserts.AssertTimestamp(struct["CreationTimeBefore"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	if struct["NameContains"] then asserts.AssertNameContains(struct["NameContains"]) end
	if struct["SortBy"] then asserts.AssertHyperParameterTuningJobSortByOptions(struct["SortBy"]) end
	if struct["StatusEquals"] then asserts.AssertHyperParameterTuningJobStatus(struct["StatusEquals"]) end
	if struct["LastModifiedTimeAfter"] then asserts.AssertTimestamp(struct["LastModifiedTimeAfter"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["CreationTimeAfter"] then asserts.AssertTimestamp(struct["CreationTimeAfter"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListHyperParameterTuningJobsRequest[k], "ListHyperParameterTuningJobsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListHyperParameterTuningJobsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LastModifiedTimeBefore [Timestamp] <p>A filter that returns only tuning jobs that were modified before the specified time.</p>
-- * SortOrder [SortOrder] <p>The sort order for results. The default is <code>Ascending</code>.</p>
-- * CreationTimeBefore [Timestamp] <p>A filter that returns only tuning jobs that were created before the specified time.</p>
-- * MaxResults [MaxResults] <p>The maximum number of tuning jobs to return. The default value is 10.</p>
-- * NameContains [NameContains] <p>A string in the tuning job name. This filter returns only tuning jobs whose name contains the specified string.</p>
-- * SortBy [HyperParameterTuningJobSortByOptions] <p>The field to sort results by. The default is <code>Name</code>.</p>
-- * StatusEquals [HyperParameterTuningJobStatus] <p>A filter that returns only tuning jobs with the specified status.</p>
-- * LastModifiedTimeAfter [Timestamp] <p>A filter that returns only tuning jobs that were modified after the specified time.</p>
-- * NextToken [NextToken] <p>If the result of the previous <code>ListHyperParameterTuningJobs</code> request was truncated, the response includes a <code>NextToken</code>. To retrieve the next set of tuning jobs, use the token in the next request.</p>
-- * CreationTimeAfter [Timestamp] <p>A filter that returns only tuning jobs that were created after the specified time.</p>
-- @return ListHyperParameterTuningJobsRequest structure as a key-value pair table
function M.ListHyperParameterTuningJobsRequest(args)
	assert(args, "You must provide an argument table when creating ListHyperParameterTuningJobsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LastModifiedTimeBefore"] = args["LastModifiedTimeBefore"],
		["SortOrder"] = args["SortOrder"],
		["CreationTimeBefore"] = args["CreationTimeBefore"],
		["MaxResults"] = args["MaxResults"],
		["NameContains"] = args["NameContains"],
		["SortBy"] = args["SortBy"],
		["StatusEquals"] = args["StatusEquals"],
		["LastModifiedTimeAfter"] = args["LastModifiedTimeAfter"],
		["NextToken"] = args["NextToken"],
		["CreationTimeAfter"] = args["CreationTimeAfter"],
	}
	asserts.AssertListHyperParameterTuningJobsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateHyperParameterTuningJobResponse = { ["HyperParameterTuningJobArn"] = true, nil }

function asserts.AssertCreateHyperParameterTuningJobResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateHyperParameterTuningJobResponse to be of type 'table'")
	assert(struct["HyperParameterTuningJobArn"], "Expected key HyperParameterTuningJobArn to exist in table")
	if struct["HyperParameterTuningJobArn"] then asserts.AssertHyperParameterTuningJobArn(struct["HyperParameterTuningJobArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateHyperParameterTuningJobResponse[k], "CreateHyperParameterTuningJobResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateHyperParameterTuningJobResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * HyperParameterTuningJobArn [HyperParameterTuningJobArn] <p>The Amazon Resource Name (ARN) of the tuning job.</p>
-- Required key: HyperParameterTuningJobArn
-- @return CreateHyperParameterTuningJobResponse structure as a key-value pair table
function M.CreateHyperParameterTuningJobResponse(args)
	assert(args, "You must provide an argument table when creating CreateHyperParameterTuningJobResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["HyperParameterTuningJobArn"] = args["HyperParameterTuningJobArn"],
	}
	asserts.AssertCreateHyperParameterTuningJobResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeNotebookInstanceLifecycleConfigOutput = { ["NotebookInstanceLifecycleConfigArn"] = true, ["CreationTime"] = true, ["OnStart"] = true, ["LastModifiedTime"] = true, ["OnCreate"] = true, ["NotebookInstanceLifecycleConfigName"] = true, nil }

function asserts.AssertDescribeNotebookInstanceLifecycleConfigOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeNotebookInstanceLifecycleConfigOutput to be of type 'table'")
	if struct["NotebookInstanceLifecycleConfigArn"] then asserts.AssertNotebookInstanceLifecycleConfigArn(struct["NotebookInstanceLifecycleConfigArn"]) end
	if struct["CreationTime"] then asserts.AssertCreationTime(struct["CreationTime"]) end
	if struct["OnStart"] then asserts.AssertNotebookInstanceLifecycleConfigList(struct["OnStart"]) end
	if struct["LastModifiedTime"] then asserts.AssertLastModifiedTime(struct["LastModifiedTime"]) end
	if struct["OnCreate"] then asserts.AssertNotebookInstanceLifecycleConfigList(struct["OnCreate"]) end
	if struct["NotebookInstanceLifecycleConfigName"] then asserts.AssertNotebookInstanceLifecycleConfigName(struct["NotebookInstanceLifecycleConfigName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeNotebookInstanceLifecycleConfigOutput[k], "DescribeNotebookInstanceLifecycleConfigOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeNotebookInstanceLifecycleConfigOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NotebookInstanceLifecycleConfigArn [NotebookInstanceLifecycleConfigArn] <p>The Amazon Resource Name (ARN) of the lifecycle configuration.</p>
-- * CreationTime [CreationTime] <p>A timestamp that tells when the lifecycle configuration was created.</p>
-- * OnStart [NotebookInstanceLifecycleConfigList] <p>The shell script that runs every time you start a notebook instance, including when you create the notebook instance.</p>
-- * LastModifiedTime [LastModifiedTime] <p>A timestamp that tells when the lifecycle configuration was last modified.</p>
-- * OnCreate [NotebookInstanceLifecycleConfigList] <p>The shell script that runs only once, when you create a notebook instance.</p>
-- * NotebookInstanceLifecycleConfigName [NotebookInstanceLifecycleConfigName] <p>The name of the lifecycle configuration.</p>
-- @return DescribeNotebookInstanceLifecycleConfigOutput structure as a key-value pair table
function M.DescribeNotebookInstanceLifecycleConfigOutput(args)
	assert(args, "You must provide an argument table when creating DescribeNotebookInstanceLifecycleConfigOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NotebookInstanceLifecycleConfigArn"] = args["NotebookInstanceLifecycleConfigArn"],
		["CreationTime"] = args["CreationTime"],
		["OnStart"] = args["OnStart"],
		["LastModifiedTime"] = args["LastModifiedTime"],
		["OnCreate"] = args["OnCreate"],
		["NotebookInstanceLifecycleConfigName"] = args["NotebookInstanceLifecycleConfigName"],
	}
	asserts.AssertDescribeNotebookInstanceLifecycleConfigOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AddTagsOutput = { ["Tags"] = true, nil }

function asserts.AssertAddTagsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddTagsOutput to be of type 'table'")
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.AddTagsOutput[k], "AddTagsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddTagsOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Tags [TagList] <p>A list of tags associated with the Amazon SageMaker resource.</p>
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
		["Tags"] = args["Tags"],
	}
	asserts.AssertAddTagsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListNotebookInstancesOutput = { ["NextToken"] = true, ["NotebookInstances"] = true, nil }

function asserts.AssertListNotebookInstancesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListNotebookInstancesOutput to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["NotebookInstances"] then asserts.AssertNotebookInstanceSummaryList(struct["NotebookInstances"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListNotebookInstancesOutput[k], "ListNotebookInstancesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListNotebookInstancesOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>If the response to the previous <code>ListNotebookInstances</code> request was truncated, Amazon SageMaker returns this token. To retrieve the next set of notebook instances, use the token in the next request.</p>
-- * NotebookInstances [NotebookInstanceSummaryList] <p>An array of <code>NotebookInstanceSummary</code> objects, one for each notebook instance.</p>
-- @return ListNotebookInstancesOutput structure as a key-value pair table
function M.ListNotebookInstancesOutput(args)
	assert(args, "You must provide an argument table when creating ListNotebookInstancesOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["NotebookInstances"] = args["NotebookInstances"],
	}
	asserts.AssertListNotebookInstancesOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EndpointConfigSummary = { ["EndpointConfigName"] = true, ["EndpointConfigArn"] = true, ["CreationTime"] = true, nil }

function asserts.AssertEndpointConfigSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EndpointConfigSummary to be of type 'table'")
	assert(struct["EndpointConfigName"], "Expected key EndpointConfigName to exist in table")
	assert(struct["EndpointConfigArn"], "Expected key EndpointConfigArn to exist in table")
	assert(struct["CreationTime"], "Expected key CreationTime to exist in table")
	if struct["EndpointConfigName"] then asserts.AssertEndpointConfigName(struct["EndpointConfigName"]) end
	if struct["EndpointConfigArn"] then asserts.AssertEndpointConfigArn(struct["EndpointConfigArn"]) end
	if struct["CreationTime"] then asserts.AssertTimestamp(struct["CreationTime"]) end
	for k,_ in pairs(struct) do
		assert(keys.EndpointConfigSummary[k], "EndpointConfigSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EndpointConfigSummary
-- <p>Provides summary information for an endpoint configuration.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EndpointConfigName [EndpointConfigName] <p>The name of the endpoint configuration.</p>
-- * EndpointConfigArn [EndpointConfigArn] <p>The Amazon Resource Name (ARN) of the endpoint configuration.</p>
-- * CreationTime [Timestamp] <p>A timestamp that shows when the endpoint configuration was created.</p>
-- Required key: EndpointConfigName
-- Required key: EndpointConfigArn
-- Required key: CreationTime
-- @return EndpointConfigSummary structure as a key-value pair table
function M.EndpointConfigSummary(args)
	assert(args, "You must provide an argument table when creating EndpointConfigSummary")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EndpointConfigName"] = args["EndpointConfigName"],
		["EndpointConfigArn"] = args["EndpointConfigArn"],
		["CreationTime"] = args["CreationTime"],
	}
	asserts.AssertEndpointConfigSummary(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateTransformJobRequest = { ["TransformResources"] = true, ["ModelName"] = true, ["TransformJobName"] = true, ["Tags"] = true, ["Environment"] = true, ["MaxConcurrentTransforms"] = true, ["BatchStrategy"] = true, ["TransformOutput"] = true, ["TransformInput"] = true, ["MaxPayloadInMB"] = true, nil }

function asserts.AssertCreateTransformJobRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateTransformJobRequest to be of type 'table'")
	assert(struct["TransformJobName"], "Expected key TransformJobName to exist in table")
	assert(struct["ModelName"], "Expected key ModelName to exist in table")
	assert(struct["TransformInput"], "Expected key TransformInput to exist in table")
	assert(struct["TransformOutput"], "Expected key TransformOutput to exist in table")
	assert(struct["TransformResources"], "Expected key TransformResources to exist in table")
	if struct["TransformResources"] then asserts.AssertTransformResources(struct["TransformResources"]) end
	if struct["ModelName"] then asserts.AssertModelName(struct["ModelName"]) end
	if struct["TransformJobName"] then asserts.AssertTransformJobName(struct["TransformJobName"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	if struct["Environment"] then asserts.AssertTransformEnvironmentMap(struct["Environment"]) end
	if struct["MaxConcurrentTransforms"] then asserts.AssertMaxConcurrentTransforms(struct["MaxConcurrentTransforms"]) end
	if struct["BatchStrategy"] then asserts.AssertBatchStrategy(struct["BatchStrategy"]) end
	if struct["TransformOutput"] then asserts.AssertTransformOutput(struct["TransformOutput"]) end
	if struct["TransformInput"] then asserts.AssertTransformInput(struct["TransformInput"]) end
	if struct["MaxPayloadInMB"] then asserts.AssertMaxPayloadInMB(struct["MaxPayloadInMB"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateTransformJobRequest[k], "CreateTransformJobRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateTransformJobRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TransformResources [TransformResources] <p>Describes the resources, including ML instance types and ML instance count, to use for the transform job.</p>
-- * ModelName [ModelName] <p>The name of the model that you want to use for the transform job. <code>ModelName</code> must be the name of an existing Amazon SageMaker model within an AWS Region in an AWS account.</p>
-- * TransformJobName [TransformJobName] <p>The name of the transform job. The name must be unique within an AWS Region in an AWS account. </p>
-- * Tags [TagList] <p>An array of key-value pairs. Adding tags is optional. For more information, see <a href="http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html#allocation-what">Using Cost Allocation Tags</a> in the <i>AWS Billing and Cost Management User Guide</i>.</p>
-- * Environment [TransformEnvironmentMap] <p>The environment variables to set in the Docker container. We support up to 16 key and values entries in the map.</p>
-- * MaxConcurrentTransforms [MaxConcurrentTransforms] <p>The maximum number of parallel requests that can be sent to each instance in a transform job. This is good for algorithms that implement multiple workers on larger instances . The default value is <code>1</code>. To allow Amazon SageMaker to determine the appropriate number for <code>MaxConcurrentTransforms</code>, set the value to <code>0</code>.</p>
-- * BatchStrategy [BatchStrategy] <p>Determines the number of records included in a single mini-batch. <code>SingleRecord</code> means only one record is used per mini-batch. <code>MultiRecord</code> means a mini-batch is set to contain as many records that can fit within the <code>MaxPayloadInMB</code> limit.</p> <p>Batch transform will automatically split your input data into whatever payload size is specified if you set <code>SplitType</code> to <code>Line</code> and <code>BatchStrategy</code> to <code>MultiRecord</code>. There's no need to split the dataset into smaller files or to use larger payload sizes unless the records in your dataset are very large.</p>
-- * TransformOutput [TransformOutput] <p>Describes the results of the transform job.</p>
-- * TransformInput [TransformInput] <p>Describes the input source and the way the transform job consumes it.</p>
-- * MaxPayloadInMB [MaxPayloadInMB] <p>The maximum payload size allowed, in MB. A payload is the data portion of a record (without metadata). The value in <code>MaxPayloadInMB</code> must be greater or equal to the size of a single record. You can approximate the size of a record by dividing the size of your dataset by the number of records. Then multiply this value by the number of records you want in a mini-batch. It is recommended to enter a value slightly larger than this to ensure the records fit within the maximum payload size. The default value is <code>6</code> MB. For an unlimited payload size, set the value to <code>0</code>.</p>
-- Required key: TransformJobName
-- Required key: ModelName
-- Required key: TransformInput
-- Required key: TransformOutput
-- Required key: TransformResources
-- @return CreateTransformJobRequest structure as a key-value pair table
function M.CreateTransformJobRequest(args)
	assert(args, "You must provide an argument table when creating CreateTransformJobRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TransformResources"] = args["TransformResources"],
		["ModelName"] = args["ModelName"],
		["TransformJobName"] = args["TransformJobName"],
		["Tags"] = args["Tags"],
		["Environment"] = args["Environment"],
		["MaxConcurrentTransforms"] = args["MaxConcurrentTransforms"],
		["BatchStrategy"] = args["BatchStrategy"],
		["TransformOutput"] = args["TransformOutput"],
		["TransformInput"] = args["TransformInput"],
		["MaxPayloadInMB"] = args["MaxPayloadInMB"],
	}
	asserts.AssertCreateTransformJobRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.MetricDefinition = { ["Regex"] = true, ["Name"] = true, nil }

function asserts.AssertMetricDefinition(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MetricDefinition to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["Regex"], "Expected key Regex to exist in table")
	if struct["Regex"] then asserts.AssertMetricRegex(struct["Regex"]) end
	if struct["Name"] then asserts.AssertMetricName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.MetricDefinition[k], "MetricDefinition contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MetricDefinition
-- <p>Specifies a metric that the training algorithm writes to <code>stderr</code> or <code>stdout</code>. Amazon SageMakerhyperparameter tuning captures all defined metrics. You specify one metric that a hyperparameter tuning job uses as its objective metric to choose the best training job.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Regex [MetricRegex] <p>A regular expression that searches the output of a training job and gets the value of the metric. For more information about using regular expressions to define metrics, see <a href="http://docs.aws.amazon.com/sagemaker/latest/dg/automatic-model-tuning-define-metrics.html">Defining Objective Metrics</a>.</p>
-- * Name [MetricName] <p>The name of the metric.</p>
-- Required key: Name
-- Required key: Regex
-- @return MetricDefinition structure as a key-value pair table
function M.MetricDefinition(args)
	assert(args, "You must provide an argument table when creating MetricDefinition")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Regex"] = args["Regex"],
		["Name"] = args["Name"],
	}
	asserts.AssertMetricDefinition(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.VpcConfig = { ["Subnets"] = true, ["SecurityGroupIds"] = true, nil }

function asserts.AssertVpcConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VpcConfig to be of type 'table'")
	assert(struct["SecurityGroupIds"], "Expected key SecurityGroupIds to exist in table")
	assert(struct["Subnets"], "Expected key Subnets to exist in table")
	if struct["Subnets"] then asserts.AssertSubnets(struct["Subnets"]) end
	if struct["SecurityGroupIds"] then asserts.AssertVpcSecurityGroupIds(struct["SecurityGroupIds"]) end
	for k,_ in pairs(struct) do
		assert(keys.VpcConfig[k], "VpcConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VpcConfig
-- <p>Specifies a VPC that your training jobs and hosted models have access to. Control access to and from your training and model containers by configuring the VPC. For more information, see <a href="http://docs.aws.amazon.com/sagemaker/latest/dg/host-vpc.html">Protect Endpoints by Using an Amazon Virtual Private Cloud</a> and <a href="http://docs.aws.amazon.com/sagemaker/latest/dg/train-vpc.html">Protect Training Jobs by Using an Amazon Virtual Private Cloud</a>. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Subnets [Subnets] <p>The ID of the subnets in the VPC to which you want to connect your training job or model. </p>
-- * SecurityGroupIds [VpcSecurityGroupIds] <p>The VPC security group IDs, in the form sg-xxxxxxxx. Specify the security groups for the VPC that is specified in the <code>Subnets</code> field.</p>
-- Required key: SecurityGroupIds
-- Required key: Subnets
-- @return VpcConfig structure as a key-value pair table
function M.VpcConfig(args)
	assert(args, "You must provide an argument table when creating VpcConfig")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Subnets"] = args["Subnets"],
		["SecurityGroupIds"] = args["SecurityGroupIds"],
	}
	asserts.AssertVpcConfig(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EndpointSummary = { ["EndpointName"] = true, ["EndpointArn"] = true, ["CreationTime"] = true, ["LastModifiedTime"] = true, ["EndpointStatus"] = true, nil }

function asserts.AssertEndpointSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EndpointSummary to be of type 'table'")
	assert(struct["EndpointName"], "Expected key EndpointName to exist in table")
	assert(struct["EndpointArn"], "Expected key EndpointArn to exist in table")
	assert(struct["CreationTime"], "Expected key CreationTime to exist in table")
	assert(struct["LastModifiedTime"], "Expected key LastModifiedTime to exist in table")
	assert(struct["EndpointStatus"], "Expected key EndpointStatus to exist in table")
	if struct["EndpointName"] then asserts.AssertEndpointName(struct["EndpointName"]) end
	if struct["EndpointArn"] then asserts.AssertEndpointArn(struct["EndpointArn"]) end
	if struct["CreationTime"] then asserts.AssertTimestamp(struct["CreationTime"]) end
	if struct["LastModifiedTime"] then asserts.AssertTimestamp(struct["LastModifiedTime"]) end
	if struct["EndpointStatus"] then asserts.AssertEndpointStatus(struct["EndpointStatus"]) end
	for k,_ in pairs(struct) do
		assert(keys.EndpointSummary[k], "EndpointSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EndpointSummary
-- <p>Provides summary information for an endpoint.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EndpointName [EndpointName] <p>The name of the endpoint.</p>
-- * EndpointArn [EndpointArn] <p>The Amazon Resource Name (ARN) of the endpoint.</p>
-- * CreationTime [Timestamp] <p>A timestamp that shows when the endpoint was created.</p>
-- * LastModifiedTime [Timestamp] <p>A timestamp that shows when the endpoint was last modified.</p>
-- * EndpointStatus [EndpointStatus] <p>The status of the endpoint.</p> <ul> <li> <p> <code>OutOfService</code>: Endpoint is not available to take incoming requests.</p> </li> <li> <p> <code>Creating</code>: <a>CreateEndpoint</a> is executing.</p> </li> <li> <p> <code>Updating</code>: <a>UpdateEndpoint</a> or <a>UpdateEndpointWeightsAndCapacities</a> is executing.</p> </li> <li> <p> <code>SystemUpdating</code>: Endpoint is undergoing maintenance and cannot be updated or deleted or re-scaled until it has completed. This mainenance operation does not change any customer-specified values such as VPC config, KMS encryption, model, instance type, or instance count.</p> </li> <li> <p> <code>RollingBack</code>: Endpoint fails to scale up or down or change its variant weight and is in the process of rolling back to its previous configuration. Once the rollback completes, endpoint returns to an <code>InService</code> status. This transitional status only applies to an endpoint that has autoscaling enabled and is undergoing variant weight or capacity changes as part of an <a>UpdateEndpointWeightsAndCapacities</a> call or when the <a>UpdateEndpointWeightsAndCapacities</a> operation is called explicitly.</p> </li> <li> <p> <code>InService</code>: Endpoint is available to process incoming requests.</p> </li> <li> <p> <code>Deleting</code>: <a>DeleteEndpoint</a> is executing.</p> </li> <li> <p> <code>Failed</code>: Endpoint could not be created, updated, or re-scaled. Use <a>DescribeEndpointOutput$FailureReason</a> for information about the failure. <a>DeleteEndpoint</a> is the only operation that can be performed on a failed endpoint.</p> </li> </ul> <p>To get a list of endpoints with a specified status, use the <a>ListEndpointsInput$StatusEquals</a> filter.</p>
-- Required key: EndpointName
-- Required key: EndpointArn
-- Required key: CreationTime
-- Required key: LastModifiedTime
-- Required key: EndpointStatus
-- @return EndpointSummary structure as a key-value pair table
function M.EndpointSummary(args)
	assert(args, "You must provide an argument table when creating EndpointSummary")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EndpointName"] = args["EndpointName"],
		["EndpointArn"] = args["EndpointArn"],
		["CreationTime"] = args["CreationTime"],
		["LastModifiedTime"] = args["LastModifiedTime"],
		["EndpointStatus"] = args["EndpointStatus"],
	}
	asserts.AssertEndpointSummary(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ObjectiveStatusCounters = { ["Failed"] = true, ["Pending"] = true, ["Succeeded"] = true, nil }

function asserts.AssertObjectiveStatusCounters(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ObjectiveStatusCounters to be of type 'table'")
	if struct["Failed"] then asserts.AssertObjectiveStatusCounter(struct["Failed"]) end
	if struct["Pending"] then asserts.AssertObjectiveStatusCounter(struct["Pending"]) end
	if struct["Succeeded"] then asserts.AssertObjectiveStatusCounter(struct["Succeeded"]) end
	for k,_ in pairs(struct) do
		assert(keys.ObjectiveStatusCounters[k], "ObjectiveStatusCounters contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ObjectiveStatusCounters
-- <p>Specifies the number of training jobs that this hyperparameter tuning job launched, categorized by the status of their objective metric. The objective metric status shows whether the final objective metric for the training job has been evaluated by the tuning job and used in the hyperparameter tuning process.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Failed [ObjectiveStatusCounter] <p>The number of training jobs whose final objective metric was not evaluated and used in the hyperparameter tuning process. This typically occurs when the training job failed or did not emit an objective metric.</p>
-- * Pending [ObjectiveStatusCounter] <p>The number of training jobs that are in progress and pending evaluation of their final objective metric.</p>
-- * Succeeded [ObjectiveStatusCounter] <p>The number of training jobs whose final objective metric was evaluated by the hyperparameter tuning job and used in the hyperparameter tuning process.</p>
-- @return ObjectiveStatusCounters structure as a key-value pair table
function M.ObjectiveStatusCounters(args)
	assert(args, "You must provide an argument table when creating ObjectiveStatusCounters")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Failed"] = args["Failed"],
		["Pending"] = args["Pending"],
		["Succeeded"] = args["Succeeded"],
	}
	asserts.AssertObjectiveStatusCounters(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreatePresignedNotebookInstanceUrlInput = { ["NotebookInstanceName"] = true, ["SessionExpirationDurationInSeconds"] = true, nil }

function asserts.AssertCreatePresignedNotebookInstanceUrlInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreatePresignedNotebookInstanceUrlInput to be of type 'table'")
	assert(struct["NotebookInstanceName"], "Expected key NotebookInstanceName to exist in table")
	if struct["NotebookInstanceName"] then asserts.AssertNotebookInstanceName(struct["NotebookInstanceName"]) end
	if struct["SessionExpirationDurationInSeconds"] then asserts.AssertSessionExpirationDurationInSeconds(struct["SessionExpirationDurationInSeconds"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreatePresignedNotebookInstanceUrlInput[k], "CreatePresignedNotebookInstanceUrlInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreatePresignedNotebookInstanceUrlInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NotebookInstanceName [NotebookInstanceName] <p>The name of the notebook instance.</p>
-- * SessionExpirationDurationInSeconds [SessionExpirationDurationInSeconds] <p>The duration of the session, in seconds. The default is 12 hours.</p>
-- Required key: NotebookInstanceName
-- @return CreatePresignedNotebookInstanceUrlInput structure as a key-value pair table
function M.CreatePresignedNotebookInstanceUrlInput(args)
	assert(args, "You must provide an argument table when creating CreatePresignedNotebookInstanceUrlInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NotebookInstanceName"] = args["NotebookInstanceName"],
		["SessionExpirationDurationInSeconds"] = args["SessionExpirationDurationInSeconds"],
	}
	asserts.AssertCreatePresignedNotebookInstanceUrlInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.NotebookInstanceLifecycleHook = { ["Content"] = true, nil }

function asserts.AssertNotebookInstanceLifecycleHook(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NotebookInstanceLifecycleHook to be of type 'table'")
	if struct["Content"] then asserts.AssertNotebookInstanceLifecycleConfigContent(struct["Content"]) end
	for k,_ in pairs(struct) do
		assert(keys.NotebookInstanceLifecycleHook[k], "NotebookInstanceLifecycleHook contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NotebookInstanceLifecycleHook
-- <p>Contains the notebook instance lifecycle configuration script.</p> <p>Each lifecycle configuration script has a limit of 16384 characters.</p> <p>The value of the <code>$PATH</code> environment variable that is available to both scripts is <code>/sbin:bin:/usr/sbin:/usr/bin</code>.</p> <p>View CloudWatch Logs for notebook instance lifecycle configurations in log group <code>/aws/sagemaker/NotebookInstances</code> in log stream <code>[notebook-instance-name]/[LifecycleConfigHook]</code>.</p> <p>Lifecycle configuration scripts cannot run for longer than 5 minutes. If a script runs for longer than 5 minutes, it fails and the notebook instance is not created or started.</p> <p>For information about notebook instance lifestyle configurations, see <a href="http://docs.aws.amazon.com/sagemaker/latest/dg/notebook-lifecycle-config.html">Step 2.1: (Optional) Customize a Notebook Instance</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Content [NotebookInstanceLifecycleConfigContent] <p>A base64-encoded string that contains a shell script for a notebook instance lifecycle configuration.</p>
-- @return NotebookInstanceLifecycleHook structure as a key-value pair table
function M.NotebookInstanceLifecycleHook(args)
	assert(args, "You must provide an argument table when creating NotebookInstanceLifecycleHook")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Content"] = args["Content"],
	}
	asserts.AssertNotebookInstanceLifecycleHook(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SecondaryStatusTransition = { ["Status"] = true, ["EndTime"] = true, ["StatusMessage"] = true, ["StartTime"] = true, nil }

function asserts.AssertSecondaryStatusTransition(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SecondaryStatusTransition to be of type 'table'")
	assert(struct["Status"], "Expected key Status to exist in table")
	assert(struct["StartTime"], "Expected key StartTime to exist in table")
	if struct["Status"] then asserts.AssertSecondaryStatus(struct["Status"]) end
	if struct["EndTime"] then asserts.AssertTimestamp(struct["EndTime"]) end
	if struct["StatusMessage"] then asserts.AssertStatusMessage(struct["StatusMessage"]) end
	if struct["StartTime"] then asserts.AssertTimestamp(struct["StartTime"]) end
	for k,_ in pairs(struct) do
		assert(keys.SecondaryStatusTransition[k], "SecondaryStatusTransition contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SecondaryStatusTransition
-- <p>An array element of <a>DescribeTrainingJobResponse$SecondaryStatusTransitions</a>. It provides additional details about a status that the training job has transitioned through. A training job can be in one of several states, for example, starting, downloading, training, or uploading. Within each state, there are a number of intermediate states. For example, within the starting state, Amazon SageMaker could be starting the training job or launching the ML instances. These transitional states are referred to as the job's secondary status. </p> <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [SecondaryStatus] <p>Contains a secondary status information from a training job.</p> <p>Status might be one of the following secondary statuses:</p> <dl> <dt>InProgress</dt> <dd> <ul> <li> <p> <code>Starting</code> - Starting the training job.</p> </li> <li> <p> <code>Downloading</code> - An optional stage for algorithms that support <code>File</code> training input mode. It indicates that data is being downloaded to the ML storage volumes.</p> </li> <li> <p> <code>Training</code> - Training is in progress.</p> </li> <li> <p> <code>Uploading</code> - Training is complete and the model artifacts are being uploaded to the S3 location.</p> </li> </ul> </dd> <dt>Completed</dt> <dd> <ul> <li> <p> <code>Completed</code> - The training job has completed.</p> </li> </ul> </dd> <dt>Failed</dt> <dd> <ul> <li> <p> <code>Failed</code> - The training job has failed. The reason for the failure is returned in the <code>FailureReason</code> field of <code>DescribeTrainingJobResponse</code>.</p> </li> </ul> </dd> <dt>Stopped</dt> <dd> <ul> <li> <p> <code>MaxRuntimeExceeded</code> - The job stopped because it exceeded the maximum allowed runtime.</p> </li> <li> <p> <code>Stopped</code> - The training job has stopped.</p> </li> </ul> </dd> <dt>Stopping</dt> <dd> <ul> <li> <p> <code>Stopping</code> - Stopping the training job.</p> </li> </ul> </dd> </dl> <p>We no longer support the following secondary statuses:</p> <ul> <li> <p> <code>LaunchingMLInstances</code> </p> </li> <li> <p> <code>PreparingTrainingStack</code> </p> </li> <li> <p> <code>DownloadingTrainingImage</code> </p> </li> </ul>
-- * EndTime [Timestamp] <p>A timestamp that shows when the training job transitioned out of this secondary status state into another secondary status state or when the training job has ended.</p>
-- * StatusMessage [StatusMessage] <p>A detailed description of the progress within a secondary status. </p> <p>Amazon SageMaker provides secondary statuses and status messages that apply to each of them:</p> <dl> <dt>Starting</dt> <dd> <ul> <li> <p>Starting the training job.</p> </li> <li> <p>Launching requested ML instances.</p> </li> <li> <p>Insufficient capacity error from EC2 while launching instances, retrying!</p> </li> <li> <p>Launched instance was unhealthy, replacing it!</p> </li> <li> <p>Preparing the instances for training.</p> </li> </ul> </dd> <dt>Training</dt> <dd> <ul> <li> <p>Downloading the training image.</p> </li> <li> <p>Training image download completed. Training in progress.</p> </li> </ul> </dd> </dl> <important> <p>Status messages are subject to change. Therefore, we recommend not including them in code that programmatically initiates actions. For examples, don't use status messages in if statements.</p> </important> <p>To have an overview of your training job's progress, view <code>TrainingJobStatus</code> and <code>SecondaryStatus</code> in <a>DescribeTrainingJobResponse</a>, and <code>StatusMessage</code> together. For example, at the start of a training job, you might see the following:</p> <ul> <li> <p> <code>TrainingJobStatus</code> - InProgress</p> </li> <li> <p> <code>SecondaryStatus</code> - Training</p> </li> <li> <p> <code>StatusMessage</code> - Downloading the training image</p> </li> </ul>
-- * StartTime [Timestamp] <p>A timestamp that shows when the training job transitioned to the current secondary status state.</p>
-- Required key: Status
-- Required key: StartTime
-- @return SecondaryStatusTransition structure as a key-value pair table
function M.SecondaryStatusTransition(args)
	assert(args, "You must provide an argument table when creating SecondaryStatusTransition")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["EndTime"] = args["EndTime"],
		["StatusMessage"] = args["StatusMessage"],
		["StartTime"] = args["StartTime"],
	}
	asserts.AssertSecondaryStatusTransition(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateNotebookInstanceLifecycleConfigInput = { ["OnCreate"] = true, ["OnStart"] = true, ["NotebookInstanceLifecycleConfigName"] = true, nil }

function asserts.AssertUpdateNotebookInstanceLifecycleConfigInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateNotebookInstanceLifecycleConfigInput to be of type 'table'")
	assert(struct["NotebookInstanceLifecycleConfigName"], "Expected key NotebookInstanceLifecycleConfigName to exist in table")
	if struct["OnCreate"] then asserts.AssertNotebookInstanceLifecycleConfigList(struct["OnCreate"]) end
	if struct["OnStart"] then asserts.AssertNotebookInstanceLifecycleConfigList(struct["OnStart"]) end
	if struct["NotebookInstanceLifecycleConfigName"] then asserts.AssertNotebookInstanceLifecycleConfigName(struct["NotebookInstanceLifecycleConfigName"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateNotebookInstanceLifecycleConfigInput[k], "UpdateNotebookInstanceLifecycleConfigInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateNotebookInstanceLifecycleConfigInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OnCreate [NotebookInstanceLifecycleConfigList] <p>The shell script that runs only once, when you create a notebook instance</p>
-- * OnStart [NotebookInstanceLifecycleConfigList] <p>The shell script that runs every time you start a notebook instance, including when you create the notebook instance.</p>
-- * NotebookInstanceLifecycleConfigName [NotebookInstanceLifecycleConfigName] <p>The name of the lifecycle configuration.</p>
-- Required key: NotebookInstanceLifecycleConfigName
-- @return UpdateNotebookInstanceLifecycleConfigInput structure as a key-value pair table
function M.UpdateNotebookInstanceLifecycleConfigInput(args)
	assert(args, "You must provide an argument table when creating UpdateNotebookInstanceLifecycleConfigInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["OnCreate"] = args["OnCreate"],
		["OnStart"] = args["OnStart"],
		["NotebookInstanceLifecycleConfigName"] = args["NotebookInstanceLifecycleConfigName"],
	}
	asserts.AssertUpdateNotebookInstanceLifecycleConfigInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.IntegerParameterRange = { ["Name"] = true, ["MaxValue"] = true, ["MinValue"] = true, nil }

function asserts.AssertIntegerParameterRange(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IntegerParameterRange to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["MinValue"], "Expected key MinValue to exist in table")
	assert(struct["MaxValue"], "Expected key MaxValue to exist in table")
	if struct["Name"] then asserts.AssertParameterKey(struct["Name"]) end
	if struct["MaxValue"] then asserts.AssertParameterValue(struct["MaxValue"]) end
	if struct["MinValue"] then asserts.AssertParameterValue(struct["MinValue"]) end
	for k,_ in pairs(struct) do
		assert(keys.IntegerParameterRange[k], "IntegerParameterRange contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IntegerParameterRange
-- <p>For a hyperparameter of the integer type, specifies the range that a hyperparameter tuning job searches.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [ParameterKey] <p>The name of the hyperparameter to search.</p>
-- * MaxValue [ParameterValue] <p>The maximum value of the hyperparameter to search.</p>
-- * MinValue [ParameterValue] <p>The minimum value of the hyperparameter to search.</p>
-- Required key: Name
-- Required key: MinValue
-- Required key: MaxValue
-- @return IntegerParameterRange structure as a key-value pair table
function M.IntegerParameterRange(args)
	assert(args, "You must provide an argument table when creating IntegerParameterRange")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
		["MaxValue"] = args["MaxValue"],
		["MinValue"] = args["MinValue"],
	}
	asserts.AssertIntegerParameterRange(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteNotebookInstanceLifecycleConfigInput = { ["NotebookInstanceLifecycleConfigName"] = true, nil }

function asserts.AssertDeleteNotebookInstanceLifecycleConfigInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteNotebookInstanceLifecycleConfigInput to be of type 'table'")
	assert(struct["NotebookInstanceLifecycleConfigName"], "Expected key NotebookInstanceLifecycleConfigName to exist in table")
	if struct["NotebookInstanceLifecycleConfigName"] then asserts.AssertNotebookInstanceLifecycleConfigName(struct["NotebookInstanceLifecycleConfigName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteNotebookInstanceLifecycleConfigInput[k], "DeleteNotebookInstanceLifecycleConfigInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteNotebookInstanceLifecycleConfigInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NotebookInstanceLifecycleConfigName [NotebookInstanceLifecycleConfigName] <p>The name of the lifecycle configuration to delete.</p>
-- Required key: NotebookInstanceLifecycleConfigName
-- @return DeleteNotebookInstanceLifecycleConfigInput structure as a key-value pair table
function M.DeleteNotebookInstanceLifecycleConfigInput(args)
	assert(args, "You must provide an argument table when creating DeleteNotebookInstanceLifecycleConfigInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NotebookInstanceLifecycleConfigName"] = args["NotebookInstanceLifecycleConfigName"],
	}
	asserts.AssertDeleteNotebookInstanceLifecycleConfigInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AddTagsInput = { ["ResourceArn"] = true, ["Tags"] = true, nil }

function asserts.AssertAddTagsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddTagsInput to be of type 'table'")
	assert(struct["ResourceArn"], "Expected key ResourceArn to exist in table")
	assert(struct["Tags"], "Expected key Tags to exist in table")
	if struct["ResourceArn"] then asserts.AssertResourceArn(struct["ResourceArn"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.AddTagsInput[k], "AddTagsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddTagsInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceArn [ResourceArn] <p>The Amazon Resource Name (ARN) of the resource that you want to tag.</p>
-- * Tags [TagList] <p>An array of <code>Tag</code> objects. Each tag is a key-value pair. Only the <code>key</code> parameter is required. If you don't specify a value, Amazon SageMaker sets the value to an empty string. </p>
-- Required key: ResourceArn
-- Required key: Tags
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
		["ResourceArn"] = args["ResourceArn"],
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

keys.ProductionVariantSummary = { ["DesiredInstanceCount"] = true, ["DesiredWeight"] = true, ["DeployedImages"] = true, ["VariantName"] = true, ["CurrentInstanceCount"] = true, ["CurrentWeight"] = true, nil }

function asserts.AssertProductionVariantSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ProductionVariantSummary to be of type 'table'")
	assert(struct["VariantName"], "Expected key VariantName to exist in table")
	if struct["DesiredInstanceCount"] then asserts.AssertTaskCount(struct["DesiredInstanceCount"]) end
	if struct["DesiredWeight"] then asserts.AssertVariantWeight(struct["DesiredWeight"]) end
	if struct["DeployedImages"] then asserts.AssertDeployedImages(struct["DeployedImages"]) end
	if struct["VariantName"] then asserts.AssertVariantName(struct["VariantName"]) end
	if struct["CurrentInstanceCount"] then asserts.AssertTaskCount(struct["CurrentInstanceCount"]) end
	if struct["CurrentWeight"] then asserts.AssertVariantWeight(struct["CurrentWeight"]) end
	for k,_ in pairs(struct) do
		assert(keys.ProductionVariantSummary[k], "ProductionVariantSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ProductionVariantSummary
-- <p>Describes weight and capacities for a production variant associated with an endpoint. If you sent a request to the <code>UpdateEndpointWeightsAndCapacities</code> API and the endpoint status is <code>Updating</code>, you get different desired and current values. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DesiredInstanceCount [TaskCount] <p>The number of instances requested in the <code>UpdateEndpointWeightsAndCapacities</code> request. </p>
-- * DesiredWeight [VariantWeight] <p>The requested weight, as specified in the <code>UpdateEndpointWeightsAndCapacities</code> request. </p>
-- * DeployedImages [DeployedImages] <p>An array of <code>DeployedImage</code> objects that specify the Amazon EC2 Container Registry paths of the inference images deployed on instances of this <code>ProductionVariant</code>.</p>
-- * VariantName [VariantName] <p>The name of the variant.</p>
-- * CurrentInstanceCount [TaskCount] <p>The number of instances associated with the variant.</p>
-- * CurrentWeight [VariantWeight] <p>The weight associated with the variant.</p>
-- Required key: VariantName
-- @return ProductionVariantSummary structure as a key-value pair table
function M.ProductionVariantSummary(args)
	assert(args, "You must provide an argument table when creating ProductionVariantSummary")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DesiredInstanceCount"] = args["DesiredInstanceCount"],
		["DesiredWeight"] = args["DesiredWeight"],
		["DeployedImages"] = args["DeployedImages"],
		["VariantName"] = args["VariantName"],
		["CurrentInstanceCount"] = args["CurrentInstanceCount"],
		["CurrentWeight"] = args["CurrentWeight"],
	}
	asserts.AssertProductionVariantSummary(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteNotebookInstanceInput = { ["NotebookInstanceName"] = true, nil }

function asserts.AssertDeleteNotebookInstanceInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteNotebookInstanceInput to be of type 'table'")
	assert(struct["NotebookInstanceName"], "Expected key NotebookInstanceName to exist in table")
	if struct["NotebookInstanceName"] then asserts.AssertNotebookInstanceName(struct["NotebookInstanceName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteNotebookInstanceInput[k], "DeleteNotebookInstanceInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteNotebookInstanceInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NotebookInstanceName [NotebookInstanceName] <p>The name of the Amazon SageMaker notebook instance to delete.</p>
-- Required key: NotebookInstanceName
-- @return DeleteNotebookInstanceInput structure as a key-value pair table
function M.DeleteNotebookInstanceInput(args)
	assert(args, "You must provide an argument table when creating DeleteNotebookInstanceInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NotebookInstanceName"] = args["NotebookInstanceName"],
	}
	asserts.AssertDeleteNotebookInstanceInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StopTransformJobRequest = { ["TransformJobName"] = true, nil }

function asserts.AssertStopTransformJobRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopTransformJobRequest to be of type 'table'")
	assert(struct["TransformJobName"], "Expected key TransformJobName to exist in table")
	if struct["TransformJobName"] then asserts.AssertTransformJobName(struct["TransformJobName"]) end
	for k,_ in pairs(struct) do
		assert(keys.StopTransformJobRequest[k], "StopTransformJobRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopTransformJobRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TransformJobName [TransformJobName] <p>The name of the transform job to stop.</p>
-- Required key: TransformJobName
-- @return StopTransformJobRequest structure as a key-value pair table
function M.StopTransformJobRequest(args)
	assert(args, "You must provide an argument table when creating StopTransformJobRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TransformJobName"] = args["TransformJobName"],
	}
	asserts.AssertStopTransformJobRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.NotebookInstanceSummary = { ["NotebookInstanceStatus"] = true, ["Url"] = true, ["NotebookInstanceName"] = true, ["CreationTime"] = true, ["NotebookInstanceArn"] = true, ["LastModifiedTime"] = true, ["InstanceType"] = true, ["NotebookInstanceLifecycleConfigName"] = true, nil }

function asserts.AssertNotebookInstanceSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NotebookInstanceSummary to be of type 'table'")
	assert(struct["NotebookInstanceName"], "Expected key NotebookInstanceName to exist in table")
	assert(struct["NotebookInstanceArn"], "Expected key NotebookInstanceArn to exist in table")
	if struct["NotebookInstanceStatus"] then asserts.AssertNotebookInstanceStatus(struct["NotebookInstanceStatus"]) end
	if struct["Url"] then asserts.AssertNotebookInstanceUrl(struct["Url"]) end
	if struct["NotebookInstanceName"] then asserts.AssertNotebookInstanceName(struct["NotebookInstanceName"]) end
	if struct["CreationTime"] then asserts.AssertCreationTime(struct["CreationTime"]) end
	if struct["NotebookInstanceArn"] then asserts.AssertNotebookInstanceArn(struct["NotebookInstanceArn"]) end
	if struct["LastModifiedTime"] then asserts.AssertLastModifiedTime(struct["LastModifiedTime"]) end
	if struct["InstanceType"] then asserts.AssertInstanceType(struct["InstanceType"]) end
	if struct["NotebookInstanceLifecycleConfigName"] then asserts.AssertNotebookInstanceLifecycleConfigName(struct["NotebookInstanceLifecycleConfigName"]) end
	for k,_ in pairs(struct) do
		assert(keys.NotebookInstanceSummary[k], "NotebookInstanceSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NotebookInstanceSummary
-- <p>Provides summary information for an Amazon SageMaker notebook instance.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NotebookInstanceStatus [NotebookInstanceStatus] <p>The status of the notebook instance.</p>
-- * Url [NotebookInstanceUrl] <p>The URL that you use to connect to the Jupyter instance running in your notebook instance. </p>
-- * NotebookInstanceName [NotebookInstanceName] <p>The name of the notebook instance that you want a summary for.</p>
-- * CreationTime [CreationTime] <p>A timestamp that shows when the notebook instance was created.</p>
-- * NotebookInstanceArn [NotebookInstanceArn] <p>The Amazon Resource Name (ARN) of the notebook instance.</p>
-- * LastModifiedTime [LastModifiedTime] <p>A timestamp that shows when the notebook instance was last modified.</p>
-- * InstanceType [InstanceType] <p>The type of ML compute instance that the notebook instance is running on.</p>
-- * NotebookInstanceLifecycleConfigName [NotebookInstanceLifecycleConfigName] <p>The name of a notebook instance lifecycle configuration associated with this notebook instance.</p> <p>For information about notebook instance lifestyle configurations, see <a href="http://docs.aws.amazon.com/sagemaker/latest/dg/notebook-lifecycle-config.html">Step 2.1: (Optional) Customize a Notebook Instance</a>.</p>
-- Required key: NotebookInstanceName
-- Required key: NotebookInstanceArn
-- @return NotebookInstanceSummary structure as a key-value pair table
function M.NotebookInstanceSummary(args)
	assert(args, "You must provide an argument table when creating NotebookInstanceSummary")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NotebookInstanceStatus"] = args["NotebookInstanceStatus"],
		["Url"] = args["Url"],
		["NotebookInstanceName"] = args["NotebookInstanceName"],
		["CreationTime"] = args["CreationTime"],
		["NotebookInstanceArn"] = args["NotebookInstanceArn"],
		["LastModifiedTime"] = args["LastModifiedTime"],
		["InstanceType"] = args["InstanceType"],
		["NotebookInstanceLifecycleConfigName"] = args["NotebookInstanceLifecycleConfigName"],
	}
	asserts.AssertNotebookInstanceSummary(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateTrainingJobResponse = { ["TrainingJobArn"] = true, nil }

function asserts.AssertCreateTrainingJobResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateTrainingJobResponse to be of type 'table'")
	assert(struct["TrainingJobArn"], "Expected key TrainingJobArn to exist in table")
	if struct["TrainingJobArn"] then asserts.AssertTrainingJobArn(struct["TrainingJobArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateTrainingJobResponse[k], "CreateTrainingJobResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateTrainingJobResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TrainingJobArn [TrainingJobArn] <p>The Amazon Resource Name (ARN) of the training job.</p>
-- Required key: TrainingJobArn
-- @return CreateTrainingJobResponse structure as a key-value pair table
function M.CreateTrainingJobResponse(args)
	assert(args, "You must provide an argument table when creating CreateTrainingJobResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TrainingJobArn"] = args["TrainingJobArn"],
	}
	asserts.AssertCreateTrainingJobResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeModelInput = { ["ModelName"] = true, nil }

function asserts.AssertDescribeModelInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeModelInput to be of type 'table'")
	assert(struct["ModelName"], "Expected key ModelName to exist in table")
	if struct["ModelName"] then asserts.AssertModelName(struct["ModelName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeModelInput[k], "DescribeModelInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeModelInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ModelName [ModelName] <p>The name of the model.</p>
-- Required key: ModelName
-- @return DescribeModelInput structure as a key-value pair table
function M.DescribeModelInput(args)
	assert(args, "You must provide an argument table when creating DescribeModelInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ModelName"] = args["ModelName"],
	}
	asserts.AssertDescribeModelInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ContinuousParameterRange = { ["Name"] = true, ["MaxValue"] = true, ["MinValue"] = true, nil }

function asserts.AssertContinuousParameterRange(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ContinuousParameterRange to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["MinValue"], "Expected key MinValue to exist in table")
	assert(struct["MaxValue"], "Expected key MaxValue to exist in table")
	if struct["Name"] then asserts.AssertParameterKey(struct["Name"]) end
	if struct["MaxValue"] then asserts.AssertParameterValue(struct["MaxValue"]) end
	if struct["MinValue"] then asserts.AssertParameterValue(struct["MinValue"]) end
	for k,_ in pairs(struct) do
		assert(keys.ContinuousParameterRange[k], "ContinuousParameterRange contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ContinuousParameterRange
-- <p>A list of continuous hyperparameters to tune.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [ParameterKey] <p>The name of the continuous hyperparameter to tune.</p>
-- * MaxValue [ParameterValue] <p>The maximum value for the hyperparameter. The tuning job uses floating-point values between <code>MinValue</code> value and this value for tuning.</p>
-- * MinValue [ParameterValue] <p>The minimum value for the hyperparameter. The tuning job uses floating-point values between this value and <code>MaxValue</code>for tuning.</p>
-- Required key: Name
-- Required key: MinValue
-- Required key: MaxValue
-- @return ContinuousParameterRange structure as a key-value pair table
function M.ContinuousParameterRange(args)
	assert(args, "You must provide an argument table when creating ContinuousParameterRange")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
		["MaxValue"] = args["MaxValue"],
		["MinValue"] = args["MinValue"],
	}
	asserts.AssertContinuousParameterRange(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TransformInput = { ["CompressionType"] = true, ["ContentType"] = true, ["DataSource"] = true, ["SplitType"] = true, nil }

function asserts.AssertTransformInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TransformInput to be of type 'table'")
	assert(struct["DataSource"], "Expected key DataSource to exist in table")
	if struct["CompressionType"] then asserts.AssertCompressionType(struct["CompressionType"]) end
	if struct["ContentType"] then asserts.AssertContentType(struct["ContentType"]) end
	if struct["DataSource"] then asserts.AssertTransformDataSource(struct["DataSource"]) end
	if struct["SplitType"] then asserts.AssertSplitType(struct["SplitType"]) end
	for k,_ in pairs(struct) do
		assert(keys.TransformInput[k], "TransformInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TransformInput
-- <p>Describes the input source of a transform job and the way the transform job consumes it.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CompressionType [CompressionType] <p>Compressing data helps save on storage space. If your transform data is compressed, specify the compression type. Amazon SageMaker automatically decompresses the data for the transform job accordingly. The default value is <code>None</code>.</p>
-- * ContentType [ContentType] <p>The multipurpose internet mail extension (MIME) type of the data. Amazon SageMaker uses the MIME type with each http call to transfer data to the transform job.</p>
-- * DataSource [TransformDataSource] <p>Describes the location of the channel data, meaning the S3 location of the input data that the model can consume.</p>
-- * SplitType [SplitType] <p>The method to use to split the transform job's data into smaller batches. The default value is <code>None</code>. If you don't want to split the data, specify <code>None</code>. If you want to split records on a newline character boundary, specify <code>Line</code>. To split records according to the RecordIO format, specify <code>RecordIO</code>.</p> <p>Amazon SageMaker will send maximum number of records per batch in each request up to the MaxPayloadInMB limit. For more information, see <a href="http://mxnet.io/architecture/note_data_loading.html#data-format">RecordIO data format</a>.</p> <note> <p>For information about the <code>RecordIO</code> format, see <a href="http://mxnet.io/architecture/note_data_loading.html#data-format">Data Format</a>.</p> </note>
-- Required key: DataSource
-- @return TransformInput structure as a key-value pair table
function M.TransformInput(args)
	assert(args, "You must provide an argument table when creating TransformInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CompressionType"] = args["CompressionType"],
		["ContentType"] = args["ContentType"],
		["DataSource"] = args["DataSource"],
		["SplitType"] = args["SplitType"],
	}
	asserts.AssertTransformInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DesiredWeightAndCapacity = { ["DesiredInstanceCount"] = true, ["DesiredWeight"] = true, ["VariantName"] = true, nil }

function asserts.AssertDesiredWeightAndCapacity(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DesiredWeightAndCapacity to be of type 'table'")
	assert(struct["VariantName"], "Expected key VariantName to exist in table")
	if struct["DesiredInstanceCount"] then asserts.AssertTaskCount(struct["DesiredInstanceCount"]) end
	if struct["DesiredWeight"] then asserts.AssertVariantWeight(struct["DesiredWeight"]) end
	if struct["VariantName"] then asserts.AssertVariantName(struct["VariantName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DesiredWeightAndCapacity[k], "DesiredWeightAndCapacity contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DesiredWeightAndCapacity
-- <p>Specifies weight and capacity values for a production variant.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DesiredInstanceCount [TaskCount] <p>The variant's capacity.</p>
-- * DesiredWeight [VariantWeight] <p>The variant's weight.</p>
-- * VariantName [VariantName] <p>The name of the variant to update.</p>
-- Required key: VariantName
-- @return DesiredWeightAndCapacity structure as a key-value pair table
function M.DesiredWeightAndCapacity(args)
	assert(args, "You must provide an argument table when creating DesiredWeightAndCapacity")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DesiredInstanceCount"] = args["DesiredInstanceCount"],
		["DesiredWeight"] = args["DesiredWeight"],
		["VariantName"] = args["VariantName"],
	}
	asserts.AssertDesiredWeightAndCapacity(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ResourceConfig = { ["VolumeSizeInGB"] = true, ["InstanceCount"] = true, ["VolumeKmsKeyId"] = true, ["InstanceType"] = true, nil }

function asserts.AssertResourceConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceConfig to be of type 'table'")
	assert(struct["InstanceType"], "Expected key InstanceType to exist in table")
	assert(struct["InstanceCount"], "Expected key InstanceCount to exist in table")
	assert(struct["VolumeSizeInGB"], "Expected key VolumeSizeInGB to exist in table")
	if struct["VolumeSizeInGB"] then asserts.AssertVolumeSizeInGB(struct["VolumeSizeInGB"]) end
	if struct["InstanceCount"] then asserts.AssertTrainingInstanceCount(struct["InstanceCount"]) end
	if struct["VolumeKmsKeyId"] then asserts.AssertKmsKeyId(struct["VolumeKmsKeyId"]) end
	if struct["InstanceType"] then asserts.AssertTrainingInstanceType(struct["InstanceType"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResourceConfig[k], "ResourceConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceConfig
-- <p>Describes the resources, including ML compute instances and ML storage volumes, to use for model training. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * VolumeSizeInGB [VolumeSizeInGB] <p>The size of the ML storage volume that you want to provision. </p> <p>ML storage volumes store model artifacts and incremental states. Training algorithms might also use the ML storage volume for scratch space. If you want to store the training data in the ML storage volume, choose <code>File</code> as the <code>TrainingInputMode</code> in the algorithm specification. </p> <p>You must specify sufficient ML storage for your scenario. </p> <note> <p> Amazon SageMaker supports only the General Purpose SSD (gp2) ML storage volume type. </p> </note>
-- * InstanceCount [TrainingInstanceCount] <p>The number of ML compute instances to use. For distributed training, provide a value greater than 1. </p>
-- * VolumeKmsKeyId [KmsKeyId] <p>The AWS Key Management Service (AWS KMS) key that Amazon SageMaker uses to encrypt data on the storage volume attached to the ML compute instance(s) that run the training job. The <code>VolumeKmsKeyId</code> can be any of the following formats:</p> <ul> <li> <p>// KMS Key ID</p> <p> <code>"1234abcd-12ab-34cd-56ef-1234567890ab"</code> </p> </li> <li> <p>// Amazon Resource Name (ARN) of a KMS Key</p> <p> <code>"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"</code> </p> </li> </ul>
-- * InstanceType [TrainingInstanceType] <p>The ML compute instance type. </p>
-- Required key: InstanceType
-- Required key: InstanceCount
-- Required key: VolumeSizeInGB
-- @return ResourceConfig structure as a key-value pair table
function M.ResourceConfig(args)
	assert(args, "You must provide an argument table when creating ResourceConfig")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["VolumeSizeInGB"] = args["VolumeSizeInGB"],
		["InstanceCount"] = args["InstanceCount"],
		["VolumeKmsKeyId"] = args["VolumeKmsKeyId"],
		["InstanceType"] = args["InstanceType"],
	}
	asserts.AssertResourceConfig(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TrainingJobSummary = { ["TrainingJobName"] = true, ["TrainingJobArn"] = true, ["CreationTime"] = true, ["TrainingJobStatus"] = true, ["TrainingEndTime"] = true, ["LastModifiedTime"] = true, nil }

function asserts.AssertTrainingJobSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TrainingJobSummary to be of type 'table'")
	assert(struct["TrainingJobName"], "Expected key TrainingJobName to exist in table")
	assert(struct["TrainingJobArn"], "Expected key TrainingJobArn to exist in table")
	assert(struct["CreationTime"], "Expected key CreationTime to exist in table")
	assert(struct["TrainingJobStatus"], "Expected key TrainingJobStatus to exist in table")
	if struct["TrainingJobName"] then asserts.AssertTrainingJobName(struct["TrainingJobName"]) end
	if struct["TrainingJobArn"] then asserts.AssertTrainingJobArn(struct["TrainingJobArn"]) end
	if struct["CreationTime"] then asserts.AssertTimestamp(struct["CreationTime"]) end
	if struct["TrainingJobStatus"] then asserts.AssertTrainingJobStatus(struct["TrainingJobStatus"]) end
	if struct["TrainingEndTime"] then asserts.AssertTimestamp(struct["TrainingEndTime"]) end
	if struct["LastModifiedTime"] then asserts.AssertTimestamp(struct["LastModifiedTime"]) end
	for k,_ in pairs(struct) do
		assert(keys.TrainingJobSummary[k], "TrainingJobSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TrainingJobSummary
-- <p>Provides summary information about a training job.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TrainingJobName [TrainingJobName] <p>The name of the training job that you want a summary for.</p>
-- * TrainingJobArn [TrainingJobArn] <p>The Amazon Resource Name (ARN) of the training job.</p>
-- * CreationTime [Timestamp] <p>A timestamp that shows when the training job was created.</p>
-- * TrainingJobStatus [TrainingJobStatus] <p>The status of the training job.</p>
-- * TrainingEndTime [Timestamp] <p>A timestamp that shows when the training job ended. This field is set only if the training job has one of the terminal statuses (<code>Completed</code>, <code>Failed</code>, or <code>Stopped</code>). </p>
-- * LastModifiedTime [Timestamp] <p> Timestamp when the training job was last modified. </p>
-- Required key: TrainingJobName
-- Required key: TrainingJobArn
-- Required key: CreationTime
-- Required key: TrainingJobStatus
-- @return TrainingJobSummary structure as a key-value pair table
function M.TrainingJobSummary(args)
	assert(args, "You must provide an argument table when creating TrainingJobSummary")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TrainingJobName"] = args["TrainingJobName"],
		["TrainingJobArn"] = args["TrainingJobArn"],
		["CreationTime"] = args["CreationTime"],
		["TrainingJobStatus"] = args["TrainingJobStatus"],
		["TrainingEndTime"] = args["TrainingEndTime"],
		["LastModifiedTime"] = args["LastModifiedTime"],
	}
	asserts.AssertTrainingJobSummary(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.NotebookInstanceLifecycleConfigSummary = { ["LastModifiedTime"] = true, ["NotebookInstanceLifecycleConfigArn"] = true, ["CreationTime"] = true, ["NotebookInstanceLifecycleConfigName"] = true, nil }

function asserts.AssertNotebookInstanceLifecycleConfigSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NotebookInstanceLifecycleConfigSummary to be of type 'table'")
	assert(struct["NotebookInstanceLifecycleConfigName"], "Expected key NotebookInstanceLifecycleConfigName to exist in table")
	assert(struct["NotebookInstanceLifecycleConfigArn"], "Expected key NotebookInstanceLifecycleConfigArn to exist in table")
	if struct["LastModifiedTime"] then asserts.AssertLastModifiedTime(struct["LastModifiedTime"]) end
	if struct["NotebookInstanceLifecycleConfigArn"] then asserts.AssertNotebookInstanceLifecycleConfigArn(struct["NotebookInstanceLifecycleConfigArn"]) end
	if struct["CreationTime"] then asserts.AssertCreationTime(struct["CreationTime"]) end
	if struct["NotebookInstanceLifecycleConfigName"] then asserts.AssertNotebookInstanceLifecycleConfigName(struct["NotebookInstanceLifecycleConfigName"]) end
	for k,_ in pairs(struct) do
		assert(keys.NotebookInstanceLifecycleConfigSummary[k], "NotebookInstanceLifecycleConfigSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NotebookInstanceLifecycleConfigSummary
-- <p>Provides a summary of a notebook instance lifecycle configuration.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LastModifiedTime [LastModifiedTime] <p>A timestamp that tells when the lifecycle configuration was last modified.</p>
-- * NotebookInstanceLifecycleConfigArn [NotebookInstanceLifecycleConfigArn] <p>The Amazon Resource Name (ARN) of the lifecycle configuration.</p>
-- * CreationTime [CreationTime] <p>A timestamp that tells when the lifecycle configuration was created.</p>
-- * NotebookInstanceLifecycleConfigName [NotebookInstanceLifecycleConfigName] <p>The name of the lifecycle configuration.</p>
-- Required key: NotebookInstanceLifecycleConfigName
-- Required key: NotebookInstanceLifecycleConfigArn
-- @return NotebookInstanceLifecycleConfigSummary structure as a key-value pair table
function M.NotebookInstanceLifecycleConfigSummary(args)
	assert(args, "You must provide an argument table when creating NotebookInstanceLifecycleConfigSummary")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LastModifiedTime"] = args["LastModifiedTime"],
		["NotebookInstanceLifecycleConfigArn"] = args["NotebookInstanceLifecycleConfigArn"],
		["CreationTime"] = args["CreationTime"],
		["NotebookInstanceLifecycleConfigName"] = args["NotebookInstanceLifecycleConfigName"],
	}
	asserts.AssertNotebookInstanceLifecycleConfigSummary(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ParameterRanges = { ["CategoricalParameterRanges"] = true, ["ContinuousParameterRanges"] = true, ["IntegerParameterRanges"] = true, nil }

function asserts.AssertParameterRanges(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ParameterRanges to be of type 'table'")
	if struct["CategoricalParameterRanges"] then asserts.AssertCategoricalParameterRanges(struct["CategoricalParameterRanges"]) end
	if struct["ContinuousParameterRanges"] then asserts.AssertContinuousParameterRanges(struct["ContinuousParameterRanges"]) end
	if struct["IntegerParameterRanges"] then asserts.AssertIntegerParameterRanges(struct["IntegerParameterRanges"]) end
	for k,_ in pairs(struct) do
		assert(keys.ParameterRanges[k], "ParameterRanges contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ParameterRanges
-- <p>Specifies ranges of integer, continuous, and categorical hyperparameters that a hyperparameter tuning job searches.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CategoricalParameterRanges [CategoricalParameterRanges] <p>The array of <a>CategoricalParameterRange</a> objects that specify ranges of categorical hyperparameters that a hyperparameter tuning job searches.</p>
-- * ContinuousParameterRanges [ContinuousParameterRanges] <p>The array of <a>ContinuousParameterRange</a> objects that specify ranges of continuous hyperparameters that a hyperparameter tuning job searches.</p>
-- * IntegerParameterRanges [IntegerParameterRanges] <p>The array of <a>IntegerParameterRange</a> objects that specify ranges of integer hyperparameters that a hyperparameter tuning job searches.</p>
-- @return ParameterRanges structure as a key-value pair table
function M.ParameterRanges(args)
	assert(args, "You must provide an argument table when creating ParameterRanges")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CategoricalParameterRanges"] = args["CategoricalParameterRanges"],
		["ContinuousParameterRanges"] = args["ContinuousParameterRanges"],
		["IntegerParameterRanges"] = args["IntegerParameterRanges"],
	}
	asserts.AssertParameterRanges(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.HyperParameterTrainingJobDefinition = { ["StaticHyperParameters"] = true, ["VpcConfig"] = true, ["InputDataConfig"] = true, ["AlgorithmSpecification"] = true, ["RoleArn"] = true, ["OutputDataConfig"] = true, ["StoppingCondition"] = true, ["ResourceConfig"] = true, nil }

function asserts.AssertHyperParameterTrainingJobDefinition(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HyperParameterTrainingJobDefinition to be of type 'table'")
	assert(struct["AlgorithmSpecification"], "Expected key AlgorithmSpecification to exist in table")
	assert(struct["RoleArn"], "Expected key RoleArn to exist in table")
	assert(struct["InputDataConfig"], "Expected key InputDataConfig to exist in table")
	assert(struct["OutputDataConfig"], "Expected key OutputDataConfig to exist in table")
	assert(struct["ResourceConfig"], "Expected key ResourceConfig to exist in table")
	assert(struct["StoppingCondition"], "Expected key StoppingCondition to exist in table")
	if struct["StaticHyperParameters"] then asserts.AssertHyperParameters(struct["StaticHyperParameters"]) end
	if struct["VpcConfig"] then asserts.AssertVpcConfig(struct["VpcConfig"]) end
	if struct["InputDataConfig"] then asserts.AssertInputDataConfig(struct["InputDataConfig"]) end
	if struct["AlgorithmSpecification"] then asserts.AssertHyperParameterAlgorithmSpecification(struct["AlgorithmSpecification"]) end
	if struct["RoleArn"] then asserts.AssertRoleArn(struct["RoleArn"]) end
	if struct["OutputDataConfig"] then asserts.AssertOutputDataConfig(struct["OutputDataConfig"]) end
	if struct["StoppingCondition"] then asserts.AssertStoppingCondition(struct["StoppingCondition"]) end
	if struct["ResourceConfig"] then asserts.AssertResourceConfig(struct["ResourceConfig"]) end
	for k,_ in pairs(struct) do
		assert(keys.HyperParameterTrainingJobDefinition[k], "HyperParameterTrainingJobDefinition contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HyperParameterTrainingJobDefinition
-- <p>Defines the training jobs launched by a hyperparameter tuning job.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StaticHyperParameters [HyperParameters] <p>Specifies the values of hyperparameters that do not change for the tuning job.</p>
-- * VpcConfig [VpcConfig] <p>The <a>VpcConfig</a> object that specifies the VPC that you want the training jobs that this hyperparameter tuning job launches to connect to. Control access to and from your training container by configuring the VPC. For more information, see <a href="http://docs.aws.amazon.com/sagemaker/latest/dg/train-vpc.html">Protect Training Jobs by Using an Amazon Virtual Private Cloud</a>.</p>
-- * InputDataConfig [InputDataConfig] <p>An array of <a>Channel</a> objects that specify the input for the training jobs that the tuning job launches.</p>
-- * AlgorithmSpecification [HyperParameterAlgorithmSpecification] <p>The <a>HyperParameterAlgorithmSpecification</a> object that specifies the algorithm to use for the training jobs that the tuning job launches.</p>
-- * RoleArn [RoleArn] <p>The Amazon Resource Name (ARN) of the IAM role associated with the training jobs that the tuning job launches.</p>
-- * OutputDataConfig [OutputDataConfig] <p>Specifies the path to the Amazon S3 bucket where you store model artifacts from the training jobs that the tuning job launches.</p>
-- * StoppingCondition [StoppingCondition] <p>Sets a maximum duration for the training jobs that the tuning job launches. Use this parameter to limit model training costs. </p> <p>To stop a job, Amazon SageMaker sends the algorithm the <code>SIGTERM</code> signal. This delays job termination for 120 seconds. Algorithms might use this 120-second window to save the model artifacts.</p> <p>When Amazon SageMaker terminates a job because the stopping condition has been met, training algorithms provided by Amazon SageMaker save the intermediate results of the job.</p>
-- * ResourceConfig [ResourceConfig] <p>The resources, including the compute instances and storage volumes, to use for the training jobs that the tuning job launches.</p> <p>Storage volumes store model artifacts and incremental states. Training algorithms might also use storage volumes for scratch space. If you want Amazon SageMaker to use the storage volume to store the training data, choose <code>File</code> as the <code>TrainingInputMode</code> in the algorithm specification. For distributed training algorithms, specify an instance count greater than 1.</p>
-- Required key: AlgorithmSpecification
-- Required key: RoleArn
-- Required key: InputDataConfig
-- Required key: OutputDataConfig
-- Required key: ResourceConfig
-- Required key: StoppingCondition
-- @return HyperParameterTrainingJobDefinition structure as a key-value pair table
function M.HyperParameterTrainingJobDefinition(args)
	assert(args, "You must provide an argument table when creating HyperParameterTrainingJobDefinition")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StaticHyperParameters"] = args["StaticHyperParameters"],
		["VpcConfig"] = args["VpcConfig"],
		["InputDataConfig"] = args["InputDataConfig"],
		["AlgorithmSpecification"] = args["AlgorithmSpecification"],
		["RoleArn"] = args["RoleArn"],
		["OutputDataConfig"] = args["OutputDataConfig"],
		["StoppingCondition"] = args["StoppingCondition"],
		["ResourceConfig"] = args["ResourceConfig"],
	}
	asserts.AssertHyperParameterTrainingJobDefinition(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateNotebookInstanceLifecycleConfigOutput = { ["NotebookInstanceLifecycleConfigArn"] = true, nil }

function asserts.AssertCreateNotebookInstanceLifecycleConfigOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateNotebookInstanceLifecycleConfigOutput to be of type 'table'")
	if struct["NotebookInstanceLifecycleConfigArn"] then asserts.AssertNotebookInstanceLifecycleConfigArn(struct["NotebookInstanceLifecycleConfigArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateNotebookInstanceLifecycleConfigOutput[k], "CreateNotebookInstanceLifecycleConfigOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateNotebookInstanceLifecycleConfigOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NotebookInstanceLifecycleConfigArn [NotebookInstanceLifecycleConfigArn] <p>The Amazon Resource Name (ARN) of the lifecycle configuration.</p>
-- @return CreateNotebookInstanceLifecycleConfigOutput structure as a key-value pair table
function M.CreateNotebookInstanceLifecycleConfigOutput(args)
	assert(args, "You must provide an argument table when creating CreateNotebookInstanceLifecycleConfigOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NotebookInstanceLifecycleConfigArn"] = args["NotebookInstanceLifecycleConfigArn"],
	}
	asserts.AssertCreateNotebookInstanceLifecycleConfigOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListEndpointConfigsOutput = { ["NextToken"] = true, ["EndpointConfigs"] = true, nil }

function asserts.AssertListEndpointConfigsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListEndpointConfigsOutput to be of type 'table'")
	assert(struct["EndpointConfigs"], "Expected key EndpointConfigs to exist in table")
	if struct["NextToken"] then asserts.AssertPaginationToken(struct["NextToken"]) end
	if struct["EndpointConfigs"] then asserts.AssertEndpointConfigSummaryList(struct["EndpointConfigs"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListEndpointConfigsOutput[k], "ListEndpointConfigsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListEndpointConfigsOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [PaginationToken] <p> If the response is truncated, Amazon SageMaker returns this token. To retrieve the next set of endpoint configurations, use it in the subsequent request </p>
-- * EndpointConfigs [EndpointConfigSummaryList] <p>An array of endpoint configurations.</p>
-- Required key: EndpointConfigs
-- @return ListEndpointConfigsOutput structure as a key-value pair table
function M.ListEndpointConfigsOutput(args)
	assert(args, "You must provide an argument table when creating ListEndpointConfigsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["EndpointConfigs"] = args["EndpointConfigs"],
	}
	asserts.AssertListEndpointConfigsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeTrainingJobRequest = { ["TrainingJobName"] = true, nil }

function asserts.AssertDescribeTrainingJobRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTrainingJobRequest to be of type 'table'")
	assert(struct["TrainingJobName"], "Expected key TrainingJobName to exist in table")
	if struct["TrainingJobName"] then asserts.AssertTrainingJobName(struct["TrainingJobName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeTrainingJobRequest[k], "DescribeTrainingJobRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTrainingJobRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TrainingJobName [TrainingJobName] <p>The name of the training job.</p>
-- Required key: TrainingJobName
-- @return DescribeTrainingJobRequest structure as a key-value pair table
function M.DescribeTrainingJobRequest(args)
	assert(args, "You must provide an argument table when creating DescribeTrainingJobRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TrainingJobName"] = args["TrainingJobName"],
	}
	asserts.AssertDescribeTrainingJobRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListTrainingJobsRequest = { ["SortBy"] = true, ["SortOrder"] = true, ["CreationTimeBefore"] = true, ["MaxResults"] = true, ["NameContains"] = true, ["LastModifiedTimeBefore"] = true, ["StatusEquals"] = true, ["LastModifiedTimeAfter"] = true, ["NextToken"] = true, ["CreationTimeAfter"] = true, nil }

function asserts.AssertListTrainingJobsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTrainingJobsRequest to be of type 'table'")
	if struct["SortBy"] then asserts.AssertSortBy(struct["SortBy"]) end
	if struct["SortOrder"] then asserts.AssertSortOrder(struct["SortOrder"]) end
	if struct["CreationTimeBefore"] then asserts.AssertTimestamp(struct["CreationTimeBefore"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	if struct["NameContains"] then asserts.AssertNameContains(struct["NameContains"]) end
	if struct["LastModifiedTimeBefore"] then asserts.AssertTimestamp(struct["LastModifiedTimeBefore"]) end
	if struct["StatusEquals"] then asserts.AssertTrainingJobStatus(struct["StatusEquals"]) end
	if struct["LastModifiedTimeAfter"] then asserts.AssertTimestamp(struct["LastModifiedTimeAfter"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["CreationTimeAfter"] then asserts.AssertTimestamp(struct["CreationTimeAfter"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTrainingJobsRequest[k], "ListTrainingJobsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTrainingJobsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SortBy [SortBy] <p>The field to sort results by. The default is <code>CreationTime</code>.</p>
-- * SortOrder [SortOrder] <p>The sort order for results. The default is <code>Ascending</code>.</p>
-- * CreationTimeBefore [Timestamp] <p>A filter that returns only training jobs created before the specified time (timestamp).</p>
-- * MaxResults [MaxResults] <p>The maximum number of training jobs to return in the response.</p>
-- * NameContains [NameContains] <p>A string in the training job name. This filter returns only training jobs whose name contains the specified string.</p>
-- * LastModifiedTimeBefore [Timestamp] <p>A filter that returns only training jobs modified before the specified time (timestamp).</p>
-- * StatusEquals [TrainingJobStatus] <p>A filter that retrieves only training jobs with a specific status.</p>
-- * LastModifiedTimeAfter [Timestamp] <p>A filter that returns only training jobs modified after the specified time (timestamp).</p>
-- * NextToken [NextToken] <p>If the result of the previous <code>ListTrainingJobs</code> request was truncated, the response includes a <code>NextToken</code>. To retrieve the next set of training jobs, use the token in the next request. </p>
-- * CreationTimeAfter [Timestamp] <p>A filter that returns only training jobs created after the specified time (timestamp).</p>
-- @return ListTrainingJobsRequest structure as a key-value pair table
function M.ListTrainingJobsRequest(args)
	assert(args, "You must provide an argument table when creating ListTrainingJobsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SortBy"] = args["SortBy"],
		["SortOrder"] = args["SortOrder"],
		["CreationTimeBefore"] = args["CreationTimeBefore"],
		["MaxResults"] = args["MaxResults"],
		["NameContains"] = args["NameContains"],
		["LastModifiedTimeBefore"] = args["LastModifiedTimeBefore"],
		["StatusEquals"] = args["StatusEquals"],
		["LastModifiedTimeAfter"] = args["LastModifiedTimeAfter"],
		["NextToken"] = args["NextToken"],
		["CreationTimeAfter"] = args["CreationTimeAfter"],
	}
	asserts.AssertListTrainingJobsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TransformResources = { ["InstanceCount"] = true, ["VolumeKmsKeyId"] = true, ["InstanceType"] = true, nil }

function asserts.AssertTransformResources(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TransformResources to be of type 'table'")
	assert(struct["InstanceType"], "Expected key InstanceType to exist in table")
	assert(struct["InstanceCount"], "Expected key InstanceCount to exist in table")
	if struct["InstanceCount"] then asserts.AssertTransformInstanceCount(struct["InstanceCount"]) end
	if struct["VolumeKmsKeyId"] then asserts.AssertKmsKeyId(struct["VolumeKmsKeyId"]) end
	if struct["InstanceType"] then asserts.AssertTransformInstanceType(struct["InstanceType"]) end
	for k,_ in pairs(struct) do
		assert(keys.TransformResources[k], "TransformResources contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TransformResources
-- <p>Describes the resources, including ML instance types and ML instance count, to use for transform job.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InstanceCount [TransformInstanceCount] <p>The number of ML compute instances to use in the transform job. For distributed transform, provide a value greater than 1. The default value is <code>1</code>.</p>
-- * VolumeKmsKeyId [KmsKeyId] <p>The AWS Key Management Service (AWS KMS) key that Amazon SageMaker uses to encrypt data on the storage volume attached to the ML compute instance(s) that run the batch transform job. The <code>VolumeKmsKeyId</code> can be any of the following formats:</p> <ul> <li> <p>// KMS Key ID</p> <p> <code>"1234abcd-12ab-34cd-56ef-1234567890ab"</code> </p> </li> <li> <p>// Amazon Resource Name (ARN) of a KMS Key</p> <p> <code>"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"</code> </p> </li> </ul>
-- * InstanceType [TransformInstanceType] <p>The ML compute instance type for the transform job. For using built-in algorithms to transform moderately sized datasets, ml.m4.xlarge or <code>ml.m5.large</code> should suffice. There is no default value for <code>InstanceType</code>.</p>
-- Required key: InstanceType
-- Required key: InstanceCount
-- @return TransformResources structure as a key-value pair table
function M.TransformResources(args)
	assert(args, "You must provide an argument table when creating TransformResources")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["InstanceCount"] = args["InstanceCount"],
		["VolumeKmsKeyId"] = args["VolumeKmsKeyId"],
		["InstanceType"] = args["InstanceType"],
	}
	asserts.AssertTransformResources(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AlgorithmSpecification = { ["TrainingInputMode"] = true, ["TrainingImage"] = true, nil }

function asserts.AssertAlgorithmSpecification(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AlgorithmSpecification to be of type 'table'")
	assert(struct["TrainingImage"], "Expected key TrainingImage to exist in table")
	assert(struct["TrainingInputMode"], "Expected key TrainingInputMode to exist in table")
	if struct["TrainingInputMode"] then asserts.AssertTrainingInputMode(struct["TrainingInputMode"]) end
	if struct["TrainingImage"] then asserts.AssertAlgorithmImage(struct["TrainingImage"]) end
	for k,_ in pairs(struct) do
		assert(keys.AlgorithmSpecification[k], "AlgorithmSpecification contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AlgorithmSpecification
-- <p>Specifies the training algorithm to use in a <a href="http://docs.aws.amazon.com/sagemaker/latest/dg/API_CreateTrainingJob.html">CreateTrainingJob</a> request.</p> <p>For more information about algorithms provided by Amazon SageMaker, see <a href="http://docs.aws.amazon.com/sagemaker/latest/dg/algos.html">Algorithms</a>. For information about using your own algorithms, see <a href="http://docs.aws.amazon.com/sagemaker/latest/dg/your-algorithms.html">Using Your Own Algorithms with Amazon SageMaker</a>. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TrainingInputMode [TrainingInputMode] <p>The input mode that the algorithm supports. For the input modes that Amazon SageMaker algorithms support, see <a href="http://docs.aws.amazon.com/sagemaker/latest/dg/algos.html">Algorithms</a>. If an algorithm supports the <code>File</code> input mode, Amazon SageMaker downloads the training data from S3 to the provisioned ML storage Volume, and mounts the directory to docker volume for training container. If an algorithm supports the <code>Pipe</code> input mode, Amazon SageMaker streams data directly from S3 to the container. </p> <p> In File mode, make sure you provision ML storage volume with sufficient capacity to accommodate the data download from S3. In addition to the training data, the ML storage volume also stores the output model. The algorithm container use ML storage volume to also store intermediate information, if any. </p> <p> For distributed algorithms using File mode, training data is distributed uniformly, and your training duration is predictable if the input data objects size is approximately same. Amazon SageMaker does not split the files any further for model training. If the object sizes are skewed, training won't be optimal as the data distribution is also skewed where one host in a training cluster is overloaded, thus becoming bottleneck in training. </p>
-- * TrainingImage [AlgorithmImage] <p>The registry path of the Docker image that contains the training algorithm. For information about docker registry paths for built-in algorithms, see <a href="http://docs.aws.amazon.com/sagemaker/latest/dg/sagemaker-algo-docker-registry-paths.html">Algorithms Provided by Amazon SageMaker: Common Parameters</a>.</p>
-- Required key: TrainingImage
-- Required key: TrainingInputMode
-- @return AlgorithmSpecification structure as a key-value pair table
function M.AlgorithmSpecification(args)
	assert(args, "You must provide an argument table when creating AlgorithmSpecification")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TrainingInputMode"] = args["TrainingInputMode"],
		["TrainingImage"] = args["TrainingImage"],
	}
	asserts.AssertAlgorithmSpecification(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeHyperParameterTuningJobResponse = { ["HyperParameterTuningJobArn"] = true, ["HyperParameterTuningJobStatus"] = true, ["HyperParameterTuningJobName"] = true, ["TrainingJobDefinition"] = true, ["HyperParameterTuningEndTime"] = true, ["CreationTime"] = true, ["TrainingJobStatusCounters"] = true, ["ObjectiveStatusCounters"] = true, ["BestTrainingJob"] = true, ["HyperParameterTuningJobConfig"] = true, ["LastModifiedTime"] = true, ["FailureReason"] = true, nil }

function asserts.AssertDescribeHyperParameterTuningJobResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeHyperParameterTuningJobResponse to be of type 'table'")
	assert(struct["HyperParameterTuningJobName"], "Expected key HyperParameterTuningJobName to exist in table")
	assert(struct["HyperParameterTuningJobArn"], "Expected key HyperParameterTuningJobArn to exist in table")
	assert(struct["HyperParameterTuningJobConfig"], "Expected key HyperParameterTuningJobConfig to exist in table")
	assert(struct["TrainingJobDefinition"], "Expected key TrainingJobDefinition to exist in table")
	assert(struct["HyperParameterTuningJobStatus"], "Expected key HyperParameterTuningJobStatus to exist in table")
	assert(struct["CreationTime"], "Expected key CreationTime to exist in table")
	assert(struct["TrainingJobStatusCounters"], "Expected key TrainingJobStatusCounters to exist in table")
	assert(struct["ObjectiveStatusCounters"], "Expected key ObjectiveStatusCounters to exist in table")
	if struct["HyperParameterTuningJobArn"] then asserts.AssertHyperParameterTuningJobArn(struct["HyperParameterTuningJobArn"]) end
	if struct["HyperParameterTuningJobStatus"] then asserts.AssertHyperParameterTuningJobStatus(struct["HyperParameterTuningJobStatus"]) end
	if struct["HyperParameterTuningJobName"] then asserts.AssertHyperParameterTuningJobName(struct["HyperParameterTuningJobName"]) end
	if struct["TrainingJobDefinition"] then asserts.AssertHyperParameterTrainingJobDefinition(struct["TrainingJobDefinition"]) end
	if struct["HyperParameterTuningEndTime"] then asserts.AssertTimestamp(struct["HyperParameterTuningEndTime"]) end
	if struct["CreationTime"] then asserts.AssertTimestamp(struct["CreationTime"]) end
	if struct["TrainingJobStatusCounters"] then asserts.AssertTrainingJobStatusCounters(struct["TrainingJobStatusCounters"]) end
	if struct["ObjectiveStatusCounters"] then asserts.AssertObjectiveStatusCounters(struct["ObjectiveStatusCounters"]) end
	if struct["BestTrainingJob"] then asserts.AssertHyperParameterTrainingJobSummary(struct["BestTrainingJob"]) end
	if struct["HyperParameterTuningJobConfig"] then asserts.AssertHyperParameterTuningJobConfig(struct["HyperParameterTuningJobConfig"]) end
	if struct["LastModifiedTime"] then asserts.AssertTimestamp(struct["LastModifiedTime"]) end
	if struct["FailureReason"] then asserts.AssertFailureReason(struct["FailureReason"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeHyperParameterTuningJobResponse[k], "DescribeHyperParameterTuningJobResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeHyperParameterTuningJobResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * HyperParameterTuningJobArn [HyperParameterTuningJobArn] <p>The Amazon Resource Name (ARN) of the tuning job.</p>
-- * HyperParameterTuningJobStatus [HyperParameterTuningJobStatus] <p>The status of the tuning job: InProgress, Completed, Failed, Stopping, or Stopped.</p>
-- * HyperParameterTuningJobName [HyperParameterTuningJobName] <p>The name of the tuning job.</p>
-- * TrainingJobDefinition [HyperParameterTrainingJobDefinition] <p>The <a>HyperParameterTrainingJobDefinition</a> object that specifies the definition of the training jobs that this tuning job launches.</p>
-- * HyperParameterTuningEndTime [Timestamp] <p>The date and time that the tuning job ended.</p>
-- * CreationTime [Timestamp] <p>The date and time that the tuning job started.</p>
-- * TrainingJobStatusCounters [TrainingJobStatusCounters] <p>The <a>TrainingJobStatusCounters</a> object that specifies the number of training jobs, categorized by status, that this tuning job launched.</p>
-- * ObjectiveStatusCounters [ObjectiveStatusCounters] <p>The <a>ObjectiveStatusCounters</a> object that specifies the number of training jobs, categorized by the status of their final objective metric, that this tuning job launched.</p>
-- * BestTrainingJob [HyperParameterTrainingJobSummary] <p>A <a>TrainingJobSummary</a> object that describes the training job that completed with the best current <a>HyperParameterTuningJobObjective</a>.</p>
-- * HyperParameterTuningJobConfig [HyperParameterTuningJobConfig] <p>The <a>HyperParameterTuningJobConfig</a> object that specifies the configuration of the tuning job.</p>
-- * LastModifiedTime [Timestamp] <p>The date and time that the status of the tuning job was modified. </p>
-- * FailureReason [FailureReason] <p>If the tuning job failed, the reason it failed.</p>
-- Required key: HyperParameterTuningJobName
-- Required key: HyperParameterTuningJobArn
-- Required key: HyperParameterTuningJobConfig
-- Required key: TrainingJobDefinition
-- Required key: HyperParameterTuningJobStatus
-- Required key: CreationTime
-- Required key: TrainingJobStatusCounters
-- Required key: ObjectiveStatusCounters
-- @return DescribeHyperParameterTuningJobResponse structure as a key-value pair table
function M.DescribeHyperParameterTuningJobResponse(args)
	assert(args, "You must provide an argument table when creating DescribeHyperParameterTuningJobResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["HyperParameterTuningJobArn"] = args["HyperParameterTuningJobArn"],
		["HyperParameterTuningJobStatus"] = args["HyperParameterTuningJobStatus"],
		["HyperParameterTuningJobName"] = args["HyperParameterTuningJobName"],
		["TrainingJobDefinition"] = args["TrainingJobDefinition"],
		["HyperParameterTuningEndTime"] = args["HyperParameterTuningEndTime"],
		["CreationTime"] = args["CreationTime"],
		["TrainingJobStatusCounters"] = args["TrainingJobStatusCounters"],
		["ObjectiveStatusCounters"] = args["ObjectiveStatusCounters"],
		["BestTrainingJob"] = args["BestTrainingJob"],
		["HyperParameterTuningJobConfig"] = args["HyperParameterTuningJobConfig"],
		["LastModifiedTime"] = args["LastModifiedTime"],
		["FailureReason"] = args["FailureReason"],
	}
	asserts.AssertDescribeHyperParameterTuningJobResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListTagsInput = { ["ResourceArn"] = true, ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListTagsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagsInput to be of type 'table'")
	assert(struct["ResourceArn"], "Expected key ResourceArn to exist in table")
	if struct["ResourceArn"] then asserts.AssertResourceArn(struct["ResourceArn"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertListTagsMaxResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTagsInput[k], "ListTagsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagsInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceArn [ResourceArn] <p>The Amazon Resource Name (ARN) of the resource whose tags you want to retrieve.</p>
-- * NextToken [NextToken] <p> If the response to the previous <code>ListTags</code> request is truncated, Amazon SageMaker returns this token. To retrieve the next set of tags, use it in the subsequent request. </p>
-- * MaxResults [ListTagsMaxResults] <p>Maximum number of tags to return.</p>
-- Required key: ResourceArn
-- @return ListTagsInput structure as a key-value pair table
function M.ListTagsInput(args)
	assert(args, "You must provide an argument table when creating ListTagsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ResourceArn"] = args["ResourceArn"],
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertListTagsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeEndpointInput = { ["EndpointName"] = true, nil }

function asserts.AssertDescribeEndpointInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEndpointInput to be of type 'table'")
	assert(struct["EndpointName"], "Expected key EndpointName to exist in table")
	if struct["EndpointName"] then asserts.AssertEndpointName(struct["EndpointName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeEndpointInput[k], "DescribeEndpointInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEndpointInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EndpointName [EndpointName] <p>The name of the endpoint.</p>
-- Required key: EndpointName
-- @return DescribeEndpointInput structure as a key-value pair table
function M.DescribeEndpointInput(args)
	assert(args, "You must provide an argument table when creating DescribeEndpointInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EndpointName"] = args["EndpointName"],
	}
	asserts.AssertDescribeEndpointInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeEndpointConfigInput = { ["EndpointConfigName"] = true, nil }

function asserts.AssertDescribeEndpointConfigInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEndpointConfigInput to be of type 'table'")
	assert(struct["EndpointConfigName"], "Expected key EndpointConfigName to exist in table")
	if struct["EndpointConfigName"] then asserts.AssertEndpointConfigName(struct["EndpointConfigName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeEndpointConfigInput[k], "DescribeEndpointConfigInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEndpointConfigInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EndpointConfigName [EndpointConfigName] <p>The name of the endpoint configuration.</p>
-- Required key: EndpointConfigName
-- @return DescribeEndpointConfigInput structure as a key-value pair table
function M.DescribeEndpointConfigInput(args)
	assert(args, "You must provide an argument table when creating DescribeEndpointConfigInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EndpointConfigName"] = args["EndpointConfigName"],
	}
	asserts.AssertDescribeEndpointConfigInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ModelSummary = { ["CreationTime"] = true, ["ModelName"] = true, ["ModelArn"] = true, nil }

function asserts.AssertModelSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModelSummary to be of type 'table'")
	assert(struct["ModelName"], "Expected key ModelName to exist in table")
	assert(struct["ModelArn"], "Expected key ModelArn to exist in table")
	assert(struct["CreationTime"], "Expected key CreationTime to exist in table")
	if struct["CreationTime"] then asserts.AssertTimestamp(struct["CreationTime"]) end
	if struct["ModelName"] then asserts.AssertModelName(struct["ModelName"]) end
	if struct["ModelArn"] then asserts.AssertModelArn(struct["ModelArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.ModelSummary[k], "ModelSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModelSummary
-- <p>Provides summary information about a model.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CreationTime [Timestamp] <p>A timestamp that indicates when the model was created.</p>
-- * ModelName [ModelName] <p>The name of the model that you want a summary for.</p>
-- * ModelArn [ModelArn] <p>The Amazon Resource Name (ARN) of the model.</p>
-- Required key: ModelName
-- Required key: ModelArn
-- Required key: CreationTime
-- @return ModelSummary structure as a key-value pair table
function M.ModelSummary(args)
	assert(args, "You must provide an argument table when creating ModelSummary")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CreationTime"] = args["CreationTime"],
		["ModelName"] = args["ModelName"],
		["ModelArn"] = args["ModelArn"],
	}
	asserts.AssertModelSummary(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateEndpointOutput = { ["EndpointArn"] = true, nil }

function asserts.AssertUpdateEndpointOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateEndpointOutput to be of type 'table'")
	assert(struct["EndpointArn"], "Expected key EndpointArn to exist in table")
	if struct["EndpointArn"] then asserts.AssertEndpointArn(struct["EndpointArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateEndpointOutput[k], "UpdateEndpointOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateEndpointOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EndpointArn [EndpointArn] <p>The Amazon Resource Name (ARN) of the endpoint.</p>
-- Required key: EndpointArn
-- @return UpdateEndpointOutput structure as a key-value pair table
function M.UpdateEndpointOutput(args)
	assert(args, "You must provide an argument table when creating UpdateEndpointOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EndpointArn"] = args["EndpointArn"],
	}
	asserts.AssertUpdateEndpointOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeTransformJobResponse = { ["TransformJobStatus"] = true, ["ModelName"] = true, ["TransformJobName"] = true, ["TransformResources"] = true, ["TransformEndTime"] = true, ["CreationTime"] = true, ["TransformStartTime"] = true, ["Environment"] = true, ["MaxConcurrentTransforms"] = true, ["BatchStrategy"] = true, ["TransformOutput"] = true, ["TransformInput"] = true, ["TransformJobArn"] = true, ["MaxPayloadInMB"] = true, ["FailureReason"] = true, nil }

function asserts.AssertDescribeTransformJobResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTransformJobResponse to be of type 'table'")
	assert(struct["TransformJobName"], "Expected key TransformJobName to exist in table")
	assert(struct["TransformJobArn"], "Expected key TransformJobArn to exist in table")
	assert(struct["TransformJobStatus"], "Expected key TransformJobStatus to exist in table")
	assert(struct["ModelName"], "Expected key ModelName to exist in table")
	assert(struct["TransformInput"], "Expected key TransformInput to exist in table")
	assert(struct["TransformResources"], "Expected key TransformResources to exist in table")
	assert(struct["CreationTime"], "Expected key CreationTime to exist in table")
	if struct["TransformJobStatus"] then asserts.AssertTransformJobStatus(struct["TransformJobStatus"]) end
	if struct["ModelName"] then asserts.AssertModelName(struct["ModelName"]) end
	if struct["TransformJobName"] then asserts.AssertTransformJobName(struct["TransformJobName"]) end
	if struct["TransformResources"] then asserts.AssertTransformResources(struct["TransformResources"]) end
	if struct["TransformEndTime"] then asserts.AssertTimestamp(struct["TransformEndTime"]) end
	if struct["CreationTime"] then asserts.AssertTimestamp(struct["CreationTime"]) end
	if struct["TransformStartTime"] then asserts.AssertTimestamp(struct["TransformStartTime"]) end
	if struct["Environment"] then asserts.AssertTransformEnvironmentMap(struct["Environment"]) end
	if struct["MaxConcurrentTransforms"] then asserts.AssertMaxConcurrentTransforms(struct["MaxConcurrentTransforms"]) end
	if struct["BatchStrategy"] then asserts.AssertBatchStrategy(struct["BatchStrategy"]) end
	if struct["TransformOutput"] then asserts.AssertTransformOutput(struct["TransformOutput"]) end
	if struct["TransformInput"] then asserts.AssertTransformInput(struct["TransformInput"]) end
	if struct["TransformJobArn"] then asserts.AssertTransformJobArn(struct["TransformJobArn"]) end
	if struct["MaxPayloadInMB"] then asserts.AssertMaxPayloadInMB(struct["MaxPayloadInMB"]) end
	if struct["FailureReason"] then asserts.AssertFailureReason(struct["FailureReason"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeTransformJobResponse[k], "DescribeTransformJobResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTransformJobResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TransformJobStatus [TransformJobStatus] <p>The status of the transform job. If the transform job failed, the reason is returned in the <code>FailureReason</code> field.</p>
-- * ModelName [ModelName] <p>The name of the model used in the transform job.</p>
-- * TransformJobName [TransformJobName] <p>The name of the transform job.</p>
-- * TransformResources [TransformResources] <p>Describes the resources, including ML instance types and ML instance count, to use for the transform job.</p>
-- * TransformEndTime [Timestamp] <p>Indicates when the transform job is <code>Completed</code>, <code>Stopped</code>, or <code>Failed</code>. You are billed for the time interval between this time and the value of <code>TransformStartTime</code>.</p>
-- * CreationTime [Timestamp] <p>A timestamp that shows when the transform Job was created.</p>
-- * TransformStartTime [Timestamp] <p>Indicates when the transform job starts on ML instances. You are billed for the time interval between this time and the value of <code>TransformEndTime</code>.</p>
-- * Environment [TransformEnvironmentMap] <p/>
-- * MaxConcurrentTransforms [MaxConcurrentTransforms] <p>The maximum number of parallel requests on each instance node that can be launched in a transform job. The default value is 1.</p>
-- * BatchStrategy [BatchStrategy] <p>SingleRecord means only one record was used per a batch. <code>MultiRecord</code> means batches contained as many records that could possibly fit within the <code>MaxPayloadInMB</code> limit.</p>
-- * TransformOutput [TransformOutput] <p>Identifies the Amazon S3 location where you want Amazon SageMaker to save the results from the transform job.</p>
-- * TransformInput [TransformInput] <p>Describes the dataset to be transformed and the Amazon S3 location where it is stored.</p>
-- * TransformJobArn [TransformJobArn] <p>The Amazon Resource Name (ARN) of the transform job.</p>
-- * MaxPayloadInMB [MaxPayloadInMB] <p>The maximum payload size , in MB used in the transform job.</p>
-- * FailureReason [FailureReason] <p>If the transform job failed, the reason that it failed.</p>
-- Required key: TransformJobName
-- Required key: TransformJobArn
-- Required key: TransformJobStatus
-- Required key: ModelName
-- Required key: TransformInput
-- Required key: TransformResources
-- Required key: CreationTime
-- @return DescribeTransformJobResponse structure as a key-value pair table
function M.DescribeTransformJobResponse(args)
	assert(args, "You must provide an argument table when creating DescribeTransformJobResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TransformJobStatus"] = args["TransformJobStatus"],
		["ModelName"] = args["ModelName"],
		["TransformJobName"] = args["TransformJobName"],
		["TransformResources"] = args["TransformResources"],
		["TransformEndTime"] = args["TransformEndTime"],
		["CreationTime"] = args["CreationTime"],
		["TransformStartTime"] = args["TransformStartTime"],
		["Environment"] = args["Environment"],
		["MaxConcurrentTransforms"] = args["MaxConcurrentTransforms"],
		["BatchStrategy"] = args["BatchStrategy"],
		["TransformOutput"] = args["TransformOutput"],
		["TransformInput"] = args["TransformInput"],
		["TransformJobArn"] = args["TransformJobArn"],
		["MaxPayloadInMB"] = args["MaxPayloadInMB"],
		["FailureReason"] = args["FailureReason"],
	}
	asserts.AssertDescribeTransformJobResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TransformJobSummary = { ["TransformJobStatus"] = true, ["TransformJobName"] = true, ["TransformEndTime"] = true, ["CreationTime"] = true, ["TransformJobArn"] = true, ["LastModifiedTime"] = true, ["FailureReason"] = true, nil }

function asserts.AssertTransformJobSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TransformJobSummary to be of type 'table'")
	assert(struct["TransformJobName"], "Expected key TransformJobName to exist in table")
	assert(struct["TransformJobArn"], "Expected key TransformJobArn to exist in table")
	assert(struct["CreationTime"], "Expected key CreationTime to exist in table")
	assert(struct["TransformJobStatus"], "Expected key TransformJobStatus to exist in table")
	if struct["TransformJobStatus"] then asserts.AssertTransformJobStatus(struct["TransformJobStatus"]) end
	if struct["TransformJobName"] then asserts.AssertTransformJobName(struct["TransformJobName"]) end
	if struct["TransformEndTime"] then asserts.AssertTimestamp(struct["TransformEndTime"]) end
	if struct["CreationTime"] then asserts.AssertTimestamp(struct["CreationTime"]) end
	if struct["TransformJobArn"] then asserts.AssertTransformJobArn(struct["TransformJobArn"]) end
	if struct["LastModifiedTime"] then asserts.AssertTimestamp(struct["LastModifiedTime"]) end
	if struct["FailureReason"] then asserts.AssertFailureReason(struct["FailureReason"]) end
	for k,_ in pairs(struct) do
		assert(keys.TransformJobSummary[k], "TransformJobSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TransformJobSummary
-- <p>Provides a summary of a transform job. Multiple TransformJobSummary objects are returned as a list after calling <a>ListTransformJobs</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TransformJobStatus [TransformJobStatus] <p>The status of the transform job.</p>
-- * TransformJobName [TransformJobName] <p>The name of the transform job.</p>
-- * TransformEndTime [Timestamp] <p>Indicates when the transform job ends on compute instances. For successful jobs and stopped jobs, this is the exact time recorded after the results are uploaded. For failed jobs, this is when Amazon SageMaker detected that the job failed.</p>
-- * CreationTime [Timestamp] <p>A timestamp that shows when the transform Job was created.</p>
-- * TransformJobArn [TransformJobArn] <p>The Amazon Resource Name (ARN) of the transform job.</p>
-- * LastModifiedTime [Timestamp] <p>Indicates when the transform job was last modified.</p>
-- * FailureReason [FailureReason] <p>If the transform job failed, the reason it failed.</p>
-- Required key: TransformJobName
-- Required key: TransformJobArn
-- Required key: CreationTime
-- Required key: TransformJobStatus
-- @return TransformJobSummary structure as a key-value pair table
function M.TransformJobSummary(args)
	assert(args, "You must provide an argument table when creating TransformJobSummary")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TransformJobStatus"] = args["TransformJobStatus"],
		["TransformJobName"] = args["TransformJobName"],
		["TransformEndTime"] = args["TransformEndTime"],
		["CreationTime"] = args["CreationTime"],
		["TransformJobArn"] = args["TransformJobArn"],
		["LastModifiedTime"] = args["LastModifiedTime"],
		["FailureReason"] = args["FailureReason"],
	}
	asserts.AssertTransformJobSummary(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListTrainingJobsForHyperParameterTuningJobResponse = { ["TrainingJobSummaries"] = true, ["NextToken"] = true, nil }

function asserts.AssertListTrainingJobsForHyperParameterTuningJobResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTrainingJobsForHyperParameterTuningJobResponse to be of type 'table'")
	assert(struct["TrainingJobSummaries"], "Expected key TrainingJobSummaries to exist in table")
	if struct["TrainingJobSummaries"] then asserts.AssertHyperParameterTrainingJobSummaries(struct["TrainingJobSummaries"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTrainingJobsForHyperParameterTuningJobResponse[k], "ListTrainingJobsForHyperParameterTuningJobResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTrainingJobsForHyperParameterTuningJobResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TrainingJobSummaries [HyperParameterTrainingJobSummaries] <p>A list of <a>TrainingJobSummary</a> objects that describe the training jobs that the <code>ListTrainingJobsForHyperParameterTuningJob</code> request returned.</p>
-- * NextToken [NextToken] <p>If the result of this <code>ListTrainingJobsForHyperParameterTuningJob</code> request was truncated, the response includes a <code>NextToken</code>. To retrieve the next set of training jobs, use the token in the next request.</p>
-- Required key: TrainingJobSummaries
-- @return ListTrainingJobsForHyperParameterTuningJobResponse structure as a key-value pair table
function M.ListTrainingJobsForHyperParameterTuningJobResponse(args)
	assert(args, "You must provide an argument table when creating ListTrainingJobsForHyperParameterTuningJobResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TrainingJobSummaries"] = args["TrainingJobSummaries"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListTrainingJobsForHyperParameterTuningJobResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ModelArtifacts = { ["S3ModelArtifacts"] = true, nil }

function asserts.AssertModelArtifacts(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModelArtifacts to be of type 'table'")
	assert(struct["S3ModelArtifacts"], "Expected key S3ModelArtifacts to exist in table")
	if struct["S3ModelArtifacts"] then asserts.AssertS3Uri(struct["S3ModelArtifacts"]) end
	for k,_ in pairs(struct) do
		assert(keys.ModelArtifacts[k], "ModelArtifacts contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModelArtifacts
-- <p>Provides information about the location that is configured for storing model artifacts. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * S3ModelArtifacts [S3Uri] <p>The path of the S3 object that contains the model artifacts. For example, <code>s3://bucket-name/keynameprefix/model.tar.gz</code>.</p>
-- Required key: S3ModelArtifacts
-- @return ModelArtifacts structure as a key-value pair table
function M.ModelArtifacts(args)
	assert(args, "You must provide an argument table when creating ModelArtifacts")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["S3ModelArtifacts"] = args["S3ModelArtifacts"],
	}
	asserts.AssertModelArtifacts(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeEndpointOutput = { ["EndpointConfigName"] = true, ["CreationTime"] = true, ["ProductionVariants"] = true, ["EndpointName"] = true, ["EndpointArn"] = true, ["LastModifiedTime"] = true, ["FailureReason"] = true, ["EndpointStatus"] = true, nil }

function asserts.AssertDescribeEndpointOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEndpointOutput to be of type 'table'")
	assert(struct["EndpointName"], "Expected key EndpointName to exist in table")
	assert(struct["EndpointArn"], "Expected key EndpointArn to exist in table")
	assert(struct["EndpointConfigName"], "Expected key EndpointConfigName to exist in table")
	assert(struct["EndpointStatus"], "Expected key EndpointStatus to exist in table")
	assert(struct["CreationTime"], "Expected key CreationTime to exist in table")
	assert(struct["LastModifiedTime"], "Expected key LastModifiedTime to exist in table")
	if struct["EndpointConfigName"] then asserts.AssertEndpointConfigName(struct["EndpointConfigName"]) end
	if struct["CreationTime"] then asserts.AssertTimestamp(struct["CreationTime"]) end
	if struct["ProductionVariants"] then asserts.AssertProductionVariantSummaryList(struct["ProductionVariants"]) end
	if struct["EndpointName"] then asserts.AssertEndpointName(struct["EndpointName"]) end
	if struct["EndpointArn"] then asserts.AssertEndpointArn(struct["EndpointArn"]) end
	if struct["LastModifiedTime"] then asserts.AssertTimestamp(struct["LastModifiedTime"]) end
	if struct["FailureReason"] then asserts.AssertFailureReason(struct["FailureReason"]) end
	if struct["EndpointStatus"] then asserts.AssertEndpointStatus(struct["EndpointStatus"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeEndpointOutput[k], "DescribeEndpointOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEndpointOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EndpointConfigName [EndpointConfigName] <p>The name of the endpoint configuration associated with this endpoint.</p>
-- * CreationTime [Timestamp] <p>A timestamp that shows when the endpoint was created.</p>
-- * ProductionVariants [ProductionVariantSummaryList] <p> An array of <a>ProductionVariantSummary</a> objects, one for each model hosted behind this endpoint. </p>
-- * EndpointName [EndpointName] <p>Name of the endpoint.</p>
-- * EndpointArn [EndpointArn] <p>The Amazon Resource Name (ARN) of the endpoint.</p>
-- * LastModifiedTime [Timestamp] <p>A timestamp that shows when the endpoint was last modified.</p>
-- * FailureReason [FailureReason] <p>If the status of the endpoint is <code>Failed</code>, the reason why it failed. </p>
-- * EndpointStatus [EndpointStatus] <p>The status of the endpoint.</p> <ul> <li> <p> <code>OutOfService</code>: Endpoint is not available to take incoming requests.</p> </li> <li> <p> <code>Creating</code>: <a>CreateEndpoint</a> is executing.</p> </li> <li> <p> <code>Updating</code>: <a>UpdateEndpoint</a> or <a>UpdateEndpointWeightsAndCapacities</a> is executing.</p> </li> <li> <p> <code>SystemUpdating</code>: Endpoint is undergoing maintenance and cannot be updated or deleted or re-scaled until it has completed. This maintenance operation does not change any customer-specified values such as VPC config, KMS encryption, model, instance type, or instance count.</p> </li> <li> <p> <code>RollingBack</code>: Endpoint fails to scale up or down or change its variant weight and is in the process of rolling back to its previous configuration. Once the rollback completes, endpoint returns to an <code>InService</code> status. This transitional status only applies to an endpoint that has autoscaling enabled and is undergoing variant weight or capacity changes as part of an <a>UpdateEndpointWeightsAndCapacities</a> call or when the <a>UpdateEndpointWeightsAndCapacities</a> operation is called explicitly.</p> </li> <li> <p> <code>InService</code>: Endpoint is available to process incoming requests.</p> </li> <li> <p> <code>Deleting</code>: <a>DeleteEndpoint</a> is executing.</p> </li> <li> <p> <code>Failed</code>: Endpoint could not be created, updated, or re-scaled. Use <a>DescribeEndpointOutput$FailureReason</a> for information about the failure. <a>DeleteEndpoint</a> is the only operation that can be performed on a failed endpoint.</p> </li> </ul>
-- Required key: EndpointName
-- Required key: EndpointArn
-- Required key: EndpointConfigName
-- Required key: EndpointStatus
-- Required key: CreationTime
-- Required key: LastModifiedTime
-- @return DescribeEndpointOutput structure as a key-value pair table
function M.DescribeEndpointOutput(args)
	assert(args, "You must provide an argument table when creating DescribeEndpointOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EndpointConfigName"] = args["EndpointConfigName"],
		["CreationTime"] = args["CreationTime"],
		["ProductionVariants"] = args["ProductionVariants"],
		["EndpointName"] = args["EndpointName"],
		["EndpointArn"] = args["EndpointArn"],
		["LastModifiedTime"] = args["LastModifiedTime"],
		["FailureReason"] = args["FailureReason"],
		["EndpointStatus"] = args["EndpointStatus"],
	}
	asserts.AssertDescribeEndpointOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateEndpointInput = { ["EndpointName"] = true, ["EndpointConfigName"] = true, ["Tags"] = true, nil }

function asserts.AssertCreateEndpointInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateEndpointInput to be of type 'table'")
	assert(struct["EndpointName"], "Expected key EndpointName to exist in table")
	assert(struct["EndpointConfigName"], "Expected key EndpointConfigName to exist in table")
	if struct["EndpointName"] then asserts.AssertEndpointName(struct["EndpointName"]) end
	if struct["EndpointConfigName"] then asserts.AssertEndpointConfigName(struct["EndpointConfigName"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateEndpointInput[k], "CreateEndpointInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateEndpointInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EndpointName [EndpointName] <p>The name of the endpoint. The name must be unique within an AWS Region in your AWS account.</p>
-- * EndpointConfigName [EndpointConfigName] <p>The name of an endpoint configuration. For more information, see <a href="http://docs.aws.amazon.com/sagemaker/latest/dg/API_CreateEndpointConfig.html">CreateEndpointConfig</a>. </p>
-- * Tags [TagList] <p>An array of key-value pairs. For more information, see <a href="http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html#allocation-what">Using Cost Allocation Tags</a>in the <i>AWS Billing and Cost Management User Guide</i>. </p>
-- Required key: EndpointName
-- Required key: EndpointConfigName
-- @return CreateEndpointInput structure as a key-value pair table
function M.CreateEndpointInput(args)
	assert(args, "You must provide an argument table when creating CreateEndpointInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EndpointName"] = args["EndpointName"],
		["EndpointConfigName"] = args["EndpointConfigName"],
		["Tags"] = args["Tags"],
	}
	asserts.AssertCreateEndpointInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListEndpointConfigsInput = { ["CreationTimeAfter"] = true, ["CreationTimeBefore"] = true, ["MaxResults"] = true, ["NameContains"] = true, ["SortBy"] = true, ["NextToken"] = true, ["SortOrder"] = true, nil }

function asserts.AssertListEndpointConfigsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListEndpointConfigsInput to be of type 'table'")
	if struct["CreationTimeAfter"] then asserts.AssertTimestamp(struct["CreationTimeAfter"]) end
	if struct["CreationTimeBefore"] then asserts.AssertTimestamp(struct["CreationTimeBefore"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	if struct["NameContains"] then asserts.AssertEndpointConfigNameContains(struct["NameContains"]) end
	if struct["SortBy"] then asserts.AssertEndpointConfigSortKey(struct["SortBy"]) end
	if struct["NextToken"] then asserts.AssertPaginationToken(struct["NextToken"]) end
	if struct["SortOrder"] then asserts.AssertOrderKey(struct["SortOrder"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListEndpointConfigsInput[k], "ListEndpointConfigsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListEndpointConfigsInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CreationTimeAfter [Timestamp] <p>A filter that returns only endpoint configurations created after the specified time (timestamp).</p>
-- * CreationTimeBefore [Timestamp] <p>A filter that returns only endpoint configurations created before the specified time (timestamp).</p>
-- * MaxResults [MaxResults] <p>The maximum number of training jobs to return in the response.</p>
-- * NameContains [EndpointConfigNameContains] <p>A string in the endpoint configuration name. This filter returns only endpoint configurations whose name contains the specified string. </p>
-- * SortBy [EndpointConfigSortKey] <p>The field to sort results by. The default is <code>CreationTime</code>.</p>
-- * NextToken [PaginationToken] <p>If the result of the previous <code>ListEndpointConfig</code> request was truncated, the response includes a <code>NextToken</code>. To retrieve the next set of endpoint configurations, use the token in the next request. </p>
-- * SortOrder [OrderKey] <p>The sort order for results. The default is <code>Ascending</code>.</p>
-- @return ListEndpointConfigsInput structure as a key-value pair table
function M.ListEndpointConfigsInput(args)
	assert(args, "You must provide an argument table when creating ListEndpointConfigsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CreationTimeAfter"] = args["CreationTimeAfter"],
		["CreationTimeBefore"] = args["CreationTimeBefore"],
		["MaxResults"] = args["MaxResults"],
		["NameContains"] = args["NameContains"],
		["SortBy"] = args["SortBy"],
		["NextToken"] = args["NextToken"],
		["SortOrder"] = args["SortOrder"],
	}
	asserts.AssertListEndpointConfigsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteTagsOutput = { nil }

function asserts.AssertDeleteTagsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteTagsOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteTagsOutput[k], "DeleteTagsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteTagsOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
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
	}
	asserts.AssertDeleteTagsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

function asserts.AssertNotebookInstanceLifecycleConfigNameContains(str)
	assert(str)
	assert(type(str) == "string", "Expected NotebookInstanceLifecycleConfigNameContains to be of type 'string'")
end

--  
function M.NotebookInstanceLifecycleConfigNameContains(str)
	asserts.AssertNotebookInstanceLifecycleConfigNameContains(str)
	return str
end

function asserts.AssertEndpointConfigArn(str)
	assert(str)
	assert(type(str) == "string", "Expected EndpointConfigArn to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
	assert(#str >= 20, "Expected string to be min 20 characters")
end

--  
function M.EndpointConfigArn(str)
	asserts.AssertEndpointConfigArn(str)
	return str
end

function asserts.AssertEndpointArn(str)
	assert(str)
	assert(type(str) == "string", "Expected EndpointArn to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
	assert(#str >= 20, "Expected string to be min 20 characters")
end

--  
function M.EndpointArn(str)
	asserts.AssertEndpointArn(str)
	return str
end

function asserts.AssertTrainingInstanceType(str)
	assert(str)
	assert(type(str) == "string", "Expected TrainingInstanceType to be of type 'string'")
end

--  
function M.TrainingInstanceType(str)
	asserts.AssertTrainingInstanceType(str)
	return str
end

function asserts.AssertNotebookInstanceLifecycleConfigSortOrder(str)
	assert(str)
	assert(type(str) == "string", "Expected NotebookInstanceLifecycleConfigSortOrder to be of type 'string'")
end

--  
function M.NotebookInstanceLifecycleConfigSortOrder(str)
	asserts.AssertNotebookInstanceLifecycleConfigSortOrder(str)
	return str
end

function asserts.AssertEndpointConfigNameContains(str)
	assert(str)
	assert(type(str) == "string", "Expected EndpointConfigNameContains to be of type 'string'")
end

--  
function M.EndpointConfigNameContains(str)
	asserts.AssertEndpointConfigNameContains(str)
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

function asserts.AssertNotebookInstanceStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected NotebookInstanceStatus to be of type 'string'")
end

--  
function M.NotebookInstanceStatus(str)
	asserts.AssertNotebookInstanceStatus(str)
	return str
end

function asserts.AssertParameterKey(str)
	assert(str)
	assert(type(str) == "string", "Expected ParameterKey to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
end

--  
function M.ParameterKey(str)
	asserts.AssertParameterKey(str)
	return str
end

function asserts.AssertModelNameContains(str)
	assert(str)
	assert(type(str) == "string", "Expected ModelNameContains to be of type 'string'")
end

--  
function M.ModelNameContains(str)
	asserts.AssertModelNameContains(str)
	return str
end

function asserts.AssertEndpointNameContains(str)
	assert(str)
	assert(type(str) == "string", "Expected EndpointNameContains to be of type 'string'")
end

--  
function M.EndpointNameContains(str)
	asserts.AssertEndpointNameContains(str)
	return str
end

function asserts.AssertTransformJobName(str)
	assert(str)
	assert(type(str) == "string", "Expected TransformJobName to be of type 'string'")
	assert(#str <= 63, "Expected string to be max 63 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.TransformJobName(str)
	asserts.AssertTransformJobName(str)
	return str
end

function asserts.AssertModelArn(str)
	assert(str)
	assert(type(str) == "string", "Expected ModelArn to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
	assert(#str >= 20, "Expected string to be min 20 characters")
end

--  
function M.ModelArn(str)
	asserts.AssertModelArn(str)
	return str
end

function asserts.AssertS3DataDistribution(str)
	assert(str)
	assert(type(str) == "string", "Expected S3DataDistribution to be of type 'string'")
end

--  
function M.S3DataDistribution(str)
	asserts.AssertS3DataDistribution(str)
	return str
end

function asserts.AssertHyperParameterTuningJobStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected HyperParameterTuningJobStatus to be of type 'string'")
end

--  
function M.HyperParameterTuningJobStatus(str)
	asserts.AssertHyperParameterTuningJobStatus(str)
	return str
end

function asserts.AssertHyperParameterTuningJobName(str)
	assert(str)
	assert(type(str) == "string", "Expected HyperParameterTuningJobName to be of type 'string'")
	assert(#str <= 32, "Expected string to be max 32 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.HyperParameterTuningJobName(str)
	asserts.AssertHyperParameterTuningJobName(str)
	return str
end

function asserts.AssertContainerHostname(str)
	assert(str)
	assert(type(str) == "string", "Expected ContainerHostname to be of type 'string'")
	assert(#str <= 63, "Expected string to be max 63 characters")
end

--  
function M.ContainerHostname(str)
	asserts.AssertContainerHostname(str)
	return str
end

function asserts.AssertStatusMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected StatusMessage to be of type 'string'")
end

--  
function M.StatusMessage(str)
	asserts.AssertStatusMessage(str)
	return str
end

function asserts.AssertProductionVariantInstanceType(str)
	assert(str)
	assert(type(str) == "string", "Expected ProductionVariantInstanceType to be of type 'string'")
end

--  
function M.ProductionVariantInstanceType(str)
	asserts.AssertProductionVariantInstanceType(str)
	return str
end

function asserts.AssertTransformJobArn(str)
	assert(str)
	assert(type(str) == "string", "Expected TransformJobArn to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
end

--  
function M.TransformJobArn(str)
	asserts.AssertTransformJobArn(str)
	return str
end

function asserts.AssertHyperParameterTuningJobArn(str)
	assert(str)
	assert(type(str) == "string", "Expected HyperParameterTuningJobArn to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
end

--  
function M.HyperParameterTuningJobArn(str)
	asserts.AssertHyperParameterTuningJobArn(str)
	return str
end

function asserts.AssertModelName(str)
	assert(str)
	assert(type(str) == "string", "Expected ModelName to be of type 'string'")
	assert(#str <= 63, "Expected string to be max 63 characters")
end

--  
function M.ModelName(str)
	asserts.AssertModelName(str)
	return str
end

function asserts.AssertPaginationToken(str)
	assert(str)
	assert(type(str) == "string", "Expected PaginationToken to be of type 'string'")
	assert(#str <= 8192, "Expected string to be max 8192 characters")
end

--  
function M.PaginationToken(str)
	asserts.AssertPaginationToken(str)
	return str
end

function asserts.AssertMetricName(str)
	assert(str)
	assert(type(str) == "string", "Expected MetricName to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.MetricName(str)
	asserts.AssertMetricName(str)
	return str
end

function asserts.AssertS3DataType(str)
	assert(str)
	assert(type(str) == "string", "Expected S3DataType to be of type 'string'")
end

--  
function M.S3DataType(str)
	asserts.AssertS3DataType(str)
	return str
end

function asserts.AssertEndpointSortKey(str)
	assert(str)
	assert(type(str) == "string", "Expected EndpointSortKey to be of type 'string'")
end

--  
function M.EndpointSortKey(str)
	asserts.AssertEndpointSortKey(str)
	return str
end

function asserts.AssertEndpointConfigName(str)
	assert(str)
	assert(type(str) == "string", "Expected EndpointConfigName to be of type 'string'")
	assert(#str <= 63, "Expected string to be max 63 characters")
end

--  
function M.EndpointConfigName(str)
	asserts.AssertEndpointConfigName(str)
	return str
end

function asserts.AssertNotebookInstanceName(str)
	assert(str)
	assert(type(str) == "string", "Expected NotebookInstanceName to be of type 'string'")
	assert(#str <= 63, "Expected string to be max 63 characters")
end

--  
function M.NotebookInstanceName(str)
	asserts.AssertNotebookInstanceName(str)
	return str
end

function asserts.AssertResourceArn(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceArn to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
end

--  
function M.ResourceArn(str)
	asserts.AssertResourceArn(str)
	return str
end

function asserts.AssertSubnetId(str)
	assert(str)
	assert(type(str) == "string", "Expected SubnetId to be of type 'string'")
	assert(#str <= 32, "Expected string to be max 32 characters")
end

--  
function M.SubnetId(str)
	asserts.AssertSubnetId(str)
	return str
end

function asserts.AssertFailureReason(str)
	assert(str)
	assert(type(str) == "string", "Expected FailureReason to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
end

--  
function M.FailureReason(str)
	asserts.AssertFailureReason(str)
	return str
end

function asserts.AssertNotebookInstanceLifecycleConfigArn(str)
	assert(str)
	assert(type(str) == "string", "Expected NotebookInstanceLifecycleConfigArn to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
end

--  
function M.NotebookInstanceLifecycleConfigArn(str)
	asserts.AssertNotebookInstanceLifecycleConfigArn(str)
	return str
end

function asserts.AssertTransformJobStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected TransformJobStatus to be of type 'string'")
end

--  
function M.TransformJobStatus(str)
	asserts.AssertTransformJobStatus(str)
	return str
end

function asserts.AssertNotebookInstanceLifecycleConfigSortKey(str)
	assert(str)
	assert(type(str) == "string", "Expected NotebookInstanceLifecycleConfigSortKey to be of type 'string'")
end

--  
function M.NotebookInstanceLifecycleConfigSortKey(str)
	asserts.AssertNotebookInstanceLifecycleConfigSortKey(str)
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

function asserts.AssertModelSortKey(str)
	assert(str)
	assert(type(str) == "string", "Expected ModelSortKey to be of type 'string'")
end

--  
function M.ModelSortKey(str)
	asserts.AssertModelSortKey(str)
	return str
end

function asserts.AssertTransformInstanceType(str)
	assert(str)
	assert(type(str) == "string", "Expected TransformInstanceType to be of type 'string'")
end

--  
function M.TransformInstanceType(str)
	asserts.AssertTransformInstanceType(str)
	return str
end

function asserts.AssertImage(str)
	assert(str)
	assert(type(str) == "string", "Expected Image to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
end

--  
function M.Image(str)
	asserts.AssertImage(str)
	return str
end

function asserts.AssertSecurityGroupId(str)
	assert(str)
	assert(type(str) == "string", "Expected SecurityGroupId to be of type 'string'")
	assert(#str <= 32, "Expected string to be max 32 characters")
end

--  
function M.SecurityGroupId(str)
	asserts.AssertSecurityGroupId(str)
	return str
end

function asserts.AssertTrainingJobSortByOptions(str)
	assert(str)
	assert(type(str) == "string", "Expected TrainingJobSortByOptions to be of type 'string'")
end

--  
function M.TrainingJobSortByOptions(str)
	asserts.AssertTrainingJobSortByOptions(str)
	return str
end

function asserts.AssertParameterValue(str)
	assert(str)
	assert(type(str) == "string", "Expected ParameterValue to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
end

--  
function M.ParameterValue(str)
	asserts.AssertParameterValue(str)
	return str
end

function asserts.AssertTrainingJobStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected TrainingJobStatus to be of type 'string'")
end

--  
function M.TrainingJobStatus(str)
	asserts.AssertTrainingJobStatus(str)
	return str
end

function asserts.AssertKmsKeyId(str)
	assert(str)
	assert(type(str) == "string", "Expected KmsKeyId to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
end

--  
function M.KmsKeyId(str)
	asserts.AssertKmsKeyId(str)
	return str
end

function asserts.AssertEnvironmentKey(str)
	assert(str)
	assert(type(str) == "string", "Expected EnvironmentKey to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
end

--  
function M.EnvironmentKey(str)
	asserts.AssertEnvironmentKey(str)
	return str
end

function asserts.AssertEndpointStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected EndpointStatus to be of type 'string'")
end

--  
function M.EndpointStatus(str)
	asserts.AssertEndpointStatus(str)
	return str
end

function asserts.AssertCompressionType(str)
	assert(str)
	assert(type(str) == "string", "Expected CompressionType to be of type 'string'")
end

--  
function M.CompressionType(str)
	asserts.AssertCompressionType(str)
	return str
end

function asserts.AssertBatchStrategy(str)
	assert(str)
	assert(type(str) == "string", "Expected BatchStrategy to be of type 'string'")
end

--  
function M.BatchStrategy(str)
	asserts.AssertBatchStrategy(str)
	return str
end

function asserts.AssertEnvironmentValue(str)
	assert(str)
	assert(type(str) == "string", "Expected EnvironmentValue to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
end

--  
function M.EnvironmentValue(str)
	asserts.AssertEnvironmentValue(str)
	return str
end

function asserts.AssertNotebookInstanceSortOrder(str)
	assert(str)
	assert(type(str) == "string", "Expected NotebookInstanceSortOrder to be of type 'string'")
end

--  
function M.NotebookInstanceSortOrder(str)
	asserts.AssertNotebookInstanceSortOrder(str)
	return str
end

function asserts.AssertAssemblyType(str)
	assert(str)
	assert(type(str) == "string", "Expected AssemblyType to be of type 'string'")
end

--  
function M.AssemblyType(str)
	asserts.AssertAssemblyType(str)
	return str
end

function asserts.AssertNotebookInstanceArn(str)
	assert(str)
	assert(type(str) == "string", "Expected NotebookInstanceArn to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
end

--  
function M.NotebookInstanceArn(str)
	asserts.AssertNotebookInstanceArn(str)
	return str
end

function asserts.AssertRecordWrapper(str)
	assert(str)
	assert(type(str) == "string", "Expected RecordWrapper to be of type 'string'")
end

--  
function M.RecordWrapper(str)
	asserts.AssertRecordWrapper(str)
	return str
end

function asserts.AssertNotebookInstanceLifecycleConfigName(str)
	assert(str)
	assert(type(str) == "string", "Expected NotebookInstanceLifecycleConfigName to be of type 'string'")
	assert(#str <= 63, "Expected string to be max 63 characters")
end

--  
function M.NotebookInstanceLifecycleConfigName(str)
	asserts.AssertNotebookInstanceLifecycleConfigName(str)
	return str
end

function asserts.AssertSortOrder(str)
	assert(str)
	assert(type(str) == "string", "Expected SortOrder to be of type 'string'")
end

--  
function M.SortOrder(str)
	asserts.AssertSortOrder(str)
	return str
end

function asserts.AssertSecondaryStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected SecondaryStatus to be of type 'string'")
end

--  
function M.SecondaryStatus(str)
	asserts.AssertSecondaryStatus(str)
	return str
end

function asserts.AssertInstanceType(str)
	assert(str)
	assert(type(str) == "string", "Expected InstanceType to be of type 'string'")
end

--  
function M.InstanceType(str)
	asserts.AssertInstanceType(str)
	return str
end

function asserts.AssertRoleArn(str)
	assert(str)
	assert(type(str) == "string", "Expected RoleArn to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
	assert(#str >= 20, "Expected string to be min 20 characters")
end

--  
function M.RoleArn(str)
	asserts.AssertRoleArn(str)
	return str
end

function asserts.AssertOrderKey(str)
	assert(str)
	assert(type(str) == "string", "Expected OrderKey to be of type 'string'")
end

--  
function M.OrderKey(str)
	asserts.AssertOrderKey(str)
	return str
end

function asserts.AssertSplitType(str)
	assert(str)
	assert(type(str) == "string", "Expected SplitType to be of type 'string'")
end

--  
function M.SplitType(str)
	asserts.AssertSplitType(str)
	return str
end

function asserts.AssertEndpointConfigSortKey(str)
	assert(str)
	assert(type(str) == "string", "Expected EndpointConfigSortKey to be of type 'string'")
end

--  
function M.EndpointConfigSortKey(str)
	asserts.AssertEndpointConfigSortKey(str)
	return str
end

function asserts.AssertTrainingJobName(str)
	assert(str)
	assert(type(str) == "string", "Expected TrainingJobName to be of type 'string'")
	assert(#str <= 63, "Expected string to be max 63 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.TrainingJobName(str)
	asserts.AssertTrainingJobName(str)
	return str
end

function asserts.AssertHyperParameterTuningJobSortByOptions(str)
	assert(str)
	assert(type(str) == "string", "Expected HyperParameterTuningJobSortByOptions to be of type 'string'")
end

--  
function M.HyperParameterTuningJobSortByOptions(str)
	asserts.AssertHyperParameterTuningJobSortByOptions(str)
	return str
end

function asserts.AssertVariantName(str)
	assert(str)
	assert(type(str) == "string", "Expected VariantName to be of type 'string'")
	assert(#str <= 63, "Expected string to be max 63 characters")
end

--  
function M.VariantName(str)
	asserts.AssertVariantName(str)
	return str
end

function asserts.AssertNameContains(str)
	assert(str)
	assert(type(str) == "string", "Expected NameContains to be of type 'string'")
	assert(#str <= 63, "Expected string to be max 63 characters")
end

--  
function M.NameContains(str)
	asserts.AssertNameContains(str)
	return str
end

function asserts.AssertHyperParameterTuningJobObjectiveType(str)
	assert(str)
	assert(type(str) == "string", "Expected HyperParameterTuningJobObjectiveType to be of type 'string'")
end

--  
function M.HyperParameterTuningJobObjectiveType(str)
	asserts.AssertHyperParameterTuningJobObjectiveType(str)
	return str
end

function asserts.AssertNotebookInstanceNameContains(str)
	assert(str)
	assert(type(str) == "string", "Expected NotebookInstanceNameContains to be of type 'string'")
end

--  
function M.NotebookInstanceNameContains(str)
	asserts.AssertNotebookInstanceNameContains(str)
	return str
end

function asserts.AssertTrainingJobArn(str)
	assert(str)
	assert(type(str) == "string", "Expected TrainingJobArn to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
end

--  
function M.TrainingJobArn(str)
	asserts.AssertTrainingJobArn(str)
	return str
end

function asserts.AssertAlgorithmImage(str)
	assert(str)
	assert(type(str) == "string", "Expected AlgorithmImage to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
end

--  
function M.AlgorithmImage(str)
	asserts.AssertAlgorithmImage(str)
	return str
end

function asserts.AssertNotebookInstanceLifecycleConfigContent(str)
	assert(str)
	assert(type(str) == "string", "Expected NotebookInstanceLifecycleConfigContent to be of type 'string'")
	assert(#str <= 16384, "Expected string to be max 16384 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.NotebookInstanceLifecycleConfigContent(str)
	asserts.AssertNotebookInstanceLifecycleConfigContent(str)
	return str
end

function asserts.AssertMetricRegex(str)
	assert(str)
	assert(type(str) == "string", "Expected MetricRegex to be of type 'string'")
	assert(#str <= 500, "Expected string to be max 500 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.MetricRegex(str)
	asserts.AssertMetricRegex(str)
	return str
end

function asserts.AssertNetworkInterfaceId(str)
	assert(str)
	assert(type(str) == "string", "Expected NetworkInterfaceId to be of type 'string'")
end

--  
function M.NetworkInterfaceId(str)
	asserts.AssertNetworkInterfaceId(str)
	return str
end

function asserts.AssertNextToken(str)
	assert(str)
	assert(type(str) == "string", "Expected NextToken to be of type 'string'")
	assert(#str <= 8192, "Expected string to be max 8192 characters")
end

--  
function M.NextToken(str)
	asserts.AssertNextToken(str)
	return str
end

function asserts.AssertHyperParameterTuningJobStrategyType(str)
	assert(str)
	assert(type(str) == "string", "Expected HyperParameterTuningJobStrategyType to be of type 'string'")
end

-- <p>The strategy hyperparameter tuning uses to find the best combination of hyperparameters for your model. Currently, the only supported value is <code>Bayesian</code>.</p>
function M.HyperParameterTuningJobStrategyType(str)
	asserts.AssertHyperParameterTuningJobStrategyType(str)
	return str
end

function asserts.AssertUrl(str)
	assert(str)
	assert(type(str) == "string", "Expected Url to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
end

--  
function M.Url(str)
	asserts.AssertUrl(str)
	return str
end

function asserts.AssertNotebookInstanceUrl(str)
	assert(str)
	assert(type(str) == "string", "Expected NotebookInstanceUrl to be of type 'string'")
end

--  
function M.NotebookInstanceUrl(str)
	asserts.AssertNotebookInstanceUrl(str)
	return str
end

function asserts.AssertTransformEnvironmentKey(str)
	assert(str)
	assert(type(str) == "string", "Expected TransformEnvironmentKey to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
end

--  
function M.TransformEnvironmentKey(str)
	asserts.AssertTransformEnvironmentKey(str)
	return str
end

function asserts.AssertEndpointName(str)
	assert(str)
	assert(type(str) == "string", "Expected EndpointName to be of type 'string'")
	assert(#str <= 63, "Expected string to be max 63 characters")
end

--  
function M.EndpointName(str)
	asserts.AssertEndpointName(str)
	return str
end

function asserts.AssertS3Uri(str)
	assert(str)
	assert(type(str) == "string", "Expected S3Uri to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
end

--  
function M.S3Uri(str)
	asserts.AssertS3Uri(str)
	return str
end

function asserts.AssertChannelName(str)
	assert(str)
	assert(type(str) == "string", "Expected ChannelName to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ChannelName(str)
	asserts.AssertChannelName(str)
	return str
end

function asserts.AssertNotebookInstanceSortKey(str)
	assert(str)
	assert(type(str) == "string", "Expected NotebookInstanceSortKey to be of type 'string'")
end

--  
function M.NotebookInstanceSortKey(str)
	asserts.AssertNotebookInstanceSortKey(str)
	return str
end

function asserts.AssertTrainingInputMode(str)
	assert(str)
	assert(type(str) == "string", "Expected TrainingInputMode to be of type 'string'")
end

--  
function M.TrainingInputMode(str)
	asserts.AssertTrainingInputMode(str)
	return str
end

function asserts.AssertSortBy(str)
	assert(str)
	assert(type(str) == "string", "Expected SortBy to be of type 'string'")
end

--  
function M.SortBy(str)
	asserts.AssertSortBy(str)
	return str
end

function asserts.AssertContentType(str)
	assert(str)
	assert(type(str) == "string", "Expected ContentType to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
end

--  
function M.ContentType(str)
	asserts.AssertContentType(str)
	return str
end

function asserts.AssertObjectiveStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected ObjectiveStatus to be of type 'string'")
end

--  
function M.ObjectiveStatus(str)
	asserts.AssertObjectiveStatus(str)
	return str
end

function asserts.AssertDirectInternetAccess(str)
	assert(str)
	assert(type(str) == "string", "Expected DirectInternetAccess to be of type 'string'")
end

--  
function M.DirectInternetAccess(str)
	asserts.AssertDirectInternetAccess(str)
	return str
end

function asserts.AssertAccept(str)
	assert(str)
	assert(type(str) == "string", "Expected Accept to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
end

--  
function M.Accept(str)
	asserts.AssertAccept(str)
	return str
end

function asserts.AssertTransformEnvironmentValue(str)
	assert(str)
	assert(type(str) == "string", "Expected TransformEnvironmentValue to be of type 'string'")
	assert(#str <= 10240, "Expected string to be max 10240 characters")
end

--  
function M.TransformEnvironmentValue(str)
	asserts.AssertTransformEnvironmentValue(str)
	return str
end

function asserts.AssertVariantWeight(float)
	assert(float)
	assert(type(float) == "number", "Expected VariantWeight to be of type 'number'")
end

function M.VariantWeight(float)
	asserts.AssertVariantWeight(float)
	return float
end

function asserts.AssertMetricValue(float)
	assert(float)
	assert(type(float) == "number", "Expected MetricValue to be of type 'number'")
end

function M.MetricValue(float)
	asserts.AssertMetricValue(float)
	return float
end

function asserts.AssertMaxPayloadInMB(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxPayloadInMB to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.MaxPayloadInMB(integer)
	asserts.AssertMaxPayloadInMB(integer)
	return integer
end

function asserts.AssertVolumeSizeInGB(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected VolumeSizeInGB to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.VolumeSizeInGB(integer)
	asserts.AssertVolumeSizeInGB(integer)
	return integer
end

function asserts.AssertTrainingInstanceCount(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected TrainingInstanceCount to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.TrainingInstanceCount(integer)
	asserts.AssertTrainingInstanceCount(integer)
	return integer
end

function asserts.AssertMaxRuntimeInSeconds(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxRuntimeInSeconds to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.MaxRuntimeInSeconds(integer)
	asserts.AssertMaxRuntimeInSeconds(integer)
	return integer
end

function asserts.AssertSessionExpirationDurationInSeconds(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected SessionExpirationDurationInSeconds to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 43200, "Expected integer to be max 43200")
	assert(integer >= 1800, "Expected integer to be min 1800")
end

function M.SessionExpirationDurationInSeconds(integer)
	asserts.AssertSessionExpirationDurationInSeconds(integer)
	return integer
end

function asserts.AssertMaxResults(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxResults to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 100, "Expected integer to be max 100")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.MaxResults(integer)
	asserts.AssertMaxResults(integer)
	return integer
end

function asserts.AssertMaxConcurrentTransforms(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxConcurrentTransforms to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.MaxConcurrentTransforms(integer)
	asserts.AssertMaxConcurrentTransforms(integer)
	return integer
end

function asserts.AssertTrainingJobStatusCounter(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected TrainingJobStatusCounter to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.TrainingJobStatusCounter(integer)
	asserts.AssertTrainingJobStatusCounter(integer)
	return integer
end

function asserts.AssertObjectiveStatusCounter(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected ObjectiveStatusCounter to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.ObjectiveStatusCounter(integer)
	asserts.AssertObjectiveStatusCounter(integer)
	return integer
end

function asserts.AssertMaxNumberOfTrainingJobs(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxNumberOfTrainingJobs to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.MaxNumberOfTrainingJobs(integer)
	asserts.AssertMaxNumberOfTrainingJobs(integer)
	return integer
end

function asserts.AssertTaskCount(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected TaskCount to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.TaskCount(integer)
	asserts.AssertTaskCount(integer)
	return integer
end

function asserts.AssertTransformInstanceCount(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected TransformInstanceCount to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.TransformInstanceCount(integer)
	asserts.AssertTransformInstanceCount(integer)
	return integer
end

function asserts.AssertNotebookInstanceVolumeSizeInGB(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected NotebookInstanceVolumeSizeInGB to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 16384, "Expected integer to be max 16384")
	assert(integer >= 5, "Expected integer to be min 5")
end

function M.NotebookInstanceVolumeSizeInGB(integer)
	asserts.AssertNotebookInstanceVolumeSizeInGB(integer)
	return integer
end

function asserts.AssertListTagsMaxResults(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected ListTagsMaxResults to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer >= 50, "Expected integer to be min 50")
end

function M.ListTagsMaxResults(integer)
	asserts.AssertListTagsMaxResults(integer)
	return integer
end

function asserts.AssertMaxParallelTrainingJobs(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxParallelTrainingJobs to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.MaxParallelTrainingJobs(integer)
	asserts.AssertMaxParallelTrainingJobs(integer)
	return integer
end

function asserts.AssertDisassociateNotebookInstanceLifecycleConfig(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected DisassociateNotebookInstanceLifecycleConfig to be of type 'boolean'")
end

function M.DisassociateNotebookInstanceLifecycleConfig(boolean)
	asserts.AssertDisassociateNotebookInstanceLifecycleConfig(boolean)
	return boolean
end

function asserts.AssertTransformEnvironmentMap(map)
	assert(map)
	assert(type(map) == "table", "Expected TransformEnvironmentMap to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertTransformEnvironmentKey(k)
		asserts.AssertTransformEnvironmentValue(v)
	end
end

function M.TransformEnvironmentMap(map)
	asserts.AssertTransformEnvironmentMap(map)
	return map
end

function asserts.AssertHyperParameters(map)
	assert(map)
	assert(type(map) == "table", "Expected HyperParameters to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertParameterKey(k)
		asserts.AssertParameterValue(v)
	end
end

function M.HyperParameters(map)
	asserts.AssertHyperParameters(map)
	return map
end

function asserts.AssertEnvironmentMap(map)
	assert(map)
	assert(type(map) == "table", "Expected EnvironmentMap to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertEnvironmentKey(k)
		asserts.AssertEnvironmentValue(v)
	end
end

function M.EnvironmentMap(map)
	asserts.AssertEnvironmentMap(map)
	return map
end

function asserts.AssertCreationTime(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected CreationTime to be of type 'string'")
end

function M.CreationTime(timestamp)
	asserts.AssertCreationTime(timestamp)
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

function asserts.AssertLastModifiedTime(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected LastModifiedTime to be of type 'string'")
end

function M.LastModifiedTime(timestamp)
	asserts.AssertLastModifiedTime(timestamp)
	return timestamp
end

function asserts.AssertHyperParameterTrainingJobSummaries(list)
	assert(list)
	assert(type(list) == "table", "Expected HyperParameterTrainingJobSummaries to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertHyperParameterTrainingJobSummary(v)
	end
end

--  
-- List of HyperParameterTrainingJobSummary objects
function M.HyperParameterTrainingJobSummaries(list)
	asserts.AssertHyperParameterTrainingJobSummaries(list)
	return list
end

function asserts.AssertVpcSecurityGroupIds(list)
	assert(list)
	assert(type(list) == "table", "Expected VpcSecurityGroupIds to be of type ''table")
	assert(#list <= 5, "Expected list to be contain 5 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertSecurityGroupId(v)
	end
end

--  
-- List of SecurityGroupId objects
function M.VpcSecurityGroupIds(list)
	asserts.AssertVpcSecurityGroupIds(list)
	return list
end

function asserts.AssertProductionVariantList(list)
	assert(list)
	assert(type(list) == "table", "Expected ProductionVariantList to be of type ''table")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertProductionVariant(v)
	end
end

--  
-- List of ProductionVariant objects
function M.ProductionVariantList(list)
	asserts.AssertProductionVariantList(list)
	return list
end

function asserts.AssertCategoricalParameterRanges(list)
	assert(list)
	assert(type(list) == "table", "Expected CategoricalParameterRanges to be of type ''table")
	assert(#list <= 20, "Expected list to be contain 20 elements")
	for _,v in ipairs(list) do
		asserts.AssertCategoricalParameterRange(v)
	end
end

--  
-- List of CategoricalParameterRange objects
function M.CategoricalParameterRanges(list)
	asserts.AssertCategoricalParameterRanges(list)
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

function asserts.AssertProductionVariantSummaryList(list)
	assert(list)
	assert(type(list) == "table", "Expected ProductionVariantSummaryList to be of type ''table")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertProductionVariantSummary(v)
	end
end

--  
-- List of ProductionVariantSummary objects
function M.ProductionVariantSummaryList(list)
	asserts.AssertProductionVariantSummaryList(list)
	return list
end

function asserts.AssertHyperParameterTuningJobSummaries(list)
	assert(list)
	assert(type(list) == "table", "Expected HyperParameterTuningJobSummaries to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertHyperParameterTuningJobSummary(v)
	end
end

--  
-- List of HyperParameterTuningJobSummary objects
function M.HyperParameterTuningJobSummaries(list)
	asserts.AssertHyperParameterTuningJobSummaries(list)
	return list
end

function asserts.AssertSubnets(list)
	assert(list)
	assert(type(list) == "table", "Expected Subnets to be of type ''table")
	assert(#list <= 16, "Expected list to be contain 16 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertSubnetId(v)
	end
end

--  
-- List of SubnetId objects
function M.Subnets(list)
	asserts.AssertSubnets(list)
	return list
end

function asserts.AssertEndpointSummaryList(list)
	assert(list)
	assert(type(list) == "table", "Expected EndpointSummaryList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertEndpointSummary(v)
	end
end

--  
-- List of EndpointSummary objects
function M.EndpointSummaryList(list)
	asserts.AssertEndpointSummaryList(list)
	return list
end

function asserts.AssertTrainingJobSummaries(list)
	assert(list)
	assert(type(list) == "table", "Expected TrainingJobSummaries to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTrainingJobSummary(v)
	end
end

--  
-- List of TrainingJobSummary objects
function M.TrainingJobSummaries(list)
	asserts.AssertTrainingJobSummaries(list)
	return list
end

function asserts.AssertDeployedImages(list)
	assert(list)
	assert(type(list) == "table", "Expected DeployedImages to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDeployedImage(v)
	end
end

--  
-- List of DeployedImage objects
function M.DeployedImages(list)
	asserts.AssertDeployedImages(list)
	return list
end

function asserts.AssertParameterValues(list)
	assert(list)
	assert(type(list) == "table", "Expected ParameterValues to be of type ''table")
	assert(#list <= 20, "Expected list to be contain 20 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertParameterValue(v)
	end
end

--  
-- List of ParameterValue objects
function M.ParameterValues(list)
	asserts.AssertParameterValues(list)
	return list
end

function asserts.AssertInputDataConfig(list)
	assert(list)
	assert(type(list) == "table", "Expected InputDataConfig to be of type ''table")
	assert(#list <= 8, "Expected list to be contain 8 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertChannel(v)
	end
end

--  
-- List of Channel objects
function M.InputDataConfig(list)
	asserts.AssertInputDataConfig(list)
	return list
end

function asserts.AssertEndpointConfigSummaryList(list)
	assert(list)
	assert(type(list) == "table", "Expected EndpointConfigSummaryList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertEndpointConfigSummary(v)
	end
end

--  
-- List of EndpointConfigSummary objects
function M.EndpointConfigSummaryList(list)
	asserts.AssertEndpointConfigSummaryList(list)
	return list
end

function asserts.AssertContinuousParameterRanges(list)
	assert(list)
	assert(type(list) == "table", "Expected ContinuousParameterRanges to be of type ''table")
	assert(#list <= 20, "Expected list to be contain 20 elements")
	for _,v in ipairs(list) do
		asserts.AssertContinuousParameterRange(v)
	end
end

--  
-- List of ContinuousParameterRange objects
function M.ContinuousParameterRanges(list)
	asserts.AssertContinuousParameterRanges(list)
	return list
end

function asserts.AssertDesiredWeightAndCapacityList(list)
	assert(list)
	assert(type(list) == "table", "Expected DesiredWeightAndCapacityList to be of type ''table")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertDesiredWeightAndCapacity(v)
	end
end

--  
-- List of DesiredWeightAndCapacity objects
function M.DesiredWeightAndCapacityList(list)
	asserts.AssertDesiredWeightAndCapacityList(list)
	return list
end

function asserts.AssertTransformJobSummaries(list)
	assert(list)
	assert(type(list) == "table", "Expected TransformJobSummaries to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTransformJobSummary(v)
	end
end

--  
-- List of TransformJobSummary objects
function M.TransformJobSummaries(list)
	asserts.AssertTransformJobSummaries(list)
	return list
end

function asserts.AssertNotebookInstanceLifecycleConfigList(list)
	assert(list)
	assert(type(list) == "table", "Expected NotebookInstanceLifecycleConfigList to be of type ''table")
	assert(#list <= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertNotebookInstanceLifecycleHook(v)
	end
end

--  
-- List of NotebookInstanceLifecycleHook objects
function M.NotebookInstanceLifecycleConfigList(list)
	asserts.AssertNotebookInstanceLifecycleConfigList(list)
	return list
end

function asserts.AssertIntegerParameterRanges(list)
	assert(list)
	assert(type(list) == "table", "Expected IntegerParameterRanges to be of type ''table")
	assert(#list <= 20, "Expected list to be contain 20 elements")
	for _,v in ipairs(list) do
		asserts.AssertIntegerParameterRange(v)
	end
end

--  
-- List of IntegerParameterRange objects
function M.IntegerParameterRanges(list)
	asserts.AssertIntegerParameterRanges(list)
	return list
end

function asserts.AssertSecondaryStatusTransitions(list)
	assert(list)
	assert(type(list) == "table", "Expected SecondaryStatusTransitions to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertSecondaryStatusTransition(v)
	end
end

--  
-- List of SecondaryStatusTransition objects
function M.SecondaryStatusTransitions(list)
	asserts.AssertSecondaryStatusTransitions(list)
	return list
end

function asserts.AssertSecurityGroupIds(list)
	assert(list)
	assert(type(list) == "table", "Expected SecurityGroupIds to be of type ''table")
	assert(#list <= 5, "Expected list to be contain 5 elements")
	for _,v in ipairs(list) do
		asserts.AssertSecurityGroupId(v)
	end
end

--  
-- List of SecurityGroupId objects
function M.SecurityGroupIds(list)
	asserts.AssertSecurityGroupIds(list)
	return list
end

function asserts.AssertNotebookInstanceSummaryList(list)
	assert(list)
	assert(type(list) == "table", "Expected NotebookInstanceSummaryList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertNotebookInstanceSummary(v)
	end
end

--  
-- List of NotebookInstanceSummary objects
function M.NotebookInstanceSummaryList(list)
	asserts.AssertNotebookInstanceSummaryList(list)
	return list
end

function asserts.AssertNotebookInstanceLifecycleConfigSummaryList(list)
	assert(list)
	assert(type(list) == "table", "Expected NotebookInstanceLifecycleConfigSummaryList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertNotebookInstanceLifecycleConfigSummary(v)
	end
end

--  
-- List of NotebookInstanceLifecycleConfigSummary objects
function M.NotebookInstanceLifecycleConfigSummaryList(list)
	asserts.AssertNotebookInstanceLifecycleConfigSummaryList(list)
	return list
end

function asserts.AssertModelSummaryList(list)
	assert(list)
	assert(type(list) == "table", "Expected ModelSummaryList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertModelSummary(v)
	end
end

--  
-- List of ModelSummary objects
function M.ModelSummaryList(list)
	asserts.AssertModelSummaryList(list)
	return list
end

function asserts.AssertMetricDefinitionList(list)
	assert(list)
	assert(type(list) == "table", "Expected MetricDefinitionList to be of type ''table")
	assert(#list <= 20, "Expected list to be contain 20 elements")
	for _,v in ipairs(list) do
		asserts.AssertMetricDefinition(v)
	end
end

--  
-- List of MetricDefinition objects
function M.MetricDefinitionList(list)
	asserts.AssertMetricDefinitionList(list)
	return list
end

function asserts.AssertTagList(list)
	assert(list)
	assert(type(list) == "table", "Expected TagList to be of type ''table")
	assert(#list <= 50, "Expected list to be contain 50 elements")
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
			return "api.sagemaker.amazonaws.com"
		end
	end
	local ss = { "api.sagemaker" }
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
		[request_headers.AMZ_TARGET_HEADER] = "SageMaker.DeleteTags",
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

--- Call ListTransformJobs asynchronously, invoking a callback when done
-- @param ListTransformJobsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListTransformJobsAsync(ListTransformJobsRequest, cb)
	assert(ListTransformJobsRequest, "You must provide a ListTransformJobsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "SageMaker.ListTransformJobs",
	}
	for header,value in pairs(ListTransformJobsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListTransformJobsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListTransformJobs synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListTransformJobsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListTransformJobsSync(ListTransformJobsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListTransformJobsAsync(ListTransformJobsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeModel asynchronously, invoking a callback when done
-- @param DescribeModelInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeModelAsync(DescribeModelInput, cb)
	assert(DescribeModelInput, "You must provide a DescribeModelInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "SageMaker.DescribeModel",
	}
	for header,value in pairs(DescribeModelInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeModelInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeModel synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeModelInput
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeModelSync(DescribeModelInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeModelAsync(DescribeModelInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateNotebookInstance asynchronously, invoking a callback when done
-- @param UpdateNotebookInstanceInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateNotebookInstanceAsync(UpdateNotebookInstanceInput, cb)
	assert(UpdateNotebookInstanceInput, "You must provide a UpdateNotebookInstanceInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "SageMaker.UpdateNotebookInstance",
	}
	for header,value in pairs(UpdateNotebookInstanceInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateNotebookInstanceInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateNotebookInstance synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateNotebookInstanceInput
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateNotebookInstanceSync(UpdateNotebookInstanceInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateNotebookInstanceAsync(UpdateNotebookInstanceInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteEndpointConfig asynchronously, invoking a callback when done
-- @param DeleteEndpointConfigInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteEndpointConfigAsync(DeleteEndpointConfigInput, cb)
	assert(DeleteEndpointConfigInput, "You must provide a DeleteEndpointConfigInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "SageMaker.DeleteEndpointConfig",
	}
	for header,value in pairs(DeleteEndpointConfigInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteEndpointConfigInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteEndpointConfig synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteEndpointConfigInput
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteEndpointConfigSync(DeleteEndpointConfigInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteEndpointConfigAsync(DeleteEndpointConfigInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListHyperParameterTuningJobs asynchronously, invoking a callback when done
-- @param ListHyperParameterTuningJobsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListHyperParameterTuningJobsAsync(ListHyperParameterTuningJobsRequest, cb)
	assert(ListHyperParameterTuningJobsRequest, "You must provide a ListHyperParameterTuningJobsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "SageMaker.ListHyperParameterTuningJobs",
	}
	for header,value in pairs(ListHyperParameterTuningJobsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListHyperParameterTuningJobsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListHyperParameterTuningJobs synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListHyperParameterTuningJobsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListHyperParameterTuningJobsSync(ListHyperParameterTuningJobsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListHyperParameterTuningJobsAsync(ListHyperParameterTuningJobsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateTransformJob asynchronously, invoking a callback when done
-- @param CreateTransformJobRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateTransformJobAsync(CreateTransformJobRequest, cb)
	assert(CreateTransformJobRequest, "You must provide a CreateTransformJobRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "SageMaker.CreateTransformJob",
	}
	for header,value in pairs(CreateTransformJobRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateTransformJobRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateTransformJob synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateTransformJobRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateTransformJobSync(CreateTransformJobRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateTransformJobAsync(CreateTransformJobRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteNotebookInstanceLifecycleConfig asynchronously, invoking a callback when done
-- @param DeleteNotebookInstanceLifecycleConfigInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteNotebookInstanceLifecycleConfigAsync(DeleteNotebookInstanceLifecycleConfigInput, cb)
	assert(DeleteNotebookInstanceLifecycleConfigInput, "You must provide a DeleteNotebookInstanceLifecycleConfigInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "SageMaker.DeleteNotebookInstanceLifecycleConfig",
	}
	for header,value in pairs(DeleteNotebookInstanceLifecycleConfigInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteNotebookInstanceLifecycleConfigInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteNotebookInstanceLifecycleConfig synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteNotebookInstanceLifecycleConfigInput
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteNotebookInstanceLifecycleConfigSync(DeleteNotebookInstanceLifecycleConfigInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteNotebookInstanceLifecycleConfigAsync(DeleteNotebookInstanceLifecycleConfigInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateEndpointConfig asynchronously, invoking a callback when done
-- @param CreateEndpointConfigInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateEndpointConfigAsync(CreateEndpointConfigInput, cb)
	assert(CreateEndpointConfigInput, "You must provide a CreateEndpointConfigInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "SageMaker.CreateEndpointConfig",
	}
	for header,value in pairs(CreateEndpointConfigInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateEndpointConfigInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateEndpointConfig synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateEndpointConfigInput
-- @return response
-- @return error_type
-- @return error_message
function M.CreateEndpointConfigSync(CreateEndpointConfigInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateEndpointConfigAsync(CreateEndpointConfigInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListTrainingJobs asynchronously, invoking a callback when done
-- @param ListTrainingJobsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListTrainingJobsAsync(ListTrainingJobsRequest, cb)
	assert(ListTrainingJobsRequest, "You must provide a ListTrainingJobsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "SageMaker.ListTrainingJobs",
	}
	for header,value in pairs(ListTrainingJobsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListTrainingJobsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListTrainingJobs synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListTrainingJobsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListTrainingJobsSync(ListTrainingJobsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListTrainingJobsAsync(ListTrainingJobsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call StartNotebookInstance asynchronously, invoking a callback when done
-- @param StartNotebookInstanceInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.StartNotebookInstanceAsync(StartNotebookInstanceInput, cb)
	assert(StartNotebookInstanceInput, "You must provide a StartNotebookInstanceInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "SageMaker.StartNotebookInstance",
	}
	for header,value in pairs(StartNotebookInstanceInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", StartNotebookInstanceInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call StartNotebookInstance synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StartNotebookInstanceInput
-- @return response
-- @return error_type
-- @return error_message
function M.StartNotebookInstanceSync(StartNotebookInstanceInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StartNotebookInstanceAsync(StartNotebookInstanceInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteNotebookInstance asynchronously, invoking a callback when done
-- @param DeleteNotebookInstanceInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteNotebookInstanceAsync(DeleteNotebookInstanceInput, cb)
	assert(DeleteNotebookInstanceInput, "You must provide a DeleteNotebookInstanceInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "SageMaker.DeleteNotebookInstance",
	}
	for header,value in pairs(DeleteNotebookInstanceInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteNotebookInstanceInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteNotebookInstance synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteNotebookInstanceInput
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteNotebookInstanceSync(DeleteNotebookInstanceInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteNotebookInstanceAsync(DeleteNotebookInstanceInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateNotebookInstanceLifecycleConfig asynchronously, invoking a callback when done
-- @param CreateNotebookInstanceLifecycleConfigInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateNotebookInstanceLifecycleConfigAsync(CreateNotebookInstanceLifecycleConfigInput, cb)
	assert(CreateNotebookInstanceLifecycleConfigInput, "You must provide a CreateNotebookInstanceLifecycleConfigInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "SageMaker.CreateNotebookInstanceLifecycleConfig",
	}
	for header,value in pairs(CreateNotebookInstanceLifecycleConfigInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateNotebookInstanceLifecycleConfigInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateNotebookInstanceLifecycleConfig synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateNotebookInstanceLifecycleConfigInput
-- @return response
-- @return error_type
-- @return error_message
function M.CreateNotebookInstanceLifecycleConfigSync(CreateNotebookInstanceLifecycleConfigInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateNotebookInstanceLifecycleConfigAsync(CreateNotebookInstanceLifecycleConfigInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListTrainingJobsForHyperParameterTuningJob asynchronously, invoking a callback when done
-- @param ListTrainingJobsForHyperParameterTuningJobRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListTrainingJobsForHyperParameterTuningJobAsync(ListTrainingJobsForHyperParameterTuningJobRequest, cb)
	assert(ListTrainingJobsForHyperParameterTuningJobRequest, "You must provide a ListTrainingJobsForHyperParameterTuningJobRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "SageMaker.ListTrainingJobsForHyperParameterTuningJob",
	}
	for header,value in pairs(ListTrainingJobsForHyperParameterTuningJobRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListTrainingJobsForHyperParameterTuningJobRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListTrainingJobsForHyperParameterTuningJob synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListTrainingJobsForHyperParameterTuningJobRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListTrainingJobsForHyperParameterTuningJobSync(ListTrainingJobsForHyperParameterTuningJobRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListTrainingJobsForHyperParameterTuningJobAsync(ListTrainingJobsForHyperParameterTuningJobRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateNotebookInstanceLifecycleConfig asynchronously, invoking a callback when done
-- @param UpdateNotebookInstanceLifecycleConfigInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateNotebookInstanceLifecycleConfigAsync(UpdateNotebookInstanceLifecycleConfigInput, cb)
	assert(UpdateNotebookInstanceLifecycleConfigInput, "You must provide a UpdateNotebookInstanceLifecycleConfigInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "SageMaker.UpdateNotebookInstanceLifecycleConfig",
	}
	for header,value in pairs(UpdateNotebookInstanceLifecycleConfigInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateNotebookInstanceLifecycleConfigInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateNotebookInstanceLifecycleConfig synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateNotebookInstanceLifecycleConfigInput
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateNotebookInstanceLifecycleConfigSync(UpdateNotebookInstanceLifecycleConfigInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateNotebookInstanceLifecycleConfigAsync(UpdateNotebookInstanceLifecycleConfigInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreatePresignedNotebookInstanceUrl asynchronously, invoking a callback when done
-- @param CreatePresignedNotebookInstanceUrlInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreatePresignedNotebookInstanceUrlAsync(CreatePresignedNotebookInstanceUrlInput, cb)
	assert(CreatePresignedNotebookInstanceUrlInput, "You must provide a CreatePresignedNotebookInstanceUrlInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "SageMaker.CreatePresignedNotebookInstanceUrl",
	}
	for header,value in pairs(CreatePresignedNotebookInstanceUrlInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreatePresignedNotebookInstanceUrlInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreatePresignedNotebookInstanceUrl synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreatePresignedNotebookInstanceUrlInput
-- @return response
-- @return error_type
-- @return error_message
function M.CreatePresignedNotebookInstanceUrlSync(CreatePresignedNotebookInstanceUrlInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreatePresignedNotebookInstanceUrlAsync(CreatePresignedNotebookInstanceUrlInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListNotebookInstances asynchronously, invoking a callback when done
-- @param ListNotebookInstancesInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListNotebookInstancesAsync(ListNotebookInstancesInput, cb)
	assert(ListNotebookInstancesInput, "You must provide a ListNotebookInstancesInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "SageMaker.ListNotebookInstances",
	}
	for header,value in pairs(ListNotebookInstancesInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListNotebookInstancesInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListNotebookInstances synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListNotebookInstancesInput
-- @return response
-- @return error_type
-- @return error_message
function M.ListNotebookInstancesSync(ListNotebookInstancesInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListNotebookInstancesAsync(ListNotebookInstancesInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateEndpoint asynchronously, invoking a callback when done
-- @param CreateEndpointInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateEndpointAsync(CreateEndpointInput, cb)
	assert(CreateEndpointInput, "You must provide a CreateEndpointInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "SageMaker.CreateEndpoint",
	}
	for header,value in pairs(CreateEndpointInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateEndpointInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateEndpoint synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateEndpointInput
-- @return response
-- @return error_type
-- @return error_message
function M.CreateEndpointSync(CreateEndpointInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateEndpointAsync(CreateEndpointInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeEndpoint asynchronously, invoking a callback when done
-- @param DescribeEndpointInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeEndpointAsync(DescribeEndpointInput, cb)
	assert(DescribeEndpointInput, "You must provide a DescribeEndpointInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "SageMaker.DescribeEndpoint",
	}
	for header,value in pairs(DescribeEndpointInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeEndpointInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeEndpoint synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeEndpointInput
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeEndpointSync(DescribeEndpointInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeEndpointAsync(DescribeEndpointInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListNotebookInstanceLifecycleConfigs asynchronously, invoking a callback when done
-- @param ListNotebookInstanceLifecycleConfigsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListNotebookInstanceLifecycleConfigsAsync(ListNotebookInstanceLifecycleConfigsInput, cb)
	assert(ListNotebookInstanceLifecycleConfigsInput, "You must provide a ListNotebookInstanceLifecycleConfigsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "SageMaker.ListNotebookInstanceLifecycleConfigs",
	}
	for header,value in pairs(ListNotebookInstanceLifecycleConfigsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListNotebookInstanceLifecycleConfigsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListNotebookInstanceLifecycleConfigs synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListNotebookInstanceLifecycleConfigsInput
-- @return response
-- @return error_type
-- @return error_message
function M.ListNotebookInstanceLifecycleConfigsSync(ListNotebookInstanceLifecycleConfigsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListNotebookInstanceLifecycleConfigsAsync(ListNotebookInstanceLifecycleConfigsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeTrainingJob asynchronously, invoking a callback when done
-- @param DescribeTrainingJobRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeTrainingJobAsync(DescribeTrainingJobRequest, cb)
	assert(DescribeTrainingJobRequest, "You must provide a DescribeTrainingJobRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "SageMaker.DescribeTrainingJob",
	}
	for header,value in pairs(DescribeTrainingJobRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeTrainingJobRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeTrainingJob synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeTrainingJobRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeTrainingJobSync(DescribeTrainingJobRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeTrainingJobAsync(DescribeTrainingJobRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call StopNotebookInstance asynchronously, invoking a callback when done
-- @param StopNotebookInstanceInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.StopNotebookInstanceAsync(StopNotebookInstanceInput, cb)
	assert(StopNotebookInstanceInput, "You must provide a StopNotebookInstanceInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "SageMaker.StopNotebookInstance",
	}
	for header,value in pairs(StopNotebookInstanceInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", StopNotebookInstanceInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call StopNotebookInstance synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StopNotebookInstanceInput
-- @return response
-- @return error_type
-- @return error_message
function M.StopNotebookInstanceSync(StopNotebookInstanceInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StopNotebookInstanceAsync(StopNotebookInstanceInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeHyperParameterTuningJob asynchronously, invoking a callback when done
-- @param DescribeHyperParameterTuningJobRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeHyperParameterTuningJobAsync(DescribeHyperParameterTuningJobRequest, cb)
	assert(DescribeHyperParameterTuningJobRequest, "You must provide a DescribeHyperParameterTuningJobRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "SageMaker.DescribeHyperParameterTuningJob",
	}
	for header,value in pairs(DescribeHyperParameterTuningJobRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeHyperParameterTuningJobRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeHyperParameterTuningJob synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeHyperParameterTuningJobRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeHyperParameterTuningJobSync(DescribeHyperParameterTuningJobRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeHyperParameterTuningJobAsync(DescribeHyperParameterTuningJobRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeTransformJob asynchronously, invoking a callback when done
-- @param DescribeTransformJobRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeTransformJobAsync(DescribeTransformJobRequest, cb)
	assert(DescribeTransformJobRequest, "You must provide a DescribeTransformJobRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "SageMaker.DescribeTransformJob",
	}
	for header,value in pairs(DescribeTransformJobRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeTransformJobRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeTransformJob synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeTransformJobRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeTransformJobSync(DescribeTransformJobRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeTransformJobAsync(DescribeTransformJobRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListModels asynchronously, invoking a callback when done
-- @param ListModelsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListModelsAsync(ListModelsInput, cb)
	assert(ListModelsInput, "You must provide a ListModelsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "SageMaker.ListModels",
	}
	for header,value in pairs(ListModelsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListModelsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListModels synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListModelsInput
-- @return response
-- @return error_type
-- @return error_message
function M.ListModelsSync(ListModelsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListModelsAsync(ListModelsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateNotebookInstance asynchronously, invoking a callback when done
-- @param CreateNotebookInstanceInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateNotebookInstanceAsync(CreateNotebookInstanceInput, cb)
	assert(CreateNotebookInstanceInput, "You must provide a CreateNotebookInstanceInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "SageMaker.CreateNotebookInstance",
	}
	for header,value in pairs(CreateNotebookInstanceInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateNotebookInstanceInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateNotebookInstance synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateNotebookInstanceInput
-- @return response
-- @return error_type
-- @return error_message
function M.CreateNotebookInstanceSync(CreateNotebookInstanceInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateNotebookInstanceAsync(CreateNotebookInstanceInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteEndpoint asynchronously, invoking a callback when done
-- @param DeleteEndpointInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteEndpointAsync(DeleteEndpointInput, cb)
	assert(DeleteEndpointInput, "You must provide a DeleteEndpointInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "SageMaker.DeleteEndpoint",
	}
	for header,value in pairs(DeleteEndpointInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteEndpointInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteEndpoint synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteEndpointInput
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteEndpointSync(DeleteEndpointInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteEndpointAsync(DeleteEndpointInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListTags asynchronously, invoking a callback when done
-- @param ListTagsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListTagsAsync(ListTagsInput, cb)
	assert(ListTagsInput, "You must provide a ListTagsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "SageMaker.ListTags",
	}
	for header,value in pairs(ListTagsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListTagsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListTags synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListTagsInput
-- @return response
-- @return error_type
-- @return error_message
function M.ListTagsSync(ListTagsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListTagsAsync(ListTagsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeEndpointConfig asynchronously, invoking a callback when done
-- @param DescribeEndpointConfigInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeEndpointConfigAsync(DescribeEndpointConfigInput, cb)
	assert(DescribeEndpointConfigInput, "You must provide a DescribeEndpointConfigInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "SageMaker.DescribeEndpointConfig",
	}
	for header,value in pairs(DescribeEndpointConfigInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeEndpointConfigInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeEndpointConfig synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeEndpointConfigInput
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeEndpointConfigSync(DescribeEndpointConfigInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeEndpointConfigAsync(DescribeEndpointConfigInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateModel asynchronously, invoking a callback when done
-- @param CreateModelInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateModelAsync(CreateModelInput, cb)
	assert(CreateModelInput, "You must provide a CreateModelInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "SageMaker.CreateModel",
	}
	for header,value in pairs(CreateModelInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateModelInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateModel synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateModelInput
-- @return response
-- @return error_type
-- @return error_message
function M.CreateModelSync(CreateModelInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateModelAsync(CreateModelInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateHyperParameterTuningJob asynchronously, invoking a callback when done
-- @param CreateHyperParameterTuningJobRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateHyperParameterTuningJobAsync(CreateHyperParameterTuningJobRequest, cb)
	assert(CreateHyperParameterTuningJobRequest, "You must provide a CreateHyperParameterTuningJobRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "SageMaker.CreateHyperParameterTuningJob",
	}
	for header,value in pairs(CreateHyperParameterTuningJobRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateHyperParameterTuningJobRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateHyperParameterTuningJob synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateHyperParameterTuningJobRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateHyperParameterTuningJobSync(CreateHyperParameterTuningJobRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateHyperParameterTuningJobAsync(CreateHyperParameterTuningJobRequest, function(response, error_type, error_message)
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
		[request_headers.AMZ_TARGET_HEADER] = "SageMaker.AddTags",
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

--- Call DescribeNotebookInstanceLifecycleConfig asynchronously, invoking a callback when done
-- @param DescribeNotebookInstanceLifecycleConfigInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeNotebookInstanceLifecycleConfigAsync(DescribeNotebookInstanceLifecycleConfigInput, cb)
	assert(DescribeNotebookInstanceLifecycleConfigInput, "You must provide a DescribeNotebookInstanceLifecycleConfigInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "SageMaker.DescribeNotebookInstanceLifecycleConfig",
	}
	for header,value in pairs(DescribeNotebookInstanceLifecycleConfigInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeNotebookInstanceLifecycleConfigInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeNotebookInstanceLifecycleConfig synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeNotebookInstanceLifecycleConfigInput
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeNotebookInstanceLifecycleConfigSync(DescribeNotebookInstanceLifecycleConfigInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeNotebookInstanceLifecycleConfigAsync(DescribeNotebookInstanceLifecycleConfigInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListEndpoints asynchronously, invoking a callback when done
-- @param ListEndpointsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListEndpointsAsync(ListEndpointsInput, cb)
	assert(ListEndpointsInput, "You must provide a ListEndpointsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "SageMaker.ListEndpoints",
	}
	for header,value in pairs(ListEndpointsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListEndpointsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListEndpoints synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListEndpointsInput
-- @return response
-- @return error_type
-- @return error_message
function M.ListEndpointsSync(ListEndpointsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListEndpointsAsync(ListEndpointsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListEndpointConfigs asynchronously, invoking a callback when done
-- @param ListEndpointConfigsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListEndpointConfigsAsync(ListEndpointConfigsInput, cb)
	assert(ListEndpointConfigsInput, "You must provide a ListEndpointConfigsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "SageMaker.ListEndpointConfigs",
	}
	for header,value in pairs(ListEndpointConfigsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListEndpointConfigsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListEndpointConfigs synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListEndpointConfigsInput
-- @return response
-- @return error_type
-- @return error_message
function M.ListEndpointConfigsSync(ListEndpointConfigsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListEndpointConfigsAsync(ListEndpointConfigsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeNotebookInstance asynchronously, invoking a callback when done
-- @param DescribeNotebookInstanceInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeNotebookInstanceAsync(DescribeNotebookInstanceInput, cb)
	assert(DescribeNotebookInstanceInput, "You must provide a DescribeNotebookInstanceInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "SageMaker.DescribeNotebookInstance",
	}
	for header,value in pairs(DescribeNotebookInstanceInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeNotebookInstanceInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeNotebookInstance synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeNotebookInstanceInput
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeNotebookInstanceSync(DescribeNotebookInstanceInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeNotebookInstanceAsync(DescribeNotebookInstanceInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call StopHyperParameterTuningJob asynchronously, invoking a callback when done
-- @param StopHyperParameterTuningJobRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.StopHyperParameterTuningJobAsync(StopHyperParameterTuningJobRequest, cb)
	assert(StopHyperParameterTuningJobRequest, "You must provide a StopHyperParameterTuningJobRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "SageMaker.StopHyperParameterTuningJob",
	}
	for header,value in pairs(StopHyperParameterTuningJobRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", StopHyperParameterTuningJobRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call StopHyperParameterTuningJob synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StopHyperParameterTuningJobRequest
-- @return response
-- @return error_type
-- @return error_message
function M.StopHyperParameterTuningJobSync(StopHyperParameterTuningJobRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StopHyperParameterTuningJobAsync(StopHyperParameterTuningJobRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateEndpoint asynchronously, invoking a callback when done
-- @param UpdateEndpointInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateEndpointAsync(UpdateEndpointInput, cb)
	assert(UpdateEndpointInput, "You must provide a UpdateEndpointInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "SageMaker.UpdateEndpoint",
	}
	for header,value in pairs(UpdateEndpointInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateEndpointInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateEndpoint synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateEndpointInput
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateEndpointSync(UpdateEndpointInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateEndpointAsync(UpdateEndpointInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteModel asynchronously, invoking a callback when done
-- @param DeleteModelInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteModelAsync(DeleteModelInput, cb)
	assert(DeleteModelInput, "You must provide a DeleteModelInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "SageMaker.DeleteModel",
	}
	for header,value in pairs(DeleteModelInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteModelInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteModel synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteModelInput
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteModelSync(DeleteModelInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteModelAsync(DeleteModelInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateTrainingJob asynchronously, invoking a callback when done
-- @param CreateTrainingJobRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateTrainingJobAsync(CreateTrainingJobRequest, cb)
	assert(CreateTrainingJobRequest, "You must provide a CreateTrainingJobRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "SageMaker.CreateTrainingJob",
	}
	for header,value in pairs(CreateTrainingJobRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateTrainingJobRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateTrainingJob synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateTrainingJobRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateTrainingJobSync(CreateTrainingJobRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateTrainingJobAsync(CreateTrainingJobRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateEndpointWeightsAndCapacities asynchronously, invoking a callback when done
-- @param UpdateEndpointWeightsAndCapacitiesInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateEndpointWeightsAndCapacitiesAsync(UpdateEndpointWeightsAndCapacitiesInput, cb)
	assert(UpdateEndpointWeightsAndCapacitiesInput, "You must provide a UpdateEndpointWeightsAndCapacitiesInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "SageMaker.UpdateEndpointWeightsAndCapacities",
	}
	for header,value in pairs(UpdateEndpointWeightsAndCapacitiesInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateEndpointWeightsAndCapacitiesInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateEndpointWeightsAndCapacities synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateEndpointWeightsAndCapacitiesInput
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateEndpointWeightsAndCapacitiesSync(UpdateEndpointWeightsAndCapacitiesInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateEndpointWeightsAndCapacitiesAsync(UpdateEndpointWeightsAndCapacitiesInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call StopTrainingJob asynchronously, invoking a callback when done
-- @param StopTrainingJobRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.StopTrainingJobAsync(StopTrainingJobRequest, cb)
	assert(StopTrainingJobRequest, "You must provide a StopTrainingJobRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "SageMaker.StopTrainingJob",
	}
	for header,value in pairs(StopTrainingJobRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", StopTrainingJobRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call StopTrainingJob synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StopTrainingJobRequest
-- @return response
-- @return error_type
-- @return error_message
function M.StopTrainingJobSync(StopTrainingJobRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StopTrainingJobAsync(StopTrainingJobRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call StopTransformJob asynchronously, invoking a callback when done
-- @param StopTransformJobRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.StopTransformJobAsync(StopTransformJobRequest, cb)
	assert(StopTransformJobRequest, "You must provide a StopTransformJobRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "SageMaker.StopTransformJob",
	}
	for header,value in pairs(StopTransformJobRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", StopTransformJobRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call StopTransformJob synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StopTransformJobRequest
-- @return response
-- @return error_type
-- @return error_message
function M.StopTransformJobSync(StopTransformJobRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StopTransformJobAsync(StopTransformJobRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
