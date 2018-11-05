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

local keys = {}
local asserts = {}

keys.ActionConfigurationProperty = { ["description"] = true, ["required"] = true, ["secret"] = true, ["key"] = true, ["type"] = true, ["queryable"] = true, ["name"] = true, nil }

function asserts.AssertActionConfigurationProperty(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ActionConfigurationProperty to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["required"], "Expected key required to exist in table")
	assert(struct["key"], "Expected key key to exist in table")
	assert(struct["secret"], "Expected key secret to exist in table")
	if struct["description"] then asserts.AssertDescription(struct["description"]) end
	if struct["required"] then asserts.AssertBoolean(struct["required"]) end
	if struct["secret"] then asserts.AssertBoolean(struct["secret"]) end
	if struct["key"] then asserts.AssertBoolean(struct["key"]) end
	if struct["type"] then asserts.AssertActionConfigurationPropertyType(struct["type"]) end
	if struct["queryable"] then asserts.AssertBoolean(struct["queryable"]) end
	if struct["name"] then asserts.AssertActionConfigurationKey(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(keys.ActionConfigurationProperty[k], "ActionConfigurationProperty contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ActionConfigurationProperty
-- <p>Represents information about an action configuration property.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * description [Description] <p>The description of the action configuration property that will be displayed to users.</p>
-- * required [Boolean] <p>Whether the configuration property is a required value.</p>
-- * secret [Boolean] <p>Whether the configuration property is secret. Secrets are hidden from all calls except for GetJobDetails, GetThirdPartyJobDetails, PollForJobs, and PollForThirdPartyJobs.</p> <p>When updating a pipeline, passing * * * * * without changing any other values of the action will preserve the prior value of the secret.</p>
-- * key [Boolean] <p>Whether the configuration property is a key.</p>
-- * type [ActionConfigurationPropertyType] <p>The type of the configuration property.</p>
-- * queryable [Boolean] <p>Indicates that the property will be used in conjunction with PollForJobs. When creating a custom action, an action can have up to one queryable property. If it has one, that property must be both required and not secret.</p> <p>If you create a pipeline with a custom action type, and that custom action contains a queryable property, the value for that configuration property is subject to additional restrictions. The value must be less than or equal to twenty (20) characters. The value can contain only alphanumeric characters, underscores, and hyphens.</p>
-- * name [ActionConfigurationKey] <p>The name of the action configuration property.</p>
-- Required key: name
-- Required key: required
-- Required key: key
-- Required key: secret
-- @return ActionConfigurationProperty structure as a key-value pair table
function M.ActionConfigurationProperty(args)
	assert(args, "You must provide an argument table when creating ActionConfigurationProperty")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["description"] = args["description"],
		["required"] = args["required"],
		["secret"] = args["secret"],
		["key"] = args["key"],
		["type"] = args["type"],
		["queryable"] = args["queryable"],
		["name"] = args["name"],
	}
	asserts.AssertActionConfigurationProperty(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateCustomActionTypeInput = { ["category"] = true, ["settings"] = true, ["configurationProperties"] = true, ["version"] = true, ["provider"] = true, ["inputArtifactDetails"] = true, ["outputArtifactDetails"] = true, nil }

function asserts.AssertCreateCustomActionTypeInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateCustomActionTypeInput to be of type 'table'")
	assert(struct["category"], "Expected key category to exist in table")
	assert(struct["provider"], "Expected key provider to exist in table")
	assert(struct["version"], "Expected key version to exist in table")
	assert(struct["inputArtifactDetails"], "Expected key inputArtifactDetails to exist in table")
	assert(struct["outputArtifactDetails"], "Expected key outputArtifactDetails to exist in table")
	if struct["category"] then asserts.AssertActionCategory(struct["category"]) end
	if struct["settings"] then asserts.AssertActionTypeSettings(struct["settings"]) end
	if struct["configurationProperties"] then asserts.AssertActionConfigurationPropertyList(struct["configurationProperties"]) end
	if struct["version"] then asserts.AssertVersion(struct["version"]) end
	if struct["provider"] then asserts.AssertActionProvider(struct["provider"]) end
	if struct["inputArtifactDetails"] then asserts.AssertArtifactDetails(struct["inputArtifactDetails"]) end
	if struct["outputArtifactDetails"] then asserts.AssertArtifactDetails(struct["outputArtifactDetails"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateCustomActionTypeInput[k], "CreateCustomActionTypeInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateCustomActionTypeInput
-- <p>Represents the input of a CreateCustomActionType operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * category [ActionCategory] <p>The category of the custom action, such as a build action or a test action.</p> <note> <p>Although Source and Approval are listed as valid values, they are not currently functional. These values are reserved for future use.</p> </note>
-- * settings [ActionTypeSettings] <p>Returns information about the settings for an action type.</p>
-- * configurationProperties [ActionConfigurationPropertyList] <p>The configuration properties for the custom action.</p> <note> <p>You can refer to a name in the configuration properties of the custom action within the URL templates by following the format of {Config:name}, as long as the configuration property is both required and not secret. For more information, see <a href="http://docs.aws.amazon.com/codepipeline/latest/userguide/how-to-create-custom-action.html">Create a Custom Action for a Pipeline</a>.</p> </note>
-- * version [Version] <p>The version identifier of the custom action.</p>
-- * provider [ActionProvider] <p>The provider of the service used in the custom action, such as AWS CodeDeploy.</p>
-- * inputArtifactDetails [ArtifactDetails] <p>The details of the input artifact for the action, such as its commit ID.</p>
-- * outputArtifactDetails [ArtifactDetails] <p>The details of the output artifact of the action, such as its commit ID.</p>
-- Required key: category
-- Required key: provider
-- Required key: version
-- Required key: inputArtifactDetails
-- Required key: outputArtifactDetails
-- @return CreateCustomActionTypeInput structure as a key-value pair table
function M.CreateCustomActionTypeInput(args)
	assert(args, "You must provide an argument table when creating CreateCustomActionTypeInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["category"] = args["category"],
		["settings"] = args["settings"],
		["configurationProperties"] = args["configurationProperties"],
		["version"] = args["version"],
		["provider"] = args["provider"],
		["inputArtifactDetails"] = args["inputArtifactDetails"],
		["outputArtifactDetails"] = args["outputArtifactDetails"],
	}
	asserts.AssertCreateCustomActionTypeInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StageState = { ["actionStates"] = true, ["inboundTransitionState"] = true, ["latestExecution"] = true, ["stageName"] = true, nil }

function asserts.AssertStageState(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StageState to be of type 'table'")
	if struct["actionStates"] then asserts.AssertActionStateList(struct["actionStates"]) end
	if struct["inboundTransitionState"] then asserts.AssertTransitionState(struct["inboundTransitionState"]) end
	if struct["latestExecution"] then asserts.AssertStageExecution(struct["latestExecution"]) end
	if struct["stageName"] then asserts.AssertStageName(struct["stageName"]) end
	for k,_ in pairs(struct) do
		assert(keys.StageState[k], "StageState contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StageState
-- <p>Represents information about the state of the stage.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * actionStates [ActionStateList] <p>The state of the stage.</p>
-- * inboundTransitionState [TransitionState] <p>The state of the inbound transition, which is either enabled or disabled.</p>
-- * latestExecution [StageExecution] <p>Information about the latest execution in the stage, including its ID and status.</p>
-- * stageName [StageName] <p>The name of the stage.</p>
-- @return StageState structure as a key-value pair table
function M.StageState(args)
	assert(args, "You must provide an argument table when creating StageState")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["actionStates"] = args["actionStates"],
		["inboundTransitionState"] = args["inboundTransitionState"],
		["latestExecution"] = args["latestExecution"],
		["stageName"] = args["stageName"],
	}
	asserts.AssertStageState(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.WebhookFilterRule = { ["jsonPath"] = true, ["matchEquals"] = true, nil }

function asserts.AssertWebhookFilterRule(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WebhookFilterRule to be of type 'table'")
	assert(struct["jsonPath"], "Expected key jsonPath to exist in table")
	if struct["jsonPath"] then asserts.AssertJsonPath(struct["jsonPath"]) end
	if struct["matchEquals"] then asserts.AssertMatchEquals(struct["matchEquals"]) end
	for k,_ in pairs(struct) do
		assert(keys.WebhookFilterRule[k], "WebhookFilterRule contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WebhookFilterRule
-- <p>The event criteria that specify when a webhook notification is sent to your URL.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * jsonPath [JsonPath] <p>A JsonPath expression that will be applied to the body/payload of the webhook. The value selected by JsonPath expression must match the value specified in the matchEquals field, otherwise the request will be ignored. More information on JsonPath expressions can be found here: https://github.com/json-path/JsonPath.</p>
-- * matchEquals [MatchEquals] <p>The value selected by the JsonPath expression must match what is supplied in the MatchEquals field, otherwise the request will be ignored. Properties from the target action configuration can be included as placeholders in this value by surrounding the action configuration key with curly braces. For example, if the value supplied here is "refs/heads/{Branch}" and the target action has an action configuration property called "Branch" with a value of "master", the MatchEquals value will be evaluated as "refs/heads/master". A list of action configuration properties for built-in action types can be found here: <a href="http://docs.aws.amazon.com/codepipeline/latest/userguide/reference-pipeline-structure.html#action-requirements">Pipeline Structure Reference Action Requirements</a>.</p>
-- Required key: jsonPath
-- @return WebhookFilterRule structure as a key-value pair table
function M.WebhookFilterRule(args)
	assert(args, "You must provide an argument table when creating WebhookFilterRule")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["jsonPath"] = args["jsonPath"],
		["matchEquals"] = args["matchEquals"],
	}
	asserts.AssertWebhookFilterRule(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetPipelineStateOutput = { ["stageStates"] = true, ["pipelineVersion"] = true, ["updated"] = true, ["pipelineName"] = true, ["created"] = true, nil }

function asserts.AssertGetPipelineStateOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetPipelineStateOutput to be of type 'table'")
	if struct["stageStates"] then asserts.AssertStageStateList(struct["stageStates"]) end
	if struct["pipelineVersion"] then asserts.AssertPipelineVersion(struct["pipelineVersion"]) end
	if struct["updated"] then asserts.AssertTimestamp(struct["updated"]) end
	if struct["pipelineName"] then asserts.AssertPipelineName(struct["pipelineName"]) end
	if struct["created"] then asserts.AssertTimestamp(struct["created"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetPipelineStateOutput[k], "GetPipelineStateOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetPipelineStateOutput
-- <p>Represents the output of a GetPipelineState action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * stageStates [StageStateList] <p>A list of the pipeline stage output information, including stage name, state, most recent run details, whether the stage is disabled, and other data.</p>
-- * pipelineVersion [PipelineVersion] <p>The version number of the pipeline.</p> <note> <p>A newly-created pipeline is always assigned a version number of <code>1</code>.</p> </note>
-- * updated [Timestamp] <p>The date and time the pipeline was last updated, in timestamp format.</p>
-- * pipelineName [PipelineName] <p>The name of the pipeline for which you want to get the state.</p>
-- * created [Timestamp] <p>The date and time the pipeline was created, in timestamp format.</p>
-- @return GetPipelineStateOutput structure as a key-value pair table
function M.GetPipelineStateOutput(args)
	assert(args, "You must provide an argument table when creating GetPipelineStateOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["stageStates"] = args["stageStates"],
		["pipelineVersion"] = args["pipelineVersion"],
		["updated"] = args["updated"],
		["pipelineName"] = args["pipelineName"],
		["created"] = args["created"],
	}
	asserts.AssertGetPipelineStateOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeregisterWebhookWithThirdPartyInput = { ["webhookName"] = true, nil }

function asserts.AssertDeregisterWebhookWithThirdPartyInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeregisterWebhookWithThirdPartyInput to be of type 'table'")
	if struct["webhookName"] then asserts.AssertWebhookName(struct["webhookName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeregisterWebhookWithThirdPartyInput[k], "DeregisterWebhookWithThirdPartyInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeregisterWebhookWithThirdPartyInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * webhookName [WebhookName] <p>The name of the webhook you want to deregister.</p>
-- @return DeregisterWebhookWithThirdPartyInput structure as a key-value pair table
function M.DeregisterWebhookWithThirdPartyInput(args)
	assert(args, "You must provide an argument table when creating DeregisterWebhookWithThirdPartyInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["webhookName"] = args["webhookName"],
	}
	asserts.AssertDeregisterWebhookWithThirdPartyInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListPipelinesOutput = { ["nextToken"] = true, ["pipelines"] = true, nil }

function asserts.AssertListPipelinesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPipelinesOutput to be of type 'table'")
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["pipelines"] then asserts.AssertPipelineList(struct["pipelines"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListPipelinesOutput[k], "ListPipelinesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPipelinesOutput
-- <p>Represents the output of a ListPipelines action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [NextToken] <p>If the amount of returned information is significantly large, an identifier is also returned which can be used in a subsequent list pipelines call to return the next set of pipelines in the list.</p>
-- * pipelines [PipelineList] <p>The list of pipelines.</p>
-- @return ListPipelinesOutput structure as a key-value pair table
function M.ListPipelinesOutput(args)
	assert(args, "You must provide an argument table when creating ListPipelinesOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["pipelines"] = args["pipelines"],
	}
	asserts.AssertListPipelinesOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidWebhookAuthenticationParametersException = { nil }

function asserts.AssertInvalidWebhookAuthenticationParametersException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidWebhookAuthenticationParametersException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidWebhookAuthenticationParametersException[k], "InvalidWebhookAuthenticationParametersException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidWebhookAuthenticationParametersException
-- <p>The specified authentication type is in an invalid format.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidWebhookAuthenticationParametersException structure as a key-value pair table
function M.InvalidWebhookAuthenticationParametersException(args)
	assert(args, "You must provide an argument table when creating InvalidWebhookAuthenticationParametersException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertInvalidWebhookAuthenticationParametersException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ArtifactRevision = { ["revisionUrl"] = true, ["name"] = true, ["created"] = true, ["revisionId"] = true, ["revisionSummary"] = true, ["revisionChangeIdentifier"] = true, nil }

function asserts.AssertArtifactRevision(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ArtifactRevision to be of type 'table'")
	if struct["revisionUrl"] then asserts.AssertUrl(struct["revisionUrl"]) end
	if struct["name"] then asserts.AssertArtifactName(struct["name"]) end
	if struct["created"] then asserts.AssertTimestamp(struct["created"]) end
	if struct["revisionId"] then asserts.AssertRevision(struct["revisionId"]) end
	if struct["revisionSummary"] then asserts.AssertRevisionSummary(struct["revisionSummary"]) end
	if struct["revisionChangeIdentifier"] then asserts.AssertRevisionChangeIdentifier(struct["revisionChangeIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.ArtifactRevision[k], "ArtifactRevision contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ArtifactRevision
-- <p>Represents revision details of an artifact. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * revisionUrl [Url] <p>The commit ID for the artifact revision. For artifacts stored in GitHub or AWS CodeCommit repositories, the commit ID is linked to a commit details page.</p>
-- * name [ArtifactName] <p>The name of an artifact. This name might be system-generated, such as "MyApp", or might be defined by the user when an action is created.</p>
-- * created [Timestamp] <p>The date and time when the most recent revision of the artifact was created, in timestamp format.</p>
-- * revisionId [Revision] <p>The revision ID of the artifact.</p>
-- * revisionSummary [RevisionSummary] <p>Summary information about the most recent revision of the artifact. For GitHub and AWS CodeCommit repositories, the commit message. For Amazon S3 buckets or actions, the user-provided content of a <code>codepipeline-artifact-revision-summary</code> key specified in the object metadata.</p>
-- * revisionChangeIdentifier [RevisionChangeIdentifier] <p>An additional identifier for a revision, such as a commit date or, for artifacts stored in Amazon S3 buckets, the ETag value.</p>
-- @return ArtifactRevision structure as a key-value pair table
function M.ArtifactRevision(args)
	assert(args, "You must provide an argument table when creating ArtifactRevision")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["revisionUrl"] = args["revisionUrl"],
		["name"] = args["name"],
		["created"] = args["created"],
		["revisionId"] = args["revisionId"],
		["revisionSummary"] = args["revisionSummary"],
		["revisionChangeIdentifier"] = args["revisionChangeIdentifier"],
	}
	asserts.AssertArtifactRevision(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeregisterWebhookWithThirdPartyOutput = { nil }

function asserts.AssertDeregisterWebhookWithThirdPartyOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeregisterWebhookWithThirdPartyOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeregisterWebhookWithThirdPartyOutput[k], "DeregisterWebhookWithThirdPartyOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeregisterWebhookWithThirdPartyOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeregisterWebhookWithThirdPartyOutput structure as a key-value pair table
function M.DeregisterWebhookWithThirdPartyOutput(args)
	assert(args, "You must provide an argument table when creating DeregisterWebhookWithThirdPartyOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeregisterWebhookWithThirdPartyOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ArtifactDetails = { ["maximumCount"] = true, ["minimumCount"] = true, nil }

function asserts.AssertArtifactDetails(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ArtifactDetails to be of type 'table'")
	assert(struct["minimumCount"], "Expected key minimumCount to exist in table")
	assert(struct["maximumCount"], "Expected key maximumCount to exist in table")
	if struct["maximumCount"] then asserts.AssertMaximumArtifactCount(struct["maximumCount"]) end
	if struct["minimumCount"] then asserts.AssertMinimumArtifactCount(struct["minimumCount"]) end
	for k,_ in pairs(struct) do
		assert(keys.ArtifactDetails[k], "ArtifactDetails contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ArtifactDetails
-- <p>Returns information about the details of an artifact.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * maximumCount [MaximumArtifactCount] <p>The maximum number of artifacts allowed for the action type.</p>
-- * minimumCount [MinimumArtifactCount] <p>The minimum number of artifacts allowed for the action type.</p>
-- Required key: minimumCount
-- Required key: maximumCount
-- @return ArtifactDetails structure as a key-value pair table
function M.ArtifactDetails(args)
	assert(args, "You must provide an argument table when creating ArtifactDetails")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["maximumCount"] = args["maximumCount"],
		["minimumCount"] = args["minimumCount"],
	}
	asserts.AssertArtifactDetails(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutThirdPartyJobSuccessResultInput = { ["currentRevision"] = true, ["clientToken"] = true, ["executionDetails"] = true, ["continuationToken"] = true, ["jobId"] = true, nil }

function asserts.AssertPutThirdPartyJobSuccessResultInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutThirdPartyJobSuccessResultInput to be of type 'table'")
	assert(struct["jobId"], "Expected key jobId to exist in table")
	assert(struct["clientToken"], "Expected key clientToken to exist in table")
	if struct["currentRevision"] then asserts.AssertCurrentRevision(struct["currentRevision"]) end
	if struct["clientToken"] then asserts.AssertClientToken(struct["clientToken"]) end
	if struct["executionDetails"] then asserts.AssertExecutionDetails(struct["executionDetails"]) end
	if struct["continuationToken"] then asserts.AssertContinuationToken(struct["continuationToken"]) end
	if struct["jobId"] then asserts.AssertThirdPartyJobId(struct["jobId"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutThirdPartyJobSuccessResultInput[k], "PutThirdPartyJobSuccessResultInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutThirdPartyJobSuccessResultInput
-- <p>Represents the input of a PutThirdPartyJobSuccessResult action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * currentRevision [CurrentRevision] <p>Represents information about a current revision.</p>
-- * clientToken [ClientToken] <p>The clientToken portion of the clientId and clientToken pair used to verify that the calling entity is allowed access to the job and its details.</p>
-- * executionDetails [ExecutionDetails] <p>The details of the actions taken and results produced on an artifact as it passes through stages in the pipeline. </p>
-- * continuationToken [ContinuationToken] <p>A token generated by a job worker, such as an AWS CodeDeploy deployment ID, that a successful job provides to identify a partner action in progress. Future jobs will use this token in order to identify the running instance of the action. It can be reused to return additional information about the progress of the partner action. When the action is complete, no continuation token should be supplied.</p>
-- * jobId [ThirdPartyJobId] <p>The ID of the job that successfully completed. This is the same ID returned from PollForThirdPartyJobs.</p>
-- Required key: jobId
-- Required key: clientToken
-- @return PutThirdPartyJobSuccessResultInput structure as a key-value pair table
function M.PutThirdPartyJobSuccessResultInput(args)
	assert(args, "You must provide an argument table when creating PutThirdPartyJobSuccessResultInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["currentRevision"] = args["currentRevision"],
		["clientToken"] = args["clientToken"],
		["executionDetails"] = args["executionDetails"],
		["continuationToken"] = args["continuationToken"],
		["jobId"] = args["jobId"],
	}
	asserts.AssertPutThirdPartyJobSuccessResultInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AcknowledgeJobOutput = { ["status"] = true, nil }

function asserts.AssertAcknowledgeJobOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AcknowledgeJobOutput to be of type 'table'")
	if struct["status"] then asserts.AssertJobStatus(struct["status"]) end
	for k,_ in pairs(struct) do
		assert(keys.AcknowledgeJobOutput[k], "AcknowledgeJobOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AcknowledgeJobOutput
-- <p>Represents the output of an AcknowledgeJob action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * status [JobStatus] <p>Whether the job worker has received the specified job.</p>
-- @return AcknowledgeJobOutput structure as a key-value pair table
function M.AcknowledgeJobOutput(args)
	assert(args, "You must provide an argument table when creating AcknowledgeJobOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["status"] = args["status"],
	}
	asserts.AssertAcknowledgeJobOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdatePipelineInput = { ["pipeline"] = true, nil }

function asserts.AssertUpdatePipelineInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdatePipelineInput to be of type 'table'")
	assert(struct["pipeline"], "Expected key pipeline to exist in table")
	if struct["pipeline"] then asserts.AssertPipelineDeclaration(struct["pipeline"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdatePipelineInput[k], "UpdatePipelineInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdatePipelineInput
-- <p>Represents the input of an UpdatePipeline action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * pipeline [PipelineDeclaration] <p>The name of the pipeline to be updated.</p>
-- Required key: pipeline
-- @return UpdatePipelineInput structure as a key-value pair table
function M.UpdatePipelineInput(args)
	assert(args, "You must provide an argument table when creating UpdatePipelineInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["pipeline"] = args["pipeline"],
	}
	asserts.AssertUpdatePipelineInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Job = { ["nonce"] = true, ["data"] = true, ["id"] = true, ["accountId"] = true, nil }

function asserts.AssertJob(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Job to be of type 'table'")
	if struct["nonce"] then asserts.AssertNonce(struct["nonce"]) end
	if struct["data"] then asserts.AssertJobData(struct["data"]) end
	if struct["id"] then asserts.AssertJobId(struct["id"]) end
	if struct["accountId"] then asserts.AssertAccountId(struct["accountId"]) end
	for k,_ in pairs(struct) do
		assert(keys.Job[k], "Job contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Job
-- <p>Represents information about a job.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nonce [Nonce] <p>A system-generated random number that AWS CodePipeline uses to ensure that the job is being worked on by only one job worker. Use this number in an <a>AcknowledgeJob</a> request.</p>
-- * data [JobData] <p>Additional data about a job.</p>
-- * id [JobId] <p>The unique system-generated ID of the job.</p>
-- * accountId [AccountId] <p>The ID of the AWS account to use when performing the job.</p>
-- @return Job structure as a key-value pair table
function M.Job(args)
	assert(args, "You must provide an argument table when creating Job")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nonce"] = args["nonce"],
		["data"] = args["data"],
		["id"] = args["id"],
		["accountId"] = args["accountId"],
	}
	asserts.AssertJob(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetPipelineOutput = { ["pipeline"] = true, ["metadata"] = true, nil }

function asserts.AssertGetPipelineOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetPipelineOutput to be of type 'table'")
	if struct["pipeline"] then asserts.AssertPipelineDeclaration(struct["pipeline"]) end
	if struct["metadata"] then asserts.AssertPipelineMetadata(struct["metadata"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetPipelineOutput[k], "GetPipelineOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetPipelineOutput
-- <p>Represents the output of a GetPipeline action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * pipeline [PipelineDeclaration] <p>Represents the structure of actions and stages to be performed in the pipeline. </p>
-- * metadata [PipelineMetadata] <p>Represents the pipeline metadata information returned as part of the output of a GetPipeline action.</p>
-- @return GetPipelineOutput structure as a key-value pair table
function M.GetPipelineOutput(args)
	assert(args, "You must provide an argument table when creating GetPipelineOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["pipeline"] = args["pipeline"],
		["metadata"] = args["metadata"],
	}
	asserts.AssertGetPipelineOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdatePipelineOutput = { ["pipeline"] = true, nil }

function asserts.AssertUpdatePipelineOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdatePipelineOutput to be of type 'table'")
	if struct["pipeline"] then asserts.AssertPipelineDeclaration(struct["pipeline"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdatePipelineOutput[k], "UpdatePipelineOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdatePipelineOutput
-- <p>Represents the output of an UpdatePipeline action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * pipeline [PipelineDeclaration] <p>The structure of the updated pipeline.</p>
-- @return UpdatePipelineOutput structure as a key-value pair table
function M.UpdatePipelineOutput(args)
	assert(args, "You must provide an argument table when creating UpdatePipelineOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["pipeline"] = args["pipeline"],
	}
	asserts.AssertUpdatePipelineOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ActionType = { ["inputArtifactDetails"] = true, ["actionConfigurationProperties"] = true, ["outputArtifactDetails"] = true, ["id"] = true, ["settings"] = true, nil }

function asserts.AssertActionType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ActionType to be of type 'table'")
	assert(struct["id"], "Expected key id to exist in table")
	assert(struct["inputArtifactDetails"], "Expected key inputArtifactDetails to exist in table")
	assert(struct["outputArtifactDetails"], "Expected key outputArtifactDetails to exist in table")
	if struct["inputArtifactDetails"] then asserts.AssertArtifactDetails(struct["inputArtifactDetails"]) end
	if struct["actionConfigurationProperties"] then asserts.AssertActionConfigurationPropertyList(struct["actionConfigurationProperties"]) end
	if struct["outputArtifactDetails"] then asserts.AssertArtifactDetails(struct["outputArtifactDetails"]) end
	if struct["id"] then asserts.AssertActionTypeId(struct["id"]) end
	if struct["settings"] then asserts.AssertActionTypeSettings(struct["settings"]) end
	for k,_ in pairs(struct) do
		assert(keys.ActionType[k], "ActionType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ActionType
-- <p>Returns information about the details of an action type.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * inputArtifactDetails [ArtifactDetails] <p>The details of the input artifact for the action, such as its commit ID.</p>
-- * actionConfigurationProperties [ActionConfigurationPropertyList] <p>The configuration properties for the action type.</p>
-- * outputArtifactDetails [ArtifactDetails] <p>The details of the output artifact of the action, such as its commit ID.</p>
-- * id [ActionTypeId] <p>Represents information about an action type.</p>
-- * settings [ActionTypeSettings] <p>The settings for the action type.</p>
-- Required key: id
-- Required key: inputArtifactDetails
-- Required key: outputArtifactDetails
-- @return ActionType structure as a key-value pair table
function M.ActionType(args)
	assert(args, "You must provide an argument table when creating ActionType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["inputArtifactDetails"] = args["inputArtifactDetails"],
		["actionConfigurationProperties"] = args["actionConfigurationProperties"],
		["outputArtifactDetails"] = args["outputArtifactDetails"],
		["id"] = args["id"],
		["settings"] = args["settings"],
	}
	asserts.AssertActionType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteWebhookOutput = { nil }

function asserts.AssertDeleteWebhookOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteWebhookOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteWebhookOutput[k], "DeleteWebhookOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteWebhookOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteWebhookOutput structure as a key-value pair table
function M.DeleteWebhookOutput(args)
	assert(args, "You must provide an argument table when creating DeleteWebhookOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteWebhookOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidActionDeclarationException = { nil }

function asserts.AssertInvalidActionDeclarationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidActionDeclarationException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidActionDeclarationException[k], "InvalidActionDeclarationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidActionDeclarationException
-- <p>The specified action declaration was specified in an invalid format.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidActionDeclarationException structure as a key-value pair table
function M.InvalidActionDeclarationException(args)
	assert(args, "You must provide an argument table when creating InvalidActionDeclarationException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertInvalidActionDeclarationException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.JobDetails = { ["data"] = true, ["id"] = true, ["accountId"] = true, nil }

function asserts.AssertJobDetails(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected JobDetails to be of type 'table'")
	if struct["data"] then asserts.AssertJobData(struct["data"]) end
	if struct["id"] then asserts.AssertJobId(struct["id"]) end
	if struct["accountId"] then asserts.AssertAccountId(struct["accountId"]) end
	for k,_ in pairs(struct) do
		assert(keys.JobDetails[k], "JobDetails contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type JobDetails
-- <p>Represents information about the details of a job.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * data [JobData] <p>Represents additional information about a job required for a job worker to complete the job. </p>
-- * id [JobId] <p>The unique system-generated ID of the job.</p>
-- * accountId [AccountId] <p>The AWS account ID associated with the job.</p>
-- @return JobDetails structure as a key-value pair table
function M.JobDetails(args)
	assert(args, "You must provide an argument table when creating JobDetails")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["data"] = args["data"],
		["id"] = args["id"],
		["accountId"] = args["accountId"],
	}
	asserts.AssertJobDetails(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StageNotFoundException = { nil }

function asserts.AssertStageNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StageNotFoundException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.StageNotFoundException[k], "StageNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StageNotFoundException
-- <p>The specified stage was specified in an invalid format or cannot be found.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return StageNotFoundException structure as a key-value pair table
function M.StageNotFoundException(args)
	assert(args, "You must provide an argument table when creating StageNotFoundException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertStageNotFoundException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DisableStageTransitionInput = { ["reason"] = true, ["pipelineName"] = true, ["stageName"] = true, ["transitionType"] = true, nil }

function asserts.AssertDisableStageTransitionInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisableStageTransitionInput to be of type 'table'")
	assert(struct["pipelineName"], "Expected key pipelineName to exist in table")
	assert(struct["stageName"], "Expected key stageName to exist in table")
	assert(struct["transitionType"], "Expected key transitionType to exist in table")
	assert(struct["reason"], "Expected key reason to exist in table")
	if struct["reason"] then asserts.AssertDisabledReason(struct["reason"]) end
	if struct["pipelineName"] then asserts.AssertPipelineName(struct["pipelineName"]) end
	if struct["stageName"] then asserts.AssertStageName(struct["stageName"]) end
	if struct["transitionType"] then asserts.AssertStageTransitionType(struct["transitionType"]) end
	for k,_ in pairs(struct) do
		assert(keys.DisableStageTransitionInput[k], "DisableStageTransitionInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisableStageTransitionInput
-- <p>Represents the input of a DisableStageTransition action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * reason [DisabledReason] <p>The reason given to the user why a stage is disabled, such as waiting for manual approval or manual tests. This message is displayed in the pipeline console UI.</p>
-- * pipelineName [PipelineName] <p>The name of the pipeline in which you want to disable the flow of artifacts from one stage to another.</p>
-- * stageName [StageName] <p>The name of the stage where you want to disable the inbound or outbound transition of artifacts.</p>
-- * transitionType [StageTransitionType] <p>Specifies whether artifacts will be prevented from transitioning into the stage and being processed by the actions in that stage (inbound), or prevented from transitioning from the stage after they have been processed by the actions in that stage (outbound).</p>
-- Required key: pipelineName
-- Required key: stageName
-- Required key: transitionType
-- Required key: reason
-- @return DisableStageTransitionInput structure as a key-value pair table
function M.DisableStageTransitionInput(args)
	assert(args, "You must provide an argument table when creating DisableStageTransitionInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["reason"] = args["reason"],
		["pipelineName"] = args["pipelineName"],
		["stageName"] = args["stageName"],
		["transitionType"] = args["transitionType"],
	}
	asserts.AssertDisableStageTransitionInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AcknowledgeJobInput = { ["nonce"] = true, ["jobId"] = true, nil }

function asserts.AssertAcknowledgeJobInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AcknowledgeJobInput to be of type 'table'")
	assert(struct["jobId"], "Expected key jobId to exist in table")
	assert(struct["nonce"], "Expected key nonce to exist in table")
	if struct["nonce"] then asserts.AssertNonce(struct["nonce"]) end
	if struct["jobId"] then asserts.AssertJobId(struct["jobId"]) end
	for k,_ in pairs(struct) do
		assert(keys.AcknowledgeJobInput[k], "AcknowledgeJobInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AcknowledgeJobInput
-- <p>Represents the input of an AcknowledgeJob action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nonce [Nonce] <p>A system-generated random number that AWS CodePipeline uses to ensure that the job is being worked on by only one job worker. Get this number from the response of the <a>PollForJobs</a> request that returned this job.</p>
-- * jobId [JobId] <p>The unique system-generated ID of the job for which you want to confirm receipt.</p>
-- Required key: jobId
-- Required key: nonce
-- @return AcknowledgeJobInput structure as a key-value pair table
function M.AcknowledgeJobInput(args)
	assert(args, "You must provide an argument table when creating AcknowledgeJobInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nonce"] = args["nonce"],
		["jobId"] = args["jobId"],
	}
	asserts.AssertAcknowledgeJobInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AcknowledgeThirdPartyJobOutput = { ["status"] = true, nil }

function asserts.AssertAcknowledgeThirdPartyJobOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AcknowledgeThirdPartyJobOutput to be of type 'table'")
	if struct["status"] then asserts.AssertJobStatus(struct["status"]) end
	for k,_ in pairs(struct) do
		assert(keys.AcknowledgeThirdPartyJobOutput[k], "AcknowledgeThirdPartyJobOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AcknowledgeThirdPartyJobOutput
-- <p>Represents the output of an AcknowledgeThirdPartyJob action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * status [JobStatus] <p>The status information for the third party job, if any.</p>
-- @return AcknowledgeThirdPartyJobOutput structure as a key-value pair table
function M.AcknowledgeThirdPartyJobOutput(args)
	assert(args, "You must provide an argument table when creating AcknowledgeThirdPartyJobOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["status"] = args["status"],
	}
	asserts.AssertAcknowledgeThirdPartyJobOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreatePipelineInput = { ["pipeline"] = true, nil }

function asserts.AssertCreatePipelineInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreatePipelineInput to be of type 'table'")
	assert(struct["pipeline"], "Expected key pipeline to exist in table")
	if struct["pipeline"] then asserts.AssertPipelineDeclaration(struct["pipeline"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreatePipelineInput[k], "CreatePipelineInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreatePipelineInput
-- <p>Represents the input of a CreatePipeline action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * pipeline [PipelineDeclaration] <p>Represents the structure of actions and stages to be performed in the pipeline. </p>
-- Required key: pipeline
-- @return CreatePipelineInput structure as a key-value pair table
function M.CreatePipelineInput(args)
	assert(args, "You must provide an argument table when creating CreatePipelineInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["pipeline"] = args["pipeline"],
	}
	asserts.AssertCreatePipelineInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListPipelineExecutionsOutput = { ["pipelineExecutionSummaries"] = true, ["nextToken"] = true, nil }

function asserts.AssertListPipelineExecutionsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPipelineExecutionsOutput to be of type 'table'")
	if struct["pipelineExecutionSummaries"] then asserts.AssertPipelineExecutionSummaryList(struct["pipelineExecutionSummaries"]) end
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListPipelineExecutionsOutput[k], "ListPipelineExecutionsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPipelineExecutionsOutput
-- <p>Represents the output of a ListPipelineExecutions action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * pipelineExecutionSummaries [PipelineExecutionSummaryList] <p>A list of executions in the history of a pipeline.</p>
-- * nextToken [NextToken] <p>A token that can be used in the next ListPipelineExecutions call. To view all items in the list, continue to call this operation with each subsequent token until no more nextToken values are returned.</p>
-- @return ListPipelineExecutionsOutput structure as a key-value pair table
function M.ListPipelineExecutionsOutput(args)
	assert(args, "You must provide an argument table when creating ListPipelineExecutionsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["pipelineExecutionSummaries"] = args["pipelineExecutionSummaries"],
		["nextToken"] = args["nextToken"],
	}
	asserts.AssertListPipelineExecutionsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ActionContext = { ["name"] = true, nil }

function asserts.AssertActionContext(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ActionContext to be of type 'table'")
	if struct["name"] then asserts.AssertActionName(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(keys.ActionContext[k], "ActionContext contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ActionContext
-- <p>Represents the context of an action within the stage of a pipeline to a job worker.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * name [ActionName] <p>The name of the action within the context of a job.</p>
-- @return ActionContext structure as a key-value pair table
function M.ActionContext(args)
	assert(args, "You must provide an argument table when creating ActionContext")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["name"] = args["name"],
	}
	asserts.AssertActionContext(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutApprovalResultInput = { ["actionName"] = true, ["token"] = true, ["pipelineName"] = true, ["result"] = true, ["stageName"] = true, nil }

function asserts.AssertPutApprovalResultInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutApprovalResultInput to be of type 'table'")
	assert(struct["pipelineName"], "Expected key pipelineName to exist in table")
	assert(struct["stageName"], "Expected key stageName to exist in table")
	assert(struct["actionName"], "Expected key actionName to exist in table")
	assert(struct["result"], "Expected key result to exist in table")
	assert(struct["token"], "Expected key token to exist in table")
	if struct["actionName"] then asserts.AssertActionName(struct["actionName"]) end
	if struct["token"] then asserts.AssertApprovalToken(struct["token"]) end
	if struct["pipelineName"] then asserts.AssertPipelineName(struct["pipelineName"]) end
	if struct["result"] then asserts.AssertApprovalResult(struct["result"]) end
	if struct["stageName"] then asserts.AssertStageName(struct["stageName"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutApprovalResultInput[k], "PutApprovalResultInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutApprovalResultInput
-- <p>Represents the input of a PutApprovalResult action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * actionName [ActionName] <p>The name of the action for which approval is requested.</p>
-- * token [ApprovalToken] <p>The system-generated token used to identify a unique approval request. The token for each open approval request can be obtained using the <a>GetPipelineState</a> action and is used to validate that the approval request corresponding to this token is still valid.</p>
-- * pipelineName [PipelineName] <p>The name of the pipeline that contains the action. </p>
-- * result [ApprovalResult] <p>Represents information about the result of the approval request.</p>
-- * stageName [StageName] <p>The name of the stage that contains the action.</p>
-- Required key: pipelineName
-- Required key: stageName
-- Required key: actionName
-- Required key: result
-- Required key: token
-- @return PutApprovalResultInput structure as a key-value pair table
function M.PutApprovalResultInput(args)
	assert(args, "You must provide an argument table when creating PutApprovalResultInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["actionName"] = args["actionName"],
		["token"] = args["token"],
		["pipelineName"] = args["pipelineName"],
		["result"] = args["result"],
		["stageName"] = args["stageName"],
	}
	asserts.AssertPutApprovalResultInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PollForJobsInput = { ["actionTypeId"] = true, ["maxBatchSize"] = true, ["queryParam"] = true, nil }

function asserts.AssertPollForJobsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PollForJobsInput to be of type 'table'")
	assert(struct["actionTypeId"], "Expected key actionTypeId to exist in table")
	if struct["actionTypeId"] then asserts.AssertActionTypeId(struct["actionTypeId"]) end
	if struct["maxBatchSize"] then asserts.AssertMaxBatchSize(struct["maxBatchSize"]) end
	if struct["queryParam"] then asserts.AssertQueryParamMap(struct["queryParam"]) end
	for k,_ in pairs(struct) do
		assert(keys.PollForJobsInput[k], "PollForJobsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PollForJobsInput
-- <p>Represents the input of a PollForJobs action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * actionTypeId [ActionTypeId] <p>Represents information about an action type.</p>
-- * maxBatchSize [MaxBatchSize] <p>The maximum number of jobs to return in a poll for jobs call.</p>
-- * queryParam [QueryParamMap] <p>A map of property names and values. For an action type with no queryable properties, this value must be null or an empty map. For an action type with a queryable property, you must supply that property as a key in the map. Only jobs whose action configuration matches the mapped value will be returned.</p>
-- Required key: actionTypeId
-- @return PollForJobsInput structure as a key-value pair table
function M.PollForJobsInput(args)
	assert(args, "You must provide an argument table when creating PollForJobsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["actionTypeId"] = args["actionTypeId"],
		["maxBatchSize"] = args["maxBatchSize"],
		["queryParam"] = args["queryParam"],
	}
	asserts.AssertPollForJobsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidStructureException = { nil }

function asserts.AssertInvalidStructureException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidStructureException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidStructureException[k], "InvalidStructureException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidStructureException
-- <p>The specified structure was specified in an invalid format.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidStructureException structure as a key-value pair table
function M.InvalidStructureException(args)
	assert(args, "You must provide an argument table when creating InvalidStructureException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertInvalidStructureException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutActionRevisionOutput = { ["pipelineExecutionId"] = true, ["newRevision"] = true, nil }

function asserts.AssertPutActionRevisionOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutActionRevisionOutput to be of type 'table'")
	if struct["pipelineExecutionId"] then asserts.AssertPipelineExecutionId(struct["pipelineExecutionId"]) end
	if struct["newRevision"] then asserts.AssertBoolean(struct["newRevision"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutActionRevisionOutput[k], "PutActionRevisionOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutActionRevisionOutput
-- <p>Represents the output of a PutActionRevision action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * pipelineExecutionId [PipelineExecutionId] <p>The ID of the current workflow state of the pipeline.</p>
-- * newRevision [Boolean] <p>Indicates whether the artifact revision was previously used in an execution of the specified pipeline.</p>
-- @return PutActionRevisionOutput structure as a key-value pair table
function M.PutActionRevisionOutput(args)
	assert(args, "You must provide an argument table when creating PutActionRevisionOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["pipelineExecutionId"] = args["pipelineExecutionId"],
		["newRevision"] = args["newRevision"],
	}
	asserts.AssertPutActionRevisionOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InputArtifact = { ["name"] = true, nil }

function asserts.AssertInputArtifact(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InputArtifact to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	if struct["name"] then asserts.AssertArtifactName(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(keys.InputArtifact[k], "InputArtifact contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InputArtifact
-- <p>Represents information about an artifact to be worked on, such as a test or build artifact.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * name [ArtifactName] <p>The name of the artifact to be worked on, for example, "My App".</p> <p>The input artifact of an action must exactly match the output artifact declared in a preceding action, but the input artifact does not have to be the next action in strict sequence from the action that provided the output artifact. Actions in parallel can declare different output artifacts, which are in turn consumed by different following actions.</p>
-- Required key: name
-- @return InputArtifact structure as a key-value pair table
function M.InputArtifact(args)
	assert(args, "You must provide an argument table when creating InputArtifact")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["name"] = args["name"],
	}
	asserts.AssertInputArtifact(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PipelineMetadata = { ["pipelineArn"] = true, ["updated"] = true, ["created"] = true, nil }

function asserts.AssertPipelineMetadata(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PipelineMetadata to be of type 'table'")
	if struct["pipelineArn"] then asserts.AssertPipelineArn(struct["pipelineArn"]) end
	if struct["updated"] then asserts.AssertTimestamp(struct["updated"]) end
	if struct["created"] then asserts.AssertTimestamp(struct["created"]) end
	for k,_ in pairs(struct) do
		assert(keys.PipelineMetadata[k], "PipelineMetadata contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PipelineMetadata
-- <p>Information about a pipeline.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * pipelineArn [PipelineArn] <p>The Amazon Resource Name (ARN) of the pipeline.</p>
-- * updated [Timestamp] <p>The date and time the pipeline was last updated, in timestamp format.</p>
-- * created [Timestamp] <p>The date and time the pipeline was created, in timestamp format.</p>
-- @return PipelineMetadata structure as a key-value pair table
function M.PipelineMetadata(args)
	assert(args, "You must provide an argument table when creating PipelineMetadata")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["pipelineArn"] = args["pipelineArn"],
		["updated"] = args["updated"],
		["created"] = args["created"],
	}
	asserts.AssertPipelineMetadata(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetPipelineExecutionOutput = { ["pipelineExecution"] = true, nil }

function asserts.AssertGetPipelineExecutionOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetPipelineExecutionOutput to be of type 'table'")
	if struct["pipelineExecution"] then asserts.AssertPipelineExecution(struct["pipelineExecution"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetPipelineExecutionOutput[k], "GetPipelineExecutionOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetPipelineExecutionOutput
-- <p>Represents the output of a GetPipelineExecution action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * pipelineExecution [PipelineExecution] <p>Represents information about the execution of a pipeline.</p>
-- @return GetPipelineExecutionOutput structure as a key-value pair table
function M.GetPipelineExecutionOutput(args)
	assert(args, "You must provide an argument table when creating GetPipelineExecutionOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["pipelineExecution"] = args["pipelineExecution"],
	}
	asserts.AssertGetPipelineExecutionOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ApprovalAlreadyCompletedException = { nil }

function asserts.AssertApprovalAlreadyCompletedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ApprovalAlreadyCompletedException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ApprovalAlreadyCompletedException[k], "ApprovalAlreadyCompletedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ApprovalAlreadyCompletedException
-- <p>The approval action has already been approved or rejected.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return ApprovalAlreadyCompletedException structure as a key-value pair table
function M.ApprovalAlreadyCompletedException(args)
	assert(args, "You must provide an argument table when creating ApprovalAlreadyCompletedException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertApprovalAlreadyCompletedException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ActionTypeId = { ["category"] = true, ["owner"] = true, ["version"] = true, ["provider"] = true, nil }

function asserts.AssertActionTypeId(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ActionTypeId to be of type 'table'")
	assert(struct["category"], "Expected key category to exist in table")
	assert(struct["owner"], "Expected key owner to exist in table")
	assert(struct["provider"], "Expected key provider to exist in table")
	assert(struct["version"], "Expected key version to exist in table")
	if struct["category"] then asserts.AssertActionCategory(struct["category"]) end
	if struct["owner"] then asserts.AssertActionOwner(struct["owner"]) end
	if struct["version"] then asserts.AssertVersion(struct["version"]) end
	if struct["provider"] then asserts.AssertActionProvider(struct["provider"]) end
	for k,_ in pairs(struct) do
		assert(keys.ActionTypeId[k], "ActionTypeId contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ActionTypeId
-- <p>Represents information about an action type.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * category [ActionCategory] <p>A category defines what kind of action can be taken in the stage, and constrains the provider type for the action. Valid categories are limited to one of the values below.</p>
-- * owner [ActionOwner] <p>The creator of the action being called.</p>
-- * version [Version] <p>A string that describes the action version.</p>
-- * provider [ActionProvider] <p>The provider of the service being called by the action. Valid providers are determined by the action category. For example, an action in the Deploy category type might have a provider of AWS CodeDeploy, which would be specified as CodeDeploy.</p>
-- Required key: category
-- Required key: owner
-- Required key: provider
-- Required key: version
-- @return ActionTypeId structure as a key-value pair table
function M.ActionTypeId(args)
	assert(args, "You must provide an argument table when creating ActionTypeId")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["category"] = args["category"],
		["owner"] = args["owner"],
		["version"] = args["version"],
		["provider"] = args["provider"],
	}
	asserts.AssertActionTypeId(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TransitionState = { ["disabledReason"] = true, ["enabled"] = true, ["lastChangedAt"] = true, ["lastChangedBy"] = true, nil }

function asserts.AssertTransitionState(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TransitionState to be of type 'table'")
	if struct["disabledReason"] then asserts.AssertDisabledReason(struct["disabledReason"]) end
	if struct["enabled"] then asserts.AssertEnabled(struct["enabled"]) end
	if struct["lastChangedAt"] then asserts.AssertLastChangedAt(struct["lastChangedAt"]) end
	if struct["lastChangedBy"] then asserts.AssertLastChangedBy(struct["lastChangedBy"]) end
	for k,_ in pairs(struct) do
		assert(keys.TransitionState[k], "TransitionState contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TransitionState
-- <p>Represents information about the state of transitions between one stage and another stage.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * disabledReason [DisabledReason] <p>The user-specified reason why the transition between two stages of a pipeline was disabled.</p>
-- * enabled [Enabled] <p>Whether the transition between stages is enabled (true) or disabled (false).</p>
-- * lastChangedAt [LastChangedAt] <p>The timestamp when the transition state was last changed.</p>
-- * lastChangedBy [LastChangedBy] <p>The ID of the user who last changed the transition state.</p>
-- @return TransitionState structure as a key-value pair table
function M.TransitionState(args)
	assert(args, "You must provide an argument table when creating TransitionState")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["disabledReason"] = args["disabledReason"],
		["enabled"] = args["enabled"],
		["lastChangedAt"] = args["lastChangedAt"],
		["lastChangedBy"] = args["lastChangedBy"],
	}
	asserts.AssertTransitionState(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ActionState = { ["actionName"] = true, ["revisionUrl"] = true, ["entityUrl"] = true, ["latestExecution"] = true, ["currentRevision"] = true, nil }

function asserts.AssertActionState(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ActionState to be of type 'table'")
	if struct["actionName"] then asserts.AssertActionName(struct["actionName"]) end
	if struct["revisionUrl"] then asserts.AssertUrl(struct["revisionUrl"]) end
	if struct["entityUrl"] then asserts.AssertUrl(struct["entityUrl"]) end
	if struct["latestExecution"] then asserts.AssertActionExecution(struct["latestExecution"]) end
	if struct["currentRevision"] then asserts.AssertActionRevision(struct["currentRevision"]) end
	for k,_ in pairs(struct) do
		assert(keys.ActionState[k], "ActionState contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ActionState
-- <p>Represents information about the state of an action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * actionName [ActionName] <p>The name of the action.</p>
-- * revisionUrl [Url] <p>A URL link for more information about the revision, such as a commit details page.</p>
-- * entityUrl [Url] <p>A URL link for more information about the state of the action, such as a deployment group details page.</p>
-- * latestExecution [ActionExecution] <p>Represents information about the run of an action.</p>
-- * currentRevision [ActionRevision] <p>Represents information about the version (or revision) of an action.</p>
-- @return ActionState structure as a key-value pair table
function M.ActionState(args)
	assert(args, "You must provide an argument table when creating ActionState")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["actionName"] = args["actionName"],
		["revisionUrl"] = args["revisionUrl"],
		["entityUrl"] = args["entityUrl"],
		["latestExecution"] = args["latestExecution"],
		["currentRevision"] = args["currentRevision"],
	}
	asserts.AssertActionState(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.LimitExceededException = { nil }

function asserts.AssertLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LimitExceededException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.LimitExceededException[k], "LimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LimitExceededException
-- <p>The number of pipelines associated with the AWS account has exceeded the limit allowed for the account.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
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
	}
	asserts.AssertLimitExceededException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutActionRevisionInput = { ["actionName"] = true, ["pipelineName"] = true, ["stageName"] = true, ["actionRevision"] = true, nil }

function asserts.AssertPutActionRevisionInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutActionRevisionInput to be of type 'table'")
	assert(struct["pipelineName"], "Expected key pipelineName to exist in table")
	assert(struct["stageName"], "Expected key stageName to exist in table")
	assert(struct["actionName"], "Expected key actionName to exist in table")
	assert(struct["actionRevision"], "Expected key actionRevision to exist in table")
	if struct["actionName"] then asserts.AssertActionName(struct["actionName"]) end
	if struct["pipelineName"] then asserts.AssertPipelineName(struct["pipelineName"]) end
	if struct["stageName"] then asserts.AssertStageName(struct["stageName"]) end
	if struct["actionRevision"] then asserts.AssertActionRevision(struct["actionRevision"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutActionRevisionInput[k], "PutActionRevisionInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutActionRevisionInput
-- <p>Represents the input of a PutActionRevision action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * actionName [ActionName] <p>The name of the action that will process the revision.</p>
-- * pipelineName [PipelineName] <p>The name of the pipeline that will start processing the revision to the source.</p>
-- * stageName [StageName] <p>The name of the stage that contains the action that will act upon the revision.</p>
-- * actionRevision [ActionRevision] <p>Represents information about the version (or revision) of an action.</p>
-- Required key: pipelineName
-- Required key: stageName
-- Required key: actionName
-- Required key: actionRevision
-- @return PutActionRevisionInput structure as a key-value pair table
function M.PutActionRevisionInput(args)
	assert(args, "You must provide an argument table when creating PutActionRevisionInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["actionName"] = args["actionName"],
		["pipelineName"] = args["pipelineName"],
		["stageName"] = args["stageName"],
		["actionRevision"] = args["actionRevision"],
	}
	asserts.AssertPutActionRevisionInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetPipelineInput = { ["version"] = true, ["name"] = true, nil }

function asserts.AssertGetPipelineInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetPipelineInput to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	if struct["version"] then asserts.AssertPipelineVersion(struct["version"]) end
	if struct["name"] then asserts.AssertPipelineName(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetPipelineInput[k], "GetPipelineInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetPipelineInput
-- <p>Represents the input of a GetPipeline action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * version [PipelineVersion] <p>The version number of the pipeline. If you do not specify a version, defaults to the most current version.</p>
-- * name [PipelineName] <p>The name of the pipeline for which you want to get information. Pipeline names must be unique under an Amazon Web Services (AWS) user account.</p>
-- Required key: name
-- @return GetPipelineInput structure as a key-value pair table
function M.GetPipelineInput(args)
	assert(args, "You must provide an argument table when creating GetPipelineInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["version"] = args["version"],
		["name"] = args["name"],
	}
	asserts.AssertGetPipelineInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PipelineDeclaration = { ["roleArn"] = true, ["stages"] = true, ["artifactStore"] = true, ["name"] = true, ["version"] = true, nil }

function asserts.AssertPipelineDeclaration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PipelineDeclaration to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["roleArn"], "Expected key roleArn to exist in table")
	assert(struct["artifactStore"], "Expected key artifactStore to exist in table")
	assert(struct["stages"], "Expected key stages to exist in table")
	if struct["roleArn"] then asserts.AssertRoleArn(struct["roleArn"]) end
	if struct["stages"] then asserts.AssertPipelineStageDeclarationList(struct["stages"]) end
	if struct["artifactStore"] then asserts.AssertArtifactStore(struct["artifactStore"]) end
	if struct["name"] then asserts.AssertPipelineName(struct["name"]) end
	if struct["version"] then asserts.AssertPipelineVersion(struct["version"]) end
	for k,_ in pairs(struct) do
		assert(keys.PipelineDeclaration[k], "PipelineDeclaration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PipelineDeclaration
-- <p>Represents the structure of actions and stages to be performed in the pipeline.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * roleArn [RoleArn] <p>The Amazon Resource Name (ARN) for AWS CodePipeline to use to either perform actions with no actionRoleArn, or to use to assume roles for actions with an actionRoleArn.</p>
-- * stages [PipelineStageDeclarationList] <p>The stage in which to perform the action.</p>
-- * artifactStore [ArtifactStore] <p>Represents information about the Amazon S3 bucket where artifacts are stored for the pipeline. </p>
-- * name [PipelineName] <p>The name of the action to be performed.</p>
-- * version [PipelineVersion] <p>The version number of the pipeline. A new pipeline always has a version number of 1. This number is automatically incremented when a pipeline is updated.</p>
-- Required key: name
-- Required key: roleArn
-- Required key: artifactStore
-- Required key: stages
-- @return PipelineDeclaration structure as a key-value pair table
function M.PipelineDeclaration(args)
	assert(args, "You must provide an argument table when creating PipelineDeclaration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["roleArn"] = args["roleArn"],
		["stages"] = args["stages"],
		["artifactStore"] = args["artifactStore"],
		["name"] = args["name"],
		["version"] = args["version"],
	}
	asserts.AssertPipelineDeclaration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteWebhookInput = { ["name"] = true, nil }

function asserts.AssertDeleteWebhookInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteWebhookInput to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	if struct["name"] then asserts.AssertWebhookName(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteWebhookInput[k], "DeleteWebhookInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteWebhookInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * name [WebhookName] <p>The name of the webhook you want to delete.</p>
-- Required key: name
-- @return DeleteWebhookInput structure as a key-value pair table
function M.DeleteWebhookInput(args)
	assert(args, "You must provide an argument table when creating DeleteWebhookInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["name"] = args["name"],
	}
	asserts.AssertDeleteWebhookInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SourceRevision = { ["actionName"] = true, ["revisionId"] = true, ["revisionSummary"] = true, ["revisionUrl"] = true, nil }

function asserts.AssertSourceRevision(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SourceRevision to be of type 'table'")
	assert(struct["actionName"], "Expected key actionName to exist in table")
	if struct["actionName"] then asserts.AssertActionName(struct["actionName"]) end
	if struct["revisionId"] then asserts.AssertRevision(struct["revisionId"]) end
	if struct["revisionSummary"] then asserts.AssertRevisionSummary(struct["revisionSummary"]) end
	if struct["revisionUrl"] then asserts.AssertUrl(struct["revisionUrl"]) end
	for k,_ in pairs(struct) do
		assert(keys.SourceRevision[k], "SourceRevision contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SourceRevision
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * actionName [ActionName] 
-- * revisionId [Revision] 
-- * revisionSummary [RevisionSummary] 
-- * revisionUrl [Url] 
-- Required key: actionName
-- @return SourceRevision structure as a key-value pair table
function M.SourceRevision(args)
	assert(args, "You must provide an argument table when creating SourceRevision")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["actionName"] = args["actionName"],
		["revisionId"] = args["revisionId"],
		["revisionSummary"] = args["revisionSummary"],
		["revisionUrl"] = args["revisionUrl"],
	}
	asserts.AssertSourceRevision(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidNextTokenException = { nil }

function asserts.AssertInvalidNextTokenException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidNextTokenException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidNextTokenException[k], "InvalidNextTokenException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidNextTokenException
-- <p>The next token was specified in an invalid format. Make sure that the next token you provided is the token returned by a previous call.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidNextTokenException structure as a key-value pair table
function M.InvalidNextTokenException(args)
	assert(args, "You must provide an argument table when creating InvalidNextTokenException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertInvalidNextTokenException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PipelineNameInUseException = { nil }

function asserts.AssertPipelineNameInUseException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PipelineNameInUseException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.PipelineNameInUseException[k], "PipelineNameInUseException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PipelineNameInUseException
-- <p>The specified pipeline name is already in use.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return PipelineNameInUseException structure as a key-value pair table
function M.PipelineNameInUseException(args)
	assert(args, "You must provide an argument table when creating PipelineNameInUseException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertPipelineNameInUseException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListWebhookItem = { ["definition"] = true, ["lastTriggered"] = true, ["url"] = true, ["errorMessage"] = true, ["errorCode"] = true, ["arn"] = true, nil }

function asserts.AssertListWebhookItem(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListWebhookItem to be of type 'table'")
	assert(struct["definition"], "Expected key definition to exist in table")
	assert(struct["url"], "Expected key url to exist in table")
	if struct["definition"] then asserts.AssertWebhookDefinition(struct["definition"]) end
	if struct["lastTriggered"] then asserts.AssertWebhookLastTriggered(struct["lastTriggered"]) end
	if struct["url"] then asserts.AssertWebhookUrl(struct["url"]) end
	if struct["errorMessage"] then asserts.AssertWebhookErrorMessage(struct["errorMessage"]) end
	if struct["errorCode"] then asserts.AssertWebhookErrorCode(struct["errorCode"]) end
	if struct["arn"] then asserts.AssertWebhookArn(struct["arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListWebhookItem[k], "ListWebhookItem contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListWebhookItem
-- <p>The detail returned for each webhook after listing webhooks, such as the webhook URL, the webhook name, and the webhook ARN.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * definition [WebhookDefinition] <p>The detail returned for each webhook, such as the webhook authentication type and filter rules.</p>
-- * lastTriggered [WebhookLastTriggered] <p>The date and time a webhook was last successfully triggered, in timestamp format.</p>
-- * url [WebhookUrl] <p>A unique URL generated by CodePipeline. When a POST request is made to this URL, the defined pipeline is started as long as the body of the post request satisfies the defined authentication and filtering conditions. Deleting and re-creating a webhook will make the old URL invalid and generate a new URL.</p>
-- * errorMessage [WebhookErrorMessage] <p>The text of the error message about the webhook.</p>
-- * errorCode [WebhookErrorCode] <p>The number code of the error.</p>
-- * arn [WebhookArn] <p>The Amazon Resource Name (ARN) of the webhook.</p>
-- Required key: definition
-- Required key: url
-- @return ListWebhookItem structure as a key-value pair table
function M.ListWebhookItem(args)
	assert(args, "You must provide an argument table when creating ListWebhookItem")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["definition"] = args["definition"],
		["lastTriggered"] = args["lastTriggered"],
		["url"] = args["url"],
		["errorMessage"] = args["errorMessage"],
		["errorCode"] = args["errorCode"],
		["arn"] = args["arn"],
	}
	asserts.AssertListWebhookItem(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StartPipelineExecutionInput = { ["name"] = true, nil }

function asserts.AssertStartPipelineExecutionInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartPipelineExecutionInput to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	if struct["name"] then asserts.AssertPipelineName(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartPipelineExecutionInput[k], "StartPipelineExecutionInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartPipelineExecutionInput
-- <p>Represents the input of a StartPipelineExecution action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * name [PipelineName] <p>The name of the pipeline to start.</p>
-- Required key: name
-- @return StartPipelineExecutionInput structure as a key-value pair table
function M.StartPipelineExecutionInput(args)
	assert(args, "You must provide an argument table when creating StartPipelineExecutionInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["name"] = args["name"],
	}
	asserts.AssertStartPipelineExecutionInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ActionConfiguration = { ["configuration"] = true, nil }

function asserts.AssertActionConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ActionConfiguration to be of type 'table'")
	if struct["configuration"] then asserts.AssertActionConfigurationMap(struct["configuration"]) end
	for k,_ in pairs(struct) do
		assert(keys.ActionConfiguration[k], "ActionConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ActionConfiguration
-- <p>Represents information about an action configuration.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * configuration [ActionConfigurationMap] <p>The configuration data for the action.</p>
-- @return ActionConfiguration structure as a key-value pair table
function M.ActionConfiguration(args)
	assert(args, "You must provide an argument table when creating ActionConfiguration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["configuration"] = args["configuration"],
	}
	asserts.AssertActionConfiguration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListWebhooksInput = { ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListWebhooksInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListWebhooksInput to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListWebhooksInput[k], "ListWebhooksInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListWebhooksInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>The token that was returned from the previous ListWebhooks call, which can be used to return the next set of webhooks in the list.</p>
-- * MaxResults [MaxResults] <p>The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned nextToken value.</p>
-- @return ListWebhooksInput structure as a key-value pair table
function M.ListWebhooksInput(args)
	assert(args, "You must provide an argument table when creating ListWebhooksInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertListWebhooksInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ArtifactStore = { ["type"] = true, ["location"] = true, ["encryptionKey"] = true, nil }

function asserts.AssertArtifactStore(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ArtifactStore to be of type 'table'")
	assert(struct["type"], "Expected key type to exist in table")
	assert(struct["location"], "Expected key location to exist in table")
	if struct["type"] then asserts.AssertArtifactStoreType(struct["type"]) end
	if struct["location"] then asserts.AssertArtifactStoreLocation(struct["location"]) end
	if struct["encryptionKey"] then asserts.AssertEncryptionKey(struct["encryptionKey"]) end
	for k,_ in pairs(struct) do
		assert(keys.ArtifactStore[k], "ArtifactStore contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ArtifactStore
-- <p>The Amazon S3 bucket where artifacts are stored for the pipeline.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * type [ArtifactStoreType] <p>The type of the artifact store, such as S3.</p>
-- * location [ArtifactStoreLocation] <p>The Amazon S3 bucket used for storing the artifacts for a pipeline. You can specify the name of an S3 bucket but not a folder within the bucket. A folder to contain the pipeline artifacts is created for you based on the name of the pipeline. You can use any Amazon S3 bucket in the same AWS Region as the pipeline to store your pipeline artifacts.</p>
-- * encryptionKey [EncryptionKey] <p>The encryption key used to encrypt the data in the artifact store, such as an AWS Key Management Service (AWS KMS) key. If this is undefined, the default key for Amazon S3 is used.</p>
-- Required key: type
-- Required key: location
-- @return ArtifactStore structure as a key-value pair table
function M.ArtifactStore(args)
	assert(args, "You must provide an argument table when creating ArtifactStore")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["type"] = args["type"],
		["location"] = args["location"],
		["encryptionKey"] = args["encryptionKey"],
	}
	asserts.AssertArtifactStore(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeletePipelineInput = { ["name"] = true, nil }

function asserts.AssertDeletePipelineInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeletePipelineInput to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	if struct["name"] then asserts.AssertPipelineName(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeletePipelineInput[k], "DeletePipelineInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeletePipelineInput
-- <p>Represents the input of a DeletePipeline action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * name [PipelineName] <p>The name of the pipeline to be deleted.</p>
-- Required key: name
-- @return DeletePipelineInput structure as a key-value pair table
function M.DeletePipelineInput(args)
	assert(args, "You must provide an argument table when creating DeletePipelineInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["name"] = args["name"],
	}
	asserts.AssertDeletePipelineInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ThirdPartyJobDetails = { ["nonce"] = true, ["data"] = true, ["id"] = true, nil }

function asserts.AssertThirdPartyJobDetails(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ThirdPartyJobDetails to be of type 'table'")
	if struct["nonce"] then asserts.AssertNonce(struct["nonce"]) end
	if struct["data"] then asserts.AssertThirdPartyJobData(struct["data"]) end
	if struct["id"] then asserts.AssertThirdPartyJobId(struct["id"]) end
	for k,_ in pairs(struct) do
		assert(keys.ThirdPartyJobDetails[k], "ThirdPartyJobDetails contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ThirdPartyJobDetails
-- <p>The details of a job sent in response to a GetThirdPartyJobDetails request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nonce [Nonce] <p>A system-generated random number that AWS CodePipeline uses to ensure that the job is being worked on by only one job worker. Use this number in an <a>AcknowledgeThirdPartyJob</a> request.</p>
-- * data [ThirdPartyJobData] <p>The data to be returned by the third party job worker.</p>
-- * id [ThirdPartyJobId] <p>The identifier used to identify the job details in AWS CodePipeline.</p>
-- @return ThirdPartyJobDetails structure as a key-value pair table
function M.ThirdPartyJobDetails(args)
	assert(args, "You must provide an argument table when creating ThirdPartyJobDetails")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nonce"] = args["nonce"],
		["data"] = args["data"],
		["id"] = args["id"],
	}
	asserts.AssertThirdPartyJobDetails(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.FailureDetails = { ["message"] = true, ["type"] = true, ["externalExecutionId"] = true, nil }

function asserts.AssertFailureDetails(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FailureDetails to be of type 'table'")
	assert(struct["type"], "Expected key type to exist in table")
	assert(struct["message"], "Expected key message to exist in table")
	if struct["message"] then asserts.AssertMessage(struct["message"]) end
	if struct["type"] then asserts.AssertFailureType(struct["type"]) end
	if struct["externalExecutionId"] then asserts.AssertExecutionId(struct["externalExecutionId"]) end
	for k,_ in pairs(struct) do
		assert(keys.FailureDetails[k], "FailureDetails contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FailureDetails
-- <p>Represents information about failure details.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [Message] <p>The message about the failure.</p>
-- * type [FailureType] <p>The type of the failure.</p>
-- * externalExecutionId [ExecutionId] <p>The external ID of the run of the action that failed.</p>
-- Required key: type
-- Required key: message
-- @return FailureDetails structure as a key-value pair table
function M.FailureDetails(args)
	assert(args, "You must provide an argument table when creating FailureDetails")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
		["type"] = args["type"],
		["externalExecutionId"] = args["externalExecutionId"],
	}
	asserts.AssertFailureDetails(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ActionExecution = { ["status"] = true, ["lastStatusChange"] = true, ["externalExecutionId"] = true, ["errorDetails"] = true, ["externalExecutionUrl"] = true, ["summary"] = true, ["token"] = true, ["lastUpdatedBy"] = true, ["percentComplete"] = true, nil }

function asserts.AssertActionExecution(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ActionExecution to be of type 'table'")
	if struct["status"] then asserts.AssertActionExecutionStatus(struct["status"]) end
	if struct["lastStatusChange"] then asserts.AssertTimestamp(struct["lastStatusChange"]) end
	if struct["externalExecutionId"] then asserts.AssertExecutionId(struct["externalExecutionId"]) end
	if struct["errorDetails"] then asserts.AssertErrorDetails(struct["errorDetails"]) end
	if struct["externalExecutionUrl"] then asserts.AssertUrl(struct["externalExecutionUrl"]) end
	if struct["summary"] then asserts.AssertExecutionSummary(struct["summary"]) end
	if struct["token"] then asserts.AssertActionExecutionToken(struct["token"]) end
	if struct["lastUpdatedBy"] then asserts.AssertLastUpdatedBy(struct["lastUpdatedBy"]) end
	if struct["percentComplete"] then asserts.AssertPercentage(struct["percentComplete"]) end
	for k,_ in pairs(struct) do
		assert(keys.ActionExecution[k], "ActionExecution contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ActionExecution
-- <p>Represents information about the run of an action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * status [ActionExecutionStatus] <p>The status of the action, or for a completed action, the last status of the action.</p>
-- * lastStatusChange [Timestamp] <p>The last status change of the action.</p>
-- * externalExecutionId [ExecutionId] <p>The external ID of the run of the action.</p>
-- * errorDetails [ErrorDetails] <p>The details of an error returned by a URL external to AWS.</p>
-- * externalExecutionUrl [Url] <p>The URL of a resource external to AWS that will be used when running the action, for example an external repository URL.</p>
-- * summary [ExecutionSummary] <p>A summary of the run of the action.</p>
-- * token [ActionExecutionToken] <p>The system-generated token used to identify a unique approval request. The token for each open approval request can be obtained using the GetPipelineState command and is used to validate that the approval request corresponding to this token is still valid.</p>
-- * lastUpdatedBy [LastUpdatedBy] <p>The ARN of the user who last changed the pipeline.</p>
-- * percentComplete [Percentage] <p>A percentage of completeness of the action as it runs.</p>
-- @return ActionExecution structure as a key-value pair table
function M.ActionExecution(args)
	assert(args, "You must provide an argument table when creating ActionExecution")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["status"] = args["status"],
		["lastStatusChange"] = args["lastStatusChange"],
		["externalExecutionId"] = args["externalExecutionId"],
		["errorDetails"] = args["errorDetails"],
		["externalExecutionUrl"] = args["externalExecutionUrl"],
		["summary"] = args["summary"],
		["token"] = args["token"],
		["lastUpdatedBy"] = args["lastUpdatedBy"],
		["percentComplete"] = args["percentComplete"],
	}
	asserts.AssertActionExecution(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StartPipelineExecutionOutput = { ["pipelineExecutionId"] = true, nil }

function asserts.AssertStartPipelineExecutionOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartPipelineExecutionOutput to be of type 'table'")
	if struct["pipelineExecutionId"] then asserts.AssertPipelineExecutionId(struct["pipelineExecutionId"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartPipelineExecutionOutput[k], "StartPipelineExecutionOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartPipelineExecutionOutput
-- <p>Represents the output of a StartPipelineExecution action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * pipelineExecutionId [PipelineExecutionId] <p>The unique system-generated ID of the pipeline execution that was started.</p>
-- @return StartPipelineExecutionOutput structure as a key-value pair table
function M.StartPipelineExecutionOutput(args)
	assert(args, "You must provide an argument table when creating StartPipelineExecutionOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["pipelineExecutionId"] = args["pipelineExecutionId"],
	}
	asserts.AssertStartPipelineExecutionOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreatePipelineOutput = { ["pipeline"] = true, nil }

function asserts.AssertCreatePipelineOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreatePipelineOutput to be of type 'table'")
	if struct["pipeline"] then asserts.AssertPipelineDeclaration(struct["pipeline"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreatePipelineOutput[k], "CreatePipelineOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreatePipelineOutput
-- <p>Represents the output of a CreatePipeline action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * pipeline [PipelineDeclaration] <p>Represents the structure of actions and stages to be performed in the pipeline. </p>
-- @return CreatePipelineOutput structure as a key-value pair table
function M.CreatePipelineOutput(args)
	assert(args, "You must provide an argument table when creating CreatePipelineOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["pipeline"] = args["pipeline"],
	}
	asserts.AssertCreatePipelineOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidStageDeclarationException = { nil }

function asserts.AssertInvalidStageDeclarationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidStageDeclarationException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidStageDeclarationException[k], "InvalidStageDeclarationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidStageDeclarationException
-- <p>The specified stage declaration was specified in an invalid format.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidStageDeclarationException structure as a key-value pair table
function M.InvalidStageDeclarationException(args)
	assert(args, "You must provide an argument table when creating InvalidStageDeclarationException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertInvalidStageDeclarationException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ActionNotFoundException = { nil }

function asserts.AssertActionNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ActionNotFoundException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ActionNotFoundException[k], "ActionNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ActionNotFoundException
-- <p>The specified action cannot be found.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return ActionNotFoundException structure as a key-value pair table
function M.ActionNotFoundException(args)
	assert(args, "You must provide an argument table when creating ActionNotFoundException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertActionNotFoundException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ActionRevision = { ["revisionChangeId"] = true, ["revisionId"] = true, ["created"] = true, nil }

function asserts.AssertActionRevision(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ActionRevision to be of type 'table'")
	assert(struct["revisionId"], "Expected key revisionId to exist in table")
	assert(struct["revisionChangeId"], "Expected key revisionChangeId to exist in table")
	assert(struct["created"], "Expected key created to exist in table")
	if struct["revisionChangeId"] then asserts.AssertRevisionChangeIdentifier(struct["revisionChangeId"]) end
	if struct["revisionId"] then asserts.AssertRevision(struct["revisionId"]) end
	if struct["created"] then asserts.AssertTimestamp(struct["created"]) end
	for k,_ in pairs(struct) do
		assert(keys.ActionRevision[k], "ActionRevision contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ActionRevision
-- <p>Represents information about the version (or revision) of an action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * revisionChangeId [RevisionChangeIdentifier] <p>The unique identifier of the change that set the state to this revision, for example a deployment ID or timestamp.</p>
-- * revisionId [Revision] <p>The system-generated unique ID that identifies the revision number of the action.</p>
-- * created [Timestamp] <p>The date and time when the most recent version of the action was created, in timestamp format.</p>
-- Required key: revisionId
-- Required key: revisionChangeId
-- Required key: created
-- @return ActionRevision structure as a key-value pair table
function M.ActionRevision(args)
	assert(args, "You must provide an argument table when creating ActionRevision")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["revisionChangeId"] = args["revisionChangeId"],
		["revisionId"] = args["revisionId"],
		["created"] = args["created"],
	}
	asserts.AssertActionRevision(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutJobFailureResultInput = { ["failureDetails"] = true, ["jobId"] = true, nil }

function asserts.AssertPutJobFailureResultInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutJobFailureResultInput to be of type 'table'")
	assert(struct["jobId"], "Expected key jobId to exist in table")
	assert(struct["failureDetails"], "Expected key failureDetails to exist in table")
	if struct["failureDetails"] then asserts.AssertFailureDetails(struct["failureDetails"]) end
	if struct["jobId"] then asserts.AssertJobId(struct["jobId"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutJobFailureResultInput[k], "PutJobFailureResultInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutJobFailureResultInput
-- <p>Represents the input of a PutJobFailureResult action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * failureDetails [FailureDetails] <p>The details about the failure of a job.</p>
-- * jobId [JobId] <p>The unique system-generated ID of the job that failed. This is the same ID returned from PollForJobs.</p>
-- Required key: jobId
-- Required key: failureDetails
-- @return PutJobFailureResultInput structure as a key-value pair table
function M.PutJobFailureResultInput(args)
	assert(args, "You must provide an argument table when creating PutJobFailureResultInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["failureDetails"] = args["failureDetails"],
		["jobId"] = args["jobId"],
	}
	asserts.AssertPutJobFailureResultInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListPipelinesInput = { ["nextToken"] = true, nil }

function asserts.AssertListPipelinesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPipelinesInput to be of type 'table'")
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListPipelinesInput[k], "ListPipelinesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPipelinesInput
-- <p>Represents the input of a ListPipelines action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [NextToken] <p>An identifier that was returned from the previous list pipelines call, which can be used to return the next set of pipelines in the list.</p>
-- @return ListPipelinesInput structure as a key-value pair table
function M.ListPipelinesInput(args)
	assert(args, "You must provide an argument table when creating ListPipelinesInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
	}
	asserts.AssertListPipelinesInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteCustomActionTypeInput = { ["category"] = true, ["version"] = true, ["provider"] = true, nil }

function asserts.AssertDeleteCustomActionTypeInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteCustomActionTypeInput to be of type 'table'")
	assert(struct["category"], "Expected key category to exist in table")
	assert(struct["provider"], "Expected key provider to exist in table")
	assert(struct["version"], "Expected key version to exist in table")
	if struct["category"] then asserts.AssertActionCategory(struct["category"]) end
	if struct["version"] then asserts.AssertVersion(struct["version"]) end
	if struct["provider"] then asserts.AssertActionProvider(struct["provider"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteCustomActionTypeInput[k], "DeleteCustomActionTypeInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteCustomActionTypeInput
-- <p>Represents the input of a DeleteCustomActionType operation. The custom action will be marked as deleted.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * category [ActionCategory] <p>The category of the custom action that you want to delete, such as source or deploy.</p>
-- * version [Version] <p>The version of the custom action to delete.</p>
-- * provider [ActionProvider] <p>The provider of the service used in the custom action, such as AWS CodeDeploy.</p>
-- Required key: category
-- Required key: provider
-- Required key: version
-- @return DeleteCustomActionTypeInput structure as a key-value pair table
function M.DeleteCustomActionTypeInput(args)
	assert(args, "You must provide an argument table when creating DeleteCustomActionTypeInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["category"] = args["category"],
		["version"] = args["version"],
		["provider"] = args["provider"],
	}
	asserts.AssertDeleteCustomActionTypeInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AcknowledgeThirdPartyJobInput = { ["nonce"] = true, ["clientToken"] = true, ["jobId"] = true, nil }

function asserts.AssertAcknowledgeThirdPartyJobInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AcknowledgeThirdPartyJobInput to be of type 'table'")
	assert(struct["jobId"], "Expected key jobId to exist in table")
	assert(struct["nonce"], "Expected key nonce to exist in table")
	assert(struct["clientToken"], "Expected key clientToken to exist in table")
	if struct["nonce"] then asserts.AssertNonce(struct["nonce"]) end
	if struct["clientToken"] then asserts.AssertClientToken(struct["clientToken"]) end
	if struct["jobId"] then asserts.AssertThirdPartyJobId(struct["jobId"]) end
	for k,_ in pairs(struct) do
		assert(keys.AcknowledgeThirdPartyJobInput[k], "AcknowledgeThirdPartyJobInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AcknowledgeThirdPartyJobInput
-- <p>Represents the input of an AcknowledgeThirdPartyJob action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nonce [Nonce] <p>A system-generated random number that AWS CodePipeline uses to ensure that the job is being worked on by only one job worker. Get this number from the response to a <a>GetThirdPartyJobDetails</a> request.</p>
-- * clientToken [ClientToken] <p>The clientToken portion of the clientId and clientToken pair used to verify that the calling entity is allowed access to the job and its details.</p>
-- * jobId [ThirdPartyJobId] <p>The unique system-generated ID of the job.</p>
-- Required key: jobId
-- Required key: nonce
-- Required key: clientToken
-- @return AcknowledgeThirdPartyJobInput structure as a key-value pair table
function M.AcknowledgeThirdPartyJobInput(args)
	assert(args, "You must provide an argument table when creating AcknowledgeThirdPartyJobInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nonce"] = args["nonce"],
		["clientToken"] = args["clientToken"],
		["jobId"] = args["jobId"],
	}
	asserts.AssertAcknowledgeThirdPartyJobInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutThirdPartyJobFailureResultInput = { ["clientToken"] = true, ["failureDetails"] = true, ["jobId"] = true, nil }

function asserts.AssertPutThirdPartyJobFailureResultInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutThirdPartyJobFailureResultInput to be of type 'table'")
	assert(struct["jobId"], "Expected key jobId to exist in table")
	assert(struct["clientToken"], "Expected key clientToken to exist in table")
	assert(struct["failureDetails"], "Expected key failureDetails to exist in table")
	if struct["clientToken"] then asserts.AssertClientToken(struct["clientToken"]) end
	if struct["failureDetails"] then asserts.AssertFailureDetails(struct["failureDetails"]) end
	if struct["jobId"] then asserts.AssertThirdPartyJobId(struct["jobId"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutThirdPartyJobFailureResultInput[k], "PutThirdPartyJobFailureResultInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutThirdPartyJobFailureResultInput
-- <p>Represents the input of a PutThirdPartyJobFailureResult action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * clientToken [ClientToken] <p>The clientToken portion of the clientId and clientToken pair used to verify that the calling entity is allowed access to the job and its details.</p>
-- * failureDetails [FailureDetails] <p>Represents information about failure details.</p>
-- * jobId [ThirdPartyJobId] <p>The ID of the job that failed. This is the same ID returned from PollForThirdPartyJobs.</p>
-- Required key: jobId
-- Required key: clientToken
-- Required key: failureDetails
-- @return PutThirdPartyJobFailureResultInput structure as a key-value pair table
function M.PutThirdPartyJobFailureResultInput(args)
	assert(args, "You must provide an argument table when creating PutThirdPartyJobFailureResultInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["clientToken"] = args["clientToken"],
		["failureDetails"] = args["failureDetails"],
		["jobId"] = args["jobId"],
	}
	asserts.AssertPutThirdPartyJobFailureResultInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AWSSessionCredentials = { ["secretAccessKey"] = true, ["sessionToken"] = true, ["accessKeyId"] = true, nil }

function asserts.AssertAWSSessionCredentials(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AWSSessionCredentials to be of type 'table'")
	assert(struct["accessKeyId"], "Expected key accessKeyId to exist in table")
	assert(struct["secretAccessKey"], "Expected key secretAccessKey to exist in table")
	assert(struct["sessionToken"], "Expected key sessionToken to exist in table")
	if struct["secretAccessKey"] then asserts.AssertSecretAccessKey(struct["secretAccessKey"]) end
	if struct["sessionToken"] then asserts.AssertSessionToken(struct["sessionToken"]) end
	if struct["accessKeyId"] then asserts.AssertAccessKeyId(struct["accessKeyId"]) end
	for k,_ in pairs(struct) do
		assert(keys.AWSSessionCredentials[k], "AWSSessionCredentials contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AWSSessionCredentials
-- <p>Represents an AWS session credentials object. These credentials are temporary credentials that are issued by AWS Secure Token Service (STS). They can be used to access input and output artifacts in the Amazon S3 bucket used to store artifact for the pipeline in AWS CodePipeline.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * secretAccessKey [SecretAccessKey] <p>The secret access key for the session.</p>
-- * sessionToken [SessionToken] <p>The token for the session.</p>
-- * accessKeyId [AccessKeyId] <p>The access key for the session.</p>
-- Required key: accessKeyId
-- Required key: secretAccessKey
-- Required key: sessionToken
-- @return AWSSessionCredentials structure as a key-value pair table
function M.AWSSessionCredentials(args)
	assert(args, "You must provide an argument table when creating AWSSessionCredentials")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["secretAccessKey"] = args["secretAccessKey"],
		["sessionToken"] = args["sessionToken"],
		["accessKeyId"] = args["accessKeyId"],
	}
	asserts.AssertAWSSessionCredentials(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.S3ArtifactLocation = { ["objectKey"] = true, ["bucketName"] = true, nil }

function asserts.AssertS3ArtifactLocation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected S3ArtifactLocation to be of type 'table'")
	assert(struct["bucketName"], "Expected key bucketName to exist in table")
	assert(struct["objectKey"], "Expected key objectKey to exist in table")
	if struct["objectKey"] then asserts.AssertS3ObjectKey(struct["objectKey"]) end
	if struct["bucketName"] then asserts.AssertS3BucketName(struct["bucketName"]) end
	for k,_ in pairs(struct) do
		assert(keys.S3ArtifactLocation[k], "S3ArtifactLocation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type S3ArtifactLocation
-- <p>The location of the Amazon S3 bucket that contains a revision.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * objectKey [S3ObjectKey] <p>The key of the object in the Amazon S3 bucket, which uniquely identifies the object in the bucket.</p>
-- * bucketName [S3BucketName] <p>The name of the Amazon S3 bucket.</p>
-- Required key: bucketName
-- Required key: objectKey
-- @return S3ArtifactLocation structure as a key-value pair table
function M.S3ArtifactLocation(args)
	assert(args, "You must provide an argument table when creating S3ArtifactLocation")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["objectKey"] = args["objectKey"],
		["bucketName"] = args["bucketName"],
	}
	asserts.AssertS3ArtifactLocation(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidJobStateException = { nil }

function asserts.AssertInvalidJobStateException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidJobStateException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidJobStateException[k], "InvalidJobStateException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidJobStateException
-- <p>The specified job state was specified in an invalid format.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidJobStateException structure as a key-value pair table
function M.InvalidJobStateException(args)
	assert(args, "You must provide an argument table when creating InvalidJobStateException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertInvalidJobStateException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ErrorDetails = { ["message"] = true, ["code"] = true, nil }

function asserts.AssertErrorDetails(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ErrorDetails to be of type 'table'")
	if struct["message"] then asserts.AssertMessage(struct["message"]) end
	if struct["code"] then asserts.AssertCode(struct["code"]) end
	for k,_ in pairs(struct) do
		assert(keys.ErrorDetails[k], "ErrorDetails contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ErrorDetails
-- <p>Represents information about an error in AWS CodePipeline.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [Message] <p>The text of the error message.</p>
-- * code [Code] <p>The system ID or error number code of the error.</p>
-- @return ErrorDetails structure as a key-value pair table
function M.ErrorDetails(args)
	assert(args, "You must provide an argument table when creating ErrorDetails")
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
	asserts.AssertErrorDetails(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListPipelineExecutionsInput = { ["nextToken"] = true, ["pipelineName"] = true, ["maxResults"] = true, nil }

function asserts.AssertListPipelineExecutionsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPipelineExecutionsInput to be of type 'table'")
	assert(struct["pipelineName"], "Expected key pipelineName to exist in table")
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["pipelineName"] then asserts.AssertPipelineName(struct["pipelineName"]) end
	if struct["maxResults"] then asserts.AssertMaxResults(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListPipelineExecutionsInput[k], "ListPipelineExecutionsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPipelineExecutionsInput
-- <p>Represents the input of a ListPipelineExecutions action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [NextToken] <p>The token that was returned from the previous ListPipelineExecutions call, which can be used to return the next set of pipeline executions in the list.</p>
-- * pipelineName [PipelineName] <p>The name of the pipeline for which you want to get execution summary information.</p>
-- * maxResults [MaxResults] <p>The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned nextToken value. The available pipeline execution history is limited to the most recent 12 months, based on pipeline execution start times. Default value is 100.</p>
-- Required key: pipelineName
-- @return ListPipelineExecutionsInput structure as a key-value pair table
function M.ListPipelineExecutionsInput(args)
	assert(args, "You must provide an argument table when creating ListPipelineExecutionsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["pipelineName"] = args["pipelineName"],
		["maxResults"] = args["maxResults"],
	}
	asserts.AssertListPipelineExecutionsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListActionTypesOutput = { ["actionTypes"] = true, ["nextToken"] = true, nil }

function asserts.AssertListActionTypesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListActionTypesOutput to be of type 'table'")
	assert(struct["actionTypes"], "Expected key actionTypes to exist in table")
	if struct["actionTypes"] then asserts.AssertActionTypeList(struct["actionTypes"]) end
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListActionTypesOutput[k], "ListActionTypesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListActionTypesOutput
-- <p>Represents the output of a ListActionTypes action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * actionTypes [ActionTypeList] <p>Provides details of the action types.</p>
-- * nextToken [NextToken] <p>If the amount of returned information is significantly large, an identifier is also returned which can be used in a subsequent list action types call to return the next set of action types in the list.</p>
-- Required key: actionTypes
-- @return ListActionTypesOutput structure as a key-value pair table
function M.ListActionTypesOutput(args)
	assert(args, "You must provide an argument table when creating ListActionTypesOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["actionTypes"] = args["actionTypes"],
		["nextToken"] = args["nextToken"],
	}
	asserts.AssertListActionTypesOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ApprovalResult = { ["status"] = true, ["summary"] = true, nil }

function asserts.AssertApprovalResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ApprovalResult to be of type 'table'")
	assert(struct["summary"], "Expected key summary to exist in table")
	assert(struct["status"], "Expected key status to exist in table")
	if struct["status"] then asserts.AssertApprovalStatus(struct["status"]) end
	if struct["summary"] then asserts.AssertApprovalSummary(struct["summary"]) end
	for k,_ in pairs(struct) do
		assert(keys.ApprovalResult[k], "ApprovalResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ApprovalResult
-- <p>Represents information about the result of an approval request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * status [ApprovalStatus] <p>The response submitted by a reviewer assigned to an approval action request.</p>
-- * summary [ApprovalSummary] <p>The summary of the current status of the approval request.</p>
-- Required key: summary
-- Required key: status
-- @return ApprovalResult structure as a key-value pair table
function M.ApprovalResult(args)
	assert(args, "You must provide an argument table when creating ApprovalResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["status"] = args["status"],
		["summary"] = args["summary"],
	}
	asserts.AssertApprovalResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.OutputArtifact = { ["name"] = true, nil }

function asserts.AssertOutputArtifact(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OutputArtifact to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	if struct["name"] then asserts.AssertArtifactName(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(keys.OutputArtifact[k], "OutputArtifact contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OutputArtifact
-- <p>Represents information about the output of an action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * name [ArtifactName] <p>The name of the output of an artifact, such as "My App".</p> <p>The input artifact of an action must exactly match the output artifact declared in a preceding action, but the input artifact does not have to be the next action in strict sequence from the action that provided the output artifact. Actions in parallel can declare different output artifacts, which are in turn consumed by different following actions.</p> <p>Output artifact names must be unique within a pipeline.</p>
-- Required key: name
-- @return OutputArtifact structure as a key-value pair table
function M.OutputArtifact(args)
	assert(args, "You must provide an argument table when creating OutputArtifact")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["name"] = args["name"],
	}
	asserts.AssertOutputArtifact(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutWebhookInput = { ["webhook"] = true, nil }

function asserts.AssertPutWebhookInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutWebhookInput to be of type 'table'")
	assert(struct["webhook"], "Expected key webhook to exist in table")
	if struct["webhook"] then asserts.AssertWebhookDefinition(struct["webhook"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutWebhookInput[k], "PutWebhookInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutWebhookInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * webhook [WebhookDefinition] <p>The detail provided in an input file to create the webhook, such as the webhook name, the pipeline name, and the action name. Give the webhook a unique name which identifies the webhook being defined. You may choose to name the webhook after the pipeline and action it targets so that you can easily recognize what it's used for later.</p>
-- Required key: webhook
-- @return PutWebhookInput structure as a key-value pair table
function M.PutWebhookInput(args)
	assert(args, "You must provide an argument table when creating PutWebhookInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["webhook"] = args["webhook"],
	}
	asserts.AssertPutWebhookInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EncryptionKey = { ["type"] = true, ["id"] = true, nil }

function asserts.AssertEncryptionKey(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EncryptionKey to be of type 'table'")
	assert(struct["id"], "Expected key id to exist in table")
	assert(struct["type"], "Expected key type to exist in table")
	if struct["type"] then asserts.AssertEncryptionKeyType(struct["type"]) end
	if struct["id"] then asserts.AssertEncryptionKeyId(struct["id"]) end
	for k,_ in pairs(struct) do
		assert(keys.EncryptionKey[k], "EncryptionKey contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EncryptionKey
-- <p>Represents information about the key used to encrypt data in the artifact store, such as an AWS Key Management Service (AWS KMS) key.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * type [EncryptionKeyType] <p>The type of encryption key, such as an AWS Key Management Service (AWS KMS) key. When creating or updating a pipeline, the value must be set to 'KMS'.</p>
-- * id [EncryptionKeyId] <p>The ID used to identify the key. For an AWS KMS key, this is the key ID or key ARN.</p>
-- Required key: id
-- Required key: type
-- @return EncryptionKey structure as a key-value pair table
function M.EncryptionKey(args)
	assert(args, "You must provide an argument table when creating EncryptionKey")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["type"] = args["type"],
		["id"] = args["id"],
	}
	asserts.AssertEncryptionKey(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidClientTokenException = { nil }

function asserts.AssertInvalidClientTokenException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidClientTokenException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidClientTokenException[k], "InvalidClientTokenException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidClientTokenException
-- <p>The client token was specified in an invalid format</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidClientTokenException structure as a key-value pair table
function M.InvalidClientTokenException(args)
	assert(args, "You must provide an argument table when creating InvalidClientTokenException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertInvalidClientTokenException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ValidationException = { nil }

function asserts.AssertValidationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ValidationException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ValidationException[k], "ValidationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ValidationException
-- <p>The validation was specified in an invalid format.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return ValidationException structure as a key-value pair table
function M.ValidationException(args)
	assert(args, "You must provide an argument table when creating ValidationException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertValidationException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetJobDetailsInput = { ["jobId"] = true, nil }

function asserts.AssertGetJobDetailsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetJobDetailsInput to be of type 'table'")
	assert(struct["jobId"], "Expected key jobId to exist in table")
	if struct["jobId"] then asserts.AssertJobId(struct["jobId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetJobDetailsInput[k], "GetJobDetailsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetJobDetailsInput
-- <p>Represents the input of a GetJobDetails action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * jobId [JobId] <p>The unique system-generated ID for the job.</p>
-- Required key: jobId
-- @return GetJobDetailsInput structure as a key-value pair table
function M.GetJobDetailsInput(args)
	assert(args, "You must provide an argument table when creating GetJobDetailsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["jobId"] = args["jobId"],
	}
	asserts.AssertGetJobDetailsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PollForThirdPartyJobsOutput = { ["jobs"] = true, nil }

function asserts.AssertPollForThirdPartyJobsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PollForThirdPartyJobsOutput to be of type 'table'")
	if struct["jobs"] then asserts.AssertThirdPartyJobList(struct["jobs"]) end
	for k,_ in pairs(struct) do
		assert(keys.PollForThirdPartyJobsOutput[k], "PollForThirdPartyJobsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PollForThirdPartyJobsOutput
-- <p>Represents the output of a PollForThirdPartyJobs action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * jobs [ThirdPartyJobList] <p>Information about the jobs to take action on.</p>
-- @return PollForThirdPartyJobsOutput structure as a key-value pair table
function M.PollForThirdPartyJobsOutput(args)
	assert(args, "You must provide an argument table when creating PollForThirdPartyJobsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["jobs"] = args["jobs"],
	}
	asserts.AssertPollForThirdPartyJobsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RetryStageExecutionInput = { ["pipelineExecutionId"] = true, ["retryMode"] = true, ["pipelineName"] = true, ["stageName"] = true, nil }

function asserts.AssertRetryStageExecutionInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RetryStageExecutionInput to be of type 'table'")
	assert(struct["pipelineName"], "Expected key pipelineName to exist in table")
	assert(struct["stageName"], "Expected key stageName to exist in table")
	assert(struct["pipelineExecutionId"], "Expected key pipelineExecutionId to exist in table")
	assert(struct["retryMode"], "Expected key retryMode to exist in table")
	if struct["pipelineExecutionId"] then asserts.AssertPipelineExecutionId(struct["pipelineExecutionId"]) end
	if struct["retryMode"] then asserts.AssertStageRetryMode(struct["retryMode"]) end
	if struct["pipelineName"] then asserts.AssertPipelineName(struct["pipelineName"]) end
	if struct["stageName"] then asserts.AssertStageName(struct["stageName"]) end
	for k,_ in pairs(struct) do
		assert(keys.RetryStageExecutionInput[k], "RetryStageExecutionInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RetryStageExecutionInput
-- <p>Represents the input of a RetryStageExecution action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * pipelineExecutionId [PipelineExecutionId] <p>The ID of the pipeline execution in the failed stage to be retried. Use the <a>GetPipelineState</a> action to retrieve the current pipelineExecutionId of the failed stage</p>
-- * retryMode [StageRetryMode] <p>The scope of the retry attempt. Currently, the only supported value is FAILED_ACTIONS.</p>
-- * pipelineName [PipelineName] <p>The name of the pipeline that contains the failed stage.</p>
-- * stageName [StageName] <p>The name of the failed stage to be retried.</p>
-- Required key: pipelineName
-- Required key: stageName
-- Required key: pipelineExecutionId
-- Required key: retryMode
-- @return RetryStageExecutionInput structure as a key-value pair table
function M.RetryStageExecutionInput(args)
	assert(args, "You must provide an argument table when creating RetryStageExecutionInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["pipelineExecutionId"] = args["pipelineExecutionId"],
		["retryMode"] = args["retryMode"],
		["pipelineName"] = args["pipelineName"],
		["stageName"] = args["stageName"],
	}
	asserts.AssertRetryStageExecutionInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.WebhookDefinition = { ["authenticationConfiguration"] = true, ["name"] = true, ["authentication"] = true, ["targetPipeline"] = true, ["targetAction"] = true, ["filters"] = true, nil }

function asserts.AssertWebhookDefinition(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WebhookDefinition to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["targetPipeline"], "Expected key targetPipeline to exist in table")
	assert(struct["targetAction"], "Expected key targetAction to exist in table")
	assert(struct["filters"], "Expected key filters to exist in table")
	assert(struct["authentication"], "Expected key authentication to exist in table")
	assert(struct["authenticationConfiguration"], "Expected key authenticationConfiguration to exist in table")
	if struct["authenticationConfiguration"] then asserts.AssertWebhookAuthConfiguration(struct["authenticationConfiguration"]) end
	if struct["name"] then asserts.AssertWebhookName(struct["name"]) end
	if struct["authentication"] then asserts.AssertWebhookAuthenticationType(struct["authentication"]) end
	if struct["targetPipeline"] then asserts.AssertPipelineName(struct["targetPipeline"]) end
	if struct["targetAction"] then asserts.AssertActionName(struct["targetAction"]) end
	if struct["filters"] then asserts.AssertWebhookFilters(struct["filters"]) end
	for k,_ in pairs(struct) do
		assert(keys.WebhookDefinition[k], "WebhookDefinition contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WebhookDefinition
-- <p>Represents information about a webhook and its definition.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * authenticationConfiguration [WebhookAuthConfiguration] <p>Properties that configure the authentication applied to incoming webhook trigger requests. The required properties depend on the authentication type. For GITHUB_HMAC, only the SecretToken property must be set. For IP, only the AllowedIPRange property must be set to a valid CIDR range. For UNAUTHENTICATED, no properties can be set.</p>
-- * name [WebhookName] <p>The name of the webhook.</p>
-- * authentication [WebhookAuthenticationType] <p>Supported options are GITHUB_HMAC, IP and UNAUTHENTICATED.</p> <ul> <li> <p> GITHUB_HMAC implements the authentication scheme described here: https://developer.github.com/webhooks/securing/</p> </li> <li> <p> IP will reject webhooks trigger requests unless they originate from an IP within the IP range whitelisted in the authentication configuration.</p> </li> <li> <p> UNAUTHENTICATED will accept all webhook trigger requests regardless of origin.</p> </li> </ul>
-- * targetPipeline [PipelineName] <p>The name of the pipeline you want to connect to the webhook.</p>
-- * targetAction [ActionName] <p>The name of the action in a pipeline you want to connect to the webhook. The action must be from the source (first) stage of the pipeline.</p>
-- * filters [WebhookFilters] <p>A list of rules applied to the body/payload sent in the POST request to a webhook URL. All defined rules must pass for the request to be accepted and the pipeline started.</p>
-- Required key: name
-- Required key: targetPipeline
-- Required key: targetAction
-- Required key: filters
-- Required key: authentication
-- Required key: authenticationConfiguration
-- @return WebhookDefinition structure as a key-value pair table
function M.WebhookDefinition(args)
	assert(args, "You must provide an argument table when creating WebhookDefinition")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["authenticationConfiguration"] = args["authenticationConfiguration"],
		["name"] = args["name"],
		["authentication"] = args["authentication"],
		["targetPipeline"] = args["targetPipeline"],
		["targetAction"] = args["targetAction"],
		["filters"] = args["filters"],
	}
	asserts.AssertWebhookDefinition(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetThirdPartyJobDetailsOutput = { ["jobDetails"] = true, nil }

function asserts.AssertGetThirdPartyJobDetailsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetThirdPartyJobDetailsOutput to be of type 'table'")
	if struct["jobDetails"] then asserts.AssertThirdPartyJobDetails(struct["jobDetails"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetThirdPartyJobDetailsOutput[k], "GetThirdPartyJobDetailsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetThirdPartyJobDetailsOutput
-- <p>Represents the output of a GetThirdPartyJobDetails action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * jobDetails [ThirdPartyJobDetails] <p>The details of the job, including any protected values defined for the job.</p>
-- @return GetThirdPartyJobDetailsOutput structure as a key-value pair table
function M.GetThirdPartyJobDetailsOutput(args)
	assert(args, "You must provide an argument table when creating GetThirdPartyJobDetailsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["jobDetails"] = args["jobDetails"],
	}
	asserts.AssertGetThirdPartyJobDetailsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ExecutionDetails = { ["percentComplete"] = true, ["externalExecutionId"] = true, ["summary"] = true, nil }

function asserts.AssertExecutionDetails(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ExecutionDetails to be of type 'table'")
	if struct["percentComplete"] then asserts.AssertPercentage(struct["percentComplete"]) end
	if struct["externalExecutionId"] then asserts.AssertExecutionId(struct["externalExecutionId"]) end
	if struct["summary"] then asserts.AssertExecutionSummary(struct["summary"]) end
	for k,_ in pairs(struct) do
		assert(keys.ExecutionDetails[k], "ExecutionDetails contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ExecutionDetails
-- <p>The details of the actions taken and results produced on an artifact as it passes through stages in the pipeline.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * percentComplete [Percentage] <p>The percentage of work completed on the action, represented on a scale of zero to one hundred percent.</p>
-- * externalExecutionId [ExecutionId] <p>The system-generated unique ID of this action used to identify this job worker in any external systems, such as AWS CodeDeploy.</p>
-- * summary [ExecutionSummary] <p>The summary of the current status of the actions.</p>
-- @return ExecutionDetails structure as a key-value pair table
function M.ExecutionDetails(args)
	assert(args, "You must provide an argument table when creating ExecutionDetails")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["percentComplete"] = args["percentComplete"],
		["externalExecutionId"] = args["externalExecutionId"],
		["summary"] = args["summary"],
	}
	asserts.AssertExecutionDetails(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ArtifactLocation = { ["type"] = true, ["s3Location"] = true, nil }

function asserts.AssertArtifactLocation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ArtifactLocation to be of type 'table'")
	if struct["type"] then asserts.AssertArtifactLocationType(struct["type"]) end
	if struct["s3Location"] then asserts.AssertS3ArtifactLocation(struct["s3Location"]) end
	for k,_ in pairs(struct) do
		assert(keys.ArtifactLocation[k], "ArtifactLocation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ArtifactLocation
-- <p>Represents information about the location of an artifact.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * type [ArtifactLocationType] <p>The type of artifact in the location.</p>
-- * s3Location [S3ArtifactLocation] <p>The Amazon S3 bucket that contains the artifact.</p>
-- @return ArtifactLocation structure as a key-value pair table
function M.ArtifactLocation(args)
	assert(args, "You must provide an argument table when creating ArtifactLocation")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["type"] = args["type"],
		["s3Location"] = args["s3Location"],
	}
	asserts.AssertArtifactLocation(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ActionDeclaration = { ["inputArtifacts"] = true, ["name"] = true, ["roleArn"] = true, ["actionTypeId"] = true, ["outputArtifacts"] = true, ["configuration"] = true, ["runOrder"] = true, nil }

function asserts.AssertActionDeclaration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ActionDeclaration to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["actionTypeId"], "Expected key actionTypeId to exist in table")
	if struct["inputArtifacts"] then asserts.AssertInputArtifactList(struct["inputArtifacts"]) end
	if struct["name"] then asserts.AssertActionName(struct["name"]) end
	if struct["roleArn"] then asserts.AssertRoleArn(struct["roleArn"]) end
	if struct["actionTypeId"] then asserts.AssertActionTypeId(struct["actionTypeId"]) end
	if struct["outputArtifacts"] then asserts.AssertOutputArtifactList(struct["outputArtifacts"]) end
	if struct["configuration"] then asserts.AssertActionConfigurationMap(struct["configuration"]) end
	if struct["runOrder"] then asserts.AssertActionRunOrder(struct["runOrder"]) end
	for k,_ in pairs(struct) do
		assert(keys.ActionDeclaration[k], "ActionDeclaration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ActionDeclaration
-- <p>Represents information about an action declaration.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * inputArtifacts [InputArtifactList] <p>The name or ID of the artifact consumed by the action, such as a test or build artifact.</p>
-- * name [ActionName] <p>The action declaration's name.</p>
-- * roleArn [RoleArn] <p>The ARN of the IAM service role that will perform the declared action. This is assumed through the roleArn for the pipeline.</p>
-- * actionTypeId [ActionTypeId] <p>The configuration information for the action type.</p>
-- * outputArtifacts [OutputArtifactList] <p>The name or ID of the result of the action declaration, such as a test or build artifact.</p>
-- * configuration [ActionConfigurationMap] <p>The action declaration's configuration.</p>
-- * runOrder [ActionRunOrder] <p>The order in which actions are run.</p>
-- Required key: name
-- Required key: actionTypeId
-- @return ActionDeclaration structure as a key-value pair table
function M.ActionDeclaration(args)
	assert(args, "You must provide an argument table when creating ActionDeclaration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["inputArtifacts"] = args["inputArtifacts"],
		["name"] = args["name"],
		["roleArn"] = args["roleArn"],
		["actionTypeId"] = args["actionTypeId"],
		["outputArtifacts"] = args["outputArtifacts"],
		["configuration"] = args["configuration"],
		["runOrder"] = args["runOrder"],
	}
	asserts.AssertActionDeclaration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidBlockerDeclarationException = { nil }

function asserts.AssertInvalidBlockerDeclarationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidBlockerDeclarationException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidBlockerDeclarationException[k], "InvalidBlockerDeclarationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidBlockerDeclarationException
-- <p>Reserved for future use.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidBlockerDeclarationException structure as a key-value pair table
function M.InvalidBlockerDeclarationException(args)
	assert(args, "You must provide an argument table when creating InvalidBlockerDeclarationException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertInvalidBlockerDeclarationException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StageContext = { ["name"] = true, nil }

function asserts.AssertStageContext(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StageContext to be of type 'table'")
	if struct["name"] then asserts.AssertStageName(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(keys.StageContext[k], "StageContext contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StageContext
-- <p>Represents information about a stage to a job worker.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * name [StageName] <p>The name of the stage.</p>
-- @return StageContext structure as a key-value pair table
function M.StageContext(args)
	assert(args, "You must provide an argument table when creating StageContext")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["name"] = args["name"],
	}
	asserts.AssertStageContext(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ActionTypeSettings = { ["entityUrlTemplate"] = true, ["revisionUrlTemplate"] = true, ["thirdPartyConfigurationUrl"] = true, ["executionUrlTemplate"] = true, nil }

function asserts.AssertActionTypeSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ActionTypeSettings to be of type 'table'")
	if struct["entityUrlTemplate"] then asserts.AssertUrlTemplate(struct["entityUrlTemplate"]) end
	if struct["revisionUrlTemplate"] then asserts.AssertUrlTemplate(struct["revisionUrlTemplate"]) end
	if struct["thirdPartyConfigurationUrl"] then asserts.AssertUrl(struct["thirdPartyConfigurationUrl"]) end
	if struct["executionUrlTemplate"] then asserts.AssertUrlTemplate(struct["executionUrlTemplate"]) end
	for k,_ in pairs(struct) do
		assert(keys.ActionTypeSettings[k], "ActionTypeSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ActionTypeSettings
-- <p>Returns information about the settings for an action type.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * entityUrlTemplate [UrlTemplate] <p>The URL returned to the AWS CodePipeline console that provides a deep link to the resources of the external system, such as the configuration page for an AWS CodeDeploy deployment group. This link is provided as part of the action display within the pipeline.</p>
-- * revisionUrlTemplate [UrlTemplate] <p>The URL returned to the AWS CodePipeline console that contains a link to the page where customers can update or change the configuration of the external action.</p>
-- * thirdPartyConfigurationUrl [Url] <p>The URL of a sign-up page where users can sign up for an external service and perform initial configuration of the action provided by that service.</p>
-- * executionUrlTemplate [UrlTemplate] <p>The URL returned to the AWS CodePipeline console that contains a link to the top-level landing page for the external system, such as console page for AWS CodeDeploy. This link is shown on the pipeline view page in the AWS CodePipeline console and provides a link to the execution entity of the external action.</p>
-- @return ActionTypeSettings structure as a key-value pair table
function M.ActionTypeSettings(args)
	assert(args, "You must provide an argument table when creating ActionTypeSettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["entityUrlTemplate"] = args["entityUrlTemplate"],
		["revisionUrlTemplate"] = args["revisionUrlTemplate"],
		["thirdPartyConfigurationUrl"] = args["thirdPartyConfigurationUrl"],
		["executionUrlTemplate"] = args["executionUrlTemplate"],
	}
	asserts.AssertActionTypeSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetPipelineExecutionInput = { ["pipelineExecutionId"] = true, ["pipelineName"] = true, nil }

function asserts.AssertGetPipelineExecutionInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetPipelineExecutionInput to be of type 'table'")
	assert(struct["pipelineName"], "Expected key pipelineName to exist in table")
	assert(struct["pipelineExecutionId"], "Expected key pipelineExecutionId to exist in table")
	if struct["pipelineExecutionId"] then asserts.AssertPipelineExecutionId(struct["pipelineExecutionId"]) end
	if struct["pipelineName"] then asserts.AssertPipelineName(struct["pipelineName"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetPipelineExecutionInput[k], "GetPipelineExecutionInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetPipelineExecutionInput
-- <p>Represents the input of a GetPipelineExecution action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * pipelineExecutionId [PipelineExecutionId] <p>The ID of the pipeline execution about which you want to get execution details.</p>
-- * pipelineName [PipelineName] <p>The name of the pipeline about which you want to get execution details.</p>
-- Required key: pipelineName
-- Required key: pipelineExecutionId
-- @return GetPipelineExecutionInput structure as a key-value pair table
function M.GetPipelineExecutionInput(args)
	assert(args, "You must provide an argument table when creating GetPipelineExecutionInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["pipelineExecutionId"] = args["pipelineExecutionId"],
		["pipelineName"] = args["pipelineName"],
	}
	asserts.AssertGetPipelineExecutionInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.NotLatestPipelineExecutionException = { nil }

function asserts.AssertNotLatestPipelineExecutionException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NotLatestPipelineExecutionException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.NotLatestPipelineExecutionException[k], "NotLatestPipelineExecutionException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NotLatestPipelineExecutionException
-- <p>The stage has failed in a later run of the pipeline and the pipelineExecutionId associated with the request is out of date.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return NotLatestPipelineExecutionException structure as a key-value pair table
function M.NotLatestPipelineExecutionException(args)
	assert(args, "You must provide an argument table when creating NotLatestPipelineExecutionException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertNotLatestPipelineExecutionException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateCustomActionTypeOutput = { ["actionType"] = true, nil }

function asserts.AssertCreateCustomActionTypeOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateCustomActionTypeOutput to be of type 'table'")
	assert(struct["actionType"], "Expected key actionType to exist in table")
	if struct["actionType"] then asserts.AssertActionType(struct["actionType"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateCustomActionTypeOutput[k], "CreateCustomActionTypeOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateCustomActionTypeOutput
-- <p>Represents the output of a CreateCustomActionType operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * actionType [ActionType] <p>Returns information about the details of an action type.</p>
-- Required key: actionType
-- @return CreateCustomActionTypeOutput structure as a key-value pair table
function M.CreateCustomActionTypeOutput(args)
	assert(args, "You must provide an argument table when creating CreateCustomActionTypeOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["actionType"] = args["actionType"],
	}
	asserts.AssertCreateCustomActionTypeOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutJobSuccessResultInput = { ["currentRevision"] = true, ["executionDetails"] = true, ["continuationToken"] = true, ["jobId"] = true, nil }

function asserts.AssertPutJobSuccessResultInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutJobSuccessResultInput to be of type 'table'")
	assert(struct["jobId"], "Expected key jobId to exist in table")
	if struct["currentRevision"] then asserts.AssertCurrentRevision(struct["currentRevision"]) end
	if struct["executionDetails"] then asserts.AssertExecutionDetails(struct["executionDetails"]) end
	if struct["continuationToken"] then asserts.AssertContinuationToken(struct["continuationToken"]) end
	if struct["jobId"] then asserts.AssertJobId(struct["jobId"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutJobSuccessResultInput[k], "PutJobSuccessResultInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutJobSuccessResultInput
-- <p>Represents the input of a PutJobSuccessResult action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * currentRevision [CurrentRevision] <p>The ID of the current revision of the artifact successfully worked upon by the job.</p>
-- * executionDetails [ExecutionDetails] <p>The execution details of the successful job, such as the actions taken by the job worker.</p>
-- * continuationToken [ContinuationToken] <p>A token generated by a job worker, such as an AWS CodeDeploy deployment ID, that a successful job provides to identify a custom action in progress. Future jobs will use this token in order to identify the running instance of the action. It can be reused to return additional information about the progress of the custom action. When the action is complete, no continuation token should be supplied.</p>
-- * jobId [JobId] <p>The unique system-generated ID of the job that succeeded. This is the same ID returned from PollForJobs.</p>
-- Required key: jobId
-- @return PutJobSuccessResultInput structure as a key-value pair table
function M.PutJobSuccessResultInput(args)
	assert(args, "You must provide an argument table when creating PutJobSuccessResultInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["currentRevision"] = args["currentRevision"],
		["executionDetails"] = args["executionDetails"],
		["continuationToken"] = args["continuationToken"],
		["jobId"] = args["jobId"],
	}
	asserts.AssertPutJobSuccessResultInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PollForJobsOutput = { ["jobs"] = true, nil }

function asserts.AssertPollForJobsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PollForJobsOutput to be of type 'table'")
	if struct["jobs"] then asserts.AssertJobList(struct["jobs"]) end
	for k,_ in pairs(struct) do
		assert(keys.PollForJobsOutput[k], "PollForJobsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PollForJobsOutput
-- <p>Represents the output of a PollForJobs action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * jobs [JobList] <p>Information about the jobs to take action on.</p>
-- @return PollForJobsOutput structure as a key-value pair table
function M.PollForJobsOutput(args)
	assert(args, "You must provide an argument table when creating PollForJobsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["jobs"] = args["jobs"],
	}
	asserts.AssertPollForJobsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PipelineExecutionSummary = { ["pipelineExecutionId"] = true, ["status"] = true, ["sourceRevisions"] = true, ["lastUpdateTime"] = true, ["startTime"] = true, nil }

function asserts.AssertPipelineExecutionSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PipelineExecutionSummary to be of type 'table'")
	if struct["pipelineExecutionId"] then asserts.AssertPipelineExecutionId(struct["pipelineExecutionId"]) end
	if struct["status"] then asserts.AssertPipelineExecutionStatus(struct["status"]) end
	if struct["sourceRevisions"] then asserts.AssertSourceRevisionList(struct["sourceRevisions"]) end
	if struct["lastUpdateTime"] then asserts.AssertTimestamp(struct["lastUpdateTime"]) end
	if struct["startTime"] then asserts.AssertTimestamp(struct["startTime"]) end
	for k,_ in pairs(struct) do
		assert(keys.PipelineExecutionSummary[k], "PipelineExecutionSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PipelineExecutionSummary
-- <p>Summary information about a pipeline execution.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * pipelineExecutionId [PipelineExecutionId] <p>The ID of the pipeline execution.</p>
-- * status [PipelineExecutionStatus] <p>The status of the pipeline execution.</p> <ul> <li> <p>InProgress: The pipeline execution is currently running.</p> </li> <li> <p>Succeeded: The pipeline execution was completed successfully. </p> </li> <li> <p>Superseded: While this pipeline execution was waiting for the next stage to be completed, a newer pipeline execution advanced and continued through the pipeline instead. </p> </li> <li> <p>Failed: The pipeline execution was not completed successfully.</p> </li> </ul>
-- * sourceRevisions [SourceRevisionList] 
-- * lastUpdateTime [Timestamp] <p>The date and time of the last change to the pipeline execution, in timestamp format.</p>
-- * startTime [Timestamp] <p>The date and time when the pipeline execution began, in timestamp format.</p>
-- @return PipelineExecutionSummary structure as a key-value pair table
function M.PipelineExecutionSummary(args)
	assert(args, "You must provide an argument table when creating PipelineExecutionSummary")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["pipelineExecutionId"] = args["pipelineExecutionId"],
		["status"] = args["status"],
		["sourceRevisions"] = args["sourceRevisions"],
		["lastUpdateTime"] = args["lastUpdateTime"],
		["startTime"] = args["startTime"],
	}
	asserts.AssertPipelineExecutionSummary(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.JobData = { ["inputArtifacts"] = true, ["pipelineContext"] = true, ["encryptionKey"] = true, ["actionTypeId"] = true, ["outputArtifacts"] = true, ["actionConfiguration"] = true, ["continuationToken"] = true, ["artifactCredentials"] = true, nil }

function asserts.AssertJobData(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected JobData to be of type 'table'")
	if struct["inputArtifacts"] then asserts.AssertArtifactList(struct["inputArtifacts"]) end
	if struct["pipelineContext"] then asserts.AssertPipelineContext(struct["pipelineContext"]) end
	if struct["encryptionKey"] then asserts.AssertEncryptionKey(struct["encryptionKey"]) end
	if struct["actionTypeId"] then asserts.AssertActionTypeId(struct["actionTypeId"]) end
	if struct["outputArtifacts"] then asserts.AssertArtifactList(struct["outputArtifacts"]) end
	if struct["actionConfiguration"] then asserts.AssertActionConfiguration(struct["actionConfiguration"]) end
	if struct["continuationToken"] then asserts.AssertContinuationToken(struct["continuationToken"]) end
	if struct["artifactCredentials"] then asserts.AssertAWSSessionCredentials(struct["artifactCredentials"]) end
	for k,_ in pairs(struct) do
		assert(keys.JobData[k], "JobData contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type JobData
-- <p>Represents additional information about a job required for a job worker to complete the job.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * inputArtifacts [ArtifactList] <p>The artifact supplied to the job.</p>
-- * pipelineContext [PipelineContext] <p>Represents information about a pipeline to a job worker.</p>
-- * encryptionKey [EncryptionKey] <p>Represents information about the key used to encrypt data in the artifact store, such as an AWS Key Management Service (AWS KMS) key. </p>
-- * actionTypeId [ActionTypeId] <p>Represents information about an action type.</p>
-- * outputArtifacts [ArtifactList] <p>The output of the job.</p>
-- * actionConfiguration [ActionConfiguration] <p>Represents information about an action configuration.</p>
-- * continuationToken [ContinuationToken] <p>A system-generated token, such as a AWS CodeDeploy deployment ID, that a job requires in order to continue the job asynchronously.</p>
-- * artifactCredentials [AWSSessionCredentials] <p>Represents an AWS session credentials object. These credentials are temporary credentials that are issued by AWS Secure Token Service (STS). They can be used to access input and output artifacts in the Amazon S3 bucket used to store artifact for the pipeline in AWS CodePipeline.</p>
-- @return JobData structure as a key-value pair table
function M.JobData(args)
	assert(args, "You must provide an argument table when creating JobData")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["inputArtifacts"] = args["inputArtifacts"],
		["pipelineContext"] = args["pipelineContext"],
		["encryptionKey"] = args["encryptionKey"],
		["actionTypeId"] = args["actionTypeId"],
		["outputArtifacts"] = args["outputArtifacts"],
		["actionConfiguration"] = args["actionConfiguration"],
		["continuationToken"] = args["continuationToken"],
		["artifactCredentials"] = args["artifactCredentials"],
	}
	asserts.AssertJobData(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RegisterWebhookWithThirdPartyOutput = { nil }

function asserts.AssertRegisterWebhookWithThirdPartyOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RegisterWebhookWithThirdPartyOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.RegisterWebhookWithThirdPartyOutput[k], "RegisterWebhookWithThirdPartyOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RegisterWebhookWithThirdPartyOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return RegisterWebhookWithThirdPartyOutput structure as a key-value pair table
function M.RegisterWebhookWithThirdPartyOutput(args)
	assert(args, "You must provide an argument table when creating RegisterWebhookWithThirdPartyOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertRegisterWebhookWithThirdPartyOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EnableStageTransitionInput = { ["pipelineName"] = true, ["stageName"] = true, ["transitionType"] = true, nil }

function asserts.AssertEnableStageTransitionInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EnableStageTransitionInput to be of type 'table'")
	assert(struct["pipelineName"], "Expected key pipelineName to exist in table")
	assert(struct["stageName"], "Expected key stageName to exist in table")
	assert(struct["transitionType"], "Expected key transitionType to exist in table")
	if struct["pipelineName"] then asserts.AssertPipelineName(struct["pipelineName"]) end
	if struct["stageName"] then asserts.AssertStageName(struct["stageName"]) end
	if struct["transitionType"] then asserts.AssertStageTransitionType(struct["transitionType"]) end
	for k,_ in pairs(struct) do
		assert(keys.EnableStageTransitionInput[k], "EnableStageTransitionInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EnableStageTransitionInput
-- <p>Represents the input of an EnableStageTransition action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * pipelineName [PipelineName] <p>The name of the pipeline in which you want to enable the flow of artifacts from one stage to another.</p>
-- * stageName [StageName] <p>The name of the stage where you want to enable the transition of artifacts, either into the stage (inbound) or from that stage to the next stage (outbound).</p>
-- * transitionType [StageTransitionType] <p>Specifies whether artifacts will be allowed to enter the stage and be processed by the actions in that stage (inbound) or whether already-processed artifacts will be allowed to transition to the next stage (outbound).</p>
-- Required key: pipelineName
-- Required key: stageName
-- Required key: transitionType
-- @return EnableStageTransitionInput structure as a key-value pair table
function M.EnableStageTransitionInput(args)
	assert(args, "You must provide an argument table when creating EnableStageTransitionInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["pipelineName"] = args["pipelineName"],
		["stageName"] = args["stageName"],
		["transitionType"] = args["transitionType"],
	}
	asserts.AssertEnableStageTransitionInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ActionTypeNotFoundException = { nil }

function asserts.AssertActionTypeNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ActionTypeNotFoundException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ActionTypeNotFoundException[k], "ActionTypeNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ActionTypeNotFoundException
-- <p>The specified action type cannot be found.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return ActionTypeNotFoundException structure as a key-value pair table
function M.ActionTypeNotFoundException(args)
	assert(args, "You must provide an argument table when creating ActionTypeNotFoundException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertActionTypeNotFoundException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.JobNotFoundException = { nil }

function asserts.AssertJobNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected JobNotFoundException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.JobNotFoundException[k], "JobNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type JobNotFoundException
-- <p>The specified job was specified in an invalid format or cannot be found.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return JobNotFoundException structure as a key-value pair table
function M.JobNotFoundException(args)
	assert(args, "You must provide an argument table when creating JobNotFoundException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertJobNotFoundException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetPipelineStateInput = { ["name"] = true, nil }

function asserts.AssertGetPipelineStateInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetPipelineStateInput to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	if struct["name"] then asserts.AssertPipelineName(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetPipelineStateInput[k], "GetPipelineStateInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetPipelineStateInput
-- <p>Represents the input of a GetPipelineState action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * name [PipelineName] <p>The name of the pipeline about which you want to get information.</p>
-- Required key: name
-- @return GetPipelineStateInput structure as a key-value pair table
function M.GetPipelineStateInput(args)
	assert(args, "You must provide an argument table when creating GetPipelineStateInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["name"] = args["name"],
	}
	asserts.AssertGetPipelineStateInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PipelineContext = { ["action"] = true, ["pipelineName"] = true, ["stage"] = true, nil }

function asserts.AssertPipelineContext(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PipelineContext to be of type 'table'")
	if struct["action"] then asserts.AssertActionContext(struct["action"]) end
	if struct["pipelineName"] then asserts.AssertPipelineName(struct["pipelineName"]) end
	if struct["stage"] then asserts.AssertStageContext(struct["stage"]) end
	for k,_ in pairs(struct) do
		assert(keys.PipelineContext[k], "PipelineContext contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PipelineContext
-- <p>Represents information about a pipeline to a job worker.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * action [ActionContext] <p>The context of an action to a job worker within the stage of a pipeline.</p>
-- * pipelineName [PipelineName] <p>The name of the pipeline. This is a user-specified value. Pipeline names must be unique across all pipeline names under an Amazon Web Services account.</p>
-- * stage [StageContext] <p>The stage of the pipeline.</p>
-- @return PipelineContext structure as a key-value pair table
function M.PipelineContext(args)
	assert(args, "You must provide an argument table when creating PipelineContext")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["action"] = args["action"],
		["pipelineName"] = args["pipelineName"],
		["stage"] = args["stage"],
	}
	asserts.AssertPipelineContext(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetJobDetailsOutput = { ["jobDetails"] = true, nil }

function asserts.AssertGetJobDetailsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetJobDetailsOutput to be of type 'table'")
	if struct["jobDetails"] then asserts.AssertJobDetails(struct["jobDetails"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetJobDetailsOutput[k], "GetJobDetailsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetJobDetailsOutput
-- <p>Represents the output of a GetJobDetails action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * jobDetails [JobDetails] <p>The details of the job.</p> <note> <p>If AWSSessionCredentials is used, a long-running job can call GetJobDetails again to obtain new credentials.</p> </note>
-- @return GetJobDetailsOutput structure as a key-value pair table
function M.GetJobDetailsOutput(args)
	assert(args, "You must provide an argument table when creating GetJobDetailsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["jobDetails"] = args["jobDetails"],
	}
	asserts.AssertGetJobDetailsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutApprovalResultOutput = { ["approvedAt"] = true, nil }

function asserts.AssertPutApprovalResultOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutApprovalResultOutput to be of type 'table'")
	if struct["approvedAt"] then asserts.AssertTimestamp(struct["approvedAt"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutApprovalResultOutput[k], "PutApprovalResultOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutApprovalResultOutput
-- <p>Represents the output of a PutApprovalResult action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * approvedAt [Timestamp] <p>The timestamp showing when the approval or rejection was submitted.</p>
-- @return PutApprovalResultOutput structure as a key-value pair table
function M.PutApprovalResultOutput(args)
	assert(args, "You must provide an argument table when creating PutApprovalResultOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["approvedAt"] = args["approvedAt"],
	}
	asserts.AssertPutApprovalResultOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StageNotRetryableException = { nil }

function asserts.AssertStageNotRetryableException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StageNotRetryableException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.StageNotRetryableException[k], "StageNotRetryableException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StageNotRetryableException
-- <p>The specified stage can't be retried because the pipeline structure or stage state changed after the stage was not completed; the stage contains no failed actions; one or more actions are still in progress; or another retry attempt is already in progress. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return StageNotRetryableException structure as a key-value pair table
function M.StageNotRetryableException(args)
	assert(args, "You must provide an argument table when creating StageNotRetryableException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertStageNotRetryableException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CurrentRevision = { ["changeIdentifier"] = true, ["created"] = true, ["revisionSummary"] = true, ["revision"] = true, nil }

function asserts.AssertCurrentRevision(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CurrentRevision to be of type 'table'")
	assert(struct["revision"], "Expected key revision to exist in table")
	assert(struct["changeIdentifier"], "Expected key changeIdentifier to exist in table")
	if struct["changeIdentifier"] then asserts.AssertRevisionChangeIdentifier(struct["changeIdentifier"]) end
	if struct["created"] then asserts.AssertTime(struct["created"]) end
	if struct["revisionSummary"] then asserts.AssertRevisionSummary(struct["revisionSummary"]) end
	if struct["revision"] then asserts.AssertRevision(struct["revision"]) end
	for k,_ in pairs(struct) do
		assert(keys.CurrentRevision[k], "CurrentRevision contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CurrentRevision
-- <p>Represents information about a current revision.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * changeIdentifier [RevisionChangeIdentifier] <p>The change identifier for the current revision.</p>
-- * created [Time] <p>The date and time when the most recent revision of the artifact was created, in timestamp format.</p>
-- * revisionSummary [RevisionSummary] <p>The summary of the most recent revision of the artifact.</p>
-- * revision [Revision] <p>The revision ID of the current version of an artifact.</p>
-- Required key: revision
-- Required key: changeIdentifier
-- @return CurrentRevision structure as a key-value pair table
function M.CurrentRevision(args)
	assert(args, "You must provide an argument table when creating CurrentRevision")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["changeIdentifier"] = args["changeIdentifier"],
		["created"] = args["created"],
		["revisionSummary"] = args["revisionSummary"],
		["revision"] = args["revision"],
	}
	asserts.AssertCurrentRevision(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidApprovalTokenException = { nil }

function asserts.AssertInvalidApprovalTokenException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidApprovalTokenException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidApprovalTokenException[k], "InvalidApprovalTokenException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidApprovalTokenException
-- <p>The approval request already received a response or has expired.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidApprovalTokenException structure as a key-value pair table
function M.InvalidApprovalTokenException(args)
	assert(args, "You must provide an argument table when creating InvalidApprovalTokenException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertInvalidApprovalTokenException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetThirdPartyJobDetailsInput = { ["clientToken"] = true, ["jobId"] = true, nil }

function asserts.AssertGetThirdPartyJobDetailsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetThirdPartyJobDetailsInput to be of type 'table'")
	assert(struct["jobId"], "Expected key jobId to exist in table")
	assert(struct["clientToken"], "Expected key clientToken to exist in table")
	if struct["clientToken"] then asserts.AssertClientToken(struct["clientToken"]) end
	if struct["jobId"] then asserts.AssertThirdPartyJobId(struct["jobId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetThirdPartyJobDetailsInput[k], "GetThirdPartyJobDetailsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetThirdPartyJobDetailsInput
-- <p>Represents the input of a GetThirdPartyJobDetails action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * clientToken [ClientToken] <p>The clientToken portion of the clientId and clientToken pair used to verify that the calling entity is allowed access to the job and its details.</p>
-- * jobId [ThirdPartyJobId] <p>The unique system-generated ID used for identifying the job.</p>
-- Required key: jobId
-- Required key: clientToken
-- @return GetThirdPartyJobDetailsInput structure as a key-value pair table
function M.GetThirdPartyJobDetailsInput(args)
	assert(args, "You must provide an argument table when creating GetThirdPartyJobDetailsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["clientToken"] = args["clientToken"],
		["jobId"] = args["jobId"],
	}
	asserts.AssertGetThirdPartyJobDetailsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StageExecution = { ["pipelineExecutionId"] = true, ["status"] = true, nil }

function asserts.AssertStageExecution(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StageExecution to be of type 'table'")
	assert(struct["pipelineExecutionId"], "Expected key pipelineExecutionId to exist in table")
	assert(struct["status"], "Expected key status to exist in table")
	if struct["pipelineExecutionId"] then asserts.AssertPipelineExecutionId(struct["pipelineExecutionId"]) end
	if struct["status"] then asserts.AssertStageExecutionStatus(struct["status"]) end
	for k,_ in pairs(struct) do
		assert(keys.StageExecution[k], "StageExecution contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StageExecution
-- <p>Represents information about the run of a stage.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * pipelineExecutionId [PipelineExecutionId] <p>The ID of the pipeline execution associated with the stage.</p>
-- * status [StageExecutionStatus] <p>The status of the stage, or for a completed stage, the last status of the stage.</p>
-- Required key: pipelineExecutionId
-- Required key: status
-- @return StageExecution structure as a key-value pair table
function M.StageExecution(args)
	assert(args, "You must provide an argument table when creating StageExecution")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["pipelineExecutionId"] = args["pipelineExecutionId"],
		["status"] = args["status"],
	}
	asserts.AssertStageExecution(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidWebhookFilterPatternException = { nil }

function asserts.AssertInvalidWebhookFilterPatternException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidWebhookFilterPatternException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidWebhookFilterPatternException[k], "InvalidWebhookFilterPatternException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidWebhookFilterPatternException
-- <p>The specified event filter rule is in an invalid format.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidWebhookFilterPatternException structure as a key-value pair table
function M.InvalidWebhookFilterPatternException(args)
	assert(args, "You must provide an argument table when creating InvalidWebhookFilterPatternException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertInvalidWebhookFilterPatternException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Artifact = { ["location"] = true, ["name"] = true, ["revision"] = true, nil }

function asserts.AssertArtifact(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Artifact to be of type 'table'")
	if struct["location"] then asserts.AssertArtifactLocation(struct["location"]) end
	if struct["name"] then asserts.AssertArtifactName(struct["name"]) end
	if struct["revision"] then asserts.AssertRevision(struct["revision"]) end
	for k,_ in pairs(struct) do
		assert(keys.Artifact[k], "Artifact contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Artifact
-- <p>Represents information about an artifact that will be worked upon by actions in the pipeline.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * location [ArtifactLocation] <p>The location of an artifact.</p>
-- * name [ArtifactName] <p>The artifact's name.</p>
-- * revision [Revision] <p>The artifact's revision ID. Depending on the type of object, this could be a commit ID (GitHub) or a revision ID (Amazon S3).</p>
-- @return Artifact structure as a key-value pair table
function M.Artifact(args)
	assert(args, "You must provide an argument table when creating Artifact")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["location"] = args["location"],
		["name"] = args["name"],
		["revision"] = args["revision"],
	}
	asserts.AssertArtifact(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PipelineVersionNotFoundException = { nil }

function asserts.AssertPipelineVersionNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PipelineVersionNotFoundException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.PipelineVersionNotFoundException[k], "PipelineVersionNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PipelineVersionNotFoundException
-- <p>The specified pipeline version was specified in an invalid format or cannot be found.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return PipelineVersionNotFoundException structure as a key-value pair table
function M.PipelineVersionNotFoundException(args)
	assert(args, "You must provide an argument table when creating PipelineVersionNotFoundException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertPipelineVersionNotFoundException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidJobException = { nil }

function asserts.AssertInvalidJobException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidJobException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidJobException[k], "InvalidJobException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidJobException
-- <p>The specified job was specified in an invalid format or cannot be found.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidJobException structure as a key-value pair table
function M.InvalidJobException(args)
	assert(args, "You must provide an argument table when creating InvalidJobException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertInvalidJobException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ThirdPartyJob = { ["clientId"] = true, ["jobId"] = true, nil }

function asserts.AssertThirdPartyJob(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ThirdPartyJob to be of type 'table'")
	if struct["clientId"] then asserts.AssertClientId(struct["clientId"]) end
	if struct["jobId"] then asserts.AssertJobId(struct["jobId"]) end
	for k,_ in pairs(struct) do
		assert(keys.ThirdPartyJob[k], "ThirdPartyJob contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ThirdPartyJob
-- <p>A response to a PollForThirdPartyJobs request returned by AWS CodePipeline when there is a job to be worked upon by a partner action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * clientId [ClientId] <p>The clientToken portion of the clientId and clientToken pair used to verify that the calling entity is allowed access to the job and its details.</p>
-- * jobId [JobId] <p>The identifier used to identify the job in AWS CodePipeline.</p>
-- @return ThirdPartyJob structure as a key-value pair table
function M.ThirdPartyJob(args)
	assert(args, "You must provide an argument table when creating ThirdPartyJob")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["clientId"] = args["clientId"],
		["jobId"] = args["jobId"],
	}
	asserts.AssertThirdPartyJob(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StageDeclaration = { ["blockers"] = true, ["name"] = true, ["actions"] = true, nil }

function asserts.AssertStageDeclaration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StageDeclaration to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["actions"], "Expected key actions to exist in table")
	if struct["blockers"] then asserts.AssertStageBlockerDeclarationList(struct["blockers"]) end
	if struct["name"] then asserts.AssertStageName(struct["name"]) end
	if struct["actions"] then asserts.AssertStageActionDeclarationList(struct["actions"]) end
	for k,_ in pairs(struct) do
		assert(keys.StageDeclaration[k], "StageDeclaration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StageDeclaration
-- <p>Represents information about a stage and its definition.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * blockers [StageBlockerDeclarationList] <p>Reserved for future use.</p>
-- * name [StageName] <p>The name of the stage.</p>
-- * actions [StageActionDeclarationList] <p>The actions included in a stage.</p>
-- Required key: name
-- Required key: actions
-- @return StageDeclaration structure as a key-value pair table
function M.StageDeclaration(args)
	assert(args, "You must provide an argument table when creating StageDeclaration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["blockers"] = args["blockers"],
		["name"] = args["name"],
		["actions"] = args["actions"],
	}
	asserts.AssertStageDeclaration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RegisterWebhookWithThirdPartyInput = { ["webhookName"] = true, nil }

function asserts.AssertRegisterWebhookWithThirdPartyInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RegisterWebhookWithThirdPartyInput to be of type 'table'")
	if struct["webhookName"] then asserts.AssertWebhookName(struct["webhookName"]) end
	for k,_ in pairs(struct) do
		assert(keys.RegisterWebhookWithThirdPartyInput[k], "RegisterWebhookWithThirdPartyInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RegisterWebhookWithThirdPartyInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * webhookName [WebhookName] <p>The name of an existing webhook created with PutWebhook to register with a supported third party. </p>
-- @return RegisterWebhookWithThirdPartyInput structure as a key-value pair table
function M.RegisterWebhookWithThirdPartyInput(args)
	assert(args, "You must provide an argument table when creating RegisterWebhookWithThirdPartyInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["webhookName"] = args["webhookName"],
	}
	asserts.AssertRegisterWebhookWithThirdPartyInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BlockerDeclaration = { ["type"] = true, ["name"] = true, nil }

function asserts.AssertBlockerDeclaration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BlockerDeclaration to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["type"], "Expected key type to exist in table")
	if struct["type"] then asserts.AssertBlockerType(struct["type"]) end
	if struct["name"] then asserts.AssertBlockerName(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(keys.BlockerDeclaration[k], "BlockerDeclaration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BlockerDeclaration
-- <p>Reserved for future use.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * type [BlockerType] <p>Reserved for future use.</p>
-- * name [BlockerName] <p>Reserved for future use.</p>
-- Required key: name
-- Required key: type
-- @return BlockerDeclaration structure as a key-value pair table
function M.BlockerDeclaration(args)
	assert(args, "You must provide an argument table when creating BlockerDeclaration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["type"] = args["type"],
		["name"] = args["name"],
	}
	asserts.AssertBlockerDeclaration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PipelineSummary = { ["updated"] = true, ["version"] = true, ["name"] = true, ["created"] = true, nil }

function asserts.AssertPipelineSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PipelineSummary to be of type 'table'")
	if struct["updated"] then asserts.AssertTimestamp(struct["updated"]) end
	if struct["version"] then asserts.AssertPipelineVersion(struct["version"]) end
	if struct["name"] then asserts.AssertPipelineName(struct["name"]) end
	if struct["created"] then asserts.AssertTimestamp(struct["created"]) end
	for k,_ in pairs(struct) do
		assert(keys.PipelineSummary[k], "PipelineSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PipelineSummary
-- <p>Returns a summary of a pipeline.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * updated [Timestamp] <p>The date and time of the last update to the pipeline, in timestamp format.</p>
-- * version [PipelineVersion] <p>The version number of the pipeline.</p>
-- * name [PipelineName] <p>The name of the pipeline.</p>
-- * created [Timestamp] <p>The date and time the pipeline was created, in timestamp format.</p>
-- @return PipelineSummary structure as a key-value pair table
function M.PipelineSummary(args)
	assert(args, "You must provide an argument table when creating PipelineSummary")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["updated"] = args["updated"],
		["version"] = args["version"],
		["name"] = args["name"],
		["created"] = args["created"],
	}
	asserts.AssertPipelineSummary(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.WebhookAuthConfiguration = { ["SecretToken"] = true, ["AllowedIPRange"] = true, nil }

function asserts.AssertWebhookAuthConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WebhookAuthConfiguration to be of type 'table'")
	if struct["SecretToken"] then asserts.AssertWebhookAuthConfigurationSecretToken(struct["SecretToken"]) end
	if struct["AllowedIPRange"] then asserts.AssertWebhookAuthConfigurationAllowedIPRange(struct["AllowedIPRange"]) end
	for k,_ in pairs(struct) do
		assert(keys.WebhookAuthConfiguration[k], "WebhookAuthConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WebhookAuthConfiguration
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SecretToken [WebhookAuthConfigurationSecretToken] 
-- * AllowedIPRange [WebhookAuthConfigurationAllowedIPRange] 
-- @return WebhookAuthConfiguration structure as a key-value pair table
function M.WebhookAuthConfiguration(args)
	assert(args, "You must provide an argument table when creating WebhookAuthConfiguration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SecretToken"] = args["SecretToken"],
		["AllowedIPRange"] = args["AllowedIPRange"],
	}
	asserts.AssertWebhookAuthConfiguration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListWebhooksOutput = { ["webhooks"] = true, ["NextToken"] = true, nil }

function asserts.AssertListWebhooksOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListWebhooksOutput to be of type 'table'")
	if struct["webhooks"] then asserts.AssertWebhookList(struct["webhooks"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListWebhooksOutput[k], "ListWebhooksOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListWebhooksOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * webhooks [WebhookList] <p>The JSON detail returned for each webhook in the list output for the ListWebhooks call.</p>
-- * NextToken [NextToken] <p>If the amount of returned information is significantly large, an identifier is also returned and can be used in a subsequent ListWebhooks call to return the next set of webhooks in the list. </p>
-- @return ListWebhooksOutput structure as a key-value pair table
function M.ListWebhooksOutput(args)
	assert(args, "You must provide an argument table when creating ListWebhooksOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["webhooks"] = args["webhooks"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListWebhooksOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RetryStageExecutionOutput = { ["pipelineExecutionId"] = true, nil }

function asserts.AssertRetryStageExecutionOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RetryStageExecutionOutput to be of type 'table'")
	if struct["pipelineExecutionId"] then asserts.AssertPipelineExecutionId(struct["pipelineExecutionId"]) end
	for k,_ in pairs(struct) do
		assert(keys.RetryStageExecutionOutput[k], "RetryStageExecutionOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RetryStageExecutionOutput
-- <p>Represents the output of a RetryStageExecution action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * pipelineExecutionId [PipelineExecutionId] <p>The ID of the current workflow execution in the failed stage.</p>
-- @return RetryStageExecutionOutput structure as a key-value pair table
function M.RetryStageExecutionOutput(args)
	assert(args, "You must provide an argument table when creating RetryStageExecutionOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["pipelineExecutionId"] = args["pipelineExecutionId"],
	}
	asserts.AssertRetryStageExecutionOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidNonceException = { nil }

function asserts.AssertInvalidNonceException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidNonceException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidNonceException[k], "InvalidNonceException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidNonceException
-- <p>The specified nonce was specified in an invalid format.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidNonceException structure as a key-value pair table
function M.InvalidNonceException(args)
	assert(args, "You must provide an argument table when creating InvalidNonceException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertInvalidNonceException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PipelineNotFoundException = { nil }

function asserts.AssertPipelineNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PipelineNotFoundException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.PipelineNotFoundException[k], "PipelineNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PipelineNotFoundException
-- <p>The specified pipeline was specified in an invalid format or cannot be found.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return PipelineNotFoundException structure as a key-value pair table
function M.PipelineNotFoundException(args)
	assert(args, "You must provide an argument table when creating PipelineNotFoundException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertPipelineNotFoundException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PipelineExecution = { ["pipelineExecutionId"] = true, ["pipelineVersion"] = true, ["pipelineName"] = true, ["status"] = true, ["artifactRevisions"] = true, nil }

function asserts.AssertPipelineExecution(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PipelineExecution to be of type 'table'")
	if struct["pipelineExecutionId"] then asserts.AssertPipelineExecutionId(struct["pipelineExecutionId"]) end
	if struct["pipelineVersion"] then asserts.AssertPipelineVersion(struct["pipelineVersion"]) end
	if struct["pipelineName"] then asserts.AssertPipelineName(struct["pipelineName"]) end
	if struct["status"] then asserts.AssertPipelineExecutionStatus(struct["status"]) end
	if struct["artifactRevisions"] then asserts.AssertArtifactRevisionList(struct["artifactRevisions"]) end
	for k,_ in pairs(struct) do
		assert(keys.PipelineExecution[k], "PipelineExecution contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PipelineExecution
-- <p>Represents information about an execution of a pipeline.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * pipelineExecutionId [PipelineExecutionId] <p>The ID of the pipeline execution.</p>
-- * pipelineVersion [PipelineVersion] <p>The version number of the pipeline that was executed.</p>
-- * pipelineName [PipelineName] <p>The name of the pipeline that was executed.</p>
-- * status [PipelineExecutionStatus] <p>The status of the pipeline execution.</p> <ul> <li> <p>InProgress: The pipeline execution is currently running.</p> </li> <li> <p>Succeeded: The pipeline execution was completed successfully. </p> </li> <li> <p>Superseded: While this pipeline execution was waiting for the next stage to be completed, a newer pipeline execution advanced and continued through the pipeline instead. </p> </li> <li> <p>Failed: The pipeline execution was not completed successfully.</p> </li> </ul>
-- * artifactRevisions [ArtifactRevisionList] <p>A list of ArtifactRevision objects included in a pipeline execution.</p>
-- @return PipelineExecution structure as a key-value pair table
function M.PipelineExecution(args)
	assert(args, "You must provide an argument table when creating PipelineExecution")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["pipelineExecutionId"] = args["pipelineExecutionId"],
		["pipelineVersion"] = args["pipelineVersion"],
		["pipelineName"] = args["pipelineName"],
		["status"] = args["status"],
		["artifactRevisions"] = args["artifactRevisions"],
	}
	asserts.AssertPipelineExecution(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ThirdPartyJobData = { ["inputArtifacts"] = true, ["pipelineContext"] = true, ["encryptionKey"] = true, ["actionTypeId"] = true, ["outputArtifacts"] = true, ["actionConfiguration"] = true, ["continuationToken"] = true, ["artifactCredentials"] = true, nil }

function asserts.AssertThirdPartyJobData(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ThirdPartyJobData to be of type 'table'")
	if struct["inputArtifacts"] then asserts.AssertArtifactList(struct["inputArtifacts"]) end
	if struct["pipelineContext"] then asserts.AssertPipelineContext(struct["pipelineContext"]) end
	if struct["encryptionKey"] then asserts.AssertEncryptionKey(struct["encryptionKey"]) end
	if struct["actionTypeId"] then asserts.AssertActionTypeId(struct["actionTypeId"]) end
	if struct["outputArtifacts"] then asserts.AssertArtifactList(struct["outputArtifacts"]) end
	if struct["actionConfiguration"] then asserts.AssertActionConfiguration(struct["actionConfiguration"]) end
	if struct["continuationToken"] then asserts.AssertContinuationToken(struct["continuationToken"]) end
	if struct["artifactCredentials"] then asserts.AssertAWSSessionCredentials(struct["artifactCredentials"]) end
	for k,_ in pairs(struct) do
		assert(keys.ThirdPartyJobData[k], "ThirdPartyJobData contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ThirdPartyJobData
-- <p>Represents information about the job data for a partner action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * inputArtifacts [ArtifactList] <p>The name of the artifact that will be worked upon by the action, if any. This name might be system-generated, such as "MyApp", or might be defined by the user when the action is created. The input artifact name must match the name of an output artifact generated by an action in an earlier action or stage of the pipeline.</p>
-- * pipelineContext [PipelineContext] <p>Represents information about a pipeline to a job worker.</p>
-- * encryptionKey [EncryptionKey] <p>The encryption key used to encrypt and decrypt data in the artifact store for the pipeline, such as an AWS Key Management Service (AWS KMS) key. This is optional and might not be present.</p>
-- * actionTypeId [ActionTypeId] <p>Represents information about an action type.</p>
-- * outputArtifacts [ArtifactList] <p>The name of the artifact that will be the result of the action, if any. This name might be system-generated, such as "MyBuiltApp", or might be defined by the user when the action is created.</p>
-- * actionConfiguration [ActionConfiguration] <p>Represents information about an action configuration.</p>
-- * continuationToken [ContinuationToken] <p>A system-generated token, such as a AWS CodeDeploy deployment ID, that a job requires in order to continue the job asynchronously.</p>
-- * artifactCredentials [AWSSessionCredentials] <p>Represents an AWS session credentials object. These credentials are temporary credentials that are issued by AWS Secure Token Service (STS). They can be used to access input and output artifacts in the Amazon S3 bucket used to store artifact for the pipeline in AWS CodePipeline. </p>
-- @return ThirdPartyJobData structure as a key-value pair table
function M.ThirdPartyJobData(args)
	assert(args, "You must provide an argument table when creating ThirdPartyJobData")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["inputArtifacts"] = args["inputArtifacts"],
		["pipelineContext"] = args["pipelineContext"],
		["encryptionKey"] = args["encryptionKey"],
		["actionTypeId"] = args["actionTypeId"],
		["outputArtifacts"] = args["outputArtifacts"],
		["actionConfiguration"] = args["actionConfiguration"],
		["continuationToken"] = args["continuationToken"],
		["artifactCredentials"] = args["artifactCredentials"],
	}
	asserts.AssertThirdPartyJobData(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutWebhookOutput = { ["webhook"] = true, nil }

function asserts.AssertPutWebhookOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutWebhookOutput to be of type 'table'")
	if struct["webhook"] then asserts.AssertListWebhookItem(struct["webhook"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutWebhookOutput[k], "PutWebhookOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutWebhookOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * webhook [ListWebhookItem] <p>The detail returned from creating the webhook, such as the webhook name, webhook URL, and webhook ARN.</p>
-- @return PutWebhookOutput structure as a key-value pair table
function M.PutWebhookOutput(args)
	assert(args, "You must provide an argument table when creating PutWebhookOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["webhook"] = args["webhook"],
	}
	asserts.AssertPutWebhookOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PollForThirdPartyJobsInput = { ["actionTypeId"] = true, ["maxBatchSize"] = true, nil }

function asserts.AssertPollForThirdPartyJobsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PollForThirdPartyJobsInput to be of type 'table'")
	assert(struct["actionTypeId"], "Expected key actionTypeId to exist in table")
	if struct["actionTypeId"] then asserts.AssertActionTypeId(struct["actionTypeId"]) end
	if struct["maxBatchSize"] then asserts.AssertMaxBatchSize(struct["maxBatchSize"]) end
	for k,_ in pairs(struct) do
		assert(keys.PollForThirdPartyJobsInput[k], "PollForThirdPartyJobsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PollForThirdPartyJobsInput
-- <p>Represents the input of a PollForThirdPartyJobs action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * actionTypeId [ActionTypeId] <p>Represents information about an action type.</p>
-- * maxBatchSize [MaxBatchSize] <p>The maximum number of jobs to return in a poll for jobs call.</p>
-- Required key: actionTypeId
-- @return PollForThirdPartyJobsInput structure as a key-value pair table
function M.PollForThirdPartyJobsInput(args)
	assert(args, "You must provide an argument table when creating PollForThirdPartyJobsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["actionTypeId"] = args["actionTypeId"],
		["maxBatchSize"] = args["maxBatchSize"],
	}
	asserts.AssertPollForThirdPartyJobsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PipelineExecutionNotFoundException = { nil }

function asserts.AssertPipelineExecutionNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PipelineExecutionNotFoundException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.PipelineExecutionNotFoundException[k], "PipelineExecutionNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PipelineExecutionNotFoundException
-- <p>The pipeline execution was specified in an invalid format or cannot be found, or an execution ID does not belong to the specified pipeline. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return PipelineExecutionNotFoundException structure as a key-value pair table
function M.PipelineExecutionNotFoundException(args)
	assert(args, "You must provide an argument table when creating PipelineExecutionNotFoundException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertPipelineExecutionNotFoundException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.WebhookNotFoundException = { nil }

function asserts.AssertWebhookNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WebhookNotFoundException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.WebhookNotFoundException[k], "WebhookNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WebhookNotFoundException
-- <p>The specified webhook was entered in an invalid format or cannot be found.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return WebhookNotFoundException structure as a key-value pair table
function M.WebhookNotFoundException(args)
	assert(args, "You must provide an argument table when creating WebhookNotFoundException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertWebhookNotFoundException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListActionTypesInput = { ["nextToken"] = true, ["actionOwnerFilter"] = true, nil }

function asserts.AssertListActionTypesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListActionTypesInput to be of type 'table'")
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["actionOwnerFilter"] then asserts.AssertActionOwner(struct["actionOwnerFilter"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListActionTypesInput[k], "ListActionTypesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListActionTypesInput
-- <p>Represents the input of a ListActionTypes action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [NextToken] <p>An identifier that was returned from the previous list action types call, which can be used to return the next set of action types in the list.</p>
-- * actionOwnerFilter [ActionOwner] <p>Filters the list of action types to those created by a specified entity.</p>
-- @return ListActionTypesInput structure as a key-value pair table
function M.ListActionTypesInput(args)
	assert(args, "You must provide an argument table when creating ListActionTypesInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["actionOwnerFilter"] = args["actionOwnerFilter"],
	}
	asserts.AssertListActionTypesInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

function asserts.AssertPipelineExecutionId(str)
	assert(str)
	assert(type(str) == "string", "Expected PipelineExecutionId to be of type 'string'")
end

--  
function M.PipelineExecutionId(str)
	asserts.AssertPipelineExecutionId(str)
	return str
end

function asserts.AssertActionName(str)
	assert(str)
	assert(type(str) == "string", "Expected ActionName to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ActionName(str)
	asserts.AssertActionName(str)
	return str
end

function asserts.AssertSessionToken(str)
	assert(str)
	assert(type(str) == "string", "Expected SessionToken to be of type 'string'")
end

--  
function M.SessionToken(str)
	asserts.AssertSessionToken(str)
	return str
end

function asserts.AssertRevisionChangeIdentifier(str)
	assert(str)
	assert(type(str) == "string", "Expected RevisionChangeIdentifier to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.RevisionChangeIdentifier(str)
	asserts.AssertRevisionChangeIdentifier(str)
	return str
end

function asserts.AssertExecutionSummary(str)
	assert(str)
	assert(type(str) == "string", "Expected ExecutionSummary to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ExecutionSummary(str)
	asserts.AssertExecutionSummary(str)
	return str
end

function asserts.AssertJobId(str)
	assert(str)
	assert(type(str) == "string", "Expected JobId to be of type 'string'")
end

--  
function M.JobId(str)
	asserts.AssertJobId(str)
	return str
end

function asserts.AssertNonce(str)
	assert(str)
	assert(type(str) == "string", "Expected Nonce to be of type 'string'")
	assert(#str <= 50, "Expected string to be max 50 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.Nonce(str)
	asserts.AssertNonce(str)
	return str
end

function asserts.AssertStageName(str)
	assert(str)
	assert(type(str) == "string", "Expected StageName to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.StageName(str)
	asserts.AssertStageName(str)
	return str
end

function asserts.AssertActionExecutionStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected ActionExecutionStatus to be of type 'string'")
end

--  
function M.ActionExecutionStatus(str)
	asserts.AssertActionExecutionStatus(str)
	return str
end

function asserts.AssertRevisionSummary(str)
	assert(str)
	assert(type(str) == "string", "Expected RevisionSummary to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.RevisionSummary(str)
	asserts.AssertRevisionSummary(str)
	return str
end

function asserts.AssertLastUpdatedBy(str)
	assert(str)
	assert(type(str) == "string", "Expected LastUpdatedBy to be of type 'string'")
end

--  
function M.LastUpdatedBy(str)
	asserts.AssertLastUpdatedBy(str)
	return str
end

function asserts.AssertWebhookAuthenticationType(str)
	assert(str)
	assert(type(str) == "string", "Expected WebhookAuthenticationType to be of type 'string'")
end

--  
function M.WebhookAuthenticationType(str)
	asserts.AssertWebhookAuthenticationType(str)
	return str
end

function asserts.AssertAccountId(str)
	assert(str)
	assert(type(str) == "string", "Expected AccountId to be of type 'string'")
end

--  
function M.AccountId(str)
	asserts.AssertAccountId(str)
	return str
end

function asserts.AssertDisabledReason(str)
	assert(str)
	assert(type(str) == "string", "Expected DisabledReason to be of type 'string'")
	assert(#str <= 300, "Expected string to be max 300 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.DisabledReason(str)
	asserts.AssertDisabledReason(str)
	return str
end

function asserts.AssertMatchEquals(str)
	assert(str)
	assert(type(str) == "string", "Expected MatchEquals to be of type 'string'")
	assert(#str <= 150, "Expected string to be max 150 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.MatchEquals(str)
	asserts.AssertMatchEquals(str)
	return str
end

function asserts.AssertLastChangedBy(str)
	assert(str)
	assert(type(str) == "string", "Expected LastChangedBy to be of type 'string'")
end

--  
function M.LastChangedBy(str)
	asserts.AssertLastChangedBy(str)
	return str
end

function asserts.AssertActionConfigurationPropertyType(str)
	assert(str)
	assert(type(str) == "string", "Expected ActionConfigurationPropertyType to be of type 'string'")
end

--  
function M.ActionConfigurationPropertyType(str)
	asserts.AssertActionConfigurationPropertyType(str)
	return str
end

function asserts.AssertPipelineName(str)
	assert(str)
	assert(type(str) == "string", "Expected PipelineName to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.PipelineName(str)
	asserts.AssertPipelineName(str)
	return str
end

function asserts.AssertBlockerName(str)
	assert(str)
	assert(type(str) == "string", "Expected BlockerName to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.BlockerName(str)
	asserts.AssertBlockerName(str)
	return str
end

function asserts.AssertUrlTemplate(str)
	assert(str)
	assert(type(str) == "string", "Expected UrlTemplate to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.UrlTemplate(str)
	asserts.AssertUrlTemplate(str)
	return str
end

function asserts.AssertActionConfigurationKey(str)
	assert(str)
	assert(type(str) == "string", "Expected ActionConfigurationKey to be of type 'string'")
	assert(#str <= 50, "Expected string to be max 50 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ActionConfigurationKey(str)
	asserts.AssertActionConfigurationKey(str)
	return str
end

function asserts.AssertActionCategory(str)
	assert(str)
	assert(type(str) == "string", "Expected ActionCategory to be of type 'string'")
end

--  
function M.ActionCategory(str)
	asserts.AssertActionCategory(str)
	return str
end

function asserts.AssertThirdPartyJobId(str)
	assert(str)
	assert(type(str) == "string", "Expected ThirdPartyJobId to be of type 'string'")
	assert(#str <= 512, "Expected string to be max 512 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ThirdPartyJobId(str)
	asserts.AssertThirdPartyJobId(str)
	return str
end

function asserts.AssertWebhookAuthConfigurationSecretToken(str)
	assert(str)
	assert(type(str) == "string", "Expected WebhookAuthConfigurationSecretToken to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.WebhookAuthConfigurationSecretToken(str)
	asserts.AssertWebhookAuthConfigurationSecretToken(str)
	return str
end

function asserts.AssertFailureType(str)
	assert(str)
	assert(type(str) == "string", "Expected FailureType to be of type 'string'")
end

--  
function M.FailureType(str)
	asserts.AssertFailureType(str)
	return str
end

function asserts.AssertActionProvider(str)
	assert(str)
	assert(type(str) == "string", "Expected ActionProvider to be of type 'string'")
	assert(#str <= 25, "Expected string to be max 25 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ActionProvider(str)
	asserts.AssertActionProvider(str)
	return str
end

function asserts.AssertNextToken(str)
	assert(str)
	assert(type(str) == "string", "Expected NextToken to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.NextToken(str)
	asserts.AssertNextToken(str)
	return str
end

function asserts.AssertArtifactName(str)
	assert(str)
	assert(type(str) == "string", "Expected ArtifactName to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ArtifactName(str)
	asserts.AssertArtifactName(str)
	return str
end

function asserts.AssertStageTransitionType(str)
	assert(str)
	assert(type(str) == "string", "Expected StageTransitionType to be of type 'string'")
end

--  
function M.StageTransitionType(str)
	asserts.AssertStageTransitionType(str)
	return str
end

function asserts.AssertStageRetryMode(str)
	assert(str)
	assert(type(str) == "string", "Expected StageRetryMode to be of type 'string'")
end

--  
function M.StageRetryMode(str)
	asserts.AssertStageRetryMode(str)
	return str
end

function asserts.AssertJobStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected JobStatus to be of type 'string'")
end

--  
function M.JobStatus(str)
	asserts.AssertJobStatus(str)
	return str
end

function asserts.AssertActionConfigurationValue(str)
	assert(str)
	assert(type(str) == "string", "Expected ActionConfigurationValue to be of type 'string'")
	assert(#str <= 1000, "Expected string to be max 1000 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ActionConfigurationValue(str)
	asserts.AssertActionConfigurationValue(str)
	return str
end

function asserts.AssertAccessKeyId(str)
	assert(str)
	assert(type(str) == "string", "Expected AccessKeyId to be of type 'string'")
end

--  
function M.AccessKeyId(str)
	asserts.AssertAccessKeyId(str)
	return str
end

function asserts.AssertApprovalSummary(str)
	assert(str)
	assert(type(str) == "string", "Expected ApprovalSummary to be of type 'string'")
	assert(#str <= 512, "Expected string to be max 512 characters")
end

--  
function M.ApprovalSummary(str)
	asserts.AssertApprovalSummary(str)
	return str
end

function asserts.AssertExecutionId(str)
	assert(str)
	assert(type(str) == "string", "Expected ExecutionId to be of type 'string'")
	assert(#str <= 1500, "Expected string to be max 1500 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ExecutionId(str)
	asserts.AssertExecutionId(str)
	return str
end

function asserts.AssertS3BucketName(str)
	assert(str)
	assert(type(str) == "string", "Expected S3BucketName to be of type 'string'")
end

--  
function M.S3BucketName(str)
	asserts.AssertS3BucketName(str)
	return str
end

function asserts.AssertEncryptionKeyId(str)
	assert(str)
	assert(type(str) == "string", "Expected EncryptionKeyId to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.EncryptionKeyId(str)
	asserts.AssertEncryptionKeyId(str)
	return str
end

function asserts.AssertActionConfigurationQueryableValue(str)
	assert(str)
	assert(type(str) == "string", "Expected ActionConfigurationQueryableValue to be of type 'string'")
	assert(#str <= 50, "Expected string to be max 50 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ActionConfigurationQueryableValue(str)
	asserts.AssertActionConfigurationQueryableValue(str)
	return str
end

function asserts.AssertApprovalToken(str)
	assert(str)
	assert(type(str) == "string", "Expected ApprovalToken to be of type 'string'")
end

--  
function M.ApprovalToken(str)
	asserts.AssertApprovalToken(str)
	return str
end

function asserts.AssertActionOwner(str)
	assert(str)
	assert(type(str) == "string", "Expected ActionOwner to be of type 'string'")
end

--  
function M.ActionOwner(str)
	asserts.AssertActionOwner(str)
	return str
end

function asserts.AssertMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected Message to be of type 'string'")
	assert(#str <= 5000, "Expected string to be max 5000 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.Message(str)
	asserts.AssertMessage(str)
	return str
end

function asserts.AssertWebhookUrl(str)
	assert(str)
	assert(type(str) == "string", "Expected WebhookUrl to be of type 'string'")
	assert(#str <= 1000, "Expected string to be max 1000 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.WebhookUrl(str)
	asserts.AssertWebhookUrl(str)
	return str
end

function asserts.AssertWebhookErrorCode(str)
	assert(str)
	assert(type(str) == "string", "Expected WebhookErrorCode to be of type 'string'")
end

--  
function M.WebhookErrorCode(str)
	asserts.AssertWebhookErrorCode(str)
	return str
end

function asserts.AssertWebhookErrorMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected WebhookErrorMessage to be of type 'string'")
end

--  
function M.WebhookErrorMessage(str)
	asserts.AssertWebhookErrorMessage(str)
	return str
end

function asserts.AssertClientToken(str)
	assert(str)
	assert(type(str) == "string", "Expected ClientToken to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ClientToken(str)
	asserts.AssertClientToken(str)
	return str
end

function asserts.AssertRoleArn(str)
	assert(str)
	assert(type(str) == "string", "Expected RoleArn to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
end

--  
function M.RoleArn(str)
	asserts.AssertRoleArn(str)
	return str
end

function asserts.AssertVersion(str)
	assert(str)
	assert(type(str) == "string", "Expected Version to be of type 'string'")
	assert(#str <= 9, "Expected string to be max 9 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.Version(str)
	asserts.AssertVersion(str)
	return str
end

function asserts.AssertApprovalStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected ApprovalStatus to be of type 'string'")
end

--  
function M.ApprovalStatus(str)
	asserts.AssertApprovalStatus(str)
	return str
end

function asserts.AssertSecretAccessKey(str)
	assert(str)
	assert(type(str) == "string", "Expected SecretAccessKey to be of type 'string'")
end

--  
function M.SecretAccessKey(str)
	asserts.AssertSecretAccessKey(str)
	return str
end

function asserts.AssertArtifactStoreType(str)
	assert(str)
	assert(type(str) == "string", "Expected ArtifactStoreType to be of type 'string'")
end

--  
function M.ArtifactStoreType(str)
	asserts.AssertArtifactStoreType(str)
	return str
end

function asserts.AssertArtifactLocationType(str)
	assert(str)
	assert(type(str) == "string", "Expected ArtifactLocationType to be of type 'string'")
end

--  
function M.ArtifactLocationType(str)
	asserts.AssertArtifactLocationType(str)
	return str
end

function asserts.AssertArtifactStoreLocation(str)
	assert(str)
	assert(type(str) == "string", "Expected ArtifactStoreLocation to be of type 'string'")
	assert(#str <= 63, "Expected string to be max 63 characters")
	assert(#str >= 3, "Expected string to be min 3 characters")
end

--  
function M.ArtifactStoreLocation(str)
	asserts.AssertArtifactStoreLocation(str)
	return str
end

function asserts.AssertContinuationToken(str)
	assert(str)
	assert(type(str) == "string", "Expected ContinuationToken to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ContinuationToken(str)
	asserts.AssertContinuationToken(str)
	return str
end

function asserts.AssertStageExecutionStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected StageExecutionStatus to be of type 'string'")
end

--  
function M.StageExecutionStatus(str)
	asserts.AssertStageExecutionStatus(str)
	return str
end

function asserts.AssertCode(str)
	assert(str)
	assert(type(str) == "string", "Expected Code to be of type 'string'")
end

--  
function M.Code(str)
	asserts.AssertCode(str)
	return str
end

function asserts.AssertPipelineArn(str)
	assert(str)
	assert(type(str) == "string", "Expected PipelineArn to be of type 'string'")
end

--  
function M.PipelineArn(str)
	asserts.AssertPipelineArn(str)
	return str
end

function asserts.AssertActionExecutionToken(str)
	assert(str)
	assert(type(str) == "string", "Expected ActionExecutionToken to be of type 'string'")
end

--  
function M.ActionExecutionToken(str)
	asserts.AssertActionExecutionToken(str)
	return str
end

function asserts.AssertClientId(str)
	assert(str)
	assert(type(str) == "string", "Expected ClientId to be of type 'string'")
end

--  
function M.ClientId(str)
	asserts.AssertClientId(str)
	return str
end

function asserts.AssertBlockerType(str)
	assert(str)
	assert(type(str) == "string", "Expected BlockerType to be of type 'string'")
end

--  
function M.BlockerType(str)
	asserts.AssertBlockerType(str)
	return str
end

function asserts.AssertPipelineExecutionStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected PipelineExecutionStatus to be of type 'string'")
end

--  
function M.PipelineExecutionStatus(str)
	asserts.AssertPipelineExecutionStatus(str)
	return str
end

function asserts.AssertWebhookArn(str)
	assert(str)
	assert(type(str) == "string", "Expected WebhookArn to be of type 'string'")
end

--  
function M.WebhookArn(str)
	asserts.AssertWebhookArn(str)
	return str
end

function asserts.AssertJsonPath(str)
	assert(str)
	assert(type(str) == "string", "Expected JsonPath to be of type 'string'")
	assert(#str <= 150, "Expected string to be max 150 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.JsonPath(str)
	asserts.AssertJsonPath(str)
	return str
end

function asserts.AssertUrl(str)
	assert(str)
	assert(type(str) == "string", "Expected Url to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.Url(str)
	asserts.AssertUrl(str)
	return str
end

function asserts.AssertS3ObjectKey(str)
	assert(str)
	assert(type(str) == "string", "Expected S3ObjectKey to be of type 'string'")
end

--  
function M.S3ObjectKey(str)
	asserts.AssertS3ObjectKey(str)
	return str
end

function asserts.AssertEncryptionKeyType(str)
	assert(str)
	assert(type(str) == "string", "Expected EncryptionKeyType to be of type 'string'")
end

--  
function M.EncryptionKeyType(str)
	asserts.AssertEncryptionKeyType(str)
	return str
end

function asserts.AssertDescription(str)
	assert(str)
	assert(type(str) == "string", "Expected Description to be of type 'string'")
	assert(#str <= 160, "Expected string to be max 160 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.Description(str)
	asserts.AssertDescription(str)
	return str
end

function asserts.AssertWebhookAuthConfigurationAllowedIPRange(str)
	assert(str)
	assert(type(str) == "string", "Expected WebhookAuthConfigurationAllowedIPRange to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.WebhookAuthConfigurationAllowedIPRange(str)
	asserts.AssertWebhookAuthConfigurationAllowedIPRange(str)
	return str
end

function asserts.AssertWebhookName(str)
	assert(str)
	assert(type(str) == "string", "Expected WebhookName to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.WebhookName(str)
	asserts.AssertWebhookName(str)
	return str
end

function asserts.AssertRevision(str)
	assert(str)
	assert(type(str) == "string", "Expected Revision to be of type 'string'")
	assert(#str <= 1500, "Expected string to be max 1500 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.Revision(str)
	asserts.AssertRevision(str)
	return str
end

function asserts.AssertPipelineVersion(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected PipelineVersion to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.PipelineVersion(integer)
	asserts.AssertPipelineVersion(integer)
	return integer
end

function asserts.AssertMaximumArtifactCount(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaximumArtifactCount to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 5, "Expected integer to be max 5")
end

function M.MaximumArtifactCount(integer)
	asserts.AssertMaximumArtifactCount(integer)
	return integer
end

function asserts.AssertPercentage(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected Percentage to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 100, "Expected integer to be max 100")
end

function M.Percentage(integer)
	asserts.AssertPercentage(integer)
	return integer
end

function asserts.AssertMaxBatchSize(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxBatchSize to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.MaxBatchSize(integer)
	asserts.AssertMaxBatchSize(integer)
	return integer
end

function asserts.AssertMinimumArtifactCount(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MinimumArtifactCount to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 5, "Expected integer to be max 5")
end

function M.MinimumArtifactCount(integer)
	asserts.AssertMinimumArtifactCount(integer)
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

function asserts.AssertActionRunOrder(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected ActionRunOrder to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 999, "Expected integer to be max 999")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.ActionRunOrder(integer)
	asserts.AssertActionRunOrder(integer)
	return integer
end

function asserts.AssertEnabled(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected Enabled to be of type 'boolean'")
end

function M.Enabled(boolean)
	asserts.AssertEnabled(boolean)
	return boolean
end

function asserts.AssertBoolean(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected Boolean to be of type 'boolean'")
end

function M.Boolean(boolean)
	asserts.AssertBoolean(boolean)
	return boolean
end

function asserts.AssertActionConfigurationMap(map)
	assert(map)
	assert(type(map) == "table", "Expected ActionConfigurationMap to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertActionConfigurationKey(k)
		asserts.AssertActionConfigurationValue(v)
	end
end

function M.ActionConfigurationMap(map)
	asserts.AssertActionConfigurationMap(map)
	return map
end

function asserts.AssertQueryParamMap(map)
	assert(map)
	assert(type(map) == "table", "Expected QueryParamMap to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertActionConfigurationKey(k)
		asserts.AssertActionConfigurationQueryableValue(v)
	end
end

function M.QueryParamMap(map)
	asserts.AssertQueryParamMap(map)
	return map
end

function asserts.AssertTimestamp(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected Timestamp to be of type 'string'")
end

function M.Timestamp(timestamp)
	asserts.AssertTimestamp(timestamp)
	return timestamp
end

function asserts.AssertTime(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected Time to be of type 'string'")
end

function M.Time(timestamp)
	asserts.AssertTime(timestamp)
	return timestamp
end

function asserts.AssertLastChangedAt(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected LastChangedAt to be of type 'string'")
end

function M.LastChangedAt(timestamp)
	asserts.AssertLastChangedAt(timestamp)
	return timestamp
end

function asserts.AssertWebhookLastTriggered(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected WebhookLastTriggered to be of type 'string'")
end

function M.WebhookLastTriggered(timestamp)
	asserts.AssertWebhookLastTriggered(timestamp)
	return timestamp
end

function asserts.AssertArtifactRevisionList(list)
	assert(list)
	assert(type(list) == "table", "Expected ArtifactRevisionList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertArtifactRevision(v)
	end
end

--  
-- List of ArtifactRevision objects
function M.ArtifactRevisionList(list)
	asserts.AssertArtifactRevisionList(list)
	return list
end

function asserts.AssertStageActionDeclarationList(list)
	assert(list)
	assert(type(list) == "table", "Expected StageActionDeclarationList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertActionDeclaration(v)
	end
end

--  
-- List of ActionDeclaration objects
function M.StageActionDeclarationList(list)
	asserts.AssertStageActionDeclarationList(list)
	return list
end

function asserts.AssertPipelineList(list)
	assert(list)
	assert(type(list) == "table", "Expected PipelineList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertPipelineSummary(v)
	end
end

--  
-- List of PipelineSummary objects
function M.PipelineList(list)
	asserts.AssertPipelineList(list)
	return list
end

function asserts.AssertStageStateList(list)
	assert(list)
	assert(type(list) == "table", "Expected StageStateList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertStageState(v)
	end
end

--  
-- List of StageState objects
function M.StageStateList(list)
	asserts.AssertStageStateList(list)
	return list
end

function asserts.AssertPipelineExecutionSummaryList(list)
	assert(list)
	assert(type(list) == "table", "Expected PipelineExecutionSummaryList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertPipelineExecutionSummary(v)
	end
end

--  
-- List of PipelineExecutionSummary objects
function M.PipelineExecutionSummaryList(list)
	asserts.AssertPipelineExecutionSummaryList(list)
	return list
end

function asserts.AssertStageBlockerDeclarationList(list)
	assert(list)
	assert(type(list) == "table", "Expected StageBlockerDeclarationList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertBlockerDeclaration(v)
	end
end

--  
-- List of BlockerDeclaration objects
function M.StageBlockerDeclarationList(list)
	asserts.AssertStageBlockerDeclarationList(list)
	return list
end

function asserts.AssertOutputArtifactList(list)
	assert(list)
	assert(type(list) == "table", "Expected OutputArtifactList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertOutputArtifact(v)
	end
end

--  
-- List of OutputArtifact objects
function M.OutputArtifactList(list)
	asserts.AssertOutputArtifactList(list)
	return list
end

function asserts.AssertWebhookList(list)
	assert(list)
	assert(type(list) == "table", "Expected WebhookList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertListWebhookItem(v)
	end
end

--  
-- List of ListWebhookItem objects
function M.WebhookList(list)
	asserts.AssertWebhookList(list)
	return list
end

function asserts.AssertActionTypeList(list)
	assert(list)
	assert(type(list) == "table", "Expected ActionTypeList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertActionType(v)
	end
end

--  
-- List of ActionType objects
function M.ActionTypeList(list)
	asserts.AssertActionTypeList(list)
	return list
end

function asserts.AssertPipelineStageDeclarationList(list)
	assert(list)
	assert(type(list) == "table", "Expected PipelineStageDeclarationList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertStageDeclaration(v)
	end
end

--  
-- List of StageDeclaration objects
function M.PipelineStageDeclarationList(list)
	asserts.AssertPipelineStageDeclarationList(list)
	return list
end

function asserts.AssertActionStateList(list)
	assert(list)
	assert(type(list) == "table", "Expected ActionStateList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertActionState(v)
	end
end

--  
-- List of ActionState objects
function M.ActionStateList(list)
	asserts.AssertActionStateList(list)
	return list
end

function asserts.AssertWebhookFilters(list)
	assert(list)
	assert(type(list) == "table", "Expected WebhookFilters to be of type ''table")
	assert(#list <= 5, "Expected list to be contain 5 elements")
	for _,v in ipairs(list) do
		asserts.AssertWebhookFilterRule(v)
	end
end

--  
-- List of WebhookFilterRule objects
function M.WebhookFilters(list)
	asserts.AssertWebhookFilters(list)
	return list
end

function asserts.AssertThirdPartyJobList(list)
	assert(list)
	assert(type(list) == "table", "Expected ThirdPartyJobList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertThirdPartyJob(v)
	end
end

--  
-- List of ThirdPartyJob objects
function M.ThirdPartyJobList(list)
	asserts.AssertThirdPartyJobList(list)
	return list
end

function asserts.AssertActionConfigurationPropertyList(list)
	assert(list)
	assert(type(list) == "table", "Expected ActionConfigurationPropertyList to be of type ''table")
	assert(#list <= 10, "Expected list to be contain 10 elements")
	for _,v in ipairs(list) do
		asserts.AssertActionConfigurationProperty(v)
	end
end

--  
-- List of ActionConfigurationProperty objects
function M.ActionConfigurationPropertyList(list)
	asserts.AssertActionConfigurationPropertyList(list)
	return list
end

function asserts.AssertJobList(list)
	assert(list)
	assert(type(list) == "table", "Expected JobList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertJob(v)
	end
end

--  
-- List of Job objects
function M.JobList(list)
	asserts.AssertJobList(list)
	return list
end

function asserts.AssertArtifactList(list)
	assert(list)
	assert(type(list) == "table", "Expected ArtifactList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertArtifact(v)
	end
end

--  
-- List of Artifact objects
function M.ArtifactList(list)
	asserts.AssertArtifactList(list)
	return list
end

function asserts.AssertSourceRevisionList(list)
	assert(list)
	assert(type(list) == "table", "Expected SourceRevisionList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertSourceRevision(v)
	end
end

--  
-- List of SourceRevision objects
function M.SourceRevisionList(list)
	asserts.AssertSourceRevisionList(list)
	return list
end

function asserts.AssertInputArtifactList(list)
	assert(list)
	assert(type(list) == "table", "Expected InputArtifactList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertInputArtifact(v)
	end
end

--  
-- List of InputArtifact objects
function M.InputArtifactList(list)
	asserts.AssertInputArtifactList(list)
	return list
end


local content_type = require "aws-sdk.core.content_type"
local request_headers = require "aws-sdk.core.request_headers"
local request_handlers = require "aws-sdk.core.request_handlers"

local settings = {}


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
--- Call EnableStageTransition asynchronously, invoking a callback when done
-- @param EnableStageTransitionInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.EnableStageTransitionAsync(EnableStageTransitionInput, cb)
	assert(EnableStageTransitionInput, "You must provide a EnableStageTransitionInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodePipeline_20150709.EnableStageTransition",
	}
	for header,value in pairs(EnableStageTransitionInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", EnableStageTransitionInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call EnableStageTransition synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param EnableStageTransitionInput
-- @return response
-- @return error_type
-- @return error_message
function M.EnableStageTransitionSync(EnableStageTransitionInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.EnableStageTransitionAsync(EnableStageTransitionInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call RetryStageExecution asynchronously, invoking a callback when done
-- @param RetryStageExecutionInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.RetryStageExecutionAsync(RetryStageExecutionInput, cb)
	assert(RetryStageExecutionInput, "You must provide a RetryStageExecutionInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodePipeline_20150709.RetryStageExecution",
	}
	for header,value in pairs(RetryStageExecutionInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", RetryStageExecutionInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RetryStageExecution synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RetryStageExecutionInput
-- @return response
-- @return error_type
-- @return error_message
function M.RetryStageExecutionSync(RetryStageExecutionInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RetryStageExecutionAsync(RetryStageExecutionInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DisableStageTransition asynchronously, invoking a callback when done
-- @param DisableStageTransitionInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DisableStageTransitionAsync(DisableStageTransitionInput, cb)
	assert(DisableStageTransitionInput, "You must provide a DisableStageTransitionInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodePipeline_20150709.DisableStageTransition",
	}
	for header,value in pairs(DisableStageTransitionInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DisableStageTransitionInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DisableStageTransition synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DisableStageTransitionInput
-- @return response
-- @return error_type
-- @return error_message
function M.DisableStageTransitionSync(DisableStageTransitionInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DisableStageTransitionAsync(DisableStageTransitionInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListWebhooks asynchronously, invoking a callback when done
-- @param ListWebhooksInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListWebhooksAsync(ListWebhooksInput, cb)
	assert(ListWebhooksInput, "You must provide a ListWebhooksInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodePipeline_20150709.ListWebhooks",
	}
	for header,value in pairs(ListWebhooksInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListWebhooksInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListWebhooks synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListWebhooksInput
-- @return response
-- @return error_type
-- @return error_message
function M.ListWebhooksSync(ListWebhooksInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListWebhooksAsync(ListWebhooksInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PollForThirdPartyJobs asynchronously, invoking a callback when done
-- @param PollForThirdPartyJobsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PollForThirdPartyJobsAsync(PollForThirdPartyJobsInput, cb)
	assert(PollForThirdPartyJobsInput, "You must provide a PollForThirdPartyJobsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodePipeline_20150709.PollForThirdPartyJobs",
	}
	for header,value in pairs(PollForThirdPartyJobsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", PollForThirdPartyJobsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PollForThirdPartyJobs synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PollForThirdPartyJobsInput
-- @return response
-- @return error_type
-- @return error_message
function M.PollForThirdPartyJobsSync(PollForThirdPartyJobsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PollForThirdPartyJobsAsync(PollForThirdPartyJobsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetThirdPartyJobDetails asynchronously, invoking a callback when done
-- @param GetThirdPartyJobDetailsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetThirdPartyJobDetailsAsync(GetThirdPartyJobDetailsInput, cb)
	assert(GetThirdPartyJobDetailsInput, "You must provide a GetThirdPartyJobDetailsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodePipeline_20150709.GetThirdPartyJobDetails",
	}
	for header,value in pairs(GetThirdPartyJobDetailsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetThirdPartyJobDetailsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetThirdPartyJobDetails synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetThirdPartyJobDetailsInput
-- @return response
-- @return error_type
-- @return error_message
function M.GetThirdPartyJobDetailsSync(GetThirdPartyJobDetailsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetThirdPartyJobDetailsAsync(GetThirdPartyJobDetailsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeletePipeline asynchronously, invoking a callback when done
-- @param DeletePipelineInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeletePipelineAsync(DeletePipelineInput, cb)
	assert(DeletePipelineInput, "You must provide a DeletePipelineInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodePipeline_20150709.DeletePipeline",
	}
	for header,value in pairs(DeletePipelineInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeletePipelineInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeletePipeline synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeletePipelineInput
-- @return response
-- @return error_type
-- @return error_message
function M.DeletePipelineSync(DeletePipelineInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeletePipelineAsync(DeletePipelineInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdatePipeline asynchronously, invoking a callback when done
-- @param UpdatePipelineInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdatePipelineAsync(UpdatePipelineInput, cb)
	assert(UpdatePipelineInput, "You must provide a UpdatePipelineInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodePipeline_20150709.UpdatePipeline",
	}
	for header,value in pairs(UpdatePipelineInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdatePipelineInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdatePipeline synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdatePipelineInput
-- @return response
-- @return error_type
-- @return error_message
function M.UpdatePipelineSync(UpdatePipelineInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdatePipelineAsync(UpdatePipelineInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PutJobFailureResult asynchronously, invoking a callback when done
-- @param PutJobFailureResultInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PutJobFailureResultAsync(PutJobFailureResultInput, cb)
	assert(PutJobFailureResultInput, "You must provide a PutJobFailureResultInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodePipeline_20150709.PutJobFailureResult",
	}
	for header,value in pairs(PutJobFailureResultInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", PutJobFailureResultInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutJobFailureResult synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutJobFailureResultInput
-- @return response
-- @return error_type
-- @return error_message
function M.PutJobFailureResultSync(PutJobFailureResultInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutJobFailureResultAsync(PutJobFailureResultInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListActionTypes asynchronously, invoking a callback when done
-- @param ListActionTypesInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListActionTypesAsync(ListActionTypesInput, cb)
	assert(ListActionTypesInput, "You must provide a ListActionTypesInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodePipeline_20150709.ListActionTypes",
	}
	for header,value in pairs(ListActionTypesInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListActionTypesInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListActionTypes synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListActionTypesInput
-- @return response
-- @return error_type
-- @return error_message
function M.ListActionTypesSync(ListActionTypesInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListActionTypesAsync(ListActionTypesInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AcknowledgeThirdPartyJob asynchronously, invoking a callback when done
-- @param AcknowledgeThirdPartyJobInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AcknowledgeThirdPartyJobAsync(AcknowledgeThirdPartyJobInput, cb)
	assert(AcknowledgeThirdPartyJobInput, "You must provide a AcknowledgeThirdPartyJobInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodePipeline_20150709.AcknowledgeThirdPartyJob",
	}
	for header,value in pairs(AcknowledgeThirdPartyJobInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", AcknowledgeThirdPartyJobInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AcknowledgeThirdPartyJob synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AcknowledgeThirdPartyJobInput
-- @return response
-- @return error_type
-- @return error_message
function M.AcknowledgeThirdPartyJobSync(AcknowledgeThirdPartyJobInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AcknowledgeThirdPartyJobAsync(AcknowledgeThirdPartyJobInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PutWebhook asynchronously, invoking a callback when done
-- @param PutWebhookInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PutWebhookAsync(PutWebhookInput, cb)
	assert(PutWebhookInput, "You must provide a PutWebhookInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodePipeline_20150709.PutWebhook",
	}
	for header,value in pairs(PutWebhookInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", PutWebhookInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutWebhook synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutWebhookInput
-- @return response
-- @return error_type
-- @return error_message
function M.PutWebhookSync(PutWebhookInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutWebhookAsync(PutWebhookInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteWebhook asynchronously, invoking a callback when done
-- @param DeleteWebhookInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteWebhookAsync(DeleteWebhookInput, cb)
	assert(DeleteWebhookInput, "You must provide a DeleteWebhookInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodePipeline_20150709.DeleteWebhook",
	}
	for header,value in pairs(DeleteWebhookInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteWebhookInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteWebhook synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteWebhookInput
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteWebhookSync(DeleteWebhookInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteWebhookAsync(DeleteWebhookInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeregisterWebhookWithThirdParty asynchronously, invoking a callback when done
-- @param DeregisterWebhookWithThirdPartyInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeregisterWebhookWithThirdPartyAsync(DeregisterWebhookWithThirdPartyInput, cb)
	assert(DeregisterWebhookWithThirdPartyInput, "You must provide a DeregisterWebhookWithThirdPartyInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodePipeline_20150709.DeregisterWebhookWithThirdParty",
	}
	for header,value in pairs(DeregisterWebhookWithThirdPartyInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeregisterWebhookWithThirdPartyInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeregisterWebhookWithThirdParty synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeregisterWebhookWithThirdPartyInput
-- @return response
-- @return error_type
-- @return error_message
function M.DeregisterWebhookWithThirdPartySync(DeregisterWebhookWithThirdPartyInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeregisterWebhookWithThirdPartyAsync(DeregisterWebhookWithThirdPartyInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetPipelineExecution asynchronously, invoking a callback when done
-- @param GetPipelineExecutionInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetPipelineExecutionAsync(GetPipelineExecutionInput, cb)
	assert(GetPipelineExecutionInput, "You must provide a GetPipelineExecutionInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodePipeline_20150709.GetPipelineExecution",
	}
	for header,value in pairs(GetPipelineExecutionInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetPipelineExecutionInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetPipelineExecution synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetPipelineExecutionInput
-- @return response
-- @return error_type
-- @return error_message
function M.GetPipelineExecutionSync(GetPipelineExecutionInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetPipelineExecutionAsync(GetPipelineExecutionInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PutThirdPartyJobSuccessResult asynchronously, invoking a callback when done
-- @param PutThirdPartyJobSuccessResultInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PutThirdPartyJobSuccessResultAsync(PutThirdPartyJobSuccessResultInput, cb)
	assert(PutThirdPartyJobSuccessResultInput, "You must provide a PutThirdPartyJobSuccessResultInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodePipeline_20150709.PutThirdPartyJobSuccessResult",
	}
	for header,value in pairs(PutThirdPartyJobSuccessResultInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", PutThirdPartyJobSuccessResultInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutThirdPartyJobSuccessResult synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutThirdPartyJobSuccessResultInput
-- @return response
-- @return error_type
-- @return error_message
function M.PutThirdPartyJobSuccessResultSync(PutThirdPartyJobSuccessResultInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutThirdPartyJobSuccessResultAsync(PutThirdPartyJobSuccessResultInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AcknowledgeJob asynchronously, invoking a callback when done
-- @param AcknowledgeJobInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AcknowledgeJobAsync(AcknowledgeJobInput, cb)
	assert(AcknowledgeJobInput, "You must provide a AcknowledgeJobInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodePipeline_20150709.AcknowledgeJob",
	}
	for header,value in pairs(AcknowledgeJobInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", AcknowledgeJobInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AcknowledgeJob synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AcknowledgeJobInput
-- @return response
-- @return error_type
-- @return error_message
function M.AcknowledgeJobSync(AcknowledgeJobInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AcknowledgeJobAsync(AcknowledgeJobInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PutActionRevision asynchronously, invoking a callback when done
-- @param PutActionRevisionInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PutActionRevisionAsync(PutActionRevisionInput, cb)
	assert(PutActionRevisionInput, "You must provide a PutActionRevisionInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodePipeline_20150709.PutActionRevision",
	}
	for header,value in pairs(PutActionRevisionInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", PutActionRevisionInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutActionRevision synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutActionRevisionInput
-- @return response
-- @return error_type
-- @return error_message
function M.PutActionRevisionSync(PutActionRevisionInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutActionRevisionAsync(PutActionRevisionInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListPipelines asynchronously, invoking a callback when done
-- @param ListPipelinesInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListPipelinesAsync(ListPipelinesInput, cb)
	assert(ListPipelinesInput, "You must provide a ListPipelinesInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodePipeline_20150709.ListPipelines",
	}
	for header,value in pairs(ListPipelinesInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListPipelinesInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListPipelines synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListPipelinesInput
-- @return response
-- @return error_type
-- @return error_message
function M.ListPipelinesSync(ListPipelinesInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListPipelinesAsync(ListPipelinesInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call StartPipelineExecution asynchronously, invoking a callback when done
-- @param StartPipelineExecutionInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.StartPipelineExecutionAsync(StartPipelineExecutionInput, cb)
	assert(StartPipelineExecutionInput, "You must provide a StartPipelineExecutionInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodePipeline_20150709.StartPipelineExecution",
	}
	for header,value in pairs(StartPipelineExecutionInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", StartPipelineExecutionInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call StartPipelineExecution synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StartPipelineExecutionInput
-- @return response
-- @return error_type
-- @return error_message
function M.StartPipelineExecutionSync(StartPipelineExecutionInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StartPipelineExecutionAsync(StartPipelineExecutionInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PutApprovalResult asynchronously, invoking a callback when done
-- @param PutApprovalResultInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PutApprovalResultAsync(PutApprovalResultInput, cb)
	assert(PutApprovalResultInput, "You must provide a PutApprovalResultInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodePipeline_20150709.PutApprovalResult",
	}
	for header,value in pairs(PutApprovalResultInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", PutApprovalResultInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutApprovalResult synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutApprovalResultInput
-- @return response
-- @return error_type
-- @return error_message
function M.PutApprovalResultSync(PutApprovalResultInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutApprovalResultAsync(PutApprovalResultInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PutThirdPartyJobFailureResult asynchronously, invoking a callback when done
-- @param PutThirdPartyJobFailureResultInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PutThirdPartyJobFailureResultAsync(PutThirdPartyJobFailureResultInput, cb)
	assert(PutThirdPartyJobFailureResultInput, "You must provide a PutThirdPartyJobFailureResultInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodePipeline_20150709.PutThirdPartyJobFailureResult",
	}
	for header,value in pairs(PutThirdPartyJobFailureResultInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", PutThirdPartyJobFailureResultInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutThirdPartyJobFailureResult synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutThirdPartyJobFailureResultInput
-- @return response
-- @return error_type
-- @return error_message
function M.PutThirdPartyJobFailureResultSync(PutThirdPartyJobFailureResultInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutThirdPartyJobFailureResultAsync(PutThirdPartyJobFailureResultInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PollForJobs asynchronously, invoking a callback when done
-- @param PollForJobsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PollForJobsAsync(PollForJobsInput, cb)
	assert(PollForJobsInput, "You must provide a PollForJobsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodePipeline_20150709.PollForJobs",
	}
	for header,value in pairs(PollForJobsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", PollForJobsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PollForJobs synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PollForJobsInput
-- @return response
-- @return error_type
-- @return error_message
function M.PollForJobsSync(PollForJobsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PollForJobsAsync(PollForJobsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetPipelineState asynchronously, invoking a callback when done
-- @param GetPipelineStateInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetPipelineStateAsync(GetPipelineStateInput, cb)
	assert(GetPipelineStateInput, "You must provide a GetPipelineStateInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodePipeline_20150709.GetPipelineState",
	}
	for header,value in pairs(GetPipelineStateInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetPipelineStateInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetPipelineState synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetPipelineStateInput
-- @return response
-- @return error_type
-- @return error_message
function M.GetPipelineStateSync(GetPipelineStateInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetPipelineStateAsync(GetPipelineStateInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateCustomActionType asynchronously, invoking a callback when done
-- @param CreateCustomActionTypeInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateCustomActionTypeAsync(CreateCustomActionTypeInput, cb)
	assert(CreateCustomActionTypeInput, "You must provide a CreateCustomActionTypeInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodePipeline_20150709.CreateCustomActionType",
	}
	for header,value in pairs(CreateCustomActionTypeInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateCustomActionTypeInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateCustomActionType synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateCustomActionTypeInput
-- @return response
-- @return error_type
-- @return error_message
function M.CreateCustomActionTypeSync(CreateCustomActionTypeInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateCustomActionTypeAsync(CreateCustomActionTypeInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreatePipeline asynchronously, invoking a callback when done
-- @param CreatePipelineInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreatePipelineAsync(CreatePipelineInput, cb)
	assert(CreatePipelineInput, "You must provide a CreatePipelineInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodePipeline_20150709.CreatePipeline",
	}
	for header,value in pairs(CreatePipelineInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreatePipelineInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreatePipeline synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreatePipelineInput
-- @return response
-- @return error_type
-- @return error_message
function M.CreatePipelineSync(CreatePipelineInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreatePipelineAsync(CreatePipelineInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call RegisterWebhookWithThirdParty asynchronously, invoking a callback when done
-- @param RegisterWebhookWithThirdPartyInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.RegisterWebhookWithThirdPartyAsync(RegisterWebhookWithThirdPartyInput, cb)
	assert(RegisterWebhookWithThirdPartyInput, "You must provide a RegisterWebhookWithThirdPartyInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodePipeline_20150709.RegisterWebhookWithThirdParty",
	}
	for header,value in pairs(RegisterWebhookWithThirdPartyInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", RegisterWebhookWithThirdPartyInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RegisterWebhookWithThirdParty synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RegisterWebhookWithThirdPartyInput
-- @return response
-- @return error_type
-- @return error_message
function M.RegisterWebhookWithThirdPartySync(RegisterWebhookWithThirdPartyInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RegisterWebhookWithThirdPartyAsync(RegisterWebhookWithThirdPartyInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetJobDetails asynchronously, invoking a callback when done
-- @param GetJobDetailsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetJobDetailsAsync(GetJobDetailsInput, cb)
	assert(GetJobDetailsInput, "You must provide a GetJobDetailsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodePipeline_20150709.GetJobDetails",
	}
	for header,value in pairs(GetJobDetailsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetJobDetailsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetJobDetails synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetJobDetailsInput
-- @return response
-- @return error_type
-- @return error_message
function M.GetJobDetailsSync(GetJobDetailsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetJobDetailsAsync(GetJobDetailsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetPipeline asynchronously, invoking a callback when done
-- @param GetPipelineInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetPipelineAsync(GetPipelineInput, cb)
	assert(GetPipelineInput, "You must provide a GetPipelineInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodePipeline_20150709.GetPipeline",
	}
	for header,value in pairs(GetPipelineInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetPipelineInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetPipeline synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetPipelineInput
-- @return response
-- @return error_type
-- @return error_message
function M.GetPipelineSync(GetPipelineInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetPipelineAsync(GetPipelineInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteCustomActionType asynchronously, invoking a callback when done
-- @param DeleteCustomActionTypeInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteCustomActionTypeAsync(DeleteCustomActionTypeInput, cb)
	assert(DeleteCustomActionTypeInput, "You must provide a DeleteCustomActionTypeInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodePipeline_20150709.DeleteCustomActionType",
	}
	for header,value in pairs(DeleteCustomActionTypeInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteCustomActionTypeInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteCustomActionType synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteCustomActionTypeInput
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteCustomActionTypeSync(DeleteCustomActionTypeInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteCustomActionTypeAsync(DeleteCustomActionTypeInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListPipelineExecutions asynchronously, invoking a callback when done
-- @param ListPipelineExecutionsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListPipelineExecutionsAsync(ListPipelineExecutionsInput, cb)
	assert(ListPipelineExecutionsInput, "You must provide a ListPipelineExecutionsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodePipeline_20150709.ListPipelineExecutions",
	}
	for header,value in pairs(ListPipelineExecutionsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListPipelineExecutionsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListPipelineExecutions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListPipelineExecutionsInput
-- @return response
-- @return error_type
-- @return error_message
function M.ListPipelineExecutionsSync(ListPipelineExecutionsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListPipelineExecutionsAsync(ListPipelineExecutionsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PutJobSuccessResult asynchronously, invoking a callback when done
-- @param PutJobSuccessResultInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PutJobSuccessResultAsync(PutJobSuccessResultInput, cb)
	assert(PutJobSuccessResultInput, "You must provide a PutJobSuccessResultInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodePipeline_20150709.PutJobSuccessResult",
	}
	for header,value in pairs(PutJobSuccessResultInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", PutJobSuccessResultInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutJobSuccessResult synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutJobSuccessResultInput
-- @return response
-- @return error_type
-- @return error_message
function M.PutJobSuccessResultSync(PutJobSuccessResultInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutJobSuccessResultAsync(PutJobSuccessResultInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
