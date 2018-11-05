--- GENERATED CODE - DO NOT MODIFY
-- AWS IoT Jobs Data Plane (iot-jobs-data-2017-09-29)

local M = {}

M.metadata = {
	api_version = "2017-09-29",
	json_version = "",
	protocol = "rest-json",
	checksum_format = "",
	endpoint_prefix = "data.jobs.iot",
	service_abbreviation = "",
	service_full_name = "AWS IoT Jobs Data Plane",
	signature_version = "v4",
	target_prefix = "",
	timestamp_format = "",
	global_endpoint = "",
	uid = "iot-jobs-data-2017-09-29",
}

local keys = {}
local asserts = {}

keys.JobExecution = { ["status"] = true, ["queuedAt"] = true, ["approximateSecondsBeforeTimedOut"] = true, ["jobId"] = true, ["versionNumber"] = true, ["lastUpdatedAt"] = true, ["thingName"] = true, ["jobDocument"] = true, ["startedAt"] = true, ["statusDetails"] = true, ["executionNumber"] = true, nil }

function asserts.AssertJobExecution(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected JobExecution to be of type 'table'")
	if struct["status"] then asserts.AssertJobExecutionStatus(struct["status"]) end
	if struct["queuedAt"] then asserts.AssertQueuedAt(struct["queuedAt"]) end
	if struct["approximateSecondsBeforeTimedOut"] then asserts.AssertApproximateSecondsBeforeTimedOut(struct["approximateSecondsBeforeTimedOut"]) end
	if struct["jobId"] then asserts.AssertJobId(struct["jobId"]) end
	if struct["versionNumber"] then asserts.AssertVersionNumber(struct["versionNumber"]) end
	if struct["lastUpdatedAt"] then asserts.AssertLastUpdatedAt(struct["lastUpdatedAt"]) end
	if struct["thingName"] then asserts.AssertThingName(struct["thingName"]) end
	if struct["jobDocument"] then asserts.AssertJobDocument(struct["jobDocument"]) end
	if struct["startedAt"] then asserts.AssertStartedAt(struct["startedAt"]) end
	if struct["statusDetails"] then asserts.AssertDetailsMap(struct["statusDetails"]) end
	if struct["executionNumber"] then asserts.AssertExecutionNumber(struct["executionNumber"]) end
	for k,_ in pairs(struct) do
		assert(keys.JobExecution[k], "JobExecution contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type JobExecution
-- <p>Contains data about a job execution.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * status [JobExecutionStatus] <p>The status of the job execution. Can be one of: "QUEUED", "IN_PROGRESS", "FAILED", "SUCCESS", "CANCELED", "REJECTED", or "REMOVED".</p>
-- * queuedAt [QueuedAt] <p>The time, in milliseconds since the epoch, when the job execution was enqueued.</p>
-- * approximateSecondsBeforeTimedOut [ApproximateSecondsBeforeTimedOut] <p>The estimated number of seconds that remain before the job execution status will be changed to <code>TIMED_OUT</code>.</p>
-- * jobId [JobId] <p>The unique identifier you assigned to this job when it was created.</p>
-- * versionNumber [VersionNumber] <p>The version of the job execution. Job execution versions are incremented each time they are updated by a device.</p>
-- * lastUpdatedAt [LastUpdatedAt] <p>The time, in milliseconds since the epoch, when the job execution was last updated. </p>
-- * thingName [ThingName] <p>The name of the thing that is executing the job.</p>
-- * jobDocument [JobDocument] <p>The content of the job document.</p>
-- * startedAt [StartedAt] <p>The time, in milliseconds since the epoch, when the job execution was started.</p>
-- * statusDetails [DetailsMap] <p>A collection of name/value pairs that describe the status of the job execution.</p>
-- * executionNumber [ExecutionNumber] <p>A number that identifies a particular job execution on a particular device. It can be used later in commands that return or update job execution information.</p>
-- @return JobExecution structure as a key-value pair table
function M.JobExecution(args)
	assert(args, "You must provide an argument table when creating JobExecution")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["status"] = args["status"],
		["queuedAt"] = args["queuedAt"],
		["approximateSecondsBeforeTimedOut"] = args["approximateSecondsBeforeTimedOut"],
		["jobId"] = args["jobId"],
		["versionNumber"] = args["versionNumber"],
		["lastUpdatedAt"] = args["lastUpdatedAt"],
		["thingName"] = args["thingName"],
		["jobDocument"] = args["jobDocument"],
		["startedAt"] = args["startedAt"],
		["statusDetails"] = args["statusDetails"],
		["executionNumber"] = args["executionNumber"],
	}
	asserts.AssertJobExecution(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateJobExecutionResponse = { ["jobDocument"] = true, ["executionState"] = true, nil }

function asserts.AssertUpdateJobExecutionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateJobExecutionResponse to be of type 'table'")
	if struct["jobDocument"] then asserts.AssertJobDocument(struct["jobDocument"]) end
	if struct["executionState"] then asserts.AssertJobExecutionState(struct["executionState"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateJobExecutionResponse[k], "UpdateJobExecutionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateJobExecutionResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * jobDocument [JobDocument] <p>The contents of the Job Documents.</p>
-- * executionState [JobExecutionState] <p>A JobExecutionState object.</p>
-- @return UpdateJobExecutionResponse structure as a key-value pair table
function M.UpdateJobExecutionResponse(args)
	assert(args, "You must provide an argument table when creating UpdateJobExecutionResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["jobDocument"] = args["jobDocument"],
		["executionState"] = args["executionState"],
	}
	asserts.AssertUpdateJobExecutionResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetPendingJobExecutionsResponse = { ["queuedJobs"] = true, ["inProgressJobs"] = true, nil }

function asserts.AssertGetPendingJobExecutionsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetPendingJobExecutionsResponse to be of type 'table'")
	if struct["queuedJobs"] then asserts.AssertJobExecutionSummaryList(struct["queuedJobs"]) end
	if struct["inProgressJobs"] then asserts.AssertJobExecutionSummaryList(struct["inProgressJobs"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetPendingJobExecutionsResponse[k], "GetPendingJobExecutionsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetPendingJobExecutionsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * queuedJobs [JobExecutionSummaryList] <p>A list of JobExecutionSummary objects with status QUEUED.</p>
-- * inProgressJobs [JobExecutionSummaryList] <p>A list of JobExecutionSummary objects with status IN_PROGRESS.</p>
-- @return GetPendingJobExecutionsResponse structure as a key-value pair table
function M.GetPendingJobExecutionsResponse(args)
	assert(args, "You must provide an argument table when creating GetPendingJobExecutionsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["queuedJobs"] = args["queuedJobs"],
		["inProgressJobs"] = args["inProgressJobs"],
	}
	asserts.AssertGetPendingJobExecutionsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateJobExecutionRequest = { ["status"] = true, ["includeJobDocument"] = true, ["expectedVersion"] = true, ["stepTimeoutInMinutes"] = true, ["thingName"] = true, ["includeJobExecutionState"] = true, ["jobId"] = true, ["statusDetails"] = true, ["executionNumber"] = true, nil }

function asserts.AssertUpdateJobExecutionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateJobExecutionRequest to be of type 'table'")
	assert(struct["jobId"], "Expected key jobId to exist in table")
	assert(struct["thingName"], "Expected key thingName to exist in table")
	assert(struct["status"], "Expected key status to exist in table")
	if struct["status"] then asserts.AssertJobExecutionStatus(struct["status"]) end
	if struct["includeJobDocument"] then asserts.AssertIncludeJobDocument(struct["includeJobDocument"]) end
	if struct["expectedVersion"] then asserts.AssertExpectedVersion(struct["expectedVersion"]) end
	if struct["stepTimeoutInMinutes"] then asserts.AssertStepTimeoutInMinutes(struct["stepTimeoutInMinutes"]) end
	if struct["thingName"] then asserts.AssertThingName(struct["thingName"]) end
	if struct["includeJobExecutionState"] then asserts.AssertIncludeExecutionState(struct["includeJobExecutionState"]) end
	if struct["jobId"] then asserts.AssertJobId(struct["jobId"]) end
	if struct["statusDetails"] then asserts.AssertDetailsMap(struct["statusDetails"]) end
	if struct["executionNumber"] then asserts.AssertExecutionNumber(struct["executionNumber"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateJobExecutionRequest[k], "UpdateJobExecutionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateJobExecutionRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * status [JobExecutionStatus] <p>The new status for the job execution (IN_PROGRESS, FAILED, SUCCESS, or REJECTED). This must be specified on every update.</p>
-- * includeJobDocument [IncludeJobDocument] <p>Optional. When set to true, the response contains the job document. The default is false.</p>
-- * expectedVersion [ExpectedVersion] <p>Optional. The expected current version of the job execution. Each time you update the job execution, its version is incremented. If the version of the job execution stored in Jobs does not match, the update is rejected with a VersionMismatch error, and an ErrorResponse that contains the current job execution status data is returned. (This makes it unnecessary to perform a separate DescribeJobExecution request in order to obtain the job execution status data.)</p>
-- * stepTimeoutInMinutes [StepTimeoutInMinutes] <p>Specifies the amount of time this device has to finish execution of this job. If the job execution status is not set to a terminal state before this timer expires, or before the timer is reset (by again calling <code>UpdateJobExecution</code>, setting the status to <code>IN_PROGRESS</code> and specifying a new timeout value in this field) the job execution status will be automatically set to <code>TIMED_OUT</code>. Note that setting or resetting this timeout has no effect on that job execution timeout which may have been specified when the job was created (<code>CreateJob</code> using field <code>timeoutConfig</code>).</p>
-- * thingName [ThingName] <p>The name of the thing associated with the device.</p>
-- * includeJobExecutionState [IncludeExecutionState] <p>Optional. When included and set to true, the response contains the JobExecutionState data. The default is false.</p>
-- * jobId [JobId] <p>The unique identifier assigned to this job when it was created.</p>
-- * statusDetails [DetailsMap] <p> Optional. A collection of name/value pairs that describe the status of the job execution. If not specified, the statusDetails are unchanged.</p>
-- * executionNumber [ExecutionNumber] <p>Optional. A number that identifies a particular job execution on a particular device.</p>
-- Required key: jobId
-- Required key: thingName
-- Required key: status
-- @return UpdateJobExecutionRequest structure as a key-value pair table
function M.UpdateJobExecutionRequest(args)
	assert(args, "You must provide an argument table when creating UpdateJobExecutionRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{thingName}"] = args["thingName"],
        ["{jobId}"] = args["jobId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["status"] = args["status"],
		["includeJobDocument"] = args["includeJobDocument"],
		["expectedVersion"] = args["expectedVersion"],
		["stepTimeoutInMinutes"] = args["stepTimeoutInMinutes"],
		["thingName"] = args["thingName"],
		["includeJobExecutionState"] = args["includeJobExecutionState"],
		["jobId"] = args["jobId"],
		["statusDetails"] = args["statusDetails"],
		["executionNumber"] = args["executionNumber"],
	}
	asserts.AssertUpdateJobExecutionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.JobExecutionState = { ["status"] = true, ["versionNumber"] = true, ["statusDetails"] = true, nil }

function asserts.AssertJobExecutionState(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected JobExecutionState to be of type 'table'")
	if struct["status"] then asserts.AssertJobExecutionStatus(struct["status"]) end
	if struct["versionNumber"] then asserts.AssertVersionNumber(struct["versionNumber"]) end
	if struct["statusDetails"] then asserts.AssertDetailsMap(struct["statusDetails"]) end
	for k,_ in pairs(struct) do
		assert(keys.JobExecutionState[k], "JobExecutionState contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type JobExecutionState
-- <p>Contains data about the state of a job execution.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * status [JobExecutionStatus] <p>The status of the job execution. Can be one of: "QUEUED", "IN_PROGRESS", "FAILED", "SUCCESS", "CANCELED", "REJECTED", or "REMOVED".</p>
-- * versionNumber [VersionNumber] <p>The version of the job execution. Job execution versions are incremented each time they are updated by a device.</p>
-- * statusDetails [DetailsMap] <p>A collection of name/value pairs that describe the status of the job execution.</p>
-- @return JobExecutionState structure as a key-value pair table
function M.JobExecutionState(args)
	assert(args, "You must provide an argument table when creating JobExecutionState")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["status"] = args["status"],
		["versionNumber"] = args["versionNumber"],
		["statusDetails"] = args["statusDetails"],
	}
	asserts.AssertJobExecutionState(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeJobExecutionResponse = { ["execution"] = true, nil }

function asserts.AssertDescribeJobExecutionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeJobExecutionResponse to be of type 'table'")
	if struct["execution"] then asserts.AssertJobExecution(struct["execution"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeJobExecutionResponse[k], "DescribeJobExecutionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeJobExecutionResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * execution [JobExecution] <p>Contains data about a job execution.</p>
-- @return DescribeJobExecutionResponse structure as a key-value pair table
function M.DescribeJobExecutionResponse(args)
	assert(args, "You must provide an argument table when creating DescribeJobExecutionResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["execution"] = args["execution"],
	}
	asserts.AssertDescribeJobExecutionResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeJobExecutionRequest = { ["includeJobDocument"] = true, ["thingName"] = true, ["executionNumber"] = true, ["jobId"] = true, nil }

function asserts.AssertDescribeJobExecutionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeJobExecutionRequest to be of type 'table'")
	assert(struct["jobId"], "Expected key jobId to exist in table")
	assert(struct["thingName"], "Expected key thingName to exist in table")
	if struct["includeJobDocument"] then asserts.AssertIncludeJobDocument(struct["includeJobDocument"]) end
	if struct["thingName"] then asserts.AssertThingName(struct["thingName"]) end
	if struct["executionNumber"] then asserts.AssertExecutionNumber(struct["executionNumber"]) end
	if struct["jobId"] then asserts.AssertDescribeJobExecutionJobId(struct["jobId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeJobExecutionRequest[k], "DescribeJobExecutionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeJobExecutionRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * includeJobDocument [IncludeJobDocument] <p>Optional. When set to true, the response contains the job document. The default is false.</p>
-- * thingName [ThingName] <p>The thing name associated with the device the job execution is running on.</p>
-- * executionNumber [ExecutionNumber] <p>Optional. A number that identifies a particular job execution on a particular device. If not specified, the latest job execution is returned.</p>
-- * jobId [DescribeJobExecutionJobId] <p>The unique identifier assigned to this job when it was created.</p>
-- Required key: jobId
-- Required key: thingName
-- @return DescribeJobExecutionRequest structure as a key-value pair table
function M.DescribeJobExecutionRequest(args)
	assert(args, "You must provide an argument table when creating DescribeJobExecutionRequest")
    local query_args = { 
        ["includeJobDocument"] = args["includeJobDocument"],
        ["executionNumber"] = args["executionNumber"],
    }
    local uri_args = { 
        ["{thingName}"] = args["thingName"],
        ["{jobId}"] = args["jobId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["includeJobDocument"] = args["includeJobDocument"],
		["thingName"] = args["thingName"],
		["executionNumber"] = args["executionNumber"],
		["jobId"] = args["jobId"],
	}
	asserts.AssertDescribeJobExecutionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetPendingJobExecutionsRequest = { ["thingName"] = true, nil }

function asserts.AssertGetPendingJobExecutionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetPendingJobExecutionsRequest to be of type 'table'")
	assert(struct["thingName"], "Expected key thingName to exist in table")
	if struct["thingName"] then asserts.AssertThingName(struct["thingName"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetPendingJobExecutionsRequest[k], "GetPendingJobExecutionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetPendingJobExecutionsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * thingName [ThingName] <p>The name of the thing that is executing the job.</p>
-- Required key: thingName
-- @return GetPendingJobExecutionsRequest structure as a key-value pair table
function M.GetPendingJobExecutionsRequest(args)
	assert(args, "You must provide an argument table when creating GetPendingJobExecutionsRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{thingName}"] = args["thingName"],
    }
    local header_args = { 
    }
	local all_args = { 
		["thingName"] = args["thingName"],
	}
	asserts.AssertGetPendingJobExecutionsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StartNextPendingJobExecutionResponse = { ["execution"] = true, nil }

function asserts.AssertStartNextPendingJobExecutionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartNextPendingJobExecutionResponse to be of type 'table'")
	if struct["execution"] then asserts.AssertJobExecution(struct["execution"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartNextPendingJobExecutionResponse[k], "StartNextPendingJobExecutionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartNextPendingJobExecutionResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * execution [JobExecution] <p>A JobExecution object.</p>
-- @return StartNextPendingJobExecutionResponse structure as a key-value pair table
function M.StartNextPendingJobExecutionResponse(args)
	assert(args, "You must provide an argument table when creating StartNextPendingJobExecutionResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["execution"] = args["execution"],
	}
	asserts.AssertStartNextPendingJobExecutionResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StartNextPendingJobExecutionRequest = { ["thingName"] = true, ["statusDetails"] = true, ["stepTimeoutInMinutes"] = true, nil }

function asserts.AssertStartNextPendingJobExecutionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartNextPendingJobExecutionRequest to be of type 'table'")
	assert(struct["thingName"], "Expected key thingName to exist in table")
	if struct["thingName"] then asserts.AssertThingName(struct["thingName"]) end
	if struct["statusDetails"] then asserts.AssertDetailsMap(struct["statusDetails"]) end
	if struct["stepTimeoutInMinutes"] then asserts.AssertStepTimeoutInMinutes(struct["stepTimeoutInMinutes"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartNextPendingJobExecutionRequest[k], "StartNextPendingJobExecutionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartNextPendingJobExecutionRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * thingName [ThingName] <p>The name of the thing associated with the device.</p>
-- * statusDetails [DetailsMap] <p>A collection of name/value pairs that describe the status of the job execution. If not specified, the statusDetails are unchanged.</p>
-- * stepTimeoutInMinutes [StepTimeoutInMinutes] <p>Specifies the amount of time this device has to finish execution of this job. If the job execution status is not set to a terminal state before this timer expires, or before the timer is reset (by calling <code>UpdateJobExecution</code>, setting the status to <code>IN_PROGRESS</code> and specifying a new timeout value in field <code>stepTimeoutInMinutes</code>) the job execution status will be automatically set to <code>TIMED_OUT</code>. Note that setting this timeout has no effect on that job execution timeout which may have been specified when the job was created (<code>CreateJob</code> using field <code>timeoutConfig</code>).</p>
-- Required key: thingName
-- @return StartNextPendingJobExecutionRequest structure as a key-value pair table
function M.StartNextPendingJobExecutionRequest(args)
	assert(args, "You must provide an argument table when creating StartNextPendingJobExecutionRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{thingName}"] = args["thingName"],
    }
    local header_args = { 
    }
	local all_args = { 
		["thingName"] = args["thingName"],
		["statusDetails"] = args["statusDetails"],
		["stepTimeoutInMinutes"] = args["stepTimeoutInMinutes"],
	}
	asserts.AssertStartNextPendingJobExecutionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.JobExecutionSummary = { ["queuedAt"] = true, ["jobId"] = true, ["versionNumber"] = true, ["lastUpdatedAt"] = true, ["startedAt"] = true, ["executionNumber"] = true, nil }

function asserts.AssertJobExecutionSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected JobExecutionSummary to be of type 'table'")
	if struct["queuedAt"] then asserts.AssertQueuedAt(struct["queuedAt"]) end
	if struct["jobId"] then asserts.AssertJobId(struct["jobId"]) end
	if struct["versionNumber"] then asserts.AssertVersionNumber(struct["versionNumber"]) end
	if struct["lastUpdatedAt"] then asserts.AssertLastUpdatedAt(struct["lastUpdatedAt"]) end
	if struct["startedAt"] then asserts.AssertStartedAt(struct["startedAt"]) end
	if struct["executionNumber"] then asserts.AssertExecutionNumber(struct["executionNumber"]) end
	for k,_ in pairs(struct) do
		assert(keys.JobExecutionSummary[k], "JobExecutionSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type JobExecutionSummary
-- <p>Contains a subset of information about a job execution.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * queuedAt [QueuedAt] <p>The time, in milliseconds since the epoch, when the job execution was enqueued.</p>
-- * jobId [JobId] <p>The unique identifier you assigned to this job when it was created.</p>
-- * versionNumber [VersionNumber] <p>The version of the job execution. Job execution versions are incremented each time AWS IoT Jobs receives an update from a device.</p>
-- * lastUpdatedAt [LastUpdatedAt] <p>The time, in milliseconds since the epoch, when the job execution was last updated.</p>
-- * startedAt [StartedAt] <p>The time, in milliseconds since the epoch, when the job execution started.</p>
-- * executionNumber [ExecutionNumber] <p>A number that identifies a particular job execution on a particular device.</p>
-- @return JobExecutionSummary structure as a key-value pair table
function M.JobExecutionSummary(args)
	assert(args, "You must provide an argument table when creating JobExecutionSummary")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["queuedAt"] = args["queuedAt"],
		["jobId"] = args["jobId"],
		["versionNumber"] = args["versionNumber"],
		["lastUpdatedAt"] = args["lastUpdatedAt"],
		["startedAt"] = args["startedAt"],
		["executionNumber"] = args["executionNumber"],
	}
	asserts.AssertJobExecutionSummary(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

function asserts.AssertDetailsValue(str)
	assert(str)
	assert(type(str) == "string", "Expected DetailsValue to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.DetailsValue(str)
	asserts.AssertDetailsValue(str)
	return str
end

function asserts.AssertDetailsKey(str)
	assert(str)
	assert(type(str) == "string", "Expected DetailsKey to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.DetailsKey(str)
	asserts.AssertDetailsKey(str)
	return str
end

function asserts.AssertJobId(str)
	assert(str)
	assert(type(str) == "string", "Expected JobId to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.JobId(str)
	asserts.AssertJobId(str)
	return str
end

function asserts.AssertThingName(str)
	assert(str)
	assert(type(str) == "string", "Expected ThingName to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ThingName(str)
	asserts.AssertThingName(str)
	return str
end

function asserts.AssertJobDocument(str)
	assert(str)
	assert(type(str) == "string", "Expected JobDocument to be of type 'string'")
	assert(#str <= 32768, "Expected string to be max 32768 characters")
end

--  
function M.JobDocument(str)
	asserts.AssertJobDocument(str)
	return str
end

function asserts.AssertDescribeJobExecutionJobId(str)
	assert(str)
	assert(type(str) == "string", "Expected DescribeJobExecutionJobId to be of type 'string'")
end

--  
function M.DescribeJobExecutionJobId(str)
	asserts.AssertDescribeJobExecutionJobId(str)
	return str
end

function asserts.AssertJobExecutionStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected JobExecutionStatus to be of type 'string'")
end

--  
function M.JobExecutionStatus(str)
	asserts.AssertJobExecutionStatus(str)
	return str
end

function asserts.AssertStartedAt(long)
	assert(long)
	assert(type(long) == "number", "Expected StartedAt to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.StartedAt(long)
	asserts.AssertStartedAt(long)
	return long
end

function asserts.AssertApproximateSecondsBeforeTimedOut(long)
	assert(long)
	assert(type(long) == "number", "Expected ApproximateSecondsBeforeTimedOut to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.ApproximateSecondsBeforeTimedOut(long)
	asserts.AssertApproximateSecondsBeforeTimedOut(long)
	return long
end

function asserts.AssertQueuedAt(long)
	assert(long)
	assert(type(long) == "number", "Expected QueuedAt to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.QueuedAt(long)
	asserts.AssertQueuedAt(long)
	return long
end

function asserts.AssertExecutionNumber(long)
	assert(long)
	assert(type(long) == "number", "Expected ExecutionNumber to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.ExecutionNumber(long)
	asserts.AssertExecutionNumber(long)
	return long
end

function asserts.AssertExpectedVersion(long)
	assert(long)
	assert(type(long) == "number", "Expected ExpectedVersion to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.ExpectedVersion(long)
	asserts.AssertExpectedVersion(long)
	return long
end

function asserts.AssertVersionNumber(long)
	assert(long)
	assert(type(long) == "number", "Expected VersionNumber to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.VersionNumber(long)
	asserts.AssertVersionNumber(long)
	return long
end

function asserts.AssertLastUpdatedAt(long)
	assert(long)
	assert(type(long) == "number", "Expected LastUpdatedAt to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.LastUpdatedAt(long)
	asserts.AssertLastUpdatedAt(long)
	return long
end

function asserts.AssertStepTimeoutInMinutes(long)
	assert(long)
	assert(type(long) == "number", "Expected StepTimeoutInMinutes to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.StepTimeoutInMinutes(long)
	asserts.AssertStepTimeoutInMinutes(long)
	return long
end

function asserts.AssertIncludeJobDocument(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected IncludeJobDocument to be of type 'boolean'")
end

function M.IncludeJobDocument(boolean)
	asserts.AssertIncludeJobDocument(boolean)
	return boolean
end

function asserts.AssertIncludeExecutionState(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected IncludeExecutionState to be of type 'boolean'")
end

function M.IncludeExecutionState(boolean)
	asserts.AssertIncludeExecutionState(boolean)
	return boolean
end

function asserts.AssertDetailsMap(map)
	assert(map)
	assert(type(map) == "table", "Expected DetailsMap to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertDetailsKey(k)
		asserts.AssertDetailsValue(v)
	end
end

function M.DetailsMap(map)
	asserts.AssertDetailsMap(map)
	return map
end

function asserts.AssertJobExecutionSummaryList(list)
	assert(list)
	assert(type(list) == "table", "Expected JobExecutionSummaryList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertJobExecutionSummary(v)
	end
end

--  
-- List of JobExecutionSummary objects
function M.JobExecutionSummaryList(list)
	asserts.AssertJobExecutionSummaryList(list)
	return list
end


local content_type = require "aws-sdk.core.content_type"
local request_headers = require "aws-sdk.core.request_headers"
local request_handlers = require "aws-sdk.core.request_handlers"

local settings = {}


local function endpoint_for_region(region, use_dualstack)
	if not use_dualstack then
		if region == "us-east-1" then
			return "data.jobs.iot.amazonaws.com"
		end
	end
	local ss = { "data.jobs.iot" }
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
--- Call GetPendingJobExecutions asynchronously, invoking a callback when done
-- @param GetPendingJobExecutionsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetPendingJobExecutionsAsync(GetPendingJobExecutionsRequest, cb)
	assert(GetPendingJobExecutionsRequest, "You must provide a GetPendingJobExecutionsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetPendingJobExecutions",
	}
	for header,value in pairs(GetPendingJobExecutionsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/things/{thingName}/jobs", GetPendingJobExecutionsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetPendingJobExecutions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetPendingJobExecutionsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetPendingJobExecutionsSync(GetPendingJobExecutionsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetPendingJobExecutionsAsync(GetPendingJobExecutionsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call StartNextPendingJobExecution asynchronously, invoking a callback when done
-- @param StartNextPendingJobExecutionRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.StartNextPendingJobExecutionAsync(StartNextPendingJobExecutionRequest, cb)
	assert(StartNextPendingJobExecutionRequest, "You must provide a StartNextPendingJobExecutionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".StartNextPendingJobExecution",
	}
	for header,value in pairs(StartNextPendingJobExecutionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/things/{thingName}/jobs/$next", StartNextPendingJobExecutionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call StartNextPendingJobExecution synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StartNextPendingJobExecutionRequest
-- @return response
-- @return error_type
-- @return error_message
function M.StartNextPendingJobExecutionSync(StartNextPendingJobExecutionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StartNextPendingJobExecutionAsync(StartNextPendingJobExecutionRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateJobExecution asynchronously, invoking a callback when done
-- @param UpdateJobExecutionRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateJobExecutionAsync(UpdateJobExecutionRequest, cb)
	assert(UpdateJobExecutionRequest, "You must provide a UpdateJobExecutionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateJobExecution",
	}
	for header,value in pairs(UpdateJobExecutionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/things/{thingName}/jobs/{jobId}", UpdateJobExecutionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateJobExecution synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateJobExecutionRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateJobExecutionSync(UpdateJobExecutionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateJobExecutionAsync(UpdateJobExecutionRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeJobExecution asynchronously, invoking a callback when done
-- @param DescribeJobExecutionRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeJobExecutionAsync(DescribeJobExecutionRequest, cb)
	assert(DescribeJobExecutionRequest, "You must provide a DescribeJobExecutionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeJobExecution",
	}
	for header,value in pairs(DescribeJobExecutionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/things/{thingName}/jobs/{jobId}", DescribeJobExecutionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeJobExecution synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeJobExecutionRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeJobExecutionSync(DescribeJobExecutionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeJobExecutionAsync(DescribeJobExecutionRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
