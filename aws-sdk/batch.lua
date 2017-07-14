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
-- @param status [String] &lt;p&gt;The status with which to filter job definitions.&lt;/p&gt;
-- @param nextToken [String] &lt;p&gt;The &lt;code&gt;nextToken&lt;/code&gt; value returned from a previous paginated &lt;code&gt;DescribeJobDefinitions&lt;/code&gt; request where &lt;code&gt;maxResults&lt;/code&gt; was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the &lt;code&gt;nextToken&lt;/code&gt; value. This value is &lt;code&gt;null&lt;/code&gt; when there are no more results to return.&lt;/p&gt; &lt;note&gt; &lt;p&gt;This token should be treated as an opaque identifier that is only used to retrieve the next items in a list and not for other programmatic purposes.&lt;/p&gt; &lt;/note&gt;
-- @param jobDefinitions [StringList] &lt;p&gt;A space-separated list of up to 100 job definition names or full Amazon Resource Name (ARN) entries.&lt;/p&gt;
-- @param jobDefinitionName [String] &lt;p&gt;The name of the job definition to describe.&lt;/p&gt;
-- @param maxResults [Integer] &lt;p&gt;The maximum number of results returned by &lt;code&gt;DescribeJobDefinitions&lt;/code&gt; in paginated output. When this parameter is used, &lt;code&gt;DescribeJobDefinitions&lt;/code&gt; only returns &lt;code&gt;maxResults&lt;/code&gt; results in a single page along with a &lt;code&gt;nextToken&lt;/code&gt; response element. The remaining results of the initial request can be seen by sending another &lt;code&gt;DescribeJobDefinitions&lt;/code&gt; request with the returned &lt;code&gt;nextToken&lt;/code&gt; value. This value can be between 1 and 100. If this parameter is not used, then &lt;code&gt;DescribeJobDefinitions&lt;/code&gt; returns up to 100 results and a &lt;code&gt;nextToken&lt;/code&gt; value if applicable.&lt;/p&gt;
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
-- &lt;p&gt;An object representing a job attempt.&lt;/p&gt;
-- @param startedAt [Long] &lt;p&gt;The Unix timestamp for when the attempt was started (when the task transitioned from the &lt;code&gt;PENDING&lt;/code&gt; state to the &lt;code&gt;RUNNING&lt;/code&gt; state).&lt;/p&gt;
-- @param container [AttemptContainerDetail] &lt;p&gt;Details about the container in this job attempt.&lt;/p&gt;
-- @param stoppedAt [Long] &lt;p&gt;The Unix timestamp for when the attempt was stopped (when the task transitioned from the &lt;code&gt;RUNNING&lt;/code&gt; state to the &lt;code&gt;STOPPED&lt;/code&gt; state).&lt;/p&gt;
-- @param statusReason [String] &lt;p&gt;A short, human-readable string to provide additional details about the current status of the job attempt.&lt;/p&gt;
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
-- &lt;p&gt;The &lt;code&gt;ulimit&lt;/code&gt; settings to pass to the container.&lt;/p&gt;
-- @param softLimit [Integer] &lt;p&gt;The soft limit for the &lt;code&gt;ulimit&lt;/code&gt; type.&lt;/p&gt;
-- @param hardLimit [Integer] &lt;p&gt;The hard limit for the &lt;code&gt;ulimit&lt;/code&gt; type.&lt;/p&gt;
-- @param name [String] &lt;p&gt;The &lt;code&gt;type&lt;/code&gt; of the &lt;code&gt;ulimit&lt;/code&gt;.&lt;/p&gt;
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
-- @param nextToken [String] &lt;p&gt;The &lt;code&gt;nextToken&lt;/code&gt; value returned from a previous paginated &lt;code&gt;ListJobs&lt;/code&gt; request where &lt;code&gt;maxResults&lt;/code&gt; was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the &lt;code&gt;nextToken&lt;/code&gt; value. This value is &lt;code&gt;null&lt;/code&gt; when there are no more results to return.&lt;/p&gt; &lt;note&gt; &lt;p&gt;This token should be treated as an opaque identifier that is only used to retrieve the next items in a list and not for other programmatic purposes.&lt;/p&gt; &lt;/note&gt;
-- @param maxResults [Integer] &lt;p&gt;The maximum number of results returned by &lt;code&gt;ListJobs&lt;/code&gt; in paginated output. When this parameter is used, &lt;code&gt;ListJobs&lt;/code&gt; only returns &lt;code&gt;maxResults&lt;/code&gt; results in a single page along with a &lt;code&gt;nextToken&lt;/code&gt; response element. The remaining results of the initial request can be seen by sending another &lt;code&gt;ListJobs&lt;/code&gt; request with the returned &lt;code&gt;nextToken&lt;/code&gt; value. This value can be between 1 and 100. If this parameter is not used, then &lt;code&gt;ListJobs&lt;/code&gt; returns up to 100 results and a &lt;code&gt;nextToken&lt;/code&gt; value if applicable.&lt;/p&gt;
-- @param jobStatus [JobStatus] &lt;p&gt;The job status with which to filter jobs in the specified queue.&lt;/p&gt;
-- @param jobQueue [String] &lt;p&gt;The name or full Amazon Resource Name (ARN) of the job queue with which to list jobs.&lt;/p&gt;
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
-- @param reason [String] &lt;p&gt;A message to attach to the job that explains the reason for cancelling it. This message is returned by future &lt;a&gt;DescribeJobs&lt;/a&gt; operations on the job. This message is also recorded in the AWS Batch activity logs. &lt;/p&gt;
-- @param jobId [String] &lt;p&gt;Job IDs to be terminated. Up to 100 jobs can be specified.&lt;/p&gt;
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
-- @param computeEnvironment [String] &lt;p&gt;The name or full Amazon Resource Name (ARN) of the compute environment to update.&lt;/p&gt;
-- @param state [CEState] &lt;p&gt;The state of the compute environment. Compute environments in the &lt;code&gt;ENABLED&lt;/code&gt; state can accept jobs from a queue and scale in or out automatically based on the workload demand of its associated queues.&lt;/p&gt;
-- @param computeResources [ComputeResourceUpdate] &lt;p&gt;Details of the compute resources managed by the compute environment. Required for a managed compute environment.&lt;/p&gt;
-- @param serviceRole [String] &lt;p&gt;The name or full Amazon Resource Name (ARN) of the IAM role that allows AWS Batch to make calls to ECS, Auto Scaling, and EC2 on your behalf.&lt;/p&gt;
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
-- &lt;p&gt;An object representing the attributes of a compute environment that can be updated.&lt;/p&gt;
-- @param maxvCpus [Integer] &lt;p&gt;The maximum number of EC2 vCPUs that an environment can reach.&lt;/p&gt;
-- @param minvCpus [Integer] &lt;p&gt;The minimum number of EC2 vCPUs that an environment should maintain.&lt;/p&gt;
-- @param desiredvCpus [Integer] &lt;p&gt;The desired number of EC2 vCPUS in the compute environment.&lt;/p&gt;
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
-- &lt;p&gt;A key-value pair object.&lt;/p&gt;
-- @param name [String] &lt;p&gt;The name of the key value pair. For environment variables, this is the name of the environment variable.&lt;/p&gt;
-- @param value [String] &lt;p&gt;The value of the key value pair. For environment variables, this is the value of the environment variable.&lt;/p&gt;
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
-- @param priority [Integer] &lt;p&gt;The priority of the job queue. Job queues with a higher priority (or a lower integer value for the &lt;code&gt;priority&lt;/code&gt; parameter) are evaluated first when associated with same compute environment. Priority is determined in ascending order, for example, a job queue with a priority value of &lt;code&gt;1&lt;/code&gt; is given scheduling preference over a job queue with a priority value of &lt;code&gt;10&lt;/code&gt;.&lt;/p&gt;
-- @param state [JQState] &lt;p&gt;The state of the job queue. If the job queue state is &lt;code&gt;ENABLED&lt;/code&gt;, it is able to accept jobs.&lt;/p&gt;
-- @param computeEnvironmentOrder [ComputeEnvironmentOrders] &lt;p&gt;The set of compute environments mapped to a job queue and their order relative to each other. The job scheduler uses this parameter to determine which compute environment should execute a given job. Compute environments must be in the &lt;code&gt;VALID&lt;/code&gt; state before you can associate them with a job queue. You can associate up to 3 compute environments with a job queue.&lt;/p&gt;
-- @param jobQueueName [String] &lt;p&gt;The name of the job queue.&lt;/p&gt;
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
-- &lt;p&gt;The retry strategy associated with a job.&lt;/p&gt;
-- @param attempts [Integer] &lt;p&gt;The number of times to move a job to the &lt;code&gt;RUNNABLE&lt;/code&gt; status. You may specify between 1 and 10 attempts. If &lt;code&gt;attempts&lt;/code&gt; is greater than one, the job is retried if it fails until it has moved to &lt;code&gt;RUNNABLE&lt;/code&gt; that many times.&lt;/p&gt;
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
-- &lt;p&gt;Details on a Docker volume mount point that is used in a job's container properties.&lt;/p&gt;
-- @param sourceVolume [String] &lt;p&gt;The name of the volume to mount.&lt;/p&gt;
-- @param readOnly [Boolean] &lt;p&gt;If this value is &lt;code&gt;true&lt;/code&gt;, the container has read-only access to the volume; otherwise, the container can write to the volume. The default value is &lt;code&gt;false&lt;/code&gt;.&lt;/p&gt;
-- @param containerPath [String] &lt;p&gt;The path on the container at which to mount the host volume.&lt;/p&gt;
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
-- @param computeEnvironmentName [String] &lt;p&gt;The name for your compute environment. Up to 128 letters (uppercase and lowercase), numbers, and underscores are allowed.&lt;/p&gt;
-- @param state [CEState] &lt;p&gt;The state of the compute environment. If the state is &lt;code&gt;ENABLED&lt;/code&gt;, then the compute environment accepts jobs from a queue and can scale out automatically based on queues.&lt;/p&gt;
-- @param type [CEType] &lt;p&gt;The type of the compute environment. &lt;/p&gt;
-- @param computeResources [ComputeResource] &lt;p&gt;Details of the compute resources managed by the compute environment. This parameter is required for managed compute environments.&lt;/p&gt;
-- @param serviceRole [String] &lt;p&gt;The full Amazon Resource Name (ARN) of the IAM role that allows AWS Batch to make calls to other AWS services on your behalf. &lt;/p&gt;
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
-- &lt;p&gt;An object representing an AWS Batch job dependency.&lt;/p&gt;
-- @param jobId [String] &lt;p&gt;The job ID of the AWS Batch job associated with this dependency.&lt;/p&gt;
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
-- &lt;p&gt;An object representing an AWS Batch compute environment.&lt;/p&gt;
-- @param status [CEStatus] &lt;p&gt;The current status of the compute environment (for example, &lt;code&gt;CREATING&lt;/code&gt; or &lt;code&gt;VALID&lt;/code&gt;).&lt;/p&gt;
-- @param serviceRole [String] &lt;p&gt;The service role associated with the compute environment that allows AWS Batch to make calls to AWS API operations on your behalf.&lt;/p&gt;
-- @param computeEnvironmentArn [String] &lt;p&gt;The Amazon Resource Name (ARN) of the compute environment. &lt;/p&gt;
-- @param computeResources [ComputeResource] &lt;p&gt;The compute resources defined for the compute environment. &lt;/p&gt;
-- @param statusReason [String] &lt;p&gt;A short, human-readable string to provide additional details about the current status of the compute environment.&lt;/p&gt;
-- @param ecsClusterArn [String] &lt;p&gt;The Amazon Resource Name (ARN) of the underlying Amazon ECS cluster used by the compute environment. &lt;/p&gt;
-- @param state [CEState] &lt;p&gt;The state of the compute environment. The valid values are &lt;code&gt;ENABLED&lt;/code&gt; or &lt;code&gt;DISABLED&lt;/code&gt;. An &lt;code&gt;ENABLED&lt;/code&gt; state indicates that you can register instances with the compute environment and that the associated instances can accept jobs. &lt;/p&gt;
-- @param computeEnvironmentName [String] &lt;p&gt;The name of the compute environment. &lt;/p&gt;
-- @param type [CEType] &lt;p&gt;The type of the compute environment.&lt;/p&gt;
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
-- &lt;p&gt;An object representing an AWS Batch job.&lt;/p&gt;
-- @param status [JobStatus] &lt;p&gt;The current status for the job.&lt;/p&gt;
-- @param container [ContainerDetail] &lt;p&gt;An object representing the details of the container that is associated with the job.&lt;/p&gt;
-- @param parameters [ParametersMap] &lt;p&gt;Additional parameters passed to the job that replace parameter substitution placeholders or override any corresponding parameter defaults from the job definition. &lt;/p&gt;
-- @param jobDefinition [String] &lt;p&gt;The job definition that is used by this job.&lt;/p&gt;
-- @param statusReason [String] &lt;p&gt;A short, human-readable string to provide additional details about the current status of the job. &lt;/p&gt;
-- @param jobId [String] &lt;p&gt;The ID for the job.&lt;/p&gt;
-- @param attempts [AttemptDetails] &lt;p&gt;A list of job attempts associated with this job.&lt;/p&gt;
-- @param retryStrategy [RetryStrategy] &lt;p&gt;The retry strategy to use for this job if an attempt fails.&lt;/p&gt;
-- @param jobQueue [String] &lt;p&gt;The Amazon Resource Name (ARN) of the job queue with which the job is associated.&lt;/p&gt;
-- @param dependsOn [JobDependencyList] &lt;p&gt;A list of job names or IDs on which this job depends.&lt;/p&gt;
-- @param startedAt [Long] &lt;p&gt;The Unix timestamp for when the job was started (when the task transitioned from the &lt;code&gt;PENDING&lt;/code&gt; state to the &lt;code&gt;RUNNING&lt;/code&gt; state). &lt;/p&gt;
-- @param jobName [String] &lt;p&gt;The name of the job.&lt;/p&gt;
-- @param createdAt [Long] &lt;p&gt;The Unix timestamp for when the job was created (when the task entered the &lt;code&gt;PENDING&lt;/code&gt; state). &lt;/p&gt;
-- @param stoppedAt [Long] &lt;p&gt;The Unix timestamp for when the job was stopped (when the task transitioned from the &lt;code&gt;RUNNING&lt;/code&gt; state to the &lt;code&gt;STOPPED&lt;/code&gt; state).&lt;/p&gt;
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
-- @param jobId [String] &lt;p&gt;The unique identifier for the job.&lt;/p&gt;
-- @param jobName [String] &lt;p&gt;The name of the job. &lt;/p&gt;
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
-- &lt;p&gt;The order in which compute environments are tried for job placement within a queue. Compute environments are tried in ascending order. For example, if two compute environments are associated with a job queue, the compute environment with a lower order integer value is tried for job placement first.&lt;/p&gt;
-- @param computeEnvironment [String] &lt;p&gt;The Amazon Resource Name (ARN) of the compute environment.&lt;/p&gt;
-- @param order [Integer] &lt;p&gt;The order of the compute environment.&lt;/p&gt;
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
-- @param jobQueues [JobQueueDetailList] &lt;p&gt;The list of job queues. &lt;/p&gt;
-- @param nextToken [String] &lt;p&gt;The &lt;code&gt;nextToken&lt;/code&gt; value to include in a future &lt;code&gt;DescribeJobQueues&lt;/code&gt; request. When the results of a &lt;code&gt;DescribeJobQueues&lt;/code&gt; request exceed &lt;code&gt;maxResults&lt;/code&gt;, this value can be used to retrieve the next page of results. This value is &lt;code&gt;null&lt;/code&gt; when there are no more results to return.&lt;/p&gt;
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
-- @param computeEnvironment [String] &lt;p&gt;The name or Amazon Resource Name (ARN) of the compute environment to delete. &lt;/p&gt;
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
-- &lt;p&gt;An object representing an AWS Batch compute resource.&lt;/p&gt;
-- @param subnets [StringList] &lt;p&gt;The VPC subnets into which the compute resources are launched. &lt;/p&gt;
-- @param spotIamFleetRole [String] &lt;p&gt;The Amazon Resource Name (ARN) of the Amazon EC2 Spot Fleet IAM role applied to a &lt;code&gt;SPOT&lt;/code&gt; compute environment.&lt;/p&gt;
-- @param tags [TagsMap] &lt;p&gt;Key-value pair tags to be applied to resources that are launched in the compute environment. &lt;/p&gt;
-- @param desiredvCpus [Integer] &lt;p&gt;The desired number of EC2 vCPUS in the compute environment. &lt;/p&gt;
-- @param minvCpus [Integer] &lt;p&gt;The minimum number of EC2 vCPUs that an environment should maintain. &lt;/p&gt;
-- @param instanceTypes [StringList] &lt;p&gt;The instances types that may launched.&lt;/p&gt;
-- @param imageId [String] &lt;p&gt;The Amazon Machine Image (AMI) ID used for instances launched in the compute environment.&lt;/p&gt;
-- @param bidPercentage [Integer] &lt;p&gt;The minimum percentage that a Spot Instance price must be when compared with the On-Demand price for that instance type before instances are launched. For example, if your bid percentage is 20%, then the Spot price must be below 20% of the current On-Demand price for that EC2 instance.&lt;/p&gt;
-- @param instanceRole [String] &lt;p&gt;The Amazon ECS instance role applied to Amazon EC2 instances in a compute environment.&lt;/p&gt;
-- @param maxvCpus [Integer] &lt;p&gt;The maximum number of EC2 vCPUs that an environment can reach. &lt;/p&gt;
-- @param securityGroupIds [StringList] &lt;p&gt;The EC2 security group that is associated with instances launched in the compute environment. &lt;/p&gt;
-- @param type [CRType] &lt;p&gt;The type of compute environment.&lt;/p&gt;
-- @param ec2KeyPair [String] &lt;p&gt;The EC2 key pair that is used for instances launched in the compute environment.&lt;/p&gt;
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
-- @param retryStrategy [RetryStrategy] &lt;p&gt;The retry strategy to use for failed jobs that are submitted with this job definition. Any retry strategy that is specified during a &lt;a&gt;SubmitJob&lt;/a&gt; operation overrides the retry strategy defined here.&lt;/p&gt;
-- @param containerProperties [ContainerProperties] &lt;p&gt;An object with various properties specific for container-based jobs. This parameter is required if the &lt;code&gt;type&lt;/code&gt; parameter is &lt;code&gt;container&lt;/code&gt;.&lt;/p&gt;
-- @param type [JobDefinitionType] &lt;p&gt;The type of job definition.&lt;/p&gt;
-- @param parameters [ParametersMap] &lt;p&gt;Default parameter substitution placeholders to set in the job definition. Parameters are specified as a key-value pair mapping. Parameters in a &lt;code&gt;SubmitJob&lt;/code&gt; request override any corresponding parameter defaults from the job definition.&lt;/p&gt;
-- @param jobDefinitionName [String] &lt;p&gt;The name of the job definition to register. &lt;/p&gt;
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
-- &lt;p&gt;A data volume used in a job's container properties.&lt;/p&gt;
-- @param host [Host] &lt;p&gt;The contents of the &lt;code&gt;host&lt;/code&gt; parameter determine whether your data volume persists on the host container instance and where it is stored. If the host parameter is empty, then the Docker daemon assigns a host path for your data volume, but the data is not guaranteed to persist after the containers associated with it stop running.&lt;/p&gt;
-- @param name [String] &lt;p&gt;The name of the volume. Up to 255 letters (uppercase and lowercase), numbers, hyphens, and underscores are allowed. This name is referenced in the &lt;code&gt;sourceVolume&lt;/code&gt; parameter of container definition &lt;code&gt;mountPoints&lt;/code&gt;.&lt;/p&gt;
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
-- &lt;p&gt;The contents of the &lt;code&gt;host&lt;/code&gt; parameter determine whether your data volume persists on the host container instance and where it is stored. If the host parameter is empty, then the Docker daemon assigns a host path for your data volume, but the data is not guaranteed to persist after the containers associated with it stop running.&lt;/p&gt;
-- @param sourcePath [String] &lt;p&gt;The path on the host container instance that is presented to the container. If this parameter is empty, then the Docker daemon has assigned a host path for you. If the &lt;code&gt;host&lt;/code&gt; parameter contains a &lt;code&gt;sourcePath&lt;/code&gt; file location, then the data volume persists at the specified location on the host container instance until you delete it manually. If the &lt;code&gt;sourcePath&lt;/code&gt; value does not exist on the host container instance, the Docker daemon creates it. If the location does exist, the contents of the source path folder are exported.&lt;/p&gt;
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
-- &lt;p&gt;An object representing the details of an AWS Batch job queue.&lt;/p&gt;
-- @param status [JQStatus] &lt;p&gt;The status of the job queue (for example, &lt;code&gt;CREATING&lt;/code&gt; or &lt;code&gt;VALID&lt;/code&gt;).&lt;/p&gt;
-- @param jobQueueArn [String] &lt;p&gt;The Amazon Resource Name (ARN) of the job queue.&lt;/p&gt;
-- @param computeEnvironmentOrder [ComputeEnvironmentOrders] &lt;p&gt;The compute environments that are attached to the job queue and the order in which job placement is preferred. Compute environments are selected for job placement in ascending order.&lt;/p&gt;
-- @param statusReason [String] &lt;p&gt;A short, human-readable string to provide additional details about the current status of the job queue.&lt;/p&gt;
-- @param priority [Integer] &lt;p&gt;The priority of the job queue. &lt;/p&gt;
-- @param state [JQState] &lt;p&gt;Describes the ability of the queue to accept new jobs.&lt;/p&gt;
-- @param jobQueueName [String] &lt;p&gt;The name of the job queue.&lt;/p&gt;
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
-- &lt;p&gt;An object representing summary details of a job.&lt;/p&gt;
-- @param jobName [String] &lt;p&gt;The name of the job.&lt;/p&gt;
-- @param jobId [String] &lt;p&gt;The ID of the job.&lt;/p&gt;
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
-- &lt;p&gt;An object representing an AWS Batch job definition.&lt;/p&gt;
-- @param status [String] &lt;p&gt;The status of the job definition.&lt;/p&gt;
-- @param jobDefinitionArn [String] &lt;p&gt;The Amazon Resource Name (ARN) for the job definition. &lt;/p&gt;
-- @param parameters [ParametersMap] &lt;p&gt;Default parameters or parameter substitution placeholders that are set in the job definition. Parameters are specified as a key-value pair mapping. Parameters in a &lt;code&gt;SubmitJob&lt;/code&gt; request override any corresponding parameter defaults from the job definition.&lt;/p&gt;
-- @param retryStrategy [RetryStrategy] &lt;p&gt;The retry strategy to use for failed jobs that are submitted with this job definition.&lt;/p&gt;
-- @param containerProperties [ContainerProperties] &lt;p&gt;An object with various properties specific to container-based jobs. &lt;/p&gt;
-- @param type [String] &lt;p&gt;The type of job definition.&lt;/p&gt;
-- @param jobDefinitionName [String] &lt;p&gt;The name of the job definition. &lt;/p&gt;
-- @param revision [Integer] &lt;p&gt;The revision of the job definition.&lt;/p&gt;
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
-- @param jobQueueArn [String] &lt;p&gt;The Amazon Resource Name (ARN) of the job queue.&lt;/p&gt;
-- @param jobQueueName [String] &lt;p&gt;The name of the job queue.&lt;/p&gt;
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
-- @param nextToken [String] &lt;p&gt;The &lt;code&gt;nextToken&lt;/code&gt; value to include in a future &lt;code&gt;DescribeComputeEnvironments&lt;/code&gt; request. When the results of a &lt;code&gt;DescribeJobDefinitions&lt;/code&gt; request exceed &lt;code&gt;maxResults&lt;/code&gt;, this value can be used to retrieve the next page of results. This value is &lt;code&gt;null&lt;/code&gt; when there are no more results to return.&lt;/p&gt;
-- @param computeEnvironments [ComputeEnvironmentDetailList] &lt;p&gt;The list of compute environments.&lt;/p&gt;
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
-- @param nextToken [String] &lt;p&gt;The &lt;code&gt;nextToken&lt;/code&gt; value returned from a previous paginated &lt;code&gt;DescribeComputeEnvironments&lt;/code&gt; request where &lt;code&gt;maxResults&lt;/code&gt; was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the &lt;code&gt;nextToken&lt;/code&gt; value. This value is &lt;code&gt;null&lt;/code&gt; when there are no more results to return.&lt;/p&gt; &lt;note&gt; &lt;p&gt;This token should be treated as an opaque identifier that is only used to retrieve the next items in a list and not for other programmatic purposes.&lt;/p&gt; &lt;/note&gt;
-- @param maxResults [Integer] &lt;p&gt;The maximum number of cluster results returned by &lt;code&gt;DescribeComputeEnvironments&lt;/code&gt; in paginated output. When this parameter is used, &lt;code&gt;DescribeComputeEnvironments&lt;/code&gt; only returns &lt;code&gt;maxResults&lt;/code&gt; results in a single page along with a &lt;code&gt;nextToken&lt;/code&gt; response element. The remaining results of the initial request can be seen by sending another &lt;code&gt;DescribeComputeEnvironments&lt;/code&gt; request with the returned &lt;code&gt;nextToken&lt;/code&gt; value. This value can be between 1 and 100. If this parameter is not used, then &lt;code&gt;DescribeComputeEnvironments&lt;/code&gt; returns up to 100 results and a &lt;code&gt;nextToken&lt;/code&gt; value if applicable.&lt;/p&gt;
-- @param computeEnvironments [StringList] &lt;p&gt;A list of up to 100 compute environment names or full Amazon Resource Name (ARN) entries. &lt;/p&gt;
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
-- &lt;p&gt;These errors are usually caused by a server issue.&lt;/p&gt;
-- @param message [String] &lt;p&gt;These errors are usually caused by a server issue.&lt;/p&gt;
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
-- @param computeEnvironmentName [String] &lt;p&gt;The name of the compute environment.&lt;/p&gt;
-- @param computeEnvironmentArn [String] &lt;p&gt;The Amazon Resource Name (ARN) of the compute environment. &lt;/p&gt;
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
-- @param priority [Integer] &lt;p&gt;The priority of the job queue. Job queues with a higher priority (or a lower integer value for the &lt;code&gt;priority&lt;/code&gt; parameter) are evaluated first when associated with same compute environment. Priority is determined in ascending order, for example, a job queue with a priority value of &lt;code&gt;1&lt;/code&gt; is given scheduling preference over a job queue with a priority value of &lt;code&gt;10&lt;/code&gt;.&lt;/p&gt;
-- @param state [JQState] &lt;p&gt;Describes the queue's ability to accept new jobs.&lt;/p&gt;
-- @param computeEnvironmentOrder [ComputeEnvironmentOrders] &lt;p&gt;Details the set of compute environments mapped to a job queue and their order relative to each other. This is one of the parameters used by the job scheduler to determine which compute environment should execute a given job. &lt;/p&gt;
-- @param jobQueue [String] &lt;p&gt;The name or the Amazon Resource Name (ARN) of the job queue.&lt;/p&gt;
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
-- @param jobQueueArn [String] &lt;p&gt;The Amazon Resource Name (ARN) of the job queue.&lt;/p&gt;
-- @param jobQueueName [String] &lt;p&gt;The name of the job queue.&lt;/p&gt;
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
-- @param nextToken [String] &lt;p&gt;The &lt;code&gt;nextToken&lt;/code&gt; value to include in a future &lt;code&gt;ListJobs&lt;/code&gt; request. When the results of a &lt;code&gt;ListJobs&lt;/code&gt; request exceed &lt;code&gt;maxResults&lt;/code&gt;, this value can be used to retrieve the next page of results. This value is &lt;code&gt;null&lt;/code&gt; when there are no more results to return.&lt;/p&gt;
-- @param jobSummaryList [JobSummaryList] &lt;p&gt;A list of job summaries that match the request.&lt;/p&gt;
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
-- @param jobs [JobDetailList] &lt;p&gt;The list of jobs. &lt;/p&gt;
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
-- @param jobDefinitionArn [String] &lt;p&gt;The Amazon Resource Name (ARN) of the job definition. &lt;/p&gt;
-- @param jobDefinitionName [String] &lt;p&gt;The name of the job definition. &lt;/p&gt;
-- @param revision [Integer] &lt;p&gt;The revision of the job definition.&lt;/p&gt;
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
-- &lt;p&gt;The overrides that should be sent to a container.&lt;/p&gt;
-- @param environment [EnvironmentVariables] &lt;p&gt;The environment variables to send to the container. You can add new environment variables, which are added to the container at launch, or you can override the existing environment variables from the Docker image or the job definition.&lt;/p&gt;
-- @param vcpus [Integer] &lt;p&gt;The number of vCPUs to reserve for the container. This value overrides the value set in the job definition.&lt;/p&gt;
-- @param command [StringList] &lt;p&gt;The command to send to the container that overrides the default command from the Docker image or the job definition.&lt;/p&gt;
-- @param memory [Integer] &lt;p&gt;The number of MiB of memory reserved for the job. This value overrides the value set in the job definition.&lt;/p&gt;
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
-- @param jobQueues [StringList] &lt;p&gt;A list of up to 100 queue names or full queue Amazon Resource Name (ARN) entries.&lt;/p&gt;
-- @param nextToken [String] &lt;p&gt;The &lt;code&gt;nextToken&lt;/code&gt; value returned from a previous paginated &lt;code&gt;DescribeJobQueues&lt;/code&gt; request where &lt;code&gt;maxResults&lt;/code&gt; was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the &lt;code&gt;nextToken&lt;/code&gt; value. This value is &lt;code&gt;null&lt;/code&gt; when there are no more results to return.&lt;/p&gt; &lt;note&gt; &lt;p&gt;This token should be treated as an opaque identifier that is only used to retrieve the next items in a list and not for other programmatic purposes.&lt;/p&gt; &lt;/note&gt;
-- @param maxResults [Integer] &lt;p&gt;The maximum number of results returned by &lt;code&gt;DescribeJobQueues&lt;/code&gt; in paginated output. When this parameter is used, &lt;code&gt;DescribeJobQueues&lt;/code&gt; only returns &lt;code&gt;maxResults&lt;/code&gt; results in a single page along with a &lt;code&gt;nextToken&lt;/code&gt; response element. The remaining results of the initial request can be seen by sending another &lt;code&gt;DescribeJobQueues&lt;/code&gt; request with the returned &lt;code&gt;nextToken&lt;/code&gt; value. This value can be between 1 and 100. If this parameter is not used, then &lt;code&gt;DescribeJobQueues&lt;/code&gt; returns up to 100 results and a &lt;code&gt;nextToken&lt;/code&gt; value if applicable.&lt;/p&gt;
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
-- &lt;p&gt;Container properties are used in job definitions to describe the container that is launched as part of a job.&lt;/p&gt;
-- @param mountPoints [MountPoints] &lt;p&gt;The mount points for data volumes in your container. This parameter maps to &lt;code&gt;Volumes&lt;/code&gt; in the &lt;a href=&quot;https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container&quot;&gt;Create a container&lt;/a&gt; section of the &lt;a href=&quot;https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/&quot;&gt;Docker Remote API&lt;/a&gt; and the &lt;code&gt;--volume&lt;/code&gt; option to &lt;a href=&quot;https://docs.docker.com/engine/reference/run/&quot;&gt;docker run&lt;/a&gt;.&lt;/p&gt;
-- @param readonlyRootFilesystem [Boolean] &lt;p&gt;When this parameter is true, the container is given read-only access to its root file system. This parameter maps to &lt;code&gt;ReadonlyRootfs&lt;/code&gt; in the &lt;a href=&quot;https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container&quot;&gt;Create a container&lt;/a&gt; section of the &lt;a href=&quot;https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/&quot;&gt;Docker Remote API&lt;/a&gt; and the &lt;code&gt;--read-only&lt;/code&gt; option to &lt;code&gt;docker run&lt;/code&gt;.&lt;/p&gt;
-- @param image [String] &lt;p&gt;The image used to start a container. This string is passed directly to the Docker daemon. Images in the Docker Hub registry are available by default. Other repositories are specified with &lt;code&gt; &lt;i&gt;repository-url&lt;/i&gt;/&lt;i&gt;image&lt;/i&gt;:&lt;i&gt;tag&lt;/i&gt; &lt;/code&gt;. Up to 255 letters (uppercase and lowercase), numbers, hyphens, underscores, colons, periods, forward slashes, and number signs are allowed. This parameter maps to &lt;code&gt;Image&lt;/code&gt; in the &lt;a href=&quot;https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container&quot;&gt;Create a container&lt;/a&gt; section of the &lt;a href=&quot;https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/&quot;&gt;Docker Remote API&lt;/a&gt; and the &lt;code&gt;IMAGE&lt;/code&gt; parameter of &lt;a href=&quot;https://docs.docker.com/engine/reference/run/&quot;&gt;docker run&lt;/a&gt;.&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Images in Amazon ECR repositories use the full registry and repository URI (for example, &lt;code&gt;012345678910.dkr.ecr.&amp;lt;region-name&amp;gt;.amazonaws.com/&amp;lt;repository-name&amp;gt;&lt;/code&gt;). &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Images in official repositories on Docker Hub use a single name (for example, &lt;code&gt;ubuntu&lt;/code&gt; or &lt;code&gt;mongo&lt;/code&gt;).&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Images in other repositories on Docker Hub are qualified with an organization name (for example, &lt;code&gt;amazon/amazon-ecs-agent&lt;/code&gt;).&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Images in other online repositories are qualified further by a domain name (for example, &lt;code&gt;quay.io/assemblyline/ubuntu&lt;/code&gt;).&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param environment [EnvironmentVariables] &lt;p&gt;The environment variables to pass to a container. This parameter maps to &lt;code&gt;Env&lt;/code&gt; in the &lt;a href=&quot;https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container&quot;&gt;Create a container&lt;/a&gt; section of the &lt;a href=&quot;https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/&quot;&gt;Docker Remote API&lt;/a&gt; and the &lt;code&gt;--env&lt;/code&gt; option to &lt;a href=&quot;https://docs.docker.com/engine/reference/run/&quot;&gt;docker run&lt;/a&gt;.&lt;/p&gt; &lt;important&gt; &lt;p&gt;We do not recommend using plain text environment variables for sensitive information, such as credential data.&lt;/p&gt; &lt;/important&gt;
-- @param vcpus [Integer] &lt;p&gt;The number of vCPUs reserved for the container. This parameter maps to &lt;code&gt;CpuShares&lt;/code&gt; in the &lt;a href=&quot;https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container&quot;&gt;Create a container&lt;/a&gt; section of the &lt;a href=&quot;https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/&quot;&gt;Docker Remote API&lt;/a&gt; and the &lt;code&gt;--cpu-shares&lt;/code&gt; option to &lt;a href=&quot;https://docs.docker.com/engine/reference/run/&quot;&gt;docker run&lt;/a&gt;. Each vCPU is equivalent to 1,024 CPU shares.&lt;/p&gt;
-- @param jobRoleArn [String] &lt;p&gt;The Amazon Resource Name (ARN) of the IAM role that the container can assume for AWS permissions.&lt;/p&gt;
-- @param user [String] &lt;p&gt;The user name to use inside the container. This parameter maps to &lt;code&gt;User&lt;/code&gt; in the &lt;a href=&quot;https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container&quot;&gt;Create a container&lt;/a&gt; section of the &lt;a href=&quot;https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/&quot;&gt;Docker Remote API&lt;/a&gt; and the &lt;code&gt;--user&lt;/code&gt; option to &lt;a href=&quot;https://docs.docker.com/engine/reference/run/&quot;&gt;docker run&lt;/a&gt;.&lt;/p&gt;
-- @param volumes [Volumes] &lt;p&gt;A list of data volumes used in a job.&lt;/p&gt;
-- @param memory [Integer] &lt;p&gt;The hard limit (in MiB) of memory to present to the container. If your container attempts to exceed the memory specified here, the container is killed. This parameter maps to &lt;code&gt;Memory&lt;/code&gt; in the &lt;a href=&quot;https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container&quot;&gt;Create a container&lt;/a&gt; section of the &lt;a href=&quot;https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/&quot;&gt;Docker Remote API&lt;/a&gt; and the &lt;code&gt;--memory&lt;/code&gt; option to &lt;a href=&quot;https://docs.docker.com/engine/reference/run/&quot;&gt;docker run&lt;/a&gt;.&lt;/p&gt;
-- @param command [StringList] &lt;p&gt;The command that is passed to the container. This parameter maps to &lt;code&gt;Cmd&lt;/code&gt; in the &lt;a href=&quot;https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container&quot;&gt;Create a container&lt;/a&gt; section of the &lt;a href=&quot;https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/&quot;&gt;Docker Remote API&lt;/a&gt; and the &lt;code&gt;COMMAND&lt;/code&gt; parameter to &lt;a href=&quot;https://docs.docker.com/engine/reference/run/&quot;&gt;docker run&lt;/a&gt;. For more information, see &lt;a href=&quot;https://docs.docker.com/engine/reference/builder/#cmd&quot;&gt;https://docs.docker.com/engine/reference/builder/#cmd&lt;/a&gt;.&lt;/p&gt;
-- @param privileged [Boolean] &lt;p&gt;When this parameter is true, the container is given elevated privileges on the host container instance (similar to the &lt;code&gt;root&lt;/code&gt; user). This parameter maps to &lt;code&gt;Privileged&lt;/code&gt; in the &lt;a href=&quot;https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container&quot;&gt;Create a container&lt;/a&gt; section of the &lt;a href=&quot;https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/&quot;&gt;Docker Remote API&lt;/a&gt; and the &lt;code&gt;--privileged&lt;/code&gt; option to &lt;a href=&quot;https://docs.docker.com/engine/reference/run/&quot;&gt;docker run&lt;/a&gt;.&lt;/p&gt;
-- @param ulimits [Ulimits] &lt;p&gt;A list of &lt;code&gt;ulimits&lt;/code&gt; to set in the container. This parameter maps to &lt;code&gt;Ulimits&lt;/code&gt; in the &lt;a href=&quot;https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container&quot;&gt;Create a container&lt;/a&gt; section of the &lt;a href=&quot;https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/&quot;&gt;Docker Remote API&lt;/a&gt; and the &lt;code&gt;--ulimit&lt;/code&gt; option to &lt;a href=&quot;https://docs.docker.com/engine/reference/run/&quot;&gt;docker run&lt;/a&gt;.&lt;/p&gt;
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
-- @param computeEnvironmentName [String] &lt;p&gt;The name of compute environment.&lt;/p&gt;
-- @param computeEnvironmentArn [String] &lt;p&gt;The Amazon Resource Name (ARN) of the compute environment. &lt;/p&gt;
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
-- @param jobQueue [String] &lt;p&gt;The short name or full Amazon Resource Name (ARN) of the queue to delete. &lt;/p&gt;
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
-- &lt;p&gt;An object representing the details of a container that is part of a job attempt.&lt;/p&gt;
-- @param reason [String] &lt;p&gt;A short (255 max characters) human-readable string to provide additional details about a running or stopped container.&lt;/p&gt;
-- @param taskArn [String] &lt;p&gt;The Amazon Resource Name (ARN) of the Amazon ECS task that is associated with the job attempt.&lt;/p&gt;
-- @param containerInstanceArn [String] &lt;p&gt;The Amazon Resource Name (ARN) of the Amazon ECS container instance that hosts the job attempt.&lt;/p&gt;
-- @param exitCode [Integer] &lt;p&gt;The exit code for the job attempt. A non-zero exit code is considered a failure.&lt;/p&gt;
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
-- @param parameters [ParametersMap] &lt;p&gt;Additional parameters passed to the job that replace parameter substitution placeholders that are set in the job definition. Parameters are specified as a key and value pair mapping. Parameters in a &lt;code&gt;SubmitJob&lt;/code&gt; request override any corresponding parameter defaults from the job definition.&lt;/p&gt;
-- @param jobDefinition [String] &lt;p&gt;The job definition used by this job. This value can be either a &lt;code&gt;name:revision&lt;/code&gt; or the Amazon Resource Name (ARN) for the job definition.&lt;/p&gt;
-- @param jobQueue [String] &lt;p&gt;The job queue into which the job will be submitted. You can specify either the name or the Amazon Resource Name (ARN) of the queue. &lt;/p&gt;
-- @param jobName [String] &lt;p&gt;The name of the job. A name must be 1 to 128 characters in length.&lt;/p&gt; &lt;p&gt;Pattern: ^[a-zA-Z0-9_]+$&lt;/p&gt;
-- @param retryStrategy [RetryStrategy] &lt;p&gt;The retry strategy to use for failed jobs from this &lt;a&gt;SubmitJob&lt;/a&gt; operation. When a retry strategy is specified here, it overrides the retry strategy defined in the job definition.&lt;/p&gt;
-- @param containerOverrides [ContainerOverrides] &lt;p&gt;A list of container overrides in JSON format that specify the name of a container in the specified job definition and the overrides it should receive. You can override the default command for a container (that is specified in the job definition or the Docker image) with a &lt;code&gt;command&lt;/code&gt; override. You can also override existing environment variables (that are specified in the job definition or Docker image) on a container or add new environment variables to it with an &lt;code&gt;environment&lt;/code&gt; override.&lt;/p&gt;
-- @param dependsOn [JobDependencyList] &lt;p&gt;A list of job IDs on which this job depends. A job can depend upon a maximum of 100 jobs. &lt;/p&gt;
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
-- &lt;p&gt;An object representing the details of a container that is part of a job.&lt;/p&gt;
-- @param mountPoints [MountPoints] &lt;p&gt;The mount points for data volumes in your container.&lt;/p&gt;
-- @param taskArn [String] &lt;p&gt;The Amazon Resource Name (ARN) of the Amazon ECS task that is associated with the container job.&lt;/p&gt;
-- @param readonlyRootFilesystem [Boolean] &lt;p&gt;When this parameter is true, the container is given read-only access to its root file system.&lt;/p&gt;
-- @param image [String] &lt;p&gt;The image used to start the container.&lt;/p&gt;
-- @param reason [String] &lt;p&gt;A short (255 max characters) human-readable string to provide additional details about a running or stopped container.&lt;/p&gt;
-- @param containerInstanceArn [String] &lt;p&gt;The Amazon Resource Name (ARN) of the container instance on which the container is running.&lt;/p&gt;
-- @param environment [EnvironmentVariables] &lt;p&gt;The environment variables to pass to a container.&lt;/p&gt;
-- @param vcpus [Integer] &lt;p&gt;The number of VCPUs allocated for the job. &lt;/p&gt;
-- @param jobRoleArn [String] &lt;p&gt;The Amazon Resource Name (ARN) associated with the job upon execution. &lt;/p&gt;
-- @param user [String] &lt;p&gt;The user name to use inside the container.&lt;/p&gt;
-- @param volumes [Volumes] &lt;p&gt;A list of volumes associated with the job.&lt;/p&gt;
-- @param memory [Integer] &lt;p&gt;The number of MiB of memory reserved for the job.&lt;/p&gt;
-- @param command [StringList] &lt;p&gt;The command that is passed to the container. &lt;/p&gt;
-- @param privileged [Boolean] &lt;p&gt;When this parameter is true, the container is given elevated privileges on the host container instance (similar to the &lt;code&gt;root&lt;/code&gt; user).&lt;/p&gt;
-- @param ulimits [Ulimits] &lt;p&gt;A list of &lt;code&gt;ulimit&lt;/code&gt; values to set in the container.&lt;/p&gt;
-- @param exitCode [Integer] &lt;p&gt;The exit code to return upon completion.&lt;/p&gt;
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
-- @param nextToken [String] &lt;p&gt;The &lt;code&gt;nextToken&lt;/code&gt; value to include in a future &lt;code&gt;DescribeJobDefinitions&lt;/code&gt; request. When the results of a &lt;code&gt;DescribeJobDefinitions&lt;/code&gt; request exceed &lt;code&gt;maxResults&lt;/code&gt;, this value can be used to retrieve the next page of results. This value is &lt;code&gt;null&lt;/code&gt; when there are no more results to return.&lt;/p&gt;
-- @param jobDefinitions [JobDefinitionList] &lt;p&gt;The list of job definitions. &lt;/p&gt;
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
-- @param jobDefinition [String] &lt;p&gt;The name and revision (&lt;code&gt;name:revision&lt;/code&gt;) or full Amazon Resource Name (ARN) of the job definition to deregister. &lt;/p&gt;
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
-- &lt;p&gt;These errors are usually caused by a client action, such as using an action or resource on behalf of a user that doesn't have permission to use the action or resource, or specifying an identifier that is not valid. &lt;/p&gt;
-- @param message [String] &lt;p&gt;These errors are usually caused by a client action, such as using an action or resource on behalf of a user that doesn't have permission to use the action or resource, or specifying an identifier that is not valid. &lt;/p&gt;
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
-- @param jobs [StringList] &lt;p&gt;A space-separated list of up to 100 job IDs.&lt;/p&gt;
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
-- @param reason [String] &lt;p&gt;A message to attach to the job that explains the reason for cancelling it. This message is returned by future &lt;a&gt;DescribeJobs&lt;/a&gt; operations on the job. This message is also recorded in the AWS Batch activity logs. &lt;/p&gt;
-- @param jobId [String] &lt;p&gt;A list of up to 100 job IDs to cancel.&lt;/p&gt;
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
