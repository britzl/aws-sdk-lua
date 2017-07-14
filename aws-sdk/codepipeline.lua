--- GENERATED CODE - DO NOT MODIFY
-- AWS CodePipeline (codepipeline-2015-07-09)

local M = {}

M.metadata = {
	api_version = "2015-07-09",
	json_version = "1.1",
	protocol = "json",
	checksum_format = "",
	endpoint_prefix = "codepipeline",
	service_abbreviation = "CodePipeline",
	service_full_name = "AWS CodePipeline",
	signature_version = "v4",
	target_prefix = "CodePipeline_20150709",
	timestamp_format = "",
	global_endpoint = "",
	uid = "codepipeline-2015-07-09",
}

local ActionConfigurationProperty_keys = { "description" = true, "required" = true, "secret" = true, "key" = true, "type" = true, "queryable" = true, "name" = true, nil }

function M.AssertActionConfigurationProperty(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ActionConfigurationProperty to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["required"], "Expected key required to exist in table")
	assert(struct["key"], "Expected key key to exist in table")
	assert(struct["secret"], "Expected key secret to exist in table")
	if struct["description"] then M.AssertDescription(struct["description"]) end
	if struct["required"] then M.AssertBoolean(struct["required"]) end
	if struct["secret"] then M.AssertBoolean(struct["secret"]) end
	if struct["key"] then M.AssertBoolean(struct["key"]) end
	if struct["type"] then M.AssertActionConfigurationPropertyType(struct["type"]) end
	if struct["queryable"] then M.AssertBoolean(struct["queryable"]) end
	if struct["name"] then M.AssertActionConfigurationKey(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(ActionConfigurationProperty_keys[k], "ActionConfigurationProperty contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ActionConfigurationProperty
-- <p>Represents information about an action configuration property.</p>
-- @param description [Description] <p>The description of the action configuration property that will be displayed to users.</p>
-- @param required [Boolean] <p>Whether the configuration property is a required value.</p>
-- @param secret [Boolean] <p>Whether the configuration property is secret. Secrets are hidden from all calls except for GetJobDetails, GetThirdPartyJobDetails, PollForJobs, and PollForThirdPartyJobs.</p> <p>When updating a pipeline, passing * * * * * without changing any other values of the action will preserve the prior value of the secret.</p>
-- @param key [Boolean] <p>Whether the configuration property is a key.</p>
-- @param type [ActionConfigurationPropertyType] <p>The type of the configuration property.</p>
-- @param queryable [Boolean] <p>Indicates that the proprety will be used in conjunction with PollForJobs. When creating a custom action, an action can have up to one queryable property. If it has one, that property must be both required and not secret.</p> <p>If you create a pipeline with a custom action type, and that custom action contains a queryable property, the value for that configuration property is subject to additional restrictions. The value must be less than or equal to twenty (20) characters. The value can contain only alphanumeric characters, underscores, and hyphens.</p>
-- @param name [ActionConfigurationKey] <p>The name of the action configuration property.</p>
-- Required parameter: name
-- Required parameter: required
-- Required parameter: key
-- Required parameter: secret
function M.ActionConfigurationProperty(description, required, secret, key, type, queryable, name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ActionConfigurationProperty")
	local t = { 
		["description"] = description,
		["required"] = required,
		["secret"] = secret,
		["key"] = key,
		["type"] = type,
		["queryable"] = queryable,
		["name"] = name,
	}
	M.AssertActionConfigurationProperty(t)
	return t
end

local PollForJobsInput_keys = { "actionTypeId" = true, "maxBatchSize" = true, "queryParam" = true, nil }

function M.AssertPollForJobsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PollForJobsInput to be of type 'table'")
	assert(struct["actionTypeId"], "Expected key actionTypeId to exist in table")
	if struct["actionTypeId"] then M.AssertActionTypeId(struct["actionTypeId"]) end
	if struct["maxBatchSize"] then M.AssertMaxBatchSize(struct["maxBatchSize"]) end
	if struct["queryParam"] then M.AssertQueryParamMap(struct["queryParam"]) end
	for k,_ in pairs(struct) do
		assert(PollForJobsInput_keys[k], "PollForJobsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PollForJobsInput
-- <p>Represents the input of a poll for jobs action.</p>
-- @param actionTypeId [ActionTypeId] <p>Represents information about an action type.</p>
-- @param maxBatchSize [MaxBatchSize] <p>The maximum number of jobs to return in a poll for jobs call.</p>
-- @param queryParam [QueryParamMap] <p>A map of property names and values. For an action type with no queryable properties, this value must be null or an empty map. For an action type with a queryable property, you must supply that property as a key in the map. Only jobs whose action configuration matches the mapped value will be returned.</p>
-- Required parameter: actionTypeId
function M.PollForJobsInput(actionTypeId, maxBatchSize, queryParam, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PollForJobsInput")
	local t = { 
		["actionTypeId"] = actionTypeId,
		["maxBatchSize"] = maxBatchSize,
		["queryParam"] = queryParam,
	}
	M.AssertPollForJobsInput(t)
	return t
end

local CreateCustomActionTypeInput_keys = { "category" = true, "settings" = true, "configurationProperties" = true, "version" = true, "provider" = true, "inputArtifactDetails" = true, "outputArtifactDetails" = true, nil }

function M.AssertCreateCustomActionTypeInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateCustomActionTypeInput to be of type 'table'")
	assert(struct["category"], "Expected key category to exist in table")
	assert(struct["provider"], "Expected key provider to exist in table")
	assert(struct["version"], "Expected key version to exist in table")
	assert(struct["inputArtifactDetails"], "Expected key inputArtifactDetails to exist in table")
	assert(struct["outputArtifactDetails"], "Expected key outputArtifactDetails to exist in table")
	if struct["category"] then M.AssertActionCategory(struct["category"]) end
	if struct["settings"] then M.AssertActionTypeSettings(struct["settings"]) end
	if struct["configurationProperties"] then M.AssertActionConfigurationPropertyList(struct["configurationProperties"]) end
	if struct["version"] then M.AssertVersion(struct["version"]) end
	if struct["provider"] then M.AssertActionProvider(struct["provider"]) end
	if struct["inputArtifactDetails"] then M.AssertArtifactDetails(struct["inputArtifactDetails"]) end
	if struct["outputArtifactDetails"] then M.AssertArtifactDetails(struct["outputArtifactDetails"]) end
	for k,_ in pairs(struct) do
		assert(CreateCustomActionTypeInput_keys[k], "CreateCustomActionTypeInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateCustomActionTypeInput
-- <p>Represents the input of a create custom action operation.</p>
-- @param category [ActionCategory] <p>The category of the custom action, such as a build action or a test action.</p> <note> <p>Although Source and Approval are listed as valid values, they are not currently functional. These values are reserved for future use.</p> </note>
-- @param settings [ActionTypeSettings] <p>Returns information about the settings for an action type.</p>
-- @param configurationProperties [ActionConfigurationPropertyList] <p>The configuration properties for the custom action.</p> <note> <p>You can refer to a name in the configuration properties of the custom action within the URL templates by following the format of {Config:name}, as long as the configuration property is both required and not secret. For more information, see <a href="http://docs.aws.amazon.com/codepipeline/latest/userguide/how-to-create-custom-action.html">Create a Custom Action for a Pipeline</a>.</p> </note>
-- @param version [Version] <p>The version identifier of the custom action.</p>
-- @param provider [ActionProvider] <p>The provider of the service used in the custom action, such as AWS CodeDeploy.</p>
-- @param inputArtifactDetails [ArtifactDetails] <p>The details of the input artifact for the action, such as its commit ID.</p>
-- @param outputArtifactDetails [ArtifactDetails] <p>The details of the output artifact of the action, such as its commit ID.</p>
-- Required parameter: category
-- Required parameter: provider
-- Required parameter: version
-- Required parameter: inputArtifactDetails
-- Required parameter: outputArtifactDetails
function M.CreateCustomActionTypeInput(category, settings, configurationProperties, version, provider, inputArtifactDetails, outputArtifactDetails, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateCustomActionTypeInput")
	local t = { 
		["category"] = category,
		["settings"] = settings,
		["configurationProperties"] = configurationProperties,
		["version"] = version,
		["provider"] = provider,
		["inputArtifactDetails"] = inputArtifactDetails,
		["outputArtifactDetails"] = outputArtifactDetails,
	}
	M.AssertCreateCustomActionTypeInput(t)
	return t
end

local StageState_keys = { "actionStates" = true, "inboundTransitionState" = true, "latestExecution" = true, "stageName" = true, nil }

function M.AssertStageState(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StageState to be of type 'table'")
	if struct["actionStates"] then M.AssertActionStateList(struct["actionStates"]) end
	if struct["inboundTransitionState"] then M.AssertTransitionState(struct["inboundTransitionState"]) end
	if struct["latestExecution"] then M.AssertStageExecution(struct["latestExecution"]) end
	if struct["stageName"] then M.AssertStageName(struct["stageName"]) end
	for k,_ in pairs(struct) do
		assert(StageState_keys[k], "StageState contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StageState
-- <p>Represents information about the state of the stage.</p>
-- @param actionStates [ActionStateList] <p>The state of the stage.</p>
-- @param inboundTransitionState [TransitionState] <p>The state of the inbound transition, which is either enabled or disabled.</p>
-- @param latestExecution [StageExecution] <p>Information about the latest execution in the stage, including its ID and status.</p>
-- @param stageName [StageName] <p>The name of the stage.</p>
function M.StageState(actionStates, inboundTransitionState, latestExecution, stageName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StageState")
	local t = { 
		["actionStates"] = actionStates,
		["inboundTransitionState"] = inboundTransitionState,
		["latestExecution"] = latestExecution,
		["stageName"] = stageName,
	}
	M.AssertStageState(t)
	return t
end

local GetPipelineStateOutput_keys = { "stageStates" = true, "pipelineVersion" = true, "updated" = true, "pipelineName" = true, "created" = true, nil }

function M.AssertGetPipelineStateOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetPipelineStateOutput to be of type 'table'")
	if struct["stageStates"] then M.AssertStageStateList(struct["stageStates"]) end
	if struct["pipelineVersion"] then M.AssertPipelineVersion(struct["pipelineVersion"]) end
	if struct["updated"] then M.AssertTimestamp(struct["updated"]) end
	if struct["pipelineName"] then M.AssertPipelineName(struct["pipelineName"]) end
	if struct["created"] then M.AssertTimestamp(struct["created"]) end
	for k,_ in pairs(struct) do
		assert(GetPipelineStateOutput_keys[k], "GetPipelineStateOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetPipelineStateOutput
-- <p>Represents the output of a get pipeline state action.</p>
-- @param stageStates [StageStateList] <p>A list of the pipeline stage output information, including stage name, state, most recent run details, whether the stage is disabled, and other data.</p>
-- @param pipelineVersion [PipelineVersion] <p>The version number of the pipeline.</p> <note> <p>A newly-created pipeline is always assigned a version number of <code>1</code>.</p> </note>
-- @param updated [Timestamp] <p>The date and time the pipeline was last updated, in timestamp format.</p>
-- @param pipelineName [PipelineName] <p>The name of the pipeline for which you want to get the state.</p>
-- @param created [Timestamp] <p>The date and time the pipeline was created, in timestamp format.</p>
function M.GetPipelineStateOutput(stageStates, pipelineVersion, updated, pipelineName, created, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetPipelineStateOutput")
	local t = { 
		["stageStates"] = stageStates,
		["pipelineVersion"] = pipelineVersion,
		["updated"] = updated,
		["pipelineName"] = pipelineName,
		["created"] = created,
	}
	M.AssertGetPipelineStateOutput(t)
	return t
end

local ListPipelinesOutput_keys = { "nextToken" = true, "pipelines" = true, nil }

function M.AssertListPipelinesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPipelinesOutput to be of type 'table'")
	if struct["nextToken"] then M.AssertNextToken(struct["nextToken"]) end
	if struct["pipelines"] then M.AssertPipelineList(struct["pipelines"]) end
	for k,_ in pairs(struct) do
		assert(ListPipelinesOutput_keys[k], "ListPipelinesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPipelinesOutput
-- <p>Represents the output of a list pipelines action.</p>
-- @param nextToken [NextToken] <p>If the amount of returned information is significantly large, an identifier is also returned which can be used in a subsequent list pipelines call to return the next set of pipelines in the list.</p>
-- @param pipelines [PipelineList] <p>The list of pipelines.</p>
function M.ListPipelinesOutput(nextToken, pipelines, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListPipelinesOutput")
	local t = { 
		["nextToken"] = nextToken,
		["pipelines"] = pipelines,
	}
	M.AssertListPipelinesOutput(t)
	return t
end

local ArtifactRevision_keys = { "revisionUrl" = true, "name" = true, "created" = true, "revisionId" = true, "revisionSummary" = true, "revisionChangeIdentifier" = true, nil }

function M.AssertArtifactRevision(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ArtifactRevision to be of type 'table'")
	if struct["revisionUrl"] then M.AssertUrl(struct["revisionUrl"]) end
	if struct["name"] then M.AssertArtifactName(struct["name"]) end
	if struct["created"] then M.AssertTimestamp(struct["created"]) end
	if struct["revisionId"] then M.AssertRevision(struct["revisionId"]) end
	if struct["revisionSummary"] then M.AssertRevisionSummary(struct["revisionSummary"]) end
	if struct["revisionChangeIdentifier"] then M.AssertRevisionChangeIdentifier(struct["revisionChangeIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(ArtifactRevision_keys[k], "ArtifactRevision contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ArtifactRevision
-- <p>Represents revision details of an artifact. </p>
-- @param revisionUrl [Url] <p>The commit ID for the artifact revision. For artifacts stored in GitHub or AWS CodeCommit repositories, the commit ID is linked to a commit details page.</p>
-- @param name [ArtifactName] <p>The name of an artifact. This name might be system-generated, such as "MyApp", or might be defined by the user when an action is created.</p>
-- @param created [Timestamp] <p>The date and time when the most recent revision of the artifact was created, in timestamp format.</p>
-- @param revisionId [Revision] <p>The revision ID of the artifact.</p>
-- @param revisionSummary [RevisionSummary] <p>Summary information about the most recent revision of the artifact. For GitHub and AWS CodeCommit repositories, the commit message. For Amazon S3 buckets or actions, the user-provided content of a <code>codepipeline-artifact-revision-summary</code> key specified in the object metadata.</p>
-- @param revisionChangeIdentifier [RevisionChangeIdentifier] <p>An additional identifier for a revision, such as a commit date or, for artifacts stored in Amazon S3 buckets, the ETag value.</p>
function M.ArtifactRevision(revisionUrl, name, created, revisionId, revisionSummary, revisionChangeIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ArtifactRevision")
	local t = { 
		["revisionUrl"] = revisionUrl,
		["name"] = name,
		["created"] = created,
		["revisionId"] = revisionId,
		["revisionSummary"] = revisionSummary,
		["revisionChangeIdentifier"] = revisionChangeIdentifier,
	}
	M.AssertArtifactRevision(t)
	return t
end

local ArtifactDetails_keys = { "maximumCount" = true, "minimumCount" = true, nil }

function M.AssertArtifactDetails(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ArtifactDetails to be of type 'table'")
	assert(struct["minimumCount"], "Expected key minimumCount to exist in table")
	assert(struct["maximumCount"], "Expected key maximumCount to exist in table")
	if struct["maximumCount"] then M.AssertMaximumArtifactCount(struct["maximumCount"]) end
	if struct["minimumCount"] then M.AssertMinimumArtifactCount(struct["minimumCount"]) end
	for k,_ in pairs(struct) do
		assert(ArtifactDetails_keys[k], "ArtifactDetails contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ArtifactDetails
-- <p>Returns information about the details of an artifact.</p>
-- @param maximumCount [MaximumArtifactCount] <p>The maximum number of artifacts allowed for the action type.</p>
-- @param minimumCount [MinimumArtifactCount] <p>The minimum number of artifacts allowed for the action type.</p>
-- Required parameter: minimumCount
-- Required parameter: maximumCount
function M.ArtifactDetails(maximumCount, minimumCount, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ArtifactDetails")
	local t = { 
		["maximumCount"] = maximumCount,
		["minimumCount"] = minimumCount,
	}
	M.AssertArtifactDetails(t)
	return t
end

local PutThirdPartyJobSuccessResultInput_keys = { "currentRevision" = true, "clientToken" = true, "executionDetails" = true, "continuationToken" = true, "jobId" = true, nil }

function M.AssertPutThirdPartyJobSuccessResultInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutThirdPartyJobSuccessResultInput to be of type 'table'")
	assert(struct["jobId"], "Expected key jobId to exist in table")
	assert(struct["clientToken"], "Expected key clientToken to exist in table")
	if struct["currentRevision"] then M.AssertCurrentRevision(struct["currentRevision"]) end
	if struct["clientToken"] then M.AssertClientToken(struct["clientToken"]) end
	if struct["executionDetails"] then M.AssertExecutionDetails(struct["executionDetails"]) end
	if struct["continuationToken"] then M.AssertContinuationToken(struct["continuationToken"]) end
	if struct["jobId"] then M.AssertThirdPartyJobId(struct["jobId"]) end
	for k,_ in pairs(struct) do
		assert(PutThirdPartyJobSuccessResultInput_keys[k], "PutThirdPartyJobSuccessResultInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutThirdPartyJobSuccessResultInput
-- <p>Represents the input of a put third party job success result action.</p>
-- @param currentRevision [CurrentRevision] <p>Represents information about a current revision.</p>
-- @param clientToken [ClientToken] <p>The clientToken portion of the clientId and clientToken pair used to verify that the calling entity is allowed access to the job and its details.</p>
-- @param executionDetails [ExecutionDetails] <p>The details of the actions taken and results produced on an artifact as it passes through stages in the pipeline. </p>
-- @param continuationToken [ContinuationToken] <p>A token generated by a job worker, such as an AWS CodeDeploy deployment ID, that a successful job provides to identify a partner action in progress. Future jobs will use this token in order to identify the running instance of the action. It can be reused to return additional information about the progress of the partner action. When the action is complete, no continuation token should be supplied.</p>
-- @param jobId [ThirdPartyJobId] <p>The ID of the job that successfully completed. This is the same ID returned from PollForThirdPartyJobs.</p>
-- Required parameter: jobId
-- Required parameter: clientToken
function M.PutThirdPartyJobSuccessResultInput(currentRevision, clientToken, executionDetails, continuationToken, jobId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutThirdPartyJobSuccessResultInput")
	local t = { 
		["currentRevision"] = currentRevision,
		["clientToken"] = clientToken,
		["executionDetails"] = executionDetails,
		["continuationToken"] = continuationToken,
		["jobId"] = jobId,
	}
	M.AssertPutThirdPartyJobSuccessResultInput(t)
	return t
end

local AcknowledgeJobOutput_keys = { "status" = true, nil }

function M.AssertAcknowledgeJobOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AcknowledgeJobOutput to be of type 'table'")
	if struct["status"] then M.AssertJobStatus(struct["status"]) end
	for k,_ in pairs(struct) do
		assert(AcknowledgeJobOutput_keys[k], "AcknowledgeJobOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AcknowledgeJobOutput
-- <p>Represents the output of an acknowledge job action.</p>
-- @param status [JobStatus] <p>Whether the job worker has received the specified job.</p>
function M.AcknowledgeJobOutput(status, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AcknowledgeJobOutput")
	local t = { 
		["status"] = status,
	}
	M.AssertAcknowledgeJobOutput(t)
	return t
end

local UpdatePipelineInput_keys = { "pipeline" = true, nil }

function M.AssertUpdatePipelineInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdatePipelineInput to be of type 'table'")
	assert(struct["pipeline"], "Expected key pipeline to exist in table")
	if struct["pipeline"] then M.AssertPipelineDeclaration(struct["pipeline"]) end
	for k,_ in pairs(struct) do
		assert(UpdatePipelineInput_keys[k], "UpdatePipelineInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdatePipelineInput
-- <p>Represents the input of an update pipeline action.</p>
-- @param pipeline [PipelineDeclaration] <p>The name of the pipeline to be updated.</p>
-- Required parameter: pipeline
function M.UpdatePipelineInput(pipeline, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdatePipelineInput")
	local t = { 
		["pipeline"] = pipeline,
	}
	M.AssertUpdatePipelineInput(t)
	return t
end

local Job_keys = { "nonce" = true, "data" = true, "id" = true, "accountId" = true, nil }

function M.AssertJob(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Job to be of type 'table'")
	if struct["nonce"] then M.AssertNonce(struct["nonce"]) end
	if struct["data"] then M.AssertJobData(struct["data"]) end
	if struct["id"] then M.AssertJobId(struct["id"]) end
	if struct["accountId"] then M.AssertAccountId(struct["accountId"]) end
	for k,_ in pairs(struct) do
		assert(Job_keys[k], "Job contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Job
-- <p>Represents information about a job.</p>
-- @param nonce [Nonce] <p>A system-generated random number that AWS CodePipeline uses to ensure that the job is being worked on by only one job worker. Use this number in an <a>AcknowledgeJob</a> request.</p>
-- @param data [JobData] <p>Additional data about a job.</p>
-- @param id [JobId] <p>The unique system-generated ID of the job.</p>
-- @param accountId [AccountId] <p>The ID of the AWS account to use when performing the job.</p>
function M.Job(nonce, data, id, accountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Job")
	local t = { 
		["nonce"] = nonce,
		["data"] = data,
		["id"] = id,
		["accountId"] = accountId,
	}
	M.AssertJob(t)
	return t
end

local ErrorDetails_keys = { "message" = true, "code" = true, nil }

function M.AssertErrorDetails(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ErrorDetails to be of type 'table'")
	if struct["message"] then M.AssertMessage(struct["message"]) end
	if struct["code"] then M.AssertCode(struct["code"]) end
	for k,_ in pairs(struct) do
		assert(ErrorDetails_keys[k], "ErrorDetails contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ErrorDetails
-- <p>Represents information about an error in AWS CodePipeline.</p>
-- @param message [Message] <p>The text of the error message.</p>
-- @param code [Code] <p>The system ID or error number code of the error.</p>
function M.ErrorDetails(message, code, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ErrorDetails")
	local t = { 
		["message"] = message,
		["code"] = code,
	}
	M.AssertErrorDetails(t)
	return t
end

local UpdatePipelineOutput_keys = { "pipeline" = true, nil }

function M.AssertUpdatePipelineOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdatePipelineOutput to be of type 'table'")
	if struct["pipeline"] then M.AssertPipelineDeclaration(struct["pipeline"]) end
	for k,_ in pairs(struct) do
		assert(UpdatePipelineOutput_keys[k], "UpdatePipelineOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdatePipelineOutput
-- <p>Represents the output of an update pipeline action.</p>
-- @param pipeline [PipelineDeclaration] <p>The structure of the updated pipeline.</p>
function M.UpdatePipelineOutput(pipeline, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdatePipelineOutput")
	local t = { 
		["pipeline"] = pipeline,
	}
	M.AssertUpdatePipelineOutput(t)
	return t
end

local ActionType_keys = { "inputArtifactDetails" = true, "actionConfigurationProperties" = true, "outputArtifactDetails" = true, "id" = true, "settings" = true, nil }

function M.AssertActionType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ActionType to be of type 'table'")
	assert(struct["id"], "Expected key id to exist in table")
	assert(struct["inputArtifactDetails"], "Expected key inputArtifactDetails to exist in table")
	assert(struct["outputArtifactDetails"], "Expected key outputArtifactDetails to exist in table")
	if struct["inputArtifactDetails"] then M.AssertArtifactDetails(struct["inputArtifactDetails"]) end
	if struct["actionConfigurationProperties"] then M.AssertActionConfigurationPropertyList(struct["actionConfigurationProperties"]) end
	if struct["outputArtifactDetails"] then M.AssertArtifactDetails(struct["outputArtifactDetails"]) end
	if struct["id"] then M.AssertActionTypeId(struct["id"]) end
	if struct["settings"] then M.AssertActionTypeSettings(struct["settings"]) end
	for k,_ in pairs(struct) do
		assert(ActionType_keys[k], "ActionType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ActionType
-- <p>Returns information about the details of an action type.</p>
-- @param inputArtifactDetails [ArtifactDetails] <p>The details of the input artifact for the action, such as its commit ID.</p>
-- @param actionConfigurationProperties [ActionConfigurationPropertyList] <p>The configuration properties for the action type.</p>
-- @param outputArtifactDetails [ArtifactDetails] <p>The details of the output artifact of the action, such as its commit ID.</p>
-- @param id [ActionTypeId] <p>Represents information about an action type.</p>
-- @param settings [ActionTypeSettings] <p>The settings for the action type.</p>
-- Required parameter: id
-- Required parameter: inputArtifactDetails
-- Required parameter: outputArtifactDetails
function M.ActionType(inputArtifactDetails, actionConfigurationProperties, outputArtifactDetails, id, settings, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ActionType")
	local t = { 
		["inputArtifactDetails"] = inputArtifactDetails,
		["actionConfigurationProperties"] = actionConfigurationProperties,
		["outputArtifactDetails"] = outputArtifactDetails,
		["id"] = id,
		["settings"] = settings,
	}
	M.AssertActionType(t)
	return t
end

local InvalidActionDeclarationException_keys = { nil }

function M.AssertInvalidActionDeclarationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidActionDeclarationException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidActionDeclarationException_keys[k], "InvalidActionDeclarationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidActionDeclarationException
-- <p>The specified action declaration was specified in an invalid format.</p>
function M.InvalidActionDeclarationException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidActionDeclarationException")
	local t = { 
	}
	M.AssertInvalidActionDeclarationException(t)
	return t
end

local JobDetails_keys = { "data" = true, "id" = true, "accountId" = true, nil }

function M.AssertJobDetails(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected JobDetails to be of type 'table'")
	if struct["data"] then M.AssertJobData(struct["data"]) end
	if struct["id"] then M.AssertJobId(struct["id"]) end
	if struct["accountId"] then M.AssertAccountId(struct["accountId"]) end
	for k,_ in pairs(struct) do
		assert(JobDetails_keys[k], "JobDetails contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type JobDetails
-- <p>Represents information about the details of a job.</p>
-- @param data [JobData] <p>Represents additional information about a job required for a job worker to complete the job. </p>
-- @param id [JobId] <p>The unique system-generated ID of the job.</p>
-- @param accountId [AccountId] <p>The AWS account ID associated with the job.</p>
function M.JobDetails(data, id, accountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating JobDetails")
	local t = { 
		["data"] = data,
		["id"] = id,
		["accountId"] = accountId,
	}
	M.AssertJobDetails(t)
	return t
end

local StageNotFoundException_keys = { nil }

function M.AssertStageNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StageNotFoundException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(StageNotFoundException_keys[k], "StageNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StageNotFoundException
-- <p>The specified stage was specified in an invalid format or cannot be found.</p>
function M.StageNotFoundException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating StageNotFoundException")
	local t = { 
	}
	M.AssertStageNotFoundException(t)
	return t
end

local DisableStageTransitionInput_keys = { "reason" = true, "pipelineName" = true, "stageName" = true, "transitionType" = true, nil }

function M.AssertDisableStageTransitionInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisableStageTransitionInput to be of type 'table'")
	assert(struct["pipelineName"], "Expected key pipelineName to exist in table")
	assert(struct["stageName"], "Expected key stageName to exist in table")
	assert(struct["transitionType"], "Expected key transitionType to exist in table")
	assert(struct["reason"], "Expected key reason to exist in table")
	if struct["reason"] then M.AssertDisabledReason(struct["reason"]) end
	if struct["pipelineName"] then M.AssertPipelineName(struct["pipelineName"]) end
	if struct["stageName"] then M.AssertStageName(struct["stageName"]) end
	if struct["transitionType"] then M.AssertStageTransitionType(struct["transitionType"]) end
	for k,_ in pairs(struct) do
		assert(DisableStageTransitionInput_keys[k], "DisableStageTransitionInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisableStageTransitionInput
-- <p>Represents the input of a disable stage transition input action.</p>
-- @param reason [DisabledReason] <p>The reason given to the user why a stage is disabled, such as waiting for manual approval or manual tests. This message is displayed in the pipeline console UI.</p>
-- @param pipelineName [PipelineName] <p>The name of the pipeline in which you want to disable the flow of artifacts from one stage to another.</p>
-- @param stageName [StageName] <p>The name of the stage where you want to disable the inbound or outbound transition of artifacts.</p>
-- @param transitionType [StageTransitionType] <p>Specifies whether artifacts will be prevented from transitioning into the stage and being processed by the actions in that stage (inbound), or prevented from transitioning from the stage after they have been processed by the actions in that stage (outbound).</p>
-- Required parameter: pipelineName
-- Required parameter: stageName
-- Required parameter: transitionType
-- Required parameter: reason
function M.DisableStageTransitionInput(reason, pipelineName, stageName, transitionType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DisableStageTransitionInput")
	local t = { 
		["reason"] = reason,
		["pipelineName"] = pipelineName,
		["stageName"] = stageName,
		["transitionType"] = transitionType,
	}
	M.AssertDisableStageTransitionInput(t)
	return t
end

local AcknowledgeJobInput_keys = { "nonce" = true, "jobId" = true, nil }

function M.AssertAcknowledgeJobInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AcknowledgeJobInput to be of type 'table'")
	assert(struct["jobId"], "Expected key jobId to exist in table")
	assert(struct["nonce"], "Expected key nonce to exist in table")
	if struct["nonce"] then M.AssertNonce(struct["nonce"]) end
	if struct["jobId"] then M.AssertJobId(struct["jobId"]) end
	for k,_ in pairs(struct) do
		assert(AcknowledgeJobInput_keys[k], "AcknowledgeJobInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AcknowledgeJobInput
-- <p>Represents the input of an acknowledge job action.</p>
-- @param nonce [Nonce] <p>A system-generated random number that AWS CodePipeline uses to ensure that the job is being worked on by only one job worker. Get this number from the response of the <a>PollForJobs</a> request that returned this job.</p>
-- @param jobId [JobId] <p>The unique system-generated ID of the job for which you want to confirm receipt.</p>
-- Required parameter: jobId
-- Required parameter: nonce
function M.AcknowledgeJobInput(nonce, jobId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AcknowledgeJobInput")
	local t = { 
		["nonce"] = nonce,
		["jobId"] = jobId,
	}
	M.AssertAcknowledgeJobInput(t)
	return t
end

local AcknowledgeThirdPartyJobOutput_keys = { "status" = true, nil }

function M.AssertAcknowledgeThirdPartyJobOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AcknowledgeThirdPartyJobOutput to be of type 'table'")
	if struct["status"] then M.AssertJobStatus(struct["status"]) end
	for k,_ in pairs(struct) do
		assert(AcknowledgeThirdPartyJobOutput_keys[k], "AcknowledgeThirdPartyJobOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AcknowledgeThirdPartyJobOutput
-- <p>Represents the output of an acknowledge third party job action.</p>
-- @param status [JobStatus] <p>The status information for the third party job, if any.</p>
function M.AcknowledgeThirdPartyJobOutput(status, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AcknowledgeThirdPartyJobOutput")
	local t = { 
		["status"] = status,
	}
	M.AssertAcknowledgeThirdPartyJobOutput(t)
	return t
end

local CreatePipelineInput_keys = { "pipeline" = true, nil }

function M.AssertCreatePipelineInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreatePipelineInput to be of type 'table'")
	assert(struct["pipeline"], "Expected key pipeline to exist in table")
	if struct["pipeline"] then M.AssertPipelineDeclaration(struct["pipeline"]) end
	for k,_ in pairs(struct) do
		assert(CreatePipelineInput_keys[k], "CreatePipelineInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreatePipelineInput
-- <p>Represents the input of a create pipeline action.</p>
-- @param pipeline [PipelineDeclaration] <p>Represents the structure of actions and stages to be performed in the pipeline. </p>
-- Required parameter: pipeline
function M.CreatePipelineInput(pipeline, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreatePipelineInput")
	local t = { 
		["pipeline"] = pipeline,
	}
	M.AssertCreatePipelineInput(t)
	return t
end

local ListPipelineExecutionsOutput_keys = { "pipelineExecutionSummaries" = true, "nextToken" = true, nil }

function M.AssertListPipelineExecutionsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPipelineExecutionsOutput to be of type 'table'")
	if struct["pipelineExecutionSummaries"] then M.AssertPipelineExecutionSummaryList(struct["pipelineExecutionSummaries"]) end
	if struct["nextToken"] then M.AssertNextToken(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(ListPipelineExecutionsOutput_keys[k], "ListPipelineExecutionsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPipelineExecutionsOutput
-- <p>Represents the output of a list pipeline executions action. </p>
-- @param pipelineExecutionSummaries [PipelineExecutionSummaryList] <p>A list of executions in the history of a pipeline.</p>
-- @param nextToken [NextToken] <p>A token that can be used in the next list pipeline executions call to return the next set of pipeline executions. To view all items in the list, continue to call this operation with each subsequent token until no more nextToken values are returned.</p>
function M.ListPipelineExecutionsOutput(pipelineExecutionSummaries, nextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListPipelineExecutionsOutput")
	local t = { 
		["pipelineExecutionSummaries"] = pipelineExecutionSummaries,
		["nextToken"] = nextToken,
	}
	M.AssertListPipelineExecutionsOutput(t)
	return t
end

local ActionContext_keys = { "name" = true, nil }

function M.AssertActionContext(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ActionContext to be of type 'table'")
	if struct["name"] then M.AssertActionName(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(ActionContext_keys[k], "ActionContext contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ActionContext
-- <p>Represents the context of an action within the stage of a pipeline to a job worker.</p>
-- @param name [ActionName] <p>The name of the action within the context of a job.</p>
function M.ActionContext(name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ActionContext")
	local t = { 
		["name"] = name,
	}
	M.AssertActionContext(t)
	return t
end

local PutApprovalResultInput_keys = { "actionName" = true, "token" = true, "pipelineName" = true, "result" = true, "stageName" = true, nil }

function M.AssertPutApprovalResultInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutApprovalResultInput to be of type 'table'")
	assert(struct["pipelineName"], "Expected key pipelineName to exist in table")
	assert(struct["stageName"], "Expected key stageName to exist in table")
	assert(struct["actionName"], "Expected key actionName to exist in table")
	assert(struct["result"], "Expected key result to exist in table")
	assert(struct["token"], "Expected key token to exist in table")
	if struct["actionName"] then M.AssertActionName(struct["actionName"]) end
	if struct["token"] then M.AssertApprovalToken(struct["token"]) end
	if struct["pipelineName"] then M.AssertPipelineName(struct["pipelineName"]) end
	if struct["result"] then M.AssertApprovalResult(struct["result"]) end
	if struct["stageName"] then M.AssertStageName(struct["stageName"]) end
	for k,_ in pairs(struct) do
		assert(PutApprovalResultInput_keys[k], "PutApprovalResultInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutApprovalResultInput
-- <p>Represents the input of a put approval result action.</p>
-- @param actionName [ActionName] <p>The name of the action for which approval is requested.</p>
-- @param token [ApprovalToken] <p>The system-generated token used to identify a unique approval request. The token for each open approval request can be obtained using the <a>GetPipelineState</a> action and is used to validate that the approval request corresponding to this token is still valid.</p>
-- @param pipelineName [PipelineName] <p>The name of the pipeline that contains the action. </p>
-- @param result [ApprovalResult] <p>Represents information about the result of the approval request.</p>
-- @param stageName [StageName] <p>The name of the stage that contains the action.</p>
-- Required parameter: pipelineName
-- Required parameter: stageName
-- Required parameter: actionName
-- Required parameter: result
-- Required parameter: token
function M.PutApprovalResultInput(actionName, token, pipelineName, result, stageName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutApprovalResultInput")
	local t = { 
		["actionName"] = actionName,
		["token"] = token,
		["pipelineName"] = pipelineName,
		["result"] = result,
		["stageName"] = stageName,
	}
	M.AssertPutApprovalResultInput(t)
	return t
end

local InvalidStructureException_keys = { nil }

function M.AssertInvalidStructureException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidStructureException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidStructureException_keys[k], "InvalidStructureException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidStructureException
-- <p>The specified structure was specified in an invalid format.</p>
function M.InvalidStructureException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidStructureException")
	local t = { 
	}
	M.AssertInvalidStructureException(t)
	return t
end

local PutActionRevisionOutput_keys = { "pipelineExecutionId" = true, "newRevision" = true, nil }

function M.AssertPutActionRevisionOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutActionRevisionOutput to be of type 'table'")
	if struct["pipelineExecutionId"] then M.AssertPipelineExecutionId(struct["pipelineExecutionId"]) end
	if struct["newRevision"] then M.AssertBoolean(struct["newRevision"]) end
	for k,_ in pairs(struct) do
		assert(PutActionRevisionOutput_keys[k], "PutActionRevisionOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutActionRevisionOutput
-- <p>Represents the output of a put action revision action.</p>
-- @param pipelineExecutionId [PipelineExecutionId] <p>The ID of the current workflow state of the pipeline.</p>
-- @param newRevision [Boolean] <p>Indicates whether the artifact revision was previously used in an execution of the specified pipeline.</p>
function M.PutActionRevisionOutput(pipelineExecutionId, newRevision, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutActionRevisionOutput")
	local t = { 
		["pipelineExecutionId"] = pipelineExecutionId,
		["newRevision"] = newRevision,
	}
	M.AssertPutActionRevisionOutput(t)
	return t
end

local InputArtifact_keys = { "name" = true, nil }

function M.AssertInputArtifact(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InputArtifact to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	if struct["name"] then M.AssertArtifactName(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(InputArtifact_keys[k], "InputArtifact contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InputArtifact
-- <p>Represents information about an artifact to be worked on, such as a test or build artifact.</p>
-- @param name [ArtifactName] <p>The name of the artifact to be worked on, for example, "My App".</p> <p>The input artifact of an action must exactly match the output artifact declared in a preceding action, but the input artifact does not have to be the next action in strict sequence from the action that provided the output artifact. Actions in parallel can declare different output artifacts, which are in turn consumed by different following actions.</p>
-- Required parameter: name
function M.InputArtifact(name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InputArtifact")
	local t = { 
		["name"] = name,
	}
	M.AssertInputArtifact(t)
	return t
end

local GetPipelineExecutionOutput_keys = { "pipelineExecution" = true, nil }

function M.AssertGetPipelineExecutionOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetPipelineExecutionOutput to be of type 'table'")
	if struct["pipelineExecution"] then M.AssertPipelineExecution(struct["pipelineExecution"]) end
	for k,_ in pairs(struct) do
		assert(GetPipelineExecutionOutput_keys[k], "GetPipelineExecutionOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetPipelineExecutionOutput
-- <p>Represents the output of a get pipeline execution action.</p>
-- @param pipelineExecution [PipelineExecution] <p>Represents information about the execution of a pipeline.</p>
function M.GetPipelineExecutionOutput(pipelineExecution, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetPipelineExecutionOutput")
	local t = { 
		["pipelineExecution"] = pipelineExecution,
	}
	M.AssertGetPipelineExecutionOutput(t)
	return t
end

local ApprovalAlreadyCompletedException_keys = { nil }

function M.AssertApprovalAlreadyCompletedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ApprovalAlreadyCompletedException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(ApprovalAlreadyCompletedException_keys[k], "ApprovalAlreadyCompletedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ApprovalAlreadyCompletedException
-- <p>The approval action has already been approved or rejected.</p>
function M.ApprovalAlreadyCompletedException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ApprovalAlreadyCompletedException")
	local t = { 
	}
	M.AssertApprovalAlreadyCompletedException(t)
	return t
end

local ActionTypeId_keys = { "category" = true, "owner" = true, "version" = true, "provider" = true, nil }

function M.AssertActionTypeId(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ActionTypeId to be of type 'table'")
	assert(struct["category"], "Expected key category to exist in table")
	assert(struct["owner"], "Expected key owner to exist in table")
	assert(struct["provider"], "Expected key provider to exist in table")
	assert(struct["version"], "Expected key version to exist in table")
	if struct["category"] then M.AssertActionCategory(struct["category"]) end
	if struct["owner"] then M.AssertActionOwner(struct["owner"]) end
	if struct["version"] then M.AssertVersion(struct["version"]) end
	if struct["provider"] then M.AssertActionProvider(struct["provider"]) end
	for k,_ in pairs(struct) do
		assert(ActionTypeId_keys[k], "ActionTypeId contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ActionTypeId
-- <p>Represents information about an action type.</p>
-- @param category [ActionCategory] <p>A category defines what kind of action can be taken in the stage, and constrains the provider type for the action. Valid categories are limited to one of the values below.</p>
-- @param owner [ActionOwner] <p>The creator of the action being called.</p>
-- @param version [Version] <p>A string that identifies the action type.</p>
-- @param provider [ActionProvider] <p>The provider of the service being called by the action. Valid providers are determined by the action category. For example, an action in the Deploy category type might have a provider of AWS CodeDeploy, which would be specified as CodeDeploy.</p>
-- Required parameter: category
-- Required parameter: owner
-- Required parameter: provider
-- Required parameter: version
function M.ActionTypeId(category, owner, version, provider, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ActionTypeId")
	local t = { 
		["category"] = category,
		["owner"] = owner,
		["version"] = version,
		["provider"] = provider,
	}
	M.AssertActionTypeId(t)
	return t
end

local TransitionState_keys = { "disabledReason" = true, "enabled" = true, "lastChangedAt" = true, "lastChangedBy" = true, nil }

function M.AssertTransitionState(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TransitionState to be of type 'table'")
	if struct["disabledReason"] then M.AssertDisabledReason(struct["disabledReason"]) end
	if struct["enabled"] then M.AssertEnabled(struct["enabled"]) end
	if struct["lastChangedAt"] then M.AssertLastChangedAt(struct["lastChangedAt"]) end
	if struct["lastChangedBy"] then M.AssertLastChangedBy(struct["lastChangedBy"]) end
	for k,_ in pairs(struct) do
		assert(TransitionState_keys[k], "TransitionState contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TransitionState
-- <p>Represents information about the state of transitions between one stage and another stage.</p>
-- @param disabledReason [DisabledReason] <p>The user-specified reason why the transition between two stages of a pipeline was disabled.</p>
-- @param enabled [Enabled] <p>Whether the transition between stages is enabled (true) or disabled (false).</p>
-- @param lastChangedAt [LastChangedAt] <p>The timestamp when the transition state was last changed.</p>
-- @param lastChangedBy [LastChangedBy] <p>The ID of the user who last changed the transition state.</p>
function M.TransitionState(disabledReason, enabled, lastChangedAt, lastChangedBy, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TransitionState")
	local t = { 
		["disabledReason"] = disabledReason,
		["enabled"] = enabled,
		["lastChangedAt"] = lastChangedAt,
		["lastChangedBy"] = lastChangedBy,
	}
	M.AssertTransitionState(t)
	return t
end

local ActionState_keys = { "actionName" = true, "revisionUrl" = true, "entityUrl" = true, "latestExecution" = true, "currentRevision" = true, nil }

function M.AssertActionState(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ActionState to be of type 'table'")
	if struct["actionName"] then M.AssertActionName(struct["actionName"]) end
	if struct["revisionUrl"] then M.AssertUrl(struct["revisionUrl"]) end
	if struct["entityUrl"] then M.AssertUrl(struct["entityUrl"]) end
	if struct["latestExecution"] then M.AssertActionExecution(struct["latestExecution"]) end
	if struct["currentRevision"] then M.AssertActionRevision(struct["currentRevision"]) end
	for k,_ in pairs(struct) do
		assert(ActionState_keys[k], "ActionState contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ActionState
-- <p>Represents information about the state of an action.</p>
-- @param actionName [ActionName] <p>The name of the action.</p>
-- @param revisionUrl [Url] <p>A URL link for more information about the revision, such as a commit details page.</p>
-- @param entityUrl [Url] <p>A URL link for more information about the state of the action, such as a deployment group details page.</p>
-- @param latestExecution [ActionExecution] <p>Represents information about the run of an action.</p>
-- @param currentRevision [ActionRevision] <p>Represents information about the version (or revision) of an action.</p>
function M.ActionState(actionName, revisionUrl, entityUrl, latestExecution, currentRevision, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ActionState")
	local t = { 
		["actionName"] = actionName,
		["revisionUrl"] = revisionUrl,
		["entityUrl"] = entityUrl,
		["latestExecution"] = latestExecution,
		["currentRevision"] = currentRevision,
	}
	M.AssertActionState(t)
	return t
end

local LimitExceededException_keys = { nil }

function M.AssertLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LimitExceededException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(LimitExceededException_keys[k], "LimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LimitExceededException
-- <p>The number of pipelines associated with the AWS account has exceeded the limit allowed for the account.</p>
function M.LimitExceededException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating LimitExceededException")
	local t = { 
	}
	M.AssertLimitExceededException(t)
	return t
end

local PutActionRevisionInput_keys = { "actionName" = true, "pipelineName" = true, "stageName" = true, "actionRevision" = true, nil }

function M.AssertPutActionRevisionInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutActionRevisionInput to be of type 'table'")
	assert(struct["pipelineName"], "Expected key pipelineName to exist in table")
	assert(struct["stageName"], "Expected key stageName to exist in table")
	assert(struct["actionName"], "Expected key actionName to exist in table")
	assert(struct["actionRevision"], "Expected key actionRevision to exist in table")
	if struct["actionName"] then M.AssertActionName(struct["actionName"]) end
	if struct["pipelineName"] then M.AssertPipelineName(struct["pipelineName"]) end
	if struct["stageName"] then M.AssertStageName(struct["stageName"]) end
	if struct["actionRevision"] then M.AssertActionRevision(struct["actionRevision"]) end
	for k,_ in pairs(struct) do
		assert(PutActionRevisionInput_keys[k], "PutActionRevisionInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutActionRevisionInput
-- <p>Represents the input of a put action revision action.</p>
-- @param actionName [ActionName] <p>The name of the action that will process the revision.</p>
-- @param pipelineName [PipelineName] <p>The name of the pipeline that will start processing the revision to the source.</p>
-- @param stageName [StageName] <p>The name of the stage that contains the action that will act upon the revision.</p>
-- @param actionRevision [ActionRevision] <p>Represents information about the version (or revision) of an action.</p>
-- Required parameter: pipelineName
-- Required parameter: stageName
-- Required parameter: actionName
-- Required parameter: actionRevision
function M.PutActionRevisionInput(actionName, pipelineName, stageName, actionRevision, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutActionRevisionInput")
	local t = { 
		["actionName"] = actionName,
		["pipelineName"] = pipelineName,
		["stageName"] = stageName,
		["actionRevision"] = actionRevision,
	}
	M.AssertPutActionRevisionInput(t)
	return t
end

local GetPipelineInput_keys = { "version" = true, "name" = true, nil }

function M.AssertGetPipelineInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetPipelineInput to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	if struct["version"] then M.AssertPipelineVersion(struct["version"]) end
	if struct["name"] then M.AssertPipelineName(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(GetPipelineInput_keys[k], "GetPipelineInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetPipelineInput
-- <p>Represents the input of a get pipeline action.</p>
-- @param version [PipelineVersion] <p>The version number of the pipeline. If you do not specify a version, defaults to the most current version.</p>
-- @param name [PipelineName] <p>The name of the pipeline for which you want to get information. Pipeline names must be unique under an Amazon Web Services (AWS) user account.</p>
-- Required parameter: name
function M.GetPipelineInput(version, name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetPipelineInput")
	local t = { 
		["version"] = version,
		["name"] = name,
	}
	M.AssertGetPipelineInput(t)
	return t
end

local PipelineDeclaration_keys = { "roleArn" = true, "stages" = true, "artifactStore" = true, "name" = true, "version" = true, nil }

function M.AssertPipelineDeclaration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PipelineDeclaration to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["roleArn"], "Expected key roleArn to exist in table")
	assert(struct["artifactStore"], "Expected key artifactStore to exist in table")
	assert(struct["stages"], "Expected key stages to exist in table")
	if struct["roleArn"] then M.AssertRoleArn(struct["roleArn"]) end
	if struct["stages"] then M.AssertPipelineStageDeclarationList(struct["stages"]) end
	if struct["artifactStore"] then M.AssertArtifactStore(struct["artifactStore"]) end
	if struct["name"] then M.AssertPipelineName(struct["name"]) end
	if struct["version"] then M.AssertPipelineVersion(struct["version"]) end
	for k,_ in pairs(struct) do
		assert(PipelineDeclaration_keys[k], "PipelineDeclaration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PipelineDeclaration
-- <p>Represents the structure of actions and stages to be performed in the pipeline.</p>
-- @param roleArn [RoleArn] <p>The Amazon Resource Name (ARN) for AWS CodePipeline to use to either perform actions with no actionRoleArn, or to use to assume roles for actions with an actionRoleArn.</p>
-- @param stages [PipelineStageDeclarationList] <p>The stage in which to perform the action.</p>
-- @param artifactStore [ArtifactStore] <p>Represents the context of an action within the stage of a pipeline to a job worker. </p>
-- @param name [PipelineName] <p>The name of the action to be performed.</p>
-- @param version [PipelineVersion] <p>The version number of the pipeline. A new pipeline always has a version number of 1. This number is automatically incremented when a pipeline is updated.</p>
-- Required parameter: name
-- Required parameter: roleArn
-- Required parameter: artifactStore
-- Required parameter: stages
function M.PipelineDeclaration(roleArn, stages, artifactStore, name, version, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PipelineDeclaration")
	local t = { 
		["roleArn"] = roleArn,
		["stages"] = stages,
		["artifactStore"] = artifactStore,
		["name"] = name,
		["version"] = version,
	}
	M.AssertPipelineDeclaration(t)
	return t
end

local InvalidNextTokenException_keys = { nil }

function M.AssertInvalidNextTokenException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidNextTokenException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidNextTokenException_keys[k], "InvalidNextTokenException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidNextTokenException
-- <p>The next token was specified in an invalid format. Make sure that the next token you provided is the token returned by a previous call.</p>
function M.InvalidNextTokenException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidNextTokenException")
	local t = { 
	}
	M.AssertInvalidNextTokenException(t)
	return t
end

local PipelineNameInUseException_keys = { nil }

function M.AssertPipelineNameInUseException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PipelineNameInUseException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(PipelineNameInUseException_keys[k], "PipelineNameInUseException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PipelineNameInUseException
-- <p>The specified pipeline name is already in use.</p>
function M.PipelineNameInUseException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating PipelineNameInUseException")
	local t = { 
	}
	M.AssertPipelineNameInUseException(t)
	return t
end

local StartPipelineExecutionInput_keys = { "name" = true, nil }

function M.AssertStartPipelineExecutionInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartPipelineExecutionInput to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	if struct["name"] then M.AssertPipelineName(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(StartPipelineExecutionInput_keys[k], "StartPipelineExecutionInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartPipelineExecutionInput
-- <p>Represents the input of a start pipeline execution action.</p>
-- @param name [PipelineName] <p>The name of the pipeline to start.</p>
-- Required parameter: name
function M.StartPipelineExecutionInput(name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StartPipelineExecutionInput")
	local t = { 
		["name"] = name,
	}
	M.AssertStartPipelineExecutionInput(t)
	return t
end

local ActionConfiguration_keys = { "configuration" = true, nil }

function M.AssertActionConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ActionConfiguration to be of type 'table'")
	if struct["configuration"] then M.AssertActionConfigurationMap(struct["configuration"]) end
	for k,_ in pairs(struct) do
		assert(ActionConfiguration_keys[k], "ActionConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ActionConfiguration
-- <p>Represents information about an action configuration.</p>
-- @param configuration [ActionConfigurationMap] <p>The configuration data for the action.</p>
function M.ActionConfiguration(configuration, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ActionConfiguration")
	local t = { 
		["configuration"] = configuration,
	}
	M.AssertActionConfiguration(t)
	return t
end

local ArtifactStore_keys = { "type" = true, "location" = true, "encryptionKey" = true, nil }

function M.AssertArtifactStore(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ArtifactStore to be of type 'table'")
	assert(struct["type"], "Expected key type to exist in table")
	assert(struct["location"], "Expected key location to exist in table")
	if struct["type"] then M.AssertArtifactStoreType(struct["type"]) end
	if struct["location"] then M.AssertArtifactStoreLocation(struct["location"]) end
	if struct["encryptionKey"] then M.AssertEncryptionKey(struct["encryptionKey"]) end
	for k,_ in pairs(struct) do
		assert(ArtifactStore_keys[k], "ArtifactStore contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ArtifactStore
-- <p>The Amazon S3 bucket where artifacts are stored for the pipeline.</p>
-- @param type [ArtifactStoreType] <p>The type of the artifact store, such as S3.</p>
-- @param location [ArtifactStoreLocation] <p>The Amazon S3 bucket used for storing the artifacts for a pipeline. You can specify the name of an S3 bucket but not a folder within the bucket. A folder to contain the pipeline artifacts is created for you based on the name of the pipeline. You can use any Amazon S3 bucket in the same AWS Region as the pipeline to store your pipeline artifacts.</p>
-- @param encryptionKey [EncryptionKey] <p>The encryption key used to encrypt the data in the artifact store, such as an AWS Key Management Service (AWS KMS) key. If this is undefined, the default key for Amazon S3 is used.</p>
-- Required parameter: type
-- Required parameter: location
function M.ArtifactStore(type, location, encryptionKey, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ArtifactStore")
	local t = { 
		["type"] = type,
		["location"] = location,
		["encryptionKey"] = encryptionKey,
	}
	M.AssertArtifactStore(t)
	return t
end

local DeletePipelineInput_keys = { "name" = true, nil }

function M.AssertDeletePipelineInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeletePipelineInput to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	if struct["name"] then M.AssertPipelineName(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(DeletePipelineInput_keys[k], "DeletePipelineInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeletePipelineInput
-- <p>Represents the input of a delete pipeline action.</p>
-- @param name [PipelineName] <p>The name of the pipeline to be deleted.</p>
-- Required parameter: name
function M.DeletePipelineInput(name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeletePipelineInput")
	local t = { 
		["name"] = name,
	}
	M.AssertDeletePipelineInput(t)
	return t
end

local ThirdPartyJobDetails_keys = { "nonce" = true, "data" = true, "id" = true, nil }

function M.AssertThirdPartyJobDetails(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ThirdPartyJobDetails to be of type 'table'")
	if struct["nonce"] then M.AssertNonce(struct["nonce"]) end
	if struct["data"] then M.AssertThirdPartyJobData(struct["data"]) end
	if struct["id"] then M.AssertThirdPartyJobId(struct["id"]) end
	for k,_ in pairs(struct) do
		assert(ThirdPartyJobDetails_keys[k], "ThirdPartyJobDetails contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ThirdPartyJobDetails
-- <p>The details of a job sent in response to a GetThirdPartyJobDetails request.</p>
-- @param nonce [Nonce] <p>A system-generated random number that AWS CodePipeline uses to ensure that the job is being worked on by only one job worker. Use this number in an <a>AcknowledgeThirdPartyJob</a> request.</p>
-- @param data [ThirdPartyJobData] <p>The data to be returned by the third party job worker.</p>
-- @param id [ThirdPartyJobId] <p>The identifier used to identify the job details in AWS CodePipeline.</p>
function M.ThirdPartyJobDetails(nonce, data, id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ThirdPartyJobDetails")
	local t = { 
		["nonce"] = nonce,
		["data"] = data,
		["id"] = id,
	}
	M.AssertThirdPartyJobDetails(t)
	return t
end

local FailureDetails_keys = { "message" = true, "type" = true, "externalExecutionId" = true, nil }

function M.AssertFailureDetails(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FailureDetails to be of type 'table'")
	assert(struct["type"], "Expected key type to exist in table")
	assert(struct["message"], "Expected key message to exist in table")
	if struct["message"] then M.AssertMessage(struct["message"]) end
	if struct["type"] then M.AssertFailureType(struct["type"]) end
	if struct["externalExecutionId"] then M.AssertExecutionId(struct["externalExecutionId"]) end
	for k,_ in pairs(struct) do
		assert(FailureDetails_keys[k], "FailureDetails contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FailureDetails
-- <p>Represents information about failure details.</p>
-- @param message [Message] <p>The message about the failure.</p>
-- @param type [FailureType] <p>The type of the failure.</p>
-- @param externalExecutionId [ExecutionId] <p>The external ID of the run of the action that failed.</p>
-- Required parameter: type
-- Required parameter: message
function M.FailureDetails(message, type, externalExecutionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating FailureDetails")
	local t = { 
		["message"] = message,
		["type"] = type,
		["externalExecutionId"] = externalExecutionId,
	}
	M.AssertFailureDetails(t)
	return t
end

local ActionExecution_keys = { "status" = true, "lastStatusChange" = true, "externalExecutionId" = true, "errorDetails" = true, "externalExecutionUrl" = true, "summary" = true, "token" = true, "lastUpdatedBy" = true, "percentComplete" = true, nil }

function M.AssertActionExecution(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ActionExecution to be of type 'table'")
	if struct["status"] then M.AssertActionExecutionStatus(struct["status"]) end
	if struct["lastStatusChange"] then M.AssertTimestamp(struct["lastStatusChange"]) end
	if struct["externalExecutionId"] then M.AssertExecutionId(struct["externalExecutionId"]) end
	if struct["errorDetails"] then M.AssertErrorDetails(struct["errorDetails"]) end
	if struct["externalExecutionUrl"] then M.AssertUrl(struct["externalExecutionUrl"]) end
	if struct["summary"] then M.AssertExecutionSummary(struct["summary"]) end
	if struct["token"] then M.AssertActionExecutionToken(struct["token"]) end
	if struct["lastUpdatedBy"] then M.AssertLastUpdatedBy(struct["lastUpdatedBy"]) end
	if struct["percentComplete"] then M.AssertPercentage(struct["percentComplete"]) end
	for k,_ in pairs(struct) do
		assert(ActionExecution_keys[k], "ActionExecution contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ActionExecution
-- <p>Represents information about the run of an action.</p>
-- @param status [ActionExecutionStatus] <p>The status of the action, or for a completed action, the last status of the action.</p>
-- @param lastStatusChange [Timestamp] <p>The last status change of the action.</p>
-- @param externalExecutionId [ExecutionId] <p>The external ID of the run of the action.</p>
-- @param errorDetails [ErrorDetails] <p>The details of an error returned by a URL external to AWS.</p>
-- @param externalExecutionUrl [Url] <p>The URL of a resource external to AWS that will be used when running the action, for example an external repository URL.</p>
-- @param summary [ExecutionSummary] <p>A summary of the run of the action.</p>
-- @param token [ActionExecutionToken] <p>The system-generated token used to identify a unique approval request. The token for each open approval request can be obtained using the GetPipelineState command and is used to validate that the approval request corresponding to this token is still valid.</p>
-- @param lastUpdatedBy [LastUpdatedBy] <p>The ARN of the user who last changed the pipeline.</p>
-- @param percentComplete [Percentage] <p>A percentage of completeness of the action as it runs.</p>
function M.ActionExecution(status, lastStatusChange, externalExecutionId, errorDetails, externalExecutionUrl, summary, token, lastUpdatedBy, percentComplete, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ActionExecution")
	local t = { 
		["status"] = status,
		["lastStatusChange"] = lastStatusChange,
		["externalExecutionId"] = externalExecutionId,
		["errorDetails"] = errorDetails,
		["externalExecutionUrl"] = externalExecutionUrl,
		["summary"] = summary,
		["token"] = token,
		["lastUpdatedBy"] = lastUpdatedBy,
		["percentComplete"] = percentComplete,
	}
	M.AssertActionExecution(t)
	return t
end

local StartPipelineExecutionOutput_keys = { "pipelineExecutionId" = true, nil }

function M.AssertStartPipelineExecutionOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartPipelineExecutionOutput to be of type 'table'")
	if struct["pipelineExecutionId"] then M.AssertPipelineExecutionId(struct["pipelineExecutionId"]) end
	for k,_ in pairs(struct) do
		assert(StartPipelineExecutionOutput_keys[k], "StartPipelineExecutionOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartPipelineExecutionOutput
-- <p>Represents the output of a start pipeline execution action.</p>
-- @param pipelineExecutionId [PipelineExecutionId] <p>The unique system-generated ID of the pipeline execution that was started.</p>
function M.StartPipelineExecutionOutput(pipelineExecutionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StartPipelineExecutionOutput")
	local t = { 
		["pipelineExecutionId"] = pipelineExecutionId,
	}
	M.AssertStartPipelineExecutionOutput(t)
	return t
end

local CreatePipelineOutput_keys = { "pipeline" = true, nil }

function M.AssertCreatePipelineOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreatePipelineOutput to be of type 'table'")
	if struct["pipeline"] then M.AssertPipelineDeclaration(struct["pipeline"]) end
	for k,_ in pairs(struct) do
		assert(CreatePipelineOutput_keys[k], "CreatePipelineOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreatePipelineOutput
-- <p>Represents the output of a create pipeline action.</p>
-- @param pipeline [PipelineDeclaration] <p>Represents the structure of actions and stages to be performed in the pipeline. </p>
function M.CreatePipelineOutput(pipeline, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreatePipelineOutput")
	local t = { 
		["pipeline"] = pipeline,
	}
	M.AssertCreatePipelineOutput(t)
	return t
end

local InvalidStageDeclarationException_keys = { nil }

function M.AssertInvalidStageDeclarationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidStageDeclarationException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidStageDeclarationException_keys[k], "InvalidStageDeclarationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidStageDeclarationException
-- <p>The specified stage declaration was specified in an invalid format.</p>
function M.InvalidStageDeclarationException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidStageDeclarationException")
	local t = { 
	}
	M.AssertInvalidStageDeclarationException(t)
	return t
end

local ActionNotFoundException_keys = { nil }

function M.AssertActionNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ActionNotFoundException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(ActionNotFoundException_keys[k], "ActionNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ActionNotFoundException
-- <p>The specified action cannot be found.</p>
function M.ActionNotFoundException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ActionNotFoundException")
	local t = { 
	}
	M.AssertActionNotFoundException(t)
	return t
end

local ActionRevision_keys = { "revisionChangeId" = true, "revisionId" = true, "created" = true, nil }

function M.AssertActionRevision(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ActionRevision to be of type 'table'")
	assert(struct["revisionId"], "Expected key revisionId to exist in table")
	assert(struct["revisionChangeId"], "Expected key revisionChangeId to exist in table")
	assert(struct["created"], "Expected key created to exist in table")
	if struct["revisionChangeId"] then M.AssertRevisionChangeIdentifier(struct["revisionChangeId"]) end
	if struct["revisionId"] then M.AssertRevision(struct["revisionId"]) end
	if struct["created"] then M.AssertTimestamp(struct["created"]) end
	for k,_ in pairs(struct) do
		assert(ActionRevision_keys[k], "ActionRevision contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ActionRevision
-- <p>Represents information about the version (or revision) of an action.</p>
-- @param revisionChangeId [RevisionChangeIdentifier] <p>The unique identifier of the change that set the state to this revision, for example a deployment ID or timestamp.</p>
-- @param revisionId [Revision] <p>The system-generated unique ID that identifies the revision number of the action.</p>
-- @param created [Timestamp] <p>The date and time when the most recent version of the action was created, in timestamp format.</p>
-- Required parameter: revisionId
-- Required parameter: revisionChangeId
-- Required parameter: created
function M.ActionRevision(revisionChangeId, revisionId, created, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ActionRevision")
	local t = { 
		["revisionChangeId"] = revisionChangeId,
		["revisionId"] = revisionId,
		["created"] = created,
	}
	M.AssertActionRevision(t)
	return t
end

local PutJobFailureResultInput_keys = { "failureDetails" = true, "jobId" = true, nil }

function M.AssertPutJobFailureResultInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutJobFailureResultInput to be of type 'table'")
	assert(struct["jobId"], "Expected key jobId to exist in table")
	assert(struct["failureDetails"], "Expected key failureDetails to exist in table")
	if struct["failureDetails"] then M.AssertFailureDetails(struct["failureDetails"]) end
	if struct["jobId"] then M.AssertJobId(struct["jobId"]) end
	for k,_ in pairs(struct) do
		assert(PutJobFailureResultInput_keys[k], "PutJobFailureResultInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutJobFailureResultInput
-- <p>Represents the input of a put job failure result action.</p>
-- @param failureDetails [FailureDetails] <p>The details about the failure of a job.</p>
-- @param jobId [JobId] <p>The unique system-generated ID of the job that failed. This is the same ID returned from PollForJobs.</p>
-- Required parameter: jobId
-- Required parameter: failureDetails
function M.PutJobFailureResultInput(failureDetails, jobId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutJobFailureResultInput")
	local t = { 
		["failureDetails"] = failureDetails,
		["jobId"] = jobId,
	}
	M.AssertPutJobFailureResultInput(t)
	return t
end

local ListPipelinesInput_keys = { "nextToken" = true, nil }

function M.AssertListPipelinesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPipelinesInput to be of type 'table'")
	if struct["nextToken"] then M.AssertNextToken(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(ListPipelinesInput_keys[k], "ListPipelinesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPipelinesInput
-- <p>Represents the input of a list pipelines action.</p>
-- @param nextToken [NextToken] <p>An identifier that was returned from the previous list pipelines call, which can be used to return the next set of pipelines in the list.</p>
function M.ListPipelinesInput(nextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListPipelinesInput")
	local t = { 
		["nextToken"] = nextToken,
	}
	M.AssertListPipelinesInput(t)
	return t
end

local DeleteCustomActionTypeInput_keys = { "category" = true, "version" = true, "provider" = true, nil }

function M.AssertDeleteCustomActionTypeInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteCustomActionTypeInput to be of type 'table'")
	assert(struct["category"], "Expected key category to exist in table")
	assert(struct["provider"], "Expected key provider to exist in table")
	assert(struct["version"], "Expected key version to exist in table")
	if struct["category"] then M.AssertActionCategory(struct["category"]) end
	if struct["version"] then M.AssertVersion(struct["version"]) end
	if struct["provider"] then M.AssertActionProvider(struct["provider"]) end
	for k,_ in pairs(struct) do
		assert(DeleteCustomActionTypeInput_keys[k], "DeleteCustomActionTypeInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteCustomActionTypeInput
-- <p>Represents the input of a delete custom action operation. The custom action will be marked as deleted.</p>
-- @param category [ActionCategory] <p>The category of the custom action that you want to delete, such as source or deploy.</p>
-- @param version [Version] <p>The version of the custom action to delete.</p>
-- @param provider [ActionProvider] <p>The provider of the service used in the custom action, such as AWS CodeDeploy.</p>
-- Required parameter: category
-- Required parameter: provider
-- Required parameter: version
function M.DeleteCustomActionTypeInput(category, version, provider, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteCustomActionTypeInput")
	local t = { 
		["category"] = category,
		["version"] = version,
		["provider"] = provider,
	}
	M.AssertDeleteCustomActionTypeInput(t)
	return t
end

local AcknowledgeThirdPartyJobInput_keys = { "nonce" = true, "clientToken" = true, "jobId" = true, nil }

function M.AssertAcknowledgeThirdPartyJobInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AcknowledgeThirdPartyJobInput to be of type 'table'")
	assert(struct["jobId"], "Expected key jobId to exist in table")
	assert(struct["nonce"], "Expected key nonce to exist in table")
	assert(struct["clientToken"], "Expected key clientToken to exist in table")
	if struct["nonce"] then M.AssertNonce(struct["nonce"]) end
	if struct["clientToken"] then M.AssertClientToken(struct["clientToken"]) end
	if struct["jobId"] then M.AssertThirdPartyJobId(struct["jobId"]) end
	for k,_ in pairs(struct) do
		assert(AcknowledgeThirdPartyJobInput_keys[k], "AcknowledgeThirdPartyJobInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AcknowledgeThirdPartyJobInput
-- <p>Represents the input of an acknowledge third party job action.</p>
-- @param nonce [Nonce] <p>A system-generated random number that AWS CodePipeline uses to ensure that the job is being worked on by only one job worker. Get this number from the response to a <a>GetThirdPartyJobDetails</a> request.</p>
-- @param clientToken [ClientToken] <p>The clientToken portion of the clientId and clientToken pair used to verify that the calling entity is allowed access to the job and its details.</p>
-- @param jobId [ThirdPartyJobId] <p>The unique system-generated ID of the job.</p>
-- Required parameter: jobId
-- Required parameter: nonce
-- Required parameter: clientToken
function M.AcknowledgeThirdPartyJobInput(nonce, clientToken, jobId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AcknowledgeThirdPartyJobInput")
	local t = { 
		["nonce"] = nonce,
		["clientToken"] = clientToken,
		["jobId"] = jobId,
	}
	M.AssertAcknowledgeThirdPartyJobInput(t)
	return t
end

local PutThirdPartyJobFailureResultInput_keys = { "clientToken" = true, "failureDetails" = true, "jobId" = true, nil }

function M.AssertPutThirdPartyJobFailureResultInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutThirdPartyJobFailureResultInput to be of type 'table'")
	assert(struct["jobId"], "Expected key jobId to exist in table")
	assert(struct["clientToken"], "Expected key clientToken to exist in table")
	assert(struct["failureDetails"], "Expected key failureDetails to exist in table")
	if struct["clientToken"] then M.AssertClientToken(struct["clientToken"]) end
	if struct["failureDetails"] then M.AssertFailureDetails(struct["failureDetails"]) end
	if struct["jobId"] then M.AssertThirdPartyJobId(struct["jobId"]) end
	for k,_ in pairs(struct) do
		assert(PutThirdPartyJobFailureResultInput_keys[k], "PutThirdPartyJobFailureResultInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutThirdPartyJobFailureResultInput
-- <p>Represents the input of a third party job failure result action.</p>
-- @param clientToken [ClientToken] <p>The clientToken portion of the clientId and clientToken pair used to verify that the calling entity is allowed access to the job and its details.</p>
-- @param failureDetails [FailureDetails] <p>Represents information about failure details.</p>
-- @param jobId [ThirdPartyJobId] <p>The ID of the job that failed. This is the same ID returned from PollForThirdPartyJobs.</p>
-- Required parameter: jobId
-- Required parameter: clientToken
-- Required parameter: failureDetails
function M.PutThirdPartyJobFailureResultInput(clientToken, failureDetails, jobId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutThirdPartyJobFailureResultInput")
	local t = { 
		["clientToken"] = clientToken,
		["failureDetails"] = failureDetails,
		["jobId"] = jobId,
	}
	M.AssertPutThirdPartyJobFailureResultInput(t)
	return t
end

local AWSSessionCredentials_keys = { "secretAccessKey" = true, "sessionToken" = true, "accessKeyId" = true, nil }

function M.AssertAWSSessionCredentials(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AWSSessionCredentials to be of type 'table'")
	assert(struct["accessKeyId"], "Expected key accessKeyId to exist in table")
	assert(struct["secretAccessKey"], "Expected key secretAccessKey to exist in table")
	assert(struct["sessionToken"], "Expected key sessionToken to exist in table")
	if struct["secretAccessKey"] then M.AssertSecretAccessKey(struct["secretAccessKey"]) end
	if struct["sessionToken"] then M.AssertSessionToken(struct["sessionToken"]) end
	if struct["accessKeyId"] then M.AssertAccessKeyId(struct["accessKeyId"]) end
	for k,_ in pairs(struct) do
		assert(AWSSessionCredentials_keys[k], "AWSSessionCredentials contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AWSSessionCredentials
-- <p>Represents an AWS session credentials object. These credentials are temporary credentials that are issued by AWS Secure Token Service (STS). They can be used to access input and output artifacts in the Amazon S3 bucket used to store artifact for the pipeline in AWS CodePipeline.</p>
-- @param secretAccessKey [SecretAccessKey] <p>The secret access key for the session.</p>
-- @param sessionToken [SessionToken] <p>The token for the session.</p>
-- @param accessKeyId [AccessKeyId] <p>The access key for the session.</p>
-- Required parameter: accessKeyId
-- Required parameter: secretAccessKey
-- Required parameter: sessionToken
function M.AWSSessionCredentials(secretAccessKey, sessionToken, accessKeyId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AWSSessionCredentials")
	local t = { 
		["secretAccessKey"] = secretAccessKey,
		["sessionToken"] = sessionToken,
		["accessKeyId"] = accessKeyId,
	}
	M.AssertAWSSessionCredentials(t)
	return t
end

local S3ArtifactLocation_keys = { "objectKey" = true, "bucketName" = true, nil }

function M.AssertS3ArtifactLocation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected S3ArtifactLocation to be of type 'table'")
	assert(struct["bucketName"], "Expected key bucketName to exist in table")
	assert(struct["objectKey"], "Expected key objectKey to exist in table")
	if struct["objectKey"] then M.AssertS3ObjectKey(struct["objectKey"]) end
	if struct["bucketName"] then M.AssertS3BucketName(struct["bucketName"]) end
	for k,_ in pairs(struct) do
		assert(S3ArtifactLocation_keys[k], "S3ArtifactLocation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type S3ArtifactLocation
-- <p>The location of the Amazon S3 bucket that contains a revision.</p>
-- @param objectKey [S3ObjectKey] <p>The key of the object in the Amazon S3 bucket, which uniquely identifies the object in the bucket.</p>
-- @param bucketName [S3BucketName] <p>The name of the Amazon S3 bucket.</p>
-- Required parameter: bucketName
-- Required parameter: objectKey
function M.S3ArtifactLocation(objectKey, bucketName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating S3ArtifactLocation")
	local t = { 
		["objectKey"] = objectKey,
		["bucketName"] = bucketName,
	}
	M.AssertS3ArtifactLocation(t)
	return t
end

local InvalidJobStateException_keys = { nil }

function M.AssertInvalidJobStateException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidJobStateException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidJobStateException_keys[k], "InvalidJobStateException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidJobStateException
-- <p>The specified job state was specified in an invalid format.</p>
function M.InvalidJobStateException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidJobStateException")
	local t = { 
	}
	M.AssertInvalidJobStateException(t)
	return t
end

local GetPipelineOutput_keys = { "pipeline" = true, nil }

function M.AssertGetPipelineOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetPipelineOutput to be of type 'table'")
	if struct["pipeline"] then M.AssertPipelineDeclaration(struct["pipeline"]) end
	for k,_ in pairs(struct) do
		assert(GetPipelineOutput_keys[k], "GetPipelineOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetPipelineOutput
-- <p>Represents the output of a get pipeline action.</p>
-- @param pipeline [PipelineDeclaration] <p>Represents the structure of actions and stages to be performed in the pipeline. </p>
function M.GetPipelineOutput(pipeline, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetPipelineOutput")
	local t = { 
		["pipeline"] = pipeline,
	}
	M.AssertGetPipelineOutput(t)
	return t
end

local ListPipelineExecutionsInput_keys = { "nextToken" = true, "pipelineName" = true, "maxResults" = true, nil }

function M.AssertListPipelineExecutionsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPipelineExecutionsInput to be of type 'table'")
	assert(struct["pipelineName"], "Expected key pipelineName to exist in table")
	if struct["nextToken"] then M.AssertNextToken(struct["nextToken"]) end
	if struct["pipelineName"] then M.AssertPipelineName(struct["pipelineName"]) end
	if struct["maxResults"] then M.AssertMaxResults(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(ListPipelineExecutionsInput_keys[k], "ListPipelineExecutionsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPipelineExecutionsInput
-- <p>Represents the input of a list pipeline executions action.</p>
-- @param nextToken [NextToken] <p>The token that was returned from the previous list pipeline executions call, which can be used to return the next set of pipeline executions in the list.</p>
-- @param pipelineName [PipelineName] <p>The name of the pipeline for which you want to get execution summary information.</p>
-- @param maxResults [MaxResults] <p>The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned nextToken value. The available pipeline execution history is limited to the most recent 12 months, based on pipeline execution start times. Default value is 100.</p>
-- Required parameter: pipelineName
function M.ListPipelineExecutionsInput(nextToken, pipelineName, maxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListPipelineExecutionsInput")
	local t = { 
		["nextToken"] = nextToken,
		["pipelineName"] = pipelineName,
		["maxResults"] = maxResults,
	}
	M.AssertListPipelineExecutionsInput(t)
	return t
end

local ListActionTypesOutput_keys = { "actionTypes" = true, "nextToken" = true, nil }

function M.AssertListActionTypesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListActionTypesOutput to be of type 'table'")
	assert(struct["actionTypes"], "Expected key actionTypes to exist in table")
	if struct["actionTypes"] then M.AssertActionTypeList(struct["actionTypes"]) end
	if struct["nextToken"] then M.AssertNextToken(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(ListActionTypesOutput_keys[k], "ListActionTypesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListActionTypesOutput
-- <p>Represents the output of a list action types action.</p>
-- @param actionTypes [ActionTypeList] <p>Provides details of the action types.</p>
-- @param nextToken [NextToken] <p>If the amount of returned information is significantly large, an identifier is also returned which can be used in a subsequent list action types call to return the next set of action types in the list.</p>
-- Required parameter: actionTypes
function M.ListActionTypesOutput(actionTypes, nextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListActionTypesOutput")
	local t = { 
		["actionTypes"] = actionTypes,
		["nextToken"] = nextToken,
	}
	M.AssertListActionTypesOutput(t)
	return t
end

local ApprovalResult_keys = { "status" = true, "summary" = true, nil }

function M.AssertApprovalResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ApprovalResult to be of type 'table'")
	assert(struct["summary"], "Expected key summary to exist in table")
	assert(struct["status"], "Expected key status to exist in table")
	if struct["status"] then M.AssertApprovalStatus(struct["status"]) end
	if struct["summary"] then M.AssertApprovalSummary(struct["summary"]) end
	for k,_ in pairs(struct) do
		assert(ApprovalResult_keys[k], "ApprovalResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ApprovalResult
-- <p>Represents information about the result of an approval request.</p>
-- @param status [ApprovalStatus] <p>The response submitted by a reviewer assigned to an approval action request.</p>
-- @param summary [ApprovalSummary] <p>The summary of the current status of the approval request.</p>
-- Required parameter: summary
-- Required parameter: status
function M.ApprovalResult(status, summary, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ApprovalResult")
	local t = { 
		["status"] = status,
		["summary"] = summary,
	}
	M.AssertApprovalResult(t)
	return t
end

local OutputArtifact_keys = { "name" = true, nil }

function M.AssertOutputArtifact(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OutputArtifact to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	if struct["name"] then M.AssertArtifactName(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(OutputArtifact_keys[k], "OutputArtifact contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OutputArtifact
-- <p>Represents information about the output of an action.</p>
-- @param name [ArtifactName] <p>The name of the output of an artifact, such as "My App".</p> <p>The input artifact of an action must exactly match the output artifact declared in a preceding action, but the input artifact does not have to be the next action in strict sequence from the action that provided the output artifact. Actions in parallel can declare different output artifacts, which are in turn consumed by different following actions.</p> <p>Output artifact names must be unique within a pipeline.</p>
-- Required parameter: name
function M.OutputArtifact(name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating OutputArtifact")
	local t = { 
		["name"] = name,
	}
	M.AssertOutputArtifact(t)
	return t
end

local EncryptionKey_keys = { "type" = true, "id" = true, nil }

function M.AssertEncryptionKey(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EncryptionKey to be of type 'table'")
	assert(struct["id"], "Expected key id to exist in table")
	assert(struct["type"], "Expected key type to exist in table")
	if struct["type"] then M.AssertEncryptionKeyType(struct["type"]) end
	if struct["id"] then M.AssertEncryptionKeyId(struct["id"]) end
	for k,_ in pairs(struct) do
		assert(EncryptionKey_keys[k], "EncryptionKey contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EncryptionKey
-- <p>Represents information about the key used to encrypt data in the artifact store, such as an AWS Key Management Service (AWS KMS) key.</p>
-- @param type [EncryptionKeyType] <p>The type of encryption key, such as an AWS Key Management Service (AWS KMS) key. When creating or updating a pipeline, the value must be set to 'KMS'.</p>
-- @param id [EncryptionKeyId] <p>The ID used to identify the key. For an AWS KMS key, this is the key ID or key ARN.</p>
-- Required parameter: id
-- Required parameter: type
function M.EncryptionKey(type, id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EncryptionKey")
	local t = { 
		["type"] = type,
		["id"] = id,
	}
	M.AssertEncryptionKey(t)
	return t
end

local InvalidClientTokenException_keys = { nil }

function M.AssertInvalidClientTokenException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidClientTokenException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidClientTokenException_keys[k], "InvalidClientTokenException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidClientTokenException
-- <p>The client token was specified in an invalid format</p>
function M.InvalidClientTokenException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidClientTokenException")
	local t = { 
	}
	M.AssertInvalidClientTokenException(t)
	return t
end

local ValidationException_keys = { nil }

function M.AssertValidationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ValidationException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(ValidationException_keys[k], "ValidationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ValidationException
-- <p>The validation was specified in an invalid format.</p>
function M.ValidationException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ValidationException")
	local t = { 
	}
	M.AssertValidationException(t)
	return t
end

local GetJobDetailsInput_keys = { "jobId" = true, nil }

function M.AssertGetJobDetailsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetJobDetailsInput to be of type 'table'")
	assert(struct["jobId"], "Expected key jobId to exist in table")
	if struct["jobId"] then M.AssertJobId(struct["jobId"]) end
	for k,_ in pairs(struct) do
		assert(GetJobDetailsInput_keys[k], "GetJobDetailsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetJobDetailsInput
-- <p>Represents the input of a get job details action.</p>
-- @param jobId [JobId] <p>The unique system-generated ID for the job.</p>
-- Required parameter: jobId
function M.GetJobDetailsInput(jobId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetJobDetailsInput")
	local t = { 
		["jobId"] = jobId,
	}
	M.AssertGetJobDetailsInput(t)
	return t
end

local PollForThirdPartyJobsOutput_keys = { "jobs" = true, nil }

function M.AssertPollForThirdPartyJobsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PollForThirdPartyJobsOutput to be of type 'table'")
	if struct["jobs"] then M.AssertThirdPartyJobList(struct["jobs"]) end
	for k,_ in pairs(struct) do
		assert(PollForThirdPartyJobsOutput_keys[k], "PollForThirdPartyJobsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PollForThirdPartyJobsOutput
-- <p>Represents the output of a poll for third party jobs action.</p>
-- @param jobs [ThirdPartyJobList] <p>Information about the jobs to take action on.</p>
function M.PollForThirdPartyJobsOutput(jobs, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PollForThirdPartyJobsOutput")
	local t = { 
		["jobs"] = jobs,
	}
	M.AssertPollForThirdPartyJobsOutput(t)
	return t
end

local RetryStageExecutionInput_keys = { "pipelineExecutionId" = true, "retryMode" = true, "pipelineName" = true, "stageName" = true, nil }

function M.AssertRetryStageExecutionInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RetryStageExecutionInput to be of type 'table'")
	assert(struct["pipelineName"], "Expected key pipelineName to exist in table")
	assert(struct["stageName"], "Expected key stageName to exist in table")
	assert(struct["pipelineExecutionId"], "Expected key pipelineExecutionId to exist in table")
	assert(struct["retryMode"], "Expected key retryMode to exist in table")
	if struct["pipelineExecutionId"] then M.AssertPipelineExecutionId(struct["pipelineExecutionId"]) end
	if struct["retryMode"] then M.AssertStageRetryMode(struct["retryMode"]) end
	if struct["pipelineName"] then M.AssertPipelineName(struct["pipelineName"]) end
	if struct["stageName"] then M.AssertStageName(struct["stageName"]) end
	for k,_ in pairs(struct) do
		assert(RetryStageExecutionInput_keys[k], "RetryStageExecutionInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RetryStageExecutionInput
-- <p>Represents the input of a retry stage execution action.</p>
-- @param pipelineExecutionId [PipelineExecutionId] <p>The ID of the pipeline execution in the failed stage to be retried. Use the <a>GetPipelineState</a> action to retrieve the current pipelineExecutionId of the failed stage</p>
-- @param retryMode [StageRetryMode] <p>The scope of the retry attempt. Currently, the only supported value is FAILED_ACTIONS.</p>
-- @param pipelineName [PipelineName] <p>The name of the pipeline that contains the failed stage.</p>
-- @param stageName [StageName] <p>The name of the failed stage to be retried.</p>
-- Required parameter: pipelineName
-- Required parameter: stageName
-- Required parameter: pipelineExecutionId
-- Required parameter: retryMode
function M.RetryStageExecutionInput(pipelineExecutionId, retryMode, pipelineName, stageName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RetryStageExecutionInput")
	local t = { 
		["pipelineExecutionId"] = pipelineExecutionId,
		["retryMode"] = retryMode,
		["pipelineName"] = pipelineName,
		["stageName"] = stageName,
	}
	M.AssertRetryStageExecutionInput(t)
	return t
end

local GetThirdPartyJobDetailsOutput_keys = { "jobDetails" = true, nil }

function M.AssertGetThirdPartyJobDetailsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetThirdPartyJobDetailsOutput to be of type 'table'")
	if struct["jobDetails"] then M.AssertThirdPartyJobDetails(struct["jobDetails"]) end
	for k,_ in pairs(struct) do
		assert(GetThirdPartyJobDetailsOutput_keys[k], "GetThirdPartyJobDetailsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetThirdPartyJobDetailsOutput
-- <p>Represents the output of a get third party job details action.</p>
-- @param jobDetails [ThirdPartyJobDetails] <p>The details of the job, including any protected values defined for the job.</p>
function M.GetThirdPartyJobDetailsOutput(jobDetails, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetThirdPartyJobDetailsOutput")
	local t = { 
		["jobDetails"] = jobDetails,
	}
	M.AssertGetThirdPartyJobDetailsOutput(t)
	return t
end

local ExecutionDetails_keys = { "percentComplete" = true, "externalExecutionId" = true, "summary" = true, nil }

function M.AssertExecutionDetails(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ExecutionDetails to be of type 'table'")
	if struct["percentComplete"] then M.AssertPercentage(struct["percentComplete"]) end
	if struct["externalExecutionId"] then M.AssertExecutionId(struct["externalExecutionId"]) end
	if struct["summary"] then M.AssertExecutionSummary(struct["summary"]) end
	for k,_ in pairs(struct) do
		assert(ExecutionDetails_keys[k], "ExecutionDetails contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ExecutionDetails
-- <p>The details of the actions taken and results produced on an artifact as it passes through stages in the pipeline.</p>
-- @param percentComplete [Percentage] <p>The percentage of work completed on the action, represented on a scale of zero to one hundred percent.</p>
-- @param externalExecutionId [ExecutionId] <p>The system-generated unique ID of this action used to identify this job worker in any external systems, such as AWS CodeDeploy.</p>
-- @param summary [ExecutionSummary] <p>The summary of the current status of the actions.</p>
function M.ExecutionDetails(percentComplete, externalExecutionId, summary, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ExecutionDetails")
	local t = { 
		["percentComplete"] = percentComplete,
		["externalExecutionId"] = externalExecutionId,
		["summary"] = summary,
	}
	M.AssertExecutionDetails(t)
	return t
end

local ArtifactLocation_keys = { "type" = true, "s3Location" = true, nil }

function M.AssertArtifactLocation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ArtifactLocation to be of type 'table'")
	if struct["type"] then M.AssertArtifactLocationType(struct["type"]) end
	if struct["s3Location"] then M.AssertS3ArtifactLocation(struct["s3Location"]) end
	for k,_ in pairs(struct) do
		assert(ArtifactLocation_keys[k], "ArtifactLocation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ArtifactLocation
-- <p>Represents information about the location of an artifact.</p>
-- @param type [ArtifactLocationType] <p>The type of artifact in the location.</p>
-- @param s3Location [S3ArtifactLocation] <p>The Amazon S3 bucket that contains the artifact.</p>
function M.ArtifactLocation(type, s3Location, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ArtifactLocation")
	local t = { 
		["type"] = type,
		["s3Location"] = s3Location,
	}
	M.AssertArtifactLocation(t)
	return t
end

local ActionDeclaration_keys = { "inputArtifacts" = true, "name" = true, "roleArn" = true, "actionTypeId" = true, "outputArtifacts" = true, "configuration" = true, "runOrder" = true, nil }

function M.AssertActionDeclaration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ActionDeclaration to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["actionTypeId"], "Expected key actionTypeId to exist in table")
	if struct["inputArtifacts"] then M.AssertInputArtifactList(struct["inputArtifacts"]) end
	if struct["name"] then M.AssertActionName(struct["name"]) end
	if struct["roleArn"] then M.AssertRoleArn(struct["roleArn"]) end
	if struct["actionTypeId"] then M.AssertActionTypeId(struct["actionTypeId"]) end
	if struct["outputArtifacts"] then M.AssertOutputArtifactList(struct["outputArtifacts"]) end
	if struct["configuration"] then M.AssertActionConfigurationMap(struct["configuration"]) end
	if struct["runOrder"] then M.AssertActionRunOrder(struct["runOrder"]) end
	for k,_ in pairs(struct) do
		assert(ActionDeclaration_keys[k], "ActionDeclaration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ActionDeclaration
-- <p>Represents information about an action declaration.</p>
-- @param inputArtifacts [InputArtifactList] <p>The name or ID of the artifact consumed by the action, such as a test or build artifact.</p>
-- @param name [ActionName] <p>The action declaration's name.</p>
-- @param roleArn [RoleArn] <p>The ARN of the IAM service role that will perform the declared action. This is assumed through the roleArn for the pipeline.</p>
-- @param actionTypeId [ActionTypeId] <p>The configuration information for the action type.</p>
-- @param outputArtifacts [OutputArtifactList] <p>The name or ID of the result of the action declaration, such as a test or build artifact.</p>
-- @param configuration [ActionConfigurationMap] <p>The action declaration's configuration.</p>
-- @param runOrder [ActionRunOrder] <p>The order in which actions are run.</p>
-- Required parameter: name
-- Required parameter: actionTypeId
function M.ActionDeclaration(inputArtifacts, name, roleArn, actionTypeId, outputArtifacts, configuration, runOrder, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ActionDeclaration")
	local t = { 
		["inputArtifacts"] = inputArtifacts,
		["name"] = name,
		["roleArn"] = roleArn,
		["actionTypeId"] = actionTypeId,
		["outputArtifacts"] = outputArtifacts,
		["configuration"] = configuration,
		["runOrder"] = runOrder,
	}
	M.AssertActionDeclaration(t)
	return t
end

local InvalidBlockerDeclarationException_keys = { nil }

function M.AssertInvalidBlockerDeclarationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidBlockerDeclarationException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidBlockerDeclarationException_keys[k], "InvalidBlockerDeclarationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidBlockerDeclarationException
-- <p>Reserved for future use.</p>
function M.InvalidBlockerDeclarationException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidBlockerDeclarationException")
	local t = { 
	}
	M.AssertInvalidBlockerDeclarationException(t)
	return t
end

local StageContext_keys = { "name" = true, nil }

function M.AssertStageContext(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StageContext to be of type 'table'")
	if struct["name"] then M.AssertStageName(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(StageContext_keys[k], "StageContext contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StageContext
-- <p>Represents information about a stage to a job worker.</p>
-- @param name [StageName] <p>The name of the stage.</p>
function M.StageContext(name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StageContext")
	local t = { 
		["name"] = name,
	}
	M.AssertStageContext(t)
	return t
end

local ActionTypeSettings_keys = { "entityUrlTemplate" = true, "revisionUrlTemplate" = true, "thirdPartyConfigurationUrl" = true, "executionUrlTemplate" = true, nil }

function M.AssertActionTypeSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ActionTypeSettings to be of type 'table'")
	if struct["entityUrlTemplate"] then M.AssertUrlTemplate(struct["entityUrlTemplate"]) end
	if struct["revisionUrlTemplate"] then M.AssertUrlTemplate(struct["revisionUrlTemplate"]) end
	if struct["thirdPartyConfigurationUrl"] then M.AssertUrl(struct["thirdPartyConfigurationUrl"]) end
	if struct["executionUrlTemplate"] then M.AssertUrlTemplate(struct["executionUrlTemplate"]) end
	for k,_ in pairs(struct) do
		assert(ActionTypeSettings_keys[k], "ActionTypeSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ActionTypeSettings
-- <p>Returns information about the settings for an action type.</p>
-- @param entityUrlTemplate [UrlTemplate] <p>The URL returned to the AWS CodePipeline console that provides a deep link to the resources of the external system, such as the configuration page for an AWS CodeDeploy deployment group. This link is provided as part of the action display within the pipeline.</p>
-- @param revisionUrlTemplate [UrlTemplate] <p>The URL returned to the AWS CodePipeline console that contains a link to the page where customers can update or change the configuration of the external action.</p>
-- @param thirdPartyConfigurationUrl [Url] <p>The URL of a sign-up page where users can sign up for an external service and perform initial configuration of the action provided by that service.</p>
-- @param executionUrlTemplate [UrlTemplate] <p>The URL returned to the AWS CodePipeline console that contains a link to the top-level landing page for the external system, such as console page for AWS CodeDeploy. This link is shown on the pipeline view page in the AWS CodePipeline console and provides a link to the execution entity of the external action.</p>
function M.ActionTypeSettings(entityUrlTemplate, revisionUrlTemplate, thirdPartyConfigurationUrl, executionUrlTemplate, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ActionTypeSettings")
	local t = { 
		["entityUrlTemplate"] = entityUrlTemplate,
		["revisionUrlTemplate"] = revisionUrlTemplate,
		["thirdPartyConfigurationUrl"] = thirdPartyConfigurationUrl,
		["executionUrlTemplate"] = executionUrlTemplate,
	}
	M.AssertActionTypeSettings(t)
	return t
end

local GetPipelineExecutionInput_keys = { "pipelineExecutionId" = true, "pipelineName" = true, nil }

function M.AssertGetPipelineExecutionInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetPipelineExecutionInput to be of type 'table'")
	assert(struct["pipelineName"], "Expected key pipelineName to exist in table")
	assert(struct["pipelineExecutionId"], "Expected key pipelineExecutionId to exist in table")
	if struct["pipelineExecutionId"] then M.AssertPipelineExecutionId(struct["pipelineExecutionId"]) end
	if struct["pipelineName"] then M.AssertPipelineName(struct["pipelineName"]) end
	for k,_ in pairs(struct) do
		assert(GetPipelineExecutionInput_keys[k], "GetPipelineExecutionInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetPipelineExecutionInput
-- <p>Represents the input of a get pipeline execution action.</p>
-- @param pipelineExecutionId [PipelineExecutionId] <p>The ID of the pipeline execution about which you want to get execution details.</p>
-- @param pipelineName [PipelineName] <p>The name of the pipeline about which you want to get execution details.</p>
-- Required parameter: pipelineName
-- Required parameter: pipelineExecutionId
function M.GetPipelineExecutionInput(pipelineExecutionId, pipelineName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetPipelineExecutionInput")
	local t = { 
		["pipelineExecutionId"] = pipelineExecutionId,
		["pipelineName"] = pipelineName,
	}
	M.AssertGetPipelineExecutionInput(t)
	return t
end

local NotLatestPipelineExecutionException_keys = { nil }

function M.AssertNotLatestPipelineExecutionException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NotLatestPipelineExecutionException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(NotLatestPipelineExecutionException_keys[k], "NotLatestPipelineExecutionException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NotLatestPipelineExecutionException
-- <p>The stage has failed in a later run of the pipeline and the pipelineExecutionId associated with the request is out of date.</p>
function M.NotLatestPipelineExecutionException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating NotLatestPipelineExecutionException")
	local t = { 
	}
	M.AssertNotLatestPipelineExecutionException(t)
	return t
end

local CreateCustomActionTypeOutput_keys = { "actionType" = true, nil }

function M.AssertCreateCustomActionTypeOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateCustomActionTypeOutput to be of type 'table'")
	assert(struct["actionType"], "Expected key actionType to exist in table")
	if struct["actionType"] then M.AssertActionType(struct["actionType"]) end
	for k,_ in pairs(struct) do
		assert(CreateCustomActionTypeOutput_keys[k], "CreateCustomActionTypeOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateCustomActionTypeOutput
-- <p>Represents the output of a create custom action operation.</p>
-- @param actionType [ActionType] <p>Returns information about the details of an action type.</p>
-- Required parameter: actionType
function M.CreateCustomActionTypeOutput(actionType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateCustomActionTypeOutput")
	local t = { 
		["actionType"] = actionType,
	}
	M.AssertCreateCustomActionTypeOutput(t)
	return t
end

local PutJobSuccessResultInput_keys = { "currentRevision" = true, "executionDetails" = true, "continuationToken" = true, "jobId" = true, nil }

function M.AssertPutJobSuccessResultInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutJobSuccessResultInput to be of type 'table'")
	assert(struct["jobId"], "Expected key jobId to exist in table")
	if struct["currentRevision"] then M.AssertCurrentRevision(struct["currentRevision"]) end
	if struct["executionDetails"] then M.AssertExecutionDetails(struct["executionDetails"]) end
	if struct["continuationToken"] then M.AssertContinuationToken(struct["continuationToken"]) end
	if struct["jobId"] then M.AssertJobId(struct["jobId"]) end
	for k,_ in pairs(struct) do
		assert(PutJobSuccessResultInput_keys[k], "PutJobSuccessResultInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutJobSuccessResultInput
-- <p>Represents the input of a put job success result action.</p>
-- @param currentRevision [CurrentRevision] <p>The ID of the current revision of the artifact successfully worked upon by the job.</p>
-- @param executionDetails [ExecutionDetails] <p>The execution details of the successful job, such as the actions taken by the job worker.</p>
-- @param continuationToken [ContinuationToken] <p>A token generated by a job worker, such as an AWS CodeDeploy deployment ID, that a successful job provides to identify a custom action in progress. Future jobs will use this token in order to identify the running instance of the action. It can be reused to return additional information about the progress of the custom action. When the action is complete, no continuation token should be supplied.</p>
-- @param jobId [JobId] <p>The unique system-generated ID of the job that succeeded. This is the same ID returned from PollForJobs.</p>
-- Required parameter: jobId
function M.PutJobSuccessResultInput(currentRevision, executionDetails, continuationToken, jobId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutJobSuccessResultInput")
	local t = { 
		["currentRevision"] = currentRevision,
		["executionDetails"] = executionDetails,
		["continuationToken"] = continuationToken,
		["jobId"] = jobId,
	}
	M.AssertPutJobSuccessResultInput(t)
	return t
end

local PollForJobsOutput_keys = { "jobs" = true, nil }

function M.AssertPollForJobsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PollForJobsOutput to be of type 'table'")
	if struct["jobs"] then M.AssertJobList(struct["jobs"]) end
	for k,_ in pairs(struct) do
		assert(PollForJobsOutput_keys[k], "PollForJobsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PollForJobsOutput
-- <p>Represents the output of a poll for jobs action.</p>
-- @param jobs [JobList] <p>Information about the jobs to take action on.</p>
function M.PollForJobsOutput(jobs, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PollForJobsOutput")
	local t = { 
		["jobs"] = jobs,
	}
	M.AssertPollForJobsOutput(t)
	return t
end

local PipelineExecutionSummary_keys = { "pipelineExecutionId" = true, "status" = true, "lastUpdateTime" = true, "startTime" = true, nil }

function M.AssertPipelineExecutionSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PipelineExecutionSummary to be of type 'table'")
	if struct["pipelineExecutionId"] then M.AssertPipelineExecutionId(struct["pipelineExecutionId"]) end
	if struct["status"] then M.AssertPipelineExecutionStatus(struct["status"]) end
	if struct["lastUpdateTime"] then M.AssertTimestamp(struct["lastUpdateTime"]) end
	if struct["startTime"] then M.AssertTimestamp(struct["startTime"]) end
	for k,_ in pairs(struct) do
		assert(PipelineExecutionSummary_keys[k], "PipelineExecutionSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PipelineExecutionSummary
-- <p>Summary information about a pipeline execution.</p>
-- @param pipelineExecutionId [PipelineExecutionId] <p>The ID of the pipeline execution.</p>
-- @param status [PipelineExecutionStatus] <p>The status of the pipeline execution.</p> <ul> <li> <p>InProgress: The pipeline execution is currently running.</p> </li> <li> <p>Succeeded: The pipeline execution completed successfully. </p> </li> <li> <p>Superseded: While this pipeline execution was waiting for the next stage to be completed, a newer pipeline execution caught up and continued through the pipeline instead. </p> </li> <li> <p>Failed: The pipeline execution did not complete successfully.</p> </li> </ul>
-- @param lastUpdateTime [Timestamp] <p>The date and time of the last change to the pipeline execution, in timestamp format.</p>
-- @param startTime [Timestamp] <p>The date and time when the pipeline execution began, in timestamp format.</p>
function M.PipelineExecutionSummary(pipelineExecutionId, status, lastUpdateTime, startTime, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PipelineExecutionSummary")
	local t = { 
		["pipelineExecutionId"] = pipelineExecutionId,
		["status"] = status,
		["lastUpdateTime"] = lastUpdateTime,
		["startTime"] = startTime,
	}
	M.AssertPipelineExecutionSummary(t)
	return t
end

local JobData_keys = { "inputArtifacts" = true, "pipelineContext" = true, "encryptionKey" = true, "actionTypeId" = true, "outputArtifacts" = true, "actionConfiguration" = true, "continuationToken" = true, "artifactCredentials" = true, nil }

function M.AssertJobData(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected JobData to be of type 'table'")
	if struct["inputArtifacts"] then M.AssertArtifactList(struct["inputArtifacts"]) end
	if struct["pipelineContext"] then M.AssertPipelineContext(struct["pipelineContext"]) end
	if struct["encryptionKey"] then M.AssertEncryptionKey(struct["encryptionKey"]) end
	if struct["actionTypeId"] then M.AssertActionTypeId(struct["actionTypeId"]) end
	if struct["outputArtifacts"] then M.AssertArtifactList(struct["outputArtifacts"]) end
	if struct["actionConfiguration"] then M.AssertActionConfiguration(struct["actionConfiguration"]) end
	if struct["continuationToken"] then M.AssertContinuationToken(struct["continuationToken"]) end
	if struct["artifactCredentials"] then M.AssertAWSSessionCredentials(struct["artifactCredentials"]) end
	for k,_ in pairs(struct) do
		assert(JobData_keys[k], "JobData contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type JobData
-- <p>Represents additional information about a job required for a job worker to complete the job.</p>
-- @param inputArtifacts [ArtifactList] <p>The artifact supplied to the job.</p>
-- @param pipelineContext [PipelineContext] <p>Represents information about a pipeline to a job worker.</p>
-- @param encryptionKey [EncryptionKey] <p>Represents information about the key used to encrypt data in the artifact store, such as an AWS Key Management Service (AWS KMS) key. </p>
-- @param actionTypeId [ActionTypeId] <p>Represents information about an action type.</p>
-- @param outputArtifacts [ArtifactList] <p>The output of the job.</p>
-- @param actionConfiguration [ActionConfiguration] <p>Represents information about an action configuration.</p>
-- @param continuationToken [ContinuationToken] <p>A system-generated token, such as a AWS CodeDeploy deployment ID, that a job requires in order to continue the job asynchronously.</p>
-- @param artifactCredentials [AWSSessionCredentials] <p>Represents an AWS session credentials object. These credentials are temporary credentials that are issued by AWS Secure Token Service (STS). They can be used to access input and output artifacts in the Amazon S3 bucket used to store artifact for the pipeline in AWS CodePipeline.</p>
function M.JobData(inputArtifacts, pipelineContext, encryptionKey, actionTypeId, outputArtifacts, actionConfiguration, continuationToken, artifactCredentials, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating JobData")
	local t = { 
		["inputArtifacts"] = inputArtifacts,
		["pipelineContext"] = pipelineContext,
		["encryptionKey"] = encryptionKey,
		["actionTypeId"] = actionTypeId,
		["outputArtifacts"] = outputArtifacts,
		["actionConfiguration"] = actionConfiguration,
		["continuationToken"] = continuationToken,
		["artifactCredentials"] = artifactCredentials,
	}
	M.AssertJobData(t)
	return t
end

local EnableStageTransitionInput_keys = { "pipelineName" = true, "stageName" = true, "transitionType" = true, nil }

function M.AssertEnableStageTransitionInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EnableStageTransitionInput to be of type 'table'")
	assert(struct["pipelineName"], "Expected key pipelineName to exist in table")
	assert(struct["stageName"], "Expected key stageName to exist in table")
	assert(struct["transitionType"], "Expected key transitionType to exist in table")
	if struct["pipelineName"] then M.AssertPipelineName(struct["pipelineName"]) end
	if struct["stageName"] then M.AssertStageName(struct["stageName"]) end
	if struct["transitionType"] then M.AssertStageTransitionType(struct["transitionType"]) end
	for k,_ in pairs(struct) do
		assert(EnableStageTransitionInput_keys[k], "EnableStageTransitionInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EnableStageTransitionInput
-- <p>Represents the input of an enable stage transition action.</p>
-- @param pipelineName [PipelineName] <p>The name of the pipeline in which you want to enable the flow of artifacts from one stage to another.</p>
-- @param stageName [StageName] <p>The name of the stage where you want to enable the transition of artifacts, either into the stage (inbound) or from that stage to the next stage (outbound).</p>
-- @param transitionType [StageTransitionType] <p>Specifies whether artifacts will be allowed to enter the stage and be processed by the actions in that stage (inbound) or whether already-processed artifacts will be allowed to transition to the next stage (outbound).</p>
-- Required parameter: pipelineName
-- Required parameter: stageName
-- Required parameter: transitionType
function M.EnableStageTransitionInput(pipelineName, stageName, transitionType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EnableStageTransitionInput")
	local t = { 
		["pipelineName"] = pipelineName,
		["stageName"] = stageName,
		["transitionType"] = transitionType,
	}
	M.AssertEnableStageTransitionInput(t)
	return t
end

local ActionTypeNotFoundException_keys = { nil }

function M.AssertActionTypeNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ActionTypeNotFoundException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(ActionTypeNotFoundException_keys[k], "ActionTypeNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ActionTypeNotFoundException
-- <p>The specified action type cannot be found.</p>
function M.ActionTypeNotFoundException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ActionTypeNotFoundException")
	local t = { 
	}
	M.AssertActionTypeNotFoundException(t)
	return t
end

local JobNotFoundException_keys = { nil }

function M.AssertJobNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected JobNotFoundException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(JobNotFoundException_keys[k], "JobNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type JobNotFoundException
-- <p>The specified job was specified in an invalid format or cannot be found.</p>
function M.JobNotFoundException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating JobNotFoundException")
	local t = { 
	}
	M.AssertJobNotFoundException(t)
	return t
end

local GetPipelineStateInput_keys = { "name" = true, nil }

function M.AssertGetPipelineStateInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetPipelineStateInput to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	if struct["name"] then M.AssertPipelineName(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(GetPipelineStateInput_keys[k], "GetPipelineStateInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetPipelineStateInput
-- <p>Represents the input of a get pipeline state action.</p>
-- @param name [PipelineName] <p>The name of the pipeline about which you want to get information.</p>
-- Required parameter: name
function M.GetPipelineStateInput(name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetPipelineStateInput")
	local t = { 
		["name"] = name,
	}
	M.AssertGetPipelineStateInput(t)
	return t
end

local PipelineContext_keys = { "action" = true, "pipelineName" = true, "stage" = true, nil }

function M.AssertPipelineContext(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PipelineContext to be of type 'table'")
	if struct["action"] then M.AssertActionContext(struct["action"]) end
	if struct["pipelineName"] then M.AssertPipelineName(struct["pipelineName"]) end
	if struct["stage"] then M.AssertStageContext(struct["stage"]) end
	for k,_ in pairs(struct) do
		assert(PipelineContext_keys[k], "PipelineContext contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PipelineContext
-- <p>Represents information about a pipeline to a job worker.</p>
-- @param action [ActionContext] <p/>
-- @param pipelineName [PipelineName] <p>The name of the pipeline. This is a user-specified value. Pipeline names must be unique across all pipeline names under an Amazon Web Services account.</p>
-- @param stage [StageContext] <p>The stage of the pipeline.</p>
function M.PipelineContext(action, pipelineName, stage, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PipelineContext")
	local t = { 
		["action"] = action,
		["pipelineName"] = pipelineName,
		["stage"] = stage,
	}
	M.AssertPipelineContext(t)
	return t
end

local GetJobDetailsOutput_keys = { "jobDetails" = true, nil }

function M.AssertGetJobDetailsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetJobDetailsOutput to be of type 'table'")
	if struct["jobDetails"] then M.AssertJobDetails(struct["jobDetails"]) end
	for k,_ in pairs(struct) do
		assert(GetJobDetailsOutput_keys[k], "GetJobDetailsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetJobDetailsOutput
-- <p>Represents the output of a get job details action.</p>
-- @param jobDetails [JobDetails] <p>The details of the job.</p> <note> <p>If AWSSessionCredentials is used, a long-running job can call GetJobDetails again to obtain new credentials.</p> </note>
function M.GetJobDetailsOutput(jobDetails, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetJobDetailsOutput")
	local t = { 
		["jobDetails"] = jobDetails,
	}
	M.AssertGetJobDetailsOutput(t)
	return t
end

local PutApprovalResultOutput_keys = { "approvedAt" = true, nil }

function M.AssertPutApprovalResultOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutApprovalResultOutput to be of type 'table'")
	if struct["approvedAt"] then M.AssertTimestamp(struct["approvedAt"]) end
	for k,_ in pairs(struct) do
		assert(PutApprovalResultOutput_keys[k], "PutApprovalResultOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutApprovalResultOutput
-- <p>Represents the output of a put approval result action.</p>
-- @param approvedAt [Timestamp] <p>The timestamp showing when the approval or rejection was submitted.</p>
function M.PutApprovalResultOutput(approvedAt, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutApprovalResultOutput")
	local t = { 
		["approvedAt"] = approvedAt,
	}
	M.AssertPutApprovalResultOutput(t)
	return t
end

local StageNotRetryableException_keys = { nil }

function M.AssertStageNotRetryableException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StageNotRetryableException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(StageNotRetryableException_keys[k], "StageNotRetryableException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StageNotRetryableException
-- <p>The specified stage can't be retried because the pipeline structure or stage state changed after the stage was not completed; the stage contains no failed actions; one or more actions are still in progress; or another retry attempt is already in progress. </p>
function M.StageNotRetryableException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating StageNotRetryableException")
	local t = { 
	}
	M.AssertStageNotRetryableException(t)
	return t
end

local CurrentRevision_keys = { "changeIdentifier" = true, "created" = true, "revisionSummary" = true, "revision" = true, nil }

function M.AssertCurrentRevision(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CurrentRevision to be of type 'table'")
	assert(struct["revision"], "Expected key revision to exist in table")
	assert(struct["changeIdentifier"], "Expected key changeIdentifier to exist in table")
	if struct["changeIdentifier"] then M.AssertRevisionChangeIdentifier(struct["changeIdentifier"]) end
	if struct["created"] then M.AssertTime(struct["created"]) end
	if struct["revisionSummary"] then M.AssertRevisionSummary(struct["revisionSummary"]) end
	if struct["revision"] then M.AssertRevision(struct["revision"]) end
	for k,_ in pairs(struct) do
		assert(CurrentRevision_keys[k], "CurrentRevision contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CurrentRevision
-- <p>Represents information about a current revision.</p>
-- @param changeIdentifier [RevisionChangeIdentifier] <p>The change identifier for the current revision.</p>
-- @param created [Time] <p>The date and time when the most recent revision of the artifact was created, in timestamp format.</p>
-- @param revisionSummary [RevisionSummary] <p>The summary of the most recent revision of the artifact.</p>
-- @param revision [Revision] <p>The revision ID of the current version of an artifact.</p>
-- Required parameter: revision
-- Required parameter: changeIdentifier
function M.CurrentRevision(changeIdentifier, created, revisionSummary, revision, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CurrentRevision")
	local t = { 
		["changeIdentifier"] = changeIdentifier,
		["created"] = created,
		["revisionSummary"] = revisionSummary,
		["revision"] = revision,
	}
	M.AssertCurrentRevision(t)
	return t
end

local InvalidApprovalTokenException_keys = { nil }

function M.AssertInvalidApprovalTokenException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidApprovalTokenException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidApprovalTokenException_keys[k], "InvalidApprovalTokenException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidApprovalTokenException
-- <p>The approval request already received a response or has expired.</p>
function M.InvalidApprovalTokenException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidApprovalTokenException")
	local t = { 
	}
	M.AssertInvalidApprovalTokenException(t)
	return t
end

local GetThirdPartyJobDetailsInput_keys = { "clientToken" = true, "jobId" = true, nil }

function M.AssertGetThirdPartyJobDetailsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetThirdPartyJobDetailsInput to be of type 'table'")
	assert(struct["jobId"], "Expected key jobId to exist in table")
	assert(struct["clientToken"], "Expected key clientToken to exist in table")
	if struct["clientToken"] then M.AssertClientToken(struct["clientToken"]) end
	if struct["jobId"] then M.AssertThirdPartyJobId(struct["jobId"]) end
	for k,_ in pairs(struct) do
		assert(GetThirdPartyJobDetailsInput_keys[k], "GetThirdPartyJobDetailsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetThirdPartyJobDetailsInput
-- <p>Represents the input of a get third party job details action.</p>
-- @param clientToken [ClientToken] <p>The clientToken portion of the clientId and clientToken pair used to verify that the calling entity is allowed access to the job and its details.</p>
-- @param jobId [ThirdPartyJobId] <p>The unique system-generated ID used for identifying the job.</p>
-- Required parameter: jobId
-- Required parameter: clientToken
function M.GetThirdPartyJobDetailsInput(clientToken, jobId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetThirdPartyJobDetailsInput")
	local t = { 
		["clientToken"] = clientToken,
		["jobId"] = jobId,
	}
	M.AssertGetThirdPartyJobDetailsInput(t)
	return t
end

local StageExecution_keys = { "pipelineExecutionId" = true, "status" = true, nil }

function M.AssertStageExecution(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StageExecution to be of type 'table'")
	assert(struct["pipelineExecutionId"], "Expected key pipelineExecutionId to exist in table")
	assert(struct["status"], "Expected key status to exist in table")
	if struct["pipelineExecutionId"] then M.AssertPipelineExecutionId(struct["pipelineExecutionId"]) end
	if struct["status"] then M.AssertStageExecutionStatus(struct["status"]) end
	for k,_ in pairs(struct) do
		assert(StageExecution_keys[k], "StageExecution contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StageExecution
-- <p>Represents information about the run of a stage.</p>
-- @param pipelineExecutionId [PipelineExecutionId] <p>The ID of the pipeline execution associated with the stage.</p>
-- @param status [StageExecutionStatus] <p>The status of the stage, or for a completed stage, the last status of the stage.</p>
-- Required parameter: pipelineExecutionId
-- Required parameter: status
function M.StageExecution(pipelineExecutionId, status, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StageExecution")
	local t = { 
		["pipelineExecutionId"] = pipelineExecutionId,
		["status"] = status,
	}
	M.AssertStageExecution(t)
	return t
end

local Artifact_keys = { "location" = true, "name" = true, "revision" = true, nil }

function M.AssertArtifact(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Artifact to be of type 'table'")
	if struct["location"] then M.AssertArtifactLocation(struct["location"]) end
	if struct["name"] then M.AssertArtifactName(struct["name"]) end
	if struct["revision"] then M.AssertRevision(struct["revision"]) end
	for k,_ in pairs(struct) do
		assert(Artifact_keys[k], "Artifact contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Artifact
-- <p>Represents information about an artifact that will be worked upon by actions in the pipeline.</p>
-- @param location [ArtifactLocation] <p>The location of an artifact.</p>
-- @param name [ArtifactName] <p>The artifact's name.</p>
-- @param revision [Revision] <p>The artifact's revision ID. Depending on the type of object, this could be a commit ID (GitHub) or a revision ID (Amazon S3).</p>
function M.Artifact(location, name, revision, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Artifact")
	local t = { 
		["location"] = location,
		["name"] = name,
		["revision"] = revision,
	}
	M.AssertArtifact(t)
	return t
end

local PipelineVersionNotFoundException_keys = { nil }

function M.AssertPipelineVersionNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PipelineVersionNotFoundException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(PipelineVersionNotFoundException_keys[k], "PipelineVersionNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PipelineVersionNotFoundException
-- <p>The specified pipeline version was specified in an invalid format or cannot be found.</p>
function M.PipelineVersionNotFoundException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating PipelineVersionNotFoundException")
	local t = { 
	}
	M.AssertPipelineVersionNotFoundException(t)
	return t
end

local InvalidJobException_keys = { nil }

function M.AssertInvalidJobException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidJobException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidJobException_keys[k], "InvalidJobException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidJobException
-- <p>The specified job was specified in an invalid format or cannot be found.</p>
function M.InvalidJobException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidJobException")
	local t = { 
	}
	M.AssertInvalidJobException(t)
	return t
end

local ThirdPartyJob_keys = { "clientId" = true, "jobId" = true, nil }

function M.AssertThirdPartyJob(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ThirdPartyJob to be of type 'table'")
	if struct["clientId"] then M.AssertClientId(struct["clientId"]) end
	if struct["jobId"] then M.AssertJobId(struct["jobId"]) end
	for k,_ in pairs(struct) do
		assert(ThirdPartyJob_keys[k], "ThirdPartyJob contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ThirdPartyJob
-- <p>A response to a PollForThirdPartyJobs request returned by AWS CodePipeline when there is a job to be worked upon by a partner action.</p>
-- @param clientId [ClientId] <p>The clientToken portion of the clientId and clientToken pair used to verify that the calling entity is allowed access to the job and its details.</p>
-- @param jobId [JobId] <p>The identifier used to identify the job in AWS CodePipeline.</p>
function M.ThirdPartyJob(clientId, jobId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ThirdPartyJob")
	local t = { 
		["clientId"] = clientId,
		["jobId"] = jobId,
	}
	M.AssertThirdPartyJob(t)
	return t
end

local StageDeclaration_keys = { "blockers" = true, "name" = true, "actions" = true, nil }

function M.AssertStageDeclaration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StageDeclaration to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["actions"], "Expected key actions to exist in table")
	if struct["blockers"] then M.AssertStageBlockerDeclarationList(struct["blockers"]) end
	if struct["name"] then M.AssertStageName(struct["name"]) end
	if struct["actions"] then M.AssertStageActionDeclarationList(struct["actions"]) end
	for k,_ in pairs(struct) do
		assert(StageDeclaration_keys[k], "StageDeclaration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StageDeclaration
-- <p>Represents information about a stage and its definition.</p>
-- @param blockers [StageBlockerDeclarationList] <p>Reserved for future use.</p>
-- @param name [StageName] <p>The name of the stage.</p>
-- @param actions [StageActionDeclarationList] <p>The actions included in a stage.</p>
-- Required parameter: name
-- Required parameter: actions
function M.StageDeclaration(blockers, name, actions, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StageDeclaration")
	local t = { 
		["blockers"] = blockers,
		["name"] = name,
		["actions"] = actions,
	}
	M.AssertStageDeclaration(t)
	return t
end

local BlockerDeclaration_keys = { "type" = true, "name" = true, nil }

function M.AssertBlockerDeclaration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BlockerDeclaration to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["type"], "Expected key type to exist in table")
	if struct["type"] then M.AssertBlockerType(struct["type"]) end
	if struct["name"] then M.AssertBlockerName(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(BlockerDeclaration_keys[k], "BlockerDeclaration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BlockerDeclaration
-- <p>Reserved for future use.</p>
-- @param type [BlockerType] <p>Reserved for future use.</p>
-- @param name [BlockerName] <p>Reserved for future use.</p>
-- Required parameter: name
-- Required parameter: type
function M.BlockerDeclaration(type, name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BlockerDeclaration")
	local t = { 
		["type"] = type,
		["name"] = name,
	}
	M.AssertBlockerDeclaration(t)
	return t
end

local PipelineSummary_keys = { "updated" = true, "version" = true, "name" = true, "created" = true, nil }

function M.AssertPipelineSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PipelineSummary to be of type 'table'")
	if struct["updated"] then M.AssertTimestamp(struct["updated"]) end
	if struct["version"] then M.AssertPipelineVersion(struct["version"]) end
	if struct["name"] then M.AssertPipelineName(struct["name"]) end
	if struct["created"] then M.AssertTimestamp(struct["created"]) end
	for k,_ in pairs(struct) do
		assert(PipelineSummary_keys[k], "PipelineSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PipelineSummary
-- <p>Returns a summary of a pipeline.</p>
-- @param updated [Timestamp] <p>The date and time of the last update to the pipeline, in timestamp format.</p>
-- @param version [PipelineVersion] <p>The version number of the pipeline.</p>
-- @param name [PipelineName] <p>The name of the pipeline.</p>
-- @param created [Timestamp] <p>The date and time the pipeline was created, in timestamp format.</p>
function M.PipelineSummary(updated, version, name, created, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PipelineSummary")
	local t = { 
		["updated"] = updated,
		["version"] = version,
		["name"] = name,
		["created"] = created,
	}
	M.AssertPipelineSummary(t)
	return t
end

local RetryStageExecutionOutput_keys = { "pipelineExecutionId" = true, nil }

function M.AssertRetryStageExecutionOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RetryStageExecutionOutput to be of type 'table'")
	if struct["pipelineExecutionId"] then M.AssertPipelineExecutionId(struct["pipelineExecutionId"]) end
	for k,_ in pairs(struct) do
		assert(RetryStageExecutionOutput_keys[k], "RetryStageExecutionOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RetryStageExecutionOutput
-- <p>Represents the output of a retry stage execution action.</p>
-- @param pipelineExecutionId [PipelineExecutionId] <p>The ID of the current workflow execution in the failed stage.</p>
function M.RetryStageExecutionOutput(pipelineExecutionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RetryStageExecutionOutput")
	local t = { 
		["pipelineExecutionId"] = pipelineExecutionId,
	}
	M.AssertRetryStageExecutionOutput(t)
	return t
end

local InvalidNonceException_keys = { nil }

function M.AssertInvalidNonceException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidNonceException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidNonceException_keys[k], "InvalidNonceException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidNonceException
-- <p>The specified nonce was specified in an invalid format.</p>
function M.InvalidNonceException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidNonceException")
	local t = { 
	}
	M.AssertInvalidNonceException(t)
	return t
end

local PipelineNotFoundException_keys = { nil }

function M.AssertPipelineNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PipelineNotFoundException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(PipelineNotFoundException_keys[k], "PipelineNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PipelineNotFoundException
-- <p>The specified pipeline was specified in an invalid format or cannot be found.</p>
function M.PipelineNotFoundException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating PipelineNotFoundException")
	local t = { 
	}
	M.AssertPipelineNotFoundException(t)
	return t
end

local PipelineExecution_keys = { "pipelineExecutionId" = true, "pipelineVersion" = true, "pipelineName" = true, "status" = true, "artifactRevisions" = true, nil }

function M.AssertPipelineExecution(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PipelineExecution to be of type 'table'")
	if struct["pipelineExecutionId"] then M.AssertPipelineExecutionId(struct["pipelineExecutionId"]) end
	if struct["pipelineVersion"] then M.AssertPipelineVersion(struct["pipelineVersion"]) end
	if struct["pipelineName"] then M.AssertPipelineName(struct["pipelineName"]) end
	if struct["status"] then M.AssertPipelineExecutionStatus(struct["status"]) end
	if struct["artifactRevisions"] then M.AssertArtifactRevisionList(struct["artifactRevisions"]) end
	for k,_ in pairs(struct) do
		assert(PipelineExecution_keys[k], "PipelineExecution contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PipelineExecution
-- <p>Represents information about an execution of a pipeline.</p>
-- @param pipelineExecutionId [PipelineExecutionId] <p>The ID of the pipeline execution.</p>
-- @param pipelineVersion [PipelineVersion] <p>The version number of the pipeline that was executed.</p>
-- @param pipelineName [PipelineName] <p>The name of the pipeline that was executed.</p>
-- @param status [PipelineExecutionStatus] <p>The status of the pipeline execution.</p> <ul> <li> <p>InProgress: The pipeline execution is currently running.</p> </li> <li> <p>Succeeded: The pipeline execution completed successfully. </p> </li> <li> <p>Superseded: While this pipeline execution was waiting for the next stage to be completed, a newer pipeline execution caught up and continued through the pipeline instead. </p> </li> <li> <p>Failed: The pipeline execution did not complete successfully.</p> </li> </ul>
-- @param artifactRevisions [ArtifactRevisionList] <p>A list of ArtifactRevision objects included in a pipeline execution.</p>
function M.PipelineExecution(pipelineExecutionId, pipelineVersion, pipelineName, status, artifactRevisions, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PipelineExecution")
	local t = { 
		["pipelineExecutionId"] = pipelineExecutionId,
		["pipelineVersion"] = pipelineVersion,
		["pipelineName"] = pipelineName,
		["status"] = status,
		["artifactRevisions"] = artifactRevisions,
	}
	M.AssertPipelineExecution(t)
	return t
end

local ThirdPartyJobData_keys = { "inputArtifacts" = true, "pipelineContext" = true, "encryptionKey" = true, "actionTypeId" = true, "outputArtifacts" = true, "actionConfiguration" = true, "continuationToken" = true, "artifactCredentials" = true, nil }

function M.AssertThirdPartyJobData(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ThirdPartyJobData to be of type 'table'")
	if struct["inputArtifacts"] then M.AssertArtifactList(struct["inputArtifacts"]) end
	if struct["pipelineContext"] then M.AssertPipelineContext(struct["pipelineContext"]) end
	if struct["encryptionKey"] then M.AssertEncryptionKey(struct["encryptionKey"]) end
	if struct["actionTypeId"] then M.AssertActionTypeId(struct["actionTypeId"]) end
	if struct["outputArtifacts"] then M.AssertArtifactList(struct["outputArtifacts"]) end
	if struct["actionConfiguration"] then M.AssertActionConfiguration(struct["actionConfiguration"]) end
	if struct["continuationToken"] then M.AssertContinuationToken(struct["continuationToken"]) end
	if struct["artifactCredentials"] then M.AssertAWSSessionCredentials(struct["artifactCredentials"]) end
	for k,_ in pairs(struct) do
		assert(ThirdPartyJobData_keys[k], "ThirdPartyJobData contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ThirdPartyJobData
-- <p>Represents information about the job data for a partner action.</p>
-- @param inputArtifacts [ArtifactList] <p>The name of the artifact that will be worked upon by the action, if any. This name might be system-generated, such as "MyApp", or might be defined by the user when the action is created. The input artifact name must match the name of an output artifact generated by an action in an earlier action or stage of the pipeline.</p>
-- @param pipelineContext [PipelineContext] <p>Represents information about a pipeline to a job worker.</p>
-- @param encryptionKey [EncryptionKey] <p>The encryption key used to encrypt and decrypt data in the artifact store for the pipeline, such as an AWS Key Management Service (AWS KMS) key. This is optional and might not be present.</p>
-- @param actionTypeId [ActionTypeId] <p>Represents information about an action type.</p>
-- @param outputArtifacts [ArtifactList] <p>The name of the artifact that will be the result of the action, if any. This name might be system-generated, such as "MyBuiltApp", or might be defined by the user when the action is created.</p>
-- @param actionConfiguration [ActionConfiguration] <p>Represents information about an action configuration.</p>
-- @param continuationToken [ContinuationToken] <p>A system-generated token, such as a AWS CodeDeploy deployment ID, that a job requires in order to continue the job asynchronously.</p>
-- @param artifactCredentials [AWSSessionCredentials] <p>Represents an AWS session credentials object. These credentials are temporary credentials that are issued by AWS Secure Token Service (STS). They can be used to access input and output artifacts in the Amazon S3 bucket used to store artifact for the pipeline in AWS CodePipeline. </p>
function M.ThirdPartyJobData(inputArtifacts, pipelineContext, encryptionKey, actionTypeId, outputArtifacts, actionConfiguration, continuationToken, artifactCredentials, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ThirdPartyJobData")
	local t = { 
		["inputArtifacts"] = inputArtifacts,
		["pipelineContext"] = pipelineContext,
		["encryptionKey"] = encryptionKey,
		["actionTypeId"] = actionTypeId,
		["outputArtifacts"] = outputArtifacts,
		["actionConfiguration"] = actionConfiguration,
		["continuationToken"] = continuationToken,
		["artifactCredentials"] = artifactCredentials,
	}
	M.AssertThirdPartyJobData(t)
	return t
end

local PollForThirdPartyJobsInput_keys = { "actionTypeId" = true, "maxBatchSize" = true, nil }

function M.AssertPollForThirdPartyJobsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PollForThirdPartyJobsInput to be of type 'table'")
	assert(struct["actionTypeId"], "Expected key actionTypeId to exist in table")
	if struct["actionTypeId"] then M.AssertActionTypeId(struct["actionTypeId"]) end
	if struct["maxBatchSize"] then M.AssertMaxBatchSize(struct["maxBatchSize"]) end
	for k,_ in pairs(struct) do
		assert(PollForThirdPartyJobsInput_keys[k], "PollForThirdPartyJobsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PollForThirdPartyJobsInput
-- <p>Represents the input of a poll for third party jobs action.</p>
-- @param actionTypeId [ActionTypeId] <p>Represents information about an action type.</p>
-- @param maxBatchSize [MaxBatchSize] <p>The maximum number of jobs to return in a poll for jobs call.</p>
-- Required parameter: actionTypeId
function M.PollForThirdPartyJobsInput(actionTypeId, maxBatchSize, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PollForThirdPartyJobsInput")
	local t = { 
		["actionTypeId"] = actionTypeId,
		["maxBatchSize"] = maxBatchSize,
	}
	M.AssertPollForThirdPartyJobsInput(t)
	return t
end

local PipelineExecutionNotFoundException_keys = { nil }

function M.AssertPipelineExecutionNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PipelineExecutionNotFoundException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(PipelineExecutionNotFoundException_keys[k], "PipelineExecutionNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PipelineExecutionNotFoundException
-- <p>The pipeline execution was specified in an invalid format or cannot be found, or an execution ID does not belong to the specified pipeline. </p>
function M.PipelineExecutionNotFoundException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating PipelineExecutionNotFoundException")
	local t = { 
	}
	M.AssertPipelineExecutionNotFoundException(t)
	return t
end

local ListActionTypesInput_keys = { "nextToken" = true, "actionOwnerFilter" = true, nil }

function M.AssertListActionTypesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListActionTypesInput to be of type 'table'")
	if struct["nextToken"] then M.AssertNextToken(struct["nextToken"]) end
	if struct["actionOwnerFilter"] then M.AssertActionOwner(struct["actionOwnerFilter"]) end
	for k,_ in pairs(struct) do
		assert(ListActionTypesInput_keys[k], "ListActionTypesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListActionTypesInput
-- <p>Represents the input of a list action types action.</p>
-- @param nextToken [NextToken] <p>An identifier that was returned from the previous list action types call, which can be used to return the next set of action types in the list.</p>
-- @param actionOwnerFilter [ActionOwner] <p>Filters the list of action types to those created by a specified entity.</p>
function M.ListActionTypesInput(nextToken, actionOwnerFilter, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListActionTypesInput")
	local t = { 
		["nextToken"] = nextToken,
		["actionOwnerFilter"] = actionOwnerFilter,
	}
	M.AssertListActionTypesInput(t)
	return t
end

function M.AssertActionName(str)
	assert(str)
	assert(type(str) == "string", "Expected ActionName to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[A-Za-z0-9.@%-_]+"), "Expected string to match pattern '[A-Za-z0-9.@%-_]+'")
end

--  
function M.ActionName(str)
	M.AssertActionName(str)
	return str
end

function M.AssertSessionToken(str)
	assert(str)
	assert(type(str) == "string", "Expected SessionToken to be of type 'string'")
end

--  
function M.SessionToken(str)
	M.AssertSessionToken(str)
	return str
end

function M.AssertRevisionChangeIdentifier(str)
	assert(str)
	assert(type(str) == "string", "Expected RevisionChangeIdentifier to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.RevisionChangeIdentifier(str)
	M.AssertRevisionChangeIdentifier(str)
	return str
end

function M.AssertExecutionSummary(str)
	assert(str)
	assert(type(str) == "string", "Expected ExecutionSummary to be of type 'string'")
end

--  
function M.ExecutionSummary(str)
	M.AssertExecutionSummary(str)
	return str
end

function M.AssertStageTransitionType(str)
	assert(str)
	assert(type(str) == "string", "Expected StageTransitionType to be of type 'string'")
end

--  
function M.StageTransitionType(str)
	M.AssertStageTransitionType(str)
	return str
end

function M.AssertJobId(str)
	assert(str)
	assert(type(str) == "string", "Expected JobId to be of type 'string'")
	assert(str:match("[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}"), "Expected string to match pattern '[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}'")
end

--  
function M.JobId(str)
	M.AssertJobId(str)
	return str
end

function M.AssertPipelineExecutionId(str)
	assert(str)
	assert(type(str) == "string", "Expected PipelineExecutionId to be of type 'string'")
	assert(str:match("[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}"), "Expected string to match pattern '[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}'")
end

--  
function M.PipelineExecutionId(str)
	M.AssertPipelineExecutionId(str)
	return str
end

function M.AssertNonce(str)
	assert(str)
	assert(type(str) == "string", "Expected Nonce to be of type 'string'")
end

--  
function M.Nonce(str)
	M.AssertNonce(str)
	return str
end

function M.AssertStageName(str)
	assert(str)
	assert(type(str) == "string", "Expected StageName to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[A-Za-z0-9.@%-_]+"), "Expected string to match pattern '[A-Za-z0-9.@%-_]+'")
end

--  
function M.StageName(str)
	M.AssertStageName(str)
	return str
end

function M.AssertActionExecutionStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected ActionExecutionStatus to be of type 'string'")
end

--  
function M.ActionExecutionStatus(str)
	M.AssertActionExecutionStatus(str)
	return str
end

function M.AssertRevisionSummary(str)
	assert(str)
	assert(type(str) == "string", "Expected RevisionSummary to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.RevisionSummary(str)
	M.AssertRevisionSummary(str)
	return str
end

function M.AssertLastUpdatedBy(str)
	assert(str)
	assert(type(str) == "string", "Expected LastUpdatedBy to be of type 'string'")
end

--  
function M.LastUpdatedBy(str)
	M.AssertLastUpdatedBy(str)
	return str
end

function M.AssertArtifactStoreType(str)
	assert(str)
	assert(type(str) == "string", "Expected ArtifactStoreType to be of type 'string'")
end

--  
function M.ArtifactStoreType(str)
	M.AssertArtifactStoreType(str)
	return str
end

function M.AssertAccountId(str)
	assert(str)
	assert(type(str) == "string", "Expected AccountId to be of type 'string'")
	assert(str:match("[0-9]{12}"), "Expected string to match pattern '[0-9]{12}'")
end

--  
function M.AccountId(str)
	M.AssertAccountId(str)
	return str
end

function M.AssertDisabledReason(str)
	assert(str)
	assert(type(str) == "string", "Expected DisabledReason to be of type 'string'")
	assert(#str <= 300, "Expected string to be max 300 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[a-zA-Z0-9!@ %(%)%.%*%?%-]+"), "Expected string to match pattern '[a-zA-Z0-9!@ %(%)%.%*%?%-]+'")
end

--  
function M.DisabledReason(str)
	M.AssertDisabledReason(str)
	return str
end

function M.AssertLastChangedBy(str)
	assert(str)
	assert(type(str) == "string", "Expected LastChangedBy to be of type 'string'")
end

--  
function M.LastChangedBy(str)
	M.AssertLastChangedBy(str)
	return str
end

function M.AssertActionConfigurationPropertyType(str)
	assert(str)
	assert(type(str) == "string", "Expected ActionConfigurationPropertyType to be of type 'string'")
end

--  
function M.ActionConfigurationPropertyType(str)
	M.AssertActionConfigurationPropertyType(str)
	return str
end

function M.AssertBlockerName(str)
	assert(str)
	assert(type(str) == "string", "Expected BlockerName to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.BlockerName(str)
	M.AssertBlockerName(str)
	return str
end

function M.AssertUrlTemplate(str)
	assert(str)
	assert(type(str) == "string", "Expected UrlTemplate to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.UrlTemplate(str)
	M.AssertUrlTemplate(str)
	return str
end

function M.AssertActionConfigurationKey(str)
	assert(str)
	assert(type(str) == "string", "Expected ActionConfigurationKey to be of type 'string'")
	assert(#str <= 50, "Expected string to be max 50 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ActionConfigurationKey(str)
	M.AssertActionConfigurationKey(str)
	return str
end

function M.AssertActionCategory(str)
	assert(str)
	assert(type(str) == "string", "Expected ActionCategory to be of type 'string'")
end

--  
function M.ActionCategory(str)
	M.AssertActionCategory(str)
	return str
end

function M.AssertThirdPartyJobId(str)
	assert(str)
	assert(type(str) == "string", "Expected ThirdPartyJobId to be of type 'string'")
	assert(#str <= 512, "Expected string to be max 512 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ThirdPartyJobId(str)
	M.AssertThirdPartyJobId(str)
	return str
end

function M.AssertFailureType(str)
	assert(str)
	assert(type(str) == "string", "Expected FailureType to be of type 'string'")
end

--  
function M.FailureType(str)
	M.AssertFailureType(str)
	return str
end

function M.AssertActionProvider(str)
	assert(str)
	assert(type(str) == "string", "Expected ActionProvider to be of type 'string'")
	assert(#str <= 25, "Expected string to be max 25 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[0-9A-Za-z_-]+"), "Expected string to match pattern '[0-9A-Za-z_-]+'")
end

--  
function M.ActionProvider(str)
	M.AssertActionProvider(str)
	return str
end

function M.AssertNextToken(str)
	assert(str)
	assert(type(str) == "string", "Expected NextToken to be of type 'string'")
end

--  
function M.NextToken(str)
	M.AssertNextToken(str)
	return str
end

function M.AssertArtifactName(str)
	assert(str)
	assert(type(str) == "string", "Expected ArtifactName to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[a-zA-Z0-9_%-]+"), "Expected string to match pattern '[a-zA-Z0-9_%-]+'")
end

--  
function M.ArtifactName(str)
	M.AssertArtifactName(str)
	return str
end

function M.AssertStageRetryMode(str)
	assert(str)
	assert(type(str) == "string", "Expected StageRetryMode to be of type 'string'")
end

--  
function M.StageRetryMode(str)
	M.AssertStageRetryMode(str)
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

function M.AssertActionConfigurationValue(str)
	assert(str)
	assert(type(str) == "string", "Expected ActionConfigurationValue to be of type 'string'")
	assert(#str <= 1000, "Expected string to be max 1000 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ActionConfigurationValue(str)
	M.AssertActionConfigurationValue(str)
	return str
end

function M.AssertAccessKeyId(str)
	assert(str)
	assert(type(str) == "string", "Expected AccessKeyId to be of type 'string'")
end

--  
function M.AccessKeyId(str)
	M.AssertAccessKeyId(str)
	return str
end

function M.AssertApprovalSummary(str)
	assert(str)
	assert(type(str) == "string", "Expected ApprovalSummary to be of type 'string'")
	assert(#str <= 512, "Expected string to be max 512 characters")
end

--  
function M.ApprovalSummary(str)
	M.AssertApprovalSummary(str)
	return str
end

function M.AssertExecutionId(str)
	assert(str)
	assert(type(str) == "string", "Expected ExecutionId to be of type 'string'")
	assert(#str <= 1500, "Expected string to be max 1500 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ExecutionId(str)
	M.AssertExecutionId(str)
	return str
end

function M.AssertS3BucketName(str)
	assert(str)
	assert(type(str) == "string", "Expected S3BucketName to be of type 'string'")
end

--  
function M.S3BucketName(str)
	M.AssertS3BucketName(str)
	return str
end

function M.AssertEncryptionKeyId(str)
	assert(str)
	assert(type(str) == "string", "Expected EncryptionKeyId to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.EncryptionKeyId(str)
	M.AssertEncryptionKeyId(str)
	return str
end

function M.AssertActionConfigurationQueryableValue(str)
	assert(str)
	assert(type(str) == "string", "Expected ActionConfigurationQueryableValue to be of type 'string'")
	assert(#str <= 50, "Expected string to be max 50 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[a-zA-Z0-9_-]+"), "Expected string to match pattern '[a-zA-Z0-9_-]+'")
end

--  
function M.ActionConfigurationQueryableValue(str)
	M.AssertActionConfigurationQueryableValue(str)
	return str
end

function M.AssertApprovalToken(str)
	assert(str)
	assert(type(str) == "string", "Expected ApprovalToken to be of type 'string'")
	assert(str:match("[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}"), "Expected string to match pattern '[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}'")
end

--  
function M.ApprovalToken(str)
	M.AssertApprovalToken(str)
	return str
end

function M.AssertActionOwner(str)
	assert(str)
	assert(type(str) == "string", "Expected ActionOwner to be of type 'string'")
end

--  
function M.ActionOwner(str)
	M.AssertActionOwner(str)
	return str
end

function M.AssertMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected Message to be of type 'string'")
end

--  
function M.Message(str)
	M.AssertMessage(str)
	return str
end

function M.AssertClientToken(str)
	assert(str)
	assert(type(str) == "string", "Expected ClientToken to be of type 'string'")
end

--  
function M.ClientToken(str)
	M.AssertClientToken(str)
	return str
end

function M.AssertRoleArn(str)
	assert(str)
	assert(type(str) == "string", "Expected RoleArn to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
	assert(str:match("arn:aws(-[%w]+)*:iam::[0-9]{12}:role/.*"), "Expected string to match pattern 'arn:aws(-[%w]+)*:iam::[0-9]{12}:role/.*'")
end

--  
function M.RoleArn(str)
	M.AssertRoleArn(str)
	return str
end

function M.AssertApprovalStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected ApprovalStatus to be of type 'string'")
end

--  
function M.ApprovalStatus(str)
	M.AssertApprovalStatus(str)
	return str
end

function M.AssertSecretAccessKey(str)
	assert(str)
	assert(type(str) == "string", "Expected SecretAccessKey to be of type 'string'")
end

--  
function M.SecretAccessKey(str)
	M.AssertSecretAccessKey(str)
	return str
end

function M.AssertArtifactLocationType(str)
	assert(str)
	assert(type(str) == "string", "Expected ArtifactLocationType to be of type 'string'")
end

--  
function M.ArtifactLocationType(str)
	M.AssertArtifactLocationType(str)
	return str
end

function M.AssertArtifactStoreLocation(str)
	assert(str)
	assert(type(str) == "string", "Expected ArtifactStoreLocation to be of type 'string'")
	assert(#str <= 63, "Expected string to be max 63 characters")
	assert(#str >= 3, "Expected string to be min 3 characters")
	assert(str:match("[a-zA-Z0-9%-%.]+"), "Expected string to match pattern '[a-zA-Z0-9%-%.]+'")
end

--  
function M.ArtifactStoreLocation(str)
	M.AssertArtifactStoreLocation(str)
	return str
end

function M.AssertContinuationToken(str)
	assert(str)
	assert(type(str) == "string", "Expected ContinuationToken to be of type 'string'")
end

--  
function M.ContinuationToken(str)
	M.AssertContinuationToken(str)
	return str
end

function M.AssertStageExecutionStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected StageExecutionStatus to be of type 'string'")
end

--  
function M.StageExecutionStatus(str)
	M.AssertStageExecutionStatus(str)
	return str
end

function M.AssertCode(str)
	assert(str)
	assert(type(str) == "string", "Expected Code to be of type 'string'")
end

--  
function M.Code(str)
	M.AssertCode(str)
	return str
end

function M.AssertRevision(str)
	assert(str)
	assert(type(str) == "string", "Expected Revision to be of type 'string'")
	assert(#str <= 1500, "Expected string to be max 1500 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.Revision(str)
	M.AssertRevision(str)
	return str
end

function M.AssertVersion(str)
	assert(str)
	assert(type(str) == "string", "Expected Version to be of type 'string'")
	assert(#str <= 9, "Expected string to be max 9 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[0-9A-Za-z_-]+"), "Expected string to match pattern '[0-9A-Za-z_-]+'")
end

--  
function M.Version(str)
	M.AssertVersion(str)
	return str
end

function M.AssertActionExecutionToken(str)
	assert(str)
	assert(type(str) == "string", "Expected ActionExecutionToken to be of type 'string'")
end

--  
function M.ActionExecutionToken(str)
	M.AssertActionExecutionToken(str)
	return str
end

function M.AssertClientId(str)
	assert(str)
	assert(type(str) == "string", "Expected ClientId to be of type 'string'")
	assert(str:match("[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}"), "Expected string to match pattern '[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}'")
end

--  
function M.ClientId(str)
	M.AssertClientId(str)
	return str
end

function M.AssertBlockerType(str)
	assert(str)
	assert(type(str) == "string", "Expected BlockerType to be of type 'string'")
end

--  
function M.BlockerType(str)
	M.AssertBlockerType(str)
	return str
end

function M.AssertPipelineExecutionStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected PipelineExecutionStatus to be of type 'string'")
end

--  
function M.PipelineExecutionStatus(str)
	M.AssertPipelineExecutionStatus(str)
	return str
end

function M.AssertPipelineName(str)
	assert(str)
	assert(type(str) == "string", "Expected PipelineName to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[A-Za-z0-9.@%-_]+"), "Expected string to match pattern '[A-Za-z0-9.@%-_]+'")
end

--  
function M.PipelineName(str)
	M.AssertPipelineName(str)
	return str
end

function M.AssertUrl(str)
	assert(str)
	assert(type(str) == "string", "Expected Url to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.Url(str)
	M.AssertUrl(str)
	return str
end

function M.AssertEncryptionKeyType(str)
	assert(str)
	assert(type(str) == "string", "Expected EncryptionKeyType to be of type 'string'")
end

--  
function M.EncryptionKeyType(str)
	M.AssertEncryptionKeyType(str)
	return str
end

function M.AssertDescription(str)
	assert(str)
	assert(type(str) == "string", "Expected Description to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.Description(str)
	M.AssertDescription(str)
	return str
end

function M.AssertS3ObjectKey(str)
	assert(str)
	assert(type(str) == "string", "Expected S3ObjectKey to be of type 'string'")
end

--  
function M.S3ObjectKey(str)
	M.AssertS3ObjectKey(str)
	return str
end

function M.AssertPipelineVersion(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected PipelineVersion to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.PipelineVersion(integer)
	M.AssertPipelineVersion(integer)
	return integer
end

function M.AssertMaximumArtifactCount(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaximumArtifactCount to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 5, "Expected integer to be max 5")
end

function M.MaximumArtifactCount(integer)
	M.AssertMaximumArtifactCount(integer)
	return integer
end

function M.AssertPercentage(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected Percentage to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 100, "Expected integer to be max 100")
end

function M.Percentage(integer)
	M.AssertPercentage(integer)
	return integer
end

function M.AssertMaxBatchSize(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxBatchSize to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.MaxBatchSize(integer)
	M.AssertMaxBatchSize(integer)
	return integer
end

function M.AssertMinimumArtifactCount(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MinimumArtifactCount to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 5, "Expected integer to be max 5")
end

function M.MinimumArtifactCount(integer)
	M.AssertMinimumArtifactCount(integer)
	return integer
end

function M.AssertMaxResults(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxResults to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 100, "Expected integer to be max 100")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.MaxResults(integer)
	M.AssertMaxResults(integer)
	return integer
end

function M.AssertActionRunOrder(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected ActionRunOrder to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 999, "Expected integer to be max 999")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.ActionRunOrder(integer)
	M.AssertActionRunOrder(integer)
	return integer
end

function M.AssertEnabled(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected Enabled to be of type 'boolean'")
end

function M.Enabled(boolean)
	M.AssertEnabled(boolean)
	return boolean
end

function M.AssertBoolean(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected Boolean to be of type 'boolean'")
end

function M.Boolean(boolean)
	M.AssertBoolean(boolean)
	return boolean
end

function M.AssertActionConfigurationMap(map)
	assert(map)
	assert(type(map) == "table", "Expected ActionConfigurationMap to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertActionConfigurationKey(k)
		M.AssertActionConfigurationValue(v)
	end
end

function M.ActionConfigurationMap(map)
	M.AssertActionConfigurationMap(map)
	return map
end

function M.AssertQueryParamMap(map)
	assert(map)
	assert(type(map) == "table", "Expected QueryParamMap to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertActionConfigurationKey(k)
		M.AssertActionConfigurationQueryableValue(v)
	end
end

function M.QueryParamMap(map)
	M.AssertQueryParamMap(map)
	return map
end

function M.AssertTimestamp(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected Timestamp to be of type 'string'")
end

function M.Timestamp(timestamp)
	M.AssertTimestamp(timestamp)
	return timestamp
end

function M.AssertTime(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected Time to be of type 'string'")
end

function M.Time(timestamp)
	M.AssertTime(timestamp)
	return timestamp
end

function M.AssertLastChangedAt(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected LastChangedAt to be of type 'string'")
end

function M.LastChangedAt(timestamp)
	M.AssertLastChangedAt(timestamp)
	return timestamp
end

function M.AssertArtifactRevisionList(list)
	assert(list)
	assert(type(list) == "table", "Expected ArtifactRevisionList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertArtifactRevision(v)
	end
end

--  
-- List of ArtifactRevision objects
function M.ArtifactRevisionList(list)
	M.AssertArtifactRevisionList(list)
	return list
end

function M.AssertStageActionDeclarationList(list)
	assert(list)
	assert(type(list) == "table", "Expected StageActionDeclarationList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertActionDeclaration(v)
	end
end

--  
-- List of ActionDeclaration objects
function M.StageActionDeclarationList(list)
	M.AssertStageActionDeclarationList(list)
	return list
end

function M.AssertPipelineList(list)
	assert(list)
	assert(type(list) == "table", "Expected PipelineList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertPipelineSummary(v)
	end
end

--  
-- List of PipelineSummary objects
function M.PipelineList(list)
	M.AssertPipelineList(list)
	return list
end

function M.AssertPipelineExecutionSummaryList(list)
	assert(list)
	assert(type(list) == "table", "Expected PipelineExecutionSummaryList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertPipelineExecutionSummary(v)
	end
end

--  
-- List of PipelineExecutionSummary objects
function M.PipelineExecutionSummaryList(list)
	M.AssertPipelineExecutionSummaryList(list)
	return list
end

function M.AssertStageBlockerDeclarationList(list)
	assert(list)
	assert(type(list) == "table", "Expected StageBlockerDeclarationList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertBlockerDeclaration(v)
	end
end

--  
-- List of BlockerDeclaration objects
function M.StageBlockerDeclarationList(list)
	M.AssertStageBlockerDeclarationList(list)
	return list
end

function M.AssertOutputArtifactList(list)
	assert(list)
	assert(type(list) == "table", "Expected OutputArtifactList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertOutputArtifact(v)
	end
end

--  
-- List of OutputArtifact objects
function M.OutputArtifactList(list)
	M.AssertOutputArtifactList(list)
	return list
end

function M.AssertActionTypeList(list)
	assert(list)
	assert(type(list) == "table", "Expected ActionTypeList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertActionType(v)
	end
end

--  
-- List of ActionType objects
function M.ActionTypeList(list)
	M.AssertActionTypeList(list)
	return list
end

function M.AssertPipelineStageDeclarationList(list)
	assert(list)
	assert(type(list) == "table", "Expected PipelineStageDeclarationList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertStageDeclaration(v)
	end
end

--  
-- List of StageDeclaration objects
function M.PipelineStageDeclarationList(list)
	M.AssertPipelineStageDeclarationList(list)
	return list
end

function M.AssertActionStateList(list)
	assert(list)
	assert(type(list) == "table", "Expected ActionStateList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertActionState(v)
	end
end

--  
-- List of ActionState objects
function M.ActionStateList(list)
	M.AssertActionStateList(list)
	return list
end

function M.AssertThirdPartyJobList(list)
	assert(list)
	assert(type(list) == "table", "Expected ThirdPartyJobList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertThirdPartyJob(v)
	end
end

--  
-- List of ThirdPartyJob objects
function M.ThirdPartyJobList(list)
	M.AssertThirdPartyJobList(list)
	return list
end

function M.AssertActionConfigurationPropertyList(list)
	assert(list)
	assert(type(list) == "table", "Expected ActionConfigurationPropertyList to be of type ''table")
	assert(#list <= 10, "Expected list to be contain 10 elements")
	for _,v in ipairs(list) do
		M.AssertActionConfigurationProperty(v)
	end
end

--  
-- List of ActionConfigurationProperty objects
function M.ActionConfigurationPropertyList(list)
	M.AssertActionConfigurationPropertyList(list)
	return list
end

function M.AssertJobList(list)
	assert(list)
	assert(type(list) == "table", "Expected JobList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertJob(v)
	end
end

--  
-- List of Job objects
function M.JobList(list)
	M.AssertJobList(list)
	return list
end

function M.AssertArtifactList(list)
	assert(list)
	assert(type(list) == "table", "Expected ArtifactList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertArtifact(v)
	end
end

--  
-- List of Artifact objects
function M.ArtifactList(list)
	M.AssertArtifactList(list)
	return list
end

function M.AssertStageStateList(list)
	assert(list)
	assert(type(list) == "table", "Expected StageStateList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertStageState(v)
	end
end

--  
-- List of StageState objects
function M.StageStateList(list)
	M.AssertStageStateList(list)
	return list
end

function M.AssertInputArtifactList(list)
	assert(list)
	assert(type(list) == "table", "Expected InputArtifactList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertInputArtifact(v)
	end
end

--  
-- List of InputArtifact objects
function M.InputArtifactList(list)
	M.AssertInputArtifactList(list)
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
			return "codepipeline.amazonaws.com"
		end
	end
	local ss = { "codepipeline" }
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
--- EnableStageTransition
-- @param EnableStageTransitionInput
-- @param cb Callback function accepting two args: response, error_message
function M.EnableStageTransitionAsync(EnableStageTransitionInput, cb)
	assert(EnableStageTransitionInput, "You must provide a EnableStageTransitionInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodePipeline_20150709.EnableStageTransition",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", EnableStageTransitionInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- RetryStageExecution
-- @param RetryStageExecutionInput
-- @param cb Callback function accepting two args: response, error_message
function M.RetryStageExecutionAsync(RetryStageExecutionInput, cb)
	assert(RetryStageExecutionInput, "You must provide a RetryStageExecutionInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodePipeline_20150709.RetryStageExecution",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", RetryStageExecutionInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- PutJobSuccessResult
-- @param PutJobSuccessResultInput
-- @param cb Callback function accepting two args: response, error_message
function M.PutJobSuccessResultAsync(PutJobSuccessResultInput, cb)
	assert(PutJobSuccessResultInput, "You must provide a PutJobSuccessResultInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodePipeline_20150709.PutJobSuccessResult",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", PutJobSuccessResultInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- PollForThirdPartyJobs
-- @param PollForThirdPartyJobsInput
-- @param cb Callback function accepting two args: response, error_message
function M.PollForThirdPartyJobsAsync(PollForThirdPartyJobsInput, cb)
	assert(PollForThirdPartyJobsInput, "You must provide a PollForThirdPartyJobsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodePipeline_20150709.PollForThirdPartyJobs",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", PollForThirdPartyJobsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetThirdPartyJobDetails
-- @param GetThirdPartyJobDetailsInput
-- @param cb Callback function accepting two args: response, error_message
function M.GetThirdPartyJobDetailsAsync(GetThirdPartyJobDetailsInput, cb)
	assert(GetThirdPartyJobDetailsInput, "You must provide a GetThirdPartyJobDetailsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodePipeline_20150709.GetThirdPartyJobDetails",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetThirdPartyJobDetailsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeletePipeline
-- @param DeletePipelineInput
-- @param cb Callback function accepting two args: response, error_message
function M.DeletePipelineAsync(DeletePipelineInput, cb)
	assert(DeletePipelineInput, "You must provide a DeletePipelineInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodePipeline_20150709.DeletePipeline",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeletePipelineInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdatePipeline
-- @param UpdatePipelineInput
-- @param cb Callback function accepting two args: response, error_message
function M.UpdatePipelineAsync(UpdatePipelineInput, cb)
	assert(UpdatePipelineInput, "You must provide a UpdatePipelineInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodePipeline_20150709.UpdatePipeline",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdatePipelineInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- AcknowledgeThirdPartyJob
-- @param AcknowledgeThirdPartyJobInput
-- @param cb Callback function accepting two args: response, error_message
function M.AcknowledgeThirdPartyJobAsync(AcknowledgeThirdPartyJobInput, cb)
	assert(AcknowledgeThirdPartyJobInput, "You must provide a AcknowledgeThirdPartyJobInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodePipeline_20150709.AcknowledgeThirdPartyJob",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", AcknowledgeThirdPartyJobInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListActionTypes
-- @param ListActionTypesInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListActionTypesAsync(ListActionTypesInput, cb)
	assert(ListActionTypesInput, "You must provide a ListActionTypesInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodePipeline_20150709.ListActionTypes",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListActionTypesInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- PutJobFailureResult
-- @param PutJobFailureResultInput
-- @param cb Callback function accepting two args: response, error_message
function M.PutJobFailureResultAsync(PutJobFailureResultInput, cb)
	assert(PutJobFailureResultInput, "You must provide a PutJobFailureResultInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodePipeline_20150709.PutJobFailureResult",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", PutJobFailureResultInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetPipelineExecution
-- @param GetPipelineExecutionInput
-- @param cb Callback function accepting two args: response, error_message
function M.GetPipelineExecutionAsync(GetPipelineExecutionInput, cb)
	assert(GetPipelineExecutionInput, "You must provide a GetPipelineExecutionInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodePipeline_20150709.GetPipelineExecution",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetPipelineExecutionInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- PutThirdPartyJobSuccessResult
-- @param PutThirdPartyJobSuccessResultInput
-- @param cb Callback function accepting two args: response, error_message
function M.PutThirdPartyJobSuccessResultAsync(PutThirdPartyJobSuccessResultInput, cb)
	assert(PutThirdPartyJobSuccessResultInput, "You must provide a PutThirdPartyJobSuccessResultInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodePipeline_20150709.PutThirdPartyJobSuccessResult",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", PutThirdPartyJobSuccessResultInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- AcknowledgeJob
-- @param AcknowledgeJobInput
-- @param cb Callback function accepting two args: response, error_message
function M.AcknowledgeJobAsync(AcknowledgeJobInput, cb)
	assert(AcknowledgeJobInput, "You must provide a AcknowledgeJobInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodePipeline_20150709.AcknowledgeJob",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", AcknowledgeJobInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- PutActionRevision
-- @param PutActionRevisionInput
-- @param cb Callback function accepting two args: response, error_message
function M.PutActionRevisionAsync(PutActionRevisionInput, cb)
	assert(PutActionRevisionInput, "You must provide a PutActionRevisionInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodePipeline_20150709.PutActionRevision",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", PutActionRevisionInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListPipelines
-- @param ListPipelinesInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListPipelinesAsync(ListPipelinesInput, cb)
	assert(ListPipelinesInput, "You must provide a ListPipelinesInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodePipeline_20150709.ListPipelines",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListPipelinesInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- StartPipelineExecution
-- @param StartPipelineExecutionInput
-- @param cb Callback function accepting two args: response, error_message
function M.StartPipelineExecutionAsync(StartPipelineExecutionInput, cb)
	assert(StartPipelineExecutionInput, "You must provide a StartPipelineExecutionInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodePipeline_20150709.StartPipelineExecution",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", StartPipelineExecutionInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- PutApprovalResult
-- @param PutApprovalResultInput
-- @param cb Callback function accepting two args: response, error_message
function M.PutApprovalResultAsync(PutApprovalResultInput, cb)
	assert(PutApprovalResultInput, "You must provide a PutApprovalResultInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodePipeline_20150709.PutApprovalResult",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", PutApprovalResultInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- PutThirdPartyJobFailureResult
-- @param PutThirdPartyJobFailureResultInput
-- @param cb Callback function accepting two args: response, error_message
function M.PutThirdPartyJobFailureResultAsync(PutThirdPartyJobFailureResultInput, cb)
	assert(PutThirdPartyJobFailureResultInput, "You must provide a PutThirdPartyJobFailureResultInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodePipeline_20150709.PutThirdPartyJobFailureResult",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", PutThirdPartyJobFailureResultInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- PollForJobs
-- @param PollForJobsInput
-- @param cb Callback function accepting two args: response, error_message
function M.PollForJobsAsync(PollForJobsInput, cb)
	assert(PollForJobsInput, "You must provide a PollForJobsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodePipeline_20150709.PollForJobs",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", PollForJobsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetPipelineState
-- @param GetPipelineStateInput
-- @param cb Callback function accepting two args: response, error_message
function M.GetPipelineStateAsync(GetPipelineStateInput, cb)
	assert(GetPipelineStateInput, "You must provide a GetPipelineStateInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodePipeline_20150709.GetPipelineState",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetPipelineStateInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateCustomActionType
-- @param CreateCustomActionTypeInput
-- @param cb Callback function accepting two args: response, error_message
function M.CreateCustomActionTypeAsync(CreateCustomActionTypeInput, cb)
	assert(CreateCustomActionTypeInput, "You must provide a CreateCustomActionTypeInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodePipeline_20150709.CreateCustomActionType",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateCustomActionTypeInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreatePipeline
-- @param CreatePipelineInput
-- @param cb Callback function accepting two args: response, error_message
function M.CreatePipelineAsync(CreatePipelineInput, cb)
	assert(CreatePipelineInput, "You must provide a CreatePipelineInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodePipeline_20150709.CreatePipeline",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreatePipelineInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetJobDetails
-- @param GetJobDetailsInput
-- @param cb Callback function accepting two args: response, error_message
function M.GetJobDetailsAsync(GetJobDetailsInput, cb)
	assert(GetJobDetailsInput, "You must provide a GetJobDetailsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodePipeline_20150709.GetJobDetails",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetJobDetailsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetPipeline
-- @param GetPipelineInput
-- @param cb Callback function accepting two args: response, error_message
function M.GetPipelineAsync(GetPipelineInput, cb)
	assert(GetPipelineInput, "You must provide a GetPipelineInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodePipeline_20150709.GetPipeline",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetPipelineInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteCustomActionType
-- @param DeleteCustomActionTypeInput
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteCustomActionTypeAsync(DeleteCustomActionTypeInput, cb)
	assert(DeleteCustomActionTypeInput, "You must provide a DeleteCustomActionTypeInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodePipeline_20150709.DeleteCustomActionType",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteCustomActionTypeInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListPipelineExecutions
-- @param ListPipelineExecutionsInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListPipelineExecutionsAsync(ListPipelineExecutionsInput, cb)
	assert(ListPipelineExecutionsInput, "You must provide a ListPipelineExecutionsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodePipeline_20150709.ListPipelineExecutions",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListPipelineExecutionsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DisableStageTransition
-- @param DisableStageTransitionInput
-- @param cb Callback function accepting two args: response, error_message
function M.DisableStageTransitionAsync(DisableStageTransitionInput, cb)
	assert(DisableStageTransitionInput, "You must provide a DisableStageTransitionInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodePipeline_20150709.DisableStageTransition",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DisableStageTransitionInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end


return M
