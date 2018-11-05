--- GENERATED CODE - DO NOT MODIFY
-- AWS CodeBuild (codebuild-2016-10-06)

local M = {}

M.metadata = {
	api_version = "2016-10-06",
	json_version = "1.1",
	protocol = "json",
	checksum_format = "",
	endpoint_prefix = "codebuild",
	service_abbreviation = "",
	service_full_name = "AWS CodeBuild",
	signature_version = "v4",
	target_prefix = "CodeBuild_20161006",
	timestamp_format = "",
	global_endpoint = "",
	uid = "codebuild-2016-10-06",
}

local keys = {}
local asserts = {}

keys.EnvironmentPlatform = { ["languages"] = true, ["platform"] = true, nil }

function asserts.AssertEnvironmentPlatform(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EnvironmentPlatform to be of type 'table'")
	if struct["languages"] then asserts.AssertEnvironmentLanguages(struct["languages"]) end
	if struct["platform"] then asserts.AssertPlatformType(struct["platform"]) end
	for k,_ in pairs(struct) do
		assert(keys.EnvironmentPlatform[k], "EnvironmentPlatform contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EnvironmentPlatform
-- <p>A set of Docker images that are related by platform and are managed by AWS CodeBuild.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * languages [EnvironmentLanguages] <p>The list of programming languages that are available for the specified platform.</p>
-- * platform [PlatformType] <p>The platform's name.</p>
-- @return EnvironmentPlatform structure as a key-value pair table
function M.EnvironmentPlatform(args)
	assert(args, "You must provide an argument table when creating EnvironmentPlatform")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["languages"] = args["languages"],
		["platform"] = args["platform"],
	}
	asserts.AssertEnvironmentPlatform(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchDeleteBuildsInput = { ["ids"] = true, nil }

function asserts.AssertBatchDeleteBuildsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchDeleteBuildsInput to be of type 'table'")
	assert(struct["ids"], "Expected key ids to exist in table")
	if struct["ids"] then asserts.AssertBuildIds(struct["ids"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchDeleteBuildsInput[k], "BatchDeleteBuildsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchDeleteBuildsInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ids [BuildIds] <p>The IDs of the builds to delete.</p>
-- Required key: ids
-- @return BatchDeleteBuildsInput structure as a key-value pair table
function M.BatchDeleteBuildsInput(args)
	assert(args, "You must provide an argument table when creating BatchDeleteBuildsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ids"] = args["ids"],
	}
	asserts.AssertBatchDeleteBuildsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StartBuildInput = { ["sourceLocationOverride"] = true, ["sourceTypeOverride"] = true, ["timeoutInMinutesOverride"] = true, ["secondarySourcesVersionOverride"] = true, ["privilegedModeOverride"] = true, ["secondaryArtifactsOverride"] = true, ["sourceVersion"] = true, ["idempotencyToken"] = true, ["logsConfigOverride"] = true, ["secondarySourcesOverride"] = true, ["insecureSslOverride"] = true, ["environmentVariablesOverride"] = true, ["computeTypeOverride"] = true, ["projectName"] = true, ["gitCloneDepthOverride"] = true, ["certificateOverride"] = true, ["buildspecOverride"] = true, ["environmentTypeOverride"] = true, ["serviceRoleOverride"] = true, ["sourceAuthOverride"] = true, ["imageOverride"] = true, ["reportBuildStatusOverride"] = true, ["artifactsOverride"] = true, ["cacheOverride"] = true, nil }

function asserts.AssertStartBuildInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartBuildInput to be of type 'table'")
	assert(struct["projectName"], "Expected key projectName to exist in table")
	if struct["sourceLocationOverride"] then asserts.AssertString(struct["sourceLocationOverride"]) end
	if struct["sourceTypeOverride"] then asserts.AssertSourceType(struct["sourceTypeOverride"]) end
	if struct["timeoutInMinutesOverride"] then asserts.AssertTimeOut(struct["timeoutInMinutesOverride"]) end
	if struct["secondarySourcesVersionOverride"] then asserts.AssertProjectSecondarySourceVersions(struct["secondarySourcesVersionOverride"]) end
	if struct["privilegedModeOverride"] then asserts.AssertWrapperBoolean(struct["privilegedModeOverride"]) end
	if struct["secondaryArtifactsOverride"] then asserts.AssertProjectArtifactsList(struct["secondaryArtifactsOverride"]) end
	if struct["sourceVersion"] then asserts.AssertString(struct["sourceVersion"]) end
	if struct["idempotencyToken"] then asserts.AssertString(struct["idempotencyToken"]) end
	if struct["logsConfigOverride"] then asserts.AssertLogsConfig(struct["logsConfigOverride"]) end
	if struct["secondarySourcesOverride"] then asserts.AssertProjectSources(struct["secondarySourcesOverride"]) end
	if struct["insecureSslOverride"] then asserts.AssertWrapperBoolean(struct["insecureSslOverride"]) end
	if struct["environmentVariablesOverride"] then asserts.AssertEnvironmentVariables(struct["environmentVariablesOverride"]) end
	if struct["computeTypeOverride"] then asserts.AssertComputeType(struct["computeTypeOverride"]) end
	if struct["projectName"] then asserts.AssertNonEmptyString(struct["projectName"]) end
	if struct["gitCloneDepthOverride"] then asserts.AssertGitCloneDepth(struct["gitCloneDepthOverride"]) end
	if struct["certificateOverride"] then asserts.AssertString(struct["certificateOverride"]) end
	if struct["buildspecOverride"] then asserts.AssertString(struct["buildspecOverride"]) end
	if struct["environmentTypeOverride"] then asserts.AssertEnvironmentType(struct["environmentTypeOverride"]) end
	if struct["serviceRoleOverride"] then asserts.AssertNonEmptyString(struct["serviceRoleOverride"]) end
	if struct["sourceAuthOverride"] then asserts.AssertSourceAuth(struct["sourceAuthOverride"]) end
	if struct["imageOverride"] then asserts.AssertNonEmptyString(struct["imageOverride"]) end
	if struct["reportBuildStatusOverride"] then asserts.AssertWrapperBoolean(struct["reportBuildStatusOverride"]) end
	if struct["artifactsOverride"] then asserts.AssertProjectArtifacts(struct["artifactsOverride"]) end
	if struct["cacheOverride"] then asserts.AssertProjectCache(struct["cacheOverride"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartBuildInput[k], "StartBuildInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartBuildInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * sourceLocationOverride [String] <p>A location that overrides for this build the source location for the one defined in the build project.</p>
-- * sourceTypeOverride [SourceType] <p>A source input type for this build that overrides the source input defined in the build project.</p>
-- * timeoutInMinutesOverride [TimeOut] <p>The number of build timeout minutes, from 5 to 480 (8 hours), that overrides, for this build only, the latest setting already defined in the build project.</p>
-- * secondarySourcesVersionOverride [ProjectSecondarySourceVersions] <p> An array of <code>ProjectSourceVersion</code> objects that specify one or more versions of the project's secondary sources to be used for this build only. </p>
-- * privilegedModeOverride [WrapperBoolean] <p>Enable this flag to override privileged mode in the build project.</p>
-- * secondaryArtifactsOverride [ProjectArtifactsList] <p> An array of <code>ProjectArtifacts</code> objects. </p>
-- * sourceVersion [String] <p>A version of the build input to be built, for this build only. If not specified, the latest version will be used. If specified, must be one of:</p> <ul> <li> <p>For AWS CodeCommit: the commit ID to use.</p> </li> <li> <p>For GitHub: the commit ID, pull request ID, branch name, or tag name that corresponds to the version of the source code you want to build. If a pull request ID is specified, it must use the format <code>pr/pull-request-ID</code> (for example <code>pr/25</code>). If a branch name is specified, the branch's HEAD commit ID will be used. If not specified, the default branch's HEAD commit ID will be used.</p> </li> <li> <p>For Bitbucket: the commit ID, branch name, or tag name that corresponds to the version of the source code you want to build. If a branch name is specified, the branch's HEAD commit ID will be used. If not specified, the default branch's HEAD commit ID will be used.</p> </li> <li> <p>For Amazon Simple Storage Service (Amazon S3): the version ID of the object representing the build input ZIP file to use.</p> </li> </ul>
-- * idempotencyToken [String] <p>A unique, case sensitive identifier you provide to ensure the idempotency of the StartBuild request. The token is included in the StartBuild request and is valid for 12 hours. If you repeat the StartBuild request with the same token, but change a parameter, AWS CodeBuild returns a parameter mismatch error. </p>
-- * logsConfigOverride [LogsConfig] <p> Log settings for this build that override the log settings defined in the build project. </p>
-- * secondarySourcesOverride [ProjectSources] <p> An array of <code>ProjectSource</code> objects. </p>
-- * insecureSslOverride [WrapperBoolean] <p>Enable this flag to override the insecure SSL setting that is specified in the build project. The insecure SSL setting determines whether to ignore SSL warnings while connecting to the project source code. This override applies only if the build's source is GitHub Enterprise.</p>
-- * environmentVariablesOverride [EnvironmentVariables] <p>A set of environment variables that overrides, for this build only, the latest ones already defined in the build project.</p>
-- * computeTypeOverride [ComputeType] <p>The name of a compute type for this build that overrides the one specified in the build project.</p>
-- * projectName [NonEmptyString] <p>The name of the AWS CodeBuild build project to start running a build.</p>
-- * gitCloneDepthOverride [GitCloneDepth] <p>The user-defined depth of history, with a minimum value of 0, that overrides, for this build only, any previous depth of history defined in the build project.</p>
-- * certificateOverride [String] <p>The name of a certificate for this build that overrides the one specified in the build project.</p>
-- * buildspecOverride [String] <p>A build spec declaration that overrides, for this build only, the latest one already defined in the build project.</p>
-- * environmentTypeOverride [EnvironmentType] <p>A container type for this build that overrides the one specified in the build project.</p>
-- * serviceRoleOverride [NonEmptyString] <p>The name of a service role for this build that overrides the one specified in the build project.</p>
-- * sourceAuthOverride [SourceAuth] <p>An authorization type for this build that overrides the one defined in the build project. This override applies only if the build project's source is BitBucket or GitHub.</p>
-- * imageOverride [NonEmptyString] <p>The name of an image for this build that overrides the one specified in the build project.</p>
-- * reportBuildStatusOverride [WrapperBoolean] <p> Set to true to report to your source provider the status of a build's start and completion. If you use this option with a source provider other than GitHub, an invalidInputException is thrown. </p>
-- * artifactsOverride [ProjectArtifacts] <p>Build output artifact settings that override, for this build only, the latest ones already defined in the build project.</p>
-- * cacheOverride [ProjectCache] <p>A ProjectCache object specified for this build that overrides the one defined in the build project.</p>
-- Required key: projectName
-- @return StartBuildInput structure as a key-value pair table
function M.StartBuildInput(args)
	assert(args, "You must provide an argument table when creating StartBuildInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["sourceLocationOverride"] = args["sourceLocationOverride"],
		["sourceTypeOverride"] = args["sourceTypeOverride"],
		["timeoutInMinutesOverride"] = args["timeoutInMinutesOverride"],
		["secondarySourcesVersionOverride"] = args["secondarySourcesVersionOverride"],
		["privilegedModeOverride"] = args["privilegedModeOverride"],
		["secondaryArtifactsOverride"] = args["secondaryArtifactsOverride"],
		["sourceVersion"] = args["sourceVersion"],
		["idempotencyToken"] = args["idempotencyToken"],
		["logsConfigOverride"] = args["logsConfigOverride"],
		["secondarySourcesOverride"] = args["secondarySourcesOverride"],
		["insecureSslOverride"] = args["insecureSslOverride"],
		["environmentVariablesOverride"] = args["environmentVariablesOverride"],
		["computeTypeOverride"] = args["computeTypeOverride"],
		["projectName"] = args["projectName"],
		["gitCloneDepthOverride"] = args["gitCloneDepthOverride"],
		["certificateOverride"] = args["certificateOverride"],
		["buildspecOverride"] = args["buildspecOverride"],
		["environmentTypeOverride"] = args["environmentTypeOverride"],
		["serviceRoleOverride"] = args["serviceRoleOverride"],
		["sourceAuthOverride"] = args["sourceAuthOverride"],
		["imageOverride"] = args["imageOverride"],
		["reportBuildStatusOverride"] = args["reportBuildStatusOverride"],
		["artifactsOverride"] = args["artifactsOverride"],
		["cacheOverride"] = args["cacheOverride"],
	}
	asserts.AssertStartBuildInput(all_args)
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

keys.InvalidateProjectCacheOutput = { nil }

function asserts.AssertInvalidateProjectCacheOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidateProjectCacheOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidateProjectCacheOutput[k], "InvalidateProjectCacheOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidateProjectCacheOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidateProjectCacheOutput structure as a key-value pair table
function M.InvalidateProjectCacheOutput(args)
	assert(args, "You must provide an argument table when creating InvalidateProjectCacheOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertInvalidateProjectCacheOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListCuratedEnvironmentImagesOutput = { ["platforms"] = true, nil }

function asserts.AssertListCuratedEnvironmentImagesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListCuratedEnvironmentImagesOutput to be of type 'table'")
	if struct["platforms"] then asserts.AssertEnvironmentPlatforms(struct["platforms"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListCuratedEnvironmentImagesOutput[k], "ListCuratedEnvironmentImagesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListCuratedEnvironmentImagesOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * platforms [EnvironmentPlatforms] <p>Information about supported platforms for Docker images that are managed by AWS CodeBuild.</p>
-- @return ListCuratedEnvironmentImagesOutput structure as a key-value pair table
function M.ListCuratedEnvironmentImagesOutput(args)
	assert(args, "You must provide an argument table when creating ListCuratedEnvironmentImagesOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["platforms"] = args["platforms"],
	}
	asserts.AssertListCuratedEnvironmentImagesOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BuildNotDeleted = { ["id"] = true, ["statusCode"] = true, nil }

function asserts.AssertBuildNotDeleted(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BuildNotDeleted to be of type 'table'")
	if struct["id"] then asserts.AssertNonEmptyString(struct["id"]) end
	if struct["statusCode"] then asserts.AssertString(struct["statusCode"]) end
	for k,_ in pairs(struct) do
		assert(keys.BuildNotDeleted[k], "BuildNotDeleted contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BuildNotDeleted
-- <p>Information about a build that could not be successfully deleted.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * id [NonEmptyString] <p>The ID of the build that could not be successfully deleted.</p>
-- * statusCode [String] <p>Additional information about the build that could not be successfully deleted.</p>
-- @return BuildNotDeleted structure as a key-value pair table
function M.BuildNotDeleted(args)
	assert(args, "You must provide an argument table when creating BuildNotDeleted")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["id"] = args["id"],
		["statusCode"] = args["statusCode"],
	}
	asserts.AssertBuildNotDeleted(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Project = { ["logsConfig"] = true, ["timeoutInMinutes"] = true, ["vpcConfig"] = true, ["name"] = true, ["serviceRole"] = true, ["tags"] = true, ["artifacts"] = true, ["lastModified"] = true, ["cache"] = true, ["webhook"] = true, ["created"] = true, ["environment"] = true, ["source"] = true, ["badge"] = true, ["secondaryArtifacts"] = true, ["secondarySources"] = true, ["encryptionKey"] = true, ["arn"] = true, ["description"] = true, nil }

function asserts.AssertProject(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Project to be of type 'table'")
	if struct["logsConfig"] then asserts.AssertLogsConfig(struct["logsConfig"]) end
	if struct["timeoutInMinutes"] then asserts.AssertTimeOut(struct["timeoutInMinutes"]) end
	if struct["vpcConfig"] then asserts.AssertVpcConfig(struct["vpcConfig"]) end
	if struct["name"] then asserts.AssertProjectName(struct["name"]) end
	if struct["serviceRole"] then asserts.AssertNonEmptyString(struct["serviceRole"]) end
	if struct["tags"] then asserts.AssertTagList(struct["tags"]) end
	if struct["artifacts"] then asserts.AssertProjectArtifacts(struct["artifacts"]) end
	if struct["lastModified"] then asserts.AssertTimestamp(struct["lastModified"]) end
	if struct["cache"] then asserts.AssertProjectCache(struct["cache"]) end
	if struct["webhook"] then asserts.AssertWebhook(struct["webhook"]) end
	if struct["created"] then asserts.AssertTimestamp(struct["created"]) end
	if struct["environment"] then asserts.AssertProjectEnvironment(struct["environment"]) end
	if struct["source"] then asserts.AssertProjectSource(struct["source"]) end
	if struct["badge"] then asserts.AssertProjectBadge(struct["badge"]) end
	if struct["secondaryArtifacts"] then asserts.AssertProjectArtifactsList(struct["secondaryArtifacts"]) end
	if struct["secondarySources"] then asserts.AssertProjectSources(struct["secondarySources"]) end
	if struct["encryptionKey"] then asserts.AssertNonEmptyString(struct["encryptionKey"]) end
	if struct["arn"] then asserts.AssertString(struct["arn"]) end
	if struct["description"] then asserts.AssertProjectDescription(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(keys.Project[k], "Project contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Project
-- <p>Information about a build project.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * logsConfig [LogsConfig] <p> Information about logs for the build project. A project can create Amazon CloudWatch Logs, logs in an S3 bucket, or both. </p>
-- * timeoutInMinutes [TimeOut] <p>How long, in minutes, from 5 to 480 (8 hours), for AWS CodeBuild to wait before timing out any related build that did not get marked as completed. The default is 60 minutes.</p>
-- * vpcConfig [VpcConfig] <p>Information about the VPC configuration that AWS CodeBuild will access.</p>
-- * name [ProjectName] <p>The name of the build project.</p>
-- * serviceRole [NonEmptyString] <p>The ARN of the AWS Identity and Access Management (IAM) role that enables AWS CodeBuild to interact with dependent AWS services on behalf of the AWS account.</p>
-- * tags [TagList] <p>The tags for this build project.</p> <p>These tags are available for use by AWS services that support AWS CodeBuild build project tags.</p>
-- * artifacts [ProjectArtifacts] <p>Information about the build output artifacts for the build project.</p>
-- * lastModified [Timestamp] <p>When the build project's settings were last modified, expressed in Unix time format.</p>
-- * cache [ProjectCache] <p>Information about the cache for the build project.</p>
-- * webhook [Webhook] <p>Information about a webhook in GitHub that connects repository events to a build project in AWS CodeBuild.</p>
-- * created [Timestamp] <p>When the build project was created, expressed in Unix time format.</p>
-- * environment [ProjectEnvironment] <p>Information about the build environment for this build project.</p>
-- * source [ProjectSource] <p>Information about the build input source code for this build project.</p>
-- * badge [ProjectBadge] <p>Information about the build badge for the build project.</p>
-- * secondaryArtifacts [ProjectArtifactsList] <p> An array of <code>ProjectArtifacts</code> objects. </p>
-- * secondarySources [ProjectSources] <p> An array of <code>ProjectSource</code> objects. </p>
-- * encryptionKey [NonEmptyString] <p>The AWS Key Management Service (AWS KMS) customer master key (CMK) to be used for encrypting the build output artifacts.</p> <p>This is expressed either as the CMK's Amazon Resource Name (ARN) or, if specified, the CMK's alias (using the format <code>alias/<i>alias-name</i> </code>).</p>
-- * arn [String] <p>The Amazon Resource Name (ARN) of the build project.</p>
-- * description [ProjectDescription] <p>A description that makes the build project easy to identify.</p>
-- @return Project structure as a key-value pair table
function M.Project(args)
	assert(args, "You must provide an argument table when creating Project")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["logsConfig"] = args["logsConfig"],
		["timeoutInMinutes"] = args["timeoutInMinutes"],
		["vpcConfig"] = args["vpcConfig"],
		["name"] = args["name"],
		["serviceRole"] = args["serviceRole"],
		["tags"] = args["tags"],
		["artifacts"] = args["artifacts"],
		["lastModified"] = args["lastModified"],
		["cache"] = args["cache"],
		["webhook"] = args["webhook"],
		["created"] = args["created"],
		["environment"] = args["environment"],
		["source"] = args["source"],
		["badge"] = args["badge"],
		["secondaryArtifacts"] = args["secondaryArtifacts"],
		["secondarySources"] = args["secondarySources"],
		["encryptionKey"] = args["encryptionKey"],
		["arn"] = args["arn"],
		["description"] = args["description"],
	}
	asserts.AssertProject(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListProjectsInput = { ["nextToken"] = true, ["sortBy"] = true, ["sortOrder"] = true, nil }

function asserts.AssertListProjectsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListProjectsInput to be of type 'table'")
	if struct["nextToken"] then asserts.AssertNonEmptyString(struct["nextToken"]) end
	if struct["sortBy"] then asserts.AssertProjectSortByType(struct["sortBy"]) end
	if struct["sortOrder"] then asserts.AssertSortOrderType(struct["sortOrder"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListProjectsInput[k], "ListProjectsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListProjectsInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [NonEmptyString] <p>During a previous call, if there are more than 100 items in the list, only the first 100 items are returned, along with a unique string called a <i>next token</i>. To get the next batch of items in the list, call this operation again, adding the next token to the call. To get all of the items in the list, keep calling this operation with each subsequent next token that is returned, until no more next tokens are returned.</p>
-- * sortBy [ProjectSortByType] <p>The criterion to be used to list build project names. Valid values include:</p> <ul> <li> <p> <code>CREATED_TIME</code>: List the build project names based on when each build project was created.</p> </li> <li> <p> <code>LAST_MODIFIED_TIME</code>: List the build project names based on when information about each build project was last changed.</p> </li> <li> <p> <code>NAME</code>: List the build project names based on each build project's name.</p> </li> </ul> <p>Use <code>sortOrder</code> to specify in what order to list the build project names based on the preceding criteria.</p>
-- * sortOrder [SortOrderType] <p>The order in which to list build projects. Valid values include:</p> <ul> <li> <p> <code>ASCENDING</code>: List the build project names in ascending order.</p> </li> <li> <p> <code>DESCENDING</code>: List the build project names in descending order.</p> </li> </ul> <p>Use <code>sortBy</code> to specify the criterion to be used to list build project names.</p>
-- @return ListProjectsInput structure as a key-value pair table
function M.ListProjectsInput(args)
	assert(args, "You must provide an argument table when creating ListProjectsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["sortBy"] = args["sortBy"],
		["sortOrder"] = args["sortOrder"],
	}
	asserts.AssertListProjectsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ProjectArtifacts = { ["packaging"] = true, ["name"] = true, ["artifactIdentifier"] = true, ["namespaceType"] = true, ["encryptionDisabled"] = true, ["location"] = true, ["overrideArtifactName"] = true, ["path"] = true, ["type"] = true, nil }

function asserts.AssertProjectArtifacts(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ProjectArtifacts to be of type 'table'")
	assert(struct["type"], "Expected key type to exist in table")
	if struct["packaging"] then asserts.AssertArtifactPackaging(struct["packaging"]) end
	if struct["name"] then asserts.AssertString(struct["name"]) end
	if struct["artifactIdentifier"] then asserts.AssertString(struct["artifactIdentifier"]) end
	if struct["namespaceType"] then asserts.AssertArtifactNamespace(struct["namespaceType"]) end
	if struct["encryptionDisabled"] then asserts.AssertWrapperBoolean(struct["encryptionDisabled"]) end
	if struct["location"] then asserts.AssertString(struct["location"]) end
	if struct["overrideArtifactName"] then asserts.AssertWrapperBoolean(struct["overrideArtifactName"]) end
	if struct["path"] then asserts.AssertString(struct["path"]) end
	if struct["type"] then asserts.AssertArtifactsType(struct["type"]) end
	for k,_ in pairs(struct) do
		assert(keys.ProjectArtifacts[k], "ProjectArtifacts contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ProjectArtifacts
-- <p>Information about the build output artifacts for the build project.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * packaging [ArtifactPackaging] <p>The type of build output artifact to create, as follows:</p> <ul> <li> <p>If <code>type</code> is set to <code>CODEPIPELINE</code>, then AWS CodePipeline will ignore this value if specified. This is because AWS CodePipeline manages its build output artifacts instead of AWS CodeBuild.</p> </li> <li> <p>If <code>type</code> is set to <code>NO_ARTIFACTS</code>, then this value will be ignored if specified, because no build output will be produced.</p> </li> <li> <p>If <code>type</code> is set to <code>S3</code>, valid values include:</p> <ul> <li> <p> <code>NONE</code>: AWS CodeBuild will create in the output bucket a folder containing the build output. This is the default if <code>packaging</code> is not specified.</p> </li> <li> <p> <code>ZIP</code>: AWS CodeBuild will create in the output bucket a ZIP file containing the build output.</p> </li> </ul> </li> </ul>
-- * name [String] <p>Along with <code>path</code> and <code>namespaceType</code>, the pattern that AWS CodeBuild will use to name and store the output artifact, as follows:</p> <ul> <li> <p>If <code>type</code> is set to <code>CODEPIPELINE</code>, then AWS CodePipeline will ignore this value if specified. This is because AWS CodePipeline manages its build output names instead of AWS CodeBuild.</p> </li> <li> <p>If <code>type</code> is set to <code>NO_ARTIFACTS</code>, then this value will be ignored if specified, because no build output will be produced.</p> </li> <li> <p>If <code>type</code> is set to <code>S3</code>, this is the name of the output artifact object. If you set the name to be a forward slash ("/"), then the artifact is stored in the root of the output bucket.</p> </li> </ul> <p>For example:</p> <ul> <li> <p> If <code>path</code> is set to <code>MyArtifacts</code>, <code>namespaceType</code> is set to <code>BUILD_ID</code>, and <code>name</code> is set to <code>MyArtifact.zip</code>, then the output artifact would be stored in <code>MyArtifacts/<i>build-ID</i>/MyArtifact.zip</code>. </p> </li> <li> <p> If <code>path</code> is empty, <code>namespaceType</code> is set to <code>NONE</code>, and <code>name</code> is set to "<code>/</code>", then the output artifact would be stored in the root of the output bucket. </p> </li> <li> <p> If <code>path</code> is set to <code>MyArtifacts</code>, <code>namespaceType</code> is set to <code>BUILD_ID</code>, and <code>name</code> is set to "<code>/</code>", then the output artifact would be stored in <code>MyArtifacts/<i>build-ID</i> </code>. </p> </li> </ul>
-- * artifactIdentifier [String] <p> An identifier for this artifact definition. </p>
-- * namespaceType [ArtifactNamespace] <p>Along with <code>path</code> and <code>name</code>, the pattern that AWS CodeBuild will use to determine the name and location to store the output artifact, as follows:</p> <ul> <li> <p>If <code>type</code> is set to <code>CODEPIPELINE</code>, then AWS CodePipeline will ignore this value if specified. This is because AWS CodePipeline manages its build output names instead of AWS CodeBuild.</p> </li> <li> <p>If <code>type</code> is set to <code>NO_ARTIFACTS</code>, then this value will be ignored if specified, because no build output will be produced.</p> </li> <li> <p>If <code>type</code> is set to <code>S3</code>, then valid values include:</p> <ul> <li> <p> <code>BUILD_ID</code>: Include the build ID in the location of the build output artifact.</p> </li> <li> <p> <code>NONE</code>: Do not include the build ID. This is the default if <code>namespaceType</code> is not specified.</p> </li> </ul> </li> </ul> <p>For example, if <code>path</code> is set to <code>MyArtifacts</code>, <code>namespaceType</code> is set to <code>BUILD_ID</code>, and <code>name</code> is set to <code>MyArtifact.zip</code>, then the output artifact would be stored in <code>MyArtifacts/<i>build-ID</i>/MyArtifact.zip</code>.</p>
-- * encryptionDisabled [WrapperBoolean] <p> Set to true if you do not want your output artifacts encrypted. This option is only valid if your artifacts type is Amazon S3. If this is set with another artifacts type, an invalidInputException will be thrown. </p>
-- * location [String] <p>Information about the build output artifact location, as follows:</p> <ul> <li> <p>If <code>type</code> is set to <code>CODEPIPELINE</code>, then AWS CodePipeline will ignore this value if specified. This is because AWS CodePipeline manages its build output locations instead of AWS CodeBuild.</p> </li> <li> <p>If <code>type</code> is set to <code>NO_ARTIFACTS</code>, then this value will be ignored if specified, because no build output will be produced.</p> </li> <li> <p>If <code>type</code> is set to <code>S3</code>, this is the name of the output bucket.</p> </li> </ul>
-- * overrideArtifactName [WrapperBoolean] <p> If this flag is set, a name specified in the buildspec file overrides the artifact name. The name specified in a buildspec file is calculated at build time and uses the Shell Command Language. For example, you can append a date and time to your artifact name so that it is always unique. </p>
-- * path [String] <p>Along with <code>namespaceType</code> and <code>name</code>, the pattern that AWS CodeBuild will use to name and store the output artifact, as follows:</p> <ul> <li> <p>If <code>type</code> is set to <code>CODEPIPELINE</code>, then AWS CodePipeline will ignore this value if specified. This is because AWS CodePipeline manages its build output names instead of AWS CodeBuild.</p> </li> <li> <p>If <code>type</code> is set to <code>NO_ARTIFACTS</code>, then this value will be ignored if specified, because no build output will be produced.</p> </li> <li> <p>If <code>type</code> is set to <code>S3</code>, this is the path to the output artifact. If <code>path</code> is not specified, then <code>path</code> will not be used.</p> </li> </ul> <p>For example, if <code>path</code> is set to <code>MyArtifacts</code>, <code>namespaceType</code> is set to <code>NONE</code>, and <code>name</code> is set to <code>MyArtifact.zip</code>, then the output artifact would be stored in the output bucket at <code>MyArtifacts/MyArtifact.zip</code>.</p>
-- * type [ArtifactsType] <p>The type of build output artifact. Valid values include:</p> <ul> <li> <p> <code>CODEPIPELINE</code>: The build project will have build output generated through AWS CodePipeline.</p> </li> <li> <p> <code>NO_ARTIFACTS</code>: The build project will not produce any build output.</p> </li> <li> <p> <code>S3</code>: The build project will store build output in Amazon Simple Storage Service (Amazon S3).</p> </li> </ul>
-- Required key: type
-- @return ProjectArtifacts structure as a key-value pair table
function M.ProjectArtifacts(args)
	assert(args, "You must provide an argument table when creating ProjectArtifacts")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["packaging"] = args["packaging"],
		["name"] = args["name"],
		["artifactIdentifier"] = args["artifactIdentifier"],
		["namespaceType"] = args["namespaceType"],
		["encryptionDisabled"] = args["encryptionDisabled"],
		["location"] = args["location"],
		["overrideArtifactName"] = args["overrideArtifactName"],
		["path"] = args["path"],
		["type"] = args["type"],
	}
	asserts.AssertProjectArtifacts(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ProjectSourceVersion = { ["sourceVersion"] = true, ["sourceIdentifier"] = true, nil }

function asserts.AssertProjectSourceVersion(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ProjectSourceVersion to be of type 'table'")
	assert(struct["sourceIdentifier"], "Expected key sourceIdentifier to exist in table")
	assert(struct["sourceVersion"], "Expected key sourceVersion to exist in table")
	if struct["sourceVersion"] then asserts.AssertString(struct["sourceVersion"]) end
	if struct["sourceIdentifier"] then asserts.AssertString(struct["sourceIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.ProjectSourceVersion[k], "ProjectSourceVersion contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ProjectSourceVersion
-- <p>A source identifier and its corresponding version.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * sourceVersion [String] <p>The source version for the corresponding source identifier. If specified, must be one of:</p> <ul> <li> <p>For AWS CodeCommit: the commit ID to use.</p> </li> <li> <p>For GitHub: the commit ID, pull request ID, branch name, or tag name that corresponds to the version of the source code you want to build. If a pull request ID is specified, it must use the format <code>pr/pull-request-ID</code> (for example <code>pr/25</code>). If a branch name is specified, the branch's HEAD commit ID will be used. If not specified, the default branch's HEAD commit ID will be used.</p> </li> <li> <p>For Bitbucket: the commit ID, branch name, or tag name that corresponds to the version of the source code you want to build. If a branch name is specified, the branch's HEAD commit ID will be used. If not specified, the default branch's HEAD commit ID will be used.</p> </li> <li> <p>For Amazon Simple Storage Service (Amazon S3): the version ID of the object representing the build input ZIP file to use.</p> </li> </ul>
-- * sourceIdentifier [String] <p>An identifier for a source in the build project.</p>
-- Required key: sourceIdentifier
-- Required key: sourceVersion
-- @return ProjectSourceVersion structure as a key-value pair table
function M.ProjectSourceVersion(args)
	assert(args, "You must provide an argument table when creating ProjectSourceVersion")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["sourceVersion"] = args["sourceVersion"],
		["sourceIdentifier"] = args["sourceIdentifier"],
	}
	asserts.AssertProjectSourceVersion(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EnvironmentVariable = { ["type"] = true, ["name"] = true, ["value"] = true, nil }

function asserts.AssertEnvironmentVariable(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EnvironmentVariable to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["value"], "Expected key value to exist in table")
	if struct["type"] then asserts.AssertEnvironmentVariableType(struct["type"]) end
	if struct["name"] then asserts.AssertNonEmptyString(struct["name"]) end
	if struct["value"] then asserts.AssertString(struct["value"]) end
	for k,_ in pairs(struct) do
		assert(keys.EnvironmentVariable[k], "EnvironmentVariable contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EnvironmentVariable
-- <p>Information about an environment variable for a build project or a build.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * type [EnvironmentVariableType] <p>The type of environment variable. Valid values include:</p> <ul> <li> <p> <code>PARAMETER_STORE</code>: An environment variable stored in Amazon EC2 Systems Manager Parameter Store.</p> </li> <li> <p> <code>PLAINTEXT</code>: An environment variable in plaintext format.</p> </li> </ul>
-- * name [NonEmptyString] <p>The name or key of the environment variable.</p>
-- * value [String] <p>The value of the environment variable.</p> <important> <p>We strongly discourage using environment variables to store sensitive values, especially AWS secret key IDs and secret access keys. Environment variables can be displayed in plain text using tools such as the AWS CodeBuild console and the AWS Command Line Interface (AWS CLI).</p> </important>
-- Required key: name
-- Required key: value
-- @return EnvironmentVariable structure as a key-value pair table
function M.EnvironmentVariable(args)
	assert(args, "You must provide an argument table when creating EnvironmentVariable")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["type"] = args["type"],
		["name"] = args["name"],
		["value"] = args["value"],
	}
	asserts.AssertEnvironmentVariable(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Tag = { ["value"] = true, ["key"] = true, nil }

function asserts.AssertTag(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Tag to be of type 'table'")
	if struct["value"] then asserts.AssertValueInput(struct["value"]) end
	if struct["key"] then asserts.AssertKeyInput(struct["key"]) end
	for k,_ in pairs(struct) do
		assert(keys.Tag[k], "Tag contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Tag
-- <p>A tag, consisting of a key and a value.</p> <p>This tag is available for use by AWS services that support tags in AWS CodeBuild.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * value [ValueInput] <p>The tag's value.</p>
-- * key [KeyInput] <p>The tag's key.</p>
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
		["value"] = args["value"],
		["key"] = args["key"],
	}
	asserts.AssertTag(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteProjectInput = { ["name"] = true, nil }

function asserts.AssertDeleteProjectInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteProjectInput to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	if struct["name"] then asserts.AssertNonEmptyString(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteProjectInput[k], "DeleteProjectInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteProjectInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * name [NonEmptyString] <p>The name of the build project.</p>
-- Required key: name
-- @return DeleteProjectInput structure as a key-value pair table
function M.DeleteProjectInput(args)
	assert(args, "You must provide an argument table when creating DeleteProjectInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["name"] = args["name"],
	}
	asserts.AssertDeleteProjectInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.S3LogsConfig = { ["status"] = true, ["location"] = true, nil }

function asserts.AssertS3LogsConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected S3LogsConfig to be of type 'table'")
	assert(struct["status"], "Expected key status to exist in table")
	if struct["status"] then asserts.AssertLogsConfigStatusType(struct["status"]) end
	if struct["location"] then asserts.AssertString(struct["location"]) end
	for k,_ in pairs(struct) do
		assert(keys.S3LogsConfig[k], "S3LogsConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type S3LogsConfig
-- <p> Information about S3 logs for a build project. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * status [LogsConfigStatusType] <p>The current status of the S3 build logs. Valid values are:</p> <ul> <li> <p> <code>ENABLED</code>: S3 build logs are enabled for this build project.</p> </li> <li> <p> <code>DISABLED</code>: S3 build logs are not enabled for this build project.</p> </li> </ul>
-- * location [String] <p> The ARN of an S3 bucket and the path prefix for S3 logs. If your Amazon S3 bucket name is <code>my-bucket</code>, and your path prefix is <code>build-log</code>, then acceptable formats are <code>my-bucket/build-log</code> or <code>arn:aws:s3:::my-bucket/build-log</code>. </p>
-- Required key: status
-- @return S3LogsConfig structure as a key-value pair table
function M.S3LogsConfig(args)
	assert(args, "You must provide an argument table when creating S3LogsConfig")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["status"] = args["status"],
		["location"] = args["location"],
	}
	asserts.AssertS3LogsConfig(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateWebhookOutput = { ["webhook"] = true, nil }

function asserts.AssertUpdateWebhookOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateWebhookOutput to be of type 'table'")
	if struct["webhook"] then asserts.AssertWebhook(struct["webhook"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateWebhookOutput[k], "UpdateWebhookOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateWebhookOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * webhook [Webhook] <p> Information about a repository's webhook that is associated with a project in AWS CodeBuild. </p>
-- @return UpdateWebhookOutput structure as a key-value pair table
function M.UpdateWebhookOutput(args)
	assert(args, "You must provide an argument table when creating UpdateWebhookOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["webhook"] = args["webhook"],
	}
	asserts.AssertUpdateWebhookOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StartBuildOutput = { ["build"] = true, nil }

function asserts.AssertStartBuildOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartBuildOutput to be of type 'table'")
	if struct["build"] then asserts.AssertBuild(struct["build"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartBuildOutput[k], "StartBuildOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartBuildOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * build [Build] <p>Information about the build to be run.</p>
-- @return StartBuildOutput structure as a key-value pair table
function M.StartBuildOutput(args)
	assert(args, "You must provide an argument table when creating StartBuildOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["build"] = args["build"],
	}
	asserts.AssertStartBuildOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteWebhookInput = { ["projectName"] = true, nil }

function asserts.AssertDeleteWebhookInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteWebhookInput to be of type 'table'")
	assert(struct["projectName"], "Expected key projectName to exist in table")
	if struct["projectName"] then asserts.AssertProjectName(struct["projectName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteWebhookInput[k], "DeleteWebhookInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteWebhookInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * projectName [ProjectName] <p>The name of the AWS CodeBuild project.</p>
-- Required key: projectName
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
		["projectName"] = args["projectName"],
	}
	asserts.AssertDeleteWebhookInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Build = { ["resolvedSourceVersion"] = true, ["logs"] = true, ["secondaryArtifacts"] = true, ["id"] = true, ["arn"] = true, ["sourceVersion"] = true, ["phases"] = true, ["serviceRole"] = true, ["artifacts"] = true, ["cache"] = true, ["networkInterface"] = true, ["environment"] = true, ["source"] = true, ["secondarySourceVersions"] = true, ["vpcConfig"] = true, ["projectName"] = true, ["buildComplete"] = true, ["currentPhase"] = true, ["startTime"] = true, ["secondarySources"] = true, ["initiator"] = true, ["timeoutInMinutes"] = true, ["encryptionKey"] = true, ["endTime"] = true, ["buildStatus"] = true, nil }

function asserts.AssertBuild(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Build to be of type 'table'")
	if struct["resolvedSourceVersion"] then asserts.AssertNonEmptyString(struct["resolvedSourceVersion"]) end
	if struct["logs"] then asserts.AssertLogsLocation(struct["logs"]) end
	if struct["secondaryArtifacts"] then asserts.AssertBuildArtifactsList(struct["secondaryArtifacts"]) end
	if struct["id"] then asserts.AssertNonEmptyString(struct["id"]) end
	if struct["arn"] then asserts.AssertNonEmptyString(struct["arn"]) end
	if struct["sourceVersion"] then asserts.AssertNonEmptyString(struct["sourceVersion"]) end
	if struct["phases"] then asserts.AssertBuildPhases(struct["phases"]) end
	if struct["serviceRole"] then asserts.AssertNonEmptyString(struct["serviceRole"]) end
	if struct["artifacts"] then asserts.AssertBuildArtifacts(struct["artifacts"]) end
	if struct["cache"] then asserts.AssertProjectCache(struct["cache"]) end
	if struct["networkInterface"] then asserts.AssertNetworkInterface(struct["networkInterface"]) end
	if struct["environment"] then asserts.AssertProjectEnvironment(struct["environment"]) end
	if struct["source"] then asserts.AssertProjectSource(struct["source"]) end
	if struct["secondarySourceVersions"] then asserts.AssertProjectSecondarySourceVersions(struct["secondarySourceVersions"]) end
	if struct["vpcConfig"] then asserts.AssertVpcConfig(struct["vpcConfig"]) end
	if struct["projectName"] then asserts.AssertNonEmptyString(struct["projectName"]) end
	if struct["buildComplete"] then asserts.AssertBoolean(struct["buildComplete"]) end
	if struct["currentPhase"] then asserts.AssertString(struct["currentPhase"]) end
	if struct["startTime"] then asserts.AssertTimestamp(struct["startTime"]) end
	if struct["secondarySources"] then asserts.AssertProjectSources(struct["secondarySources"]) end
	if struct["initiator"] then asserts.AssertString(struct["initiator"]) end
	if struct["timeoutInMinutes"] then asserts.AssertWrapperInt(struct["timeoutInMinutes"]) end
	if struct["encryptionKey"] then asserts.AssertNonEmptyString(struct["encryptionKey"]) end
	if struct["endTime"] then asserts.AssertTimestamp(struct["endTime"]) end
	if struct["buildStatus"] then asserts.AssertStatusType(struct["buildStatus"]) end
	for k,_ in pairs(struct) do
		assert(keys.Build[k], "Build contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Build
-- <p>Information about a build.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * resolvedSourceVersion [NonEmptyString] <p> An identifier for the version of this build's source code. </p> <ul> <li> <p> For AWS CodeCommit, GitHub, GitHub Enterprise, and BitBucket, the commit ID. </p> </li> <li> <p> For AWS CodePipeline, the source revision provided by AWS CodePipeline. </p> </li> <li> <p> For Amazon Simple Storage Service (Amazon S3), this does not apply. </p> </li> </ul>
-- * logs [LogsLocation] <p>Information about the build's logs in Amazon CloudWatch Logs.</p>
-- * secondaryArtifacts [BuildArtifactsList] <p> An array of <code>ProjectArtifacts</code> objects. </p>
-- * id [NonEmptyString] <p>The unique ID for the build.</p>
-- * arn [NonEmptyString] <p>The Amazon Resource Name (ARN) of the build.</p>
-- * sourceVersion [NonEmptyString] <p>Any version identifier for the version of the source code to be built.</p>
-- * phases [BuildPhases] <p>Information about all previous build phases that are completed and information about any current build phase that is not yet complete.</p>
-- * serviceRole [NonEmptyString] <p>The name of a service role used for this build.</p>
-- * artifacts [BuildArtifacts] <p>Information about the output artifacts for the build.</p>
-- * cache [ProjectCache] <p>Information about the cache for the build.</p>
-- * networkInterface [NetworkInterface] <p>Describes a network interface.</p>
-- * environment [ProjectEnvironment] <p>Information about the build environment for this build.</p>
-- * source [ProjectSource] <p>Information about the source code to be built.</p>
-- * secondarySourceVersions [ProjectSecondarySourceVersions] <p> An array of <code>ProjectSourceVersion</code> objects. Each <code>ProjectSourceVersion</code> must be one of: </p> <ul> <li> <p>For AWS CodeCommit: the commit ID to use.</p> </li> <li> <p>For GitHub: the commit ID, pull request ID, branch name, or tag name that corresponds to the version of the source code you want to build. If a pull request ID is specified, it must use the format <code>pr/pull-request-ID</code> (for example <code>pr/25</code>). If a branch name is specified, the branch's HEAD commit ID will be used. If not specified, the default branch's HEAD commit ID will be used.</p> </li> <li> <p>For Bitbucket: the commit ID, branch name, or tag name that corresponds to the version of the source code you want to build. If a branch name is specified, the branch's HEAD commit ID will be used. If not specified, the default branch's HEAD commit ID will be used.</p> </li> <li> <p>For Amazon Simple Storage Service (Amazon S3): the version ID of the object representing the build input ZIP file to use.</p> </li> </ul>
-- * vpcConfig [VpcConfig] <p>If your AWS CodeBuild project accesses resources in an Amazon VPC, you provide this parameter that identifies the VPC ID and the list of security group IDs and subnet IDs. The security groups and subnets must belong to the same VPC. You must provide at least one security group and one subnet ID.</p>
-- * projectName [NonEmptyString] <p>The name of the AWS CodeBuild project.</p>
-- * buildComplete [Boolean] <p>Whether the build has finished. True if completed; otherwise, false.</p>
-- * currentPhase [String] <p>The current build phase.</p>
-- * startTime [Timestamp] <p>When the build process started, expressed in Unix time format.</p>
-- * secondarySources [ProjectSources] <p> An array of <code>ProjectSource</code> objects. </p>
-- * initiator [String] <p>The entity that started the build. Valid values include:</p> <ul> <li> <p>If AWS CodePipeline started the build, the pipeline's name (for example, <code>codepipeline/my-demo-pipeline</code>).</p> </li> <li> <p>If an AWS Identity and Access Management (IAM) user started the build, the user's name (for example <code>MyUserName</code>).</p> </li> <li> <p>If the Jenkins plugin for AWS CodeBuild started the build, the string <code>CodeBuild-Jenkins-Plugin</code>.</p> </li> </ul>
-- * timeoutInMinutes [WrapperInt] <p>How long, in minutes, for AWS CodeBuild to wait before timing out this build if it does not get marked as completed.</p>
-- * encryptionKey [NonEmptyString] <p>The AWS Key Management Service (AWS KMS) customer master key (CMK) to be used for encrypting the build output artifacts.</p> <p>This is expressed either as the CMK's Amazon Resource Name (ARN) or, if specified, the CMK's alias (using the format <code>alias/<i>alias-name</i> </code>).</p>
-- * endTime [Timestamp] <p>When the build process ended, expressed in Unix time format.</p>
-- * buildStatus [StatusType] <p>The current status of the build. Valid values include:</p> <ul> <li> <p> <code>FAILED</code>: The build failed.</p> </li> <li> <p> <code>FAULT</code>: The build faulted.</p> </li> <li> <p> <code>IN_PROGRESS</code>: The build is still in progress.</p> </li> <li> <p> <code>STOPPED</code>: The build stopped.</p> </li> <li> <p> <code>SUCCEEDED</code>: The build succeeded.</p> </li> <li> <p> <code>TIMED_OUT</code>: The build timed out.</p> </li> </ul>
-- @return Build structure as a key-value pair table
function M.Build(args)
	assert(args, "You must provide an argument table when creating Build")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["resolvedSourceVersion"] = args["resolvedSourceVersion"],
		["logs"] = args["logs"],
		["secondaryArtifacts"] = args["secondaryArtifacts"],
		["id"] = args["id"],
		["arn"] = args["arn"],
		["sourceVersion"] = args["sourceVersion"],
		["phases"] = args["phases"],
		["serviceRole"] = args["serviceRole"],
		["artifacts"] = args["artifacts"],
		["cache"] = args["cache"],
		["networkInterface"] = args["networkInterface"],
		["environment"] = args["environment"],
		["source"] = args["source"],
		["secondarySourceVersions"] = args["secondarySourceVersions"],
		["vpcConfig"] = args["vpcConfig"],
		["projectName"] = args["projectName"],
		["buildComplete"] = args["buildComplete"],
		["currentPhase"] = args["currentPhase"],
		["startTime"] = args["startTime"],
		["secondarySources"] = args["secondarySources"],
		["initiator"] = args["initiator"],
		["timeoutInMinutes"] = args["timeoutInMinutes"],
		["encryptionKey"] = args["encryptionKey"],
		["endTime"] = args["endTime"],
		["buildStatus"] = args["buildStatus"],
	}
	asserts.AssertBuild(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateProjectOutput = { ["project"] = true, nil }

function asserts.AssertUpdateProjectOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateProjectOutput to be of type 'table'")
	if struct["project"] then asserts.AssertProject(struct["project"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateProjectOutput[k], "UpdateProjectOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateProjectOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * project [Project] <p>Information about the build project that was changed.</p>
-- @return UpdateProjectOutput structure as a key-value pair table
function M.UpdateProjectOutput(args)
	assert(args, "You must provide an argument table when creating UpdateProjectOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["project"] = args["project"],
	}
	asserts.AssertUpdateProjectOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CloudWatchLogsConfig = { ["status"] = true, ["groupName"] = true, ["streamName"] = true, nil }

function asserts.AssertCloudWatchLogsConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CloudWatchLogsConfig to be of type 'table'")
	assert(struct["status"], "Expected key status to exist in table")
	if struct["status"] then asserts.AssertLogsConfigStatusType(struct["status"]) end
	if struct["groupName"] then asserts.AssertString(struct["groupName"]) end
	if struct["streamName"] then asserts.AssertString(struct["streamName"]) end
	for k,_ in pairs(struct) do
		assert(keys.CloudWatchLogsConfig[k], "CloudWatchLogsConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CloudWatchLogsConfig
-- <p> Information about Amazon CloudWatch Logs for a build project. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * status [LogsConfigStatusType] <p>The current status of the Amazon CloudWatch Logs for a build project. Valid values are:</p> <ul> <li> <p> <code>ENABLED</code>: Amazon CloudWatch Logs are enabled for this build project.</p> </li> <li> <p> <code>DISABLED</code>: Amazon CloudWatch Logs are not enabled for this build project.</p> </li> </ul>
-- * groupName [String] <p> The group name of the Amazon CloudWatch Logs. For more information, see <a href="http://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/Working-with-log-groups-and-streams.html">Working with Log Groups and Log Streams</a> </p>
-- * streamName [String] <p> The prefix of the stream name of the Amazon CloudWatch Logs. For more information, see <a href="http://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/Working-with-log-groups-and-streams.html">Working with Log Groups and Log Streams</a> </p>
-- Required key: status
-- @return CloudWatchLogsConfig structure as a key-value pair table
function M.CloudWatchLogsConfig(args)
	assert(args, "You must provide an argument table when creating CloudWatchLogsConfig")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["status"] = args["status"],
		["groupName"] = args["groupName"],
		["streamName"] = args["streamName"],
	}
	asserts.AssertCloudWatchLogsConfig(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BuildPhase = { ["contexts"] = true, ["phaseType"] = true, ["phaseStatus"] = true, ["durationInSeconds"] = true, ["startTime"] = true, ["endTime"] = true, nil }

function asserts.AssertBuildPhase(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BuildPhase to be of type 'table'")
	if struct["contexts"] then asserts.AssertPhaseContexts(struct["contexts"]) end
	if struct["phaseType"] then asserts.AssertBuildPhaseType(struct["phaseType"]) end
	if struct["phaseStatus"] then asserts.AssertStatusType(struct["phaseStatus"]) end
	if struct["durationInSeconds"] then asserts.AssertWrapperLong(struct["durationInSeconds"]) end
	if struct["startTime"] then asserts.AssertTimestamp(struct["startTime"]) end
	if struct["endTime"] then asserts.AssertTimestamp(struct["endTime"]) end
	for k,_ in pairs(struct) do
		assert(keys.BuildPhase[k], "BuildPhase contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BuildPhase
-- <p>Information about a stage for a build.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * contexts [PhaseContexts] <p>Additional information about a build phase, especially to help troubleshoot a failed build.</p>
-- * phaseType [BuildPhaseType] <p>The name of the build phase. Valid values include:</p> <ul> <li> <p> <code>BUILD</code>: Core build activities typically occur in this build phase.</p> </li> <li> <p> <code>COMPLETED</code>: The build has been completed.</p> </li> <li> <p> <code>DOWNLOAD_SOURCE</code>: Source code is being downloaded in this build phase.</p> </li> <li> <p> <code>FINALIZING</code>: The build process is completing in this build phase.</p> </li> <li> <p> <code>INSTALL</code>: Installation activities typically occur in this build phase.</p> </li> <li> <p> <code>POST_BUILD</code>: Post-build activities typically occur in this build phase.</p> </li> <li> <p> <code>PRE_BUILD</code>: Pre-build activities typically occur in this build phase.</p> </li> <li> <p> <code>PROVISIONING</code>: The build environment is being set up.</p> </li> <li> <p> <code>SUBMITTED</code>: The build has been submitted.</p> </li> <li> <p> <code>UPLOAD_ARTIFACTS</code>: Build output artifacts are being uploaded to the output location.</p> </li> </ul>
-- * phaseStatus [StatusType] <p>The current status of the build phase. Valid values include:</p> <ul> <li> <p> <code>FAILED</code>: The build phase failed.</p> </li> <li> <p> <code>FAULT</code>: The build phase faulted.</p> </li> <li> <p> <code>IN_PROGRESS</code>: The build phase is still in progress.</p> </li> <li> <p> <code>STOPPED</code>: The build phase stopped.</p> </li> <li> <p> <code>SUCCEEDED</code>: The build phase succeeded.</p> </li> <li> <p> <code>TIMED_OUT</code>: The build phase timed out.</p> </li> </ul>
-- * durationInSeconds [WrapperLong] <p>How long, in seconds, between the starting and ending times of the build's phase.</p>
-- * startTime [Timestamp] <p>When the build phase started, expressed in Unix time format.</p>
-- * endTime [Timestamp] <p>When the build phase ended, expressed in Unix time format.</p>
-- @return BuildPhase structure as a key-value pair table
function M.BuildPhase(args)
	assert(args, "You must provide an argument table when creating BuildPhase")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["contexts"] = args["contexts"],
		["phaseType"] = args["phaseType"],
		["phaseStatus"] = args["phaseStatus"],
		["durationInSeconds"] = args["durationInSeconds"],
		["startTime"] = args["startTime"],
		["endTime"] = args["endTime"],
	}
	asserts.AssertBuildPhase(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchGetBuildsInput = { ["ids"] = true, nil }

function asserts.AssertBatchGetBuildsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchGetBuildsInput to be of type 'table'")
	assert(struct["ids"], "Expected key ids to exist in table")
	if struct["ids"] then asserts.AssertBuildIds(struct["ids"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchGetBuildsInput[k], "BatchGetBuildsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchGetBuildsInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ids [BuildIds] <p>The IDs of the builds.</p>
-- Required key: ids
-- @return BatchGetBuildsInput structure as a key-value pair table
function M.BatchGetBuildsInput(args)
	assert(args, "You must provide an argument table when creating BatchGetBuildsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ids"] = args["ids"],
	}
	asserts.AssertBatchGetBuildsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchGetBuildsOutput = { ["buildsNotFound"] = true, ["builds"] = true, nil }

function asserts.AssertBatchGetBuildsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchGetBuildsOutput to be of type 'table'")
	if struct["buildsNotFound"] then asserts.AssertBuildIds(struct["buildsNotFound"]) end
	if struct["builds"] then asserts.AssertBuilds(struct["builds"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchGetBuildsOutput[k], "BatchGetBuildsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchGetBuildsOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * buildsNotFound [BuildIds] <p>The IDs of builds for which information could not be found.</p>
-- * builds [Builds] <p>Information about the requested builds.</p>
-- @return BatchGetBuildsOutput structure as a key-value pair table
function M.BatchGetBuildsOutput(args)
	assert(args, "You must provide an argument table when creating BatchGetBuildsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["buildsNotFound"] = args["buildsNotFound"],
		["builds"] = args["builds"],
	}
	asserts.AssertBatchGetBuildsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListCuratedEnvironmentImagesInput = { nil }

function asserts.AssertListCuratedEnvironmentImagesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListCuratedEnvironmentImagesInput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ListCuratedEnvironmentImagesInput[k], "ListCuratedEnvironmentImagesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListCuratedEnvironmentImagesInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return ListCuratedEnvironmentImagesInput structure as a key-value pair table
function M.ListCuratedEnvironmentImagesInput(args)
	assert(args, "You must provide an argument table when creating ListCuratedEnvironmentImagesInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertListCuratedEnvironmentImagesInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchGetProjectsInput = { ["names"] = true, nil }

function asserts.AssertBatchGetProjectsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchGetProjectsInput to be of type 'table'")
	assert(struct["names"], "Expected key names to exist in table")
	if struct["names"] then asserts.AssertProjectNames(struct["names"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchGetProjectsInput[k], "BatchGetProjectsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchGetProjectsInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * names [ProjectNames] <p>The names of the build projects.</p>
-- Required key: names
-- @return BatchGetProjectsInput structure as a key-value pair table
function M.BatchGetProjectsInput(args)
	assert(args, "You must provide an argument table when creating BatchGetProjectsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["names"] = args["names"],
	}
	asserts.AssertBatchGetProjectsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListProjectsOutput = { ["nextToken"] = true, ["projects"] = true, nil }

function asserts.AssertListProjectsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListProjectsOutput to be of type 'table'")
	if struct["nextToken"] then asserts.AssertString(struct["nextToken"]) end
	if struct["projects"] then asserts.AssertProjectNames(struct["projects"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListProjectsOutput[k], "ListProjectsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListProjectsOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [String] <p>If there are more than 100 items in the list, only the first 100 items are returned, along with a unique string called a <i>next token</i>. To get the next batch of items in the list, call this operation again, adding the next token to the call.</p>
-- * projects [ProjectNames] <p>The list of build project names, with each build project name representing a single build project.</p>
-- @return ListProjectsOutput structure as a key-value pair table
function M.ListProjectsOutput(args)
	assert(args, "You must provide an argument table when creating ListProjectsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["projects"] = args["projects"],
	}
	asserts.AssertListProjectsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BuildArtifacts = { ["artifactIdentifier"] = true, ["md5sum"] = true, ["sha256sum"] = true, ["encryptionDisabled"] = true, ["location"] = true, ["overrideArtifactName"] = true, nil }

function asserts.AssertBuildArtifacts(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BuildArtifacts to be of type 'table'")
	if struct["artifactIdentifier"] then asserts.AssertString(struct["artifactIdentifier"]) end
	if struct["md5sum"] then asserts.AssertString(struct["md5sum"]) end
	if struct["sha256sum"] then asserts.AssertString(struct["sha256sum"]) end
	if struct["encryptionDisabled"] then asserts.AssertWrapperBoolean(struct["encryptionDisabled"]) end
	if struct["location"] then asserts.AssertString(struct["location"]) end
	if struct["overrideArtifactName"] then asserts.AssertWrapperBoolean(struct["overrideArtifactName"]) end
	for k,_ in pairs(struct) do
		assert(keys.BuildArtifacts[k], "BuildArtifacts contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BuildArtifacts
-- <p>Information about build output artifacts.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * artifactIdentifier [String] <p> An identifier for this artifact definition. </p>
-- * md5sum [String] <p>The MD5 hash of the build artifact.</p> <p>You can use this hash along with a checksum tool to confirm both file integrity and authenticity.</p> <note> <p>This value is available only if the build project's <code>packaging</code> value is set to <code>ZIP</code>.</p> </note>
-- * sha256sum [String] <p>The SHA-256 hash of the build artifact.</p> <p>You can use this hash along with a checksum tool to confirm both file integrity and authenticity.</p> <note> <p>This value is available only if the build project's <code>packaging</code> value is set to <code>ZIP</code>.</p> </note>
-- * encryptionDisabled [WrapperBoolean] <p> Information that tells you if encryption for build artifacts is disabled. </p>
-- * location [String] <p>Information about the location of the build artifacts.</p>
-- * overrideArtifactName [WrapperBoolean] <p> If this flag is set, a name specified in the buildspec file overrides the artifact name. The name specified in a buildspec file is calculated at build time and uses the Shell Command Language. For example, you can append a date and time to your artifact name so that it is always unique. </p>
-- @return BuildArtifacts structure as a key-value pair table
function M.BuildArtifacts(args)
	assert(args, "You must provide an argument table when creating BuildArtifacts")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["artifactIdentifier"] = args["artifactIdentifier"],
		["md5sum"] = args["md5sum"],
		["sha256sum"] = args["sha256sum"],
		["encryptionDisabled"] = args["encryptionDisabled"],
		["location"] = args["location"],
		["overrideArtifactName"] = args["overrideArtifactName"],
	}
	asserts.AssertBuildArtifacts(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ProjectBadge = { ["badgeRequestUrl"] = true, ["badgeEnabled"] = true, nil }

function asserts.AssertProjectBadge(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ProjectBadge to be of type 'table'")
	if struct["badgeRequestUrl"] then asserts.AssertString(struct["badgeRequestUrl"]) end
	if struct["badgeEnabled"] then asserts.AssertBoolean(struct["badgeEnabled"]) end
	for k,_ in pairs(struct) do
		assert(keys.ProjectBadge[k], "ProjectBadge contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ProjectBadge
-- <p>Information about the build badge for the build project.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * badgeRequestUrl [String] <p>The publicly-accessible URL through which you can access the build badge for your project. </p>
-- * badgeEnabled [Boolean] <p>Set this to true to generate a publicly-accessible URL for your project's build badge.</p>
-- @return ProjectBadge structure as a key-value pair table
function M.ProjectBadge(args)
	assert(args, "You must provide an argument table when creating ProjectBadge")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["badgeRequestUrl"] = args["badgeRequestUrl"],
		["badgeEnabled"] = args["badgeEnabled"],
	}
	asserts.AssertProjectBadge(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateWebhookInput = { ["projectName"] = true, ["branchFilter"] = true, ["rotateSecret"] = true, nil }

function asserts.AssertUpdateWebhookInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateWebhookInput to be of type 'table'")
	assert(struct["projectName"], "Expected key projectName to exist in table")
	if struct["projectName"] then asserts.AssertProjectName(struct["projectName"]) end
	if struct["branchFilter"] then asserts.AssertString(struct["branchFilter"]) end
	if struct["rotateSecret"] then asserts.AssertBoolean(struct["rotateSecret"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateWebhookInput[k], "UpdateWebhookInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateWebhookInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * projectName [ProjectName] <p>The name of the AWS CodeBuild project.</p>
-- * branchFilter [String] <p>A regular expression used to determine which branches in a repository are built when a webhook is triggered. If the name of a branch matches the regular expression, then it is built. If it doesn't match, then it is not. If branchFilter is empty, then all branches are built.</p>
-- * rotateSecret [Boolean] <p> A boolean value that specifies whether the associated repository's secret token should be updated. </p>
-- Required key: projectName
-- @return UpdateWebhookInput structure as a key-value pair table
function M.UpdateWebhookInput(args)
	assert(args, "You must provide an argument table when creating UpdateWebhookInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["projectName"] = args["projectName"],
		["branchFilter"] = args["branchFilter"],
		["rotateSecret"] = args["rotateSecret"],
	}
	asserts.AssertUpdateWebhookInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Webhook = { ["url"] = true, ["secret"] = true, ["lastModifiedSecret"] = true, ["branchFilter"] = true, ["payloadUrl"] = true, nil }

function asserts.AssertWebhook(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Webhook to be of type 'table'")
	if struct["url"] then asserts.AssertNonEmptyString(struct["url"]) end
	if struct["secret"] then asserts.AssertNonEmptyString(struct["secret"]) end
	if struct["lastModifiedSecret"] then asserts.AssertTimestamp(struct["lastModifiedSecret"]) end
	if struct["branchFilter"] then asserts.AssertString(struct["branchFilter"]) end
	if struct["payloadUrl"] then asserts.AssertNonEmptyString(struct["payloadUrl"]) end
	for k,_ in pairs(struct) do
		assert(keys.Webhook[k], "Webhook contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Webhook
-- <p>Information about a webhook in GitHub that connects repository events to a build project in AWS CodeBuild.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * url [NonEmptyString] <p>The URL to the webhook.</p>
-- * secret [NonEmptyString] <p> The secret token of the associated repository. </p>
-- * lastModifiedSecret [Timestamp] <p> A timestamp indicating the last time a repository's secret token was modified. </p>
-- * branchFilter [String] <p>A regular expression used to determine which branches in a repository are built when a webhook is triggered. If the name of a branch matches the regular expression, then it is built. If it doesn't match, then it is not. If branchFilter is empty, then all branches are built.</p>
-- * payloadUrl [NonEmptyString] <p> The CodeBuild endpoint where webhook events are sent.</p>
-- @return Webhook structure as a key-value pair table
function M.Webhook(args)
	assert(args, "You must provide an argument table when creating Webhook")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["url"] = args["url"],
		["secret"] = args["secret"],
		["lastModifiedSecret"] = args["lastModifiedSecret"],
		["branchFilter"] = args["branchFilter"],
		["payloadUrl"] = args["payloadUrl"],
	}
	asserts.AssertWebhook(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteProjectOutput = { nil }

function asserts.AssertDeleteProjectOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteProjectOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteProjectOutput[k], "DeleteProjectOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteProjectOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteProjectOutput structure as a key-value pair table
function M.DeleteProjectOutput(args)
	assert(args, "You must provide an argument table when creating DeleteProjectOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteProjectOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ProjectSource = { ["buildspec"] = true, ["insecureSsl"] = true, ["auth"] = true, ["location"] = true, ["sourceIdentifier"] = true, ["gitCloneDepth"] = true, ["type"] = true, ["reportBuildStatus"] = true, nil }

function asserts.AssertProjectSource(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ProjectSource to be of type 'table'")
	assert(struct["type"], "Expected key type to exist in table")
	if struct["buildspec"] then asserts.AssertString(struct["buildspec"]) end
	if struct["insecureSsl"] then asserts.AssertWrapperBoolean(struct["insecureSsl"]) end
	if struct["auth"] then asserts.AssertSourceAuth(struct["auth"]) end
	if struct["location"] then asserts.AssertString(struct["location"]) end
	if struct["sourceIdentifier"] then asserts.AssertString(struct["sourceIdentifier"]) end
	if struct["gitCloneDepth"] then asserts.AssertGitCloneDepth(struct["gitCloneDepth"]) end
	if struct["type"] then asserts.AssertSourceType(struct["type"]) end
	if struct["reportBuildStatus"] then asserts.AssertWrapperBoolean(struct["reportBuildStatus"]) end
	for k,_ in pairs(struct) do
		assert(keys.ProjectSource[k], "ProjectSource contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ProjectSource
-- <p>Information about the build input source code for the build project.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * buildspec [String] <p>The build spec declaration to use for the builds in this build project.</p> <p>If this value is not specified, a build spec must be included along with the source code to be built.</p>
-- * insecureSsl [WrapperBoolean] <p>Enable this flag to ignore SSL warnings while connecting to the project source code.</p>
-- * auth [SourceAuth] <p>Information about the authorization settings for AWS CodeBuild to access the source code to be built.</p> <p>This information is for the AWS CodeBuild console's use only. Your code should not get or set this information directly (unless the build project's source <code>type</code> value is <code>BITBUCKET</code> or <code>GITHUB</code>).</p>
-- * location [String] <p>Information about the location of the source code to be built. Valid values include:</p> <ul> <li> <p>For source code settings that are specified in the source action of a pipeline in AWS CodePipeline, <code>location</code> should not be specified. If it is specified, AWS CodePipeline will ignore it. This is because AWS CodePipeline uses the settings in a pipeline's source action instead of this value.</p> </li> <li> <p>For source code in an AWS CodeCommit repository, the HTTPS clone URL to the repository that contains the source code and the build spec (for example, <code>https://git-codecommit.<i>region-ID</i>.amazonaws.com/v1/repos/<i>repo-name</i> </code>).</p> </li> <li> <p>For source code in an Amazon Simple Storage Service (Amazon S3) input bucket, the path to the ZIP file that contains the source code (for example, <code> <i>bucket-name</i>/<i>path</i>/<i>to</i>/<i>object-name</i>.zip</code>)</p> </li> <li> <p>For source code in a GitHub repository, the HTTPS clone URL to the repository that contains the source and the build spec. Also, you must connect your AWS account to your GitHub account. To do this, use the AWS CodeBuild console to begin creating a build project. When you use the console to connect (or reconnect) with GitHub, on the GitHub <b>Authorize application</b> page that displays, for <b>Organization access</b>, choose <b>Request access</b> next to each repository you want to allow AWS CodeBuild to have access to. Then choose <b>Authorize application</b>. (After you have connected to your GitHub account, you do not need to finish creating the build project, and you may then leave the AWS CodeBuild console.) To instruct AWS CodeBuild to then use this connection, in the <code>source</code> object, set the <code>auth</code> object's <code>type</code> value to <code>OAUTH</code>.</p> </li> <li> <p>For source code in a Bitbucket repository, the HTTPS clone URL to the repository that contains the source and the build spec. Also, you must connect your AWS account to your Bitbucket account. To do this, use the AWS CodeBuild console to begin creating a build project. When you use the console to connect (or reconnect) with Bitbucket, on the Bitbucket <b>Confirm access to your account</b> page that displays, choose <b>Grant access</b>. (After you have connected to your Bitbucket account, you do not need to finish creating the build project, and you may then leave the AWS CodeBuild console.) To instruct AWS CodeBuild to then use this connection, in the <code>source</code> object, set the <code>auth</code> object's <code>type</code> value to <code>OAUTH</code>.</p> </li> </ul>
-- * sourceIdentifier [String] <p> An identifier for this project source. </p>
-- * gitCloneDepth [GitCloneDepth] <p>Information about the git clone depth for the build project.</p>
-- * type [SourceType] <p>The type of repository that contains the source code to be built. Valid values include:</p> <ul> <li> <p> <code>BITBUCKET</code>: The source code is in a Bitbucket repository.</p> </li> <li> <p> <code>CODECOMMIT</code>: The source code is in an AWS CodeCommit repository.</p> </li> <li> <p> <code>CODEPIPELINE</code>: The source code settings are specified in the source action of a pipeline in AWS CodePipeline.</p> </li> <li> <p> <code>GITHUB</code>: The source code is in a GitHub repository.</p> </li> <li> <p> <code>NO_SOURCE</code>: The project does not have input source code.</p> </li> <li> <p> <code>S3</code>: The source code is in an Amazon Simple Storage Service (Amazon S3) input bucket.</p> </li> </ul>
-- * reportBuildStatus [WrapperBoolean] <p> Set to true to report the status of a build's start and finish to your source provider. This option is only valid when your source provider is GitHub. If this is set and you use a different source provider, an invalidInputException is thrown. </p>
-- Required key: type
-- @return ProjectSource structure as a key-value pair table
function M.ProjectSource(args)
	assert(args, "You must provide an argument table when creating ProjectSource")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["buildspec"] = args["buildspec"],
		["insecureSsl"] = args["insecureSsl"],
		["auth"] = args["auth"],
		["location"] = args["location"],
		["sourceIdentifier"] = args["sourceIdentifier"],
		["gitCloneDepth"] = args["gitCloneDepth"],
		["type"] = args["type"],
		["reportBuildStatus"] = args["reportBuildStatus"],
	}
	asserts.AssertProjectSource(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateProjectInput = { ["logsConfig"] = true, ["timeoutInMinutes"] = true, ["name"] = true, ["serviceRole"] = true, ["tags"] = true, ["artifacts"] = true, ["badgeEnabled"] = true, ["cache"] = true, ["vpcConfig"] = true, ["environment"] = true, ["source"] = true, ["secondaryArtifacts"] = true, ["secondarySources"] = true, ["encryptionKey"] = true, ["description"] = true, nil }

function asserts.AssertCreateProjectInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateProjectInput to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["source"], "Expected key source to exist in table")
	assert(struct["artifacts"], "Expected key artifacts to exist in table")
	assert(struct["environment"], "Expected key environment to exist in table")
	assert(struct["serviceRole"], "Expected key serviceRole to exist in table")
	if struct["logsConfig"] then asserts.AssertLogsConfig(struct["logsConfig"]) end
	if struct["timeoutInMinutes"] then asserts.AssertTimeOut(struct["timeoutInMinutes"]) end
	if struct["name"] then asserts.AssertProjectName(struct["name"]) end
	if struct["serviceRole"] then asserts.AssertNonEmptyString(struct["serviceRole"]) end
	if struct["tags"] then asserts.AssertTagList(struct["tags"]) end
	if struct["artifacts"] then asserts.AssertProjectArtifacts(struct["artifacts"]) end
	if struct["badgeEnabled"] then asserts.AssertWrapperBoolean(struct["badgeEnabled"]) end
	if struct["cache"] then asserts.AssertProjectCache(struct["cache"]) end
	if struct["vpcConfig"] then asserts.AssertVpcConfig(struct["vpcConfig"]) end
	if struct["environment"] then asserts.AssertProjectEnvironment(struct["environment"]) end
	if struct["source"] then asserts.AssertProjectSource(struct["source"]) end
	if struct["secondaryArtifacts"] then asserts.AssertProjectArtifactsList(struct["secondaryArtifacts"]) end
	if struct["secondarySources"] then asserts.AssertProjectSources(struct["secondarySources"]) end
	if struct["encryptionKey"] then asserts.AssertNonEmptyString(struct["encryptionKey"]) end
	if struct["description"] then asserts.AssertProjectDescription(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateProjectInput[k], "CreateProjectInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateProjectInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * logsConfig [LogsConfig] <p> Information about logs for the build project. Logs can be Amazon CloudWatch Logs, uploaded to a specified S3 bucket, or both. </p>
-- * timeoutInMinutes [TimeOut] <p>How long, in minutes, from 5 to 480 (8 hours), for AWS CodeBuild to wait until timing out any build that has not been marked as completed. The default is 60 minutes.</p>
-- * name [ProjectName] <p>The name of the build project.</p>
-- * serviceRole [NonEmptyString] <p>The ARN of the AWS Identity and Access Management (IAM) role that enables AWS CodeBuild to interact with dependent AWS services on behalf of the AWS account.</p>
-- * tags [TagList] <p>A set of tags for this build project.</p> <p>These tags are available for use by AWS services that support AWS CodeBuild build project tags.</p>
-- * artifacts [ProjectArtifacts] <p>Information about the build output artifacts for the build project.</p>
-- * badgeEnabled [WrapperBoolean] <p>Set this to true to generate a publicly-accessible URL for your project's build badge.</p>
-- * cache [ProjectCache] <p>Stores recently used information so that it can be quickly accessed at a later time.</p>
-- * vpcConfig [VpcConfig] <p>VpcConfig enables AWS CodeBuild to access resources in an Amazon VPC.</p>
-- * environment [ProjectEnvironment] <p>Information about the build environment for the build project.</p>
-- * source [ProjectSource] <p>Information about the build input source code for the build project.</p>
-- * secondaryArtifacts [ProjectArtifactsList] <p> An array of <code>ProjectArtifacts</code> objects. </p>
-- * secondarySources [ProjectSources] <p> An array of <code>ProjectSource</code> objects. </p>
-- * encryptionKey [NonEmptyString] <p>The AWS Key Management Service (AWS KMS) customer master key (CMK) to be used for encrypting the build output artifacts.</p> <p>You can specify either the CMK's Amazon Resource Name (ARN) or, if available, the CMK's alias (using the format <code>alias/<i>alias-name</i> </code>).</p>
-- * description [ProjectDescription] <p>A description that makes the build project easy to identify.</p>
-- Required key: name
-- Required key: source
-- Required key: artifacts
-- Required key: environment
-- Required key: serviceRole
-- @return CreateProjectInput structure as a key-value pair table
function M.CreateProjectInput(args)
	assert(args, "You must provide an argument table when creating CreateProjectInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["logsConfig"] = args["logsConfig"],
		["timeoutInMinutes"] = args["timeoutInMinutes"],
		["name"] = args["name"],
		["serviceRole"] = args["serviceRole"],
		["tags"] = args["tags"],
		["artifacts"] = args["artifacts"],
		["badgeEnabled"] = args["badgeEnabled"],
		["cache"] = args["cache"],
		["vpcConfig"] = args["vpcConfig"],
		["environment"] = args["environment"],
		["source"] = args["source"],
		["secondaryArtifacts"] = args["secondaryArtifacts"],
		["secondarySources"] = args["secondarySources"],
		["encryptionKey"] = args["encryptionKey"],
		["description"] = args["description"],
	}
	asserts.AssertCreateProjectInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListBuildsOutput = { ["nextToken"] = true, ["ids"] = true, nil }

function asserts.AssertListBuildsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListBuildsOutput to be of type 'table'")
	if struct["nextToken"] then asserts.AssertString(struct["nextToken"]) end
	if struct["ids"] then asserts.AssertBuildIds(struct["ids"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListBuildsOutput[k], "ListBuildsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListBuildsOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [String] <p>If there are more than 100 items in the list, only the first 100 items are returned, along with a unique string called a <i>next token</i>. To get the next batch of items in the list, call this operation again, adding the next token to the call.</p>
-- * ids [BuildIds] <p>A list of build IDs, with each build ID representing a single build.</p>
-- @return ListBuildsOutput structure as a key-value pair table
function M.ListBuildsOutput(args)
	assert(args, "You must provide an argument table when creating ListBuildsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["ids"] = args["ids"],
	}
	asserts.AssertListBuildsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchGetProjectsOutput = { ["projectsNotFound"] = true, ["projects"] = true, nil }

function asserts.AssertBatchGetProjectsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchGetProjectsOutput to be of type 'table'")
	if struct["projectsNotFound"] then asserts.AssertProjectNames(struct["projectsNotFound"]) end
	if struct["projects"] then asserts.AssertProjects(struct["projects"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchGetProjectsOutput[k], "BatchGetProjectsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchGetProjectsOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * projectsNotFound [ProjectNames] <p>The names of build projects for which information could not be found.</p>
-- * projects [Projects] <p>Information about the requested build projects.</p>
-- @return BatchGetProjectsOutput structure as a key-value pair table
function M.BatchGetProjectsOutput(args)
	assert(args, "You must provide an argument table when creating BatchGetProjectsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["projectsNotFound"] = args["projectsNotFound"],
		["projects"] = args["projects"],
	}
	asserts.AssertBatchGetProjectsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateWebhookOutput = { ["webhook"] = true, nil }

function asserts.AssertCreateWebhookOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateWebhookOutput to be of type 'table'")
	if struct["webhook"] then asserts.AssertWebhook(struct["webhook"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateWebhookOutput[k], "CreateWebhookOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateWebhookOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * webhook [Webhook] <p>Information about a webhook in GitHub that connects repository events to a build project in AWS CodeBuild.</p>
-- @return CreateWebhookOutput structure as a key-value pair table
function M.CreateWebhookOutput(args)
	assert(args, "You must provide an argument table when creating CreateWebhookOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["webhook"] = args["webhook"],
	}
	asserts.AssertCreateWebhookOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateProjectInput = { ["logsConfig"] = true, ["timeoutInMinutes"] = true, ["name"] = true, ["serviceRole"] = true, ["tags"] = true, ["artifacts"] = true, ["badgeEnabled"] = true, ["cache"] = true, ["vpcConfig"] = true, ["environment"] = true, ["source"] = true, ["secondaryArtifacts"] = true, ["secondarySources"] = true, ["encryptionKey"] = true, ["description"] = true, nil }

function asserts.AssertUpdateProjectInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateProjectInput to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	if struct["logsConfig"] then asserts.AssertLogsConfig(struct["logsConfig"]) end
	if struct["timeoutInMinutes"] then asserts.AssertTimeOut(struct["timeoutInMinutes"]) end
	if struct["name"] then asserts.AssertNonEmptyString(struct["name"]) end
	if struct["serviceRole"] then asserts.AssertNonEmptyString(struct["serviceRole"]) end
	if struct["tags"] then asserts.AssertTagList(struct["tags"]) end
	if struct["artifacts"] then asserts.AssertProjectArtifacts(struct["artifacts"]) end
	if struct["badgeEnabled"] then asserts.AssertWrapperBoolean(struct["badgeEnabled"]) end
	if struct["cache"] then asserts.AssertProjectCache(struct["cache"]) end
	if struct["vpcConfig"] then asserts.AssertVpcConfig(struct["vpcConfig"]) end
	if struct["environment"] then asserts.AssertProjectEnvironment(struct["environment"]) end
	if struct["source"] then asserts.AssertProjectSource(struct["source"]) end
	if struct["secondaryArtifacts"] then asserts.AssertProjectArtifactsList(struct["secondaryArtifacts"]) end
	if struct["secondarySources"] then asserts.AssertProjectSources(struct["secondarySources"]) end
	if struct["encryptionKey"] then asserts.AssertNonEmptyString(struct["encryptionKey"]) end
	if struct["description"] then asserts.AssertProjectDescription(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateProjectInput[k], "UpdateProjectInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateProjectInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * logsConfig [LogsConfig] <p> Information about logs for the build project. A project can create Amazon CloudWatch Logs, logs in an S3 bucket, or both. </p>
-- * timeoutInMinutes [TimeOut] <p>The replacement value in minutes, from 5 to 480 (8 hours), for AWS CodeBuild to wait before timing out any related build that did not get marked as completed.</p>
-- * name [NonEmptyString] <p>The name of the build project.</p> <note> <p>You cannot change a build project's name.</p> </note>
-- * serviceRole [NonEmptyString] <p>The replacement ARN of the AWS Identity and Access Management (IAM) role that enables AWS CodeBuild to interact with dependent AWS services on behalf of the AWS account.</p>
-- * tags [TagList] <p>The replacement set of tags for this build project.</p> <p>These tags are available for use by AWS services that support AWS CodeBuild build project tags.</p>
-- * artifacts [ProjectArtifacts] <p>Information to be changed about the build output artifacts for the build project.</p>
-- * badgeEnabled [WrapperBoolean] <p>Set this to true to generate a publicly-accessible URL for your project's build badge.</p>
-- * cache [ProjectCache] <p>Stores recently used information so that it can be quickly accessed at a later time.</p>
-- * vpcConfig [VpcConfig] <p>VpcConfig enables AWS CodeBuild to access resources in an Amazon VPC.</p>
-- * environment [ProjectEnvironment] <p>Information to be changed about the build environment for the build project.</p>
-- * source [ProjectSource] <p>Information to be changed about the build input source code for the build project.</p>
-- * secondaryArtifacts [ProjectArtifactsList] <p> An array of <code>ProjectSource</code> objects. </p>
-- * secondarySources [ProjectSources] <p> An array of <code>ProjectSource</code> objects. </p>
-- * encryptionKey [NonEmptyString] <p>The replacement AWS Key Management Service (AWS KMS) customer master key (CMK) to be used for encrypting the build output artifacts.</p> <p>You can specify either the CMK's Amazon Resource Name (ARN) or, if available, the CMK's alias (using the format <code>alias/<i>alias-name</i> </code>).</p>
-- * description [ProjectDescription] <p>A new or replacement description of the build project.</p>
-- Required key: name
-- @return UpdateProjectInput structure as a key-value pair table
function M.UpdateProjectInput(args)
	assert(args, "You must provide an argument table when creating UpdateProjectInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["logsConfig"] = args["logsConfig"],
		["timeoutInMinutes"] = args["timeoutInMinutes"],
		["name"] = args["name"],
		["serviceRole"] = args["serviceRole"],
		["tags"] = args["tags"],
		["artifacts"] = args["artifacts"],
		["badgeEnabled"] = args["badgeEnabled"],
		["cache"] = args["cache"],
		["vpcConfig"] = args["vpcConfig"],
		["environment"] = args["environment"],
		["source"] = args["source"],
		["secondaryArtifacts"] = args["secondaryArtifacts"],
		["secondarySources"] = args["secondarySources"],
		["encryptionKey"] = args["encryptionKey"],
		["description"] = args["description"],
	}
	asserts.AssertUpdateProjectInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StopBuildOutput = { ["build"] = true, nil }

function asserts.AssertStopBuildOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopBuildOutput to be of type 'table'")
	if struct["build"] then asserts.AssertBuild(struct["build"]) end
	for k,_ in pairs(struct) do
		assert(keys.StopBuildOutput[k], "StopBuildOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopBuildOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * build [Build] <p>Information about the build.</p>
-- @return StopBuildOutput structure as a key-value pair table
function M.StopBuildOutput(args)
	assert(args, "You must provide an argument table when creating StopBuildOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["build"] = args["build"],
	}
	asserts.AssertStopBuildOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ProjectCache = { ["type"] = true, ["location"] = true, nil }

function asserts.AssertProjectCache(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ProjectCache to be of type 'table'")
	assert(struct["type"], "Expected key type to exist in table")
	if struct["type"] then asserts.AssertCacheType(struct["type"]) end
	if struct["location"] then asserts.AssertString(struct["location"]) end
	for k,_ in pairs(struct) do
		assert(keys.ProjectCache[k], "ProjectCache contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ProjectCache
-- <p>Information about the cache for the build project.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * type [CacheType] <p>The type of cache used by the build project. Valid values include:</p> <ul> <li> <p> <code>NO_CACHE</code>: The build project will not use any cache.</p> </li> <li> <p> <code>S3</code>: The build project will read and write from/to S3.</p> </li> </ul>
-- * location [String] <p>Information about the cache location, as follows: </p> <ul> <li> <p> <code>NO_CACHE</code>: This value will be ignored.</p> </li> <li> <p> <code>S3</code>: This is the S3 bucket name/prefix.</p> </li> </ul>
-- Required key: type
-- @return ProjectCache structure as a key-value pair table
function M.ProjectCache(args)
	assert(args, "You must provide an argument table when creating ProjectCache")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["type"] = args["type"],
		["location"] = args["location"],
	}
	asserts.AssertProjectCache(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidateProjectCacheInput = { ["projectName"] = true, nil }

function asserts.AssertInvalidateProjectCacheInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidateProjectCacheInput to be of type 'table'")
	assert(struct["projectName"], "Expected key projectName to exist in table")
	if struct["projectName"] then asserts.AssertNonEmptyString(struct["projectName"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidateProjectCacheInput[k], "InvalidateProjectCacheInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidateProjectCacheInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * projectName [NonEmptyString] <p>The name of the AWS CodeBuild build project that the cache will be reset for.</p>
-- Required key: projectName
-- @return InvalidateProjectCacheInput structure as a key-value pair table
function M.InvalidateProjectCacheInput(args)
	assert(args, "You must provide an argument table when creating InvalidateProjectCacheInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["projectName"] = args["projectName"],
	}
	asserts.AssertInvalidateProjectCacheInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.LogsConfig = { ["s3Logs"] = true, ["cloudWatchLogs"] = true, nil }

function asserts.AssertLogsConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LogsConfig to be of type 'table'")
	if struct["s3Logs"] then asserts.AssertS3LogsConfig(struct["s3Logs"]) end
	if struct["cloudWatchLogs"] then asserts.AssertCloudWatchLogsConfig(struct["cloudWatchLogs"]) end
	for k,_ in pairs(struct) do
		assert(keys.LogsConfig[k], "LogsConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LogsConfig
-- <p> Information about logs for a build project. Logs can be Amazon CloudWatch Logs, built in a specified S3 bucket, or both. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * s3Logs [S3LogsConfig] <p> Information about logs built to an S3 bucket for a build project. S3 logs are not enabled by default. </p>
-- * cloudWatchLogs [CloudWatchLogsConfig] <p> Information about Amazon CloudWatch Logs for a build project. Amazon CloudWatch Logs are enabled by default. </p>
-- @return LogsConfig structure as a key-value pair table
function M.LogsConfig(args)
	assert(args, "You must provide an argument table when creating LogsConfig")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["s3Logs"] = args["s3Logs"],
		["cloudWatchLogs"] = args["cloudWatchLogs"],
	}
	asserts.AssertLogsConfig(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateProjectOutput = { ["project"] = true, nil }

function asserts.AssertCreateProjectOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateProjectOutput to be of type 'table'")
	if struct["project"] then asserts.AssertProject(struct["project"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateProjectOutput[k], "CreateProjectOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateProjectOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * project [Project] <p>Information about the build project that was created.</p>
-- @return CreateProjectOutput structure as a key-value pair table
function M.CreateProjectOutput(args)
	assert(args, "You must provide an argument table when creating CreateProjectOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["project"] = args["project"],
	}
	asserts.AssertCreateProjectOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PhaseContext = { ["message"] = true, ["statusCode"] = true, nil }

function asserts.AssertPhaseContext(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PhaseContext to be of type 'table'")
	if struct["message"] then asserts.AssertString(struct["message"]) end
	if struct["statusCode"] then asserts.AssertString(struct["statusCode"]) end
	for k,_ in pairs(struct) do
		assert(keys.PhaseContext[k], "PhaseContext contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PhaseContext
-- <p>Additional information about a build phase that has an error. You can use this information to help troubleshoot a failed build.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [String] <p>An explanation of the build phase's context. This explanation might include a command ID and an exit code.</p>
-- * statusCode [String] <p>The status code for the context of the build phase.</p>
-- @return PhaseContext structure as a key-value pair table
function M.PhaseContext(args)
	assert(args, "You must provide an argument table when creating PhaseContext")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
		["statusCode"] = args["statusCode"],
	}
	asserts.AssertPhaseContext(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StopBuildInput = { ["id"] = true, nil }

function asserts.AssertStopBuildInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopBuildInput to be of type 'table'")
	assert(struct["id"], "Expected key id to exist in table")
	if struct["id"] then asserts.AssertNonEmptyString(struct["id"]) end
	for k,_ in pairs(struct) do
		assert(keys.StopBuildInput[k], "StopBuildInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopBuildInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * id [NonEmptyString] <p>The ID of the build.</p>
-- Required key: id
-- @return StopBuildInput structure as a key-value pair table
function M.StopBuildInput(args)
	assert(args, "You must provide an argument table when creating StopBuildInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["id"] = args["id"],
	}
	asserts.AssertStopBuildInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.LogsLocation = { ["cloudWatchLogs"] = true, ["s3DeepLink"] = true, ["s3Logs"] = true, ["streamName"] = true, ["groupName"] = true, ["deepLink"] = true, nil }

function asserts.AssertLogsLocation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LogsLocation to be of type 'table'")
	if struct["cloudWatchLogs"] then asserts.AssertCloudWatchLogsConfig(struct["cloudWatchLogs"]) end
	if struct["s3DeepLink"] then asserts.AssertString(struct["s3DeepLink"]) end
	if struct["s3Logs"] then asserts.AssertS3LogsConfig(struct["s3Logs"]) end
	if struct["streamName"] then asserts.AssertString(struct["streamName"]) end
	if struct["groupName"] then asserts.AssertString(struct["groupName"]) end
	if struct["deepLink"] then asserts.AssertString(struct["deepLink"]) end
	for k,_ in pairs(struct) do
		assert(keys.LogsLocation[k], "LogsLocation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LogsLocation
-- <p>Information about build logs in Amazon CloudWatch Logs.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * cloudWatchLogs [CloudWatchLogsConfig] <p> Information about Amazon CloudWatch Logs for a build project. </p>
-- * s3DeepLink [String] <p> The URL to an individual build log in an S3 bucket. </p>
-- * s3Logs [S3LogsConfig] <p> Information about S3 logs for a build project. </p>
-- * streamName [String] <p>The name of the Amazon CloudWatch Logs stream for the build logs.</p>
-- * groupName [String] <p>The name of the Amazon CloudWatch Logs group for the build logs.</p>
-- * deepLink [String] <p>The URL to an individual build log in Amazon CloudWatch Logs.</p>
-- @return LogsLocation structure as a key-value pair table
function M.LogsLocation(args)
	assert(args, "You must provide an argument table when creating LogsLocation")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["cloudWatchLogs"] = args["cloudWatchLogs"],
		["s3DeepLink"] = args["s3DeepLink"],
		["s3Logs"] = args["s3Logs"],
		["streamName"] = args["streamName"],
		["groupName"] = args["groupName"],
		["deepLink"] = args["deepLink"],
	}
	asserts.AssertLogsLocation(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListBuildsInput = { ["nextToken"] = true, ["sortOrder"] = true, nil }

function asserts.AssertListBuildsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListBuildsInput to be of type 'table'")
	if struct["nextToken"] then asserts.AssertString(struct["nextToken"]) end
	if struct["sortOrder"] then asserts.AssertSortOrderType(struct["sortOrder"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListBuildsInput[k], "ListBuildsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListBuildsInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [String] <p>During a previous call, if there are more than 100 items in the list, only the first 100 items are returned, along with a unique string called a <i>next token</i>. To get the next batch of items in the list, call this operation again, adding the next token to the call. To get all of the items in the list, keep calling this operation with each subsequent next token that is returned, until no more next tokens are returned.</p>
-- * sortOrder [SortOrderType] <p>The order to list build IDs. Valid values include:</p> <ul> <li> <p> <code>ASCENDING</code>: List the build IDs in ascending order by build ID.</p> </li> <li> <p> <code>DESCENDING</code>: List the build IDs in descending order by build ID.</p> </li> </ul>
-- @return ListBuildsInput structure as a key-value pair table
function M.ListBuildsInput(args)
	assert(args, "You must provide an argument table when creating ListBuildsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["sortOrder"] = args["sortOrder"],
	}
	asserts.AssertListBuildsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateWebhookInput = { ["projectName"] = true, ["branchFilter"] = true, nil }

function asserts.AssertCreateWebhookInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateWebhookInput to be of type 'table'")
	assert(struct["projectName"], "Expected key projectName to exist in table")
	if struct["projectName"] then asserts.AssertProjectName(struct["projectName"]) end
	if struct["branchFilter"] then asserts.AssertString(struct["branchFilter"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateWebhookInput[k], "CreateWebhookInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateWebhookInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * projectName [ProjectName] <p>The name of the AWS CodeBuild project.</p>
-- * branchFilter [String] <p>A regular expression used to determine which branches in a repository are built when a webhook is triggered. If the name of a branch matches the regular expression, then it is built. If it doesn't match, then it is not. If branchFilter is empty, then all branches are built.</p>
-- Required key: projectName
-- @return CreateWebhookInput structure as a key-value pair table
function M.CreateWebhookInput(args)
	assert(args, "You must provide an argument table when creating CreateWebhookInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["projectName"] = args["projectName"],
		["branchFilter"] = args["branchFilter"],
	}
	asserts.AssertCreateWebhookInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListBuildsForProjectInput = { ["projectName"] = true, ["nextToken"] = true, ["sortOrder"] = true, nil }

function asserts.AssertListBuildsForProjectInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListBuildsForProjectInput to be of type 'table'")
	assert(struct["projectName"], "Expected key projectName to exist in table")
	if struct["projectName"] then asserts.AssertNonEmptyString(struct["projectName"]) end
	if struct["nextToken"] then asserts.AssertString(struct["nextToken"]) end
	if struct["sortOrder"] then asserts.AssertSortOrderType(struct["sortOrder"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListBuildsForProjectInput[k], "ListBuildsForProjectInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListBuildsForProjectInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * projectName [NonEmptyString] <p>The name of the AWS CodeBuild project.</p>
-- * nextToken [String] <p>During a previous call, if there are more than 100 items in the list, only the first 100 items are returned, along with a unique string called a <i>next token</i>. To get the next batch of items in the list, call this operation again, adding the next token to the call. To get all of the items in the list, keep calling this operation with each subsequent next token that is returned, until no more next tokens are returned.</p>
-- * sortOrder [SortOrderType] <p>The order to list build IDs. Valid values include:</p> <ul> <li> <p> <code>ASCENDING</code>: List the build IDs in ascending order by build ID.</p> </li> <li> <p> <code>DESCENDING</code>: List the build IDs in descending order by build ID.</p> </li> </ul>
-- Required key: projectName
-- @return ListBuildsForProjectInput structure as a key-value pair table
function M.ListBuildsForProjectInput(args)
	assert(args, "You must provide an argument table when creating ListBuildsForProjectInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["projectName"] = args["projectName"],
		["nextToken"] = args["nextToken"],
		["sortOrder"] = args["sortOrder"],
	}
	asserts.AssertListBuildsForProjectInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.NetworkInterface = { ["subnetId"] = true, ["networkInterfaceId"] = true, nil }

function asserts.AssertNetworkInterface(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NetworkInterface to be of type 'table'")
	if struct["subnetId"] then asserts.AssertNonEmptyString(struct["subnetId"]) end
	if struct["networkInterfaceId"] then asserts.AssertNonEmptyString(struct["networkInterfaceId"]) end
	for k,_ in pairs(struct) do
		assert(keys.NetworkInterface[k], "NetworkInterface contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NetworkInterface
-- <p>Describes a network interface.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * subnetId [NonEmptyString] <p>The ID of the subnet.</p>
-- * networkInterfaceId [NonEmptyString] <p>The ID of the network interface.</p>
-- @return NetworkInterface structure as a key-value pair table
function M.NetworkInterface(args)
	assert(args, "You must provide an argument table when creating NetworkInterface")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["subnetId"] = args["subnetId"],
		["networkInterfaceId"] = args["networkInterfaceId"],
	}
	asserts.AssertNetworkInterface(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EnvironmentImage = { ["versions"] = true, ["name"] = true, ["description"] = true, nil }

function asserts.AssertEnvironmentImage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EnvironmentImage to be of type 'table'")
	if struct["versions"] then asserts.AssertImageVersions(struct["versions"]) end
	if struct["name"] then asserts.AssertString(struct["name"]) end
	if struct["description"] then asserts.AssertString(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(keys.EnvironmentImage[k], "EnvironmentImage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EnvironmentImage
-- <p>Information about a Docker image that is managed by AWS CodeBuild.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * versions [ImageVersions] <p>A list of environment image versions.</p>
-- * name [String] <p>The name of the Docker image.</p>
-- * description [String] <p>The description of the Docker image.</p>
-- @return EnvironmentImage structure as a key-value pair table
function M.EnvironmentImage(args)
	assert(args, "You must provide an argument table when creating EnvironmentImage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["versions"] = args["versions"],
		["name"] = args["name"],
		["description"] = args["description"],
	}
	asserts.AssertEnvironmentImage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListBuildsForProjectOutput = { ["nextToken"] = true, ["ids"] = true, nil }

function asserts.AssertListBuildsForProjectOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListBuildsForProjectOutput to be of type 'table'")
	if struct["nextToken"] then asserts.AssertString(struct["nextToken"]) end
	if struct["ids"] then asserts.AssertBuildIds(struct["ids"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListBuildsForProjectOutput[k], "ListBuildsForProjectOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListBuildsForProjectOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [String] <p>If there are more than 100 items in the list, only the first 100 items are returned, along with a unique string called a <i>next token</i>. To get the next batch of items in the list, call this operation again, adding the next token to the call.</p>
-- * ids [BuildIds] <p>A list of build IDs for the specified build project, with each build ID representing a single build.</p>
-- @return ListBuildsForProjectOutput structure as a key-value pair table
function M.ListBuildsForProjectOutput(args)
	assert(args, "You must provide an argument table when creating ListBuildsForProjectOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["ids"] = args["ids"],
	}
	asserts.AssertListBuildsForProjectOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.VpcConfig = { ["subnets"] = true, ["vpcId"] = true, ["securityGroupIds"] = true, nil }

function asserts.AssertVpcConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VpcConfig to be of type 'table'")
	if struct["subnets"] then asserts.AssertSubnets(struct["subnets"]) end
	if struct["vpcId"] then asserts.AssertNonEmptyString(struct["vpcId"]) end
	if struct["securityGroupIds"] then asserts.AssertSecurityGroupIds(struct["securityGroupIds"]) end
	for k,_ in pairs(struct) do
		assert(keys.VpcConfig[k], "VpcConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VpcConfig
-- <p>Information about the VPC configuration that AWS CodeBuild will access.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * subnets [Subnets] <p>A list of one or more subnet IDs in your Amazon VPC.</p>
-- * vpcId [NonEmptyString] <p>The ID of the Amazon VPC.</p>
-- * securityGroupIds [SecurityGroupIds] <p>A list of one or more security groups IDs in your Amazon VPC.</p>
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
		["subnets"] = args["subnets"],
		["vpcId"] = args["vpcId"],
		["securityGroupIds"] = args["securityGroupIds"],
	}
	asserts.AssertVpcConfig(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchDeleteBuildsOutput = { ["buildsNotDeleted"] = true, ["buildsDeleted"] = true, nil }

function asserts.AssertBatchDeleteBuildsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchDeleteBuildsOutput to be of type 'table'")
	if struct["buildsNotDeleted"] then asserts.AssertBuildsNotDeleted(struct["buildsNotDeleted"]) end
	if struct["buildsDeleted"] then asserts.AssertBuildIds(struct["buildsDeleted"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchDeleteBuildsOutput[k], "BatchDeleteBuildsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchDeleteBuildsOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * buildsNotDeleted [BuildsNotDeleted] <p>Information about any builds that could not be successfully deleted.</p>
-- * buildsDeleted [BuildIds] <p>The IDs of the builds that were successfully deleted.</p>
-- @return BatchDeleteBuildsOutput structure as a key-value pair table
function M.BatchDeleteBuildsOutput(args)
	assert(args, "You must provide an argument table when creating BatchDeleteBuildsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["buildsNotDeleted"] = args["buildsNotDeleted"],
		["buildsDeleted"] = args["buildsDeleted"],
	}
	asserts.AssertBatchDeleteBuildsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ProjectEnvironment = { ["computeType"] = true, ["certificate"] = true, ["privilegedMode"] = true, ["image"] = true, ["environmentVariables"] = true, ["type"] = true, nil }

function asserts.AssertProjectEnvironment(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ProjectEnvironment to be of type 'table'")
	assert(struct["type"], "Expected key type to exist in table")
	assert(struct["image"], "Expected key image to exist in table")
	assert(struct["computeType"], "Expected key computeType to exist in table")
	if struct["computeType"] then asserts.AssertComputeType(struct["computeType"]) end
	if struct["certificate"] then asserts.AssertString(struct["certificate"]) end
	if struct["privilegedMode"] then asserts.AssertWrapperBoolean(struct["privilegedMode"]) end
	if struct["image"] then asserts.AssertNonEmptyString(struct["image"]) end
	if struct["environmentVariables"] then asserts.AssertEnvironmentVariables(struct["environmentVariables"]) end
	if struct["type"] then asserts.AssertEnvironmentType(struct["type"]) end
	for k,_ in pairs(struct) do
		assert(keys.ProjectEnvironment[k], "ProjectEnvironment contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ProjectEnvironment
-- <p>Information about the build environment of the build project.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * computeType [ComputeType] <p>Information about the compute resources the build project will use. Available values include:</p> <ul> <li> <p> <code>BUILD_GENERAL1_SMALL</code>: Use up to 3 GB memory and 2 vCPUs for builds.</p> </li> <li> <p> <code>BUILD_GENERAL1_MEDIUM</code>: Use up to 7 GB memory and 4 vCPUs for builds.</p> </li> <li> <p> <code>BUILD_GENERAL1_LARGE</code>: Use up to 15 GB memory and 8 vCPUs for builds.</p> </li> </ul>
-- * certificate [String] <p>The certificate to use with this build project.</p>
-- * privilegedMode [WrapperBoolean] <p>Enables running the Docker daemon inside a Docker container. Set to true only if the build project is be used to build Docker images, and the specified build environment image is not provided by AWS CodeBuild with Docker support. Otherwise, all associated builds that attempt to interact with the Docker daemon will fail. Note that you must also start the Docker daemon so that builds can interact with it. One way to do this is to initialize the Docker daemon during the install phase of your build spec by running the following build commands. (Do not run the following build commands if the specified build environment image is provided by AWS CodeBuild with Docker support.)</p> <p>If the operating system's base image is Ubuntu Linux:</p> <p> <code>- nohup /usr/local/bin/dockerd --host=unix:///var/run/docker.sock --host=tcp://0.0.0.0:2375 --storage-driver=overlay&amp; - timeout 15 sh -c "until docker info; do echo .; sleep 1; done"</code> </p> <p>If the operating system's base image is Alpine Linux, add the <code>-t</code> argument to <code>timeout</code>:</p> <p> <code>- nohup /usr/local/bin/dockerd --host=unix:///var/run/docker.sock --host=tcp://0.0.0.0:2375 --storage-driver=overlay&amp; - timeout 15 -t sh -c "until docker info; do echo .; sleep 1; done"</code> </p>
-- * image [NonEmptyString] <p>The ID of the Docker image to use for this build project.</p>
-- * environmentVariables [EnvironmentVariables] <p>A set of environment variables to make available to builds for this build project.</p>
-- * type [EnvironmentType] <p>The type of build environment to use for related builds.</p>
-- Required key: type
-- Required key: image
-- Required key: computeType
-- @return ProjectEnvironment structure as a key-value pair table
function M.ProjectEnvironment(args)
	assert(args, "You must provide an argument table when creating ProjectEnvironment")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["computeType"] = args["computeType"],
		["certificate"] = args["certificate"],
		["privilegedMode"] = args["privilegedMode"],
		["image"] = args["image"],
		["environmentVariables"] = args["environmentVariables"],
		["type"] = args["type"],
	}
	asserts.AssertProjectEnvironment(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EnvironmentLanguage = { ["images"] = true, ["language"] = true, nil }

function asserts.AssertEnvironmentLanguage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EnvironmentLanguage to be of type 'table'")
	if struct["images"] then asserts.AssertEnvironmentImages(struct["images"]) end
	if struct["language"] then asserts.AssertLanguageType(struct["language"]) end
	for k,_ in pairs(struct) do
		assert(keys.EnvironmentLanguage[k], "EnvironmentLanguage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EnvironmentLanguage
-- <p>A set of Docker images that are related by programming language and are managed by AWS CodeBuild.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * images [EnvironmentImages] <p>The list of Docker images that are related by the specified programming language.</p>
-- * language [LanguageType] <p>The programming language for the Docker images.</p>
-- @return EnvironmentLanguage structure as a key-value pair table
function M.EnvironmentLanguage(args)
	assert(args, "You must provide an argument table when creating EnvironmentLanguage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["images"] = args["images"],
		["language"] = args["language"],
	}
	asserts.AssertEnvironmentLanguage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SourceAuth = { ["resource"] = true, ["type"] = true, nil }

function asserts.AssertSourceAuth(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SourceAuth to be of type 'table'")
	assert(struct["type"], "Expected key type to exist in table")
	if struct["resource"] then asserts.AssertString(struct["resource"]) end
	if struct["type"] then asserts.AssertSourceAuthType(struct["type"]) end
	for k,_ in pairs(struct) do
		assert(keys.SourceAuth[k], "SourceAuth contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SourceAuth
-- <p>Information about the authorization settings for AWS CodeBuild to access the source code to be built.</p> <p>This information is for the AWS CodeBuild console's use only. Your code should not get or set this information directly (unless the build project's source <code>type</code> value is <code>BITBUCKET</code> or <code>GITHUB</code>).</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * resource [String] <p>The resource value that applies to the specified authorization type.</p>
-- * type [SourceAuthType] <p>The authorization type to use. The only valid value is <code>OAUTH</code>, which represents the OAuth authorization type.</p>
-- Required key: type
-- @return SourceAuth structure as a key-value pair table
function M.SourceAuth(args)
	assert(args, "You must provide an argument table when creating SourceAuth")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["resource"] = args["resource"],
		["type"] = args["type"],
	}
	asserts.AssertSourceAuth(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

function asserts.AssertCacheType(str)
	assert(str)
	assert(type(str) == "string", "Expected CacheType to be of type 'string'")
end

--  
function M.CacheType(str)
	asserts.AssertCacheType(str)
	return str
end

function asserts.AssertProjectSortByType(str)
	assert(str)
	assert(type(str) == "string", "Expected ProjectSortByType to be of type 'string'")
end

--  
function M.ProjectSortByType(str)
	asserts.AssertProjectSortByType(str)
	return str
end

function asserts.AssertProjectDescription(str)
	assert(str)
	assert(type(str) == "string", "Expected ProjectDescription to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
end

--  
function M.ProjectDescription(str)
	asserts.AssertProjectDescription(str)
	return str
end

function asserts.AssertEnvironmentType(str)
	assert(str)
	assert(type(str) == "string", "Expected EnvironmentType to be of type 'string'")
end

--  
function M.EnvironmentType(str)
	asserts.AssertEnvironmentType(str)
	return str
end

function asserts.AssertEnvironmentVariableType(str)
	assert(str)
	assert(type(str) == "string", "Expected EnvironmentVariableType to be of type 'string'")
end

--  
function M.EnvironmentVariableType(str)
	asserts.AssertEnvironmentVariableType(str)
	return str
end

function asserts.AssertSourceAuthType(str)
	assert(str)
	assert(type(str) == "string", "Expected SourceAuthType to be of type 'string'")
end

--  
function M.SourceAuthType(str)
	asserts.AssertSourceAuthType(str)
	return str
end

function asserts.AssertNonEmptyString(str)
	assert(str)
	assert(type(str) == "string", "Expected NonEmptyString to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.NonEmptyString(str)
	asserts.AssertNonEmptyString(str)
	return str
end

function asserts.AssertStatusType(str)
	assert(str)
	assert(type(str) == "string", "Expected StatusType to be of type 'string'")
end

--  
function M.StatusType(str)
	asserts.AssertStatusType(str)
	return str
end

function asserts.AssertArtifactPackaging(str)
	assert(str)
	assert(type(str) == "string", "Expected ArtifactPackaging to be of type 'string'")
end

--  
function M.ArtifactPackaging(str)
	asserts.AssertArtifactPackaging(str)
	return str
end

function asserts.AssertString(str)
	assert(str)
	assert(type(str) == "string", "Expected String to be of type 'string'")
end

--  
function M.String(str)
	asserts.AssertString(str)
	return str
end

function asserts.AssertBuildPhaseType(str)
	assert(str)
	assert(type(str) == "string", "Expected BuildPhaseType to be of type 'string'")
end

--  
function M.BuildPhaseType(str)
	asserts.AssertBuildPhaseType(str)
	return str
end

function asserts.AssertPlatformType(str)
	assert(str)
	assert(type(str) == "string", "Expected PlatformType to be of type 'string'")
end

--  
function M.PlatformType(str)
	asserts.AssertPlatformType(str)
	return str
end

function asserts.AssertValueInput(str)
	assert(str)
	assert(type(str) == "string", "Expected ValueInput to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ValueInput(str)
	asserts.AssertValueInput(str)
	return str
end

function asserts.AssertSourceType(str)
	assert(str)
	assert(type(str) == "string", "Expected SourceType to be of type 'string'")
end

--  
function M.SourceType(str)
	asserts.AssertSourceType(str)
	return str
end

function asserts.AssertProjectName(str)
	assert(str)
	assert(type(str) == "string", "Expected ProjectName to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 2, "Expected string to be min 2 characters")
end

--  
function M.ProjectName(str)
	asserts.AssertProjectName(str)
	return str
end

function asserts.AssertSortOrderType(str)
	assert(str)
	assert(type(str) == "string", "Expected SortOrderType to be of type 'string'")
end

--  
function M.SortOrderType(str)
	asserts.AssertSortOrderType(str)
	return str
end

function asserts.AssertComputeType(str)
	assert(str)
	assert(type(str) == "string", "Expected ComputeType to be of type 'string'")
end

--  
function M.ComputeType(str)
	asserts.AssertComputeType(str)
	return str
end

function asserts.AssertLogsConfigStatusType(str)
	assert(str)
	assert(type(str) == "string", "Expected LogsConfigStatusType to be of type 'string'")
end

--  
function M.LogsConfigStatusType(str)
	asserts.AssertLogsConfigStatusType(str)
	return str
end

function asserts.AssertLanguageType(str)
	assert(str)
	assert(type(str) == "string", "Expected LanguageType to be of type 'string'")
end

--  
function M.LanguageType(str)
	asserts.AssertLanguageType(str)
	return str
end

function asserts.AssertArtifactsType(str)
	assert(str)
	assert(type(str) == "string", "Expected ArtifactsType to be of type 'string'")
end

--  
function M.ArtifactsType(str)
	asserts.AssertArtifactsType(str)
	return str
end

function asserts.AssertArtifactNamespace(str)
	assert(str)
	assert(type(str) == "string", "Expected ArtifactNamespace to be of type 'string'")
end

--  
function M.ArtifactNamespace(str)
	asserts.AssertArtifactNamespace(str)
	return str
end

function asserts.AssertKeyInput(str)
	assert(str)
	assert(type(str) == "string", "Expected KeyInput to be of type 'string'")
	assert(#str <= 127, "Expected string to be max 127 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.KeyInput(str)
	asserts.AssertKeyInput(str)
	return str
end

function asserts.AssertWrapperLong(long)
	assert(long)
	assert(type(long) == "number", "Expected WrapperLong to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.WrapperLong(long)
	asserts.AssertWrapperLong(long)
	return long
end

function asserts.AssertGitCloneDepth(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected GitCloneDepth to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.GitCloneDepth(integer)
	asserts.AssertGitCloneDepth(integer)
	return integer
end

function asserts.AssertTimeOut(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected TimeOut to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 480, "Expected integer to be max 480")
	assert(integer >= 5, "Expected integer to be min 5")
end

function M.TimeOut(integer)
	asserts.AssertTimeOut(integer)
	return integer
end

function asserts.AssertWrapperInt(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected WrapperInt to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.WrapperInt(integer)
	asserts.AssertWrapperInt(integer)
	return integer
end

function asserts.AssertWrapperBoolean(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected WrapperBoolean to be of type 'boolean'")
end

function M.WrapperBoolean(boolean)
	asserts.AssertWrapperBoolean(boolean)
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

function asserts.AssertTimestamp(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected Timestamp to be of type 'string'")
end

function M.Timestamp(timestamp)
	asserts.AssertTimestamp(timestamp)
	return timestamp
end

function asserts.AssertImageVersions(list)
	assert(list)
	assert(type(list) == "table", "Expected ImageVersions to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertString(v)
	end
end

--  
-- List of String objects
function M.ImageVersions(list)
	asserts.AssertImageVersions(list)
	return list
end

function asserts.AssertBuildsNotDeleted(list)
	assert(list)
	assert(type(list) == "table", "Expected BuildsNotDeleted to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertBuildNotDeleted(v)
	end
end

--  
-- List of BuildNotDeleted objects
function M.BuildsNotDeleted(list)
	asserts.AssertBuildsNotDeleted(list)
	return list
end

function asserts.AssertSubnets(list)
	assert(list)
	assert(type(list) == "table", "Expected Subnets to be of type ''table")
	assert(#list <= 16, "Expected list to be contain 16 elements")
	for _,v in ipairs(list) do
		asserts.AssertNonEmptyString(v)
	end
end

--  
-- List of NonEmptyString objects
function M.Subnets(list)
	asserts.AssertSubnets(list)
	return list
end

function asserts.AssertProjects(list)
	assert(list)
	assert(type(list) == "table", "Expected Projects to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertProject(v)
	end
end

--  
-- List of Project objects
function M.Projects(list)
	asserts.AssertProjects(list)
	return list
end

function asserts.AssertEnvironmentPlatforms(list)
	assert(list)
	assert(type(list) == "table", "Expected EnvironmentPlatforms to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertEnvironmentPlatform(v)
	end
end

--  
-- List of EnvironmentPlatform objects
function M.EnvironmentPlatforms(list)
	asserts.AssertEnvironmentPlatforms(list)
	return list
end

function asserts.AssertBuildIds(list)
	assert(list)
	assert(type(list) == "table", "Expected BuildIds to be of type ''table")
	assert(#list <= 100, "Expected list to be contain 100 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertNonEmptyString(v)
	end
end

--  
-- List of NonEmptyString objects
function M.BuildIds(list)
	asserts.AssertBuildIds(list)
	return list
end

function asserts.AssertSecurityGroupIds(list)
	assert(list)
	assert(type(list) == "table", "Expected SecurityGroupIds to be of type ''table")
	assert(#list <= 5, "Expected list to be contain 5 elements")
	for _,v in ipairs(list) do
		asserts.AssertNonEmptyString(v)
	end
end

--  
-- List of NonEmptyString objects
function M.SecurityGroupIds(list)
	asserts.AssertSecurityGroupIds(list)
	return list
end

function asserts.AssertPhaseContexts(list)
	assert(list)
	assert(type(list) == "table", "Expected PhaseContexts to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertPhaseContext(v)
	end
end

--  
-- List of PhaseContext objects
function M.PhaseContexts(list)
	asserts.AssertPhaseContexts(list)
	return list
end

function asserts.AssertBuildPhases(list)
	assert(list)
	assert(type(list) == "table", "Expected BuildPhases to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertBuildPhase(v)
	end
end

--  
-- List of BuildPhase objects
function M.BuildPhases(list)
	asserts.AssertBuildPhases(list)
	return list
end

function asserts.AssertProjectSecondarySourceVersions(list)
	assert(list)
	assert(type(list) == "table", "Expected ProjectSecondarySourceVersions to be of type ''table")
	assert(#list <= 12, "Expected list to be contain 12 elements")
	for _,v in ipairs(list) do
		asserts.AssertProjectSourceVersion(v)
	end
end

--  
-- List of ProjectSourceVersion objects
function M.ProjectSecondarySourceVersions(list)
	asserts.AssertProjectSecondarySourceVersions(list)
	return list
end

function asserts.AssertProjectNames(list)
	assert(list)
	assert(type(list) == "table", "Expected ProjectNames to be of type ''table")
	assert(#list <= 100, "Expected list to be contain 100 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertNonEmptyString(v)
	end
end

--  
-- List of NonEmptyString objects
function M.ProjectNames(list)
	asserts.AssertProjectNames(list)
	return list
end

function asserts.AssertEnvironmentLanguages(list)
	assert(list)
	assert(type(list) == "table", "Expected EnvironmentLanguages to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertEnvironmentLanguage(v)
	end
end

--  
-- List of EnvironmentLanguage objects
function M.EnvironmentLanguages(list)
	asserts.AssertEnvironmentLanguages(list)
	return list
end

function asserts.AssertBuildArtifactsList(list)
	assert(list)
	assert(type(list) == "table", "Expected BuildArtifactsList to be of type ''table")
	assert(#list <= 12, "Expected list to be contain 12 elements")
	for _,v in ipairs(list) do
		asserts.AssertBuildArtifacts(v)
	end
end

--  
-- List of BuildArtifacts objects
function M.BuildArtifactsList(list)
	asserts.AssertBuildArtifactsList(list)
	return list
end

function asserts.AssertEnvironmentVariables(list)
	assert(list)
	assert(type(list) == "table", "Expected EnvironmentVariables to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertEnvironmentVariable(v)
	end
end

--  
-- List of EnvironmentVariable objects
function M.EnvironmentVariables(list)
	asserts.AssertEnvironmentVariables(list)
	return list
end

function asserts.AssertEnvironmentImages(list)
	assert(list)
	assert(type(list) == "table", "Expected EnvironmentImages to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertEnvironmentImage(v)
	end
end

--  
-- List of EnvironmentImage objects
function M.EnvironmentImages(list)
	asserts.AssertEnvironmentImages(list)
	return list
end

function asserts.AssertProjectSources(list)
	assert(list)
	assert(type(list) == "table", "Expected ProjectSources to be of type ''table")
	assert(#list <= 12, "Expected list to be contain 12 elements")
	for _,v in ipairs(list) do
		asserts.AssertProjectSource(v)
	end
end

--  
-- List of ProjectSource objects
function M.ProjectSources(list)
	asserts.AssertProjectSources(list)
	return list
end

function asserts.AssertBuilds(list)
	assert(list)
	assert(type(list) == "table", "Expected Builds to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertBuild(v)
	end
end

--  
-- List of Build objects
function M.Builds(list)
	asserts.AssertBuilds(list)
	return list
end

function asserts.AssertProjectArtifactsList(list)
	assert(list)
	assert(type(list) == "table", "Expected ProjectArtifactsList to be of type ''table")
	assert(#list <= 12, "Expected list to be contain 12 elements")
	for _,v in ipairs(list) do
		asserts.AssertProjectArtifacts(v)
	end
end

--  
-- List of ProjectArtifacts objects
function M.ProjectArtifactsList(list)
	asserts.AssertProjectArtifactsList(list)
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
			return "codebuild.amazonaws.com"
		end
	end
	local ss = { "codebuild" }
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
--- Call ListBuilds asynchronously, invoking a callback when done
-- @param ListBuildsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListBuildsAsync(ListBuildsInput, cb)
	assert(ListBuildsInput, "You must provide a ListBuildsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeBuild_20161006.ListBuilds",
	}
	for header,value in pairs(ListBuildsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListBuildsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListBuilds synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListBuildsInput
-- @return response
-- @return error_type
-- @return error_message
function M.ListBuildsSync(ListBuildsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListBuildsAsync(ListBuildsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateWebhook asynchronously, invoking a callback when done
-- @param UpdateWebhookInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateWebhookAsync(UpdateWebhookInput, cb)
	assert(UpdateWebhookInput, "You must provide a UpdateWebhookInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeBuild_20161006.UpdateWebhook",
	}
	for header,value in pairs(UpdateWebhookInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateWebhookInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateWebhook synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateWebhookInput
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateWebhookSync(UpdateWebhookInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateWebhookAsync(UpdateWebhookInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call StopBuild asynchronously, invoking a callback when done
-- @param StopBuildInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.StopBuildAsync(StopBuildInput, cb)
	assert(StopBuildInput, "You must provide a StopBuildInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeBuild_20161006.StopBuild",
	}
	for header,value in pairs(StopBuildInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", StopBuildInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call StopBuild synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StopBuildInput
-- @return response
-- @return error_type
-- @return error_message
function M.StopBuildSync(StopBuildInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StopBuildAsync(StopBuildInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListBuildsForProject asynchronously, invoking a callback when done
-- @param ListBuildsForProjectInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListBuildsForProjectAsync(ListBuildsForProjectInput, cb)
	assert(ListBuildsForProjectInput, "You must provide a ListBuildsForProjectInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeBuild_20161006.ListBuildsForProject",
	}
	for header,value in pairs(ListBuildsForProjectInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListBuildsForProjectInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListBuildsForProject synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListBuildsForProjectInput
-- @return response
-- @return error_type
-- @return error_message
function M.ListBuildsForProjectSync(ListBuildsForProjectInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListBuildsForProjectAsync(ListBuildsForProjectInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call BatchGetBuilds asynchronously, invoking a callback when done
-- @param BatchGetBuildsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.BatchGetBuildsAsync(BatchGetBuildsInput, cb)
	assert(BatchGetBuildsInput, "You must provide a BatchGetBuildsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeBuild_20161006.BatchGetBuilds",
	}
	for header,value in pairs(BatchGetBuildsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", BatchGetBuildsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call BatchGetBuilds synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param BatchGetBuildsInput
-- @return response
-- @return error_type
-- @return error_message
function M.BatchGetBuildsSync(BatchGetBuildsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.BatchGetBuildsAsync(BatchGetBuildsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListProjects asynchronously, invoking a callback when done
-- @param ListProjectsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListProjectsAsync(ListProjectsInput, cb)
	assert(ListProjectsInput, "You must provide a ListProjectsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeBuild_20161006.ListProjects",
	}
	for header,value in pairs(ListProjectsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListProjectsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListProjects synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListProjectsInput
-- @return response
-- @return error_type
-- @return error_message
function M.ListProjectsSync(ListProjectsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListProjectsAsync(ListProjectsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateProject asynchronously, invoking a callback when done
-- @param CreateProjectInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateProjectAsync(CreateProjectInput, cb)
	assert(CreateProjectInput, "You must provide a CreateProjectInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeBuild_20161006.CreateProject",
	}
	for header,value in pairs(CreateProjectInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateProjectInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateProject synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateProjectInput
-- @return response
-- @return error_type
-- @return error_message
function M.CreateProjectSync(CreateProjectInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateProjectAsync(CreateProjectInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListCuratedEnvironmentImages asynchronously, invoking a callback when done
-- @param ListCuratedEnvironmentImagesInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListCuratedEnvironmentImagesAsync(ListCuratedEnvironmentImagesInput, cb)
	assert(ListCuratedEnvironmentImagesInput, "You must provide a ListCuratedEnvironmentImagesInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeBuild_20161006.ListCuratedEnvironmentImages",
	}
	for header,value in pairs(ListCuratedEnvironmentImagesInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListCuratedEnvironmentImagesInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListCuratedEnvironmentImages synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListCuratedEnvironmentImagesInput
-- @return response
-- @return error_type
-- @return error_message
function M.ListCuratedEnvironmentImagesSync(ListCuratedEnvironmentImagesInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListCuratedEnvironmentImagesAsync(ListCuratedEnvironmentImagesInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateWebhook asynchronously, invoking a callback when done
-- @param CreateWebhookInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateWebhookAsync(CreateWebhookInput, cb)
	assert(CreateWebhookInput, "You must provide a CreateWebhookInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeBuild_20161006.CreateWebhook",
	}
	for header,value in pairs(CreateWebhookInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateWebhookInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateWebhook synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateWebhookInput
-- @return response
-- @return error_type
-- @return error_message
function M.CreateWebhookSync(CreateWebhookInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateWebhookAsync(CreateWebhookInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call InvalidateProjectCache asynchronously, invoking a callback when done
-- @param InvalidateProjectCacheInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.InvalidateProjectCacheAsync(InvalidateProjectCacheInput, cb)
	assert(InvalidateProjectCacheInput, "You must provide a InvalidateProjectCacheInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeBuild_20161006.InvalidateProjectCache",
	}
	for header,value in pairs(InvalidateProjectCacheInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", InvalidateProjectCacheInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call InvalidateProjectCache synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param InvalidateProjectCacheInput
-- @return response
-- @return error_type
-- @return error_message
function M.InvalidateProjectCacheSync(InvalidateProjectCacheInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.InvalidateProjectCacheAsync(InvalidateProjectCacheInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call StartBuild asynchronously, invoking a callback when done
-- @param StartBuildInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.StartBuildAsync(StartBuildInput, cb)
	assert(StartBuildInput, "You must provide a StartBuildInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeBuild_20161006.StartBuild",
	}
	for header,value in pairs(StartBuildInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", StartBuildInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call StartBuild synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StartBuildInput
-- @return response
-- @return error_type
-- @return error_message
function M.StartBuildSync(StartBuildInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StartBuildAsync(StartBuildInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteProject asynchronously, invoking a callback when done
-- @param DeleteProjectInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteProjectAsync(DeleteProjectInput, cb)
	assert(DeleteProjectInput, "You must provide a DeleteProjectInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeBuild_20161006.DeleteProject",
	}
	for header,value in pairs(DeleteProjectInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteProjectInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteProject synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteProjectInput
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteProjectSync(DeleteProjectInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteProjectAsync(DeleteProjectInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateProject asynchronously, invoking a callback when done
-- @param UpdateProjectInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateProjectAsync(UpdateProjectInput, cb)
	assert(UpdateProjectInput, "You must provide a UpdateProjectInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeBuild_20161006.UpdateProject",
	}
	for header,value in pairs(UpdateProjectInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateProjectInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateProject synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateProjectInput
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateProjectSync(UpdateProjectInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateProjectAsync(UpdateProjectInput, function(response, error_type, error_message)
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
		[request_headers.AMZ_TARGET_HEADER] = "CodeBuild_20161006.DeleteWebhook",
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

--- Call BatchGetProjects asynchronously, invoking a callback when done
-- @param BatchGetProjectsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.BatchGetProjectsAsync(BatchGetProjectsInput, cb)
	assert(BatchGetProjectsInput, "You must provide a BatchGetProjectsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeBuild_20161006.BatchGetProjects",
	}
	for header,value in pairs(BatchGetProjectsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", BatchGetProjectsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call BatchGetProjects synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param BatchGetProjectsInput
-- @return response
-- @return error_type
-- @return error_message
function M.BatchGetProjectsSync(BatchGetProjectsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.BatchGetProjectsAsync(BatchGetProjectsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call BatchDeleteBuilds asynchronously, invoking a callback when done
-- @param BatchDeleteBuildsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.BatchDeleteBuildsAsync(BatchDeleteBuildsInput, cb)
	assert(BatchDeleteBuildsInput, "You must provide a BatchDeleteBuildsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeBuild_20161006.BatchDeleteBuilds",
	}
	for header,value in pairs(BatchDeleteBuildsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", BatchDeleteBuildsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call BatchDeleteBuilds synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param BatchDeleteBuildsInput
-- @return response
-- @return error_type
-- @return error_message
function M.BatchDeleteBuildsSync(BatchDeleteBuildsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.BatchDeleteBuildsAsync(BatchDeleteBuildsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
