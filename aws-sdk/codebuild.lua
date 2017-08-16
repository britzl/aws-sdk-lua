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
-- @param _languages [EnvironmentLanguages] <p>The list of programming languages that are available for the specified platform.</p>
-- @param _platform [PlatformType] <p>The platform's name.</p>
function M.EnvironmentPlatform(_languages, _platform, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EnvironmentPlatform")
	local t = { 
		["languages"] = _languages,
		["platform"] = _platform,
	}
	asserts.AssertEnvironmentPlatform(t)
	return t
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
-- @param _project [Project] <p>Information about the build project that was created.</p>
function M.CreateProjectOutput(_project, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateProjectOutput")
	local t = { 
		["project"] = _project,
	}
	asserts.AssertCreateProjectOutput(t)
	return t
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
-- @param _build [Build] <p>Information about the build to be run.</p>
function M.StartBuildOutput(_build, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StartBuildOutput")
	local t = { 
		["build"] = _build,
	}
	asserts.AssertStartBuildOutput(t)
	return t
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
-- @param _platforms [EnvironmentPlatforms] <p>Information about supported platforms for Docker images that are managed by AWS CodeBuild.</p>
function M.ListCuratedEnvironmentImagesOutput(_platforms, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListCuratedEnvironmentImagesOutput")
	local t = { 
		["platforms"] = _platforms,
	}
	asserts.AssertListCuratedEnvironmentImagesOutput(t)
	return t
end

keys.Build = { ["environment"] = true, ["phases"] = true, ["buildComplete"] = true, ["logs"] = true, ["artifacts"] = true, ["projectName"] = true, ["timeoutInMinutes"] = true, ["initiator"] = true, ["buildStatus"] = true, ["sourceVersion"] = true, ["source"] = true, ["currentPhase"] = true, ["startTime"] = true, ["endTime"] = true, ["id"] = true, ["arn"] = true, nil }

function asserts.AssertBuild(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Build to be of type 'table'")
	if struct["environment"] then asserts.AssertProjectEnvironment(struct["environment"]) end
	if struct["phases"] then asserts.AssertBuildPhases(struct["phases"]) end
	if struct["buildComplete"] then asserts.AssertBoolean(struct["buildComplete"]) end
	if struct["logs"] then asserts.AssertLogsLocation(struct["logs"]) end
	if struct["artifacts"] then asserts.AssertBuildArtifacts(struct["artifacts"]) end
	if struct["projectName"] then asserts.AssertNonEmptyString(struct["projectName"]) end
	if struct["timeoutInMinutes"] then asserts.AssertWrapperInt(struct["timeoutInMinutes"]) end
	if struct["initiator"] then asserts.AssertString(struct["initiator"]) end
	if struct["buildStatus"] then asserts.AssertStatusType(struct["buildStatus"]) end
	if struct["sourceVersion"] then asserts.AssertNonEmptyString(struct["sourceVersion"]) end
	if struct["source"] then asserts.AssertProjectSource(struct["source"]) end
	if struct["currentPhase"] then asserts.AssertString(struct["currentPhase"]) end
	if struct["startTime"] then asserts.AssertTimestamp(struct["startTime"]) end
	if struct["endTime"] then asserts.AssertTimestamp(struct["endTime"]) end
	if struct["id"] then asserts.AssertNonEmptyString(struct["id"]) end
	if struct["arn"] then asserts.AssertNonEmptyString(struct["arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.Build[k], "Build contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Build
-- <p>Information about a build.</p>
-- @param _environment [ProjectEnvironment] <p>Information about the build environment for this build.</p>
-- @param _phases [BuildPhases] <p>Information about all previous build phases that are completed and information about any current build phase that is not yet complete.</p>
-- @param _buildComplete [Boolean] <p>Whether the build has finished. True if completed; otherwise, false.</p>
-- @param _logs [LogsLocation] <p>Information about the build's logs in Amazon CloudWatch Logs.</p>
-- @param _artifacts [BuildArtifacts] <p>Information about the output artifacts for the build.</p>
-- @param _projectName [NonEmptyString] <p>The name of the build project.</p>
-- @param _timeoutInMinutes [WrapperInt] <p>How long, in minutes, for AWS CodeBuild to wait before timing out this build if it does not get marked as completed.</p>
-- @param _initiator [String] <p>The entity that started the build. Valid values include:</p> <ul> <li> <p>If AWS CodePipeline started the build, the pipeline's name (for example, <code>codepipeline/my-demo-pipeline</code>).</p> </li> <li> <p>If an AWS Identity and Access Management (IAM) user started the build, the user's name (for example <code>MyUserName</code>).</p> </li> <li> <p>If the Jenkins plugin for AWS CodeBuild started the build, the string <code>CodeBuild-Jenkins-Plugin</code>.</p> </li> </ul>
-- @param _buildStatus [StatusType] <p>The current status of the build. Valid values include:</p> <ul> <li> <p> <code>FAILED</code>: The build failed.</p> </li> <li> <p> <code>FAULT</code>: The build faulted.</p> </li> <li> <p> <code>IN_PROGRESS</code>: The build is still in progress.</p> </li> <li> <p> <code>STOPPED</code>: The build stopped.</p> </li> <li> <p> <code>SUCCEEDED</code>: The build succeeded.</p> </li> <li> <p> <code>TIMED_OUT</code>: The build timed out.</p> </li> </ul>
-- @param _sourceVersion [NonEmptyString] <p>Any version identifier for the version of the source code to be built.</p>
-- @param _source [ProjectSource] <p>Information about the source code to be built.</p>
-- @param _currentPhase [String] <p>The current build phase.</p>
-- @param _startTime [Timestamp] <p>When the build process started, expressed in Unix time format.</p>
-- @param _endTime [Timestamp] <p>When the build process ended, expressed in Unix time format.</p>
-- @param _id [NonEmptyString] <p>The unique ID for the build.</p>
-- @param _arn [NonEmptyString] <p>The Amazon Resource Name (ARN) of the build.</p>
function M.Build(_environment, _phases, _buildComplete, _logs, _artifacts, _projectName, _timeoutInMinutes, _initiator, _buildStatus, _sourceVersion, _source, _currentPhase, _startTime, _endTime, _id, _arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Build")
	local t = { 
		["environment"] = _environment,
		["phases"] = _phases,
		["buildComplete"] = _buildComplete,
		["logs"] = _logs,
		["artifacts"] = _artifacts,
		["projectName"] = _projectName,
		["timeoutInMinutes"] = _timeoutInMinutes,
		["initiator"] = _initiator,
		["buildStatus"] = _buildStatus,
		["sourceVersion"] = _sourceVersion,
		["source"] = _source,
		["currentPhase"] = _currentPhase,
		["startTime"] = _startTime,
		["endTime"] = _endTime,
		["id"] = _id,
		["arn"] = _arn,
	}
	asserts.AssertBuild(t)
	return t
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
-- @param _message [String] <p>An explanation of the build phase's context. This explanation might include a command ID and an exit code.</p>
-- @param _statusCode [String] <p>The status code for the context of the build phase.</p>
function M.PhaseContext(_message, _statusCode, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PhaseContext")
	local t = { 
		["message"] = _message,
		["statusCode"] = _statusCode,
	}
	asserts.AssertPhaseContext(t)
	return t
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
-- @param _id [NonEmptyString] <p>The ID of the build.</p>
-- Required parameter: id
function M.StopBuildInput(_id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StopBuildInput")
	local t = { 
		["id"] = _id,
	}
	asserts.AssertStopBuildInput(t)
	return t
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
-- @param _project [Project] <p>Information about the build project that was changed.</p>
function M.UpdateProjectOutput(_project, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateProjectOutput")
	local t = { 
		["project"] = _project,
	}
	asserts.AssertUpdateProjectOutput(t)
	return t
end

keys.ProjectSource = { ["buildspec"] = true, ["type"] = true, ["location"] = true, ["auth"] = true, nil }

function asserts.AssertProjectSource(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ProjectSource to be of type 'table'")
	assert(struct["type"], "Expected key type to exist in table")
	if struct["buildspec"] then asserts.AssertString(struct["buildspec"]) end
	if struct["type"] then asserts.AssertSourceType(struct["type"]) end
	if struct["location"] then asserts.AssertString(struct["location"]) end
	if struct["auth"] then asserts.AssertSourceAuth(struct["auth"]) end
	for k,_ in pairs(struct) do
		assert(keys.ProjectSource[k], "ProjectSource contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ProjectSource
-- <p>Information about the build input source code for the build project.</p>
-- @param _buildspec [String] <p>The build spec declaration to use for the builds in this build project.</p> <p>If this value is not specified, a build spec must be included along with the source code to be built.</p>
-- @param _type [SourceType] <p>The type of repository that contains the source code to be built. Valid values include:</p> <ul> <li> <p> <code>CODECOMMIT</code>: The source code is in an AWS CodeCommit repository.</p> </li> <li> <p> <code>CODEPIPELINE</code>: The source code settings are specified in the source action of a pipeline in AWS CodePipeline.</p> </li> <li> <p> <code>GITHUB</code>: The source code is in a GitHub repository.</p> </li> <li> <p> <code>S3</code>: The source code is in an Amazon Simple Storage Service (Amazon S3) input bucket.</p> </li> </ul>
-- @param _location [String] <p>Information about the location of the source code to be built. Valid values include:</p> <ul> <li> <p>For source code settings that are specified in the source action of a pipeline in AWS CodePipeline, <code>location</code> should not be specified. If it is specified, AWS CodePipeline will ignore it. This is because AWS CodePipeline uses the settings in a pipeline's source action instead of this value.</p> </li> <li> <p>For source code in an AWS CodeCommit repository, the HTTPS clone URL to the repository that contains the source code and the build spec (for example, <code>https://git-codecommit.<i>region-ID</i>.amazonaws.com/v1/repos/<i>repo-name</i> </code>).</p> </li> <li> <p>For source code in an Amazon Simple Storage Service (Amazon S3) input bucket, the path to the ZIP file that contains the source code (for example, <code> <i>bucket-name</i>/<i>path</i>/<i>to</i>/<i>object-name</i>.zip</code>)</p> </li> <li> <p>For source code in a GitHub repository, the HTTPS clone URL to the repository that contains the source and the build spec. Also, you must connect your AWS account to your GitHub account. To do this, use the AWS CodeBuild console to begin creating a build project. When you use the console to connect (or reconnect) with GitHub, on the GitHub <b>Authorize application</b> page that displays, for <b>Organization access</b>, choose <b>Request access</b> next to each repository you want to allow AWS CodeBuild to have access to. Then choose <b>Authorize application</b>. (After you have connected to your GitHub account, you do not need to finish creating the build project, and you may then leave the AWS CodeBuild console.) To instruct AWS CodeBuild to then use this connection, in the <code>source</code> object, set the <code>auth</code> object's <code>type</code> value to <code>OAUTH</code>.</p> </li> </ul>
-- @param _auth [SourceAuth] <p>Information about the authorization settings for AWS CodeBuild to access the source code to be built.</p> <p>This information is for the AWS CodeBuild console's use only. Your code should not get or set this information directly (unless the build project's source <code>type</code> value is <code>GITHUB</code>).</p>
-- Required parameter: type
function M.ProjectSource(_buildspec, _type, _location, _auth, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ProjectSource")
	local t = { 
		["buildspec"] = _buildspec,
		["type"] = _type,
		["location"] = _location,
		["auth"] = _auth,
	}
	asserts.AssertProjectSource(t)
	return t
end

keys.LogsLocation = { ["groupName"] = true, ["deepLink"] = true, ["streamName"] = true, nil }

function asserts.AssertLogsLocation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LogsLocation to be of type 'table'")
	if struct["groupName"] then asserts.AssertString(struct["groupName"]) end
	if struct["deepLink"] then asserts.AssertString(struct["deepLink"]) end
	if struct["streamName"] then asserts.AssertString(struct["streamName"]) end
	for k,_ in pairs(struct) do
		assert(keys.LogsLocation[k], "LogsLocation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LogsLocation
-- <p>Information about build logs in Amazon CloudWatch Logs.</p>
-- @param _groupName [String] <p>The name of the Amazon CloudWatch Logs group for the build logs.</p>
-- @param _deepLink [String] <p>The URL to an individual build log in Amazon CloudWatch Logs.</p>
-- @param _streamName [String] <p>The name of the Amazon CloudWatch Logs stream for the build logs.</p>
function M.LogsLocation(_groupName, _deepLink, _streamName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LogsLocation")
	local t = { 
		["groupName"] = _groupName,
		["deepLink"] = _deepLink,
		["streamName"] = _streamName,
	}
	asserts.AssertLogsLocation(t)
	return t
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
-- @param _nextToken [NonEmptyString] <p>During a previous call, if there are more than 100 items in the list, only the first 100 items are returned, along with a unique string called a <i>next token</i>. To get the next batch of items in the list, call this operation again, adding the next token to the call. To get all of the items in the list, keep calling this operation with each subsequent next token that is returned, until no more next tokens are returned.</p>
-- @param _sortBy [ProjectSortByType] <p>The criterion to be used to list build project names. Valid values include:</p> <ul> <li> <p> <code>CREATED_TIME</code>: List the build project names based on when each build project was created.</p> </li> <li> <p> <code>LAST_MODIFIED_TIME</code>: List the build project names based on when information about each build project was last changed.</p> </li> <li> <p> <code>NAME</code>: List the build project names based on each build project's name.</p> </li> </ul> <p>Use <code>sortOrder</code> to specify in what order to list the build project names based on the preceding criteria.</p>
-- @param _sortOrder [SortOrderType] <p>The order in which to list build projects. Valid values include:</p> <ul> <li> <p> <code>ASCENDING</code>: List the build project names in ascending order.</p> </li> <li> <p> <code>DESCENDING</code>: List the build project names in descending order.</p> </li> </ul> <p>Use <code>sortBy</code> to specify the criterion to be used to list build project names.</p>
function M.ListProjectsInput(_nextToken, _sortBy, _sortOrder, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListProjectsInput")
	local t = { 
		["nextToken"] = _nextToken,
		["sortBy"] = _sortBy,
		["sortOrder"] = _sortOrder,
	}
	asserts.AssertListProjectsInput(t)
	return t
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
-- @param _contexts [PhaseContexts] <p>Additional information about a build phase, especially to help troubleshoot a failed build.</p>
-- @param _phaseType [BuildPhaseType] <p>The name of the build phase. Valid values include:</p> <ul> <li> <p> <code>BUILD</code>: Core build activities typically occur in this build phase.</p> </li> <li> <p> <code>COMPLETED</code>: The build has been completed.</p> </li> <li> <p> <code>DOWNLOAD_SOURCE</code>: Source code is being downloaded in this build phase.</p> </li> <li> <p> <code>FINALIZING</code>: The build process is completing in this build phase.</p> </li> <li> <p> <code>INSTALL</code>: Installation activities typically occur in this build phase.</p> </li> <li> <p> <code>POST_BUILD</code>: Post-build activities typically occur in this build phase.</p> </li> <li> <p> <code>PRE_BUILD</code>: Pre-build activities typically occur in this build phase.</p> </li> <li> <p> <code>PROVISIONING</code>: The build environment is being set up.</p> </li> <li> <p> <code>SUBMITTED</code>: The build has been submitted.</p> </li> <li> <p> <code>UPLOAD_ARTIFACTS</code>: Build output artifacts are being uploaded to the output location.</p> </li> </ul>
-- @param _phaseStatus [StatusType] <p>The current status of the build phase. Valid values include:</p> <ul> <li> <p> <code>FAILED</code>: The build phase failed.</p> </li> <li> <p> <code>FAULT</code>: The build phase faulted.</p> </li> <li> <p> <code>IN_PROGRESS</code>: The build phase is still in progress.</p> </li> <li> <p> <code>STOPPED</code>: The build phase stopped.</p> </li> <li> <p> <code>SUCCEEDED</code>: The build phase succeeded.</p> </li> <li> <p> <code>TIMED_OUT</code>: The build phase timed out.</p> </li> </ul>
-- @param _durationInSeconds [WrapperLong] <p>How long, in seconds, between the starting and ending times of the build's phase.</p>
-- @param _startTime [Timestamp] <p>When the build phase started, expressed in Unix time format.</p>
-- @param _endTime [Timestamp] <p>When the build phase ended, expressed in Unix time format.</p>
function M.BuildPhase(_contexts, _phaseType, _phaseStatus, _durationInSeconds, _startTime, _endTime, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BuildPhase")
	local t = { 
		["contexts"] = _contexts,
		["phaseType"] = _phaseType,
		["phaseStatus"] = _phaseStatus,
		["durationInSeconds"] = _durationInSeconds,
		["startTime"] = _startTime,
		["endTime"] = _endTime,
	}
	asserts.AssertBuildPhase(t)
	return t
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
-- @param _ids [BuildIds] <p>The IDs of the builds.</p>
-- Required parameter: ids
function M.BatchGetBuildsInput(_ids, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchGetBuildsInput")
	local t = { 
		["ids"] = _ids,
	}
	asserts.AssertBatchGetBuildsInput(t)
	return t
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
-- @param _nextToken [String] <p>During a previous call, if there are more than 100 items in the list, only the first 100 items are returned, along with a unique string called a <i>next token</i>. To get the next batch of items in the list, call this operation again, adding the next token to the call. To get all of the items in the list, keep calling this operation with each subsequent next token that is returned, until no more next tokens are returned.</p>
-- @param _sortOrder [SortOrderType] <p>The order to list build IDs. Valid values include:</p> <ul> <li> <p> <code>ASCENDING</code>: List the build IDs in ascending order by build ID.</p> </li> <li> <p> <code>DESCENDING</code>: List the build IDs in descending order by build ID.</p> </li> </ul>
function M.ListBuildsInput(_nextToken, _sortOrder, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListBuildsInput")
	local t = { 
		["nextToken"] = _nextToken,
		["sortOrder"] = _sortOrder,
	}
	asserts.AssertListBuildsInput(t)
	return t
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
function M.DeleteProjectOutput(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteProjectOutput")
	local t = { 
	}
	asserts.AssertDeleteProjectOutput(t)
	return t
end

keys.UpdateProjectInput = { ["name"] = true, ["serviceRole"] = true, ["tags"] = true, ["artifacts"] = true, ["timeoutInMinutes"] = true, ["environment"] = true, ["source"] = true, ["encryptionKey"] = true, ["description"] = true, nil }

function asserts.AssertUpdateProjectInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateProjectInput to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	if struct["name"] then asserts.AssertNonEmptyString(struct["name"]) end
	if struct["serviceRole"] then asserts.AssertNonEmptyString(struct["serviceRole"]) end
	if struct["tags"] then asserts.AssertTagList(struct["tags"]) end
	if struct["artifacts"] then asserts.AssertProjectArtifacts(struct["artifacts"]) end
	if struct["timeoutInMinutes"] then asserts.AssertTimeOut(struct["timeoutInMinutes"]) end
	if struct["environment"] then asserts.AssertProjectEnvironment(struct["environment"]) end
	if struct["source"] then asserts.AssertProjectSource(struct["source"]) end
	if struct["encryptionKey"] then asserts.AssertNonEmptyString(struct["encryptionKey"]) end
	if struct["description"] then asserts.AssertProjectDescription(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateProjectInput[k], "UpdateProjectInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateProjectInput
--  
-- @param _name [NonEmptyString] <p>The name of the build project.</p> <note> <p>You cannot change a build project's name.</p> </note>
-- @param _serviceRole [NonEmptyString] <p>The replacement ARN of the AWS Identity and Access Management (IAM) role that enables AWS CodeBuild to interact with dependent AWS services on behalf of the AWS account.</p>
-- @param _tags [TagList] <p>The replacement set of tags for this build project.</p> <p>These tags are available for use by AWS services that support AWS CodeBuild build project tags.</p>
-- @param _artifacts [ProjectArtifacts] <p>Information to be changed about the build output artifacts for the build project.</p>
-- @param _timeoutInMinutes [TimeOut] <p>The replacement value in minutes, from 5 to 480 (8 hours), for AWS CodeBuild to wait before timing out any related build that did not get marked as completed.</p>
-- @param _environment [ProjectEnvironment] <p>Information to be changed about the build environment for the build project.</p>
-- @param _source [ProjectSource] <p>Information to be changed about the build input source code for the build project.</p>
-- @param _encryptionKey [NonEmptyString] <p>The replacement AWS Key Management Service (AWS KMS) customer master key (CMK) to be used for encrypting the build output artifacts.</p> <p>You can specify either the CMK's Amazon Resource Name (ARN) or, if available, the CMK's alias (using the format <code>alias/<i>alias-name</i> </code>).</p>
-- @param _description [ProjectDescription] <p>A new or replacement description of the build project.</p>
-- Required parameter: name
function M.UpdateProjectInput(_name, _serviceRole, _tags, _artifacts, _timeoutInMinutes, _environment, _source, _encryptionKey, _description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateProjectInput")
	local t = { 
		["name"] = _name,
		["serviceRole"] = _serviceRole,
		["tags"] = _tags,
		["artifacts"] = _artifacts,
		["timeoutInMinutes"] = _timeoutInMinutes,
		["environment"] = _environment,
		["source"] = _source,
		["encryptionKey"] = _encryptionKey,
		["description"] = _description,
	}
	asserts.AssertUpdateProjectInput(t)
	return t
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
-- @param _buildsNotFound [BuildIds] <p>The IDs of builds for which information could not be found.</p>
-- @param _builds [Builds] <p>Information about the requested builds.</p>
function M.BatchGetBuildsOutput(_buildsNotFound, _builds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchGetBuildsOutput")
	local t = { 
		["buildsNotFound"] = _buildsNotFound,
		["builds"] = _builds,
	}
	asserts.AssertBatchGetBuildsOutput(t)
	return t
end

keys.ProjectArtifacts = { ["packaging"] = true, ["name"] = true, ["namespaceType"] = true, ["location"] = true, ["path"] = true, ["type"] = true, nil }

function asserts.AssertProjectArtifacts(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ProjectArtifacts to be of type 'table'")
	assert(struct["type"], "Expected key type to exist in table")
	if struct["packaging"] then asserts.AssertArtifactPackaging(struct["packaging"]) end
	if struct["name"] then asserts.AssertString(struct["name"]) end
	if struct["namespaceType"] then asserts.AssertArtifactNamespace(struct["namespaceType"]) end
	if struct["location"] then asserts.AssertString(struct["location"]) end
	if struct["path"] then asserts.AssertString(struct["path"]) end
	if struct["type"] then asserts.AssertArtifactsType(struct["type"]) end
	for k,_ in pairs(struct) do
		assert(keys.ProjectArtifacts[k], "ProjectArtifacts contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ProjectArtifacts
-- <p>Information about the build output artifacts for the build project.</p>
-- @param _packaging [ArtifactPackaging] <p>The type of build output artifact to create, as follows:</p> <ul> <li> <p>If <code>type</code> is set to <code>CODEPIPELINE</code>, then AWS CodePipeline will ignore this value if specified. This is because AWS CodePipeline manages its build output artifacts instead of AWS CodeBuild.</p> </li> <li> <p>If <code>type</code> is set to <code>NO_ARTIFACTS</code>, then this value will be ignored if specified, because no build output will be produced.</p> </li> <li> <p>If <code>type</code> is set to <code>S3</code>, valid values include:</p> <ul> <li> <p> <code>NONE</code>: AWS CodeBuild will create in the output bucket a folder containing the build output. This is the default if <code>packaging</code> is not specified.</p> </li> <li> <p> <code>ZIP</code>: AWS CodeBuild will create in the output bucket a ZIP file containing the build output.</p> </li> </ul> </li> </ul>
-- @param _name [String] <p>Along with <code>path</code> and <code>namespaceType</code>, the pattern that AWS CodeBuild will use to name and store the output artifact, as follows:</p> <ul> <li> <p>If <code>type</code> is set to <code>CODEPIPELINE</code>, then AWS CodePipeline will ignore this value if specified. This is because AWS CodePipeline manages its build output names instead of AWS CodeBuild.</p> </li> <li> <p>If <code>type</code> is set to <code>NO_ARTIFACTS</code>, then this value will be ignored if specified, because no build output will be produced.</p> </li> <li> <p>If <code>type</code> is set to <code>S3</code>, this is the name of the output artifact object.</p> </li> </ul> <p>For example, if <code>path</code> is set to <code>MyArtifacts</code>, <code>namespaceType</code> is set to <code>BUILD_ID</code>, and <code>name</code> is set to <code>MyArtifact.zip</code>, then the output artifact would be stored in <code>MyArtifacts/<i>build-ID</i>/MyArtifact.zip</code>.</p>
-- @param _namespaceType [ArtifactNamespace] <p>Along with <code>path</code> and <code>name</code>, the pattern that AWS CodeBuild will use to determine the name and location to store the output artifact, as follows:</p> <ul> <li> <p>If <code>type</code> is set to <code>CODEPIPELINE</code>, then AWS CodePipeline will ignore this value if specified. This is because AWS CodePipeline manages its build output names instead of AWS CodeBuild.</p> </li> <li> <p>If <code>type</code> is set to <code>NO_ARTIFACTS</code>, then this value will be ignored if specified, because no build output will be produced.</p> </li> <li> <p>If <code>type</code> is set to <code>S3</code>, then valid values include:</p> <ul> <li> <p> <code>BUILD_ID</code>: Include the build ID in the location of the build output artifact.</p> </li> <li> <p> <code>NONE</code>: Do not include the build ID. This is the default if <code>namespaceType</code> is not specified.</p> </li> </ul> </li> </ul> <p>For example, if <code>path</code> is set to <code>MyArtifacts</code>, <code>namespaceType</code> is set to <code>BUILD_ID</code>, and <code>name</code> is set to <code>MyArtifact.zip</code>, then the output artifact would be stored in <code>MyArtifacts/<i>build-ID</i>/MyArtifact.zip</code>.</p>
-- @param _location [String] <p>Information about the build output artifact location, as follows:</p> <ul> <li> <p>If <code>type</code> is set to <code>CODEPIPELINE</code>, then AWS CodePipeline will ignore this value if specified. This is because AWS CodePipeline manages its build output locations instead of AWS CodeBuild.</p> </li> <li> <p>If <code>type</code> is set to <code>NO_ARTIFACTS</code>, then this value will be ignored if specified, because no build output will be produced.</p> </li> <li> <p>If <code>type</code> is set to <code>S3</code>, this is the name of the output bucket.</p> </li> </ul>
-- @param _path [String] <p>Along with <code>namespaceType</code> and <code>name</code>, the pattern that AWS CodeBuild will use to name and store the output artifact, as follows:</p> <ul> <li> <p>If <code>type</code> is set to <code>CODEPIPELINE</code>, then AWS CodePipeline will ignore this value if specified. This is because AWS CodePipeline manages its build output names instead of AWS CodeBuild.</p> </li> <li> <p>If <code>type</code> is set to <code>NO_ARTIFACTS</code>, then this value will be ignored if specified, because no build output will be produced.</p> </li> <li> <p>If <code>type</code> is set to <code>S3</code>, this is the path to the output artifact. If <code>path</code> is not specified, then <code>path</code> will not be used.</p> </li> </ul> <p>For example, if <code>path</code> is set to <code>MyArtifacts</code>, <code>namespaceType</code> is set to <code>NONE</code>, and <code>name</code> is set to <code>MyArtifact.zip</code>, then the output artifact would be stored in the output bucket at <code>MyArtifacts/MyArtifact.zip</code>.</p>
-- @param _type [ArtifactsType] <p>The type of build output artifact. Valid values include:</p> <ul> <li> <p> <code>CODEPIPELINE</code>: The build project will have build output generated through AWS CodePipeline.</p> </li> <li> <p> <code>NO_ARTIFACTS</code>: The build project will not produce any build output.</p> </li> <li> <p> <code>S3</code>: The build project will store build output in Amazon Simple Storage Service (Amazon S3).</p> </li> </ul>
-- Required parameter: type
function M.ProjectArtifacts(_packaging, _name, _namespaceType, _location, _path, _type, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ProjectArtifacts")
	local t = { 
		["packaging"] = _packaging,
		["name"] = _name,
		["namespaceType"] = _namespaceType,
		["location"] = _location,
		["path"] = _path,
		["type"] = _type,
	}
	asserts.AssertProjectArtifacts(t)
	return t
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
-- @param _value [ValueInput] <p>The tag's value.</p>
-- @param _key [KeyInput] <p>The tag's key.</p>
function M.Tag(_value, _key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Tag")
	local t = { 
		["value"] = _value,
		["key"] = _key,
	}
	asserts.AssertTag(t)
	return t
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
-- @param _projectName [NonEmptyString] <p>The name of the build project.</p>
-- @param _nextToken [String] <p>During a previous call, if there are more than 100 items in the list, only the first 100 items are returned, along with a unique string called a <i>next token</i>. To get the next batch of items in the list, call this operation again, adding the next token to the call. To get all of the items in the list, keep calling this operation with each subsequent next token that is returned, until no more next tokens are returned.</p>
-- @param _sortOrder [SortOrderType] <p>The order to list build IDs. Valid values include:</p> <ul> <li> <p> <code>ASCENDING</code>: List the build IDs in ascending order by build ID.</p> </li> <li> <p> <code>DESCENDING</code>: List the build IDs in descending order by build ID.</p> </li> </ul>
-- Required parameter: projectName
function M.ListBuildsForProjectInput(_projectName, _nextToken, _sortOrder, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListBuildsForProjectInput")
	local t = { 
		["projectName"] = _projectName,
		["nextToken"] = _nextToken,
		["sortOrder"] = _sortOrder,
	}
	asserts.AssertListBuildsForProjectInput(t)
	return t
end

keys.Project = { ["name"] = true, ["serviceRole"] = true, ["tags"] = true, ["artifacts"] = true, ["lastModified"] = true, ["timeoutInMinutes"] = true, ["created"] = true, ["environment"] = true, ["source"] = true, ["encryptionKey"] = true, ["arn"] = true, ["description"] = true, nil }

function asserts.AssertProject(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Project to be of type 'table'")
	if struct["name"] then asserts.AssertProjectName(struct["name"]) end
	if struct["serviceRole"] then asserts.AssertNonEmptyString(struct["serviceRole"]) end
	if struct["tags"] then asserts.AssertTagList(struct["tags"]) end
	if struct["artifacts"] then asserts.AssertProjectArtifacts(struct["artifacts"]) end
	if struct["lastModified"] then asserts.AssertTimestamp(struct["lastModified"]) end
	if struct["timeoutInMinutes"] then asserts.AssertTimeOut(struct["timeoutInMinutes"]) end
	if struct["created"] then asserts.AssertTimestamp(struct["created"]) end
	if struct["environment"] then asserts.AssertProjectEnvironment(struct["environment"]) end
	if struct["source"] then asserts.AssertProjectSource(struct["source"]) end
	if struct["encryptionKey"] then asserts.AssertNonEmptyString(struct["encryptionKey"]) end
	if struct["arn"] then asserts.AssertString(struct["arn"]) end
	if struct["description"] then asserts.AssertProjectDescription(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(keys.Project[k], "Project contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Project
-- <p>Information about a build project.</p>
-- @param _name [ProjectName] <p>The name of the build project.</p>
-- @param _serviceRole [NonEmptyString] <p>The ARN of the AWS Identity and Access Management (IAM) role that enables AWS CodeBuild to interact with dependent AWS services on behalf of the AWS account.</p>
-- @param _tags [TagList] <p>The tags for this build project.</p> <p>These tags are available for use by AWS services that support AWS CodeBuild build project tags.</p>
-- @param _artifacts [ProjectArtifacts] <p>Information about the build output artifacts for the build project.</p>
-- @param _lastModified [Timestamp] <p>When the build project's settings were last modified, expressed in Unix time format.</p>
-- @param _timeoutInMinutes [TimeOut] <p>How long, in minutes, from 5 to 480 (8 hours), for AWS CodeBuild to wait before timing out any related build that did not get marked as completed. The default is 60 minutes.</p>
-- @param _created [Timestamp] <p>When the build project was created, expressed in Unix time format.</p>
-- @param _environment [ProjectEnvironment] <p>Information about the build environment for this build project.</p>
-- @param _source [ProjectSource] <p>Information about the build input source code for this build project.</p>
-- @param _encryptionKey [NonEmptyString] <p>The AWS Key Management Service (AWS KMS) customer master key (CMK) to be used for encrypting the build output artifacts.</p> <p>This is expressed either as the CMK's Amazon Resource Name (ARN) or, if specified, the CMK's alias (using the format <code>alias/<i>alias-name</i> </code>).</p>
-- @param _arn [String] <p>The Amazon Resource Name (ARN) of the build project.</p>
-- @param _description [ProjectDescription] <p>A description that makes the build project easy to identify.</p>
function M.Project(_name, _serviceRole, _tags, _artifacts, _lastModified, _timeoutInMinutes, _created, _environment, _source, _encryptionKey, _arn, _description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Project")
	local t = { 
		["name"] = _name,
		["serviceRole"] = _serviceRole,
		["tags"] = _tags,
		["artifacts"] = _artifacts,
		["lastModified"] = _lastModified,
		["timeoutInMinutes"] = _timeoutInMinutes,
		["created"] = _created,
		["environment"] = _environment,
		["source"] = _source,
		["encryptionKey"] = _encryptionKey,
		["arn"] = _arn,
		["description"] = _description,
	}
	asserts.AssertProject(t)
	return t
end

keys.EnvironmentImage = { ["name"] = true, ["description"] = true, nil }

function asserts.AssertEnvironmentImage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EnvironmentImage to be of type 'table'")
	if struct["name"] then asserts.AssertString(struct["name"]) end
	if struct["description"] then asserts.AssertString(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(keys.EnvironmentImage[k], "EnvironmentImage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EnvironmentImage
-- <p>Information about a Docker image that is managed by AWS CodeBuild.</p>
-- @param _name [String] <p>The name of the Docker image.</p>
-- @param _description [String] <p>The description of the Docker image.</p>
function M.EnvironmentImage(_name, _description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EnvironmentImage")
	local t = { 
		["name"] = _name,
		["description"] = _description,
	}
	asserts.AssertEnvironmentImage(t)
	return t
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
function M.ListCuratedEnvironmentImagesInput(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListCuratedEnvironmentImagesInput")
	local t = { 
	}
	asserts.AssertListCuratedEnvironmentImagesInput(t)
	return t
end

keys.ResourceAlreadyExistsException = { nil }

function asserts.AssertResourceAlreadyExistsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceAlreadyExistsException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ResourceAlreadyExistsException[k], "ResourceAlreadyExistsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceAlreadyExistsException
-- <p>The specified AWS resource cannot be created, because an AWS resource with the same settings already exists.</p>
function M.ResourceAlreadyExistsException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceAlreadyExistsException")
	local t = { 
	}
	asserts.AssertResourceAlreadyExistsException(t)
	return t
end

keys.CreateProjectInput = { ["name"] = true, ["serviceRole"] = true, ["tags"] = true, ["artifacts"] = true, ["timeoutInMinutes"] = true, ["environment"] = true, ["source"] = true, ["encryptionKey"] = true, ["description"] = true, nil }

function asserts.AssertCreateProjectInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateProjectInput to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["source"], "Expected key source to exist in table")
	assert(struct["artifacts"], "Expected key artifacts to exist in table")
	assert(struct["environment"], "Expected key environment to exist in table")
	if struct["name"] then asserts.AssertProjectName(struct["name"]) end
	if struct["serviceRole"] then asserts.AssertNonEmptyString(struct["serviceRole"]) end
	if struct["tags"] then asserts.AssertTagList(struct["tags"]) end
	if struct["artifacts"] then asserts.AssertProjectArtifacts(struct["artifacts"]) end
	if struct["timeoutInMinutes"] then asserts.AssertTimeOut(struct["timeoutInMinutes"]) end
	if struct["environment"] then asserts.AssertProjectEnvironment(struct["environment"]) end
	if struct["source"] then asserts.AssertProjectSource(struct["source"]) end
	if struct["encryptionKey"] then asserts.AssertNonEmptyString(struct["encryptionKey"]) end
	if struct["description"] then asserts.AssertProjectDescription(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateProjectInput[k], "CreateProjectInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateProjectInput
--  
-- @param _name [ProjectName] <p>The name of the build project.</p>
-- @param _serviceRole [NonEmptyString] <p>The ARN of the AWS Identity and Access Management (IAM) role that enables AWS CodeBuild to interact with dependent AWS services on behalf of the AWS account.</p>
-- @param _tags [TagList] <p>A set of tags for this build project.</p> <p>These tags are available for use by AWS services that support AWS CodeBuild build project tags.</p>
-- @param _artifacts [ProjectArtifacts] <p>Information about the build output artifacts for the build project.</p>
-- @param _timeoutInMinutes [TimeOut] <p>How long, in minutes, from 5 to 480 (8 hours), for AWS CodeBuild to wait until timing out any build that has not been marked as completed. The default is 60 minutes.</p>
-- @param _environment [ProjectEnvironment] <p>Information about the build environment for the build project.</p>
-- @param _source [ProjectSource] <p>Information about the build input source code for the build project.</p>
-- @param _encryptionKey [NonEmptyString] <p>The AWS Key Management Service (AWS KMS) customer master key (CMK) to be used for encrypting the build output artifacts.</p> <p>You can specify either the CMK's Amazon Resource Name (ARN) or, if available, the CMK's alias (using the format <code>alias/<i>alias-name</i> </code>).</p>
-- @param _description [ProjectDescription] <p>A description that makes the build project easy to identify.</p>
-- Required parameter: name
-- Required parameter: source
-- Required parameter: artifacts
-- Required parameter: environment
function M.CreateProjectInput(_name, _serviceRole, _tags, _artifacts, _timeoutInMinutes, _environment, _source, _encryptionKey, _description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateProjectInput")
	local t = { 
		["name"] = _name,
		["serviceRole"] = _serviceRole,
		["tags"] = _tags,
		["artifacts"] = _artifacts,
		["timeoutInMinutes"] = _timeoutInMinutes,
		["environment"] = _environment,
		["source"] = _source,
		["encryptionKey"] = _encryptionKey,
		["description"] = _description,
	}
	asserts.AssertCreateProjectInput(t)
	return t
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
-- @param _nextToken [String] <p>If there are more than 100 items in the list, only the first 100 items are returned, along with a unique string called a <i>next token</i>. To get the next batch of items in the list, call this operation again, adding the next token to the call.</p>
-- @param _ids [BuildIds] <p>A list of build IDs, with each build ID representing a single build.</p>
function M.ListBuildsOutput(_nextToken, _ids, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListBuildsOutput")
	local t = { 
		["nextToken"] = _nextToken,
		["ids"] = _ids,
	}
	asserts.AssertListBuildsOutput(t)
	return t
end

keys.AccountLimitExceededException = { nil }

function asserts.AssertAccountLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AccountLimitExceededException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.AccountLimitExceededException[k], "AccountLimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AccountLimitExceededException
-- <p>An AWS service limit was exceeded for the calling AWS account.</p>
function M.AccountLimitExceededException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating AccountLimitExceededException")
	local t = { 
	}
	asserts.AssertAccountLimitExceededException(t)
	return t
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
-- @param _nextToken [String] <p>If there are more than 100 items in the list, only the first 100 items are returned, along with a unique string called a <i>next token</i>. To get the next batch of items in the list, call this operation again, adding the next token to the call.</p>
-- @param _ids [BuildIds] <p>A list of build IDs for the specified build project, with each build ID representing a single build.</p>
function M.ListBuildsForProjectOutput(_nextToken, _ids, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListBuildsForProjectOutput")
	local t = { 
		["nextToken"] = _nextToken,
		["ids"] = _ids,
	}
	asserts.AssertListBuildsForProjectOutput(t)
	return t
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
-- @param _projectsNotFound [ProjectNames] <p>The names of build projects for which information could not be found.</p>
-- @param _projects [Projects] <p>Information about the requested build projects.</p>
function M.BatchGetProjectsOutput(_projectsNotFound, _projects, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchGetProjectsOutput")
	local t = { 
		["projectsNotFound"] = _projectsNotFound,
		["projects"] = _projects,
	}
	asserts.AssertBatchGetProjectsOutput(t)
	return t
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
-- @param _nextToken [String] <p>If there are more than 100 items in the list, only the first 100 items are returned, along with a unique string called a <i>next token</i>. To get the next batch of items in the list, call this operation again, adding the next token to the call.</p>
-- @param _projects [ProjectNames] <p>The list of build project names, with each build project name representing a single build project.</p>
function M.ListProjectsOutput(_nextToken, _projects, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListProjectsOutput")
	local t = { 
		["nextToken"] = _nextToken,
		["projects"] = _projects,
	}
	asserts.AssertListProjectsOutput(t)
	return t
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
-- <p>Information about the authorization settings for AWS CodeBuild to access the source code to be built.</p> <p>This information is for the AWS CodeBuild console's use only. Your code should not get or set this information directly (unless the build project's source <code>type</code> value is <code>GITHUB</code>).</p>
-- @param _resource [String] <p>The resource value that applies to the specified authorization type.</p>
-- @param _type [SourceAuthType] <p>The authorization type to use. The only valid value is <code>OAUTH</code>, which represents the OAuth authorization type.</p>
-- Required parameter: type
function M.SourceAuth(_resource, _type, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SourceAuth")
	local t = { 
		["resource"] = _resource,
		["type"] = _type,
	}
	asserts.AssertSourceAuth(t)
	return t
end

keys.EnvironmentVariable = { ["name"] = true, ["value"] = true, nil }

function asserts.AssertEnvironmentVariable(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EnvironmentVariable to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["value"], "Expected key value to exist in table")
	if struct["name"] then asserts.AssertNonEmptyString(struct["name"]) end
	if struct["value"] then asserts.AssertString(struct["value"]) end
	for k,_ in pairs(struct) do
		assert(keys.EnvironmentVariable[k], "EnvironmentVariable contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EnvironmentVariable
-- <p>Information about an environment variable for a build project or a build.</p>
-- @param _name [NonEmptyString] <p>The name or key of the environment variable.</p>
-- @param _value [String] <p>The value of the environment variable.</p> <important> <p>We strongly discourage using environment variables to store sensitive values, especially AWS secret key IDs and secret access keys. Environment variables can be displayed in plain text using tools such as the AWS CodeBuild console and the AWS Command Line Interface (AWS CLI).</p> </important>
-- Required parameter: name
-- Required parameter: value
function M.EnvironmentVariable(_name, _value, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EnvironmentVariable")
	local t = { 
		["name"] = _name,
		["value"] = _value,
	}
	asserts.AssertEnvironmentVariable(t)
	return t
end

keys.ResourceNotFoundException = { nil }

function asserts.AssertResourceNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceNotFoundException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ResourceNotFoundException[k], "ResourceNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceNotFoundException
-- <p>The specified AWS resource cannot be found.</p>
function M.ResourceNotFoundException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceNotFoundException")
	local t = { 
	}
	asserts.AssertResourceNotFoundException(t)
	return t
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
-- @param _names [ProjectNames] <p>The names of the build projects.</p>
-- Required parameter: names
function M.BatchGetProjectsInput(_names, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchGetProjectsInput")
	local t = { 
		["names"] = _names,
	}
	asserts.AssertBatchGetProjectsInput(t)
	return t
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
-- @param _build [Build] <p>Information about the build.</p>
function M.StopBuildOutput(_build, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StopBuildOutput")
	local t = { 
		["build"] = _build,
	}
	asserts.AssertStopBuildOutput(t)
	return t
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
-- @param _name [NonEmptyString] <p>The name of the build project.</p>
-- Required parameter: name
function M.DeleteProjectInput(_name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteProjectInput")
	local t = { 
		["name"] = _name,
	}
	asserts.AssertDeleteProjectInput(t)
	return t
end

keys.StartBuildInput = { ["buildspecOverride"] = true, ["environmentVariablesOverride"] = true, ["artifactsOverride"] = true, ["projectName"] = true, ["sourceVersion"] = true, ["timeoutInMinutesOverride"] = true, nil }

function asserts.AssertStartBuildInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartBuildInput to be of type 'table'")
	assert(struct["projectName"], "Expected key projectName to exist in table")
	if struct["buildspecOverride"] then asserts.AssertString(struct["buildspecOverride"]) end
	if struct["environmentVariablesOverride"] then asserts.AssertEnvironmentVariables(struct["environmentVariablesOverride"]) end
	if struct["artifactsOverride"] then asserts.AssertProjectArtifacts(struct["artifactsOverride"]) end
	if struct["projectName"] then asserts.AssertNonEmptyString(struct["projectName"]) end
	if struct["sourceVersion"] then asserts.AssertString(struct["sourceVersion"]) end
	if struct["timeoutInMinutesOverride"] then asserts.AssertTimeOut(struct["timeoutInMinutesOverride"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartBuildInput[k], "StartBuildInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartBuildInput
--  
-- @param _buildspecOverride [String] <p>A build spec declaration that overrides, for this build only, the latest one already defined in the build project.</p>
-- @param _environmentVariablesOverride [EnvironmentVariables] <p>A set of environment variables that overrides, for this build only, the latest ones already defined in the build project.</p>
-- @param _artifactsOverride [ProjectArtifacts] <p>Build output artifact settings that override, for this build only, the latest ones already defined in the build project.</p>
-- @param _projectName [NonEmptyString] <p>The name of the build project to start running a build.</p>
-- @param _sourceVersion [String] <p>A version of the build input to be built, for this build only. If not specified, the latest version will be used. If specified, must be one of:</p> <ul> <li> <p>For AWS CodeCommit or GitHub: the commit ID to use.</p> </li> <li> <p>For Amazon Simple Storage Service (Amazon S3): the version ID of the object representing the build input ZIP file to use.</p> </li> </ul>
-- @param _timeoutInMinutesOverride [TimeOut] <p>The number of build timeout minutes, from 5 to 480 (8 hours), that overrides, for this build only, the latest setting already defined in the build project.</p>
-- Required parameter: projectName
function M.StartBuildInput(_buildspecOverride, _environmentVariablesOverride, _artifactsOverride, _projectName, _sourceVersion, _timeoutInMinutesOverride, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StartBuildInput")
	local t = { 
		["buildspecOverride"] = _buildspecOverride,
		["environmentVariablesOverride"] = _environmentVariablesOverride,
		["artifactsOverride"] = _artifactsOverride,
		["projectName"] = _projectName,
		["sourceVersion"] = _sourceVersion,
		["timeoutInMinutesOverride"] = _timeoutInMinutesOverride,
	}
	asserts.AssertStartBuildInput(t)
	return t
end

keys.InvalidInputException = { nil }

function asserts.AssertInvalidInputException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidInputException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidInputException[k], "InvalidInputException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidInputException
-- <p>The input value that was provided is not valid.</p>
function M.InvalidInputException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidInputException")
	local t = { 
	}
	asserts.AssertInvalidInputException(t)
	return t
end

keys.ProjectEnvironment = { ["computeType"] = true, ["privilegedMode"] = true, ["image"] = true, ["type"] = true, ["environmentVariables"] = true, nil }

function asserts.AssertProjectEnvironment(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ProjectEnvironment to be of type 'table'")
	assert(struct["type"], "Expected key type to exist in table")
	assert(struct["image"], "Expected key image to exist in table")
	assert(struct["computeType"], "Expected key computeType to exist in table")
	if struct["computeType"] then asserts.AssertComputeType(struct["computeType"]) end
	if struct["privilegedMode"] then asserts.AssertWrapperBoolean(struct["privilegedMode"]) end
	if struct["image"] then asserts.AssertNonEmptyString(struct["image"]) end
	if struct["type"] then asserts.AssertEnvironmentType(struct["type"]) end
	if struct["environmentVariables"] then asserts.AssertEnvironmentVariables(struct["environmentVariables"]) end
	for k,_ in pairs(struct) do
		assert(keys.ProjectEnvironment[k], "ProjectEnvironment contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ProjectEnvironment
-- <p>Information about the build environment of the build project.</p>
-- @param _computeType [ComputeType] <p>Information about the compute resources the build project will use. Available values include:</p> <ul> <li> <p> <code>BUILD_GENERAL1_SMALL</code>: Use up to 3 GB memory and 2 vCPUs for builds.</p> </li> <li> <p> <code>BUILD_GENERAL1_MEDIUM</code>: Use up to 7 GB memory and 4 vCPUs for builds.</p> </li> <li> <p> <code>BUILD_GENERAL1_LARGE</code>: Use up to 15 GB memory and 8 vCPUs for builds.</p> </li> </ul>
-- @param _privilegedMode [WrapperBoolean] <p>If set to true, enables running the Docker daemon inside a Docker container; otherwise, false or not specified (the default). This value must be set to true only if this build project will be used to build Docker images, and the specified build environment image is not one provided by AWS CodeBuild with Docker support. Otherwise, all associated builds that attempt to interact with the Docker daemon will fail. Note that you must also start the Docker daemon so that your builds can interact with it as needed. One way to do this is to initialize the Docker daemon in the install phase of your build spec by running the following build commands. (Do not run the following build commands if the specified build environment image is provided by AWS CodeBuild with Docker support.)</p> <p> <code>- nohup /usr/local/bin/dockerd --host=unix:///var/run/docker.sock --host=tcp://0.0.0.0:2375 --storage-driver=vfs&amp; - timeout -t 15 sh -c "until docker info; do echo .; sleep 1; done"</code> </p>
-- @param _image [NonEmptyString] <p>The ID of the Docker image to use for this build project.</p>
-- @param _type [EnvironmentType] <p>The type of build environment to use for related builds.</p>
-- @param _environmentVariables [EnvironmentVariables] <p>A set of environment variables to make available to builds for this build project.</p>
-- Required parameter: type
-- Required parameter: image
-- Required parameter: computeType
function M.ProjectEnvironment(_computeType, _privilegedMode, _image, _type, _environmentVariables, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ProjectEnvironment")
	local t = { 
		["computeType"] = _computeType,
		["privilegedMode"] = _privilegedMode,
		["image"] = _image,
		["type"] = _type,
		["environmentVariables"] = _environmentVariables,
	}
	asserts.AssertProjectEnvironment(t)
	return t
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
-- @param _images [EnvironmentImages] <p>The list of Docker images that are related by the specified programming language.</p>
-- @param _language [LanguageType] <p>The programming language for the Docker images.</p>
function M.EnvironmentLanguage(_images, _language, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EnvironmentLanguage")
	local t = { 
		["images"] = _images,
		["language"] = _language,
	}
	asserts.AssertEnvironmentLanguage(t)
	return t
end

keys.BuildArtifacts = { ["md5sum"] = true, ["location"] = true, ["sha256sum"] = true, nil }

function asserts.AssertBuildArtifacts(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BuildArtifacts to be of type 'table'")
	if struct["md5sum"] then asserts.AssertString(struct["md5sum"]) end
	if struct["location"] then asserts.AssertString(struct["location"]) end
	if struct["sha256sum"] then asserts.AssertString(struct["sha256sum"]) end
	for k,_ in pairs(struct) do
		assert(keys.BuildArtifacts[k], "BuildArtifacts contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BuildArtifacts
-- <p>Information about build output artifacts.</p>
-- @param _md5sum [String] <p>The MD5 hash of the build artifact.</p> <p>You can use this hash along with a checksum tool to confirm both file integrity and authenticity.</p> <note> <p>This value is available only if the build project's <code>packaging</code> value is set to <code>ZIP</code>.</p> </note>
-- @param _location [String] <p>Information about the location of the build artifacts.</p>
-- @param _sha256sum [String] <p>The SHA-256 hash of the build artifact.</p> <p>You can use this hash along with a checksum tool to confirm both file integrity and authenticity.</p> <note> <p>This value is available only if the build project's <code>packaging</code> value is set to <code>ZIP</code>.</p> </note>
function M.BuildArtifacts(_md5sum, _location, _sha256sum, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BuildArtifacts")
	local t = { 
		["md5sum"] = _md5sum,
		["location"] = _location,
		["sha256sum"] = _sha256sum,
	}
	asserts.AssertBuildArtifacts(t)
	return t
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

function asserts.AssertArtifactNamespace(str)
	assert(str)
	assert(type(str) == "string", "Expected ArtifactNamespace to be of type 'string'")
end

--  
function M.ArtifactNamespace(str)
	asserts.AssertArtifactNamespace(str)
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

function asserts.AssertProjectSortByType(str)
	assert(str)
	assert(type(str) == "string", "Expected ProjectSortByType to be of type 'string'")
end

--  
function M.ProjectSortByType(str)
	asserts.AssertProjectSortByType(str)
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

function asserts.AssertLanguageType(str)
	assert(str)
	assert(type(str) == "string", "Expected LanguageType to be of type 'string'")
end

--  
function M.LanguageType(str)
	asserts.AssertLanguageType(str)
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

function asserts.AssertEnvironmentType(str)
	assert(str)
	assert(type(str) == "string", "Expected EnvironmentType to be of type 'string'")
end

--  
function M.EnvironmentType(str)
	asserts.AssertEnvironmentType(str)
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

function asserts.AssertWrapperLong(long)
	assert(long)
	assert(type(long) == "number", "Expected WrapperLong to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.WrapperLong(long)
	asserts.AssertWrapperLong(long)
	return long
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

function asserts.AssertBoolean(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected Boolean to be of type 'boolean'")
end

function M.Boolean(boolean)
	asserts.AssertBoolean(boolean)
	return boolean
end

function asserts.AssertWrapperBoolean(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected WrapperBoolean to be of type 'boolean'")
end

function M.WrapperBoolean(boolean)
	asserts.AssertWrapperBoolean(boolean)
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


local headers = require "aws-sdk.core.headers"
local content_type = require "aws-sdk.core.content_type"
local scheme_mapper = require "aws-sdk.core.scheme_mapper"
local request_handlers = require "aws-sdk.core.request_handlers"

local uri = ""


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
	uri = scheme_mapper.from_string(config.scheme) .. "://"
	uri = uri .. config.endpoint_override or endpoint_for_region(config.region, config.use_dualstack)
end


--
-- OPERATIONS
--
--- Call ListBuilds asynchronously, invoking a callback when done
-- @param ListBuildsInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListBuildsAsync(ListBuildsInput, cb)
	assert(ListBuildsInput, "You must provide a ListBuildsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeBuild_20161006.ListBuilds",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListBuildsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call ListBuilds synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListBuildsInput
-- @return response
-- @return error_message
function M.ListBuildsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListBuildsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call StopBuild asynchronously, invoking a callback when done
-- @param StopBuildInput
-- @param cb Callback function accepting two args: response, error_message
function M.StopBuildAsync(StopBuildInput, cb)
	assert(StopBuildInput, "You must provide a StopBuildInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeBuild_20161006.StopBuild",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", StopBuildInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call StopBuild synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StopBuildInput
-- @return response
-- @return error_message
function M.StopBuildSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StopBuildAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListBuildsForProject asynchronously, invoking a callback when done
-- @param ListBuildsForProjectInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListBuildsForProjectAsync(ListBuildsForProjectInput, cb)
	assert(ListBuildsForProjectInput, "You must provide a ListBuildsForProjectInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeBuild_20161006.ListBuildsForProject",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListBuildsForProjectInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call ListBuildsForProject synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListBuildsForProjectInput
-- @return response
-- @return error_message
function M.ListBuildsForProjectSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListBuildsForProjectAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call BatchGetBuilds asynchronously, invoking a callback when done
-- @param BatchGetBuildsInput
-- @param cb Callback function accepting two args: response, error_message
function M.BatchGetBuildsAsync(BatchGetBuildsInput, cb)
	assert(BatchGetBuildsInput, "You must provide a BatchGetBuildsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeBuild_20161006.BatchGetBuilds",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", BatchGetBuildsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call BatchGetBuilds synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param BatchGetBuildsInput
-- @return response
-- @return error_message
function M.BatchGetBuildsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.BatchGetBuildsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateProject asynchronously, invoking a callback when done
-- @param CreateProjectInput
-- @param cb Callback function accepting two args: response, error_message
function M.CreateProjectAsync(CreateProjectInput, cb)
	assert(CreateProjectInput, "You must provide a CreateProjectInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeBuild_20161006.CreateProject",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateProjectInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call CreateProject synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateProjectInput
-- @return response
-- @return error_message
function M.CreateProjectSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateProjectAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListCuratedEnvironmentImages asynchronously, invoking a callback when done
-- @param ListCuratedEnvironmentImagesInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListCuratedEnvironmentImagesAsync(ListCuratedEnvironmentImagesInput, cb)
	assert(ListCuratedEnvironmentImagesInput, "You must provide a ListCuratedEnvironmentImagesInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeBuild_20161006.ListCuratedEnvironmentImages",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListCuratedEnvironmentImagesInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call ListCuratedEnvironmentImages synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListCuratedEnvironmentImagesInput
-- @return response
-- @return error_message
function M.ListCuratedEnvironmentImagesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListCuratedEnvironmentImagesAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListProjects asynchronously, invoking a callback when done
-- @param ListProjectsInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListProjectsAsync(ListProjectsInput, cb)
	assert(ListProjectsInput, "You must provide a ListProjectsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeBuild_20161006.ListProjects",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListProjectsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call ListProjects synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListProjectsInput
-- @return response
-- @return error_message
function M.ListProjectsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListProjectsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateProject asynchronously, invoking a callback when done
-- @param UpdateProjectInput
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateProjectAsync(UpdateProjectInput, cb)
	assert(UpdateProjectInput, "You must provide a UpdateProjectInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeBuild_20161006.UpdateProject",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateProjectInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateProject synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateProjectInput
-- @return response
-- @return error_message
function M.UpdateProjectSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateProjectAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call StartBuild asynchronously, invoking a callback when done
-- @param StartBuildInput
-- @param cb Callback function accepting two args: response, error_message
function M.StartBuildAsync(StartBuildInput, cb)
	assert(StartBuildInput, "You must provide a StartBuildInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeBuild_20161006.StartBuild",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", StartBuildInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call StartBuild synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StartBuildInput
-- @return response
-- @return error_message
function M.StartBuildSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StartBuildAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteProject asynchronously, invoking a callback when done
-- @param DeleteProjectInput
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteProjectAsync(DeleteProjectInput, cb)
	assert(DeleteProjectInput, "You must provide a DeleteProjectInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeBuild_20161006.DeleteProject",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteProjectInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteProject synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteProjectInput
-- @return response
-- @return error_message
function M.DeleteProjectSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteProjectAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call BatchGetProjects asynchronously, invoking a callback when done
-- @param BatchGetProjectsInput
-- @param cb Callback function accepting two args: response, error_message
function M.BatchGetProjectsAsync(BatchGetProjectsInput, cb)
	assert(BatchGetProjectsInput, "You must provide a BatchGetProjectsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeBuild_20161006.BatchGetProjects",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", BatchGetProjectsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call BatchGetProjects synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param BatchGetProjectsInput
-- @return response
-- @return error_message
function M.BatchGetProjectsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.BatchGetProjectsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end


return M
