--- GENERATED CODE - DO NOT MODIFY
-- AWS Batch (batch-2016-08-10)

local M = {}

M.metadata = {
	api_version = "2016-08-10",
	json_version = "1.1",
	protocol = "rest-json",
	checksum_format = "",
	endpoint_prefix = "batch",
	service_abbreviation = "AWS Batch",
	service_full_name = "AWS Batch",
	signature_version = "v4",
	target_prefix = "",
	timestamp_format = "",
	global_endpoint = "",
	uid = "batch-2016-08-10",
}

local CancelJobResponse_keys = { nil }

function M.AssertCancelJobResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CancelJobResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(CancelJobResponse_keys[k], "CancelJobResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CancelJobResponse
--  
function M.CancelJobResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating CancelJobResponse")
	local t = { 
	}
	M.AssertCancelJobResponse(t)
	return t
end

local DescribeJobDefinitionsRequest_keys = { "status" = true, "nextToken" = true, "jobDefinitions" = true, "jobDefinitionName" = true, "maxResults" = true, nil }

function M.AssertDescribeJobDefinitionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeJobDefinitionsRequest to be of type 'table'")
	if struct["status"] then M.AssertString(struct["status"]) end
	if struct["nextToken"] then M.AssertString(struct["nextToken"]) end
	if struct["jobDefinitions"] then M.AssertStringList(struct["jobDefinitions"]) end
	if struct["jobDefinitionName"] then M.AssertString(struct["jobDefinitionName"]) end
	if struct["maxResults"] then M.AssertInteger(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(DescribeJobDefinitionsRequest_keys[k], "DescribeJobDefinitionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeJobDefinitionsRequest
--  
-- @param status [String] <p>The status with which to filter job definitions.</p>
-- @param nextToken [String] <p>The <code>nextToken</code> value returned from a previous paginated <code>DescribeJobDefinitions</code> request where <code>maxResults</code> was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the <code>nextToken</code> value. This value is <code>null</code> when there are no more results to return.</p> <note> <p>This token should be treated as an opaque identifier that is only used to retrieve the next items in a list and not for other programmatic purposes.</p> </note>
-- @param jobDefinitions [StringList] <p>A space-separated list of up to 100 job definition names or full Amazon Resource Name (ARN) entries.</p>
-- @param jobDefinitionName [String] <p>The name of the job definition to describe.</p>
-- @param maxResults [Integer] <p>The maximum number of results returned by <code>DescribeJobDefinitions</code> in paginated output. When this parameter is used, <code>DescribeJobDefinitions</code> only returns <code>maxResults</code> results in a single page along with a <code>nextToken</code> response element. The remaining results of the initial request can be seen by sending another <code>DescribeJobDefinitions</code> request with the returned <code>nextToken</code> value. This value can be between 1 and 100. If this parameter is not used, then <code>DescribeJobDefinitions</code> returns up to 100 results and a <code>nextToken</code> value if applicable.</p>
function M.DescribeJobDefinitionsRequest(status, nextToken, jobDefinitions, jobDefinitionName, maxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeJobDefinitionsRequest")
	local t = { 
		["status"] = status,
		["nextToken"] = nextToken,
		["jobDefinitions"] = jobDefinitions,
		["jobDefinitionName"] = jobDefinitionName,
		["maxResults"] = maxResults,
	}
	M.AssertDescribeJobDefinitionsRequest(t)
	return t
end

local AttemptDetail_keys = { "startedAt" = true, "container" = true, "stoppedAt" = true, "statusReason" = true, nil }

function M.AssertAttemptDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttemptDetail to be of type 'table'")
	if struct["startedAt"] then M.AssertLong(struct["startedAt"]) end
	if struct["container"] then M.AssertAttemptContainerDetail(struct["container"]) end
	if struct["stoppedAt"] then M.AssertLong(struct["stoppedAt"]) end
	if struct["statusReason"] then M.AssertString(struct["statusReason"]) end
	for k,_ in pairs(struct) do
		assert(AttemptDetail_keys[k], "AttemptDetail contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AttemptDetail
-- <p>An object representing a job attempt.</p>
-- @param startedAt [Long] <p>The Unix timestamp for when the attempt was started (when the task transitioned from the <code>PENDING</code> state to the <code>RUNNING</code> state).</p>
-- @param container [AttemptContainerDetail] <p>Details about the container in this job attempt.</p>
-- @param stoppedAt [Long] <p>The Unix timestamp for when the attempt was stopped (when the task transitioned from the <code>RUNNING</code> state to the <code>STOPPED</code> state).</p>
-- @param statusReason [String] <p>A short, human-readable string to provide additional details about the current status of the job attempt.</p>
function M.AttemptDetail(startedAt, container, stoppedAt, statusReason, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AttemptDetail")
	local t = { 
		["startedAt"] = startedAt,
		["container"] = container,
		["stoppedAt"] = stoppedAt,
		["statusReason"] = statusReason,
	}
	M.AssertAttemptDetail(t)
	return t
end

local Ulimit_keys = { "softLimit" = true, "hardLimit" = true, "name" = true, nil }

function M.AssertUlimit(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Ulimit to be of type 'table'")
	assert(struct["hardLimit"], "Expected key hardLimit to exist in table")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["softLimit"], "Expected key softLimit to exist in table")
	if struct["softLimit"] then M.AssertInteger(struct["softLimit"]) end
	if struct["hardLimit"] then M.AssertInteger(struct["hardLimit"]) end
	if struct["name"] then M.AssertString(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(Ulimit_keys[k], "Ulimit contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Ulimit
-- <p>The <code>ulimit</code> settings to pass to the container.</p>
-- @param softLimit [Integer] <p>The soft limit for the <code>ulimit</code> type.</p>
-- @param hardLimit [Integer] <p>The hard limit for the <code>ulimit</code> type.</p>
-- @param name [String] <p>The <code>type</code> of the <code>ulimit</code>.</p>
-- Required parameter: hardLimit
-- Required parameter: name
-- Required parameter: softLimit
function M.Ulimit(softLimit, hardLimit, name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Ulimit")
	local t = { 
		["softLimit"] = softLimit,
		["hardLimit"] = hardLimit,
		["name"] = name,
	}
	M.AssertUlimit(t)
	return t
end

local ListJobsRequest_keys = { "nextToken" = true, "maxResults" = true, "jobStatus" = true, "jobQueue" = true, nil }

function M.AssertListJobsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListJobsRequest to be of type 'table'")
	assert(struct["jobQueue"], "Expected key jobQueue to exist in table")
	if struct["nextToken"] then M.AssertString(struct["nextToken"]) end
	if struct["maxResults"] then M.AssertInteger(struct["maxResults"]) end
	if struct["jobStatus"] then M.AssertJobStatus(struct["jobStatus"]) end
	if struct["jobQueue"] then M.AssertString(struct["jobQueue"]) end
	for k,_ in pairs(struct) do
		assert(ListJobsRequest_keys[k], "ListJobsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListJobsRequest
--  
-- @param nextToken [String] <p>The <code>nextToken</code> value returned from a previous paginated <code>ListJobs</code> request where <code>maxResults</code> was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the <code>nextToken</code> value. This value is <code>null</code> when there are no more results to return.</p> <note> <p>This token should be treated as an opaque identifier that is only used to retrieve the next items in a list and not for other programmatic purposes.</p> </note>
-- @param maxResults [Integer] <p>The maximum number of results returned by <code>ListJobs</code> in paginated output. When this parameter is used, <code>ListJobs</code> only returns <code>maxResults</code> results in a single page along with a <code>nextToken</code> response element. The remaining results of the initial request can be seen by sending another <code>ListJobs</code> request with the returned <code>nextToken</code> value. This value can be between 1 and 100. If this parameter is not used, then <code>ListJobs</code> returns up to 100 results and a <code>nextToken</code> value if applicable.</p>
-- @param jobStatus [JobStatus] <p>The job status with which to filter jobs in the specified queue.</p>
-- @param jobQueue [String] <p>The name or full Amazon Resource Name (ARN) of the job queue with which to list jobs.</p>
-- Required parameter: jobQueue
function M.ListJobsRequest(nextToken, maxResults, jobStatus, jobQueue, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListJobsRequest")
	local t = { 
		["nextToken"] = nextToken,
		["maxResults"] = maxResults,
		["jobStatus"] = jobStatus,
		["jobQueue"] = jobQueue,
	}
	M.AssertListJobsRequest(t)
	return t
end

local TerminateJobRequest_keys = { "reason" = true, "jobId" = true, nil }

function M.AssertTerminateJobRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TerminateJobRequest to be of type 'table'")
	assert(struct["jobId"], "Expected key jobId to exist in table")
	assert(struct["reason"], "Expected key reason to exist in table")
	if struct["reason"] then M.AssertString(struct["reason"]) end
	if struct["jobId"] then M.AssertString(struct["jobId"]) end
	for k,_ in pairs(struct) do
		assert(TerminateJobRequest_keys[k], "TerminateJobRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TerminateJobRequest
--  
-- @param reason [String] <p>A message to attach to the job that explains the reason for cancelling it. This message is returned by future <a>DescribeJobs</a> operations on the job. This message is also recorded in the AWS Batch activity logs. </p>
-- @param jobId [String] <p>Job IDs to be terminated. Up to 100 jobs can be specified.</p>
-- Required parameter: jobId
-- Required parameter: reason
function M.TerminateJobRequest(reason, jobId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TerminateJobRequest")
	local t = { 
		["reason"] = reason,
		["jobId"] = jobId,
	}
	M.AssertTerminateJobRequest(t)
	return t
end

local UpdateComputeEnvironmentRequest_keys = { "computeEnvironment" = true, "state" = true, "computeResources" = true, "serviceRole" = true, nil }

function M.AssertUpdateComputeEnvironmentRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateComputeEnvironmentRequest to be of type 'table'")
	assert(struct["computeEnvironment"], "Expected key computeEnvironment to exist in table")
	if struct["computeEnvironment"] then M.AssertString(struct["computeEnvironment"]) end
	if struct["state"] then M.AssertCEState(struct["state"]) end
	if struct["computeResources"] then M.AssertComputeResourceUpdate(struct["computeResources"]) end
	if struct["serviceRole"] then M.AssertString(struct["serviceRole"]) end
	for k,_ in pairs(struct) do
		assert(UpdateComputeEnvironmentRequest_keys[k], "UpdateComputeEnvironmentRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateComputeEnvironmentRequest
--  
-- @param computeEnvironment [String] <p>The name or full Amazon Resource Name (ARN) of the compute environment to update.</p>
-- @param state [CEState] <p>The state of the compute environment. Compute environments in the <code>ENABLED</code> state can accept jobs from a queue and scale in or out automatically based on the workload demand of its associated queues.</p>
-- @param computeResources [ComputeResourceUpdate] <p>Details of the compute resources managed by the compute environment. Required for a managed compute environment.</p>
-- @param serviceRole [String] <p>The name or full Amazon Resource Name (ARN) of the IAM role that allows AWS Batch to make calls to ECS, Auto Scaling, and EC2 on your behalf.</p>
-- Required parameter: computeEnvironment
function M.UpdateComputeEnvironmentRequest(computeEnvironment, state, computeResources, serviceRole, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateComputeEnvironmentRequest")
	local t = { 
		["computeEnvironment"] = computeEnvironment,
		["state"] = state,
		["computeResources"] = computeResources,
		["serviceRole"] = serviceRole,
	}
	M.AssertUpdateComputeEnvironmentRequest(t)
	return t
end

local ComputeResourceUpdate_keys = { "maxvCpus" = true, "minvCpus" = true, "desiredvCpus" = true, nil }

function M.AssertComputeResourceUpdate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ComputeResourceUpdate to be of type 'table'")
	if struct["maxvCpus"] then M.AssertInteger(struct["maxvCpus"]) end
	if struct["minvCpus"] then M.AssertInteger(struct["minvCpus"]) end
	if struct["desiredvCpus"] then M.AssertInteger(struct["desiredvCpus"]) end
	for k,_ in pairs(struct) do
		assert(ComputeResourceUpdate_keys[k], "ComputeResourceUpdate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ComputeResourceUpdate
-- <p>An object representing the attributes of a compute environment that can be updated.</p>
-- @param maxvCpus [Integer] <p>The maximum number of EC2 vCPUs that an environment can reach.</p>
-- @param minvCpus [Integer] <p>The minimum number of EC2 vCPUs that an environment should maintain.</p>
-- @param desiredvCpus [Integer] <p>The desired number of EC2 vCPUS in the compute environment.</p>
function M.ComputeResourceUpdate(maxvCpus, minvCpus, desiredvCpus, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ComputeResourceUpdate")
	local t = { 
		["maxvCpus"] = maxvCpus,
		["minvCpus"] = minvCpus,
		["desiredvCpus"] = desiredvCpus,
	}
	M.AssertComputeResourceUpdate(t)
	return t
end

local KeyValuePair_keys = { "name" = true, "value" = true, nil }

function M.AssertKeyValuePair(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected KeyValuePair to be of type 'table'")
	if struct["name"] then M.AssertString(struct["name"]) end
	if struct["value"] then M.AssertString(struct["value"]) end
	for k,_ in pairs(struct) do
		assert(KeyValuePair_keys[k], "KeyValuePair contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type KeyValuePair
-- <p>A key-value pair object.</p>
-- @param name [String] <p>The name of the key value pair. For environment variables, this is the name of the environment variable.</p>
-- @param value [String] <p>The value of the key value pair. For environment variables, this is the value of the environment variable.</p>
function M.KeyValuePair(name, value, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating KeyValuePair")
	local t = { 
		["name"] = name,
		["value"] = value,
	}
	M.AssertKeyValuePair(t)
	return t
end

local CreateJobQueueRequest_keys = { "priority" = true, "state" = true, "computeEnvironmentOrder" = true, "jobQueueName" = true, nil }

function M.AssertCreateJobQueueRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateJobQueueRequest to be of type 'table'")
	assert(struct["jobQueueName"], "Expected key jobQueueName to exist in table")
	assert(struct["priority"], "Expected key priority to exist in table")
	assert(struct["computeEnvironmentOrder"], "Expected key computeEnvironmentOrder to exist in table")
	if struct["priority"] then M.AssertInteger(struct["priority"]) end
	if struct["state"] then M.AssertJQState(struct["state"]) end
	if struct["computeEnvironmentOrder"] then M.AssertComputeEnvironmentOrders(struct["computeEnvironmentOrder"]) end
	if struct["jobQueueName"] then M.AssertString(struct["jobQueueName"]) end
	for k,_ in pairs(struct) do
		assert(CreateJobQueueRequest_keys[k], "CreateJobQueueRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateJobQueueRequest
--  
-- @param priority [Integer] <p>The priority of the job queue. Job queues with a higher priority (or a lower integer value for the <code>priority</code> parameter) are evaluated first when associated with same compute environment. Priority is determined in ascending order, for example, a job queue with a priority value of <code>1</code> is given scheduling preference over a job queue with a priority value of <code>10</code>.</p>
-- @param state [JQState] <p>The state of the job queue. If the job queue state is <code>ENABLED</code>, it is able to accept jobs.</p>
-- @param computeEnvironmentOrder [ComputeEnvironmentOrders] <p>The set of compute environments mapped to a job queue and their order relative to each other. The job scheduler uses this parameter to determine which compute environment should execute a given job. Compute environments must be in the <code>VALID</code> state before you can associate them with a job queue. You can associate up to 3 compute environments with a job queue.</p>
-- @param jobQueueName [String] <p>The name of the job queue.</p>
-- Required parameter: jobQueueName
-- Required parameter: priority
-- Required parameter: computeEnvironmentOrder
function M.CreateJobQueueRequest(priority, state, computeEnvironmentOrder, jobQueueName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateJobQueueRequest")
	local t = { 
		["priority"] = priority,
		["state"] = state,
		["computeEnvironmentOrder"] = computeEnvironmentOrder,
		["jobQueueName"] = jobQueueName,
	}
	M.AssertCreateJobQueueRequest(t)
	return t
end

local RetryStrategy_keys = { "attempts" = true, nil }

function M.AssertRetryStrategy(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RetryStrategy to be of type 'table'")
	if struct["attempts"] then M.AssertInteger(struct["attempts"]) end
	for k,_ in pairs(struct) do
		assert(RetryStrategy_keys[k], "RetryStrategy contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RetryStrategy
-- <p>The retry strategy associated with a job.</p>
-- @param attempts [Integer] <p>The number of times to move a job to the <code>RUNNABLE</code> status. You may specify between 1 and 10 attempts. If <code>attempts</code> is greater than one, the job is retried if it fails until it has moved to <code>RUNNABLE</code> that many times.</p>
function M.RetryStrategy(attempts, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RetryStrategy")
	local t = { 
		["attempts"] = attempts,
	}
	M.AssertRetryStrategy(t)
	return t
end

local MountPoint_keys = { "sourceVolume" = true, "readOnly" = true, "containerPath" = true, nil }

function M.AssertMountPoint(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MountPoint to be of type 'table'")
	if struct["sourceVolume"] then M.AssertString(struct["sourceVolume"]) end
	if struct["readOnly"] then M.AssertBoolean(struct["readOnly"]) end
	if struct["containerPath"] then M.AssertString(struct["containerPath"]) end
	for k,_ in pairs(struct) do
		assert(MountPoint_keys[k], "MountPoint contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MountPoint
-- <p>Details on a Docker volume mount point that is used in a job's container properties.</p>
-- @param sourceVolume [String] <p>The name of the volume to mount.</p>
-- @param readOnly [Boolean] <p>If this value is <code>true</code>, the container has read-only access to the volume; otherwise, the container can write to the volume. The default value is <code>false</code>.</p>
-- @param containerPath [String] <p>The path on the container at which to mount the host volume.</p>
function M.MountPoint(sourceVolume, readOnly, containerPath, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MountPoint")
	local t = { 
		["sourceVolume"] = sourceVolume,
		["readOnly"] = readOnly,
		["containerPath"] = containerPath,
	}
	M.AssertMountPoint(t)
	return t
end

local CreateComputeEnvironmentRequest_keys = { "computeEnvironmentName" = true, "state" = true, "type" = true, "computeResources" = true, "serviceRole" = true, nil }

function M.AssertCreateComputeEnvironmentRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateComputeEnvironmentRequest to be of type 'table'")
	assert(struct["computeEnvironmentName"], "Expected key computeEnvironmentName to exist in table")
	assert(struct["type"], "Expected key type to exist in table")
	assert(struct["serviceRole"], "Expected key serviceRole to exist in table")
	if struct["computeEnvironmentName"] then M.AssertString(struct["computeEnvironmentName"]) end
	if struct["state"] then M.AssertCEState(struct["state"]) end
	if struct["type"] then M.AssertCEType(struct["type"]) end
	if struct["computeResources"] then M.AssertComputeResource(struct["computeResources"]) end
	if struct["serviceRole"] then M.AssertString(struct["serviceRole"]) end
	for k,_ in pairs(struct) do
		assert(CreateComputeEnvironmentRequest_keys[k], "CreateComputeEnvironmentRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateComputeEnvironmentRequest
--  
-- @param computeEnvironmentName [String] <p>The name for your compute environment. Up to 128 letters (uppercase and lowercase), numbers, and underscores are allowed.</p>
-- @param state [CEState] <p>The state of the compute environment. If the state is <code>ENABLED</code>, then the compute environment accepts jobs from a queue and can scale out automatically based on queues.</p>
-- @param type [CEType] <p>The type of the compute environment. </p>
-- @param computeResources [ComputeResource] <p>Details of the compute resources managed by the compute environment. This parameter is required for managed compute environments.</p>
-- @param serviceRole [String] <p>The full Amazon Resource Name (ARN) of the IAM role that allows AWS Batch to make calls to other AWS services on your behalf. </p>
-- Required parameter: computeEnvironmentName
-- Required parameter: type
-- Required parameter: serviceRole
function M.CreateComputeEnvironmentRequest(computeEnvironmentName, state, type, computeResources, serviceRole, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateComputeEnvironmentRequest")
	local t = { 
		["computeEnvironmentName"] = computeEnvironmentName,
		["state"] = state,
		["type"] = type,
		["computeResources"] = computeResources,
		["serviceRole"] = serviceRole,
	}
	M.AssertCreateComputeEnvironmentRequest(t)
	return t
end

local JobDependency_keys = { "jobId" = true, nil }

function M.AssertJobDependency(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected JobDependency to be of type 'table'")
	if struct["jobId"] then M.AssertString(struct["jobId"]) end
	for k,_ in pairs(struct) do
		assert(JobDependency_keys[k], "JobDependency contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type JobDependency
-- <p>An object representing an AWS Batch job dependency.</p>
-- @param jobId [String] <p>The job ID of the AWS Batch job associated with this dependency.</p>
function M.JobDependency(jobId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating JobDependency")
	local t = { 
		["jobId"] = jobId,
	}
	M.AssertJobDependency(t)
	return t
end

local ComputeEnvironmentDetail_keys = { "status" = true, "serviceRole" = true, "computeEnvironmentArn" = true, "computeResources" = true, "statusReason" = true, "ecsClusterArn" = true, "state" = true, "computeEnvironmentName" = true, "type" = true, nil }

function M.AssertComputeEnvironmentDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ComputeEnvironmentDetail to be of type 'table'")
	assert(struct["computeEnvironmentName"], "Expected key computeEnvironmentName to exist in table")
	assert(struct["computeEnvironmentArn"], "Expected key computeEnvironmentArn to exist in table")
	assert(struct["ecsClusterArn"], "Expected key ecsClusterArn to exist in table")
	if struct["status"] then M.AssertCEStatus(struct["status"]) end
	if struct["serviceRole"] then M.AssertString(struct["serviceRole"]) end
	if struct["computeEnvironmentArn"] then M.AssertString(struct["computeEnvironmentArn"]) end
	if struct["computeResources"] then M.AssertComputeResource(struct["computeResources"]) end
	if struct["statusReason"] then M.AssertString(struct["statusReason"]) end
	if struct["ecsClusterArn"] then M.AssertString(struct["ecsClusterArn"]) end
	if struct["state"] then M.AssertCEState(struct["state"]) end
	if struct["computeEnvironmentName"] then M.AssertString(struct["computeEnvironmentName"]) end
	if struct["type"] then M.AssertCEType(struct["type"]) end
	for k,_ in pairs(struct) do
		assert(ComputeEnvironmentDetail_keys[k], "ComputeEnvironmentDetail contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ComputeEnvironmentDetail
-- <p>An object representing an AWS Batch compute environment.</p>
-- @param status [CEStatus] <p>The current status of the compute environment (for example, <code>CREATING</code> or <code>VALID</code>).</p>
-- @param serviceRole [String] <p>The service role associated with the compute environment that allows AWS Batch to make calls to AWS API operations on your behalf.</p>
-- @param computeEnvironmentArn [String] <p>The Amazon Resource Name (ARN) of the compute environment. </p>
-- @param computeResources [ComputeResource] <p>The compute resources defined for the compute environment. </p>
-- @param statusReason [String] <p>A short, human-readable string to provide additional details about the current status of the compute environment.</p>
-- @param ecsClusterArn [String] <p>The Amazon Resource Name (ARN) of the underlying Amazon ECS cluster used by the compute environment. </p>
-- @param state [CEState] <p>The state of the compute environment. The valid values are <code>ENABLED</code> or <code>DISABLED</code>. An <code>ENABLED</code> state indicates that you can register instances with the compute environment and that the associated instances can accept jobs. </p>
-- @param computeEnvironmentName [String] <p>The name of the compute environment. </p>
-- @param type [CEType] <p>The type of the compute environment.</p>
-- Required parameter: computeEnvironmentName
-- Required parameter: computeEnvironmentArn
-- Required parameter: ecsClusterArn
function M.ComputeEnvironmentDetail(status, serviceRole, computeEnvironmentArn, computeResources, statusReason, ecsClusterArn, state, computeEnvironmentName, type, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ComputeEnvironmentDetail")
	local t = { 
		["status"] = status,
		["serviceRole"] = serviceRole,
		["computeEnvironmentArn"] = computeEnvironmentArn,
		["computeResources"] = computeResources,
		["statusReason"] = statusReason,
		["ecsClusterArn"] = ecsClusterArn,
		["state"] = state,
		["computeEnvironmentName"] = computeEnvironmentName,
		["type"] = type,
	}
	M.AssertComputeEnvironmentDetail(t)
	return t
end

local JobDetail_keys = { "status" = true, "container" = true, "parameters" = true, "jobDefinition" = true, "statusReason" = true, "jobId" = true, "attempts" = true, "retryStrategy" = true, "jobQueue" = true, "dependsOn" = true, "startedAt" = true, "jobName" = true, "createdAt" = true, "stoppedAt" = true, nil }

function M.AssertJobDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected JobDetail to be of type 'table'")
	assert(struct["jobName"], "Expected key jobName to exist in table")
	assert(struct["jobId"], "Expected key jobId to exist in table")
	assert(struct["jobQueue"], "Expected key jobQueue to exist in table")
	assert(struct["status"], "Expected key status to exist in table")
	assert(struct["startedAt"], "Expected key startedAt to exist in table")
	assert(struct["jobDefinition"], "Expected key jobDefinition to exist in table")
	if struct["status"] then M.AssertJobStatus(struct["status"]) end
	if struct["container"] then M.AssertContainerDetail(struct["container"]) end
	if struct["parameters"] then M.AssertParametersMap(struct["parameters"]) end
	if struct["jobDefinition"] then M.AssertString(struct["jobDefinition"]) end
	if struct["statusReason"] then M.AssertString(struct["statusReason"]) end
	if struct["jobId"] then M.AssertString(struct["jobId"]) end
	if struct["attempts"] then M.AssertAttemptDetails(struct["attempts"]) end
	if struct["retryStrategy"] then M.AssertRetryStrategy(struct["retryStrategy"]) end
	if struct["jobQueue"] then M.AssertString(struct["jobQueue"]) end
	if struct["dependsOn"] then M.AssertJobDependencyList(struct["dependsOn"]) end
	if struct["startedAt"] then M.AssertLong(struct["startedAt"]) end
	if struct["jobName"] then M.AssertString(struct["jobName"]) end
	if struct["createdAt"] then M.AssertLong(struct["createdAt"]) end
	if struct["stoppedAt"] then M.AssertLong(struct["stoppedAt"]) end
	for k,_ in pairs(struct) do
		assert(JobDetail_keys[k], "JobDetail contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type JobDetail
-- <p>An object representing an AWS Batch job.</p>
-- @param status [JobStatus] <p>The current status for the job.</p>
-- @param container [ContainerDetail] <p>An object representing the details of the container that is associated with the job.</p>
-- @param parameters [ParametersMap] <p>Additional parameters passed to the job that replace parameter substitution placeholders or override any corresponding parameter defaults from the job definition. </p>
-- @param jobDefinition [String] <p>The job definition that is used by this job.</p>
-- @param statusReason [String] <p>A short, human-readable string to provide additional details about the current status of the job. </p>
-- @param jobId [String] <p>The ID for the job.</p>
-- @param attempts [AttemptDetails] <p>A list of job attempts associated with this job.</p>
-- @param retryStrategy [RetryStrategy] <p>The retry strategy to use for this job if an attempt fails.</p>
-- @param jobQueue [String] <p>The Amazon Resource Name (ARN) of the job queue with which the job is associated.</p>
-- @param dependsOn [JobDependencyList] <p>A list of job names or IDs on which this job depends.</p>
-- @param startedAt [Long] <p>The Unix timestamp for when the job was started (when the task transitioned from the <code>PENDING</code> state to the <code>RUNNING</code> state). </p>
-- @param jobName [String] <p>The name of the job.</p>
-- @param createdAt [Long] <p>The Unix timestamp for when the job was created (when the task entered the <code>PENDING</code> state). </p>
-- @param stoppedAt [Long] <p>The Unix timestamp for when the job was stopped (when the task transitioned from the <code>RUNNING</code> state to the <code>STOPPED</code> state).</p>
-- Required parameter: jobName
-- Required parameter: jobId
-- Required parameter: jobQueue
-- Required parameter: status
-- Required parameter: startedAt
-- Required parameter: jobDefinition
function M.JobDetail(status, container, parameters, jobDefinition, statusReason, jobId, attempts, retryStrategy, jobQueue, dependsOn, startedAt, jobName, createdAt, stoppedAt, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating JobDetail")
	local t = { 
		["status"] = status,
		["container"] = container,
		["parameters"] = parameters,
		["jobDefinition"] = jobDefinition,
		["statusReason"] = statusReason,
		["jobId"] = jobId,
		["attempts"] = attempts,
		["retryStrategy"] = retryStrategy,
		["jobQueue"] = jobQueue,
		["dependsOn"] = dependsOn,
		["startedAt"] = startedAt,
		["jobName"] = jobName,
		["createdAt"] = createdAt,
		["stoppedAt"] = stoppedAt,
	}
	M.AssertJobDetail(t)
	return t
end

local SubmitJobResponse_keys = { "jobId" = true, "jobName" = true, nil }

function M.AssertSubmitJobResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SubmitJobResponse to be of type 'table'")
	assert(struct["jobName"], "Expected key jobName to exist in table")
	assert(struct["jobId"], "Expected key jobId to exist in table")
	if struct["jobId"] then M.AssertString(struct["jobId"]) end
	if struct["jobName"] then M.AssertString(struct["jobName"]) end
	for k,_ in pairs(struct) do
		assert(SubmitJobResponse_keys[k], "SubmitJobResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SubmitJobResponse
--  
-- @param jobId [String] <p>The unique identifier for the job.</p>
-- @param jobName [String] <p>The name of the job. </p>
-- Required parameter: jobName
-- Required parameter: jobId
function M.SubmitJobResponse(jobId, jobName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SubmitJobResponse")
	local t = { 
		["jobId"] = jobId,
		["jobName"] = jobName,
	}
	M.AssertSubmitJobResponse(t)
	return t
end

local ComputeEnvironmentOrder_keys = { "computeEnvironment" = true, "order" = true, nil }

function M.AssertComputeEnvironmentOrder(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ComputeEnvironmentOrder to be of type 'table'")
	assert(struct["order"], "Expected key order to exist in table")
	assert(struct["computeEnvironment"], "Expected key computeEnvironment to exist in table")
	if struct["computeEnvironment"] then M.AssertString(struct["computeEnvironment"]) end
	if struct["order"] then M.AssertInteger(struct["order"]) end
	for k,_ in pairs(struct) do
		assert(ComputeEnvironmentOrder_keys[k], "ComputeEnvironmentOrder contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ComputeEnvironmentOrder
-- <p>The order in which compute environments are tried for job placement within a queue. Compute environments are tried in ascending order. For example, if two compute environments are associated with a job queue, the compute environment with a lower order integer value is tried for job placement first.</p>
-- @param computeEnvironment [String] <p>The Amazon Resource Name (ARN) of the compute environment.</p>
-- @param order [Integer] <p>The order of the compute environment.</p>
-- Required parameter: order
-- Required parameter: computeEnvironment
function M.ComputeEnvironmentOrder(computeEnvironment, order, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ComputeEnvironmentOrder")
	local t = { 
		["computeEnvironment"] = computeEnvironment,
		["order"] = order,
	}
	M.AssertComputeEnvironmentOrder(t)
	return t
end

local DescribeJobQueuesResponse_keys = { "jobQueues" = true, "nextToken" = true, nil }

function M.AssertDescribeJobQueuesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeJobQueuesResponse to be of type 'table'")
	if struct["jobQueues"] then M.AssertJobQueueDetailList(struct["jobQueues"]) end
	if struct["nextToken"] then M.AssertString(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(DescribeJobQueuesResponse_keys[k], "DescribeJobQueuesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeJobQueuesResponse
--  
-- @param jobQueues [JobQueueDetailList] <p>The list of job queues. </p>
-- @param nextToken [String] <p>The <code>nextToken</code> value to include in a future <code>DescribeJobQueues</code> request. When the results of a <code>DescribeJobQueues</code> request exceed <code>maxResults</code>, this value can be used to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>
function M.DescribeJobQueuesResponse(jobQueues, nextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeJobQueuesResponse")
	local t = { 
		["jobQueues"] = jobQueues,
		["nextToken"] = nextToken,
	}
	M.AssertDescribeJobQueuesResponse(t)
	return t
end

local DeleteComputeEnvironmentRequest_keys = { "computeEnvironment" = true, nil }

function M.AssertDeleteComputeEnvironmentRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteComputeEnvironmentRequest to be of type 'table'")
	assert(struct["computeEnvironment"], "Expected key computeEnvironment to exist in table")
	if struct["computeEnvironment"] then M.AssertString(struct["computeEnvironment"]) end
	for k,_ in pairs(struct) do
		assert(DeleteComputeEnvironmentRequest_keys[k], "DeleteComputeEnvironmentRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteComputeEnvironmentRequest
--  
-- @param computeEnvironment [String] <p>The name or Amazon Resource Name (ARN) of the compute environment to delete. </p>
-- Required parameter: computeEnvironment
function M.DeleteComputeEnvironmentRequest(computeEnvironment, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteComputeEnvironmentRequest")
	local t = { 
		["computeEnvironment"] = computeEnvironment,
	}
	M.AssertDeleteComputeEnvironmentRequest(t)
	return t
end

local DeleteComputeEnvironmentResponse_keys = { nil }

function M.AssertDeleteComputeEnvironmentResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteComputeEnvironmentResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DeleteComputeEnvironmentResponse_keys[k], "DeleteComputeEnvironmentResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteComputeEnvironmentResponse
--  
function M.DeleteComputeEnvironmentResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteComputeEnvironmentResponse")
	local t = { 
	}
	M.AssertDeleteComputeEnvironmentResponse(t)
	return t
end

local ComputeResource_keys = { "subnets" = true, "spotIamFleetRole" = true, "tags" = true, "desiredvCpus" = true, "minvCpus" = true, "instanceTypes" = true, "imageId" = true, "bidPercentage" = true, "instanceRole" = true, "maxvCpus" = true, "securityGroupIds" = true, "type" = true, "ec2KeyPair" = true, nil }

function M.AssertComputeResource(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ComputeResource to be of type 'table'")
	assert(struct["type"], "Expected key type to exist in table")
	assert(struct["minvCpus"], "Expected key minvCpus to exist in table")
	assert(struct["maxvCpus"], "Expected key maxvCpus to exist in table")
	assert(struct["instanceTypes"], "Expected key instanceTypes to exist in table")
	assert(struct["subnets"], "Expected key subnets to exist in table")
	assert(struct["securityGroupIds"], "Expected key securityGroupIds to exist in table")
	assert(struct["instanceRole"], "Expected key instanceRole to exist in table")
	if struct["subnets"] then M.AssertStringList(struct["subnets"]) end
	if struct["spotIamFleetRole"] then M.AssertString(struct["spotIamFleetRole"]) end
	if struct["tags"] then M.AssertTagsMap(struct["tags"]) end
	if struct["desiredvCpus"] then M.AssertInteger(struct["desiredvCpus"]) end
	if struct["minvCpus"] then M.AssertInteger(struct["minvCpus"]) end
	if struct["instanceTypes"] then M.AssertStringList(struct["instanceTypes"]) end
	if struct["imageId"] then M.AssertString(struct["imageId"]) end
	if struct["bidPercentage"] then M.AssertInteger(struct["bidPercentage"]) end
	if struct["instanceRole"] then M.AssertString(struct["instanceRole"]) end
	if struct["maxvCpus"] then M.AssertInteger(struct["maxvCpus"]) end
	if struct["securityGroupIds"] then M.AssertStringList(struct["securityGroupIds"]) end
	if struct["type"] then M.AssertCRType(struct["type"]) end
	if struct["ec2KeyPair"] then M.AssertString(struct["ec2KeyPair"]) end
	for k,_ in pairs(struct) do
		assert(ComputeResource_keys[k], "ComputeResource contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ComputeResource
-- <p>An object representing an AWS Batch compute resource.</p>
-- @param subnets [StringList] <p>The VPC subnets into which the compute resources are launched. </p>
-- @param spotIamFleetRole [String] <p>The Amazon Resource Name (ARN) of the Amazon EC2 Spot Fleet IAM role applied to a <code>SPOT</code> compute environment.</p>
-- @param tags [TagsMap] <p>Key-value pair tags to be applied to resources that are launched in the compute environment. </p>
-- @param desiredvCpus [Integer] <p>The desired number of EC2 vCPUS in the compute environment. </p>
-- @param minvCpus [Integer] <p>The minimum number of EC2 vCPUs that an environment should maintain. </p>
-- @param instanceTypes [StringList] <p>The instances types that may launched.</p>
-- @param imageId [String] <p>The Amazon Machine Image (AMI) ID used for instances launched in the compute environment.</p>
-- @param bidPercentage [Integer] <p>The minimum percentage that a Spot Instance price must be when compared with the On-Demand price for that instance type before instances are launched. For example, if your bid percentage is 20%, then the Spot price must be below 20% of the current On-Demand price for that EC2 instance.</p>
-- @param instanceRole [String] <p>The Amazon ECS instance role applied to Amazon EC2 instances in a compute environment.</p>
-- @param maxvCpus [Integer] <p>The maximum number of EC2 vCPUs that an environment can reach. </p>
-- @param securityGroupIds [StringList] <p>The EC2 security group that is associated with instances launched in the compute environment. </p>
-- @param type [CRType] <p>The type of compute environment.</p>
-- @param ec2KeyPair [String] <p>The EC2 key pair that is used for instances launched in the compute environment.</p>
-- Required parameter: type
-- Required parameter: minvCpus
-- Required parameter: maxvCpus
-- Required parameter: instanceTypes
-- Required parameter: subnets
-- Required parameter: securityGroupIds
-- Required parameter: instanceRole
function M.ComputeResource(subnets, spotIamFleetRole, tags, desiredvCpus, minvCpus, instanceTypes, imageId, bidPercentage, instanceRole, maxvCpus, securityGroupIds, type, ec2KeyPair, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ComputeResource")
	local t = { 
		["subnets"] = subnets,
		["spotIamFleetRole"] = spotIamFleetRole,
		["tags"] = tags,
		["desiredvCpus"] = desiredvCpus,
		["minvCpus"] = minvCpus,
		["instanceTypes"] = instanceTypes,
		["imageId"] = imageId,
		["bidPercentage"] = bidPercentage,
		["instanceRole"] = instanceRole,
		["maxvCpus"] = maxvCpus,
		["securityGroupIds"] = securityGroupIds,
		["type"] = type,
		["ec2KeyPair"] = ec2KeyPair,
	}
	M.AssertComputeResource(t)
	return t
end

local RegisterJobDefinitionRequest_keys = { "retryStrategy" = true, "containerProperties" = true, "type" = true, "parameters" = true, "jobDefinitionName" = true, nil }

function M.AssertRegisterJobDefinitionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RegisterJobDefinitionRequest to be of type 'table'")
	assert(struct["jobDefinitionName"], "Expected key jobDefinitionName to exist in table")
	assert(struct["type"], "Expected key type to exist in table")
	if struct["retryStrategy"] then M.AssertRetryStrategy(struct["retryStrategy"]) end
	if struct["containerProperties"] then M.AssertContainerProperties(struct["containerProperties"]) end
	if struct["type"] then M.AssertJobDefinitionType(struct["type"]) end
	if struct["parameters"] then M.AssertParametersMap(struct["parameters"]) end
	if struct["jobDefinitionName"] then M.AssertString(struct["jobDefinitionName"]) end
	for k,_ in pairs(struct) do
		assert(RegisterJobDefinitionRequest_keys[k], "RegisterJobDefinitionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RegisterJobDefinitionRequest
--  
-- @param retryStrategy [RetryStrategy] <p>The retry strategy to use for failed jobs that are submitted with this job definition. Any retry strategy that is specified during a <a>SubmitJob</a> operation overrides the retry strategy defined here.</p>
-- @param containerProperties [ContainerProperties] <p>An object with various properties specific for container-based jobs. This parameter is required if the <code>type</code> parameter is <code>container</code>.</p>
-- @param type [JobDefinitionType] <p>The type of job definition.</p>
-- @param parameters [ParametersMap] <p>Default parameter substitution placeholders to set in the job definition. Parameters are specified as a key-value pair mapping. Parameters in a <code>SubmitJob</code> request override any corresponding parameter defaults from the job definition.</p>
-- @param jobDefinitionName [String] <p>The name of the job definition to register. </p>
-- Required parameter: jobDefinitionName
-- Required parameter: type
function M.RegisterJobDefinitionRequest(retryStrategy, containerProperties, type, parameters, jobDefinitionName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RegisterJobDefinitionRequest")
	local t = { 
		["retryStrategy"] = retryStrategy,
		["containerProperties"] = containerProperties,
		["type"] = type,
		["parameters"] = parameters,
		["jobDefinitionName"] = jobDefinitionName,
	}
	M.AssertRegisterJobDefinitionRequest(t)
	return t
end

local Volume_keys = { "host" = true, "name" = true, nil }

function M.AssertVolume(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Volume to be of type 'table'")
	if struct["host"] then M.AssertHost(struct["host"]) end
	if struct["name"] then M.AssertString(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(Volume_keys[k], "Volume contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Volume
-- <p>A data volume used in a job's container properties.</p>
-- @param host [Host] <p>The contents of the <code>host</code> parameter determine whether your data volume persists on the host container instance and where it is stored. If the host parameter is empty, then the Docker daemon assigns a host path for your data volume, but the data is not guaranteed to persist after the containers associated with it stop running.</p>
-- @param name [String] <p>The name of the volume. Up to 255 letters (uppercase and lowercase), numbers, hyphens, and underscores are allowed. This name is referenced in the <code>sourceVolume</code> parameter of container definition <code>mountPoints</code>.</p>
function M.Volume(host, name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Volume")
	local t = { 
		["host"] = host,
		["name"] = name,
	}
	M.AssertVolume(t)
	return t
end

local Host_keys = { "sourcePath" = true, nil }

function M.AssertHost(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Host to be of type 'table'")
	if struct["sourcePath"] then M.AssertString(struct["sourcePath"]) end
	for k,_ in pairs(struct) do
		assert(Host_keys[k], "Host contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Host
-- <p>The contents of the <code>host</code> parameter determine whether your data volume persists on the host container instance and where it is stored. If the host parameter is empty, then the Docker daemon assigns a host path for your data volume, but the data is not guaranteed to persist after the containers associated with it stop running.</p>
-- @param sourcePath [String] <p>The path on the host container instance that is presented to the container. If this parameter is empty, then the Docker daemon has assigned a host path for you. If the <code>host</code> parameter contains a <code>sourcePath</code> file location, then the data volume persists at the specified location on the host container instance until you delete it manually. If the <code>sourcePath</code> value does not exist on the host container instance, the Docker daemon creates it. If the location does exist, the contents of the source path folder are exported.</p>
function M.Host(sourcePath, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Host")
	local t = { 
		["sourcePath"] = sourcePath,
	}
	M.AssertHost(t)
	return t
end

local JobQueueDetail_keys = { "status" = true, "jobQueueArn" = true, "computeEnvironmentOrder" = true, "statusReason" = true, "priority" = true, "state" = true, "jobQueueName" = true, nil }

function M.AssertJobQueueDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected JobQueueDetail to be of type 'table'")
	assert(struct["jobQueueName"], "Expected key jobQueueName to exist in table")
	assert(struct["jobQueueArn"], "Expected key jobQueueArn to exist in table")
	assert(struct["state"], "Expected key state to exist in table")
	assert(struct["priority"], "Expected key priority to exist in table")
	assert(struct["computeEnvironmentOrder"], "Expected key computeEnvironmentOrder to exist in table")
	if struct["status"] then M.AssertJQStatus(struct["status"]) end
	if struct["jobQueueArn"] then M.AssertString(struct["jobQueueArn"]) end
	if struct["computeEnvironmentOrder"] then M.AssertComputeEnvironmentOrders(struct["computeEnvironmentOrder"]) end
	if struct["statusReason"] then M.AssertString(struct["statusReason"]) end
	if struct["priority"] then M.AssertInteger(struct["priority"]) end
	if struct["state"] then M.AssertJQState(struct["state"]) end
	if struct["jobQueueName"] then M.AssertString(struct["jobQueueName"]) end
	for k,_ in pairs(struct) do
		assert(JobQueueDetail_keys[k], "JobQueueDetail contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type JobQueueDetail
-- <p>An object representing the details of an AWS Batch job queue.</p>
-- @param status [JQStatus] <p>The status of the job queue (for example, <code>CREATING</code> or <code>VALID</code>).</p>
-- @param jobQueueArn [String] <p>The Amazon Resource Name (ARN) of the job queue.</p>
-- @param computeEnvironmentOrder [ComputeEnvironmentOrders] <p>The compute environments that are attached to the job queue and the order in which job placement is preferred. Compute environments are selected for job placement in ascending order.</p>
-- @param statusReason [String] <p>A short, human-readable string to provide additional details about the current status of the job queue.</p>
-- @param priority [Integer] <p>The priority of the job queue. </p>
-- @param state [JQState] <p>Describes the ability of the queue to accept new jobs.</p>
-- @param jobQueueName [String] <p>The name of the job queue.</p>
-- Required parameter: jobQueueName
-- Required parameter: jobQueueArn
-- Required parameter: state
-- Required parameter: priority
-- Required parameter: computeEnvironmentOrder
function M.JobQueueDetail(status, jobQueueArn, computeEnvironmentOrder, statusReason, priority, state, jobQueueName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating JobQueueDetail")
	local t = { 
		["status"] = status,
		["jobQueueArn"] = jobQueueArn,
		["computeEnvironmentOrder"] = computeEnvironmentOrder,
		["statusReason"] = statusReason,
		["priority"] = priority,
		["state"] = state,
		["jobQueueName"] = jobQueueName,
	}
	M.AssertJobQueueDetail(t)
	return t
end

local JobSummary_keys = { "jobName" = true, "jobId" = true, nil }

function M.AssertJobSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected JobSummary to be of type 'table'")
	assert(struct["jobId"], "Expected key jobId to exist in table")
	assert(struct["jobName"], "Expected key jobName to exist in table")
	if struct["jobName"] then M.AssertString(struct["jobName"]) end
	if struct["jobId"] then M.AssertString(struct["jobId"]) end
	for k,_ in pairs(struct) do
		assert(JobSummary_keys[k], "JobSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type JobSummary
-- <p>An object representing summary details of a job.</p>
-- @param jobName [String] <p>The name of the job.</p>
-- @param jobId [String] <p>The ID of the job.</p>
-- Required parameter: jobId
-- Required parameter: jobName
function M.JobSummary(jobName, jobId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating JobSummary")
	local t = { 
		["jobName"] = jobName,
		["jobId"] = jobId,
	}
	M.AssertJobSummary(t)
	return t
end

local JobDefinition_keys = { "status" = true, "jobDefinitionArn" = true, "parameters" = true, "retryStrategy" = true, "containerProperties" = true, "type" = true, "jobDefinitionName" = true, "revision" = true, nil }

function M.AssertJobDefinition(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected JobDefinition to be of type 'table'")
	assert(struct["jobDefinitionName"], "Expected key jobDefinitionName to exist in table")
	assert(struct["jobDefinitionArn"], "Expected key jobDefinitionArn to exist in table")
	assert(struct["revision"], "Expected key revision to exist in table")
	assert(struct["type"], "Expected key type to exist in table")
	if struct["status"] then M.AssertString(struct["status"]) end
	if struct["jobDefinitionArn"] then M.AssertString(struct["jobDefinitionArn"]) end
	if struct["parameters"] then M.AssertParametersMap(struct["parameters"]) end
	if struct["retryStrategy"] then M.AssertRetryStrategy(struct["retryStrategy"]) end
	if struct["containerProperties"] then M.AssertContainerProperties(struct["containerProperties"]) end
	if struct["type"] then M.AssertString(struct["type"]) end
	if struct["jobDefinitionName"] then M.AssertString(struct["jobDefinitionName"]) end
	if struct["revision"] then M.AssertInteger(struct["revision"]) end
	for k,_ in pairs(struct) do
		assert(JobDefinition_keys[k], "JobDefinition contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type JobDefinition
-- <p>An object representing an AWS Batch job definition.</p>
-- @param status [String] <p>The status of the job definition.</p>
-- @param jobDefinitionArn [String] <p>The Amazon Resource Name (ARN) for the job definition. </p>
-- @param parameters [ParametersMap] <p>Default parameters or parameter substitution placeholders that are set in the job definition. Parameters are specified as a key-value pair mapping. Parameters in a <code>SubmitJob</code> request override any corresponding parameter defaults from the job definition.</p>
-- @param retryStrategy [RetryStrategy] <p>The retry strategy to use for failed jobs that are submitted with this job definition.</p>
-- @param containerProperties [ContainerProperties] <p>An object with various properties specific to container-based jobs. </p>
-- @param type [String] <p>The type of job definition.</p>
-- @param jobDefinitionName [String] <p>The name of the job definition. </p>
-- @param revision [Integer] <p>The revision of the job definition.</p>
-- Required parameter: jobDefinitionName
-- Required parameter: jobDefinitionArn
-- Required parameter: revision
-- Required parameter: type
function M.JobDefinition(status, jobDefinitionArn, parameters, retryStrategy, containerProperties, type, jobDefinitionName, revision, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating JobDefinition")
	local t = { 
		["status"] = status,
		["jobDefinitionArn"] = jobDefinitionArn,
		["parameters"] = parameters,
		["retryStrategy"] = retryStrategy,
		["containerProperties"] = containerProperties,
		["type"] = type,
		["jobDefinitionName"] = jobDefinitionName,
		["revision"] = revision,
	}
	M.AssertJobDefinition(t)
	return t
end

local UpdateJobQueueResponse_keys = { "jobQueueArn" = true, "jobQueueName" = true, nil }

function M.AssertUpdateJobQueueResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateJobQueueResponse to be of type 'table'")
	if struct["jobQueueArn"] then M.AssertString(struct["jobQueueArn"]) end
	if struct["jobQueueName"] then M.AssertString(struct["jobQueueName"]) end
	for k,_ in pairs(struct) do
		assert(UpdateJobQueueResponse_keys[k], "UpdateJobQueueResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateJobQueueResponse
--  
-- @param jobQueueArn [String] <p>The Amazon Resource Name (ARN) of the job queue.</p>
-- @param jobQueueName [String] <p>The name of the job queue.</p>
function M.UpdateJobQueueResponse(jobQueueArn, jobQueueName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateJobQueueResponse")
	local t = { 
		["jobQueueArn"] = jobQueueArn,
		["jobQueueName"] = jobQueueName,
	}
	M.AssertUpdateJobQueueResponse(t)
	return t
end

local DescribeComputeEnvironmentsResponse_keys = { "nextToken" = true, "computeEnvironments" = true, nil }

function M.AssertDescribeComputeEnvironmentsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeComputeEnvironmentsResponse to be of type 'table'")
	if struct["nextToken"] then M.AssertString(struct["nextToken"]) end
	if struct["computeEnvironments"] then M.AssertComputeEnvironmentDetailList(struct["computeEnvironments"]) end
	for k,_ in pairs(struct) do
		assert(DescribeComputeEnvironmentsResponse_keys[k], "DescribeComputeEnvironmentsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeComputeEnvironmentsResponse
--  
-- @param nextToken [String] <p>The <code>nextToken</code> value to include in a future <code>DescribeComputeEnvironments</code> request. When the results of a <code>DescribeJobDefinitions</code> request exceed <code>maxResults</code>, this value can be used to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>
-- @param computeEnvironments [ComputeEnvironmentDetailList] <p>The list of compute environments.</p>
function M.DescribeComputeEnvironmentsResponse(nextToken, computeEnvironments, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeComputeEnvironmentsResponse")
	local t = { 
		["nextToken"] = nextToken,
		["computeEnvironments"] = computeEnvironments,
	}
	M.AssertDescribeComputeEnvironmentsResponse(t)
	return t
end

local DescribeComputeEnvironmentsRequest_keys = { "nextToken" = true, "maxResults" = true, "computeEnvironments" = true, nil }

function M.AssertDescribeComputeEnvironmentsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeComputeEnvironmentsRequest to be of type 'table'")
	if struct["nextToken"] then M.AssertString(struct["nextToken"]) end
	if struct["maxResults"] then M.AssertInteger(struct["maxResults"]) end
	if struct["computeEnvironments"] then M.AssertStringList(struct["computeEnvironments"]) end
	for k,_ in pairs(struct) do
		assert(DescribeComputeEnvironmentsRequest_keys[k], "DescribeComputeEnvironmentsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeComputeEnvironmentsRequest
--  
-- @param nextToken [String] <p>The <code>nextToken</code> value returned from a previous paginated <code>DescribeComputeEnvironments</code> request where <code>maxResults</code> was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the <code>nextToken</code> value. This value is <code>null</code> when there are no more results to return.</p> <note> <p>This token should be treated as an opaque identifier that is only used to retrieve the next items in a list and not for other programmatic purposes.</p> </note>
-- @param maxResults [Integer] <p>The maximum number of cluster results returned by <code>DescribeComputeEnvironments</code> in paginated output. When this parameter is used, <code>DescribeComputeEnvironments</code> only returns <code>maxResults</code> results in a single page along with a <code>nextToken</code> response element. The remaining results of the initial request can be seen by sending another <code>DescribeComputeEnvironments</code> request with the returned <code>nextToken</code> value. This value can be between 1 and 100. If this parameter is not used, then <code>DescribeComputeEnvironments</code> returns up to 100 results and a <code>nextToken</code> value if applicable.</p>
-- @param computeEnvironments [StringList] <p>A list of up to 100 compute environment names or full Amazon Resource Name (ARN) entries. </p>
function M.DescribeComputeEnvironmentsRequest(nextToken, maxResults, computeEnvironments, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeComputeEnvironmentsRequest")
	local t = { 
		["nextToken"] = nextToken,
		["maxResults"] = maxResults,
		["computeEnvironments"] = computeEnvironments,
	}
	M.AssertDescribeComputeEnvironmentsRequest(t)
	return t
end

local ServerException_keys = { "message" = true, nil }

function M.AssertServerException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ServerException to be of type 'table'")
	if struct["message"] then M.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(ServerException_keys[k], "ServerException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ServerException
-- <p>These errors are usually caused by a server issue.</p>
-- @param message [String] <p>These errors are usually caused by a server issue.</p>
function M.ServerException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ServerException")
	local t = { 
		["message"] = message,
	}
	M.AssertServerException(t)
	return t
end

local CreateComputeEnvironmentResponse_keys = { "computeEnvironmentName" = true, "computeEnvironmentArn" = true, nil }

function M.AssertCreateComputeEnvironmentResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateComputeEnvironmentResponse to be of type 'table'")
	if struct["computeEnvironmentName"] then M.AssertString(struct["computeEnvironmentName"]) end
	if struct["computeEnvironmentArn"] then M.AssertString(struct["computeEnvironmentArn"]) end
	for k,_ in pairs(struct) do
		assert(CreateComputeEnvironmentResponse_keys[k], "CreateComputeEnvironmentResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateComputeEnvironmentResponse
--  
-- @param computeEnvironmentName [String] <p>The name of the compute environment.</p>
-- @param computeEnvironmentArn [String] <p>The Amazon Resource Name (ARN) of the compute environment. </p>
function M.CreateComputeEnvironmentResponse(computeEnvironmentName, computeEnvironmentArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateComputeEnvironmentResponse")
	local t = { 
		["computeEnvironmentName"] = computeEnvironmentName,
		["computeEnvironmentArn"] = computeEnvironmentArn,
	}
	M.AssertCreateComputeEnvironmentResponse(t)
	return t
end

local UpdateJobQueueRequest_keys = { "priority" = true, "state" = true, "computeEnvironmentOrder" = true, "jobQueue" = true, nil }

function M.AssertUpdateJobQueueRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateJobQueueRequest to be of type 'table'")
	assert(struct["jobQueue"], "Expected key jobQueue to exist in table")
	if struct["priority"] then M.AssertInteger(struct["priority"]) end
	if struct["state"] then M.AssertJQState(struct["state"]) end
	if struct["computeEnvironmentOrder"] then M.AssertComputeEnvironmentOrders(struct["computeEnvironmentOrder"]) end
	if struct["jobQueue"] then M.AssertString(struct["jobQueue"]) end
	for k,_ in pairs(struct) do
		assert(UpdateJobQueueRequest_keys[k], "UpdateJobQueueRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateJobQueueRequest
--  
-- @param priority [Integer] <p>The priority of the job queue. Job queues with a higher priority (or a lower integer value for the <code>priority</code> parameter) are evaluated first when associated with same compute environment. Priority is determined in ascending order, for example, a job queue with a priority value of <code>1</code> is given scheduling preference over a job queue with a priority value of <code>10</code>.</p>
-- @param state [JQState] <p>Describes the queue's ability to accept new jobs.</p>
-- @param computeEnvironmentOrder [ComputeEnvironmentOrders] <p>Details the set of compute environments mapped to a job queue and their order relative to each other. This is one of the parameters used by the job scheduler to determine which compute environment should execute a given job. </p>
-- @param jobQueue [String] <p>The name or the Amazon Resource Name (ARN) of the job queue.</p>
-- Required parameter: jobQueue
function M.UpdateJobQueueRequest(priority, state, computeEnvironmentOrder, jobQueue, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateJobQueueRequest")
	local t = { 
		["priority"] = priority,
		["state"] = state,
		["computeEnvironmentOrder"] = computeEnvironmentOrder,
		["jobQueue"] = jobQueue,
	}
	M.AssertUpdateJobQueueRequest(t)
	return t
end

local TerminateJobResponse_keys = { nil }

function M.AssertTerminateJobResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TerminateJobResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(TerminateJobResponse_keys[k], "TerminateJobResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TerminateJobResponse
--  
function M.TerminateJobResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating TerminateJobResponse")
	local t = { 
	}
	M.AssertTerminateJobResponse(t)
	return t
end

local CreateJobQueueResponse_keys = { "jobQueueArn" = true, "jobQueueName" = true, nil }

function M.AssertCreateJobQueueResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateJobQueueResponse to be of type 'table'")
	assert(struct["jobQueueName"], "Expected key jobQueueName to exist in table")
	assert(struct["jobQueueArn"], "Expected key jobQueueArn to exist in table")
	if struct["jobQueueArn"] then M.AssertString(struct["jobQueueArn"]) end
	if struct["jobQueueName"] then M.AssertString(struct["jobQueueName"]) end
	for k,_ in pairs(struct) do
		assert(CreateJobQueueResponse_keys[k], "CreateJobQueueResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateJobQueueResponse
--  
-- @param jobQueueArn [String] <p>The Amazon Resource Name (ARN) of the job queue.</p>
-- @param jobQueueName [String] <p>The name of the job queue.</p>
-- Required parameter: jobQueueName
-- Required parameter: jobQueueArn
function M.CreateJobQueueResponse(jobQueueArn, jobQueueName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateJobQueueResponse")
	local t = { 
		["jobQueueArn"] = jobQueueArn,
		["jobQueueName"] = jobQueueName,
	}
	M.AssertCreateJobQueueResponse(t)
	return t
end

local DeregisterJobDefinitionResponse_keys = { nil }

function M.AssertDeregisterJobDefinitionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeregisterJobDefinitionResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DeregisterJobDefinitionResponse_keys[k], "DeregisterJobDefinitionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeregisterJobDefinitionResponse
--  
function M.DeregisterJobDefinitionResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeregisterJobDefinitionResponse")
	local t = { 
	}
	M.AssertDeregisterJobDefinitionResponse(t)
	return t
end

local ListJobsResponse_keys = { "nextToken" = true, "jobSummaryList" = true, nil }

function M.AssertListJobsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListJobsResponse to be of type 'table'")
	assert(struct["jobSummaryList"], "Expected key jobSummaryList to exist in table")
	if struct["nextToken"] then M.AssertString(struct["nextToken"]) end
	if struct["jobSummaryList"] then M.AssertJobSummaryList(struct["jobSummaryList"]) end
	for k,_ in pairs(struct) do
		assert(ListJobsResponse_keys[k], "ListJobsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListJobsResponse
--  
-- @param nextToken [String] <p>The <code>nextToken</code> value to include in a future <code>ListJobs</code> request. When the results of a <code>ListJobs</code> request exceed <code>maxResults</code>, this value can be used to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>
-- @param jobSummaryList [JobSummaryList] <p>A list of job summaries that match the request.</p>
-- Required parameter: jobSummaryList
function M.ListJobsResponse(nextToken, jobSummaryList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListJobsResponse")
	local t = { 
		["nextToken"] = nextToken,
		["jobSummaryList"] = jobSummaryList,
	}
	M.AssertListJobsResponse(t)
	return t
end

local DescribeJobsResponse_keys = { "jobs" = true, nil }

function M.AssertDescribeJobsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeJobsResponse to be of type 'table'")
	if struct["jobs"] then M.AssertJobDetailList(struct["jobs"]) end
	for k,_ in pairs(struct) do
		assert(DescribeJobsResponse_keys[k], "DescribeJobsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeJobsResponse
--  
-- @param jobs [JobDetailList] <p>The list of jobs. </p>
function M.DescribeJobsResponse(jobs, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeJobsResponse")
	local t = { 
		["jobs"] = jobs,
	}
	M.AssertDescribeJobsResponse(t)
	return t
end

local RegisterJobDefinitionResponse_keys = { "jobDefinitionArn" = true, "jobDefinitionName" = true, "revision" = true, nil }

function M.AssertRegisterJobDefinitionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RegisterJobDefinitionResponse to be of type 'table'")
	assert(struct["jobDefinitionName"], "Expected key jobDefinitionName to exist in table")
	assert(struct["jobDefinitionArn"], "Expected key jobDefinitionArn to exist in table")
	assert(struct["revision"], "Expected key revision to exist in table")
	if struct["jobDefinitionArn"] then M.AssertString(struct["jobDefinitionArn"]) end
	if struct["jobDefinitionName"] then M.AssertString(struct["jobDefinitionName"]) end
	if struct["revision"] then M.AssertInteger(struct["revision"]) end
	for k,_ in pairs(struct) do
		assert(RegisterJobDefinitionResponse_keys[k], "RegisterJobDefinitionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RegisterJobDefinitionResponse
--  
-- @param jobDefinitionArn [String] <p>The Amazon Resource Name (ARN) of the job definition. </p>
-- @param jobDefinitionName [String] <p>The name of the job definition. </p>
-- @param revision [Integer] <p>The revision of the job definition.</p>
-- Required parameter: jobDefinitionName
-- Required parameter: jobDefinitionArn
-- Required parameter: revision
function M.RegisterJobDefinitionResponse(jobDefinitionArn, jobDefinitionName, revision, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RegisterJobDefinitionResponse")
	local t = { 
		["jobDefinitionArn"] = jobDefinitionArn,
		["jobDefinitionName"] = jobDefinitionName,
		["revision"] = revision,
	}
	M.AssertRegisterJobDefinitionResponse(t)
	return t
end

local ContainerOverrides_keys = { "environment" = true, "vcpus" = true, "command" = true, "memory" = true, nil }

function M.AssertContainerOverrides(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ContainerOverrides to be of type 'table'")
	if struct["environment"] then M.AssertEnvironmentVariables(struct["environment"]) end
	if struct["vcpus"] then M.AssertInteger(struct["vcpus"]) end
	if struct["command"] then M.AssertStringList(struct["command"]) end
	if struct["memory"] then M.AssertInteger(struct["memory"]) end
	for k,_ in pairs(struct) do
		assert(ContainerOverrides_keys[k], "ContainerOverrides contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ContainerOverrides
-- <p>The overrides that should be sent to a container.</p>
-- @param environment [EnvironmentVariables] <p>The environment variables to send to the container. You can add new environment variables, which are added to the container at launch, or you can override the existing environment variables from the Docker image or the job definition.</p>
-- @param vcpus [Integer] <p>The number of vCPUs to reserve for the container. This value overrides the value set in the job definition.</p>
-- @param command [StringList] <p>The command to send to the container that overrides the default command from the Docker image or the job definition.</p>
-- @param memory [Integer] <p>The number of MiB of memory reserved for the job. This value overrides the value set in the job definition.</p>
function M.ContainerOverrides(environment, vcpus, command, memory, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ContainerOverrides")
	local t = { 
		["environment"] = environment,
		["vcpus"] = vcpus,
		["command"] = command,
		["memory"] = memory,
	}
	M.AssertContainerOverrides(t)
	return t
end

local DescribeJobQueuesRequest_keys = { "jobQueues" = true, "nextToken" = true, "maxResults" = true, nil }

function M.AssertDescribeJobQueuesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeJobQueuesRequest to be of type 'table'")
	if struct["jobQueues"] then M.AssertStringList(struct["jobQueues"]) end
	if struct["nextToken"] then M.AssertString(struct["nextToken"]) end
	if struct["maxResults"] then M.AssertInteger(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(DescribeJobQueuesRequest_keys[k], "DescribeJobQueuesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeJobQueuesRequest
--  
-- @param jobQueues [StringList] <p>A list of up to 100 queue names or full queue Amazon Resource Name (ARN) entries.</p>
-- @param nextToken [String] <p>The <code>nextToken</code> value returned from a previous paginated <code>DescribeJobQueues</code> request where <code>maxResults</code> was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the <code>nextToken</code> value. This value is <code>null</code> when there are no more results to return.</p> <note> <p>This token should be treated as an opaque identifier that is only used to retrieve the next items in a list and not for other programmatic purposes.</p> </note>
-- @param maxResults [Integer] <p>The maximum number of results returned by <code>DescribeJobQueues</code> in paginated output. When this parameter is used, <code>DescribeJobQueues</code> only returns <code>maxResults</code> results in a single page along with a <code>nextToken</code> response element. The remaining results of the initial request can be seen by sending another <code>DescribeJobQueues</code> request with the returned <code>nextToken</code> value. This value can be between 1 and 100. If this parameter is not used, then <code>DescribeJobQueues</code> returns up to 100 results and a <code>nextToken</code> value if applicable.</p>
function M.DescribeJobQueuesRequest(jobQueues, nextToken, maxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeJobQueuesRequest")
	local t = { 
		["jobQueues"] = jobQueues,
		["nextToken"] = nextToken,
		["maxResults"] = maxResults,
	}
	M.AssertDescribeJobQueuesRequest(t)
	return t
end

local ContainerProperties_keys = { "mountPoints" = true, "readonlyRootFilesystem" = true, "image" = true, "environment" = true, "vcpus" = true, "jobRoleArn" = true, "user" = true, "volumes" = true, "memory" = true, "command" = true, "privileged" = true, "ulimits" = true, nil }

function M.AssertContainerProperties(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ContainerProperties to be of type 'table'")
	assert(struct["image"], "Expected key image to exist in table")
	assert(struct["vcpus"], "Expected key vcpus to exist in table")
	assert(struct["memory"], "Expected key memory to exist in table")
	if struct["mountPoints"] then M.AssertMountPoints(struct["mountPoints"]) end
	if struct["readonlyRootFilesystem"] then M.AssertBoolean(struct["readonlyRootFilesystem"]) end
	if struct["image"] then M.AssertString(struct["image"]) end
	if struct["environment"] then M.AssertEnvironmentVariables(struct["environment"]) end
	if struct["vcpus"] then M.AssertInteger(struct["vcpus"]) end
	if struct["jobRoleArn"] then M.AssertString(struct["jobRoleArn"]) end
	if struct["user"] then M.AssertString(struct["user"]) end
	if struct["volumes"] then M.AssertVolumes(struct["volumes"]) end
	if struct["memory"] then M.AssertInteger(struct["memory"]) end
	if struct["command"] then M.AssertStringList(struct["command"]) end
	if struct["privileged"] then M.AssertBoolean(struct["privileged"]) end
	if struct["ulimits"] then M.AssertUlimits(struct["ulimits"]) end
	for k,_ in pairs(struct) do
		assert(ContainerProperties_keys[k], "ContainerProperties contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ContainerProperties
-- <p>Container properties are used in job definitions to describe the container that is launched as part of a job.</p>
-- @param mountPoints [MountPoints] <p>The mount points for data volumes in your container. This parameter maps to <code>Volumes</code> in the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container">Create a container</a> section of the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/">Docker Remote API</a> and the <code>--volume</code> option to <a href="https://docs.docker.com/engine/reference/run/">docker run</a>.</p>
-- @param readonlyRootFilesystem [Boolean] <p>When this parameter is true, the container is given read-only access to its root file system. This parameter maps to <code>ReadonlyRootfs</code> in the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container">Create a container</a> section of the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/">Docker Remote API</a> and the <code>--read-only</code> option to <code>docker run</code>.</p>
-- @param image [String] <p>The image used to start a container. This string is passed directly to the Docker daemon. Images in the Docker Hub registry are available by default. Other repositories are specified with <code> <i>repository-url</i>/<i>image</i>:<i>tag</i> </code>. Up to 255 letters (uppercase and lowercase), numbers, hyphens, underscores, colons, periods, forward slashes, and number signs are allowed. This parameter maps to <code>Image</code> in the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container">Create a container</a> section of the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/">Docker Remote API</a> and the <code>IMAGE</code> parameter of <a href="https://docs.docker.com/engine/reference/run/">docker run</a>.</p> <ul> <li> <p>Images in Amazon ECR repositories use the full registry and repository URI (for example, <code>012345678910.dkr.ecr.&lt;region-name&gt;.amazonaws.com/&lt;repository-name&gt;</code>). </p> </li> <li> <p>Images in official repositories on Docker Hub use a single name (for example, <code>ubuntu</code> or <code>mongo</code>).</p> </li> <li> <p>Images in other repositories on Docker Hub are qualified with an organization name (for example, <code>amazon/amazon-ecs-agent</code>).</p> </li> <li> <p>Images in other online repositories are qualified further by a domain name (for example, <code>quay.io/assemblyline/ubuntu</code>).</p> </li> </ul>
-- @param environment [EnvironmentVariables] <p>The environment variables to pass to a container. This parameter maps to <code>Env</code> in the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container">Create a container</a> section of the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/">Docker Remote API</a> and the <code>--env</code> option to <a href="https://docs.docker.com/engine/reference/run/">docker run</a>.</p> <important> <p>We do not recommend using plain text environment variables for sensitive information, such as credential data.</p> </important>
-- @param vcpus [Integer] <p>The number of vCPUs reserved for the container. This parameter maps to <code>CpuShares</code> in the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container">Create a container</a> section of the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/">Docker Remote API</a> and the <code>--cpu-shares</code> option to <a href="https://docs.docker.com/engine/reference/run/">docker run</a>. Each vCPU is equivalent to 1,024 CPU shares.</p>
-- @param jobRoleArn [String] <p>The Amazon Resource Name (ARN) of the IAM role that the container can assume for AWS permissions.</p>
-- @param user [String] <p>The user name to use inside the container. This parameter maps to <code>User</code> in the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container">Create a container</a> section of the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/">Docker Remote API</a> and the <code>--user</code> option to <a href="https://docs.docker.com/engine/reference/run/">docker run</a>.</p>
-- @param volumes [Volumes] <p>A list of data volumes used in a job.</p>
-- @param memory [Integer] <p>The hard limit (in MiB) of memory to present to the container. If your container attempts to exceed the memory specified here, the container is killed. This parameter maps to <code>Memory</code> in the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container">Create a container</a> section of the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/">Docker Remote API</a> and the <code>--memory</code> option to <a href="https://docs.docker.com/engine/reference/run/">docker run</a>.</p>
-- @param command [StringList] <p>The command that is passed to the container. This parameter maps to <code>Cmd</code> in the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container">Create a container</a> section of the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/">Docker Remote API</a> and the <code>COMMAND</code> parameter to <a href="https://docs.docker.com/engine/reference/run/">docker run</a>. For more information, see <a href="https://docs.docker.com/engine/reference/builder/#cmd">https://docs.docker.com/engine/reference/builder/#cmd</a>.</p>
-- @param privileged [Boolean] <p>When this parameter is true, the container is given elevated privileges on the host container instance (similar to the <code>root</code> user). This parameter maps to <code>Privileged</code> in the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container">Create a container</a> section of the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/">Docker Remote API</a> and the <code>--privileged</code> option to <a href="https://docs.docker.com/engine/reference/run/">docker run</a>.</p>
-- @param ulimits [Ulimits] <p>A list of <code>ulimits</code> to set in the container. This parameter maps to <code>Ulimits</code> in the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container">Create a container</a> section of the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/">Docker Remote API</a> and the <code>--ulimit</code> option to <a href="https://docs.docker.com/engine/reference/run/">docker run</a>.</p>
-- Required parameter: image
-- Required parameter: vcpus
-- Required parameter: memory
function M.ContainerProperties(mountPoints, readonlyRootFilesystem, image, environment, vcpus, jobRoleArn, user, volumes, memory, command, privileged, ulimits, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ContainerProperties")
	local t = { 
		["mountPoints"] = mountPoints,
		["readonlyRootFilesystem"] = readonlyRootFilesystem,
		["image"] = image,
		["environment"] = environment,
		["vcpus"] = vcpus,
		["jobRoleArn"] = jobRoleArn,
		["user"] = user,
		["volumes"] = volumes,
		["memory"] = memory,
		["command"] = command,
		["privileged"] = privileged,
		["ulimits"] = ulimits,
	}
	M.AssertContainerProperties(t)
	return t
end

local DeleteJobQueueResponse_keys = { nil }

function M.AssertDeleteJobQueueResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteJobQueueResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DeleteJobQueueResponse_keys[k], "DeleteJobQueueResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteJobQueueResponse
--  
function M.DeleteJobQueueResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteJobQueueResponse")
	local t = { 
	}
	M.AssertDeleteJobQueueResponse(t)
	return t
end

local UpdateComputeEnvironmentResponse_keys = { "computeEnvironmentName" = true, "computeEnvironmentArn" = true, nil }

function M.AssertUpdateComputeEnvironmentResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateComputeEnvironmentResponse to be of type 'table'")
	if struct["computeEnvironmentName"] then M.AssertString(struct["computeEnvironmentName"]) end
	if struct["computeEnvironmentArn"] then M.AssertString(struct["computeEnvironmentArn"]) end
	for k,_ in pairs(struct) do
		assert(UpdateComputeEnvironmentResponse_keys[k], "UpdateComputeEnvironmentResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateComputeEnvironmentResponse
--  
-- @param computeEnvironmentName [String] <p>The name of compute environment.</p>
-- @param computeEnvironmentArn [String] <p>The Amazon Resource Name (ARN) of the compute environment. </p>
function M.UpdateComputeEnvironmentResponse(computeEnvironmentName, computeEnvironmentArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateComputeEnvironmentResponse")
	local t = { 
		["computeEnvironmentName"] = computeEnvironmentName,
		["computeEnvironmentArn"] = computeEnvironmentArn,
	}
	M.AssertUpdateComputeEnvironmentResponse(t)
	return t
end

local DeleteJobQueueRequest_keys = { "jobQueue" = true, nil }

function M.AssertDeleteJobQueueRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteJobQueueRequest to be of type 'table'")
	assert(struct["jobQueue"], "Expected key jobQueue to exist in table")
	if struct["jobQueue"] then M.AssertString(struct["jobQueue"]) end
	for k,_ in pairs(struct) do
		assert(DeleteJobQueueRequest_keys[k], "DeleteJobQueueRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteJobQueueRequest
--  
-- @param jobQueue [String] <p>The short name or full Amazon Resource Name (ARN) of the queue to delete. </p>
-- Required parameter: jobQueue
function M.DeleteJobQueueRequest(jobQueue, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteJobQueueRequest")
	local t = { 
		["jobQueue"] = jobQueue,
	}
	M.AssertDeleteJobQueueRequest(t)
	return t
end

local AttemptContainerDetail_keys = { "reason" = true, "taskArn" = true, "containerInstanceArn" = true, "exitCode" = true, nil }

function M.AssertAttemptContainerDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttemptContainerDetail to be of type 'table'")
	if struct["reason"] then M.AssertString(struct["reason"]) end
	if struct["taskArn"] then M.AssertString(struct["taskArn"]) end
	if struct["containerInstanceArn"] then M.AssertString(struct["containerInstanceArn"]) end
	if struct["exitCode"] then M.AssertInteger(struct["exitCode"]) end
	for k,_ in pairs(struct) do
		assert(AttemptContainerDetail_keys[k], "AttemptContainerDetail contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AttemptContainerDetail
-- <p>An object representing the details of a container that is part of a job attempt.</p>
-- @param reason [String] <p>A short (255 max characters) human-readable string to provide additional details about a running or stopped container.</p>
-- @param taskArn [String] <p>The Amazon Resource Name (ARN) of the Amazon ECS task that is associated with the job attempt.</p>
-- @param containerInstanceArn [String] <p>The Amazon Resource Name (ARN) of the Amazon ECS container instance that hosts the job attempt.</p>
-- @param exitCode [Integer] <p>The exit code for the job attempt. A non-zero exit code is considered a failure.</p>
function M.AttemptContainerDetail(reason, taskArn, containerInstanceArn, exitCode, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AttemptContainerDetail")
	local t = { 
		["reason"] = reason,
		["taskArn"] = taskArn,
		["containerInstanceArn"] = containerInstanceArn,
		["exitCode"] = exitCode,
	}
	M.AssertAttemptContainerDetail(t)
	return t
end

local SubmitJobRequest_keys = { "parameters" = true, "jobDefinition" = true, "jobQueue" = true, "jobName" = true, "retryStrategy" = true, "containerOverrides" = true, "dependsOn" = true, nil }

function M.AssertSubmitJobRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SubmitJobRequest to be of type 'table'")
	assert(struct["jobName"], "Expected key jobName to exist in table")
	assert(struct["jobQueue"], "Expected key jobQueue to exist in table")
	assert(struct["jobDefinition"], "Expected key jobDefinition to exist in table")
	if struct["parameters"] then M.AssertParametersMap(struct["parameters"]) end
	if struct["jobDefinition"] then M.AssertString(struct["jobDefinition"]) end
	if struct["jobQueue"] then M.AssertString(struct["jobQueue"]) end
	if struct["jobName"] then M.AssertString(struct["jobName"]) end
	if struct["retryStrategy"] then M.AssertRetryStrategy(struct["retryStrategy"]) end
	if struct["containerOverrides"] then M.AssertContainerOverrides(struct["containerOverrides"]) end
	if struct["dependsOn"] then M.AssertJobDependencyList(struct["dependsOn"]) end
	for k,_ in pairs(struct) do
		assert(SubmitJobRequest_keys[k], "SubmitJobRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SubmitJobRequest
--  
-- @param parameters [ParametersMap] <p>Additional parameters passed to the job that replace parameter substitution placeholders that are set in the job definition. Parameters are specified as a key and value pair mapping. Parameters in a <code>SubmitJob</code> request override any corresponding parameter defaults from the job definition.</p>
-- @param jobDefinition [String] <p>The job definition used by this job. This value can be either a <code>name:revision</code> or the Amazon Resource Name (ARN) for the job definition.</p>
-- @param jobQueue [String] <p>The job queue into which the job will be submitted. You can specify either the name or the Amazon Resource Name (ARN) of the queue. </p>
-- @param jobName [String] <p>The name of the job. A name must be 1 to 128 characters in length.</p> <p>Pattern: ^[a-zA-Z0-9_]+$</p>
-- @param retryStrategy [RetryStrategy] <p>The retry strategy to use for failed jobs from this <a>SubmitJob</a> operation. When a retry strategy is specified here, it overrides the retry strategy defined in the job definition.</p>
-- @param containerOverrides [ContainerOverrides] <p>A list of container overrides in JSON format that specify the name of a container in the specified job definition and the overrides it should receive. You can override the default command for a container (that is specified in the job definition or the Docker image) with a <code>command</code> override. You can also override existing environment variables (that are specified in the job definition or Docker image) on a container or add new environment variables to it with an <code>environment</code> override.</p>
-- @param dependsOn [JobDependencyList] <p>A list of job IDs on which this job depends. A job can depend upon a maximum of 100 jobs. </p>
-- Required parameter: jobName
-- Required parameter: jobQueue
-- Required parameter: jobDefinition
function M.SubmitJobRequest(parameters, jobDefinition, jobQueue, jobName, retryStrategy, containerOverrides, dependsOn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SubmitJobRequest")
	local t = { 
		["parameters"] = parameters,
		["jobDefinition"] = jobDefinition,
		["jobQueue"] = jobQueue,
		["jobName"] = jobName,
		["retryStrategy"] = retryStrategy,
		["containerOverrides"] = containerOverrides,
		["dependsOn"] = dependsOn,
	}
	M.AssertSubmitJobRequest(t)
	return t
end

local ContainerDetail_keys = { "mountPoints" = true, "taskArn" = true, "readonlyRootFilesystem" = true, "image" = true, "reason" = true, "containerInstanceArn" = true, "environment" = true, "vcpus" = true, "jobRoleArn" = true, "user" = true, "volumes" = true, "memory" = true, "command" = true, "privileged" = true, "ulimits" = true, "exitCode" = true, nil }

function M.AssertContainerDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ContainerDetail to be of type 'table'")
	if struct["mountPoints"] then M.AssertMountPoints(struct["mountPoints"]) end
	if struct["taskArn"] then M.AssertString(struct["taskArn"]) end
	if struct["readonlyRootFilesystem"] then M.AssertBoolean(struct["readonlyRootFilesystem"]) end
	if struct["image"] then M.AssertString(struct["image"]) end
	if struct["reason"] then M.AssertString(struct["reason"]) end
	if struct["containerInstanceArn"] then M.AssertString(struct["containerInstanceArn"]) end
	if struct["environment"] then M.AssertEnvironmentVariables(struct["environment"]) end
	if struct["vcpus"] then M.AssertInteger(struct["vcpus"]) end
	if struct["jobRoleArn"] then M.AssertString(struct["jobRoleArn"]) end
	if struct["user"] then M.AssertString(struct["user"]) end
	if struct["volumes"] then M.AssertVolumes(struct["volumes"]) end
	if struct["memory"] then M.AssertInteger(struct["memory"]) end
	if struct["command"] then M.AssertStringList(struct["command"]) end
	if struct["privileged"] then M.AssertBoolean(struct["privileged"]) end
	if struct["ulimits"] then M.AssertUlimits(struct["ulimits"]) end
	if struct["exitCode"] then M.AssertInteger(struct["exitCode"]) end
	for k,_ in pairs(struct) do
		assert(ContainerDetail_keys[k], "ContainerDetail contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ContainerDetail
-- <p>An object representing the details of a container that is part of a job.</p>
-- @param mountPoints [MountPoints] <p>The mount points for data volumes in your container.</p>
-- @param taskArn [String] <p>The Amazon Resource Name (ARN) of the Amazon ECS task that is associated with the container job.</p>
-- @param readonlyRootFilesystem [Boolean] <p>When this parameter is true, the container is given read-only access to its root file system.</p>
-- @param image [String] <p>The image used to start the container.</p>
-- @param reason [String] <p>A short (255 max characters) human-readable string to provide additional details about a running or stopped container.</p>
-- @param containerInstanceArn [String] <p>The Amazon Resource Name (ARN) of the container instance on which the container is running.</p>
-- @param environment [EnvironmentVariables] <p>The environment variables to pass to a container.</p>
-- @param vcpus [Integer] <p>The number of VCPUs allocated for the job. </p>
-- @param jobRoleArn [String] <p>The Amazon Resource Name (ARN) associated with the job upon execution. </p>
-- @param user [String] <p>The user name to use inside the container.</p>
-- @param volumes [Volumes] <p>A list of volumes associated with the job.</p>
-- @param memory [Integer] <p>The number of MiB of memory reserved for the job.</p>
-- @param command [StringList] <p>The command that is passed to the container. </p>
-- @param privileged [Boolean] <p>When this parameter is true, the container is given elevated privileges on the host container instance (similar to the <code>root</code> user).</p>
-- @param ulimits [Ulimits] <p>A list of <code>ulimit</code> values to set in the container.</p>
-- @param exitCode [Integer] <p>The exit code to return upon completion.</p>
function M.ContainerDetail(mountPoints, taskArn, readonlyRootFilesystem, image, reason, containerInstanceArn, environment, vcpus, jobRoleArn, user, volumes, memory, command, privileged, ulimits, exitCode, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ContainerDetail")
	local t = { 
		["mountPoints"] = mountPoints,
		["taskArn"] = taskArn,
		["readonlyRootFilesystem"] = readonlyRootFilesystem,
		["image"] = image,
		["reason"] = reason,
		["containerInstanceArn"] = containerInstanceArn,
		["environment"] = environment,
		["vcpus"] = vcpus,
		["jobRoleArn"] = jobRoleArn,
		["user"] = user,
		["volumes"] = volumes,
		["memory"] = memory,
		["command"] = command,
		["privileged"] = privileged,
		["ulimits"] = ulimits,
		["exitCode"] = exitCode,
	}
	M.AssertContainerDetail(t)
	return t
end

local DescribeJobDefinitionsResponse_keys = { "nextToken" = true, "jobDefinitions" = true, nil }

function M.AssertDescribeJobDefinitionsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeJobDefinitionsResponse to be of type 'table'")
	if struct["nextToken"] then M.AssertString(struct["nextToken"]) end
	if struct["jobDefinitions"] then M.AssertJobDefinitionList(struct["jobDefinitions"]) end
	for k,_ in pairs(struct) do
		assert(DescribeJobDefinitionsResponse_keys[k], "DescribeJobDefinitionsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeJobDefinitionsResponse
--  
-- @param nextToken [String] <p>The <code>nextToken</code> value to include in a future <code>DescribeJobDefinitions</code> request. When the results of a <code>DescribeJobDefinitions</code> request exceed <code>maxResults</code>, this value can be used to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>
-- @param jobDefinitions [JobDefinitionList] <p>The list of job definitions. </p>
function M.DescribeJobDefinitionsResponse(nextToken, jobDefinitions, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeJobDefinitionsResponse")
	local t = { 
		["nextToken"] = nextToken,
		["jobDefinitions"] = jobDefinitions,
	}
	M.AssertDescribeJobDefinitionsResponse(t)
	return t
end

local DeregisterJobDefinitionRequest_keys = { "jobDefinition" = true, nil }

function M.AssertDeregisterJobDefinitionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeregisterJobDefinitionRequest to be of type 'table'")
	assert(struct["jobDefinition"], "Expected key jobDefinition to exist in table")
	if struct["jobDefinition"] then M.AssertString(struct["jobDefinition"]) end
	for k,_ in pairs(struct) do
		assert(DeregisterJobDefinitionRequest_keys[k], "DeregisterJobDefinitionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeregisterJobDefinitionRequest
--  
-- @param jobDefinition [String] <p>The name and revision (<code>name:revision</code>) or full Amazon Resource Name (ARN) of the job definition to deregister. </p>
-- Required parameter: jobDefinition
function M.DeregisterJobDefinitionRequest(jobDefinition, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeregisterJobDefinitionRequest")
	local t = { 
		["jobDefinition"] = jobDefinition,
	}
	M.AssertDeregisterJobDefinitionRequest(t)
	return t
end

local ClientException_keys = { "message" = true, nil }

function M.AssertClientException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ClientException to be of type 'table'")
	if struct["message"] then M.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(ClientException_keys[k], "ClientException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ClientException
-- <p>These errors are usually caused by a client action, such as using an action or resource on behalf of a user that doesn't have permission to use the action or resource, or specifying an identifier that is not valid. </p>
-- @param message [String] <p>These errors are usually caused by a client action, such as using an action or resource on behalf of a user that doesn't have permission to use the action or resource, or specifying an identifier that is not valid. </p>
function M.ClientException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ClientException")
	local t = { 
		["message"] = message,
	}
	M.AssertClientException(t)
	return t
end

local DescribeJobsRequest_keys = { "jobs" = true, nil }

function M.AssertDescribeJobsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeJobsRequest to be of type 'table'")
	assert(struct["jobs"], "Expected key jobs to exist in table")
	if struct["jobs"] then M.AssertStringList(struct["jobs"]) end
	for k,_ in pairs(struct) do
		assert(DescribeJobsRequest_keys[k], "DescribeJobsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeJobsRequest
--  
-- @param jobs [StringList] <p>A space-separated list of up to 100 job IDs.</p>
-- Required parameter: jobs
function M.DescribeJobsRequest(jobs, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeJobsRequest")
	local t = { 
		["jobs"] = jobs,
	}
	M.AssertDescribeJobsRequest(t)
	return t
end

local CancelJobRequest_keys = { "reason" = true, "jobId" = true, nil }

function M.AssertCancelJobRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CancelJobRequest to be of type 'table'")
	assert(struct["jobId"], "Expected key jobId to exist in table")
	assert(struct["reason"], "Expected key reason to exist in table")
	if struct["reason"] then M.AssertString(struct["reason"]) end
	if struct["jobId"] then M.AssertString(struct["jobId"]) end
	for k,_ in pairs(struct) do
		assert(CancelJobRequest_keys[k], "CancelJobRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CancelJobRequest
--  
-- @param reason [String] <p>A message to attach to the job that explains the reason for cancelling it. This message is returned by future <a>DescribeJobs</a> operations on the job. This message is also recorded in the AWS Batch activity logs. </p>
-- @param jobId [String] <p>A list of up to 100 job IDs to cancel.</p>
-- Required parameter: jobId
-- Required parameter: reason
function M.CancelJobRequest(reason, jobId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CancelJobRequest")
	local t = { 
		["reason"] = reason,
		["jobId"] = jobId,
	}
	M.AssertCancelJobRequest(t)
	return t
end

function M.AssertCEType(str)
	assert(str)
	assert(type(str) == "string", "Expected CEType to be of type 'string'")
end

--  
function M.CEType(str)
	M.AssertCEType(str)
	return str
end

function M.AssertCRType(str)
	assert(str)
	assert(type(str) == "string", "Expected CRType to be of type 'string'")
end

--  
function M.CRType(str)
	M.AssertCRType(str)
	return str
end

function M.AssertCEStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected CEStatus to be of type 'string'")
end

--  
function M.CEStatus(str)
	M.AssertCEStatus(str)
	return str
end

function M.AssertCEState(str)
	assert(str)
	assert(type(str) == "string", "Expected CEState to be of type 'string'")
end

--  
function M.CEState(str)
	M.AssertCEState(str)
	return str
end

function M.AssertString(str)
	assert(str)
	assert(type(str) == "string", "Expected String to be of type 'string'")
end

--  
function M.String(str)
	M.AssertString(str)
	return str
end

function M.AssertJQState(str)
	assert(str)
	assert(type(str) == "string", "Expected JQState to be of type 'string'")
end

--  
function M.JQState(str)
	M.AssertJQState(str)
	return str
end

function M.AssertJobStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected JobStatus to be of type 'string'")
end

--  
function M.JobStatus(str)
	M.AssertJobStatus(str)
	return str
end

function M.AssertJQStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected JQStatus to be of type 'string'")
end

--  
function M.JQStatus(str)
	M.AssertJQStatus(str)
	return str
end

function M.AssertJobDefinitionType(str)
	assert(str)
	assert(type(str) == "string", "Expected JobDefinitionType to be of type 'string'")
end

--  
function M.JobDefinitionType(str)
	M.AssertJobDefinitionType(str)
	return str
end

function M.AssertLong(long)
	assert(long)
	assert(type(long) == "number", "Expected Long to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.Long(long)
	M.AssertLong(long)
	return long
end

function M.AssertInteger(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected Integer to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.Integer(integer)
	M.AssertInteger(integer)
	return integer
end

function M.AssertBoolean(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected Boolean to be of type 'boolean'")
end

function M.Boolean(boolean)
	M.AssertBoolean(boolean)
	return boolean
end

function M.AssertTagsMap(map)
	assert(map)
	assert(type(map) == "table", "Expected TagsMap to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertString(k)
		M.AssertString(v)
	end
end

function M.TagsMap(map)
	M.AssertTagsMap(map)
	return map
end

function M.AssertParametersMap(map)
	assert(map)
	assert(type(map) == "table", "Expected ParametersMap to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertString(k)
		M.AssertString(v)
	end
end

function M.ParametersMap(map)
	M.AssertParametersMap(map)
	return map
end

function M.AssertMountPoints(list)
	assert(list)
	assert(type(list) == "table", "Expected MountPoints to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertMountPoint(v)
	end
end

--  
-- List of MountPoint objects
function M.MountPoints(list)
	M.AssertMountPoints(list)
	return list
end

function M.AssertJobDependencyList(list)
	assert(list)
	assert(type(list) == "table", "Expected JobDependencyList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertJobDependency(v)
	end
end

--  
-- List of JobDependency objects
function M.JobDependencyList(list)
	M.AssertJobDependencyList(list)
	return list
end

function M.AssertEnvironmentVariables(list)
	assert(list)
	assert(type(list) == "table", "Expected EnvironmentVariables to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertKeyValuePair(v)
	end
end

--  
-- List of KeyValuePair objects
function M.EnvironmentVariables(list)
	M.AssertEnvironmentVariables(list)
	return list
end

function M.AssertVolumes(list)
	assert(list)
	assert(type(list) == "table", "Expected Volumes to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertVolume(v)
	end
end

--  
-- List of Volume objects
function M.Volumes(list)
	M.AssertVolumes(list)
	return list
end

function M.AssertComputeEnvironmentDetailList(list)
	assert(list)
	assert(type(list) == "table", "Expected ComputeEnvironmentDetailList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertComputeEnvironmentDetail(v)
	end
end

--  
-- List of ComputeEnvironmentDetail objects
function M.ComputeEnvironmentDetailList(list)
	M.AssertComputeEnvironmentDetailList(list)
	return list
end

function M.AssertJobDetailList(list)
	assert(list)
	assert(type(list) == "table", "Expected JobDetailList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertJobDetail(v)
	end
end

--  
-- List of JobDetail objects
function M.JobDetailList(list)
	M.AssertJobDetailList(list)
	return list
end

function M.AssertJobSummaryList(list)
	assert(list)
	assert(type(list) == "table", "Expected JobSummaryList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertJobSummary(v)
	end
end

--  
-- List of JobSummary objects
function M.JobSummaryList(list)
	M.AssertJobSummaryList(list)
	return list
end

function M.AssertStringList(list)
	assert(list)
	assert(type(list) == "table", "Expected StringList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertString(v)
	end
end

--  
-- List of String objects
function M.StringList(list)
	M.AssertStringList(list)
	return list
end

function M.AssertUlimits(list)
	assert(list)
	assert(type(list) == "table", "Expected Ulimits to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertUlimit(v)
	end
end

--  
-- List of Ulimit objects
function M.Ulimits(list)
	M.AssertUlimits(list)
	return list
end

function M.AssertAttemptDetails(list)
	assert(list)
	assert(type(list) == "table", "Expected AttemptDetails to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertAttemptDetail(v)
	end
end

--  
-- List of AttemptDetail objects
function M.AttemptDetails(list)
	M.AssertAttemptDetails(list)
	return list
end

function M.AssertJobQueueDetailList(list)
	assert(list)
	assert(type(list) == "table", "Expected JobQueueDetailList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertJobQueueDetail(v)
	end
end

--  
-- List of JobQueueDetail objects
function M.JobQueueDetailList(list)
	M.AssertJobQueueDetailList(list)
	return list
end

function M.AssertComputeEnvironmentOrders(list)
	assert(list)
	assert(type(list) == "table", "Expected ComputeEnvironmentOrders to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertComputeEnvironmentOrder(v)
	end
end

--  
-- List of ComputeEnvironmentOrder objects
function M.ComputeEnvironmentOrders(list)
	M.AssertComputeEnvironmentOrders(list)
	return list
end

function M.AssertJobDefinitionList(list)
	assert(list)
	assert(type(list) == "table", "Expected JobDefinitionList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertJobDefinition(v)
	end
end

--  
-- List of JobDefinition objects
function M.JobDefinitionList(list)
	M.AssertJobDefinitionList(list)
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
			return "batch.amazonaws.com"
		end
	end
	local ss = { "batch" }
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
--- ListJobs
-- @param ListJobsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListJobsAsync(ListJobsRequest, cb)
	assert(ListJobsRequest, "You must provide a ListJobsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListJobs",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/v1/listjobs", ListJobsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- SubmitJob
-- @param SubmitJobRequest
-- @param cb Callback function accepting two args: response, error_message
function M.SubmitJobAsync(SubmitJobRequest, cb)
	assert(SubmitJobRequest, "You must provide a SubmitJobRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".SubmitJob",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/v1/submitjob", SubmitJobRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateJobQueue
-- @param UpdateJobQueueRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateJobQueueAsync(UpdateJobQueueRequest, cb)
	assert(UpdateJobQueueRequest, "You must provide a UpdateJobQueueRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".UpdateJobQueue",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/v1/updatejobqueue", UpdateJobQueueRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateComputeEnvironment
-- @param UpdateComputeEnvironmentRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateComputeEnvironmentAsync(UpdateComputeEnvironmentRequest, cb)
	assert(UpdateComputeEnvironmentRequest, "You must provide a UpdateComputeEnvironmentRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".UpdateComputeEnvironment",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/v1/updatecomputeenvironment", UpdateComputeEnvironmentRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeregisterJobDefinition
-- @param DeregisterJobDefinitionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeregisterJobDefinitionAsync(DeregisterJobDefinitionRequest, cb)
	assert(DeregisterJobDefinitionRequest, "You must provide a DeregisterJobDefinitionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeregisterJobDefinition",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/v1/deregisterjobdefinition", DeregisterJobDefinitionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeJobQueues
-- @param DescribeJobQueuesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeJobQueuesAsync(DescribeJobQueuesRequest, cb)
	assert(DescribeJobQueuesRequest, "You must provide a DescribeJobQueuesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeJobQueues",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/v1/describejobqueues", DescribeJobQueuesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateComputeEnvironment
-- @param CreateComputeEnvironmentRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateComputeEnvironmentAsync(CreateComputeEnvironmentRequest, cb)
	assert(CreateComputeEnvironmentRequest, "You must provide a CreateComputeEnvironmentRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateComputeEnvironment",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/v1/createcomputeenvironment", CreateComputeEnvironmentRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteComputeEnvironment
-- @param DeleteComputeEnvironmentRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteComputeEnvironmentAsync(DeleteComputeEnvironmentRequest, cb)
	assert(DeleteComputeEnvironmentRequest, "You must provide a DeleteComputeEnvironmentRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteComputeEnvironment",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/v1/deletecomputeenvironment", DeleteComputeEnvironmentRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeComputeEnvironments
-- @param DescribeComputeEnvironmentsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeComputeEnvironmentsAsync(DescribeComputeEnvironmentsRequest, cb)
	assert(DescribeComputeEnvironmentsRequest, "You must provide a DescribeComputeEnvironmentsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeComputeEnvironments",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/v1/describecomputeenvironments", DescribeComputeEnvironmentsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateJobQueue
-- @param CreateJobQueueRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateJobQueueAsync(CreateJobQueueRequest, cb)
	assert(CreateJobQueueRequest, "You must provide a CreateJobQueueRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateJobQueue",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/v1/createjobqueue", CreateJobQueueRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- RegisterJobDefinition
-- @param RegisterJobDefinitionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.RegisterJobDefinitionAsync(RegisterJobDefinitionRequest, cb)
	assert(RegisterJobDefinitionRequest, "You must provide a RegisterJobDefinitionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".RegisterJobDefinition",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/v1/registerjobdefinition", RegisterJobDefinitionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CancelJob
-- @param CancelJobRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CancelJobAsync(CancelJobRequest, cb)
	assert(CancelJobRequest, "You must provide a CancelJobRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CancelJob",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/v1/canceljob", CancelJobRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeJobDefinitions
-- @param DescribeJobDefinitionsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeJobDefinitionsAsync(DescribeJobDefinitionsRequest, cb)
	assert(DescribeJobDefinitionsRequest, "You must provide a DescribeJobDefinitionsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeJobDefinitions",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/v1/describejobdefinitions", DescribeJobDefinitionsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteJobQueue
-- @param DeleteJobQueueRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteJobQueueAsync(DeleteJobQueueRequest, cb)
	assert(DeleteJobQueueRequest, "You must provide a DeleteJobQueueRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteJobQueue",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/v1/deletejobqueue", DeleteJobQueueRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeJobs
-- @param DescribeJobsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeJobsAsync(DescribeJobsRequest, cb)
	assert(DescribeJobsRequest, "You must provide a DescribeJobsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeJobs",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/v1/describejobs", DescribeJobsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- TerminateJob
-- @param TerminateJobRequest
-- @param cb Callback function accepting two args: response, error_message
function M.TerminateJobAsync(TerminateJobRequest, cb)
	assert(TerminateJobRequest, "You must provide a TerminateJobRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".TerminateJob",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/v1/terminatejob", TerminateJobRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end


return M
