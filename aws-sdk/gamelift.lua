--- GENERATED CODE - DO NOT MODIFY
-- Amazon GameLift (gamelift-2015-10-01)

local M = {}

M.metadata = {
	api_version = "2015-10-01",
	json_version = "1.1",
	protocol = "json",
	checksum_format = "",
	endpoint_prefix = "gamelift",
	service_abbreviation = "",
	service_full_name = "Amazon GameLift",
	signature_version = "v4",
	target_prefix = "GameLift",
	timestamp_format = "",
	global_endpoint = "",
	uid = "gamelift-2015-10-01",
}

local keys = {}
local asserts = {}

keys.FleetAttributes = { ["Status"] = true, ["FleetArn"] = true, ["Description"] = true, ["NewGameSessionProtectionPolicy"] = true, ["BuildId"] = true, ["TerminationTime"] = true, ["CreationTime"] = true, ["MetricGroups"] = true, ["ServerLaunchPath"] = true, ["FleetId"] = true, ["ResourceCreationLimitPolicy"] = true, ["LogPaths"] = true, ["OperatingSystem"] = true, ["ServerLaunchParameters"] = true, ["Name"] = true, nil }

function asserts.AssertFleetAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FleetAttributes to be of type 'table'")
	if struct["Status"] then asserts.AssertFleetStatus(struct["Status"]) end
	if struct["FleetArn"] then asserts.AssertArnStringModel(struct["FleetArn"]) end
	if struct["Description"] then asserts.AssertNonZeroAndMaxString(struct["Description"]) end
	if struct["NewGameSessionProtectionPolicy"] then asserts.AssertProtectionPolicy(struct["NewGameSessionProtectionPolicy"]) end
	if struct["BuildId"] then asserts.AssertBuildId(struct["BuildId"]) end
	if struct["TerminationTime"] then asserts.AssertTimestamp(struct["TerminationTime"]) end
	if struct["CreationTime"] then asserts.AssertTimestamp(struct["CreationTime"]) end
	if struct["MetricGroups"] then asserts.AssertMetricGroupList(struct["MetricGroups"]) end
	if struct["ServerLaunchPath"] then asserts.AssertNonZeroAndMaxString(struct["ServerLaunchPath"]) end
	if struct["FleetId"] then asserts.AssertFleetId(struct["FleetId"]) end
	if struct["ResourceCreationLimitPolicy"] then asserts.AssertResourceCreationLimitPolicy(struct["ResourceCreationLimitPolicy"]) end
	if struct["LogPaths"] then asserts.AssertStringList(struct["LogPaths"]) end
	if struct["OperatingSystem"] then asserts.AssertOperatingSystem(struct["OperatingSystem"]) end
	if struct["ServerLaunchParameters"] then asserts.AssertNonZeroAndMaxString(struct["ServerLaunchParameters"]) end
	if struct["Name"] then asserts.AssertNonZeroAndMaxString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.FleetAttributes[k], "FleetAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FleetAttributes
-- <p>General properties describing a fleet.</p>
-- @param _Status [FleetStatus] <p>Current status of the fleet.</p> <p>Possible fleet statuses include the following:</p> <ul> <li> <p> <b>NEW</b> – A new fleet has been defined and desired instances is set to 1. </p> </li> <li> <p> <b>DOWNLOADING/VALIDATING/BUILDING/ACTIVATING</b> – Amazon GameLift is setting up the new fleet, creating new instances with the game build and starting server processes.</p> </li> <li> <p> <b>ACTIVE</b> – Hosts can now accept game sessions.</p> </li> <li> <p> <b>ERROR</b> – An error occurred when downloading, validating, building, or activating the fleet.</p> </li> <li> <p> <b>DELETING</b> – Hosts are responding to a delete fleet request.</p> </li> <li> <p> <b>TERMINATED</b> – The fleet no longer exists.</p> </li> </ul>
-- @param _FleetArn [ArnStringModel] <p>Identifier for a fleet that is unique across all regions.</p>
-- @param _Description [NonZeroAndMaxString] <p>Human-readable description of the fleet.</p>
-- @param _NewGameSessionProtectionPolicy [ProtectionPolicy] <p>Type of game session protection to set for all new instances started in the fleet.</p> <ul> <li> <p> <b>NoProtection</b> – The game session can be terminated during a scale-down event.</p> </li> <li> <p> <b>FullProtection</b> – If the game session is in an <code>ACTIVE</code> status, it cannot be terminated during a scale-down event.</p> </li> </ul>
-- @param _BuildId [BuildId] <p>Unique identifier for a build.</p>
-- @param _TerminationTime [Timestamp] <p>Time stamp indicating when this data object was terminated. Format is a number expressed in Unix time as milliseconds (for example "1469498468.057").</p>
-- @param _CreationTime [Timestamp] <p>Time stamp indicating when this data object was created. Format is a number expressed in Unix time as milliseconds (for example "1469498468.057").</p>
-- @param _MetricGroups [MetricGroupList] <p>Names of metric groups that this fleet is included in. In Amazon CloudWatch, you can view metrics for an individual fleet or aggregated metrics for a fleets that are in a fleet metric group. Currently, a fleet can be included in only one metric group at a time.</p>
-- @param _ServerLaunchPath [NonZeroAndMaxString] <p>Path to a game server executable in the fleet's build, specified for fleets created prior to 2016-08-04 (or AWS SDK v. 0.12.16). Server launch paths for fleets created after this date are specified in the fleet's <a>RuntimeConfiguration</a>.</p>
-- @param _FleetId [FleetId] <p>Unique identifier for a fleet.</p>
-- @param _ResourceCreationLimitPolicy [ResourceCreationLimitPolicy] <p>Fleet policy to limit the number of game sessions an individual player can create over a span of time.</p>
-- @param _LogPaths [StringList] <p>Location of default log files. When a server process is shut down, Amazon GameLift captures and stores any log files in this location. These logs are in addition to game session logs; see more on game session logs in the <a href="http://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-api-server-code">Amazon GameLift Developer Guide</a>. If no default log path for a fleet is specified, Amazon GameLift will automatically upload logs that are stored on each instance at <code>C:\game\logs</code> (for Windows) or <code>/local/game/logs</code> (for Linux). Use the Amazon GameLift console to access stored logs. </p>
-- @param _OperatingSystem [OperatingSystem] <p>Operating system of the fleet's computing resources. A fleet's operating system depends on the OS specified for the build that is deployed on this fleet.</p>
-- @param _ServerLaunchParameters [NonZeroAndMaxString] <p>Game server launch parameters specified for fleets created prior to 2016-08-04 (or AWS SDK v. 0.12.16). Server launch parameters for fleets created after this date are specified in the fleet's <a>RuntimeConfiguration</a>.</p>
-- @param _Name [NonZeroAndMaxString] <p>Descriptive label that is associated with a fleet. Fleet names do not need to be unique.</p>
function M.FleetAttributes(_Status, _FleetArn, _Description, _NewGameSessionProtectionPolicy, _BuildId, _TerminationTime, _CreationTime, _MetricGroups, _ServerLaunchPath, _FleetId, _ResourceCreationLimitPolicy, _LogPaths, _OperatingSystem, _ServerLaunchParameters, _Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating FleetAttributes")
	local t = { 
		["Status"] = _Status,
		["FleetArn"] = _FleetArn,
		["Description"] = _Description,
		["NewGameSessionProtectionPolicy"] = _NewGameSessionProtectionPolicy,
		["BuildId"] = _BuildId,
		["TerminationTime"] = _TerminationTime,
		["CreationTime"] = _CreationTime,
		["MetricGroups"] = _MetricGroups,
		["ServerLaunchPath"] = _ServerLaunchPath,
		["FleetId"] = _FleetId,
		["ResourceCreationLimitPolicy"] = _ResourceCreationLimitPolicy,
		["LogPaths"] = _LogPaths,
		["OperatingSystem"] = _OperatingSystem,
		["ServerLaunchParameters"] = _ServerLaunchParameters,
		["Name"] = _Name,
	}
	asserts.AssertFleetAttributes(t)
	return t
end

keys.DescribeFleetUtilizationInput = { ["FleetIds"] = true, ["NextToken"] = true, ["Limit"] = true, nil }

function asserts.AssertDescribeFleetUtilizationInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeFleetUtilizationInput to be of type 'table'")
	if struct["FleetIds"] then asserts.AssertFleetIdList(struct["FleetIds"]) end
	if struct["NextToken"] then asserts.AssertNonZeroAndMaxString(struct["NextToken"]) end
	if struct["Limit"] then asserts.AssertPositiveInteger(struct["Limit"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeFleetUtilizationInput[k], "DescribeFleetUtilizationInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeFleetUtilizationInput
-- <p>Represents the input for a request action.</p>
-- @param _FleetIds [FleetIdList] <p>Unique identifier for a fleet(s) to retrieve utilization data for. To request utilization data for all fleets, leave this parameter empty.</p>
-- @param _NextToken [NonZeroAndMaxString] <p>Token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this action. To specify the start of the result set, do not specify a value. This parameter is ignored when the request specifies one or a list of fleet IDs.</p>
-- @param _Limit [PositiveInteger] <p>Maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages. This parameter is ignored when the request specifies one or a list of fleet IDs.</p>
function M.DescribeFleetUtilizationInput(_FleetIds, _NextToken, _Limit, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeFleetUtilizationInput")
	local t = { 
		["FleetIds"] = _FleetIds,
		["NextToken"] = _NextToken,
		["Limit"] = _Limit,
	}
	asserts.AssertDescribeFleetUtilizationInput(t)
	return t
end

keys.DescribeFleetCapacityInput = { ["FleetIds"] = true, ["NextToken"] = true, ["Limit"] = true, nil }

function asserts.AssertDescribeFleetCapacityInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeFleetCapacityInput to be of type 'table'")
	if struct["FleetIds"] then asserts.AssertFleetIdList(struct["FleetIds"]) end
	if struct["NextToken"] then asserts.AssertNonZeroAndMaxString(struct["NextToken"]) end
	if struct["Limit"] then asserts.AssertPositiveInteger(struct["Limit"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeFleetCapacityInput[k], "DescribeFleetCapacityInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeFleetCapacityInput
-- <p>Represents the input for a request action.</p>
-- @param _FleetIds [FleetIdList] <p>Unique identifier for a fleet(s) to retrieve capacity information for. To request capacity information for all fleets, leave this parameter empty.</p>
-- @param _NextToken [NonZeroAndMaxString] <p>Token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this action. To specify the start of the result set, do not specify a value. This parameter is ignored when the request specifies one or a list of fleet IDs.</p>
-- @param _Limit [PositiveInteger] <p>Maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages. This parameter is ignored when the request specifies one or a list of fleet IDs.</p>
function M.DescribeFleetCapacityInput(_FleetIds, _NextToken, _Limit, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeFleetCapacityInput")
	local t = { 
		["FleetIds"] = _FleetIds,
		["NextToken"] = _NextToken,
		["Limit"] = _Limit,
	}
	asserts.AssertDescribeFleetCapacityInput(t)
	return t
end

keys.ListBuildsOutput = { ["NextToken"] = true, ["Builds"] = true, nil }

function asserts.AssertListBuildsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListBuildsOutput to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNonEmptyString(struct["NextToken"]) end
	if struct["Builds"] then asserts.AssertBuildList(struct["Builds"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListBuildsOutput[k], "ListBuildsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListBuildsOutput
-- <p>Represents the returned data in response to a request action.</p>
-- @param _NextToken [NonEmptyString] <p>Token that indicates where to resume retrieving results on the next call to this action. If no token is returned, these results represent the end of the list.</p>
-- @param _Builds [BuildList] <p>Collection of build records that match the request.</p>
function M.ListBuildsOutput(_NextToken, _Builds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListBuildsOutput")
	local t = { 
		["NextToken"] = _NextToken,
		["Builds"] = _Builds,
	}
	asserts.AssertListBuildsOutput(t)
	return t
end

keys.EC2InstanceLimit = { ["EC2InstanceType"] = true, ["CurrentInstances"] = true, ["InstanceLimit"] = true, nil }

function asserts.AssertEC2InstanceLimit(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EC2InstanceLimit to be of type 'table'")
	if struct["EC2InstanceType"] then asserts.AssertEC2InstanceType(struct["EC2InstanceType"]) end
	if struct["CurrentInstances"] then asserts.AssertWholeNumber(struct["CurrentInstances"]) end
	if struct["InstanceLimit"] then asserts.AssertWholeNumber(struct["InstanceLimit"]) end
	for k,_ in pairs(struct) do
		assert(keys.EC2InstanceLimit[k], "EC2InstanceLimit contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EC2InstanceLimit
-- <p>Maximum number of instances allowed based on the Amazon Elastic Compute Cloud (Amazon EC2) instance type. Instance limits can be retrieved by calling <a>DescribeEC2InstanceLimits</a>.</p>
-- @param _EC2InstanceType [EC2InstanceType] <p>Name of an EC2 instance type that is supported in Amazon GameLift. A fleet instance type determines the computing resources of each instance in the fleet, including CPU, memory, storage, and networking capacity. Amazon GameLift supports the following EC2 instance types. See <a href="http://aws.amazon.com/ec2/instance-types/">Amazon EC2 Instance Types</a> for detailed descriptions.</p>
-- @param _CurrentInstances [WholeNumber] <p>Number of instances of the specified type that are currently in use by this AWS account.</p>
-- @param _InstanceLimit [WholeNumber] <p>Number of instances allowed.</p>
function M.EC2InstanceLimit(_EC2InstanceType, _CurrentInstances, _InstanceLimit, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EC2InstanceLimit")
	local t = { 
		["EC2InstanceType"] = _EC2InstanceType,
		["CurrentInstances"] = _CurrentInstances,
		["InstanceLimit"] = _InstanceLimit,
	}
	asserts.AssertEC2InstanceLimit(t)
	return t
end

keys.DescribeScalingPoliciesInput = { ["StatusFilter"] = true, ["Limit"] = true, ["NextToken"] = true, ["FleetId"] = true, nil }

function asserts.AssertDescribeScalingPoliciesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeScalingPoliciesInput to be of type 'table'")
	assert(struct["FleetId"], "Expected key FleetId to exist in table")
	if struct["StatusFilter"] then asserts.AssertScalingStatusType(struct["StatusFilter"]) end
	if struct["Limit"] then asserts.AssertPositiveInteger(struct["Limit"]) end
	if struct["NextToken"] then asserts.AssertNonZeroAndMaxString(struct["NextToken"]) end
	if struct["FleetId"] then asserts.AssertFleetId(struct["FleetId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeScalingPoliciesInput[k], "DescribeScalingPoliciesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeScalingPoliciesInput
-- <p>Represents the input for a request action.</p>
-- @param _StatusFilter [ScalingStatusType] <p>Scaling policy status to filter results on. A scaling policy is only in force when in an <code>ACTIVE</code> status.</p> <ul> <li> <p> <b>ACTIVE</b> – The scaling policy is currently in force.</p> </li> <li> <p> <b>UPDATEREQUESTED</b> – A request to update the scaling policy has been received.</p> </li> <li> <p> <b>UPDATING</b> – A change is being made to the scaling policy.</p> </li> <li> <p> <b>DELETEREQUESTED</b> – A request to delete the scaling policy has been received.</p> </li> <li> <p> <b>DELETING</b> – The scaling policy is being deleted.</p> </li> <li> <p> <b>DELETED</b> – The scaling policy has been deleted.</p> </li> <li> <p> <b>ERROR</b> – An error occurred in creating the policy. It should be removed and recreated.</p> </li> </ul>
-- @param _Limit [PositiveInteger] <p>Maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
-- @param _NextToken [NonZeroAndMaxString] <p>Token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this action. To specify the start of the result set, do not specify a value.</p>
-- @param _FleetId [FleetId] <p>Unique identifier for a fleet to retrieve scaling policies for.</p>
-- Required parameter: FleetId
function M.DescribeScalingPoliciesInput(_StatusFilter, _Limit, _NextToken, _FleetId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeScalingPoliciesInput")
	local t = { 
		["StatusFilter"] = _StatusFilter,
		["Limit"] = _Limit,
		["NextToken"] = _NextToken,
		["FleetId"] = _FleetId,
	}
	asserts.AssertDescribeScalingPoliciesInput(t)
	return t
end

keys.UpdateFleetCapacityOutput = { ["FleetId"] = true, nil }

function asserts.AssertUpdateFleetCapacityOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateFleetCapacityOutput to be of type 'table'")
	if struct["FleetId"] then asserts.AssertFleetId(struct["FleetId"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateFleetCapacityOutput[k], "UpdateFleetCapacityOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateFleetCapacityOutput
-- <p>Represents the returned data in response to a request action.</p>
-- @param _FleetId [FleetId] <p>Unique identifier for a fleet that was updated.</p>
function M.UpdateFleetCapacityOutput(_FleetId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateFleetCapacityOutput")
	local t = { 
		["FleetId"] = _FleetId,
	}
	asserts.AssertUpdateFleetCapacityOutput(t)
	return t
end

keys.FleetCapacityExceededException = { ["Message"] = true, nil }

function asserts.AssertFleetCapacityExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FleetCapacityExceededException to be of type 'table'")
	if struct["Message"] then asserts.AssertNonEmptyString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.FleetCapacityExceededException[k], "FleetCapacityExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FleetCapacityExceededException
-- <p>The specified fleet has no available instances to fulfill a <code>CreateGameSession</code> request. Clients can retry such requests immediately or after a waiting period.</p>
-- @param _Message [NonEmptyString] 
function M.FleetCapacityExceededException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating FleetCapacityExceededException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertFleetCapacityExceededException(t)
	return t
end

keys.UpdateBuildOutput = { ["Build"] = true, nil }

function asserts.AssertUpdateBuildOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateBuildOutput to be of type 'table'")
	if struct["Build"] then asserts.AssertBuild(struct["Build"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateBuildOutput[k], "UpdateBuildOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateBuildOutput
-- <p>Represents the returned data in response to a request action.</p>
-- @param _Build [Build] <p>Object that contains the updated build record.</p>
function M.UpdateBuildOutput(_Build, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateBuildOutput")
	local t = { 
		["Build"] = _Build,
	}
	asserts.AssertUpdateBuildOutput(t)
	return t
end

keys.StartGameSessionPlacementOutput = { ["GameSessionPlacement"] = true, nil }

function asserts.AssertStartGameSessionPlacementOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartGameSessionPlacementOutput to be of type 'table'")
	if struct["GameSessionPlacement"] then asserts.AssertGameSessionPlacement(struct["GameSessionPlacement"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartGameSessionPlacementOutput[k], "StartGameSessionPlacementOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartGameSessionPlacementOutput
-- <p>Represents the returned data in response to a request action.</p>
-- @param _GameSessionPlacement [GameSessionPlacement] <p>Object that describes the newly created game session placement. This object includes all the information provided in the request, as well as start/end time stamps and placement status. </p>
function M.StartGameSessionPlacementOutput(_GameSessionPlacement, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StartGameSessionPlacementOutput")
	local t = { 
		["GameSessionPlacement"] = _GameSessionPlacement,
	}
	asserts.AssertStartGameSessionPlacementOutput(t)
	return t
end

keys.ListBuildsInput = { ["Status"] = true, ["NextToken"] = true, ["Limit"] = true, nil }

function asserts.AssertListBuildsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListBuildsInput to be of type 'table'")
	if struct["Status"] then asserts.AssertBuildStatus(struct["Status"]) end
	if struct["NextToken"] then asserts.AssertNonEmptyString(struct["NextToken"]) end
	if struct["Limit"] then asserts.AssertPositiveInteger(struct["Limit"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListBuildsInput[k], "ListBuildsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListBuildsInput
-- <p>Represents the input for a request action.</p>
-- @param _Status [BuildStatus] <p>Build status to filter results by. To retrieve all builds, leave this parameter empty.</p> <p>Possible build statuses include the following:</p> <ul> <li> <p> <b>INITIALIZED</b> – A new build has been defined, but no files have been uploaded. You cannot create fleets for builds that are in this status. When a build is successfully created, the build status is set to this value. </p> </li> <li> <p> <b>READY</b> – The game build has been successfully uploaded. You can now create new fleets for this build.</p> </li> <li> <p> <b>FAILED</b> – The game build upload failed. You cannot create new fleets for this build. </p> </li> </ul>
-- @param _NextToken [NonEmptyString] <p>Token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this action. To specify the start of the result set, do not specify a value.</p>
-- @param _Limit [PositiveInteger] <p>Maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
function M.ListBuildsInput(_Status, _NextToken, _Limit, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListBuildsInput")
	local t = { 
		["Status"] = _Status,
		["NextToken"] = _NextToken,
		["Limit"] = _Limit,
	}
	asserts.AssertListBuildsInput(t)
	return t
end

keys.UpdateRuntimeConfigurationOutput = { ["RuntimeConfiguration"] = true, nil }

function asserts.AssertUpdateRuntimeConfigurationOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateRuntimeConfigurationOutput to be of type 'table'")
	if struct["RuntimeConfiguration"] then asserts.AssertRuntimeConfiguration(struct["RuntimeConfiguration"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateRuntimeConfigurationOutput[k], "UpdateRuntimeConfigurationOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateRuntimeConfigurationOutput
-- <p>Represents the returned data in response to a request action.</p>
-- @param _RuntimeConfiguration [RuntimeConfiguration] <p>The runtime configuration currently in force. If the update was successful, this object matches the one in the request.</p>
function M.UpdateRuntimeConfigurationOutput(_RuntimeConfiguration, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateRuntimeConfigurationOutput")
	local t = { 
		["RuntimeConfiguration"] = _RuntimeConfiguration,
	}
	asserts.AssertUpdateRuntimeConfigurationOutput(t)
	return t
end

keys.DeleteGameSessionQueueInput = { ["Name"] = true, nil }

function asserts.AssertDeleteGameSessionQueueInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteGameSessionQueueInput to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Name"] then asserts.AssertGameSessionQueueName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteGameSessionQueueInput[k], "DeleteGameSessionQueueInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteGameSessionQueueInput
-- <p>Represents the input for a request action.</p>
-- @param _Name [GameSessionQueueName] <p>Descriptive label that is associated with queue. Queue names must be unique within each region.</p>
-- Required parameter: Name
function M.DeleteGameSessionQueueInput(_Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteGameSessionQueueInput")
	local t = { 
		["Name"] = _Name,
	}
	asserts.AssertDeleteGameSessionQueueInput(t)
	return t
end

keys.CreateBuildInput = { ["StorageLocation"] = true, ["Version"] = true, ["Name"] = true, ["OperatingSystem"] = true, nil }

function asserts.AssertCreateBuildInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateBuildInput to be of type 'table'")
	if struct["StorageLocation"] then asserts.AssertS3Location(struct["StorageLocation"]) end
	if struct["Version"] then asserts.AssertNonZeroAndMaxString(struct["Version"]) end
	if struct["Name"] then asserts.AssertNonZeroAndMaxString(struct["Name"]) end
	if struct["OperatingSystem"] then asserts.AssertOperatingSystem(struct["OperatingSystem"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateBuildInput[k], "CreateBuildInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateBuildInput
-- <p>Represents the input for a request action.</p>
-- @param _StorageLocation [S3Location] <p>Amazon S3 location of the game build files to be uploaded. The S3 bucket must be owned by the same AWS account that you're using to manage Amazon GameLift. It also must in the same region that you want to create a new build in. Before calling <code>CreateBuild</code> with this location, you must allow Amazon GameLift to access your Amazon S3 bucket (see <a href="http://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-build-cli-uploading.html#gamelift-build-cli-uploading-create-build">Create a Build with Files in Amazon S3</a>).</p>
-- @param _Version [NonZeroAndMaxString] <p>Version that is associated with this build. Version strings do not need to be unique. You can use <a>UpdateBuild</a> to change this value later. </p>
-- @param _Name [NonZeroAndMaxString] <p>Descriptive label that is associated with a build. Build names do not need to be unique. You can use <a>UpdateBuild</a> to change this value later. </p>
-- @param _OperatingSystem [OperatingSystem] <p>Operating system that the game server binaries are built to run on. This value determines the type of fleet resources that you can use for this build. If your game build contains multiple executables, they all must run on the same operating system.</p>
function M.CreateBuildInput(_StorageLocation, _Version, _Name, _OperatingSystem, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateBuildInput")
	local t = { 
		["StorageLocation"] = _StorageLocation,
		["Version"] = _Version,
		["Name"] = _Name,
		["OperatingSystem"] = _OperatingSystem,
	}
	asserts.AssertCreateBuildInput(t)
	return t
end

keys.SearchGameSessionsOutput = { ["GameSessions"] = true, ["NextToken"] = true, nil }

function asserts.AssertSearchGameSessionsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SearchGameSessionsOutput to be of type 'table'")
	if struct["GameSessions"] then asserts.AssertGameSessionList(struct["GameSessions"]) end
	if struct["NextToken"] then asserts.AssertNonZeroAndMaxString(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.SearchGameSessionsOutput[k], "SearchGameSessionsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SearchGameSessionsOutput
-- <p>Represents the returned data in response to a request action.</p>
-- @param _GameSessions [GameSessionList] <p>Collection of objects containing game session properties for each session matching the request.</p>
-- @param _NextToken [NonZeroAndMaxString] <p>Token that indicates where to resume retrieving results on the next call to this action. If no token is returned, these results represent the end of the list.</p>
function M.SearchGameSessionsOutput(_GameSessions, _NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SearchGameSessionsOutput")
	local t = { 
		["GameSessions"] = _GameSessions,
		["NextToken"] = _NextToken,
	}
	asserts.AssertSearchGameSessionsOutput(t)
	return t
end

keys.AwsCredentials = { ["SecretAccessKey"] = true, ["SessionToken"] = true, ["AccessKeyId"] = true, nil }

function asserts.AssertAwsCredentials(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AwsCredentials to be of type 'table'")
	if struct["SecretAccessKey"] then asserts.AssertNonEmptyString(struct["SecretAccessKey"]) end
	if struct["SessionToken"] then asserts.AssertNonEmptyString(struct["SessionToken"]) end
	if struct["AccessKeyId"] then asserts.AssertNonEmptyString(struct["AccessKeyId"]) end
	for k,_ in pairs(struct) do
		assert(keys.AwsCredentials[k], "AwsCredentials contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AwsCredentials
-- <p>AWS access credentials sometimes used for uploading game build files to Amazon GameLift. They are valid for a limited time. If they expire before you upload your game build, get a new set by calling <a>RequestUploadCredentials</a>.</p>
-- @param _SecretAccessKey [NonEmptyString] <p>Secret key for an AWS account.</p>
-- @param _SessionToken [NonEmptyString] <p>Token specific to a build ID.</p>
-- @param _AccessKeyId [NonEmptyString] <p>Access key for an AWS account.</p>
function M.AwsCredentials(_SecretAccessKey, _SessionToken, _AccessKeyId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AwsCredentials")
	local t = { 
		["SecretAccessKey"] = _SecretAccessKey,
		["SessionToken"] = _SessionToken,
		["AccessKeyId"] = _AccessKeyId,
	}
	asserts.AssertAwsCredentials(t)
	return t
end

keys.DescribeEC2InstanceLimitsInput = { ["EC2InstanceType"] = true, nil }

function asserts.AssertDescribeEC2InstanceLimitsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEC2InstanceLimitsInput to be of type 'table'")
	if struct["EC2InstanceType"] then asserts.AssertEC2InstanceType(struct["EC2InstanceType"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeEC2InstanceLimitsInput[k], "DescribeEC2InstanceLimitsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEC2InstanceLimitsInput
-- <p>Represents the input for a request action.</p>
-- @param _EC2InstanceType [EC2InstanceType] <p>Name of an EC2 instance type that is supported in Amazon GameLift. A fleet instance type determines the computing resources of each instance in the fleet, including CPU, memory, storage, and networking capacity. Amazon GameLift supports the following EC2 instance types. See <a href="http://aws.amazon.com/ec2/instance-types/">Amazon EC2 Instance Types</a> for detailed descriptions. Leave this parameter blank to retrieve limits for all types.</p>
function M.DescribeEC2InstanceLimitsInput(_EC2InstanceType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeEC2InstanceLimitsInput")
	local t = { 
		["EC2InstanceType"] = _EC2InstanceType,
	}
	asserts.AssertDescribeEC2InstanceLimitsInput(t)
	return t
end

keys.CreateBuildOutput = { ["StorageLocation"] = true, ["Build"] = true, ["UploadCredentials"] = true, nil }

function asserts.AssertCreateBuildOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateBuildOutput to be of type 'table'")
	if struct["StorageLocation"] then asserts.AssertS3Location(struct["StorageLocation"]) end
	if struct["Build"] then asserts.AssertBuild(struct["Build"]) end
	if struct["UploadCredentials"] then asserts.AssertAwsCredentials(struct["UploadCredentials"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateBuildOutput[k], "CreateBuildOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateBuildOutput
-- <p>Represents the returned data in response to a request action.</p>
-- @param _StorageLocation [S3Location] <p>Amazon S3 location specified in the request.</p>
-- @param _Build [Build] <p>The newly created build record, including a unique build ID and status. </p>
-- @param _UploadCredentials [AwsCredentials] <p>This element is not currently in use.</p>
function M.CreateBuildOutput(_StorageLocation, _Build, _UploadCredentials, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateBuildOutput")
	local t = { 
		["StorageLocation"] = _StorageLocation,
		["Build"] = _Build,
		["UploadCredentials"] = _UploadCredentials,
	}
	asserts.AssertCreateBuildOutput(t)
	return t
end

keys.RequestUploadCredentialsOutput = { ["StorageLocation"] = true, ["UploadCredentials"] = true, nil }

function asserts.AssertRequestUploadCredentialsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RequestUploadCredentialsOutput to be of type 'table'")
	if struct["StorageLocation"] then asserts.AssertS3Location(struct["StorageLocation"]) end
	if struct["UploadCredentials"] then asserts.AssertAwsCredentials(struct["UploadCredentials"]) end
	for k,_ in pairs(struct) do
		assert(keys.RequestUploadCredentialsOutput[k], "RequestUploadCredentialsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RequestUploadCredentialsOutput
-- <p>Represents the returned data in response to a request action.</p>
-- @param _StorageLocation [S3Location] <p>Amazon S3 path and key, identifying where the game build files are stored.</p>
-- @param _UploadCredentials [AwsCredentials] <p>AWS credentials required when uploading a game build to the storage location. These credentials have a limited lifespan and are valid only for the build they were issued for.</p>
function M.RequestUploadCredentialsOutput(_StorageLocation, _UploadCredentials, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RequestUploadCredentialsOutput")
	local t = { 
		["StorageLocation"] = _StorageLocation,
		["UploadCredentials"] = _UploadCredentials,
	}
	asserts.AssertRequestUploadCredentialsOutput(t)
	return t
end

keys.ListFleetsInput = { ["BuildId"] = true, ["NextToken"] = true, ["Limit"] = true, nil }

function asserts.AssertListFleetsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListFleetsInput to be of type 'table'")
	if struct["BuildId"] then asserts.AssertBuildId(struct["BuildId"]) end
	if struct["NextToken"] then asserts.AssertNonZeroAndMaxString(struct["NextToken"]) end
	if struct["Limit"] then asserts.AssertPositiveInteger(struct["Limit"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListFleetsInput[k], "ListFleetsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListFleetsInput
-- <p>Represents the input for a request action.</p>
-- @param _BuildId [BuildId] <p>Unique identifier for a build to return fleets for. Use this parameter to return only fleets using the specified build. To retrieve all fleets, leave this parameter empty.</p>
-- @param _NextToken [NonZeroAndMaxString] <p>Token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this action. To specify the start of the result set, do not specify a value.</p>
-- @param _Limit [PositiveInteger] <p>Maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
function M.ListFleetsInput(_BuildId, _NextToken, _Limit, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListFleetsInput")
	local t = { 
		["BuildId"] = _BuildId,
		["NextToken"] = _NextToken,
		["Limit"] = _Limit,
	}
	asserts.AssertListFleetsInput(t)
	return t
end

keys.DescribeGameSessionQueuesOutput = { ["GameSessionQueues"] = true, ["NextToken"] = true, nil }

function asserts.AssertDescribeGameSessionQueuesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeGameSessionQueuesOutput to be of type 'table'")
	if struct["GameSessionQueues"] then asserts.AssertGameSessionQueueList(struct["GameSessionQueues"]) end
	if struct["NextToken"] then asserts.AssertNonZeroAndMaxString(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeGameSessionQueuesOutput[k], "DescribeGameSessionQueuesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeGameSessionQueuesOutput
-- <p>Represents the returned data in response to a request action.</p>
-- @param _GameSessionQueues [GameSessionQueueList] <p>Collection of objects that describes the requested game session queues.</p>
-- @param _NextToken [NonZeroAndMaxString] <p>Token that indicates where to resume retrieving results on the next call to this action. If no token is returned, these results represent the end of the list.</p>
function M.DescribeGameSessionQueuesOutput(_GameSessionQueues, _NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeGameSessionQueuesOutput")
	local t = { 
		["GameSessionQueues"] = _GameSessionQueues,
		["NextToken"] = _NextToken,
	}
	asserts.AssertDescribeGameSessionQueuesOutput(t)
	return t
end

keys.IdempotentParameterMismatchException = { ["Message"] = true, nil }

function asserts.AssertIdempotentParameterMismatchException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IdempotentParameterMismatchException to be of type 'table'")
	if struct["Message"] then asserts.AssertNonEmptyString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.IdempotentParameterMismatchException[k], "IdempotentParameterMismatchException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IdempotentParameterMismatchException
-- <p>A game session with this custom ID string already exists in this fleet. Resolve this conflict before retrying this request.</p>
-- @param _Message [NonEmptyString] 
function M.IdempotentParameterMismatchException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating IdempotentParameterMismatchException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertIdempotentParameterMismatchException(t)
	return t
end

keys.DescribeGameSessionsInput = { ["Limit"] = true, ["GameSessionId"] = true, ["StatusFilter"] = true, ["FleetId"] = true, ["NextToken"] = true, ["AliasId"] = true, nil }

function asserts.AssertDescribeGameSessionsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeGameSessionsInput to be of type 'table'")
	if struct["Limit"] then asserts.AssertPositiveInteger(struct["Limit"]) end
	if struct["GameSessionId"] then asserts.AssertArnStringModel(struct["GameSessionId"]) end
	if struct["StatusFilter"] then asserts.AssertNonZeroAndMaxString(struct["StatusFilter"]) end
	if struct["FleetId"] then asserts.AssertFleetId(struct["FleetId"]) end
	if struct["NextToken"] then asserts.AssertNonZeroAndMaxString(struct["NextToken"]) end
	if struct["AliasId"] then asserts.AssertAliasId(struct["AliasId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeGameSessionsInput[k], "DescribeGameSessionsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeGameSessionsInput
-- <p>Represents the input for a request action.</p>
-- @param _Limit [PositiveInteger] <p>Maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
-- @param _GameSessionId [ArnStringModel] <p>Unique identifier for the game session to retrieve. You can use either a <code>GameSessionId</code> or <code>GameSessionArn</code> value. </p>
-- @param _StatusFilter [NonZeroAndMaxString] <p>Game session status to filter results on. Possible game session statuses include <code>ACTIVE</code>, <code>TERMINATED</code>, <code>ACTIVATING</code>, and <code>TERMINATING</code> (the last two are transitory). </p>
-- @param _FleetId [FleetId] <p>Unique identifier for a fleet to retrieve all game sessions for.</p>
-- @param _NextToken [NonZeroAndMaxString] <p>Token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this action. To specify the start of the result set, do not specify a value.</p>
-- @param _AliasId [AliasId] <p>Unique identifier for an alias associated with the fleet to retrieve all game sessions for. </p>
function M.DescribeGameSessionsInput(_Limit, _GameSessionId, _StatusFilter, _FleetId, _NextToken, _AliasId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeGameSessionsInput")
	local t = { 
		["Limit"] = _Limit,
		["GameSessionId"] = _GameSessionId,
		["StatusFilter"] = _StatusFilter,
		["FleetId"] = _FleetId,
		["NextToken"] = _NextToken,
		["AliasId"] = _AliasId,
	}
	asserts.AssertDescribeGameSessionsInput(t)
	return t
end

keys.IpPermission = { ["ToPort"] = true, ["FromPort"] = true, ["Protocol"] = true, ["IpRange"] = true, nil }

function asserts.AssertIpPermission(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IpPermission to be of type 'table'")
	assert(struct["FromPort"], "Expected key FromPort to exist in table")
	assert(struct["ToPort"], "Expected key ToPort to exist in table")
	assert(struct["IpRange"], "Expected key IpRange to exist in table")
	assert(struct["Protocol"], "Expected key Protocol to exist in table")
	if struct["ToPort"] then asserts.AssertPortNumber(struct["ToPort"]) end
	if struct["FromPort"] then asserts.AssertPortNumber(struct["FromPort"]) end
	if struct["Protocol"] then asserts.AssertIpProtocol(struct["Protocol"]) end
	if struct["IpRange"] then asserts.AssertNonBlankString(struct["IpRange"]) end
	for k,_ in pairs(struct) do
		assert(keys.IpPermission[k], "IpPermission contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IpPermission
-- <p>A range of IP addresses and port settings that allow inbound traffic to connect to server processes on Amazon GameLift. Each game session hosted on a fleet is assigned a unique combination of IP address and port number, which must fall into the fleet's allowed ranges. This combination is included in the <a>GameSession</a> object. </p>
-- @param _ToPort [PortNumber] <p>Ending value for a range of allowed port numbers. Port numbers are end-inclusive. This value must be higher than <code>FromPort</code>.</p>
-- @param _FromPort [PortNumber] <p>Starting value for a range of allowed port numbers.</p>
-- @param _Protocol [IpProtocol] <p>Network communication protocol used by the fleet.</p>
-- @param _IpRange [NonBlankString] <p>Range of allowed IP addresses. This value must be expressed in CIDR notation. Example: "<code>000.000.000.000/[subnet mask]</code>" or optionally the shortened version "<code>0.0.0.0/[subnet mask]</code>".</p>
-- Required parameter: FromPort
-- Required parameter: ToPort
-- Required parameter: IpRange
-- Required parameter: Protocol
function M.IpPermission(_ToPort, _FromPort, _Protocol, _IpRange, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating IpPermission")
	local t = { 
		["ToPort"] = _ToPort,
		["FromPort"] = _FromPort,
		["Protocol"] = _Protocol,
		["IpRange"] = _IpRange,
	}
	asserts.AssertIpPermission(t)
	return t
end

keys.Instance = { ["Status"] = true, ["InstanceId"] = true, ["Type"] = true, ["CreationTime"] = true, ["FleetId"] = true, ["IpAddress"] = true, ["OperatingSystem"] = true, nil }

function asserts.AssertInstance(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Instance to be of type 'table'")
	if struct["Status"] then asserts.AssertInstanceStatus(struct["Status"]) end
	if struct["InstanceId"] then asserts.AssertInstanceId(struct["InstanceId"]) end
	if struct["Type"] then asserts.AssertEC2InstanceType(struct["Type"]) end
	if struct["CreationTime"] then asserts.AssertTimestamp(struct["CreationTime"]) end
	if struct["FleetId"] then asserts.AssertFleetId(struct["FleetId"]) end
	if struct["IpAddress"] then asserts.AssertIpAddress(struct["IpAddress"]) end
	if struct["OperatingSystem"] then asserts.AssertOperatingSystem(struct["OperatingSystem"]) end
	for k,_ in pairs(struct) do
		assert(keys.Instance[k], "Instance contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Instance
-- <p>Properties that describe an instance of a virtual computing resource that hosts one or more game servers. A fleet contains zero or more instances.</p>
-- @param _Status [InstanceStatus] <p>Current status of the instance. Possible statuses include the following:</p> <ul> <li> <p> <b>PENDING</b> – The instance is in the process of being created and launching server processes as defined in the fleet's runtime configuration. </p> </li> <li> <p> <b>ACTIVE</b> – The instance has been successfully created and at least one server process has successfully launched and reported back to Amazon GameLift that it is ready to host a game session. The instance is now considered ready to host game sessions. </p> </li> <li> <p> <b>TERMINATING</b> – The instance is in the process of shutting down. This may happen to reduce capacity during a scaling down event or to recycle resources in the event of a problem.</p> </li> </ul>
-- @param _InstanceId [InstanceId] <p>Unique identifier for an instance.</p>
-- @param _Type [EC2InstanceType] <p>EC2 instance type that defines the computing resources of this instance. </p>
-- @param _CreationTime [Timestamp] <p>Time stamp indicating when this data object was created. Format is a number expressed in Unix time as milliseconds (for example "1469498468.057").</p>
-- @param _FleetId [FleetId] <p>Unique identifier for a fleet that the instance is in.</p>
-- @param _IpAddress [IpAddress] <p>IP address assigned to the instance.</p>
-- @param _OperatingSystem [OperatingSystem] <p>Operating system that is running on this instance. </p>
function M.Instance(_Status, _InstanceId, _Type, _CreationTime, _FleetId, _IpAddress, _OperatingSystem, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Instance")
	local t = { 
		["Status"] = _Status,
		["InstanceId"] = _InstanceId,
		["Type"] = _Type,
		["CreationTime"] = _CreationTime,
		["FleetId"] = _FleetId,
		["IpAddress"] = _IpAddress,
		["OperatingSystem"] = _OperatingSystem,
	}
	asserts.AssertInstance(t)
	return t
end

keys.StopGameSessionPlacementInput = { ["PlacementId"] = true, nil }

function asserts.AssertStopGameSessionPlacementInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopGameSessionPlacementInput to be of type 'table'")
	assert(struct["PlacementId"], "Expected key PlacementId to exist in table")
	if struct["PlacementId"] then asserts.AssertIdStringModel(struct["PlacementId"]) end
	for k,_ in pairs(struct) do
		assert(keys.StopGameSessionPlacementInput[k], "StopGameSessionPlacementInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopGameSessionPlacementInput
-- <p>Represents the input for a request action.</p>
-- @param _PlacementId [IdStringModel] <p>Unique identifier for a game session placement to cancel.</p>
-- Required parameter: PlacementId
function M.StopGameSessionPlacementInput(_PlacementId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StopGameSessionPlacementInput")
	local t = { 
		["PlacementId"] = _PlacementId,
	}
	asserts.AssertStopGameSessionPlacementInput(t)
	return t
end

keys.Event = { ["EventId"] = true, ["ResourceId"] = true, ["Message"] = true, ["EventTime"] = true, ["EventCode"] = true, nil }

function asserts.AssertEvent(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Event to be of type 'table'")
	if struct["EventId"] then asserts.AssertNonZeroAndMaxString(struct["EventId"]) end
	if struct["ResourceId"] then asserts.AssertNonZeroAndMaxString(struct["ResourceId"]) end
	if struct["Message"] then asserts.AssertNonEmptyString(struct["Message"]) end
	if struct["EventTime"] then asserts.AssertTimestamp(struct["EventTime"]) end
	if struct["EventCode"] then asserts.AssertEventCode(struct["EventCode"]) end
	for k,_ in pairs(struct) do
		assert(keys.Event[k], "Event contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Event
-- <p>Log entry describing an event involving Amazon GameLift resources (such as a fleet). In addition to tracking activity, event codes and messages can provide additional information for troubleshooting and debugging problems.</p>
-- @param _EventId [NonZeroAndMaxString] <p>Unique identifier for a fleet event.</p>
-- @param _ResourceId [NonZeroAndMaxString] <p>Unique identifier for an event resource, such as a fleet ID.</p>
-- @param _Message [NonEmptyString] <p>Additional information related to the event.</p>
-- @param _EventTime [Timestamp] <p>Time stamp indicating when this event occurred. Format is a number expressed in Unix time as milliseconds (for example "1469498468.057").</p>
-- @param _EventCode [EventCode] <p>Type of event being logged. </p>
function M.Event(_EventId, _ResourceId, _Message, _EventTime, _EventCode, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Event")
	local t = { 
		["EventId"] = _EventId,
		["ResourceId"] = _ResourceId,
		["Message"] = _Message,
		["EventTime"] = _EventTime,
		["EventCode"] = _EventCode,
	}
	asserts.AssertEvent(t)
	return t
end

keys.StartGameSessionPlacementInput = { ["MaximumPlayerSessionCount"] = true, ["PlacementId"] = true, ["GameSessionName"] = true, ["GameSessionQueueName"] = true, ["GameProperties"] = true, ["DesiredPlayerSessions"] = true, ["PlayerLatencies"] = true, nil }

function asserts.AssertStartGameSessionPlacementInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartGameSessionPlacementInput to be of type 'table'")
	assert(struct["PlacementId"], "Expected key PlacementId to exist in table")
	assert(struct["GameSessionQueueName"], "Expected key GameSessionQueueName to exist in table")
	assert(struct["MaximumPlayerSessionCount"], "Expected key MaximumPlayerSessionCount to exist in table")
	if struct["MaximumPlayerSessionCount"] then asserts.AssertWholeNumber(struct["MaximumPlayerSessionCount"]) end
	if struct["PlacementId"] then asserts.AssertIdStringModel(struct["PlacementId"]) end
	if struct["GameSessionName"] then asserts.AssertNonZeroAndMaxString(struct["GameSessionName"]) end
	if struct["GameSessionQueueName"] then asserts.AssertGameSessionQueueName(struct["GameSessionQueueName"]) end
	if struct["GameProperties"] then asserts.AssertGamePropertyList(struct["GameProperties"]) end
	if struct["DesiredPlayerSessions"] then asserts.AssertDesiredPlayerSessionList(struct["DesiredPlayerSessions"]) end
	if struct["PlayerLatencies"] then asserts.AssertPlayerLatencyList(struct["PlayerLatencies"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartGameSessionPlacementInput[k], "StartGameSessionPlacementInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartGameSessionPlacementInput
-- <p>Represents the input for a request action.</p>
-- @param _MaximumPlayerSessionCount [WholeNumber] <p>Maximum number of players that can be connected simultaneously to the game session.</p>
-- @param _PlacementId [IdStringModel] <p>Unique identifier to assign to the new game session placement. This value is developer-defined. The value must be unique across all regions and cannot be reused unless you are resubmitting a canceled or timed-out placement request.</p>
-- @param _GameSessionName [NonZeroAndMaxString] <p>Descriptive label that is associated with a game session. Session names do not need to be unique.</p>
-- @param _GameSessionQueueName [GameSessionQueueName] <p>Name of the queue to use to place the new game session.</p>
-- @param _GameProperties [GamePropertyList] <p>Set of developer-defined properties for a game session. These properties are passed to the server process hosting the game session.</p>
-- @param _DesiredPlayerSessions [DesiredPlayerSessionList] <p>Set of information on each player to create a player session for.</p>
-- @param _PlayerLatencies [PlayerLatencyList] <p>Set of values, expressed in milliseconds, indicating the amount of latency that players are experiencing when connected to AWS regions. This information is used to try to place the new game session where it can offer the best possible gameplay experience for the players. </p>
-- Required parameter: PlacementId
-- Required parameter: GameSessionQueueName
-- Required parameter: MaximumPlayerSessionCount
function M.StartGameSessionPlacementInput(_MaximumPlayerSessionCount, _PlacementId, _GameSessionName, _GameSessionQueueName, _GameProperties, _DesiredPlayerSessions, _PlayerLatencies, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StartGameSessionPlacementInput")
	local t = { 
		["MaximumPlayerSessionCount"] = _MaximumPlayerSessionCount,
		["PlacementId"] = _PlacementId,
		["GameSessionName"] = _GameSessionName,
		["GameSessionQueueName"] = _GameSessionQueueName,
		["GameProperties"] = _GameProperties,
		["DesiredPlayerSessions"] = _DesiredPlayerSessions,
		["PlayerLatencies"] = _PlayerLatencies,
	}
	asserts.AssertStartGameSessionPlacementInput(t)
	return t
end

keys.DescribeFleetAttributesOutput = { ["FleetAttributes"] = true, ["NextToken"] = true, nil }

function asserts.AssertDescribeFleetAttributesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeFleetAttributesOutput to be of type 'table'")
	if struct["FleetAttributes"] then asserts.AssertFleetAttributesList(struct["FleetAttributes"]) end
	if struct["NextToken"] then asserts.AssertNonZeroAndMaxString(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeFleetAttributesOutput[k], "DescribeFleetAttributesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeFleetAttributesOutput
-- <p>Represents the returned data in response to a request action.</p>
-- @param _FleetAttributes [FleetAttributesList] <p>Collection of objects containing attribute metadata for each requested fleet ID.</p>
-- @param _NextToken [NonZeroAndMaxString] <p>Token that indicates where to resume retrieving results on the next call to this action. If no token is returned, these results represent the end of the list.</p>
function M.DescribeFleetAttributesOutput(_FleetAttributes, _NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeFleetAttributesOutput")
	local t = { 
		["FleetAttributes"] = _FleetAttributes,
		["NextToken"] = _NextToken,
	}
	asserts.AssertDescribeFleetAttributesOutput(t)
	return t
end

keys.LimitExceededException = { ["Message"] = true, nil }

function asserts.AssertLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LimitExceededException to be of type 'table'")
	if struct["Message"] then asserts.AssertNonEmptyString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.LimitExceededException[k], "LimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LimitExceededException
-- <p>The requested operation would cause the resource to exceed the allowed service limit. Resolve the issue before retrying.</p>
-- @param _Message [NonEmptyString] 
function M.LimitExceededException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LimitExceededException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertLimitExceededException(t)
	return t
end

keys.GetInstanceAccessOutput = { ["InstanceAccess"] = true, nil }

function asserts.AssertGetInstanceAccessOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetInstanceAccessOutput to be of type 'table'")
	if struct["InstanceAccess"] then asserts.AssertInstanceAccess(struct["InstanceAccess"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetInstanceAccessOutput[k], "GetInstanceAccessOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetInstanceAccessOutput
-- <p>Represents the returned data in response to a request action.</p>
-- @param _InstanceAccess [InstanceAccess] <p>Object that contains connection information for a fleet instance, including IP address and access credentials.</p>
function M.GetInstanceAccessOutput(_InstanceAccess, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetInstanceAccessOutput")
	local t = { 
		["InstanceAccess"] = _InstanceAccess,
	}
	asserts.AssertGetInstanceAccessOutput(t)
	return t
end

keys.FleetUtilization = { ["CurrentPlayerSessionCount"] = true, ["MaximumPlayerSessionCount"] = true, ["ActiveServerProcessCount"] = true, ["FleetId"] = true, ["ActiveGameSessionCount"] = true, nil }

function asserts.AssertFleetUtilization(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FleetUtilization to be of type 'table'")
	if struct["CurrentPlayerSessionCount"] then asserts.AssertWholeNumber(struct["CurrentPlayerSessionCount"]) end
	if struct["MaximumPlayerSessionCount"] then asserts.AssertWholeNumber(struct["MaximumPlayerSessionCount"]) end
	if struct["ActiveServerProcessCount"] then asserts.AssertWholeNumber(struct["ActiveServerProcessCount"]) end
	if struct["FleetId"] then asserts.AssertFleetId(struct["FleetId"]) end
	if struct["ActiveGameSessionCount"] then asserts.AssertWholeNumber(struct["ActiveGameSessionCount"]) end
	for k,_ in pairs(struct) do
		assert(keys.FleetUtilization[k], "FleetUtilization contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FleetUtilization
-- <p>Current status of fleet utilization, including the number of game and player sessions being hosted.</p>
-- @param _CurrentPlayerSessionCount [WholeNumber] <p>Number of active player sessions currently being hosted on all instances in the fleet.</p>
-- @param _MaximumPlayerSessionCount [WholeNumber] <p>Maximum players allowed across all game sessions currently being hosted on all instances in the fleet.</p>
-- @param _ActiveServerProcessCount [WholeNumber] <p>Number of server processes in an <code>ACTIVE</code> status currently running across all instances in the fleet</p>
-- @param _FleetId [FleetId] <p>Unique identifier for a fleet.</p>
-- @param _ActiveGameSessionCount [WholeNumber] <p>Number of active game sessions currently being hosted on all instances in the fleet.</p>
function M.FleetUtilization(_CurrentPlayerSessionCount, _MaximumPlayerSessionCount, _ActiveServerProcessCount, _FleetId, _ActiveGameSessionCount, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating FleetUtilization")
	local t = { 
		["CurrentPlayerSessionCount"] = _CurrentPlayerSessionCount,
		["MaximumPlayerSessionCount"] = _MaximumPlayerSessionCount,
		["ActiveServerProcessCount"] = _ActiveServerProcessCount,
		["FleetId"] = _FleetId,
		["ActiveGameSessionCount"] = _ActiveGameSessionCount,
	}
	asserts.AssertFleetUtilization(t)
	return t
end

keys.PlayerLatencyPolicy = { ["MaximumIndividualPlayerLatencyMilliseconds"] = true, ["PolicyDurationSeconds"] = true, nil }

function asserts.AssertPlayerLatencyPolicy(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PlayerLatencyPolicy to be of type 'table'")
	if struct["MaximumIndividualPlayerLatencyMilliseconds"] then asserts.AssertWholeNumber(struct["MaximumIndividualPlayerLatencyMilliseconds"]) end
	if struct["PolicyDurationSeconds"] then asserts.AssertWholeNumber(struct["PolicyDurationSeconds"]) end
	for k,_ in pairs(struct) do
		assert(keys.PlayerLatencyPolicy[k], "PlayerLatencyPolicy contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PlayerLatencyPolicy
-- <p>Queue setting that determines the highest latency allowed for individual players when placing a game session. When a latency policy is in force, a game session cannot be placed at any destination in a region where a player is reporting latency higher than the cap. Latency policies are only enforced when the placement request contains player latency information.</p> <p>Latency policy-related operations include:</p> <ul> <li> <p> <a>CreateGameSessionQueue</a> </p> </li> <li> <p> <a>UpdateGameSessionQueue</a> </p> </li> <li> <p> <a>StartGameSessionPlacement</a> </p> </li> </ul>
-- @param _MaximumIndividualPlayerLatencyMilliseconds [WholeNumber] <p>The maximum latency value that is allowed for any player, in milliseconds. All policies must have a value set for this property.</p>
-- @param _PolicyDurationSeconds [WholeNumber] <p>The length of time, in seconds, that the policy is enforced while placing a new game session. A null value for this property means that the policy is enforced until the queue times out.</p>
function M.PlayerLatencyPolicy(_MaximumIndividualPlayerLatencyMilliseconds, _PolicyDurationSeconds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PlayerLatencyPolicy")
	local t = { 
		["MaximumIndividualPlayerLatencyMilliseconds"] = _MaximumIndividualPlayerLatencyMilliseconds,
		["PolicyDurationSeconds"] = _PolicyDurationSeconds,
	}
	asserts.AssertPlayerLatencyPolicy(t)
	return t
end

keys.InternalServiceException = { ["Message"] = true, nil }

function asserts.AssertInternalServiceException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InternalServiceException to be of type 'table'")
	if struct["Message"] then asserts.AssertNonEmptyString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InternalServiceException[k], "InternalServiceException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InternalServiceException
-- <p>The service encountered an unrecoverable internal failure while processing the request. Clients can retry such requests immediately or after a waiting period.</p>
-- @param _Message [NonEmptyString] 
function M.InternalServiceException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InternalServiceException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertInternalServiceException(t)
	return t
end

keys.DescribeRuntimeConfigurationOutput = { ["RuntimeConfiguration"] = true, nil }

function asserts.AssertDescribeRuntimeConfigurationOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeRuntimeConfigurationOutput to be of type 'table'")
	if struct["RuntimeConfiguration"] then asserts.AssertRuntimeConfiguration(struct["RuntimeConfiguration"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeRuntimeConfigurationOutput[k], "DescribeRuntimeConfigurationOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeRuntimeConfigurationOutput
-- <p>Represents the returned data in response to a request action.</p>
-- @param _RuntimeConfiguration [RuntimeConfiguration] <p>Instructions describing how server processes should be launched and maintained on each instance in the fleet.</p>
function M.DescribeRuntimeConfigurationOutput(_RuntimeConfiguration, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeRuntimeConfigurationOutput")
	local t = { 
		["RuntimeConfiguration"] = _RuntimeConfiguration,
	}
	asserts.AssertDescribeRuntimeConfigurationOutput(t)
	return t
end

keys.Build = { ["Status"] = true, ["Name"] = true, ["BuildId"] = true, ["CreationTime"] = true, ["SizeOnDisk"] = true, ["Version"] = true, ["OperatingSystem"] = true, nil }

function asserts.AssertBuild(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Build to be of type 'table'")
	if struct["Status"] then asserts.AssertBuildStatus(struct["Status"]) end
	if struct["Name"] then asserts.AssertFreeText(struct["Name"]) end
	if struct["BuildId"] then asserts.AssertBuildId(struct["BuildId"]) end
	if struct["CreationTime"] then asserts.AssertTimestamp(struct["CreationTime"]) end
	if struct["SizeOnDisk"] then asserts.AssertPositiveLong(struct["SizeOnDisk"]) end
	if struct["Version"] then asserts.AssertFreeText(struct["Version"]) end
	if struct["OperatingSystem"] then asserts.AssertOperatingSystem(struct["OperatingSystem"]) end
	for k,_ in pairs(struct) do
		assert(keys.Build[k], "Build contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Build
-- <p>Properties describing a game build.</p> <p>Build-related operations include:</p> <ul> <li> <p> <a>CreateBuild</a> </p> </li> <li> <p> <a>ListBuilds</a> </p> </li> <li> <p> <a>DescribeBuild</a> </p> </li> <li> <p> <a>UpdateBuild</a> </p> </li> <li> <p> <a>DeleteBuild</a> </p> </li> </ul>
-- @param _Status [BuildStatus] <p>Current status of the build.</p> <p>Possible build statuses include the following:</p> <ul> <li> <p> <b>INITIALIZED</b> – A new build has been defined, but no files have been uploaded. You cannot create fleets for builds that are in this status. When a build is successfully created, the build status is set to this value. </p> </li> <li> <p> <b>READY</b> – The game build has been successfully uploaded. You can now create new fleets for this build.</p> </li> <li> <p> <b>FAILED</b> – The game build upload failed. You cannot create new fleets for this build. </p> </li> </ul>
-- @param _Name [FreeText] <p>Descriptive label that is associated with a build. Build names do not need to be unique. It can be set using <a>CreateBuild</a> or <a>UpdateBuild</a>.</p>
-- @param _BuildId [BuildId] <p>Unique identifier for a build.</p>
-- @param _CreationTime [Timestamp] <p>Time stamp indicating when this data object was created. Format is a number expressed in Unix time as milliseconds (for example "1469498468.057").</p>
-- @param _SizeOnDisk [PositiveLong] <p>File size of the uploaded game build, expressed in bytes. When the build status is <code>INITIALIZED</code>, this value is 0.</p>
-- @param _Version [FreeText] <p>Version that is associated with this build. Version strings do not need to be unique. This value can be set using <a>CreateBuild</a> or <a>UpdateBuild</a>.</p>
-- @param _OperatingSystem [OperatingSystem] <p>Operating system that the game server binaries are built to run on. This value determines the type of fleet resources that you can use for this build.</p>
function M.Build(_Status, _Name, _BuildId, _CreationTime, _SizeOnDisk, _Version, _OperatingSystem, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Build")
	local t = { 
		["Status"] = _Status,
		["Name"] = _Name,
		["BuildId"] = _BuildId,
		["CreationTime"] = _CreationTime,
		["SizeOnDisk"] = _SizeOnDisk,
		["Version"] = _Version,
		["OperatingSystem"] = _OperatingSystem,
	}
	asserts.AssertBuild(t)
	return t
end

keys.DescribeFleetPortSettingsOutput = { ["InboundPermissions"] = true, nil }

function asserts.AssertDescribeFleetPortSettingsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeFleetPortSettingsOutput to be of type 'table'")
	if struct["InboundPermissions"] then asserts.AssertIpPermissionsList(struct["InboundPermissions"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeFleetPortSettingsOutput[k], "DescribeFleetPortSettingsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeFleetPortSettingsOutput
-- <p>Represents the returned data in response to a request action.</p>
-- @param _InboundPermissions [IpPermissionsList] <p>Object that contains port settings for the requested fleet ID.</p>
function M.DescribeFleetPortSettingsOutput(_InboundPermissions, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeFleetPortSettingsOutput")
	local t = { 
		["InboundPermissions"] = _InboundPermissions,
	}
	asserts.AssertDescribeFleetPortSettingsOutput(t)
	return t
end

keys.CreatePlayerSessionOutput = { ["PlayerSession"] = true, nil }

function asserts.AssertCreatePlayerSessionOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreatePlayerSessionOutput to be of type 'table'")
	if struct["PlayerSession"] then asserts.AssertPlayerSession(struct["PlayerSession"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreatePlayerSessionOutput[k], "CreatePlayerSessionOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreatePlayerSessionOutput
-- <p>Represents the returned data in response to a request action.</p>
-- @param _PlayerSession [PlayerSession] <p>Object that describes the newly created player session record.</p>
function M.CreatePlayerSessionOutput(_PlayerSession, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreatePlayerSessionOutput")
	local t = { 
		["PlayerSession"] = _PlayerSession,
	}
	asserts.AssertCreatePlayerSessionOutput(t)
	return t
end

keys.DescribeBuildOutput = { ["Build"] = true, nil }

function asserts.AssertDescribeBuildOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeBuildOutput to be of type 'table'")
	if struct["Build"] then asserts.AssertBuild(struct["Build"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeBuildOutput[k], "DescribeBuildOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeBuildOutput
-- <p>Represents the returned data in response to a request action.</p>
-- @param _Build [Build] <p>Set of properties describing the requested build.</p>
function M.DescribeBuildOutput(_Build, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeBuildOutput")
	local t = { 
		["Build"] = _Build,
	}
	asserts.AssertDescribeBuildOutput(t)
	return t
end

keys.ScalingPolicy = { ["Status"] = true, ["EvaluationPeriods"] = true, ["Name"] = true, ["ComparisonOperator"] = true, ["FleetId"] = true, ["Threshold"] = true, ["ScalingAdjustment"] = true, ["MetricName"] = true, ["ScalingAdjustmentType"] = true, nil }

function asserts.AssertScalingPolicy(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ScalingPolicy to be of type 'table'")
	if struct["Status"] then asserts.AssertScalingStatusType(struct["Status"]) end
	if struct["EvaluationPeriods"] then asserts.AssertPositiveInteger(struct["EvaluationPeriods"]) end
	if struct["Name"] then asserts.AssertNonZeroAndMaxString(struct["Name"]) end
	if struct["ComparisonOperator"] then asserts.AssertComparisonOperatorType(struct["ComparisonOperator"]) end
	if struct["FleetId"] then asserts.AssertFleetId(struct["FleetId"]) end
	if struct["Threshold"] then asserts.AssertDouble(struct["Threshold"]) end
	if struct["ScalingAdjustment"] then asserts.AssertInteger(struct["ScalingAdjustment"]) end
	if struct["MetricName"] then asserts.AssertMetricName(struct["MetricName"]) end
	if struct["ScalingAdjustmentType"] then asserts.AssertScalingAdjustmentType(struct["ScalingAdjustmentType"]) end
	for k,_ in pairs(struct) do
		assert(keys.ScalingPolicy[k], "ScalingPolicy contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ScalingPolicy
-- <p>Rule that controls how a fleet is scaled. Scaling policies are uniquely identified by the combination of name and fleet ID.</p>
-- @param _Status [ScalingStatusType] <p>Current status of the scaling policy. The scaling policy is only in force when in an <code>ACTIVE</code> status.</p> <ul> <li> <p> <b>ACTIVE</b> – The scaling policy is currently in force.</p> </li> <li> <p> <b>UPDATE_REQUESTED</b> – A request to update the scaling policy has been received.</p> </li> <li> <p> <b>UPDATING</b> – A change is being made to the scaling policy.</p> </li> <li> <p> <b>DELETE_REQUESTED</b> – A request to delete the scaling policy has been received.</p> </li> <li> <p> <b>DELETING</b> – The scaling policy is being deleted.</p> </li> <li> <p> <b>DELETED</b> – The scaling policy has been deleted.</p> </li> <li> <p> <b>ERROR</b> – An error occurred in creating the policy. It should be removed and recreated.</p> </li> </ul>
-- @param _EvaluationPeriods [PositiveInteger] <p>Length of time (in minutes) the metric must be at or beyond the threshold before a scaling event is triggered.</p>
-- @param _Name [NonZeroAndMaxString] <p>Descriptive label that is associated with a scaling policy. Policy names do not need to be unique.</p>
-- @param _ComparisonOperator [ComparisonOperatorType] <p>Comparison operator to use when measuring a metric against the threshold value.</p>
-- @param _FleetId [FleetId] <p>Unique identifier for a fleet that is associated with this scaling policy.</p>
-- @param _Threshold [Double] <p>Metric value used to trigger a scaling event.</p>
-- @param _ScalingAdjustment [Integer] <p>Amount of adjustment to make, based on the scaling adjustment type.</p>
-- @param _MetricName [MetricName] <p>Name of the Amazon GameLift-defined metric that is used to trigger an adjustment.</p> <ul> <li> <p> <b>ActivatingGameSessions</b> – number of game sessions in the process of being created (game session status = <code>ACTIVATING</code>).</p> </li> <li> <p> <b>ActiveGameSessions</b> – number of game sessions currently running (game session status = <code>ACTIVE</code>).</p> </li> <li> <p> <b>CurrentPlayerSessions</b> – number of active or reserved player sessions (player session status = <code>ACTIVE</code> or <code>RESERVED</code>). </p> </li> <li> <p> <b>AvailablePlayerSessions</b> – number of player session slots currently available in active game sessions across the fleet, calculated by subtracting a game session's current player session count from its maximum player session count. This number does include game sessions that are not currently accepting players (game session <code>PlayerSessionCreationPolicy</code> = <code>DENY_ALL</code>).</p> </li> <li> <p> <b>ActiveInstances</b> – number of instances currently running a game session.</p> </li> <li> <p> <b>IdleInstances</b> – number of instances not currently running a game session.</p> </li> </ul>
-- @param _ScalingAdjustmentType [ScalingAdjustmentType] <p>Type of adjustment to make to a fleet's instance count (see <a>FleetCapacity</a>):</p> <ul> <li> <p> <b>ChangeInCapacity</b> – add (or subtract) the scaling adjustment value from the current instance count. Positive values scale up while negative values scale down.</p> </li> <li> <p> <b>ExactCapacity</b> – set the instance count to the scaling adjustment value.</p> </li> <li> <p> <b>PercentChangeInCapacity</b> – increase or reduce the current instance count by the scaling adjustment, read as a percentage. Positive values scale up while negative values scale down.</p> </li> </ul>
function M.ScalingPolicy(_Status, _EvaluationPeriods, _Name, _ComparisonOperator, _FleetId, _Threshold, _ScalingAdjustment, _MetricName, _ScalingAdjustmentType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ScalingPolicy")
	local t = { 
		["Status"] = _Status,
		["EvaluationPeriods"] = _EvaluationPeriods,
		["Name"] = _Name,
		["ComparisonOperator"] = _ComparisonOperator,
		["FleetId"] = _FleetId,
		["Threshold"] = _Threshold,
		["ScalingAdjustment"] = _ScalingAdjustment,
		["MetricName"] = _MetricName,
		["ScalingAdjustmentType"] = _ScalingAdjustmentType,
	}
	asserts.AssertScalingPolicy(t)
	return t
end

keys.InvalidFleetStatusException = { ["Message"] = true, nil }

function asserts.AssertInvalidFleetStatusException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidFleetStatusException to be of type 'table'")
	if struct["Message"] then asserts.AssertNonEmptyString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidFleetStatusException[k], "InvalidFleetStatusException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidFleetStatusException
-- <p>The requested operation would cause a conflict with the current state of a resource associated with the request and/or the fleet. Resolve the conflict before retrying.</p>
-- @param _Message [NonEmptyString] 
function M.InvalidFleetStatusException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidFleetStatusException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertInvalidFleetStatusException(t)
	return t
end

keys.DescribeGameSessionDetailsInput = { ["Limit"] = true, ["GameSessionId"] = true, ["StatusFilter"] = true, ["FleetId"] = true, ["NextToken"] = true, ["AliasId"] = true, nil }

function asserts.AssertDescribeGameSessionDetailsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeGameSessionDetailsInput to be of type 'table'")
	if struct["Limit"] then asserts.AssertPositiveInteger(struct["Limit"]) end
	if struct["GameSessionId"] then asserts.AssertArnStringModel(struct["GameSessionId"]) end
	if struct["StatusFilter"] then asserts.AssertNonZeroAndMaxString(struct["StatusFilter"]) end
	if struct["FleetId"] then asserts.AssertFleetId(struct["FleetId"]) end
	if struct["NextToken"] then asserts.AssertNonZeroAndMaxString(struct["NextToken"]) end
	if struct["AliasId"] then asserts.AssertAliasId(struct["AliasId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeGameSessionDetailsInput[k], "DescribeGameSessionDetailsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeGameSessionDetailsInput
-- <p>Represents the input for a request action.</p>
-- @param _Limit [PositiveInteger] <p>Maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
-- @param _GameSessionId [ArnStringModel] <p>Unique identifier for the game session to retrieve.</p>
-- @param _StatusFilter [NonZeroAndMaxString] <p>Game session status to filter results on. Possible game session statuses include ACTIVE, <code>TERMINATED</code>, <code>ACTIVATING</code> and <code>TERMINATING</code> (the last two are transitory). </p>
-- @param _FleetId [FleetId] <p>Unique identifier for a fleet to retrieve all game sessions active on the fleet.</p>
-- @param _NextToken [NonZeroAndMaxString] <p>Token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this action. To specify the start of the result set, do not specify a value.</p>
-- @param _AliasId [AliasId] <p>Unique identifier for an alias associated with the fleet to retrieve all game sessions for.</p>
function M.DescribeGameSessionDetailsInput(_Limit, _GameSessionId, _StatusFilter, _FleetId, _NextToken, _AliasId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeGameSessionDetailsInput")
	local t = { 
		["Limit"] = _Limit,
		["GameSessionId"] = _GameSessionId,
		["StatusFilter"] = _StatusFilter,
		["FleetId"] = _FleetId,
		["NextToken"] = _NextToken,
		["AliasId"] = _AliasId,
	}
	asserts.AssertDescribeGameSessionDetailsInput(t)
	return t
end

keys.TerminalRoutingStrategyException = { ["Message"] = true, nil }

function asserts.AssertTerminalRoutingStrategyException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TerminalRoutingStrategyException to be of type 'table'")
	if struct["Message"] then asserts.AssertNonEmptyString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.TerminalRoutingStrategyException[k], "TerminalRoutingStrategyException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TerminalRoutingStrategyException
-- <p>The service is unable to resolve the routing for a particular alias because it has a terminal <a>RoutingStrategy</a> associated with it. The message returned in this exception is the message defined in the routing strategy itself. Such requests should only be retried if the routing strategy for the specified alias is modified. </p>
-- @param _Message [NonEmptyString] 
function M.TerminalRoutingStrategyException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TerminalRoutingStrategyException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertTerminalRoutingStrategyException(t)
	return t
end

keys.DescribeScalingPoliciesOutput = { ["ScalingPolicies"] = true, ["NextToken"] = true, nil }

function asserts.AssertDescribeScalingPoliciesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeScalingPoliciesOutput to be of type 'table'")
	if struct["ScalingPolicies"] then asserts.AssertScalingPolicyList(struct["ScalingPolicies"]) end
	if struct["NextToken"] then asserts.AssertNonZeroAndMaxString(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeScalingPoliciesOutput[k], "DescribeScalingPoliciesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeScalingPoliciesOutput
-- <p>Represents the returned data in response to a request action.</p>
-- @param _ScalingPolicies [ScalingPolicyList] <p>Collection of objects containing the scaling policies matching the request.</p>
-- @param _NextToken [NonZeroAndMaxString] <p>Token that indicates where to resume retrieving results on the next call to this action. If no token is returned, these results represent the end of the list.</p>
function M.DescribeScalingPoliciesOutput(_ScalingPolicies, _NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeScalingPoliciesOutput")
	local t = { 
		["ScalingPolicies"] = _ScalingPolicies,
		["NextToken"] = _NextToken,
	}
	asserts.AssertDescribeScalingPoliciesOutput(t)
	return t
end

keys.DeleteAliasInput = { ["AliasId"] = true, nil }

function asserts.AssertDeleteAliasInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteAliasInput to be of type 'table'")
	assert(struct["AliasId"], "Expected key AliasId to exist in table")
	if struct["AliasId"] then asserts.AssertAliasId(struct["AliasId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteAliasInput[k], "DeleteAliasInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteAliasInput
-- <p>Represents the input for a request action.</p>
-- @param _AliasId [AliasId] <p>Unique identifier for a fleet alias. Specify the alias you want to delete.</p>
-- Required parameter: AliasId
function M.DeleteAliasInput(_AliasId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteAliasInput")
	local t = { 
		["AliasId"] = _AliasId,
	}
	asserts.AssertDeleteAliasInput(t)
	return t
end

keys.UpdateGameSessionQueueOutput = { ["GameSessionQueue"] = true, nil }

function asserts.AssertUpdateGameSessionQueueOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateGameSessionQueueOutput to be of type 'table'")
	if struct["GameSessionQueue"] then asserts.AssertGameSessionQueue(struct["GameSessionQueue"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateGameSessionQueueOutput[k], "UpdateGameSessionQueueOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateGameSessionQueueOutput
-- <p>Represents the returned data in response to a request action.</p>
-- @param _GameSessionQueue [GameSessionQueue] <p>Object that describes the newly updated game session queue.</p>
function M.UpdateGameSessionQueueOutput(_GameSessionQueue, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateGameSessionQueueOutput")
	local t = { 
		["GameSessionQueue"] = _GameSessionQueue,
	}
	asserts.AssertUpdateGameSessionQueueOutput(t)
	return t
end

keys.NotFoundException = { ["Message"] = true, nil }

function asserts.AssertNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NotFoundException to be of type 'table'")
	if struct["Message"] then asserts.AssertNonEmptyString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.NotFoundException[k], "NotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NotFoundException
-- <p>A service resource associated with the request could not be found. Clients should not retry such requests.</p>
-- @param _Message [NonEmptyString] 
function M.NotFoundException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NotFoundException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertNotFoundException(t)
	return t
end

keys.CreateAliasOutput = { ["Alias"] = true, nil }

function asserts.AssertCreateAliasOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateAliasOutput to be of type 'table'")
	if struct["Alias"] then asserts.AssertAlias(struct["Alias"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateAliasOutput[k], "CreateAliasOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateAliasOutput
-- <p>Represents the returned data in response to a request action.</p>
-- @param _Alias [Alias] <p>Object that describes the newly created alias record.</p>
function M.CreateAliasOutput(_Alias, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateAliasOutput")
	local t = { 
		["Alias"] = _Alias,
	}
	asserts.AssertCreateAliasOutput(t)
	return t
end

keys.DescribeAliasOutput = { ["Alias"] = true, nil }

function asserts.AssertDescribeAliasOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAliasOutput to be of type 'table'")
	if struct["Alias"] then asserts.AssertAlias(struct["Alias"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeAliasOutput[k], "DescribeAliasOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAliasOutput
-- <p>Represents the returned data in response to a request action.</p>
-- @param _Alias [Alias] <p>Object that contains the requested alias.</p>
function M.DescribeAliasOutput(_Alias, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeAliasOutput")
	local t = { 
		["Alias"] = _Alias,
	}
	asserts.AssertDescribeAliasOutput(t)
	return t
end

keys.CreatePlayerSessionInput = { ["PlayerId"] = true, ["GameSessionId"] = true, ["PlayerData"] = true, nil }

function asserts.AssertCreatePlayerSessionInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreatePlayerSessionInput to be of type 'table'")
	assert(struct["GameSessionId"], "Expected key GameSessionId to exist in table")
	assert(struct["PlayerId"], "Expected key PlayerId to exist in table")
	if struct["PlayerId"] then asserts.AssertNonZeroAndMaxString(struct["PlayerId"]) end
	if struct["GameSessionId"] then asserts.AssertArnStringModel(struct["GameSessionId"]) end
	if struct["PlayerData"] then asserts.AssertPlayerData(struct["PlayerData"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreatePlayerSessionInput[k], "CreatePlayerSessionInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreatePlayerSessionInput
-- <p>Represents the input for a request action.</p>
-- @param _PlayerId [NonZeroAndMaxString] <p>Unique identifier for a player. Player IDs are developer-defined.</p>
-- @param _GameSessionId [ArnStringModel] <p>Unique identifier for the game session to add a player to.</p>
-- @param _PlayerData [PlayerData] <p>Developer-defined information related to a player. Amazon GameLift does not use this data, so it can be formatted as needed for use in the game.</p>
-- Required parameter: GameSessionId
-- Required parameter: PlayerId
function M.CreatePlayerSessionInput(_PlayerId, _GameSessionId, _PlayerData, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreatePlayerSessionInput")
	local t = { 
		["PlayerId"] = _PlayerId,
		["GameSessionId"] = _GameSessionId,
		["PlayerData"] = _PlayerData,
	}
	asserts.AssertCreatePlayerSessionInput(t)
	return t
end

keys.GetGameSessionLogUrlInput = { ["GameSessionId"] = true, nil }

function asserts.AssertGetGameSessionLogUrlInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetGameSessionLogUrlInput to be of type 'table'")
	assert(struct["GameSessionId"], "Expected key GameSessionId to exist in table")
	if struct["GameSessionId"] then asserts.AssertArnStringModel(struct["GameSessionId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetGameSessionLogUrlInput[k], "GetGameSessionLogUrlInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetGameSessionLogUrlInput
-- <p>Represents the input for a request action.</p>
-- @param _GameSessionId [ArnStringModel] <p>Unique identifier for the game session to get logs for.</p>
-- Required parameter: GameSessionId
function M.GetGameSessionLogUrlInput(_GameSessionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetGameSessionLogUrlInput")
	local t = { 
		["GameSessionId"] = _GameSessionId,
	}
	asserts.AssertGetGameSessionLogUrlInput(t)
	return t
end

keys.InstanceAccess = { ["InstanceId"] = true, ["IpAddress"] = true, ["FleetId"] = true, ["OperatingSystem"] = true, ["Credentials"] = true, nil }

function asserts.AssertInstanceAccess(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstanceAccess to be of type 'table'")
	if struct["InstanceId"] then asserts.AssertInstanceId(struct["InstanceId"]) end
	if struct["IpAddress"] then asserts.AssertIpAddress(struct["IpAddress"]) end
	if struct["FleetId"] then asserts.AssertFleetId(struct["FleetId"]) end
	if struct["OperatingSystem"] then asserts.AssertOperatingSystem(struct["OperatingSystem"]) end
	if struct["Credentials"] then asserts.AssertInstanceCredentials(struct["Credentials"]) end
	for k,_ in pairs(struct) do
		assert(keys.InstanceAccess[k], "InstanceAccess contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstanceAccess
-- <p>Information required to remotely connect to a fleet instance. Access is requested by calling <a>GetInstanceAccess</a>. </p>
-- @param _InstanceId [InstanceId] <p>Unique identifier for an instance being accessed.</p>
-- @param _IpAddress [IpAddress] <p>IP address assigned to the instance.</p>
-- @param _FleetId [FleetId] <p>Unique identifier for a fleet containing the instance being accessed.</p>
-- @param _OperatingSystem [OperatingSystem] <p>Operating system that is running on the instance.</p>
-- @param _Credentials [InstanceCredentials] <p>Credentials required to access the instance.</p>
function M.InstanceAccess(_InstanceId, _IpAddress, _FleetId, _OperatingSystem, _Credentials, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InstanceAccess")
	local t = { 
		["InstanceId"] = _InstanceId,
		["IpAddress"] = _IpAddress,
		["FleetId"] = _FleetId,
		["OperatingSystem"] = _OperatingSystem,
		["Credentials"] = _Credentials,
	}
	asserts.AssertInstanceAccess(t)
	return t
end

keys.PlacedPlayerSession = { ["PlayerId"] = true, ["PlayerSessionId"] = true, nil }

function asserts.AssertPlacedPlayerSession(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PlacedPlayerSession to be of type 'table'")
	if struct["PlayerId"] then asserts.AssertNonZeroAndMaxString(struct["PlayerId"]) end
	if struct["PlayerSessionId"] then asserts.AssertPlayerSessionId(struct["PlayerSessionId"]) end
	for k,_ in pairs(struct) do
		assert(keys.PlacedPlayerSession[k], "PlacedPlayerSession contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PlacedPlayerSession
-- <p>Information about a player session that was created as part of a <a>StartGameSessionPlacement</a> request. This object contains only the player ID and player session ID. To retrieve full details on a player session, call <a>DescribePlayerSessions</a> with the player session ID.</p>
-- @param _PlayerId [NonZeroAndMaxString] <p>Unique identifier for a player that is associated with this player session.</p>
-- @param _PlayerSessionId [PlayerSessionId] <p>Unique identifier for a player session.</p>
function M.PlacedPlayerSession(_PlayerId, _PlayerSessionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PlacedPlayerSession")
	local t = { 
		["PlayerId"] = _PlayerId,
		["PlayerSessionId"] = _PlayerSessionId,
	}
	asserts.AssertPlacedPlayerSession(t)
	return t
end

keys.DescribeInstancesInput = { ["InstanceId"] = true, ["Limit"] = true, ["NextToken"] = true, ["FleetId"] = true, nil }

function asserts.AssertDescribeInstancesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeInstancesInput to be of type 'table'")
	assert(struct["FleetId"], "Expected key FleetId to exist in table")
	if struct["InstanceId"] then asserts.AssertInstanceId(struct["InstanceId"]) end
	if struct["Limit"] then asserts.AssertPositiveInteger(struct["Limit"]) end
	if struct["NextToken"] then asserts.AssertNonZeroAndMaxString(struct["NextToken"]) end
	if struct["FleetId"] then asserts.AssertFleetId(struct["FleetId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeInstancesInput[k], "DescribeInstancesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeInstancesInput
-- <p>Represents the input for a request action.</p>
-- @param _InstanceId [InstanceId] <p>Unique identifier for an instance to retrieve. Specify an instance ID or leave blank to retrieve all instances in the fleet.</p>
-- @param _Limit [PositiveInteger] <p>Maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
-- @param _NextToken [NonZeroAndMaxString] <p>Token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this action. To specify the start of the result set, do not specify a value.</p>
-- @param _FleetId [FleetId] <p>Unique identifier for a fleet to retrieve instance information for.</p>
-- Required parameter: FleetId
function M.DescribeInstancesInput(_InstanceId, _Limit, _NextToken, _FleetId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeInstancesInput")
	local t = { 
		["InstanceId"] = _InstanceId,
		["Limit"] = _Limit,
		["NextToken"] = _NextToken,
		["FleetId"] = _FleetId,
	}
	asserts.AssertDescribeInstancesInput(t)
	return t
end

keys.DescribeEC2InstanceLimitsOutput = { ["EC2InstanceLimits"] = true, nil }

function asserts.AssertDescribeEC2InstanceLimitsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEC2InstanceLimitsOutput to be of type 'table'")
	if struct["EC2InstanceLimits"] then asserts.AssertEC2InstanceLimitList(struct["EC2InstanceLimits"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeEC2InstanceLimitsOutput[k], "DescribeEC2InstanceLimitsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEC2InstanceLimitsOutput
-- <p>Represents the returned data in response to a request action.</p>
-- @param _EC2InstanceLimits [EC2InstanceLimitList] <p>Object that contains the maximum number of instances for the specified instance type.</p>
function M.DescribeEC2InstanceLimitsOutput(_EC2InstanceLimits, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeEC2InstanceLimitsOutput")
	local t = { 
		["EC2InstanceLimits"] = _EC2InstanceLimits,
	}
	asserts.AssertDescribeEC2InstanceLimitsOutput(t)
	return t
end

keys.FleetCapacity = { ["FleetId"] = true, ["InstanceType"] = true, ["InstanceCounts"] = true, nil }

function asserts.AssertFleetCapacity(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FleetCapacity to be of type 'table'")
	if struct["FleetId"] then asserts.AssertFleetId(struct["FleetId"]) end
	if struct["InstanceType"] then asserts.AssertEC2InstanceType(struct["InstanceType"]) end
	if struct["InstanceCounts"] then asserts.AssertEC2InstanceCounts(struct["InstanceCounts"]) end
	for k,_ in pairs(struct) do
		assert(keys.FleetCapacity[k], "FleetCapacity contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FleetCapacity
-- <p>Information about the fleet's capacity. Fleet capacity is measured in EC2 instances. By default, new fleets have a capacity of one instance, but can be updated as needed. The maximum number of instances for a fleet is determined by the fleet's instance type.</p>
-- @param _FleetId [FleetId] <p>Unique identifier for a fleet.</p>
-- @param _InstanceType [EC2InstanceType] <p>Name of an EC2 instance type that is supported in Amazon GameLift. A fleet instance type determines the computing resources of each instance in the fleet, including CPU, memory, storage, and networking capacity. Amazon GameLift supports the following EC2 instance types. See <a href="http://aws.amazon.com/ec2/instance-types/">Amazon EC2 Instance Types</a> for detailed descriptions.</p>
-- @param _InstanceCounts [EC2InstanceCounts] <p>Current status of fleet capacity.</p>
function M.FleetCapacity(_FleetId, _InstanceType, _InstanceCounts, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating FleetCapacity")
	local t = { 
		["FleetId"] = _FleetId,
		["InstanceType"] = _InstanceType,
		["InstanceCounts"] = _InstanceCounts,
	}
	asserts.AssertFleetCapacity(t)
	return t
end

keys.CreateGameSessionQueueOutput = { ["GameSessionQueue"] = true, nil }

function asserts.AssertCreateGameSessionQueueOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateGameSessionQueueOutput to be of type 'table'")
	if struct["GameSessionQueue"] then asserts.AssertGameSessionQueue(struct["GameSessionQueue"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateGameSessionQueueOutput[k], "CreateGameSessionQueueOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateGameSessionQueueOutput
-- <p>Represents the returned data in response to a request action.</p>
-- @param _GameSessionQueue [GameSessionQueue] <p>Object that describes the newly created game session queue.</p>
function M.CreateGameSessionQueueOutput(_GameSessionQueue, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateGameSessionQueueOutput")
	local t = { 
		["GameSessionQueue"] = _GameSessionQueue,
	}
	asserts.AssertCreateGameSessionQueueOutput(t)
	return t
end

keys.DeleteFleetInput = { ["FleetId"] = true, nil }

function asserts.AssertDeleteFleetInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteFleetInput to be of type 'table'")
	assert(struct["FleetId"], "Expected key FleetId to exist in table")
	if struct["FleetId"] then asserts.AssertFleetId(struct["FleetId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteFleetInput[k], "DeleteFleetInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteFleetInput
-- <p>Represents the input for a request action.</p>
-- @param _FleetId [FleetId] <p>Unique identifier for a fleet to be deleted.</p>
-- Required parameter: FleetId
function M.DeleteFleetInput(_FleetId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteFleetInput")
	local t = { 
		["FleetId"] = _FleetId,
	}
	asserts.AssertDeleteFleetInput(t)
	return t
end

keys.DescribeFleetPortSettingsInput = { ["FleetId"] = true, nil }

function asserts.AssertDescribeFleetPortSettingsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeFleetPortSettingsInput to be of type 'table'")
	assert(struct["FleetId"], "Expected key FleetId to exist in table")
	if struct["FleetId"] then asserts.AssertFleetId(struct["FleetId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeFleetPortSettingsInput[k], "DescribeFleetPortSettingsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeFleetPortSettingsInput
-- <p>Represents the input for a request action.</p>
-- @param _FleetId [FleetId] <p>Unique identifier for a fleet to retrieve port settings for.</p>
-- Required parameter: FleetId
function M.DescribeFleetPortSettingsInput(_FleetId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeFleetPortSettingsInput")
	local t = { 
		["FleetId"] = _FleetId,
	}
	asserts.AssertDescribeFleetPortSettingsInput(t)
	return t
end

keys.DescribeFleetCapacityOutput = { ["NextToken"] = true, ["FleetCapacity"] = true, nil }

function asserts.AssertDescribeFleetCapacityOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeFleetCapacityOutput to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNonZeroAndMaxString(struct["NextToken"]) end
	if struct["FleetCapacity"] then asserts.AssertFleetCapacityList(struct["FleetCapacity"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeFleetCapacityOutput[k], "DescribeFleetCapacityOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeFleetCapacityOutput
-- <p>Represents the returned data in response to a request action.</p>
-- @param _NextToken [NonZeroAndMaxString] <p>Token that indicates where to resume retrieving results on the next call to this action. If no token is returned, these results represent the end of the list.</p>
-- @param _FleetCapacity [FleetCapacityList] <p>Collection of objects containing capacity information for each requested fleet ID. Leave this parameter empty to retrieve capacity information for all fleets.</p>
function M.DescribeFleetCapacityOutput(_NextToken, _FleetCapacity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeFleetCapacityOutput")
	local t = { 
		["NextToken"] = _NextToken,
		["FleetCapacity"] = _FleetCapacity,
	}
	asserts.AssertDescribeFleetCapacityOutput(t)
	return t
end

keys.DeleteBuildInput = { ["BuildId"] = true, nil }

function asserts.AssertDeleteBuildInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteBuildInput to be of type 'table'")
	assert(struct["BuildId"], "Expected key BuildId to exist in table")
	if struct["BuildId"] then asserts.AssertBuildId(struct["BuildId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteBuildInput[k], "DeleteBuildInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteBuildInput
-- <p>Represents the input for a request action.</p>
-- @param _BuildId [BuildId] <p>Unique identifier for a build to delete.</p>
-- Required parameter: BuildId
function M.DeleteBuildInput(_BuildId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteBuildInput")
	local t = { 
		["BuildId"] = _BuildId,
	}
	asserts.AssertDeleteBuildInput(t)
	return t
end

keys.UpdateFleetAttributesInput = { ["Name"] = true, ["MetricGroups"] = true, ["NewGameSessionProtectionPolicy"] = true, ["FleetId"] = true, ["ResourceCreationLimitPolicy"] = true, ["Description"] = true, nil }

function asserts.AssertUpdateFleetAttributesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateFleetAttributesInput to be of type 'table'")
	assert(struct["FleetId"], "Expected key FleetId to exist in table")
	if struct["Name"] then asserts.AssertNonZeroAndMaxString(struct["Name"]) end
	if struct["MetricGroups"] then asserts.AssertMetricGroupList(struct["MetricGroups"]) end
	if struct["NewGameSessionProtectionPolicy"] then asserts.AssertProtectionPolicy(struct["NewGameSessionProtectionPolicy"]) end
	if struct["FleetId"] then asserts.AssertFleetId(struct["FleetId"]) end
	if struct["ResourceCreationLimitPolicy"] then asserts.AssertResourceCreationLimitPolicy(struct["ResourceCreationLimitPolicy"]) end
	if struct["Description"] then asserts.AssertNonZeroAndMaxString(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateFleetAttributesInput[k], "UpdateFleetAttributesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateFleetAttributesInput
-- <p>Represents the input for a request action.</p>
-- @param _Name [NonZeroAndMaxString] <p>Descriptive label that is associated with a fleet. Fleet names do not need to be unique.</p>
-- @param _MetricGroups [MetricGroupList] <p>Names of metric groups to include this fleet with. A fleet metric group is used in Amazon CloudWatch to aggregate metrics from multiple fleets. Use an existing metric group name to add this fleet to the group, or use a new name to create a new metric group. Currently, a fleet can only be included in one metric group at a time.</p>
-- @param _NewGameSessionProtectionPolicy [ProtectionPolicy] <p>Game session protection policy to apply to all new instances created in this fleet. Instances that already exist are not affected. You can set protection for individual instances using <a>UpdateGameSession</a>.</p> <ul> <li> <p> <b>NoProtection</b> – The game session can be terminated during a scale-down event.</p> </li> <li> <p> <b>FullProtection</b> – If the game session is in an <code>ACTIVE</code> status, it cannot be terminated during a scale-down event.</p> </li> </ul>
-- @param _FleetId [FleetId] <p>Unique identifier for a fleet to update attribute metadata for.</p>
-- @param _ResourceCreationLimitPolicy [ResourceCreationLimitPolicy] <p>Policy that limits the number of game sessions an individual player can create over a span of time. </p>
-- @param _Description [NonZeroAndMaxString] <p>Human-readable description of a fleet.</p>
-- Required parameter: FleetId
function M.UpdateFleetAttributesInput(_Name, _MetricGroups, _NewGameSessionProtectionPolicy, _FleetId, _ResourceCreationLimitPolicy, _Description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateFleetAttributesInput")
	local t = { 
		["Name"] = _Name,
		["MetricGroups"] = _MetricGroups,
		["NewGameSessionProtectionPolicy"] = _NewGameSessionProtectionPolicy,
		["FleetId"] = _FleetId,
		["ResourceCreationLimitPolicy"] = _ResourceCreationLimitPolicy,
		["Description"] = _Description,
	}
	asserts.AssertUpdateFleetAttributesInput(t)
	return t
end

keys.DescribeGameSessionsOutput = { ["GameSessions"] = true, ["NextToken"] = true, nil }

function asserts.AssertDescribeGameSessionsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeGameSessionsOutput to be of type 'table'")
	if struct["GameSessions"] then asserts.AssertGameSessionList(struct["GameSessions"]) end
	if struct["NextToken"] then asserts.AssertNonZeroAndMaxString(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeGameSessionsOutput[k], "DescribeGameSessionsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeGameSessionsOutput
-- <p>Represents the returned data in response to a request action.</p>
-- @param _GameSessions [GameSessionList] <p>Collection of objects containing game session properties for each session matching the request.</p>
-- @param _NextToken [NonZeroAndMaxString] <p>Token that indicates where to resume retrieving results on the next call to this action. If no token is returned, these results represent the end of the list.</p>
function M.DescribeGameSessionsOutput(_GameSessions, _NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeGameSessionsOutput")
	local t = { 
		["GameSessions"] = _GameSessions,
		["NextToken"] = _NextToken,
	}
	asserts.AssertDescribeGameSessionsOutput(t)
	return t
end

keys.ResourceCreationLimitPolicy = { ["NewGameSessionsPerCreator"] = true, ["PolicyPeriodInMinutes"] = true, nil }

function asserts.AssertResourceCreationLimitPolicy(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceCreationLimitPolicy to be of type 'table'")
	if struct["NewGameSessionsPerCreator"] then asserts.AssertWholeNumber(struct["NewGameSessionsPerCreator"]) end
	if struct["PolicyPeriodInMinutes"] then asserts.AssertWholeNumber(struct["PolicyPeriodInMinutes"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResourceCreationLimitPolicy[k], "ResourceCreationLimitPolicy contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceCreationLimitPolicy
-- <p>Policy that limits the number of game sessions a player can create on the same fleet. This optional policy gives game owners control over how players can consume available game server resources. A resource creation policy makes the following statement: "An individual player can create a maximum number of new game sessions within a specified time period".</p> <p>The policy is evaluated when a player tries to create a new game session. For example, with a policy of 10 new game sessions and a time period of 60 minutes, on receiving a <code>CreateGameSession</code> request, Amazon GameLift checks that the player (identified by <code>CreatorId</code>) has created fewer than 10 game sessions in the past 60 minutes.</p>
-- @param _NewGameSessionsPerCreator [WholeNumber] <p>Maximum number of game sessions that an individual can create during the policy period. </p>
-- @param _PolicyPeriodInMinutes [WholeNumber] <p>Time span used in evaluating the resource creation limit policy. </p>
function M.ResourceCreationLimitPolicy(_NewGameSessionsPerCreator, _PolicyPeriodInMinutes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceCreationLimitPolicy")
	local t = { 
		["NewGameSessionsPerCreator"] = _NewGameSessionsPerCreator,
		["PolicyPeriodInMinutes"] = _PolicyPeriodInMinutes,
	}
	asserts.AssertResourceCreationLimitPolicy(t)
	return t
end

keys.EC2InstanceCounts = { ["TERMINATING"] = true, ["MAXIMUM"] = true, ["DESIRED"] = true, ["IDLE"] = true, ["MINIMUM"] = true, ["ACTIVE"] = true, ["PENDING"] = true, nil }

function asserts.AssertEC2InstanceCounts(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EC2InstanceCounts to be of type 'table'")
	if struct["TERMINATING"] then asserts.AssertWholeNumber(struct["TERMINATING"]) end
	if struct["MAXIMUM"] then asserts.AssertWholeNumber(struct["MAXIMUM"]) end
	if struct["DESIRED"] then asserts.AssertWholeNumber(struct["DESIRED"]) end
	if struct["IDLE"] then asserts.AssertWholeNumber(struct["IDLE"]) end
	if struct["MINIMUM"] then asserts.AssertWholeNumber(struct["MINIMUM"]) end
	if struct["ACTIVE"] then asserts.AssertWholeNumber(struct["ACTIVE"]) end
	if struct["PENDING"] then asserts.AssertWholeNumber(struct["PENDING"]) end
	for k,_ in pairs(struct) do
		assert(keys.EC2InstanceCounts[k], "EC2InstanceCounts contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EC2InstanceCounts
-- <p>Current status of fleet capacity. The number of active instances should match or be in the process of matching the number of desired instances. Pending and terminating counts are non-zero only if fleet capacity is adjusting to an <a>UpdateFleetCapacity</a> request, or if access to resources is temporarily affected.</p>
-- @param _TERMINATING [WholeNumber] <p>Number of instances in the fleet that are no longer active but haven't yet been terminated.</p>
-- @param _MAXIMUM [WholeNumber] <p>Maximum value allowed for the fleet's instance count.</p>
-- @param _DESIRED [WholeNumber] <p>Ideal number of active instances in the fleet.</p>
-- @param _IDLE [WholeNumber] <p>Number of active instances in the fleet that are not currently hosting a game session.</p>
-- @param _MINIMUM [WholeNumber] <p>Minimum value allowed for the fleet's instance count.</p>
-- @param _ACTIVE [WholeNumber] <p>Actual number of active instances in the fleet.</p>
-- @param _PENDING [WholeNumber] <p>Number of instances in the fleet that are starting but not yet active.</p>
function M.EC2InstanceCounts(_TERMINATING, _MAXIMUM, _DESIRED, _IDLE, _MINIMUM, _ACTIVE, _PENDING, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EC2InstanceCounts")
	local t = { 
		["TERMINATING"] = _TERMINATING,
		["MAXIMUM"] = _MAXIMUM,
		["DESIRED"] = _DESIRED,
		["IDLE"] = _IDLE,
		["MINIMUM"] = _MINIMUM,
		["ACTIVE"] = _ACTIVE,
		["PENDING"] = _PENDING,
	}
	asserts.AssertEC2InstanceCounts(t)
	return t
end

keys.ResolveAliasOutput = { ["FleetId"] = true, nil }

function asserts.AssertResolveAliasOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResolveAliasOutput to be of type 'table'")
	if struct["FleetId"] then asserts.AssertFleetId(struct["FleetId"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResolveAliasOutput[k], "ResolveAliasOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResolveAliasOutput
-- <p>Represents the returned data in response to a request action.</p>
-- @param _FleetId [FleetId] <p>Fleet identifier that is associated with the requested alias.</p>
function M.ResolveAliasOutput(_FleetId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResolveAliasOutput")
	local t = { 
		["FleetId"] = _FleetId,
	}
	asserts.AssertResolveAliasOutput(t)
	return t
end

keys.InvalidRequestException = { ["Message"] = true, nil }

function asserts.AssertInvalidRequestException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidRequestException to be of type 'table'")
	if struct["Message"] then asserts.AssertNonEmptyString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidRequestException[k], "InvalidRequestException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidRequestException
-- <p>One or more parameter values in the request are invalid. Correct the invalid parameter values before retrying.</p>
-- @param _Message [NonEmptyString] 
function M.InvalidRequestException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidRequestException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertInvalidRequestException(t)
	return t
end

keys.UpdateAliasOutput = { ["Alias"] = true, nil }

function asserts.AssertUpdateAliasOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateAliasOutput to be of type 'table'")
	if struct["Alias"] then asserts.AssertAlias(struct["Alias"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateAliasOutput[k], "UpdateAliasOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateAliasOutput
-- <p>Represents the returned data in response to a request action.</p>
-- @param _Alias [Alias] <p>Object that contains the updated alias configuration.</p>
function M.UpdateAliasOutput(_Alias, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateAliasOutput")
	local t = { 
		["Alias"] = _Alias,
	}
	asserts.AssertUpdateAliasOutput(t)
	return t
end

keys.UpdateAliasInput = { ["RoutingStrategy"] = true, ["AliasId"] = true, ["Name"] = true, ["Description"] = true, nil }

function asserts.AssertUpdateAliasInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateAliasInput to be of type 'table'")
	assert(struct["AliasId"], "Expected key AliasId to exist in table")
	if struct["RoutingStrategy"] then asserts.AssertRoutingStrategy(struct["RoutingStrategy"]) end
	if struct["AliasId"] then asserts.AssertAliasId(struct["AliasId"]) end
	if struct["Name"] then asserts.AssertNonBlankAndLengthConstraintString(struct["Name"]) end
	if struct["Description"] then asserts.AssertNonZeroAndMaxString(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateAliasInput[k], "UpdateAliasInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateAliasInput
-- <p>Represents the input for a request action.</p>
-- @param _RoutingStrategy [RoutingStrategy] <p>Object that specifies the fleet and routing type to use for the alias.</p>
-- @param _AliasId [AliasId] <p>Unique identifier for a fleet alias. Specify the alias you want to update.</p>
-- @param _Name [NonBlankAndLengthConstraintString] <p>Descriptive label that is associated with an alias. Alias names do not need to be unique.</p>
-- @param _Description [NonZeroAndMaxString] <p>Human-readable description of an alias.</p>
-- Required parameter: AliasId
function M.UpdateAliasInput(_RoutingStrategy, _AliasId, _Name, _Description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateAliasInput")
	local t = { 
		["RoutingStrategy"] = _RoutingStrategy,
		["AliasId"] = _AliasId,
		["Name"] = _Name,
		["Description"] = _Description,
	}
	asserts.AssertUpdateAliasInput(t)
	return t
end

keys.GameProperty = { ["Value"] = true, ["Key"] = true, nil }

function asserts.AssertGameProperty(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GameProperty to be of type 'table'")
	assert(struct["Key"], "Expected key Key to exist in table")
	assert(struct["Value"], "Expected key Value to exist in table")
	if struct["Value"] then asserts.AssertGamePropertyValue(struct["Value"]) end
	if struct["Key"] then asserts.AssertGamePropertyKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(keys.GameProperty[k], "GameProperty contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GameProperty
-- <p>Set of key-value pairs containing information a server process requires to set up a game session. This object allows you to pass in any set of data needed for your game. For more information, see the <a href="http://docs.aws.amazon.com/gamelift/latest/developerguide/">Amazon GameLift Developer Guide</a>.</p>
-- @param _Value [GamePropertyValue] <p>TBD</p>
-- @param _Key [GamePropertyKey] <p>TBD</p>
-- Required parameter: Key
-- Required parameter: Value
function M.GameProperty(_Value, _Key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GameProperty")
	local t = { 
		["Value"] = _Value,
		["Key"] = _Key,
	}
	asserts.AssertGameProperty(t)
	return t
end

keys.GameSessionDetail = { ["GameSession"] = true, ["ProtectionPolicy"] = true, nil }

function asserts.AssertGameSessionDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GameSessionDetail to be of type 'table'")
	if struct["GameSession"] then asserts.AssertGameSession(struct["GameSession"]) end
	if struct["ProtectionPolicy"] then asserts.AssertProtectionPolicy(struct["ProtectionPolicy"]) end
	for k,_ in pairs(struct) do
		assert(keys.GameSessionDetail[k], "GameSessionDetail contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GameSessionDetail
-- <p>A game session's properties plus the protection policy currently in force.</p>
-- @param _GameSession [GameSession] <p>Object that describes a game session.</p>
-- @param _ProtectionPolicy [ProtectionPolicy] <p>Current status of protection for the game session.</p> <ul> <li> <p> <b>NoProtection</b> – The game session can be terminated during a scale-down event.</p> </li> <li> <p> <b>FullProtection</b> – If the game session is in an <code>ACTIVE</code> status, it cannot be terminated during a scale-down event.</p> </li> </ul>
function M.GameSessionDetail(_GameSession, _ProtectionPolicy, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GameSessionDetail")
	local t = { 
		["GameSession"] = _GameSession,
		["ProtectionPolicy"] = _ProtectionPolicy,
	}
	asserts.AssertGameSessionDetail(t)
	return t
end

keys.DescribeFleetAttributesInput = { ["FleetIds"] = true, ["NextToken"] = true, ["Limit"] = true, nil }

function asserts.AssertDescribeFleetAttributesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeFleetAttributesInput to be of type 'table'")
	if struct["FleetIds"] then asserts.AssertFleetIdList(struct["FleetIds"]) end
	if struct["NextToken"] then asserts.AssertNonZeroAndMaxString(struct["NextToken"]) end
	if struct["Limit"] then asserts.AssertPositiveInteger(struct["Limit"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeFleetAttributesInput[k], "DescribeFleetAttributesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeFleetAttributesInput
-- <p>Represents the input for a request action.</p>
-- @param _FleetIds [FleetIdList] <p>Unique identifier for a fleet(s) to retrieve attributes for. To request attributes for all fleets, leave this parameter empty.</p>
-- @param _NextToken [NonZeroAndMaxString] <p>Token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this action. To specify the start of the result set, do not specify a value. This parameter is ignored when the request specifies one or a list of fleet IDs.</p>
-- @param _Limit [PositiveInteger] <p>Maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages. This parameter is ignored when the request specifies one or a list of fleet IDs.</p>
function M.DescribeFleetAttributesInput(_FleetIds, _NextToken, _Limit, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeFleetAttributesInput")
	local t = { 
		["FleetIds"] = _FleetIds,
		["NextToken"] = _NextToken,
		["Limit"] = _Limit,
	}
	asserts.AssertDescribeFleetAttributesInput(t)
	return t
end

keys.InvalidGameSessionStatusException = { ["Message"] = true, nil }

function asserts.AssertInvalidGameSessionStatusException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidGameSessionStatusException to be of type 'table'")
	if struct["Message"] then asserts.AssertNonEmptyString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidGameSessionStatusException[k], "InvalidGameSessionStatusException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidGameSessionStatusException
-- <p>The requested operation would cause a conflict with the current state of a resource associated with the request and/or the game instance. Resolve the conflict before retrying.</p>
-- @param _Message [NonEmptyString] 
function M.InvalidGameSessionStatusException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidGameSessionStatusException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertInvalidGameSessionStatusException(t)
	return t
end

keys.DescribeAliasInput = { ["AliasId"] = true, nil }

function asserts.AssertDescribeAliasInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAliasInput to be of type 'table'")
	assert(struct["AliasId"], "Expected key AliasId to exist in table")
	if struct["AliasId"] then asserts.AssertAliasId(struct["AliasId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeAliasInput[k], "DescribeAliasInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAliasInput
-- <p>Represents the input for a request action.</p>
-- @param _AliasId [AliasId] <p>Unique identifier for a fleet alias. Specify the alias you want to retrieve.</p>
-- Required parameter: AliasId
function M.DescribeAliasInput(_AliasId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeAliasInput")
	local t = { 
		["AliasId"] = _AliasId,
	}
	asserts.AssertDescribeAliasInput(t)
	return t
end

keys.GameSession = { ["Status"] = true, ["MaximumPlayerSessionCount"] = true, ["Name"] = true, ["CurrentPlayerSessionCount"] = true, ["TerminationTime"] = true, ["GameProperties"] = true, ["CreationTime"] = true, ["PlayerSessionCreationPolicy"] = true, ["FleetId"] = true, ["CreatorId"] = true, ["GameSessionId"] = true, ["IpAddress"] = true, ["Port"] = true, nil }

function asserts.AssertGameSession(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GameSession to be of type 'table'")
	if struct["Status"] then asserts.AssertGameSessionStatus(struct["Status"]) end
	if struct["MaximumPlayerSessionCount"] then asserts.AssertWholeNumber(struct["MaximumPlayerSessionCount"]) end
	if struct["Name"] then asserts.AssertNonZeroAndMaxString(struct["Name"]) end
	if struct["CurrentPlayerSessionCount"] then asserts.AssertWholeNumber(struct["CurrentPlayerSessionCount"]) end
	if struct["TerminationTime"] then asserts.AssertTimestamp(struct["TerminationTime"]) end
	if struct["GameProperties"] then asserts.AssertGamePropertyList(struct["GameProperties"]) end
	if struct["CreationTime"] then asserts.AssertTimestamp(struct["CreationTime"]) end
	if struct["PlayerSessionCreationPolicy"] then asserts.AssertPlayerSessionCreationPolicy(struct["PlayerSessionCreationPolicy"]) end
	if struct["FleetId"] then asserts.AssertFleetId(struct["FleetId"]) end
	if struct["CreatorId"] then asserts.AssertNonZeroAndMaxString(struct["CreatorId"]) end
	if struct["GameSessionId"] then asserts.AssertNonZeroAndMaxString(struct["GameSessionId"]) end
	if struct["IpAddress"] then asserts.AssertIpAddress(struct["IpAddress"]) end
	if struct["Port"] then asserts.AssertPortNumber(struct["Port"]) end
	for k,_ in pairs(struct) do
		assert(keys.GameSession[k], "GameSession contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GameSession
-- <p>Properties describing a game session.</p>
-- @param _Status [GameSessionStatus] <p>Current status of the game session. A game session must have an <code>ACTIVE</code> status to have player sessions.</p>
-- @param _MaximumPlayerSessionCount [WholeNumber] <p>Maximum number of players that can be connected simultaneously to the game session.</p>
-- @param _Name [NonZeroAndMaxString] <p>Descriptive label that is associated with a game session. Session names do not need to be unique.</p>
-- @param _CurrentPlayerSessionCount [WholeNumber] <p>Number of players currently in the game session.</p>
-- @param _TerminationTime [Timestamp] <p>Time stamp indicating when this data object was terminated. Format is a number expressed in Unix time as milliseconds (for example "1469498468.057").</p>
-- @param _GameProperties [GamePropertyList] <p>Set of developer-defined properties for a game session. These properties are passed to the server process hosting the game session.</p>
-- @param _CreationTime [Timestamp] <p>Time stamp indicating when this data object was created. Format is a number expressed in Unix time as milliseconds (for example "1469498468.057").</p>
-- @param _PlayerSessionCreationPolicy [PlayerSessionCreationPolicy] <p>Indicates whether or not the game session is accepting new players.</p>
-- @param _FleetId [FleetId] <p>Unique identifier for a fleet the game session is running on.</p>
-- @param _CreatorId [NonZeroAndMaxString] <p>Unique identifier for a player. This ID is used to enforce a resource protection policy (if one exists), that limits the number of game sessions a player can create.</p>
-- @param _GameSessionId [NonZeroAndMaxString] <p>Unique identifier for the game session. A game session ID has the following format: <code>arn:aws:gamelift:&lt;region&gt;::gamesession/&lt;fleet ID&gt;/&lt;custom ID string or idempotency token&gt;</code>.</p>
-- @param _IpAddress [IpAddress] <p>IP address of the game session. To connect to a Amazon GameLift game server, an app needs both the IP address and port number.</p>
-- @param _Port [PortNumber] <p>Port number for the game session. To connect to a Amazon GameLift game server, an app needs both the IP address and port number.</p>
function M.GameSession(_Status, _MaximumPlayerSessionCount, _Name, _CurrentPlayerSessionCount, _TerminationTime, _GameProperties, _CreationTime, _PlayerSessionCreationPolicy, _FleetId, _CreatorId, _GameSessionId, _IpAddress, _Port, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GameSession")
	local t = { 
		["Status"] = _Status,
		["MaximumPlayerSessionCount"] = _MaximumPlayerSessionCount,
		["Name"] = _Name,
		["CurrentPlayerSessionCount"] = _CurrentPlayerSessionCount,
		["TerminationTime"] = _TerminationTime,
		["GameProperties"] = _GameProperties,
		["CreationTime"] = _CreationTime,
		["PlayerSessionCreationPolicy"] = _PlayerSessionCreationPolicy,
		["FleetId"] = _FleetId,
		["CreatorId"] = _CreatorId,
		["GameSessionId"] = _GameSessionId,
		["IpAddress"] = _IpAddress,
		["Port"] = _Port,
	}
	asserts.AssertGameSession(t)
	return t
end

keys.DescribeGameSessionQueuesInput = { ["NextToken"] = true, ["Limit"] = true, ["Names"] = true, nil }

function asserts.AssertDescribeGameSessionQueuesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeGameSessionQueuesInput to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNonZeroAndMaxString(struct["NextToken"]) end
	if struct["Limit"] then asserts.AssertPositiveInteger(struct["Limit"]) end
	if struct["Names"] then asserts.AssertGameSessionQueueNameList(struct["Names"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeGameSessionQueuesInput[k], "DescribeGameSessionQueuesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeGameSessionQueuesInput
-- <p>Represents the input for a request action.</p>
-- @param _NextToken [NonZeroAndMaxString] <p>Token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this action. To specify the start of the result set, do not specify a value.</p>
-- @param _Limit [PositiveInteger] <p>Maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
-- @param _Names [GameSessionQueueNameList] <p>List of queue names to retrieve information for. To request settings for all queues, leave this parameter empty.</p>
function M.DescribeGameSessionQueuesInput(_NextToken, _Limit, _Names, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeGameSessionQueuesInput")
	local t = { 
		["NextToken"] = _NextToken,
		["Limit"] = _Limit,
		["Names"] = _Names,
	}
	asserts.AssertDescribeGameSessionQueuesInput(t)
	return t
end

keys.CreatePlayerSessionsOutput = { ["PlayerSessions"] = true, nil }

function asserts.AssertCreatePlayerSessionsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreatePlayerSessionsOutput to be of type 'table'")
	if struct["PlayerSessions"] then asserts.AssertPlayerSessionList(struct["PlayerSessions"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreatePlayerSessionsOutput[k], "CreatePlayerSessionsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreatePlayerSessionsOutput
-- <p>Represents the returned data in response to a request action.</p>
-- @param _PlayerSessions [PlayerSessionList] <p>Collection of player session objects created for the added players.</p>
function M.CreatePlayerSessionsOutput(_PlayerSessions, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreatePlayerSessionsOutput")
	local t = { 
		["PlayerSessions"] = _PlayerSessions,
	}
	asserts.AssertCreatePlayerSessionsOutput(t)
	return t
end

keys.PlayerLatency = { ["PlayerId"] = true, ["LatencyInMilliseconds"] = true, ["RegionIdentifier"] = true, nil }

function asserts.AssertPlayerLatency(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PlayerLatency to be of type 'table'")
	if struct["PlayerId"] then asserts.AssertNonZeroAndMaxString(struct["PlayerId"]) end
	if struct["LatencyInMilliseconds"] then asserts.AssertFloat(struct["LatencyInMilliseconds"]) end
	if struct["RegionIdentifier"] then asserts.AssertNonZeroAndMaxString(struct["RegionIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.PlayerLatency[k], "PlayerLatency contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PlayerLatency
-- <p>Regional latency information for a player, used when requesting a new game session with <a>StartGameSessionPlacement</a>. This value indicates the amount of time lag that exists when the player is connected to a fleet in the specified region. The relative difference between a player's latency values for multiple regions are used to determine which fleets are best suited to place a new game session for the player. </p>
-- @param _PlayerId [NonZeroAndMaxString] <p>Unique identifier for a player associated with the latency data.</p>
-- @param _LatencyInMilliseconds [Float] <p>Amount of time that represents the time lag experienced by the player when connected to the specified region.</p>
-- @param _RegionIdentifier [NonZeroAndMaxString] <p>Name of the region that is associated with the latency value.</p>
function M.PlayerLatency(_PlayerId, _LatencyInMilliseconds, _RegionIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PlayerLatency")
	local t = { 
		["PlayerId"] = _PlayerId,
		["LatencyInMilliseconds"] = _LatencyInMilliseconds,
		["RegionIdentifier"] = _RegionIdentifier,
	}
	asserts.AssertPlayerLatency(t)
	return t
end

keys.GetGameSessionLogUrlOutput = { ["PreSignedUrl"] = true, nil }

function asserts.AssertGetGameSessionLogUrlOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetGameSessionLogUrlOutput to be of type 'table'")
	if struct["PreSignedUrl"] then asserts.AssertNonZeroAndMaxString(struct["PreSignedUrl"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetGameSessionLogUrlOutput[k], "GetGameSessionLogUrlOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetGameSessionLogUrlOutput
-- <p>Represents the returned data in response to a request action.</p>
-- @param _PreSignedUrl [NonZeroAndMaxString] <p>Location of the requested game session logs, available for download.</p>
function M.GetGameSessionLogUrlOutput(_PreSignedUrl, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetGameSessionLogUrlOutput")
	local t = { 
		["PreSignedUrl"] = _PreSignedUrl,
	}
	asserts.AssertGetGameSessionLogUrlOutput(t)
	return t
end

keys.DescribeGameSessionPlacementInput = { ["PlacementId"] = true, nil }

function asserts.AssertDescribeGameSessionPlacementInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeGameSessionPlacementInput to be of type 'table'")
	assert(struct["PlacementId"], "Expected key PlacementId to exist in table")
	if struct["PlacementId"] then asserts.AssertIdStringModel(struct["PlacementId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeGameSessionPlacementInput[k], "DescribeGameSessionPlacementInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeGameSessionPlacementInput
-- <p>Represents the input for a request action.</p>
-- @param _PlacementId [IdStringModel] <p>Unique identifier for a game session placement to retrieve.</p>
-- Required parameter: PlacementId
function M.DescribeGameSessionPlacementInput(_PlacementId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeGameSessionPlacementInput")
	local t = { 
		["PlacementId"] = _PlacementId,
	}
	asserts.AssertDescribeGameSessionPlacementInput(t)
	return t
end

keys.S3Location = { ["RoleArn"] = true, ["Bucket"] = true, ["Key"] = true, nil }

function asserts.AssertS3Location(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected S3Location to be of type 'table'")
	if struct["RoleArn"] then asserts.AssertNonEmptyString(struct["RoleArn"]) end
	if struct["Bucket"] then asserts.AssertNonEmptyString(struct["Bucket"]) end
	if struct["Key"] then asserts.AssertNonEmptyString(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(keys.S3Location[k], "S3Location contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type S3Location
-- <p>Location in Amazon Simple Storage Service (Amazon S3) where build files can be stored for access by Amazon GameLift. This location is specified in a <a>CreateBuild</a> request. For more details, see the <a href="http://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-build-cli-uploading.html#gamelift-build-cli-uploading-create-build">Create a Build with Files in Amazon S3</a>.</p>
-- @param _RoleArn [NonEmptyString] <p>Amazon Resource Name (<a href="http://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html">ARN</a>) for the access role that allows Amazon GameLift to access your S3 bucket.</p>
-- @param _Bucket [NonEmptyString] <p>Amazon S3 bucket identifier. This is the name of your S3 bucket.</p>
-- @param _Key [NonEmptyString] <p>Name of the zip file containing your build files. </p>
function M.S3Location(_RoleArn, _Bucket, _Key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating S3Location")
	local t = { 
		["RoleArn"] = _RoleArn,
		["Bucket"] = _Bucket,
		["Key"] = _Key,
	}
	asserts.AssertS3Location(t)
	return t
end

keys.ListAliasesInput = { ["NextToken"] = true, ["Limit"] = true, ["Name"] = true, ["RoutingStrategyType"] = true, nil }

function asserts.AssertListAliasesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListAliasesInput to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNonEmptyString(struct["NextToken"]) end
	if struct["Limit"] then asserts.AssertPositiveInteger(struct["Limit"]) end
	if struct["Name"] then asserts.AssertNonEmptyString(struct["Name"]) end
	if struct["RoutingStrategyType"] then asserts.AssertRoutingStrategyType(struct["RoutingStrategyType"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListAliasesInput[k], "ListAliasesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListAliasesInput
-- <p>Represents the input for a request action.</p>
-- @param _NextToken [NonEmptyString] <p>Token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this action. To specify the start of the result set, do not specify a value.</p>
-- @param _Limit [PositiveInteger] <p>Maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
-- @param _Name [NonEmptyString] <p>Descriptive label that is associated with an alias. Alias names do not need to be unique.</p>
-- @param _RoutingStrategyType [RoutingStrategyType] <p>Type of routing to filter results on. Use this parameter to retrieve only aliases of a certain type. To retrieve all aliases, leave this parameter empty.</p> <p>Possible routing types include the following:</p> <ul> <li> <p> <b>SIMPLE</b> – The alias resolves to one specific fleet. Use this type when routing to active fleets.</p> </li> <li> <p> <b>TERMINAL</b> – The alias does not resolve to a fleet but instead can be used to display a message to the user. A terminal alias throws a TerminalRoutingStrategyException with the <a>RoutingStrategy</a> message embedded.</p> </li> </ul>
function M.ListAliasesInput(_NextToken, _Limit, _Name, _RoutingStrategyType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListAliasesInput")
	local t = { 
		["NextToken"] = _NextToken,
		["Limit"] = _Limit,
		["Name"] = _Name,
		["RoutingStrategyType"] = _RoutingStrategyType,
	}
	asserts.AssertListAliasesInput(t)
	return t
end

keys.DescribeGameSessionDetailsOutput = { ["NextToken"] = true, ["GameSessionDetails"] = true, nil }

function asserts.AssertDescribeGameSessionDetailsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeGameSessionDetailsOutput to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNonZeroAndMaxString(struct["NextToken"]) end
	if struct["GameSessionDetails"] then asserts.AssertGameSessionDetailList(struct["GameSessionDetails"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeGameSessionDetailsOutput[k], "DescribeGameSessionDetailsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeGameSessionDetailsOutput
-- <p>Represents the returned data in response to a request action.</p>
-- @param _NextToken [NonZeroAndMaxString] <p>Token that indicates where to resume retrieving results on the next call to this action. If no token is returned, these results represent the end of the list.</p>
-- @param _GameSessionDetails [GameSessionDetailList] <p>Collection of objects containing game session properties and the protection policy currently in force for each session matching the request.</p>
function M.DescribeGameSessionDetailsOutput(_NextToken, _GameSessionDetails, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeGameSessionDetailsOutput")
	local t = { 
		["NextToken"] = _NextToken,
		["GameSessionDetails"] = _GameSessionDetails,
	}
	asserts.AssertDescribeGameSessionDetailsOutput(t)
	return t
end

keys.CreateFleetOutput = { ["FleetAttributes"] = true, nil }

function asserts.AssertCreateFleetOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateFleetOutput to be of type 'table'")
	if struct["FleetAttributes"] then asserts.AssertFleetAttributes(struct["FleetAttributes"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateFleetOutput[k], "CreateFleetOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateFleetOutput
-- <p>Represents the returned data in response to a request action.</p>
-- @param _FleetAttributes [FleetAttributes] <p>Properties for the newly created fleet.</p>
function M.CreateFleetOutput(_FleetAttributes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateFleetOutput")
	local t = { 
		["FleetAttributes"] = _FleetAttributes,
	}
	asserts.AssertCreateFleetOutput(t)
	return t
end

keys.DescribeFleetEventsOutput = { ["NextToken"] = true, ["Events"] = true, nil }

function asserts.AssertDescribeFleetEventsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeFleetEventsOutput to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNonZeroAndMaxString(struct["NextToken"]) end
	if struct["Events"] then asserts.AssertEventList(struct["Events"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeFleetEventsOutput[k], "DescribeFleetEventsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeFleetEventsOutput
-- <p>Represents the returned data in response to a request action.</p>
-- @param _NextToken [NonZeroAndMaxString] <p>Token that indicates where to resume retrieving results on the next call to this action. If no token is returned, these results represent the end of the list.</p>
-- @param _Events [EventList] <p>Collection of objects containing event log entries for the specified fleet.</p>
function M.DescribeFleetEventsOutput(_NextToken, _Events, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeFleetEventsOutput")
	local t = { 
		["NextToken"] = _NextToken,
		["Events"] = _Events,
	}
	asserts.AssertDescribeFleetEventsOutput(t)
	return t
end

keys.DescribeRuntimeConfigurationInput = { ["FleetId"] = true, nil }

function asserts.AssertDescribeRuntimeConfigurationInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeRuntimeConfigurationInput to be of type 'table'")
	assert(struct["FleetId"], "Expected key FleetId to exist in table")
	if struct["FleetId"] then asserts.AssertFleetId(struct["FleetId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeRuntimeConfigurationInput[k], "DescribeRuntimeConfigurationInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeRuntimeConfigurationInput
-- <p>Represents the input for a request action.</p>
-- @param _FleetId [FleetId] <p>Unique identifier for a fleet to get the runtime configuration for.</p>
-- Required parameter: FleetId
function M.DescribeRuntimeConfigurationInput(_FleetId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeRuntimeConfigurationInput")
	local t = { 
		["FleetId"] = _FleetId,
	}
	asserts.AssertDescribeRuntimeConfigurationInput(t)
	return t
end

keys.GameSessionFullException = { ["Message"] = true, nil }

function asserts.AssertGameSessionFullException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GameSessionFullException to be of type 'table'")
	if struct["Message"] then asserts.AssertNonEmptyString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.GameSessionFullException[k], "GameSessionFullException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GameSessionFullException
-- <p>The game instance is currently full and cannot allow the requested player(s) to join. Clients can retry such requests immediately or after a waiting period.</p>
-- @param _Message [NonEmptyString] 
function M.GameSessionFullException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GameSessionFullException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertGameSessionFullException(t)
	return t
end

keys.CreateGameSessionInput = { ["MaximumPlayerSessionCount"] = true, ["Name"] = true, ["GameProperties"] = true, ["IdempotencyToken"] = true, ["FleetId"] = true, ["CreatorId"] = true, ["GameSessionId"] = true, ["AliasId"] = true, nil }

function asserts.AssertCreateGameSessionInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateGameSessionInput to be of type 'table'")
	assert(struct["MaximumPlayerSessionCount"], "Expected key MaximumPlayerSessionCount to exist in table")
	if struct["MaximumPlayerSessionCount"] then asserts.AssertWholeNumber(struct["MaximumPlayerSessionCount"]) end
	if struct["Name"] then asserts.AssertNonZeroAndMaxString(struct["Name"]) end
	if struct["GameProperties"] then asserts.AssertGamePropertyList(struct["GameProperties"]) end
	if struct["IdempotencyToken"] then asserts.AssertIdStringModel(struct["IdempotencyToken"]) end
	if struct["FleetId"] then asserts.AssertFleetId(struct["FleetId"]) end
	if struct["CreatorId"] then asserts.AssertNonZeroAndMaxString(struct["CreatorId"]) end
	if struct["GameSessionId"] then asserts.AssertIdStringModel(struct["GameSessionId"]) end
	if struct["AliasId"] then asserts.AssertAliasId(struct["AliasId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateGameSessionInput[k], "CreateGameSessionInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateGameSessionInput
-- <p>Represents the input for a request action.</p>
-- @param _MaximumPlayerSessionCount [WholeNumber] <p>Maximum number of players that can be connected simultaneously to the game session.</p>
-- @param _Name [NonZeroAndMaxString] <p>Descriptive label that is associated with a game session. Session names do not need to be unique.</p>
-- @param _GameProperties [GamePropertyList] <p>Set of developer-defined properties for a game session. These properties are passed to the server process hosting the game session.</p>
-- @param _IdempotencyToken [IdStringModel] <p>Custom string that uniquely identifies a request for a new game session. Maximum token length is 48 characters. If provided, this string is included in the new game session's ID. (A game session ID has the following format: <code>arn:aws:gamelift:&lt;region&gt;::gamesession/&lt;fleet ID&gt;/&lt;custom ID string or idempotency token&gt;</code>.) </p>
-- @param _FleetId [FleetId] <p>Unique identifier for a fleet to create a game session in. Each request must reference either a fleet ID or alias ID, but not both.</p>
-- @param _CreatorId [NonZeroAndMaxString] <p>Unique identifier for a player or entity creating the game session. This ID is used to enforce a resource protection policy (if one exists) that limits the number of concurrent active game sessions one player can have.</p>
-- @param _GameSessionId [IdStringModel] <p> <i>This parameter is no longer preferred. Please use <code>IdempotencyToken</code> instead.</i> Custom string that uniquely identifies a request for a new game session. Maximum token length is 48 characters. If provided, this string is included in the new game session's ID. (A game session ID has the following format: <code>arn:aws:gamelift:&lt;region&gt;::gamesession/&lt;fleet ID&gt;/&lt;custom ID string or idempotency token&gt;</code>.) </p>
-- @param _AliasId [AliasId] <p>Unique identifier for an alias associated with the fleet to create a game session in. Each request must reference either a fleet ID or alias ID, but not both.</p>
-- Required parameter: MaximumPlayerSessionCount
function M.CreateGameSessionInput(_MaximumPlayerSessionCount, _Name, _GameProperties, _IdempotencyToken, _FleetId, _CreatorId, _GameSessionId, _AliasId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateGameSessionInput")
	local t = { 
		["MaximumPlayerSessionCount"] = _MaximumPlayerSessionCount,
		["Name"] = _Name,
		["GameProperties"] = _GameProperties,
		["IdempotencyToken"] = _IdempotencyToken,
		["FleetId"] = _FleetId,
		["CreatorId"] = _CreatorId,
		["GameSessionId"] = _GameSessionId,
		["AliasId"] = _AliasId,
	}
	asserts.AssertCreateGameSessionInput(t)
	return t
end

keys.DeleteGameSessionQueueOutput = { nil }

function asserts.AssertDeleteGameSessionQueueOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteGameSessionQueueOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteGameSessionQueueOutput[k], "DeleteGameSessionQueueOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteGameSessionQueueOutput
--  
function M.DeleteGameSessionQueueOutput(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteGameSessionQueueOutput")
	local t = { 
	}
	asserts.AssertDeleteGameSessionQueueOutput(t)
	return t
end

keys.CreateGameSessionOutput = { ["GameSession"] = true, nil }

function asserts.AssertCreateGameSessionOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateGameSessionOutput to be of type 'table'")
	if struct["GameSession"] then asserts.AssertGameSession(struct["GameSession"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateGameSessionOutput[k], "CreateGameSessionOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateGameSessionOutput
-- <p>Represents the returned data in response to a request action.</p>
-- @param _GameSession [GameSession] <p>Object that describes the newly created game session record.</p>
function M.CreateGameSessionOutput(_GameSession, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateGameSessionOutput")
	local t = { 
		["GameSession"] = _GameSession,
	}
	asserts.AssertCreateGameSessionOutput(t)
	return t
end

keys.UpdateFleetPortSettingsInput = { ["InboundPermissionRevocations"] = true, ["FleetId"] = true, ["InboundPermissionAuthorizations"] = true, nil }

function asserts.AssertUpdateFleetPortSettingsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateFleetPortSettingsInput to be of type 'table'")
	assert(struct["FleetId"], "Expected key FleetId to exist in table")
	if struct["InboundPermissionRevocations"] then asserts.AssertIpPermissionsList(struct["InboundPermissionRevocations"]) end
	if struct["FleetId"] then asserts.AssertFleetId(struct["FleetId"]) end
	if struct["InboundPermissionAuthorizations"] then asserts.AssertIpPermissionsList(struct["InboundPermissionAuthorizations"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateFleetPortSettingsInput[k], "UpdateFleetPortSettingsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateFleetPortSettingsInput
-- <p>Represents the input for a request action.</p>
-- @param _InboundPermissionRevocations [IpPermissionsList] <p>Collection of port settings to be removed from the fleet record.</p>
-- @param _FleetId [FleetId] <p>Unique identifier for a fleet to update port settings for.</p>
-- @param _InboundPermissionAuthorizations [IpPermissionsList] <p>Collection of port settings to be added to the fleet record.</p>
-- Required parameter: FleetId
function M.UpdateFleetPortSettingsInput(_InboundPermissionRevocations, _FleetId, _InboundPermissionAuthorizations, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateFleetPortSettingsInput")
	local t = { 
		["InboundPermissionRevocations"] = _InboundPermissionRevocations,
		["FleetId"] = _FleetId,
		["InboundPermissionAuthorizations"] = _InboundPermissionAuthorizations,
	}
	asserts.AssertUpdateFleetPortSettingsInput(t)
	return t
end

keys.ConflictException = { ["Message"] = true, nil }

function asserts.AssertConflictException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConflictException to be of type 'table'")
	if struct["Message"] then asserts.AssertNonEmptyString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ConflictException[k], "ConflictException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConflictException
-- <p>The requested operation would cause a conflict with the current state of a service resource associated with the request. Resolve the conflict before retrying this request.</p>
-- @param _Message [NonEmptyString] 
function M.ConflictException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ConflictException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertConflictException(t)
	return t
end

keys.SearchGameSessionsInput = { ["FilterExpression"] = true, ["SortExpression"] = true, ["FleetId"] = true, ["Limit"] = true, ["NextToken"] = true, ["AliasId"] = true, nil }

function asserts.AssertSearchGameSessionsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SearchGameSessionsInput to be of type 'table'")
	if struct["FilterExpression"] then asserts.AssertNonZeroAndMaxString(struct["FilterExpression"]) end
	if struct["SortExpression"] then asserts.AssertNonZeroAndMaxString(struct["SortExpression"]) end
	if struct["FleetId"] then asserts.AssertFleetId(struct["FleetId"]) end
	if struct["Limit"] then asserts.AssertPositiveInteger(struct["Limit"]) end
	if struct["NextToken"] then asserts.AssertNonZeroAndMaxString(struct["NextToken"]) end
	if struct["AliasId"] then asserts.AssertAliasId(struct["AliasId"]) end
	for k,_ in pairs(struct) do
		assert(keys.SearchGameSessionsInput[k], "SearchGameSessionsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SearchGameSessionsInput
-- <p>Represents the input for a request action.</p>
-- @param _FilterExpression [NonZeroAndMaxString] <p>String containing the search criteria for the session search. If no filter expression is included, the request returns results for all game sessions in the fleet that are in <code>ACTIVE</code> status.</p> <p>A filter expression can contain one or multiple conditions. Each condition consists of the following:</p> <ul> <li> <p> <b>Operand</b> -- Name of a game session attribute. Valid values are <code>gameSessionName</code>, <code>gameSessionId</code>, <code>creationTimeMillis</code>, <code>playerSessionCount</code>, <code>maximumSessions</code>, <code>hasAvailablePlayerSessions</code>.</p> </li> <li> <p> <b>Comparator</b> -- Valid comparators are: <code>=</code>, <code>&lt;&gt;</code>, <code>&lt;</code>, <code>&gt;</code>, <code>&lt;=</code>, <code>&gt;=</code>. </p> </li> <li> <p> <b>Value</b> -- Value to be searched for. Values can be numbers, boolean values (true/false) or strings. String values are case sensitive, enclosed in single quotes. Special characters must be escaped. Boolean and string values can only be used with the comparators <code>=</code> and <code>&lt;&gt;</code>. For example, the following filter expression searches on <code>gameSessionName</code>: "<code>FilterExpression": "gameSessionName = 'Matt\\'s Awesome Game 1'"</code>. </p> </li> </ul> <p>To chain multiple conditions in a single expression, use the logical keywords <code>AND</code>, <code>OR</code>, and <code>NOT</code> and parentheses as needed. For example: <code>x AND y AND NOT z</code>, <code>NOT (x OR y)</code>.</p> <p>Session search evaluates conditions from left to right using the following precedence rules:</p> <ol> <li> <p> <code>=</code>, <code>&lt;&gt;</code>, <code>&lt;</code>, <code>&gt;</code>, <code>&lt;=</code>, <code>&gt;=</code> </p> </li> <li> <p>Parentheses</p> </li> <li> <p>NOT</p> </li> <li> <p>AND</p> </li> <li> <p>OR</p> </li> </ol> <p>For example, this filter expression retrieves game sessions hosting at least ten players that have an open player slot: <code>"maximumSessions&gt;=10 AND hasAvailablePlayerSessions=true"</code>. </p>
-- @param _SortExpression [NonZeroAndMaxString] <p>Instructions on how to sort the search results. If no sort expression is included, the request returns results in random order. A sort expression consists of the following elements:</p> <ul> <li> <p> <b>Operand</b> -- Name of a game session attribute. Valid values are <code>gameSessionName</code>, <code>gameSessionId</code>, <code>creationTimeMillis</code>, <code>playerSessionCount</code>, <code>maximumSessions</code>, <code>hasAvailablePlayerSessions</code>.</p> </li> <li> <p> <b>Order</b> -- Valid sort orders are <code>ASC</code> (ascending) and <code>DESC</code> (descending).</p> </li> </ul> <p>For example, this sort expression returns the oldest active sessions first: <code>"SortExpression": "creationTimeMillis ASC"</code>. Results with a null value for the sort operand are returned at the end of the list.</p>
-- @param _FleetId [FleetId] <p>Unique identifier for a fleet to search for active game sessions. Each request must reference either a fleet ID or alias ID, but not both.</p>
-- @param _Limit [PositiveInteger] <p>Maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages. The maximum number of results returned is 20, even if this value is not set or is set higher than 20. </p>
-- @param _NextToken [NonZeroAndMaxString] <p>Token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this action. To specify the start of the result set, do not specify a value.</p>
-- @param _AliasId [AliasId] <p>Unique identifier for an alias associated with the fleet to search for active game sessions. Each request must reference either a fleet ID or alias ID, but not both.</p>
function M.SearchGameSessionsInput(_FilterExpression, _SortExpression, _FleetId, _Limit, _NextToken, _AliasId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SearchGameSessionsInput")
	local t = { 
		["FilterExpression"] = _FilterExpression,
		["SortExpression"] = _SortExpression,
		["FleetId"] = _FleetId,
		["Limit"] = _Limit,
		["NextToken"] = _NextToken,
		["AliasId"] = _AliasId,
	}
	asserts.AssertSearchGameSessionsInput(t)
	return t
end

keys.DescribeFleetUtilizationOutput = { ["FleetUtilization"] = true, ["NextToken"] = true, nil }

function asserts.AssertDescribeFleetUtilizationOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeFleetUtilizationOutput to be of type 'table'")
	if struct["FleetUtilization"] then asserts.AssertFleetUtilizationList(struct["FleetUtilization"]) end
	if struct["NextToken"] then asserts.AssertNonZeroAndMaxString(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeFleetUtilizationOutput[k], "DescribeFleetUtilizationOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeFleetUtilizationOutput
-- <p>Represents the returned data in response to a request action.</p>
-- @param _FleetUtilization [FleetUtilizationList] <p>Collection of objects containing utilization information for each requested fleet ID.</p>
-- @param _NextToken [NonZeroAndMaxString] <p>Token that indicates where to resume retrieving results on the next call to this action. If no token is returned, these results represent the end of the list.</p>
function M.DescribeFleetUtilizationOutput(_FleetUtilization, _NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeFleetUtilizationOutput")
	local t = { 
		["FleetUtilization"] = _FleetUtilization,
		["NextToken"] = _NextToken,
	}
	asserts.AssertDescribeFleetUtilizationOutput(t)
	return t
end

keys.UpdateGameSessionInput = { ["MaximumPlayerSessionCount"] = true, ["PlayerSessionCreationPolicy"] = true, ["GameSessionId"] = true, ["Name"] = true, ["ProtectionPolicy"] = true, nil }

function asserts.AssertUpdateGameSessionInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateGameSessionInput to be of type 'table'")
	assert(struct["GameSessionId"], "Expected key GameSessionId to exist in table")
	if struct["MaximumPlayerSessionCount"] then asserts.AssertWholeNumber(struct["MaximumPlayerSessionCount"]) end
	if struct["PlayerSessionCreationPolicy"] then asserts.AssertPlayerSessionCreationPolicy(struct["PlayerSessionCreationPolicy"]) end
	if struct["GameSessionId"] then asserts.AssertArnStringModel(struct["GameSessionId"]) end
	if struct["Name"] then asserts.AssertNonZeroAndMaxString(struct["Name"]) end
	if struct["ProtectionPolicy"] then asserts.AssertProtectionPolicy(struct["ProtectionPolicy"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateGameSessionInput[k], "UpdateGameSessionInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateGameSessionInput
-- <p>Represents the input for a request action.</p>
-- @param _MaximumPlayerSessionCount [WholeNumber] <p>Maximum number of players that can be connected simultaneously to the game session.</p>
-- @param _PlayerSessionCreationPolicy [PlayerSessionCreationPolicy] <p>Policy determining whether or not the game session accepts new players.</p>
-- @param _GameSessionId [ArnStringModel] <p>Unique identifier for the game session to update.</p>
-- @param _Name [NonZeroAndMaxString] <p>Descriptive label that is associated with a game session. Session names do not need to be unique.</p>
-- @param _ProtectionPolicy [ProtectionPolicy] <p>Game session protection policy to apply to this game session only.</p> <ul> <li> <p> <b>NoProtection</b> – The game session can be terminated during a scale-down event.</p> </li> <li> <p> <b>FullProtection</b> – If the game session is in an <code>ACTIVE</code> status, it cannot be terminated during a scale-down event.</p> </li> </ul>
-- Required parameter: GameSessionId
function M.UpdateGameSessionInput(_MaximumPlayerSessionCount, _PlayerSessionCreationPolicy, _GameSessionId, _Name, _ProtectionPolicy, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateGameSessionInput")
	local t = { 
		["MaximumPlayerSessionCount"] = _MaximumPlayerSessionCount,
		["PlayerSessionCreationPolicy"] = _PlayerSessionCreationPolicy,
		["GameSessionId"] = _GameSessionId,
		["Name"] = _Name,
		["ProtectionPolicy"] = _ProtectionPolicy,
	}
	asserts.AssertUpdateGameSessionInput(t)
	return t
end

keys.UpdateGameSessionOutput = { ["GameSession"] = true, nil }

function asserts.AssertUpdateGameSessionOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateGameSessionOutput to be of type 'table'")
	if struct["GameSession"] then asserts.AssertGameSession(struct["GameSession"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateGameSessionOutput[k], "UpdateGameSessionOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateGameSessionOutput
-- <p>Represents the returned data in response to a request action.</p>
-- @param _GameSession [GameSession] <p>Object that contains the updated game session metadata.</p>
function M.UpdateGameSessionOutput(_GameSession, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateGameSessionOutput")
	local t = { 
		["GameSession"] = _GameSession,
	}
	asserts.AssertUpdateGameSessionOutput(t)
	return t
end

keys.GameSessionQueueDestination = { ["DestinationArn"] = true, nil }

function asserts.AssertGameSessionQueueDestination(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GameSessionQueueDestination to be of type 'table'")
	if struct["DestinationArn"] then asserts.AssertArnStringModel(struct["DestinationArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.GameSessionQueueDestination[k], "GameSessionQueueDestination contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GameSessionQueueDestination
-- <p>Fleet designated in a game session queue. Requests for new game sessions in the queue are fulfilled by starting a new game session on any destination configured for a queue. </p>
-- @param _DestinationArn [ArnStringModel] <p>Amazon Resource Name (ARN) assigned to fleet or fleet alias. ARNs, which include a fleet ID or alias ID and a region name, provide a unique identifier across all regions. </p>
function M.GameSessionQueueDestination(_DestinationArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GameSessionQueueDestination")
	local t = { 
		["DestinationArn"] = _DestinationArn,
	}
	asserts.AssertGameSessionQueueDestination(t)
	return t
end

keys.DescribeGameSessionPlacementOutput = { ["GameSessionPlacement"] = true, nil }

function asserts.AssertDescribeGameSessionPlacementOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeGameSessionPlacementOutput to be of type 'table'")
	if struct["GameSessionPlacement"] then asserts.AssertGameSessionPlacement(struct["GameSessionPlacement"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeGameSessionPlacementOutput[k], "DescribeGameSessionPlacementOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeGameSessionPlacementOutput
-- <p>Represents the returned data in response to a request action.</p>
-- @param _GameSessionPlacement [GameSessionPlacement] <p>Object that describes the requested game session placement.</p>
function M.DescribeGameSessionPlacementOutput(_GameSessionPlacement, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeGameSessionPlacementOutput")
	local t = { 
		["GameSessionPlacement"] = _GameSessionPlacement,
	}
	asserts.AssertDescribeGameSessionPlacementOutput(t)
	return t
end

keys.UpdateFleetCapacityInput = { ["MinSize"] = true, ["MaxSize"] = true, ["FleetId"] = true, ["DesiredInstances"] = true, nil }

function asserts.AssertUpdateFleetCapacityInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateFleetCapacityInput to be of type 'table'")
	assert(struct["FleetId"], "Expected key FleetId to exist in table")
	if struct["MinSize"] then asserts.AssertWholeNumber(struct["MinSize"]) end
	if struct["MaxSize"] then asserts.AssertWholeNumber(struct["MaxSize"]) end
	if struct["FleetId"] then asserts.AssertFleetId(struct["FleetId"]) end
	if struct["DesiredInstances"] then asserts.AssertWholeNumber(struct["DesiredInstances"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateFleetCapacityInput[k], "UpdateFleetCapacityInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateFleetCapacityInput
-- <p>Represents the input for a request action.</p>
-- @param _MinSize [WholeNumber] <p>Minimum value allowed for the fleet's instance count. Default if not set is 0.</p>
-- @param _MaxSize [WholeNumber] <p>Maximum value allowed for the fleet's instance count. Default if not set is 1.</p>
-- @param _FleetId [FleetId] <p>Unique identifier for a fleet to update capacity for.</p>
-- @param _DesiredInstances [WholeNumber] <p>Number of EC2 instances you want this fleet to host.</p>
-- Required parameter: FleetId
function M.UpdateFleetCapacityInput(_MinSize, _MaxSize, _FleetId, _DesiredInstances, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateFleetCapacityInput")
	local t = { 
		["MinSize"] = _MinSize,
		["MaxSize"] = _MaxSize,
		["FleetId"] = _FleetId,
		["DesiredInstances"] = _DesiredInstances,
	}
	asserts.AssertUpdateFleetCapacityInput(t)
	return t
end

keys.GameSessionQueue = { ["Destinations"] = true, ["GameSessionQueueArn"] = true, ["PlayerLatencyPolicies"] = true, ["Name"] = true, ["TimeoutInSeconds"] = true, nil }

function asserts.AssertGameSessionQueue(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GameSessionQueue to be of type 'table'")
	if struct["Destinations"] then asserts.AssertGameSessionQueueDestinationList(struct["Destinations"]) end
	if struct["GameSessionQueueArn"] then asserts.AssertArnStringModel(struct["GameSessionQueueArn"]) end
	if struct["PlayerLatencyPolicies"] then asserts.AssertPlayerLatencyPolicyList(struct["PlayerLatencyPolicies"]) end
	if struct["Name"] then asserts.AssertGameSessionQueueName(struct["Name"]) end
	if struct["TimeoutInSeconds"] then asserts.AssertWholeNumber(struct["TimeoutInSeconds"]) end
	for k,_ in pairs(struct) do
		assert(keys.GameSessionQueue[k], "GameSessionQueue contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GameSessionQueue
-- <p>Configuration of a queue that is used to process game session placement requests. The queue configuration identifies several game features:</p> <ul> <li> <p>The destinations where a new game session can potentially be hosted. Amazon GameLift tries these destinations in an order based on either the queue's default order or player latency information, if provided in a placement request. With latency information, Amazon GameLift can place game sessions where the majority of players are reporting the lowest possible latency. </p> </li> <li> <p>The length of time that placement requests can wait in the queue before timing out. </p> </li> <li> <p>A set of optional latency policies that protect individual players from high latencies, preventing game sessions from being placed where any individual player is reporting latency higher than a policy's maximum.</p> </li> </ul> <p>Queue-related operations include the following:</p> <ul> <li> <p> <a>CreateGameSessionQueue</a> </p> </li> <li> <p> <a>DescribeGameSessionQueues</a> </p> </li> <li> <p> <a>UpdateGameSessionQueue</a> </p> </li> <li> <p> <a>DeleteGameSessionQueue</a> </p> </li> </ul>
-- @param _Destinations [GameSessionQueueDestinationList] <p>List of fleets that can be used to fulfill game session placement requests in the queue. Fleets are identified by either a fleet ARN or a fleet alias ARN. Destinations are listed in default preference order.</p>
-- @param _GameSessionQueueArn [ArnStringModel] <p>Amazon Resource Name (<a href="http://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html">ARN</a>) that is assigned to a game session queue and uniquely identifies it. Format is <code>arn:aws:gamelift:&lt;region&gt;::fleet/fleet-a1234567-b8c9-0d1e-2fa3-b45c6d7e8912</code>.</p>
-- @param _PlayerLatencyPolicies [PlayerLatencyPolicyList] <p>Collection of latency policies to apply when processing game sessions placement requests with player latency information. Multiple policies are evaluated in order of the maximum latency value, starting with the lowest latency values. With just one policy, it is enforced at the start of the game session placement for the duration period. With multiple policies, each policy is enforced consecutively for its duration period. For example, a queue might enforce a 60-second policy followed by a 120-second policy, and then no policy for the remainder of the placement. </p>
-- @param _Name [GameSessionQueueName] <p>Descriptive label that is associated with queue. Queue names must be unique within each region.</p>
-- @param _TimeoutInSeconds [WholeNumber] <p>Maximum time, in seconds, that a new game session placement request remains in the queue. When a request exceeds this time, the game session placement changes to a TIMED_OUT status.</p>
function M.GameSessionQueue(_Destinations, _GameSessionQueueArn, _PlayerLatencyPolicies, _Name, _TimeoutInSeconds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GameSessionQueue")
	local t = { 
		["Destinations"] = _Destinations,
		["GameSessionQueueArn"] = _GameSessionQueueArn,
		["PlayerLatencyPolicies"] = _PlayerLatencyPolicies,
		["Name"] = _Name,
		["TimeoutInSeconds"] = _TimeoutInSeconds,
	}
	asserts.AssertGameSessionQueue(t)
	return t
end

keys.ResolveAliasInput = { ["AliasId"] = true, nil }

function asserts.AssertResolveAliasInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResolveAliasInput to be of type 'table'")
	assert(struct["AliasId"], "Expected key AliasId to exist in table")
	if struct["AliasId"] then asserts.AssertAliasId(struct["AliasId"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResolveAliasInput[k], "ResolveAliasInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResolveAliasInput
-- <p>Represents the input for a request action.</p>
-- @param _AliasId [AliasId] <p>Unique identifier for the alias you want to resolve.</p>
-- Required parameter: AliasId
function M.ResolveAliasInput(_AliasId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResolveAliasInput")
	local t = { 
		["AliasId"] = _AliasId,
	}
	asserts.AssertResolveAliasInput(t)
	return t
end

keys.DescribeInstancesOutput = { ["Instances"] = true, ["NextToken"] = true, nil }

function asserts.AssertDescribeInstancesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeInstancesOutput to be of type 'table'")
	if struct["Instances"] then asserts.AssertInstanceList(struct["Instances"]) end
	if struct["NextToken"] then asserts.AssertNonZeroAndMaxString(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeInstancesOutput[k], "DescribeInstancesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeInstancesOutput
-- <p>Represents the returned data in response to a request action.</p>
-- @param _Instances [InstanceList] <p>Collection of objects containing properties for each instance returned.</p>
-- @param _NextToken [NonZeroAndMaxString] <p>Token that indicates where to resume retrieving results on the next call to this action. If no token is returned, these results represent the end of the list.</p>
function M.DescribeInstancesOutput(_Instances, _NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeInstancesOutput")
	local t = { 
		["Instances"] = _Instances,
		["NextToken"] = _NextToken,
	}
	asserts.AssertDescribeInstancesOutput(t)
	return t
end

keys.ListFleetsOutput = { ["FleetIds"] = true, ["NextToken"] = true, nil }

function asserts.AssertListFleetsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListFleetsOutput to be of type 'table'")
	if struct["FleetIds"] then asserts.AssertFleetIdList(struct["FleetIds"]) end
	if struct["NextToken"] then asserts.AssertNonZeroAndMaxString(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListFleetsOutput[k], "ListFleetsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListFleetsOutput
-- <p>Represents the returned data in response to a request action.</p>
-- @param _FleetIds [FleetIdList] <p>Set of fleet IDs matching the list request. You can retrieve additional information about all returned fleets by passing this result set to a call to <a>DescribeFleetAttributes</a>, <a>DescribeFleetCapacity</a>, or <a>DescribeFleetUtilization</a>.</p>
-- @param _NextToken [NonZeroAndMaxString] <p>Token that indicates where to resume retrieving results on the next call to this action. If no token is returned, these results represent the end of the list.</p>
function M.ListFleetsOutput(_FleetIds, _NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListFleetsOutput")
	local t = { 
		["FleetIds"] = _FleetIds,
		["NextToken"] = _NextToken,
	}
	asserts.AssertListFleetsOutput(t)
	return t
end

keys.UpdateRuntimeConfigurationInput = { ["FleetId"] = true, ["RuntimeConfiguration"] = true, nil }

function asserts.AssertUpdateRuntimeConfigurationInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateRuntimeConfigurationInput to be of type 'table'")
	assert(struct["FleetId"], "Expected key FleetId to exist in table")
	assert(struct["RuntimeConfiguration"], "Expected key RuntimeConfiguration to exist in table")
	if struct["FleetId"] then asserts.AssertFleetId(struct["FleetId"]) end
	if struct["RuntimeConfiguration"] then asserts.AssertRuntimeConfiguration(struct["RuntimeConfiguration"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateRuntimeConfigurationInput[k], "UpdateRuntimeConfigurationInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateRuntimeConfigurationInput
-- <p>Represents the input for a request action.</p>
-- @param _FleetId [FleetId] <p>Unique identifier for a fleet to update runtime configuration for.</p>
-- @param _RuntimeConfiguration [RuntimeConfiguration] <p>Instructions for launching server processes on each instance in the fleet. The runtime configuration for a fleet has a collection of server process configurations, one for each type of server process to run on an instance. A server process configuration specifies the location of the server executable, launch parameters, and the number of concurrent processes with that configuration to maintain on each instance.</p>
-- Required parameter: FleetId
-- Required parameter: RuntimeConfiguration
function M.UpdateRuntimeConfigurationInput(_FleetId, _RuntimeConfiguration, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateRuntimeConfigurationInput")
	local t = { 
		["FleetId"] = _FleetId,
		["RuntimeConfiguration"] = _RuntimeConfiguration,
	}
	asserts.AssertUpdateRuntimeConfigurationInput(t)
	return t
end

keys.GameSessionPlacement = { ["Status"] = true, ["MaximumPlayerSessionCount"] = true, ["PlacedPlayerSessions"] = true, ["PlacementId"] = true, ["GameSessionName"] = true, ["GameSessionQueueName"] = true, ["GameProperties"] = true, ["GameSessionId"] = true, ["StartTime"] = true, ["GameSessionRegion"] = true, ["PlayerLatencies"] = true, ["EndTime"] = true, ["IpAddress"] = true, ["Port"] = true, ["GameSessionArn"] = true, nil }

function asserts.AssertGameSessionPlacement(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GameSessionPlacement to be of type 'table'")
	if struct["Status"] then asserts.AssertGameSessionPlacementState(struct["Status"]) end
	if struct["MaximumPlayerSessionCount"] then asserts.AssertWholeNumber(struct["MaximumPlayerSessionCount"]) end
	if struct["PlacedPlayerSessions"] then asserts.AssertPlacedPlayerSessionList(struct["PlacedPlayerSessions"]) end
	if struct["PlacementId"] then asserts.AssertIdStringModel(struct["PlacementId"]) end
	if struct["GameSessionName"] then asserts.AssertNonZeroAndMaxString(struct["GameSessionName"]) end
	if struct["GameSessionQueueName"] then asserts.AssertGameSessionQueueName(struct["GameSessionQueueName"]) end
	if struct["GameProperties"] then asserts.AssertGamePropertyList(struct["GameProperties"]) end
	if struct["GameSessionId"] then asserts.AssertNonZeroAndMaxString(struct["GameSessionId"]) end
	if struct["StartTime"] then asserts.AssertTimestamp(struct["StartTime"]) end
	if struct["GameSessionRegion"] then asserts.AssertNonZeroAndMaxString(struct["GameSessionRegion"]) end
	if struct["PlayerLatencies"] then asserts.AssertPlayerLatencyList(struct["PlayerLatencies"]) end
	if struct["EndTime"] then asserts.AssertTimestamp(struct["EndTime"]) end
	if struct["IpAddress"] then asserts.AssertIpAddress(struct["IpAddress"]) end
	if struct["Port"] then asserts.AssertPortNumber(struct["Port"]) end
	if struct["GameSessionArn"] then asserts.AssertNonZeroAndMaxString(struct["GameSessionArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.GameSessionPlacement[k], "GameSessionPlacement contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GameSessionPlacement
-- <p>Object that describes a <a>StartGameSessionPlacement</a> request. This object includes the full details of the original request plus the current status and start/end time stamps.</p> <p>Game session placement-related operations include:</p> <ul> <li> <p> <a>StartGameSessionPlacement</a> </p> </li> <li> <p> <a>DescribeGameSessionPlacement</a> </p> </li> <li> <p> <a>StopGameSessionPlacement</a> </p> </li> </ul>
-- @param _Status [GameSessionPlacementState] <p>Current status of the game session placement request.</p> <ul> <li> <p> <b>PENDING</b> – The placement request is currently in the queue waiting to be processed.</p> </li> <li> <p> <b>FULFILLED</b> – A new game session and player sessions (if requested) have been successfully created. Values for <i>GameSessionArn</i> and <i>GameSessionRegion</i> are available. </p> </li> <li> <p> <b>CANCELLED</b> – The placement request was canceled with a call to <a>StopGameSessionPlacement</a>.</p> </li> <li> <p> <b>TIMED_OUT</b> – A new game session was not successfully created before the time limit expired. You can resubmit the placement request as needed.</p> </li> </ul>
-- @param _MaximumPlayerSessionCount [WholeNumber] <p>Maximum number of players that can be connected simultaneously to the game session.</p>
-- @param _PlacedPlayerSessions [PlacedPlayerSessionList] <p>Collection of information on player sessions created in response to the game session placement request. These player sessions are created only once a new game session is successfully placed (placement status is Fulfilled). This information includes the player ID (as provided in the placement request) and the corresponding player session ID. Retrieve full player sessions by calling <a>DescribePlayerSessions</a> with the player session ID.</p>
-- @param _PlacementId [IdStringModel] <p>Unique identifier for a game session placement.</p>
-- @param _GameSessionName [NonZeroAndMaxString] <p>Descriptive label that is associated with a game session. Session names do not need to be unique.</p>
-- @param _GameSessionQueueName [GameSessionQueueName] <p>Descriptive label that is associated with queue. Queue names must be unique within each region.</p>
-- @param _GameProperties [GamePropertyList] <p>Set of developer-defined properties for a game session. These properties are passed to the server process hosting the game session.</p>
-- @param _GameSessionId [NonZeroAndMaxString] <p>Unique identifier for the game session. This value is set once the new game session is placed (placement status is Fulfilled).</p>
-- @param _StartTime [Timestamp] <p>Time stamp indicating when this request was placed in the queue. Format is a number expressed in Unix time as milliseconds (for example "1469498468.057").</p>
-- @param _GameSessionRegion [NonZeroAndMaxString] <p>Name of the region where the game session created by this placement request is running. This value is set once the new game session is placed (placement status is Fulfilled).</p>
-- @param _PlayerLatencies [PlayerLatencyList] <p>Set of values, expressed in milliseconds, indicating the amount of latency that players are experiencing when connected to AWS regions.</p>
-- @param _EndTime [Timestamp] <p>Time stamp indicating when this request was completed, canceled, or timed out.</p>
-- @param _IpAddress [IpAddress] <p>IP address of the game session. To connect to a Amazon GameLift game server, an app needs both the IP address and port number. This value is set once the new game session is placed (placement status is Fulfilled). </p>
-- @param _Port [PortNumber] <p>Port number for the game session. To connect to a Amazon GameLift game server, an app needs both the IP address and port number. This value is set once the new game session is placed (placement status is Fulfilled).</p>
-- @param _GameSessionArn [NonZeroAndMaxString] <p>Identifier for the game session created by this placement request. This value is set once the new game session is placed (placement status is Fulfilled). This identifier is unique across all regions. You can use this value as a <code>GameSessionId</code> value as needed.</p>
function M.GameSessionPlacement(_Status, _MaximumPlayerSessionCount, _PlacedPlayerSessions, _PlacementId, _GameSessionName, _GameSessionQueueName, _GameProperties, _GameSessionId, _StartTime, _GameSessionRegion, _PlayerLatencies, _EndTime, _IpAddress, _Port, _GameSessionArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GameSessionPlacement")
	local t = { 
		["Status"] = _Status,
		["MaximumPlayerSessionCount"] = _MaximumPlayerSessionCount,
		["PlacedPlayerSessions"] = _PlacedPlayerSessions,
		["PlacementId"] = _PlacementId,
		["GameSessionName"] = _GameSessionName,
		["GameSessionQueueName"] = _GameSessionQueueName,
		["GameProperties"] = _GameProperties,
		["GameSessionId"] = _GameSessionId,
		["StartTime"] = _StartTime,
		["GameSessionRegion"] = _GameSessionRegion,
		["PlayerLatencies"] = _PlayerLatencies,
		["EndTime"] = _EndTime,
		["IpAddress"] = _IpAddress,
		["Port"] = _Port,
		["GameSessionArn"] = _GameSessionArn,
	}
	asserts.AssertGameSessionPlacement(t)
	return t
end

keys.DescribeBuildInput = { ["BuildId"] = true, nil }

function asserts.AssertDescribeBuildInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeBuildInput to be of type 'table'")
	assert(struct["BuildId"], "Expected key BuildId to exist in table")
	if struct["BuildId"] then asserts.AssertBuildId(struct["BuildId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeBuildInput[k], "DescribeBuildInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeBuildInput
-- <p>Represents the input for a request action.</p>
-- @param _BuildId [BuildId] <p>Unique identifier for a build to retrieve properties for.</p>
-- Required parameter: BuildId
function M.DescribeBuildInput(_BuildId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeBuildInput")
	local t = { 
		["BuildId"] = _BuildId,
	}
	asserts.AssertDescribeBuildInput(t)
	return t
end

keys.DescribeFleetEventsInput = { ["Limit"] = true, ["EndTime"] = true, ["FleetId"] = true, ["NextToken"] = true, ["StartTime"] = true, nil }

function asserts.AssertDescribeFleetEventsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeFleetEventsInput to be of type 'table'")
	assert(struct["FleetId"], "Expected key FleetId to exist in table")
	if struct["Limit"] then asserts.AssertPositiveInteger(struct["Limit"]) end
	if struct["EndTime"] then asserts.AssertTimestamp(struct["EndTime"]) end
	if struct["FleetId"] then asserts.AssertFleetId(struct["FleetId"]) end
	if struct["NextToken"] then asserts.AssertNonZeroAndMaxString(struct["NextToken"]) end
	if struct["StartTime"] then asserts.AssertTimestamp(struct["StartTime"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeFleetEventsInput[k], "DescribeFleetEventsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeFleetEventsInput
-- <p>Represents the input for a request action.</p>
-- @param _Limit [PositiveInteger] <p>Maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
-- @param _EndTime [Timestamp] <p>Most recent date to retrieve event logs for. If no end time is specified, this call returns entries from the specified start time up to the present. Format is a number expressed in Unix time as milliseconds (ex: "1469498468.057").</p>
-- @param _FleetId [FleetId] <p>Unique identifier for a fleet to get event logs for.</p>
-- @param _NextToken [NonZeroAndMaxString] <p>Token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this action. To specify the start of the result set, do not specify a value.</p>
-- @param _StartTime [Timestamp] <p>Earliest date to retrieve event logs for. If no start time is specified, this call returns entries starting from when the fleet was created to the specified end time. Format is a number expressed in Unix time as milliseconds (ex: "1469498468.057").</p>
-- Required parameter: FleetId
function M.DescribeFleetEventsInput(_Limit, _EndTime, _FleetId, _NextToken, _StartTime, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeFleetEventsInput")
	local t = { 
		["Limit"] = _Limit,
		["EndTime"] = _EndTime,
		["FleetId"] = _FleetId,
		["NextToken"] = _NextToken,
		["StartTime"] = _StartTime,
	}
	asserts.AssertDescribeFleetEventsInput(t)
	return t
end

keys.UnauthorizedException = { ["Message"] = true, nil }

function asserts.AssertUnauthorizedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnauthorizedException to be of type 'table'")
	if struct["Message"] then asserts.AssertNonEmptyString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.UnauthorizedException[k], "UnauthorizedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnauthorizedException
-- <p>The client failed authentication. Clients should not retry such requests.</p>
-- @param _Message [NonEmptyString] 
function M.UnauthorizedException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UnauthorizedException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertUnauthorizedException(t)
	return t
end

keys.CreateAliasInput = { ["RoutingStrategy"] = true, ["Name"] = true, ["Description"] = true, nil }

function asserts.AssertCreateAliasInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateAliasInput to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["RoutingStrategy"], "Expected key RoutingStrategy to exist in table")
	if struct["RoutingStrategy"] then asserts.AssertRoutingStrategy(struct["RoutingStrategy"]) end
	if struct["Name"] then asserts.AssertNonBlankAndLengthConstraintString(struct["Name"]) end
	if struct["Description"] then asserts.AssertNonZeroAndMaxString(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateAliasInput[k], "CreateAliasInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateAliasInput
-- <p>Represents the input for a request action.</p>
-- @param _RoutingStrategy [RoutingStrategy] <p>Object that specifies the fleet and routing type to use for the alias.</p>
-- @param _Name [NonBlankAndLengthConstraintString] <p>Descriptive label that is associated with an alias. Alias names do not need to be unique.</p>
-- @param _Description [NonZeroAndMaxString] <p>Human-readable description of an alias.</p>
-- Required parameter: Name
-- Required parameter: RoutingStrategy
function M.CreateAliasInput(_RoutingStrategy, _Name, _Description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateAliasInput")
	local t = { 
		["RoutingStrategy"] = _RoutingStrategy,
		["Name"] = _Name,
		["Description"] = _Description,
	}
	asserts.AssertCreateAliasInput(t)
	return t
end

keys.DescribePlayerSessionsInput = { ["NextToken"] = true, ["PlayerId"] = true, ["PlayerSessionId"] = true, ["GameSessionId"] = true, ["Limit"] = true, ["PlayerSessionStatusFilter"] = true, nil }

function asserts.AssertDescribePlayerSessionsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribePlayerSessionsInput to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNonZeroAndMaxString(struct["NextToken"]) end
	if struct["PlayerId"] then asserts.AssertNonZeroAndMaxString(struct["PlayerId"]) end
	if struct["PlayerSessionId"] then asserts.AssertPlayerSessionId(struct["PlayerSessionId"]) end
	if struct["GameSessionId"] then asserts.AssertArnStringModel(struct["GameSessionId"]) end
	if struct["Limit"] then asserts.AssertPositiveInteger(struct["Limit"]) end
	if struct["PlayerSessionStatusFilter"] then asserts.AssertNonZeroAndMaxString(struct["PlayerSessionStatusFilter"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribePlayerSessionsInput[k], "DescribePlayerSessionsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribePlayerSessionsInput
-- <p>Represents the input for a request action.</p>
-- @param _NextToken [NonZeroAndMaxString] <p>Token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this action. To specify the start of the result set, do not specify a value. If a player session ID is specified, this parameter is ignored.</p>
-- @param _PlayerId [NonZeroAndMaxString] <p>Unique identifier for a player to retrieve player sessions for.</p>
-- @param _PlayerSessionId [PlayerSessionId] <p>Unique identifier for a player session to retrieve.</p>
-- @param _GameSessionId [ArnStringModel] <p>Unique identifier for the game session to retrieve player sessions for.</p>
-- @param _Limit [PositiveInteger] <p>Maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages. If a player session ID is specified, this parameter is ignored.</p>
-- @param _PlayerSessionStatusFilter [NonZeroAndMaxString] <p>Player session status to filter results on.</p> <p>Possible player session statuses include the following:</p> <ul> <li> <p> <b>RESERVED</b> – The player session request has been received, but the player has not yet connected to the server process and/or been validated. </p> </li> <li> <p> <b>ACTIVE</b> – The player has been validated by the server process and is currently connected.</p> </li> <li> <p> <b>COMPLETED</b> – The player connection has been dropped.</p> </li> <li> <p> <b>TIMEDOUT</b> – A player session request was received, but the player did not connect and/or was not validated within the time-out limit (60 seconds).</p> </li> </ul>
function M.DescribePlayerSessionsInput(_NextToken, _PlayerId, _PlayerSessionId, _GameSessionId, _Limit, _PlayerSessionStatusFilter, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribePlayerSessionsInput")
	local t = { 
		["NextToken"] = _NextToken,
		["PlayerId"] = _PlayerId,
		["PlayerSessionId"] = _PlayerSessionId,
		["GameSessionId"] = _GameSessionId,
		["Limit"] = _Limit,
		["PlayerSessionStatusFilter"] = _PlayerSessionStatusFilter,
	}
	asserts.AssertDescribePlayerSessionsInput(t)
	return t
end

keys.CreateGameSessionQueueInput = { ["Destinations"] = true, ["PlayerLatencyPolicies"] = true, ["Name"] = true, ["TimeoutInSeconds"] = true, nil }

function asserts.AssertCreateGameSessionQueueInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateGameSessionQueueInput to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Destinations"] then asserts.AssertGameSessionQueueDestinationList(struct["Destinations"]) end
	if struct["PlayerLatencyPolicies"] then asserts.AssertPlayerLatencyPolicyList(struct["PlayerLatencyPolicies"]) end
	if struct["Name"] then asserts.AssertGameSessionQueueName(struct["Name"]) end
	if struct["TimeoutInSeconds"] then asserts.AssertWholeNumber(struct["TimeoutInSeconds"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateGameSessionQueueInput[k], "CreateGameSessionQueueInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateGameSessionQueueInput
-- <p>Represents the input for a request action.</p>
-- @param _Destinations [GameSessionQueueDestinationList] <p>List of fleets that can be used to fulfill game session placement requests in the queue. Fleets are identified by either a fleet ARN or a fleet alias ARN. Destinations are listed in default preference order.</p>
-- @param _PlayerLatencyPolicies [PlayerLatencyPolicyList] <p>Collection of latency policies to apply when processing game sessions placement requests with player latency information. Multiple policies are evaluated in order of the maximum latency value, starting with the lowest latency values. With just one policy, it is enforced at the start of the game session placement for the duration period. With multiple policies, each policy is enforced consecutively for its duration period. For example, a queue might enforce a 60-second policy followed by a 120-second policy, and then no policy for the remainder of the placement. A player latency policy must set a value for MaximumIndividualPlayerLatencyMilliseconds; if none is set, this API requests will fail.</p>
-- @param _Name [GameSessionQueueName] <p>Descriptive label that is associated with queue. Queue names must be unique within each region.</p>
-- @param _TimeoutInSeconds [WholeNumber] <p>Maximum time, in seconds, that a new game session placement request remains in the queue. When a request exceeds this time, the game session placement changes to a TIMED_OUT status.</p>
-- Required parameter: Name
function M.CreateGameSessionQueueInput(_Destinations, _PlayerLatencyPolicies, _Name, _TimeoutInSeconds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateGameSessionQueueInput")
	local t = { 
		["Destinations"] = _Destinations,
		["PlayerLatencyPolicies"] = _PlayerLatencyPolicies,
		["Name"] = _Name,
		["TimeoutInSeconds"] = _TimeoutInSeconds,
	}
	asserts.AssertCreateGameSessionQueueInput(t)
	return t
end

keys.RoutingStrategy = { ["FleetId"] = true, ["Message"] = true, ["Type"] = true, nil }

function asserts.AssertRoutingStrategy(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RoutingStrategy to be of type 'table'")
	if struct["FleetId"] then asserts.AssertFleetId(struct["FleetId"]) end
	if struct["Message"] then asserts.AssertFreeText(struct["Message"]) end
	if struct["Type"] then asserts.AssertRoutingStrategyType(struct["Type"]) end
	for k,_ in pairs(struct) do
		assert(keys.RoutingStrategy[k], "RoutingStrategy contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RoutingStrategy
-- <p>Routing configuration for a fleet alias.</p>
-- @param _FleetId [FleetId] <p>Unique identifier for a fleet that the alias points to.</p>
-- @param _Message [FreeText] <p>Message text to be used with a terminal routing strategy.</p>
-- @param _Type [RoutingStrategyType] <p>Type of routing strategy.</p> <p>Possible routing types include the following:</p> <ul> <li> <p> <b>SIMPLE</b> – The alias resolves to one specific fleet. Use this type when routing to active fleets.</p> </li> <li> <p> <b>TERMINAL</b> – The alias does not resolve to a fleet but instead can be used to display a message to the user. A terminal alias throws a TerminalRoutingStrategyException with the <a>RoutingStrategy</a> message embedded.</p> </li> </ul>
function M.RoutingStrategy(_FleetId, _Message, _Type, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RoutingStrategy")
	local t = { 
		["FleetId"] = _FleetId,
		["Message"] = _Message,
		["Type"] = _Type,
	}
	asserts.AssertRoutingStrategy(t)
	return t
end

keys.PlayerSession = { ["Status"] = true, ["PlayerId"] = true, ["TerminationTime"] = true, ["CreationTime"] = true, ["PlayerData"] = true, ["PlayerSessionId"] = true, ["GameSessionId"] = true, ["FleetId"] = true, ["IpAddress"] = true, ["Port"] = true, nil }

function asserts.AssertPlayerSession(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PlayerSession to be of type 'table'")
	if struct["Status"] then asserts.AssertPlayerSessionStatus(struct["Status"]) end
	if struct["PlayerId"] then asserts.AssertNonZeroAndMaxString(struct["PlayerId"]) end
	if struct["TerminationTime"] then asserts.AssertTimestamp(struct["TerminationTime"]) end
	if struct["CreationTime"] then asserts.AssertTimestamp(struct["CreationTime"]) end
	if struct["PlayerData"] then asserts.AssertPlayerData(struct["PlayerData"]) end
	if struct["PlayerSessionId"] then asserts.AssertPlayerSessionId(struct["PlayerSessionId"]) end
	if struct["GameSessionId"] then asserts.AssertNonZeroAndMaxString(struct["GameSessionId"]) end
	if struct["FleetId"] then asserts.AssertFleetId(struct["FleetId"]) end
	if struct["IpAddress"] then asserts.AssertIpAddress(struct["IpAddress"]) end
	if struct["Port"] then asserts.AssertPortNumber(struct["Port"]) end
	for k,_ in pairs(struct) do
		assert(keys.PlayerSession[k], "PlayerSession contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PlayerSession
-- <p>Properties describing a player session. A player session represents either a player reservation for a game session or actual player activity in a game session. A player session object (including player data) is automatically passed to a game session when the player connects to the game session and is validated.</p> <p>Player session-related operations include:</p> <ul> <li> <p> <a>CreatePlayerSession</a> </p> </li> <li> <p> <a>CreatePlayerSessions</a> </p> </li> <li> <p> <a>DescribePlayerSessions</a> </p> </li> </ul>
-- @param _Status [PlayerSessionStatus] <p>Current status of the player session.</p> <p>Possible player session statuses include the following:</p> <ul> <li> <p> <b>RESERVED</b> – The player session request has been received, but the player has not yet connected to the server process and/or been validated. </p> </li> <li> <p> <b>ACTIVE</b> – The player has been validated by the server process and is currently connected.</p> </li> <li> <p> <b>COMPLETED</b> – The player connection has been dropped.</p> </li> <li> <p> <b>TIMEDOUT</b> – A player session request was received, but the player did not connect and/or was not validated within the time-out limit (60 seconds).</p> </li> </ul>
-- @param _PlayerId [NonZeroAndMaxString] <p>Unique identifier for a player that is associated with this player session.</p>
-- @param _TerminationTime [Timestamp] <p>Time stamp indicating when this data object was terminated. Format is a number expressed in Unix time as milliseconds (for example "1469498468.057").</p>
-- @param _CreationTime [Timestamp] <p>Time stamp indicating when this data object was created. Format is a number expressed in Unix time as milliseconds (for example "1469498468.057").</p>
-- @param _PlayerData [PlayerData] <p>Developer-defined information related to a player. Amazon GameLift does not use this data, so it can be formatted as needed for use in the game. </p>
-- @param _PlayerSessionId [PlayerSessionId] <p>Unique identifier for a player session.</p>
-- @param _GameSessionId [NonZeroAndMaxString] <p>Unique identifier for the game session that the player session is connected to.</p>
-- @param _FleetId [FleetId] <p>Unique identifier for a fleet that the player's game session is running on.</p>
-- @param _IpAddress [IpAddress] <p>IP address of the game session. To connect to a Amazon GameLift game server, an app needs both the IP address and port number.</p>
-- @param _Port [PortNumber] <p>Port number for the game session. To connect to a Amazon GameLift server process, an app needs both the IP address and port number.</p>
function M.PlayerSession(_Status, _PlayerId, _TerminationTime, _CreationTime, _PlayerData, _PlayerSessionId, _GameSessionId, _FleetId, _IpAddress, _Port, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PlayerSession")
	local t = { 
		["Status"] = _Status,
		["PlayerId"] = _PlayerId,
		["TerminationTime"] = _TerminationTime,
		["CreationTime"] = _CreationTime,
		["PlayerData"] = _PlayerData,
		["PlayerSessionId"] = _PlayerSessionId,
		["GameSessionId"] = _GameSessionId,
		["FleetId"] = _FleetId,
		["IpAddress"] = _IpAddress,
		["Port"] = _Port,
	}
	asserts.AssertPlayerSession(t)
	return t
end

keys.RequestUploadCredentialsInput = { ["BuildId"] = true, nil }

function asserts.AssertRequestUploadCredentialsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RequestUploadCredentialsInput to be of type 'table'")
	assert(struct["BuildId"], "Expected key BuildId to exist in table")
	if struct["BuildId"] then asserts.AssertBuildId(struct["BuildId"]) end
	for k,_ in pairs(struct) do
		assert(keys.RequestUploadCredentialsInput[k], "RequestUploadCredentialsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RequestUploadCredentialsInput
-- <p>Represents the input for a request action.</p>
-- @param _BuildId [BuildId] <p>Unique identifier for a build to get credentials for.</p>
-- Required parameter: BuildId
function M.RequestUploadCredentialsInput(_BuildId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RequestUploadCredentialsInput")
	local t = { 
		["BuildId"] = _BuildId,
	}
	asserts.AssertRequestUploadCredentialsInput(t)
	return t
end

keys.DescribePlayerSessionsOutput = { ["PlayerSessions"] = true, ["NextToken"] = true, nil }

function asserts.AssertDescribePlayerSessionsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribePlayerSessionsOutput to be of type 'table'")
	if struct["PlayerSessions"] then asserts.AssertPlayerSessionList(struct["PlayerSessions"]) end
	if struct["NextToken"] then asserts.AssertNonZeroAndMaxString(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribePlayerSessionsOutput[k], "DescribePlayerSessionsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribePlayerSessionsOutput
-- <p>Represents the returned data in response to a request action.</p>
-- @param _PlayerSessions [PlayerSessionList] <p>Collection of objects containing properties for each player session that matches the request.</p>
-- @param _NextToken [NonZeroAndMaxString] <p>Token that indicates where to resume retrieving results on the next call to this action. If no token is returned, these results represent the end of the list.</p>
function M.DescribePlayerSessionsOutput(_PlayerSessions, _NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribePlayerSessionsOutput")
	local t = { 
		["PlayerSessions"] = _PlayerSessions,
		["NextToken"] = _NextToken,
	}
	asserts.AssertDescribePlayerSessionsOutput(t)
	return t
end

keys.Alias = { ["Name"] = true, ["AliasArn"] = true, ["CreationTime"] = true, ["LastUpdatedTime"] = true, ["RoutingStrategy"] = true, ["AliasId"] = true, ["Description"] = true, nil }

function asserts.AssertAlias(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Alias to be of type 'table'")
	if struct["Name"] then asserts.AssertNonBlankAndLengthConstraintString(struct["Name"]) end
	if struct["AliasArn"] then asserts.AssertArnStringModel(struct["AliasArn"]) end
	if struct["CreationTime"] then asserts.AssertTimestamp(struct["CreationTime"]) end
	if struct["LastUpdatedTime"] then asserts.AssertTimestamp(struct["LastUpdatedTime"]) end
	if struct["RoutingStrategy"] then asserts.AssertRoutingStrategy(struct["RoutingStrategy"]) end
	if struct["AliasId"] then asserts.AssertAliasId(struct["AliasId"]) end
	if struct["Description"] then asserts.AssertFreeText(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.Alias[k], "Alias contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Alias
-- <p>Properties describing a fleet alias.</p> <p>Alias-related operations include:</p> <ul> <li> <p> <a>CreateAlias</a> </p> </li> <li> <p> <a>ListAliases</a> </p> </li> <li> <p> <a>DescribeAlias</a> </p> </li> <li> <p> <a>UpdateAlias</a> </p> </li> <li> <p> <a>DeleteAlias</a> </p> </li> </ul>
-- @param _Name [NonBlankAndLengthConstraintString] <p>Descriptive label that is associated with an alias. Alias names do not need to be unique.</p>
-- @param _AliasArn [ArnStringModel] <p>Unique identifier for an alias; alias ARNs are unique across all regions.</p>
-- @param _CreationTime [Timestamp] <p>Time stamp indicating when this data object was created. Format is a number expressed in Unix time as milliseconds (for example "1469498468.057").</p>
-- @param _LastUpdatedTime [Timestamp] <p>Time stamp indicating when this data object was last modified. Format is a number expressed in Unix time as milliseconds (for example "1469498468.057").</p>
-- @param _RoutingStrategy [RoutingStrategy] <p>Alias configuration for the alias, including routing type and settings.</p>
-- @param _AliasId [AliasId] <p>Unique identifier for an alias; alias IDs are unique within a region.</p>
-- @param _Description [FreeText] <p>Human-readable description of an alias.</p>
function M.Alias(_Name, _AliasArn, _CreationTime, _LastUpdatedTime, _RoutingStrategy, _AliasId, _Description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Alias")
	local t = { 
		["Name"] = _Name,
		["AliasArn"] = _AliasArn,
		["CreationTime"] = _CreationTime,
		["LastUpdatedTime"] = _LastUpdatedTime,
		["RoutingStrategy"] = _RoutingStrategy,
		["AliasId"] = _AliasId,
		["Description"] = _Description,
	}
	asserts.AssertAlias(t)
	return t
end

keys.RuntimeConfiguration = { ["GameSessionActivationTimeoutSeconds"] = true, ["ServerProcesses"] = true, ["MaxConcurrentGameSessionActivations"] = true, nil }

function asserts.AssertRuntimeConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RuntimeConfiguration to be of type 'table'")
	if struct["GameSessionActivationTimeoutSeconds"] then asserts.AssertGameSessionActivationTimeoutSeconds(struct["GameSessionActivationTimeoutSeconds"]) end
	if struct["ServerProcesses"] then asserts.AssertServerProcessList(struct["ServerProcesses"]) end
	if struct["MaxConcurrentGameSessionActivations"] then asserts.AssertMaxConcurrentGameSessionActivations(struct["MaxConcurrentGameSessionActivations"]) end
	for k,_ in pairs(struct) do
		assert(keys.RuntimeConfiguration[k], "RuntimeConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RuntimeConfiguration
-- <p>Collection of server process configurations that describe what processes should be run on each instance in a fleet. An instance can launch and maintain multiple server processes based on the runtime configuration; it regularly checks for an updated runtime configuration and starts new server processes to match the latest version.</p> <p>The key purpose of a runtime configuration with multiple server process configurations is to be able to run more than one kind of game server in a single fleet. You can include configurations for more than one server executable in order to run two or more different programs to run on the same instance. This option might be useful, for example, to run more than one version of your game server on the same fleet. Another option is to specify configurations for the same server executable but with different launch parameters.</p> <p>A Amazon GameLift instance is limited to 50 processes running simultaneously. To calculate the total number of processes specified in a runtime configuration, add the values of the <code>ConcurrentExecutions</code> parameter for each <code> <a>ServerProcess</a> </code> object in the runtime configuration.</p>
-- @param _GameSessionActivationTimeoutSeconds [GameSessionActivationTimeoutSeconds] <p>Maximum amount of time (in seconds) that a game session can remain in status ACTIVATING. If the game session is not active before the timeout, activation is terminated and the game session status is changed to TERMINATED.</p>
-- @param _ServerProcesses [ServerProcessList] <p>Collection of server process configurations that describe which server processes to run on each instance in a fleet.</p>
-- @param _MaxConcurrentGameSessionActivations [MaxConcurrentGameSessionActivations] <p>Maximum number of game sessions with status ACTIVATING to allow on an instance simultaneously. This setting limits the amount of instance resources that can be used for new game activations at any one time.</p>
function M.RuntimeConfiguration(_GameSessionActivationTimeoutSeconds, _ServerProcesses, _MaxConcurrentGameSessionActivations, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RuntimeConfiguration")
	local t = { 
		["GameSessionActivationTimeoutSeconds"] = _GameSessionActivationTimeoutSeconds,
		["ServerProcesses"] = _ServerProcesses,
		["MaxConcurrentGameSessionActivations"] = _MaxConcurrentGameSessionActivations,
	}
	asserts.AssertRuntimeConfiguration(t)
	return t
end

keys.StopGameSessionPlacementOutput = { ["GameSessionPlacement"] = true, nil }

function asserts.AssertStopGameSessionPlacementOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopGameSessionPlacementOutput to be of type 'table'")
	if struct["GameSessionPlacement"] then asserts.AssertGameSessionPlacement(struct["GameSessionPlacement"]) end
	for k,_ in pairs(struct) do
		assert(keys.StopGameSessionPlacementOutput[k], "StopGameSessionPlacementOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopGameSessionPlacementOutput
-- <p>Represents the returned data in response to a request action.</p>
-- @param _GameSessionPlacement [GameSessionPlacement] <p>Object that describes the canceled game session placement, with Cancelled status and an end time stamp. </p>
function M.StopGameSessionPlacementOutput(_GameSessionPlacement, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StopGameSessionPlacementOutput")
	local t = { 
		["GameSessionPlacement"] = _GameSessionPlacement,
	}
	asserts.AssertStopGameSessionPlacementOutput(t)
	return t
end

keys.CreatePlayerSessionsInput = { ["PlayerIds"] = true, ["GameSessionId"] = true, ["PlayerDataMap"] = true, nil }

function asserts.AssertCreatePlayerSessionsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreatePlayerSessionsInput to be of type 'table'")
	assert(struct["GameSessionId"], "Expected key GameSessionId to exist in table")
	assert(struct["PlayerIds"], "Expected key PlayerIds to exist in table")
	if struct["PlayerIds"] then asserts.AssertPlayerIdList(struct["PlayerIds"]) end
	if struct["GameSessionId"] then asserts.AssertArnStringModel(struct["GameSessionId"]) end
	if struct["PlayerDataMap"] then asserts.AssertPlayerDataMap(struct["PlayerDataMap"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreatePlayerSessionsInput[k], "CreatePlayerSessionsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreatePlayerSessionsInput
-- <p>Represents the input for a request action.</p>
-- @param _PlayerIds [PlayerIdList] <p>List of unique identifiers for the players to be added.</p>
-- @param _GameSessionId [ArnStringModel] <p>Unique identifier for the game session to add players to.</p>
-- @param _PlayerDataMap [PlayerDataMap] <p>Map of string pairs, each specifying a player ID and a set of developer-defined information related to the player. Amazon GameLift does not use this data, so it can be formatted as needed for use in the game. Player data strings for player IDs not included in the <code>PlayerIds</code> parameter are ignored. </p>
-- Required parameter: GameSessionId
-- Required parameter: PlayerIds
function M.CreatePlayerSessionsInput(_PlayerIds, _GameSessionId, _PlayerDataMap, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreatePlayerSessionsInput")
	local t = { 
		["PlayerIds"] = _PlayerIds,
		["GameSessionId"] = _GameSessionId,
		["PlayerDataMap"] = _PlayerDataMap,
	}
	asserts.AssertCreatePlayerSessionsInput(t)
	return t
end

keys.ListAliasesOutput = { ["NextToken"] = true, ["Aliases"] = true, nil }

function asserts.AssertListAliasesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListAliasesOutput to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNonEmptyString(struct["NextToken"]) end
	if struct["Aliases"] then asserts.AssertAliasList(struct["Aliases"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListAliasesOutput[k], "ListAliasesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListAliasesOutput
-- <p>Represents the returned data in response to a request action.</p>
-- @param _NextToken [NonEmptyString] <p>Token that indicates where to resume retrieving results on the next call to this action. If no token is returned, these results represent the end of the list.</p>
-- @param _Aliases [AliasList] <p>Collection of alias records that match the list request.</p>
function M.ListAliasesOutput(_NextToken, _Aliases, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListAliasesOutput")
	local t = { 
		["NextToken"] = _NextToken,
		["Aliases"] = _Aliases,
	}
	asserts.AssertListAliasesOutput(t)
	return t
end

keys.GetInstanceAccessInput = { ["InstanceId"] = true, ["FleetId"] = true, nil }

function asserts.AssertGetInstanceAccessInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetInstanceAccessInput to be of type 'table'")
	assert(struct["FleetId"], "Expected key FleetId to exist in table")
	assert(struct["InstanceId"], "Expected key InstanceId to exist in table")
	if struct["InstanceId"] then asserts.AssertInstanceId(struct["InstanceId"]) end
	if struct["FleetId"] then asserts.AssertFleetId(struct["FleetId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetInstanceAccessInput[k], "GetInstanceAccessInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetInstanceAccessInput
-- <p>Represents the input for a request action.</p>
-- @param _InstanceId [InstanceId] <p>Unique identifier for an instance you want to get access to. You can access an instance in any status.</p>
-- @param _FleetId [FleetId] <p>Unique identifier for a fleet that contains the instance you want access to. The fleet can be in any of the following statuses: <code>ACTIVATING</code>, <code>ACTIVE</code>, or <code>ERROR</code>. Fleets with an <code>ERROR</code> status may be accessible for a short time before they are deleted.</p>
-- Required parameter: FleetId
-- Required parameter: InstanceId
function M.GetInstanceAccessInput(_InstanceId, _FleetId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetInstanceAccessInput")
	local t = { 
		["InstanceId"] = _InstanceId,
		["FleetId"] = _FleetId,
	}
	asserts.AssertGetInstanceAccessInput(t)
	return t
end

keys.InstanceCredentials = { ["UserName"] = true, ["Secret"] = true, nil }

function asserts.AssertInstanceCredentials(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstanceCredentials to be of type 'table'")
	if struct["UserName"] then asserts.AssertNonEmptyString(struct["UserName"]) end
	if struct["Secret"] then asserts.AssertNonEmptyString(struct["Secret"]) end
	for k,_ in pairs(struct) do
		assert(keys.InstanceCredentials[k], "InstanceCredentials contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstanceCredentials
-- <p>Set of credentials required to remotely access a fleet instance. Access credentials are requested by calling <a>GetInstanceAccess</a> and returned in an <a>InstanceAccess</a> object.</p>
-- @param _UserName [NonEmptyString] <p>User login string.</p>
-- @param _Secret [NonEmptyString] <p>Secret string. For Windows instances, the secret is a password for use with Windows Remote Desktop. For Linux instances, it is a private key (which must be saved as a <code>.pem</code> file) for use with SSH.</p>
function M.InstanceCredentials(_UserName, _Secret, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InstanceCredentials")
	local t = { 
		["UserName"] = _UserName,
		["Secret"] = _Secret,
	}
	asserts.AssertInstanceCredentials(t)
	return t
end

keys.CreateFleetInput = { ["EC2InboundPermissions"] = true, ["Name"] = true, ["NewGameSessionProtectionPolicy"] = true, ["BuildId"] = true, ["RuntimeConfiguration"] = true, ["ServerLaunchPath"] = true, ["EC2InstanceType"] = true, ["ResourceCreationLimitPolicy"] = true, ["LogPaths"] = true, ["MetricGroups"] = true, ["ServerLaunchParameters"] = true, ["Description"] = true, nil }

function asserts.AssertCreateFleetInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateFleetInput to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["BuildId"], "Expected key BuildId to exist in table")
	assert(struct["EC2InstanceType"], "Expected key EC2InstanceType to exist in table")
	if struct["EC2InboundPermissions"] then asserts.AssertIpPermissionsList(struct["EC2InboundPermissions"]) end
	if struct["Name"] then asserts.AssertNonZeroAndMaxString(struct["Name"]) end
	if struct["NewGameSessionProtectionPolicy"] then asserts.AssertProtectionPolicy(struct["NewGameSessionProtectionPolicy"]) end
	if struct["BuildId"] then asserts.AssertBuildId(struct["BuildId"]) end
	if struct["RuntimeConfiguration"] then asserts.AssertRuntimeConfiguration(struct["RuntimeConfiguration"]) end
	if struct["ServerLaunchPath"] then asserts.AssertNonZeroAndMaxString(struct["ServerLaunchPath"]) end
	if struct["EC2InstanceType"] then asserts.AssertEC2InstanceType(struct["EC2InstanceType"]) end
	if struct["ResourceCreationLimitPolicy"] then asserts.AssertResourceCreationLimitPolicy(struct["ResourceCreationLimitPolicy"]) end
	if struct["LogPaths"] then asserts.AssertStringList(struct["LogPaths"]) end
	if struct["MetricGroups"] then asserts.AssertMetricGroupList(struct["MetricGroups"]) end
	if struct["ServerLaunchParameters"] then asserts.AssertNonZeroAndMaxString(struct["ServerLaunchParameters"]) end
	if struct["Description"] then asserts.AssertNonZeroAndMaxString(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateFleetInput[k], "CreateFleetInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateFleetInput
-- <p>Represents the input for a request action.</p>
-- @param _EC2InboundPermissions [IpPermissionsList] <p>Range of IP addresses and port settings that permit inbound traffic to access server processes running on the fleet. If no inbound permissions are set, including both IP address range and port range, the server processes in the fleet cannot accept connections. You can specify one or more sets of permissions for a fleet.</p>
-- @param _Name [NonZeroAndMaxString] <p>Descriptive label that is associated with a fleet. Fleet names do not need to be unique.</p>
-- @param _NewGameSessionProtectionPolicy [ProtectionPolicy] <p>Game session protection policy to apply to all instances in this fleet. If this parameter is not set, instances in this fleet default to no protection. You can change a fleet's protection policy using UpdateFleetAttributes, but this change will only affect sessions created after the policy change. You can also set protection for individual instances using <a>UpdateGameSession</a>.</p> <ul> <li> <p> <b>NoProtection</b> – The game session can be terminated during a scale-down event.</p> </li> <li> <p> <b>FullProtection</b> – If the game session is in an <code>ACTIVE</code> status, it cannot be terminated during a scale-down event.</p> </li> </ul>
-- @param _BuildId [BuildId] <p>Unique identifier for a build to be deployed on the new fleet. The build must have been successfully uploaded to Amazon GameLift and be in a <code>READY</code> status. This fleet setting cannot be changed once the fleet is created.</p>
-- @param _RuntimeConfiguration [RuntimeConfiguration] <p>Instructions for launching server processes on each instance in the fleet. The runtime configuration for a fleet has a collection of server process configurations, one for each type of server process to run on an instance. A server process configuration specifies the location of the server executable, launch parameters, and the number of concurrent processes with that configuration to maintain on each instance. A CreateFleet request must include a runtime configuration with at least one server process configuration; otherwise the request will fail with an invalid request exception. (This parameter replaces the parameters <code>ServerLaunchPath</code> and <code>ServerLaunchParameters</code>; requests that contain values for these parameters instead of a runtime configuration will continue to work.) </p>
-- @param _ServerLaunchPath [NonZeroAndMaxString] <p>This parameter is no longer used. Instead, specify a server launch path using the <code>RuntimeConfiguration</code> parameter. (Requests that specify a server launch path and launch parameters instead of a runtime configuration will continue to work.)</p>
-- @param _EC2InstanceType [EC2InstanceType] <p>Name of an EC2 instance type that is supported in Amazon GameLift. A fleet instance type determines the computing resources of each instance in the fleet, including CPU, memory, storage, and networking capacity. Amazon GameLift supports the following EC2 instance types. See <a href="http://aws.amazon.com/ec2/instance-types/">Amazon EC2 Instance Types</a> for detailed descriptions.</p>
-- @param _ResourceCreationLimitPolicy [ResourceCreationLimitPolicy] <p>Policy that limits the number of game sessions an individual player can create over a span of time for this fleet.</p>
-- @param _LogPaths [StringList] <p>This parameter is no longer used. Instead, to specify where Amazon GameLift should store log files once a server process shuts down, use the Amazon GameLift server API <code>ProcessReady()</code> and specify one or more directory paths in <code>logParameters</code>. See more information in the <a href="http://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api-ref.html#gamelift-sdk-server-api-ref-dataypes-process">Server API Reference</a>. </p>
-- @param _MetricGroups [MetricGroupList] <p>Names of metric groups to add this fleet to. Use an existing metric group name to add this fleet to the group, or use a new name to create a new metric group. Currently, a fleet can only be included in one metric group at a time.</p>
-- @param _ServerLaunchParameters [NonZeroAndMaxString] <p>This parameter is no longer used. Instead, specify server launch parameters in the <code>RuntimeConfiguration</code> parameter. (Requests that specify a server launch path and launch parameters instead of a runtime configuration will continue to work.)</p>
-- @param _Description [NonZeroAndMaxString] <p>Human-readable description of a fleet.</p>
-- Required parameter: Name
-- Required parameter: BuildId
-- Required parameter: EC2InstanceType
function M.CreateFleetInput(_EC2InboundPermissions, _Name, _NewGameSessionProtectionPolicy, _BuildId, _RuntimeConfiguration, _ServerLaunchPath, _EC2InstanceType, _ResourceCreationLimitPolicy, _LogPaths, _MetricGroups, _ServerLaunchParameters, _Description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateFleetInput")
	local t = { 
		["EC2InboundPermissions"] = _EC2InboundPermissions,
		["Name"] = _Name,
		["NewGameSessionProtectionPolicy"] = _NewGameSessionProtectionPolicy,
		["BuildId"] = _BuildId,
		["RuntimeConfiguration"] = _RuntimeConfiguration,
		["ServerLaunchPath"] = _ServerLaunchPath,
		["EC2InstanceType"] = _EC2InstanceType,
		["ResourceCreationLimitPolicy"] = _ResourceCreationLimitPolicy,
		["LogPaths"] = _LogPaths,
		["MetricGroups"] = _MetricGroups,
		["ServerLaunchParameters"] = _ServerLaunchParameters,
		["Description"] = _Description,
	}
	asserts.AssertCreateFleetInput(t)
	return t
end

keys.PutScalingPolicyOutput = { ["Name"] = true, nil }

function asserts.AssertPutScalingPolicyOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutScalingPolicyOutput to be of type 'table'")
	if struct["Name"] then asserts.AssertNonZeroAndMaxString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutScalingPolicyOutput[k], "PutScalingPolicyOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutScalingPolicyOutput
-- <p>Represents the returned data in response to a request action.</p>
-- @param _Name [NonZeroAndMaxString] <p>Descriptive label that is associated with a scaling policy. Policy names do not need to be unique.</p>
function M.PutScalingPolicyOutput(_Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutScalingPolicyOutput")
	local t = { 
		["Name"] = _Name,
	}
	asserts.AssertPutScalingPolicyOutput(t)
	return t
end

keys.UpdateFleetPortSettingsOutput = { ["FleetId"] = true, nil }

function asserts.AssertUpdateFleetPortSettingsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateFleetPortSettingsOutput to be of type 'table'")
	if struct["FleetId"] then asserts.AssertFleetId(struct["FleetId"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateFleetPortSettingsOutput[k], "UpdateFleetPortSettingsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateFleetPortSettingsOutput
-- <p>Represents the returned data in response to a request action.</p>
-- @param _FleetId [FleetId] <p>Unique identifier for a fleet that was updated.</p>
function M.UpdateFleetPortSettingsOutput(_FleetId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateFleetPortSettingsOutput")
	local t = { 
		["FleetId"] = _FleetId,
	}
	asserts.AssertUpdateFleetPortSettingsOutput(t)
	return t
end

keys.ServerProcess = { ["ConcurrentExecutions"] = true, ["Parameters"] = true, ["LaunchPath"] = true, nil }

function asserts.AssertServerProcess(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ServerProcess to be of type 'table'")
	assert(struct["LaunchPath"], "Expected key LaunchPath to exist in table")
	assert(struct["ConcurrentExecutions"], "Expected key ConcurrentExecutions to exist in table")
	if struct["ConcurrentExecutions"] then asserts.AssertPositiveInteger(struct["ConcurrentExecutions"]) end
	if struct["Parameters"] then asserts.AssertNonZeroAndMaxString(struct["Parameters"]) end
	if struct["LaunchPath"] then asserts.AssertNonZeroAndMaxString(struct["LaunchPath"]) end
	for k,_ in pairs(struct) do
		assert(keys.ServerProcess[k], "ServerProcess contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ServerProcess
-- <p>A set of instructions for launching server processes on each instance in a fleet. Each instruction set identifies the location of the server executable, optional launch parameters, and the number of server processes with this configuration to maintain concurrently on the instance. Server process configurations make up a fleet's <code> <a>RuntimeConfiguration</a> </code>.</p>
-- @param _ConcurrentExecutions [PositiveInteger] <p>Number of server processes using this configuration to run concurrently on an instance.</p>
-- @param _Parameters [NonZeroAndMaxString] <p>Optional list of parameters to pass to the server executable on launch.</p>
-- @param _LaunchPath [NonZeroAndMaxString] <p>Location of the server executable in a game build. All game builds are installed on instances at the root : for Windows instances <code>C:\game</code>, and for Linux instances <code>/local/game</code>. A Windows game build with an executable file located at <code>MyGame\latest\server.exe</code> must have a launch path of "<code>C:\game\MyGame\latest\server.exe</code>". A Linux game build with an executable file located at <code>MyGame/latest/server.exe</code> must have a launch path of "<code>/local/game/MyGame/latest/server.exe</code>". </p>
-- Required parameter: LaunchPath
-- Required parameter: ConcurrentExecutions
function M.ServerProcess(_ConcurrentExecutions, _Parameters, _LaunchPath, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ServerProcess")
	local t = { 
		["ConcurrentExecutions"] = _ConcurrentExecutions,
		["Parameters"] = _Parameters,
		["LaunchPath"] = _LaunchPath,
	}
	asserts.AssertServerProcess(t)
	return t
end

keys.DesiredPlayerSession = { ["PlayerId"] = true, ["PlayerData"] = true, nil }

function asserts.AssertDesiredPlayerSession(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DesiredPlayerSession to be of type 'table'")
	if struct["PlayerId"] then asserts.AssertNonZeroAndMaxString(struct["PlayerId"]) end
	if struct["PlayerData"] then asserts.AssertPlayerData(struct["PlayerData"]) end
	for k,_ in pairs(struct) do
		assert(keys.DesiredPlayerSession[k], "DesiredPlayerSession contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DesiredPlayerSession
-- <p>Player information for use when creating player sessions using a game session placement request with <a>StartGameSessionPlacement</a>.</p>
-- @param _PlayerId [NonZeroAndMaxString] <p>Unique identifier for a player to associate with the player session.</p>
-- @param _PlayerData [PlayerData] <p>Developer-defined information related to a player. Amazon GameLift does not use this data, so it can be formatted as needed for use in the game.</p>
function M.DesiredPlayerSession(_PlayerId, _PlayerData, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DesiredPlayerSession")
	local t = { 
		["PlayerId"] = _PlayerId,
		["PlayerData"] = _PlayerData,
	}
	asserts.AssertDesiredPlayerSession(t)
	return t
end

keys.DeleteScalingPolicyInput = { ["FleetId"] = true, ["Name"] = true, nil }

function asserts.AssertDeleteScalingPolicyInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteScalingPolicyInput to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["FleetId"], "Expected key FleetId to exist in table")
	if struct["FleetId"] then asserts.AssertFleetId(struct["FleetId"]) end
	if struct["Name"] then asserts.AssertNonZeroAndMaxString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteScalingPolicyInput[k], "DeleteScalingPolicyInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteScalingPolicyInput
-- <p>Represents the input for a request action.</p>
-- @param _FleetId [FleetId] <p>Unique identifier for a fleet to be deleted.</p>
-- @param _Name [NonZeroAndMaxString] <p>Descriptive label that is associated with a scaling policy. Policy names do not need to be unique.</p>
-- Required parameter: Name
-- Required parameter: FleetId
function M.DeleteScalingPolicyInput(_FleetId, _Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteScalingPolicyInput")
	local t = { 
		["FleetId"] = _FleetId,
		["Name"] = _Name,
	}
	asserts.AssertDeleteScalingPolicyInput(t)
	return t
end

keys.PutScalingPolicyInput = { ["EvaluationPeriods"] = true, ["Name"] = true, ["ComparisonOperator"] = true, ["FleetId"] = true, ["Threshold"] = true, ["ScalingAdjustment"] = true, ["MetricName"] = true, ["ScalingAdjustmentType"] = true, nil }

function asserts.AssertPutScalingPolicyInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutScalingPolicyInput to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["FleetId"], "Expected key FleetId to exist in table")
	assert(struct["ScalingAdjustment"], "Expected key ScalingAdjustment to exist in table")
	assert(struct["ScalingAdjustmentType"], "Expected key ScalingAdjustmentType to exist in table")
	assert(struct["Threshold"], "Expected key Threshold to exist in table")
	assert(struct["ComparisonOperator"], "Expected key ComparisonOperator to exist in table")
	assert(struct["EvaluationPeriods"], "Expected key EvaluationPeriods to exist in table")
	assert(struct["MetricName"], "Expected key MetricName to exist in table")
	if struct["EvaluationPeriods"] then asserts.AssertPositiveInteger(struct["EvaluationPeriods"]) end
	if struct["Name"] then asserts.AssertNonZeroAndMaxString(struct["Name"]) end
	if struct["ComparisonOperator"] then asserts.AssertComparisonOperatorType(struct["ComparisonOperator"]) end
	if struct["FleetId"] then asserts.AssertFleetId(struct["FleetId"]) end
	if struct["Threshold"] then asserts.AssertDouble(struct["Threshold"]) end
	if struct["ScalingAdjustment"] then asserts.AssertInteger(struct["ScalingAdjustment"]) end
	if struct["MetricName"] then asserts.AssertMetricName(struct["MetricName"]) end
	if struct["ScalingAdjustmentType"] then asserts.AssertScalingAdjustmentType(struct["ScalingAdjustmentType"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutScalingPolicyInput[k], "PutScalingPolicyInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutScalingPolicyInput
-- <p>Represents the input for a request action.</p>
-- @param _EvaluationPeriods [PositiveInteger] <p>Length of time (in minutes) the metric must be at or beyond the threshold before a scaling event is triggered.</p>
-- @param _Name [NonZeroAndMaxString] <p>Descriptive label that is associated with a scaling policy. Policy names do not need to be unique. A fleet can have only one scaling policy with the same name.</p>
-- @param _ComparisonOperator [ComparisonOperatorType] <p>Comparison operator to use when measuring the metric against the threshold value.</p>
-- @param _FleetId [FleetId] <p>Unique identifier for a fleet to apply this policy to.</p>
-- @param _Threshold [Double] <p>Metric value used to trigger a scaling event.</p>
-- @param _ScalingAdjustment [Integer] <p>Amount of adjustment to make, based on the scaling adjustment type.</p>
-- @param _MetricName [MetricName] <p>Name of the Amazon GameLift-defined metric that is used to trigger an adjustment.</p> <ul> <li> <p> <b>ActivatingGameSessions</b> – number of game sessions in the process of being created (game session status = <code>ACTIVATING</code>).</p> </li> <li> <p> <b>ActiveGameSessions</b> – number of game sessions currently running (game session status = <code>ACTIVE</code>).</p> </li> <li> <p> <b>CurrentPlayerSessions</b> – number of active or reserved player sessions (player session status = <code>ACTIVE</code> or <code>RESERVED</code>). </p> </li> <li> <p> <b>AvailablePlayerSessions</b> – number of player session slots currently available in active game sessions across the fleet, calculated by subtracting a game session's current player session count from its maximum player session count. This number includes game sessions that are not currently accepting players (game session <code>PlayerSessionCreationPolicy</code> = <code>DENY_ALL</code>).</p> </li> <li> <p> <b>ActiveInstances</b> – number of instances currently running a game session.</p> </li> <li> <p> <b>IdleInstances</b> – number of instances not currently running a game session.</p> </li> </ul>
-- @param _ScalingAdjustmentType [ScalingAdjustmentType] <p>Type of adjustment to make to a fleet's instance count (see <a>FleetCapacity</a>):</p> <ul> <li> <p> <b>ChangeInCapacity</b> – add (or subtract) the scaling adjustment value from the current instance count. Positive values scale up while negative values scale down.</p> </li> <li> <p> <b>ExactCapacity</b> – set the instance count to the scaling adjustment value.</p> </li> <li> <p> <b>PercentChangeInCapacity</b> – increase or reduce the current instance count by the scaling adjustment, read as a percentage. Positive values scale up while negative values scale down; for example, a value of "-10" scales the fleet down by 10%.</p> </li> </ul>
-- Required parameter: Name
-- Required parameter: FleetId
-- Required parameter: ScalingAdjustment
-- Required parameter: ScalingAdjustmentType
-- Required parameter: Threshold
-- Required parameter: ComparisonOperator
-- Required parameter: EvaluationPeriods
-- Required parameter: MetricName
function M.PutScalingPolicyInput(_EvaluationPeriods, _Name, _ComparisonOperator, _FleetId, _Threshold, _ScalingAdjustment, _MetricName, _ScalingAdjustmentType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutScalingPolicyInput")
	local t = { 
		["EvaluationPeriods"] = _EvaluationPeriods,
		["Name"] = _Name,
		["ComparisonOperator"] = _ComparisonOperator,
		["FleetId"] = _FleetId,
		["Threshold"] = _Threshold,
		["ScalingAdjustment"] = _ScalingAdjustment,
		["MetricName"] = _MetricName,
		["ScalingAdjustmentType"] = _ScalingAdjustmentType,
	}
	asserts.AssertPutScalingPolicyInput(t)
	return t
end

keys.UpdateGameSessionQueueInput = { ["Destinations"] = true, ["PlayerLatencyPolicies"] = true, ["Name"] = true, ["TimeoutInSeconds"] = true, nil }

function asserts.AssertUpdateGameSessionQueueInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateGameSessionQueueInput to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Destinations"] then asserts.AssertGameSessionQueueDestinationList(struct["Destinations"]) end
	if struct["PlayerLatencyPolicies"] then asserts.AssertPlayerLatencyPolicyList(struct["PlayerLatencyPolicies"]) end
	if struct["Name"] then asserts.AssertGameSessionQueueName(struct["Name"]) end
	if struct["TimeoutInSeconds"] then asserts.AssertWholeNumber(struct["TimeoutInSeconds"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateGameSessionQueueInput[k], "UpdateGameSessionQueueInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateGameSessionQueueInput
-- <p>Represents the input for a request action.</p>
-- @param _Destinations [GameSessionQueueDestinationList] <p>List of fleets that can be used to fulfill game session placement requests in the queue. Fleets are identified by either a fleet ARN or a fleet alias ARN. Destinations are listed in default preference order. When updating this list, provide a complete list of destinations.</p>
-- @param _PlayerLatencyPolicies [PlayerLatencyPolicyList] <p>Collection of latency policies to apply when processing game sessions placement requests with player latency information. Multiple policies are evaluated in order of the maximum latency value, starting with the lowest latency values. With just one policy, it is enforced at the start of the game session placement for the duration period. With multiple policies, each policy is enforced consecutively for its duration period. For example, a queue might enforce a 60-second policy followed by a 120-second policy, and then no policy for the remainder of the placement. When updating policies, provide a complete collection of policies.</p>
-- @param _Name [GameSessionQueueName] <p>Descriptive label that is associated with queue. Queue names must be unique within each region.</p>
-- @param _TimeoutInSeconds [WholeNumber] <p>Maximum time, in seconds, that a new game session placement request remains in the queue. When a request exceeds this time, the game session placement changes to a TIMED_OUT status.</p>
-- Required parameter: Name
function M.UpdateGameSessionQueueInput(_Destinations, _PlayerLatencyPolicies, _Name, _TimeoutInSeconds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateGameSessionQueueInput")
	local t = { 
		["Destinations"] = _Destinations,
		["PlayerLatencyPolicies"] = _PlayerLatencyPolicies,
		["Name"] = _Name,
		["TimeoutInSeconds"] = _TimeoutInSeconds,
	}
	asserts.AssertUpdateGameSessionQueueInput(t)
	return t
end

keys.UpdateFleetAttributesOutput = { ["FleetId"] = true, nil }

function asserts.AssertUpdateFleetAttributesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateFleetAttributesOutput to be of type 'table'")
	if struct["FleetId"] then asserts.AssertFleetId(struct["FleetId"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateFleetAttributesOutput[k], "UpdateFleetAttributesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateFleetAttributesOutput
-- <p>Represents the returned data in response to a request action.</p>
-- @param _FleetId [FleetId] <p>Unique identifier for a fleet that was updated.</p>
function M.UpdateFleetAttributesOutput(_FleetId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateFleetAttributesOutput")
	local t = { 
		["FleetId"] = _FleetId,
	}
	asserts.AssertUpdateFleetAttributesOutput(t)
	return t
end

keys.UpdateBuildInput = { ["BuildId"] = true, ["Version"] = true, ["Name"] = true, nil }

function asserts.AssertUpdateBuildInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateBuildInput to be of type 'table'")
	assert(struct["BuildId"], "Expected key BuildId to exist in table")
	if struct["BuildId"] then asserts.AssertBuildId(struct["BuildId"]) end
	if struct["Version"] then asserts.AssertNonZeroAndMaxString(struct["Version"]) end
	if struct["Name"] then asserts.AssertNonZeroAndMaxString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateBuildInput[k], "UpdateBuildInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateBuildInput
-- <p>Represents the input for a request action.</p>
-- @param _BuildId [BuildId] <p>Unique identifier for a build to update.</p>
-- @param _Version [NonZeroAndMaxString] <p>Version that is associated with this build. Version strings do not need to be unique.</p>
-- @param _Name [NonZeroAndMaxString] <p>Descriptive label that is associated with a build. Build names do not need to be unique. </p>
-- Required parameter: BuildId
function M.UpdateBuildInput(_BuildId, _Version, _Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateBuildInput")
	local t = { 
		["BuildId"] = _BuildId,
		["Version"] = _Version,
		["Name"] = _Name,
	}
	asserts.AssertUpdateBuildInput(t)
	return t
end

function asserts.AssertNonBlankString(str)
	assert(str)
	assert(type(str) == "string", "Expected NonBlankString to be of type 'string'")
end

--  
function M.NonBlankString(str)
	asserts.AssertNonBlankString(str)
	return str
end

function asserts.AssertFreeText(str)
	assert(str)
	assert(type(str) == "string", "Expected FreeText to be of type 'string'")
end

--  
function M.FreeText(str)
	asserts.AssertFreeText(str)
	return str
end

function asserts.AssertProtectionPolicy(str)
	assert(str)
	assert(type(str) == "string", "Expected ProtectionPolicy to be of type 'string'")
end

--  
function M.ProtectionPolicy(str)
	asserts.AssertProtectionPolicy(str)
	return str
end

function asserts.AssertGameSessionQueueName(str)
	assert(str)
	assert(type(str) == "string", "Expected GameSessionQueueName to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.GameSessionQueueName(str)
	asserts.AssertGameSessionQueueName(str)
	return str
end

function asserts.AssertPlayerSessionCreationPolicy(str)
	assert(str)
	assert(type(str) == "string", "Expected PlayerSessionCreationPolicy to be of type 'string'")
end

--  
function M.PlayerSessionCreationPolicy(str)
	asserts.AssertPlayerSessionCreationPolicy(str)
	return str
end

function asserts.AssertRoutingStrategyType(str)
	assert(str)
	assert(type(str) == "string", "Expected RoutingStrategyType to be of type 'string'")
end

--  
function M.RoutingStrategyType(str)
	asserts.AssertRoutingStrategyType(str)
	return str
end

function asserts.AssertMetricGroup(str)
	assert(str)
	assert(type(str) == "string", "Expected MetricGroup to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.MetricGroup(str)
	asserts.AssertMetricGroup(str)
	return str
end

function asserts.AssertBuildId(str)
	assert(str)
	assert(type(str) == "string", "Expected BuildId to be of type 'string'")
end

--  
function M.BuildId(str)
	asserts.AssertBuildId(str)
	return str
end

function asserts.AssertEC2InstanceType(str)
	assert(str)
	assert(type(str) == "string", "Expected EC2InstanceType to be of type 'string'")
end

--  
function M.EC2InstanceType(str)
	asserts.AssertEC2InstanceType(str)
	return str
end

function asserts.AssertPlayerData(str)
	assert(str)
	assert(type(str) == "string", "Expected PlayerData to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.PlayerData(str)
	asserts.AssertPlayerData(str)
	return str
end

function asserts.AssertIpProtocol(str)
	assert(str)
	assert(type(str) == "string", "Expected IpProtocol to be of type 'string'")
end

--  
function M.IpProtocol(str)
	asserts.AssertIpProtocol(str)
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

function asserts.AssertMetricName(str)
	assert(str)
	assert(type(str) == "string", "Expected MetricName to be of type 'string'")
end

--  
function M.MetricName(str)
	asserts.AssertMetricName(str)
	return str
end

function asserts.AssertEventCode(str)
	assert(str)
	assert(type(str) == "string", "Expected EventCode to be of type 'string'")
end

--  
function M.EventCode(str)
	asserts.AssertEventCode(str)
	return str
end

function asserts.AssertIdStringModel(str)
	assert(str)
	assert(type(str) == "string", "Expected IdStringModel to be of type 'string'")
	assert(#str <= 48, "Expected string to be max 48 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.IdStringModel(str)
	asserts.AssertIdStringModel(str)
	return str
end

function asserts.AssertFleetStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected FleetStatus to be of type 'string'")
end

--  
function M.FleetStatus(str)
	asserts.AssertFleetStatus(str)
	return str
end

function asserts.AssertNonZeroAndMaxString(str)
	assert(str)
	assert(type(str) == "string", "Expected NonZeroAndMaxString to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.NonZeroAndMaxString(str)
	asserts.AssertNonZeroAndMaxString(str)
	return str
end

function asserts.AssertPlayerSessionStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected PlayerSessionStatus to be of type 'string'")
end

--  
function M.PlayerSessionStatus(str)
	asserts.AssertPlayerSessionStatus(str)
	return str
end

function asserts.AssertGamePropertyKey(str)
	assert(str)
	assert(type(str) == "string", "Expected GamePropertyKey to be of type 'string'")
	assert(#str <= 32, "Expected string to be max 32 characters")
end

--  
function M.GamePropertyKey(str)
	asserts.AssertGamePropertyKey(str)
	return str
end

function asserts.AssertGameSessionStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected GameSessionStatus to be of type 'string'")
end

--  
function M.GameSessionStatus(str)
	asserts.AssertGameSessionStatus(str)
	return str
end

function asserts.AssertFleetId(str)
	assert(str)
	assert(type(str) == "string", "Expected FleetId to be of type 'string'")
end

--  
function M.FleetId(str)
	asserts.AssertFleetId(str)
	return str
end

function asserts.AssertScalingAdjustmentType(str)
	assert(str)
	assert(type(str) == "string", "Expected ScalingAdjustmentType to be of type 'string'")
end

--  
function M.ScalingAdjustmentType(str)
	asserts.AssertScalingAdjustmentType(str)
	return str
end

function asserts.AssertInstanceStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected InstanceStatus to be of type 'string'")
end

--  
function M.InstanceStatus(str)
	asserts.AssertInstanceStatus(str)
	return str
end

function asserts.AssertScalingStatusType(str)
	assert(str)
	assert(type(str) == "string", "Expected ScalingStatusType to be of type 'string'")
end

--  
function M.ScalingStatusType(str)
	asserts.AssertScalingStatusType(str)
	return str
end

function asserts.AssertArnStringModel(str)
	assert(str)
	assert(type(str) == "string", "Expected ArnStringModel to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ArnStringModel(str)
	asserts.AssertArnStringModel(str)
	return str
end

function asserts.AssertComparisonOperatorType(str)
	assert(str)
	assert(type(str) == "string", "Expected ComparisonOperatorType to be of type 'string'")
end

--  
function M.ComparisonOperatorType(str)
	asserts.AssertComparisonOperatorType(str)
	return str
end

function asserts.AssertBuildStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected BuildStatus to be of type 'string'")
end

--  
function M.BuildStatus(str)
	asserts.AssertBuildStatus(str)
	return str
end

function asserts.AssertInstanceId(str)
	assert(str)
	assert(type(str) == "string", "Expected InstanceId to be of type 'string'")
end

--  
function M.InstanceId(str)
	asserts.AssertInstanceId(str)
	return str
end

function asserts.AssertIpAddress(str)
	assert(str)
	assert(type(str) == "string", "Expected IpAddress to be of type 'string'")
end

--  
function M.IpAddress(str)
	asserts.AssertIpAddress(str)
	return str
end

function asserts.AssertOperatingSystem(str)
	assert(str)
	assert(type(str) == "string", "Expected OperatingSystem to be of type 'string'")
end

--  
function M.OperatingSystem(str)
	asserts.AssertOperatingSystem(str)
	return str
end

function asserts.AssertAliasId(str)
	assert(str)
	assert(type(str) == "string", "Expected AliasId to be of type 'string'")
end

--  
function M.AliasId(str)
	asserts.AssertAliasId(str)
	return str
end

function asserts.AssertNonBlankAndLengthConstraintString(str)
	assert(str)
	assert(type(str) == "string", "Expected NonBlankAndLengthConstraintString to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.NonBlankAndLengthConstraintString(str)
	asserts.AssertNonBlankAndLengthConstraintString(str)
	return str
end

function asserts.AssertGameSessionPlacementState(str)
	assert(str)
	assert(type(str) == "string", "Expected GameSessionPlacementState to be of type 'string'")
end

--  
function M.GameSessionPlacementState(str)
	asserts.AssertGameSessionPlacementState(str)
	return str
end

function asserts.AssertGamePropertyValue(str)
	assert(str)
	assert(type(str) == "string", "Expected GamePropertyValue to be of type 'string'")
	assert(#str <= 96, "Expected string to be max 96 characters")
end

--  
function M.GamePropertyValue(str)
	asserts.AssertGamePropertyValue(str)
	return str
end

function asserts.AssertPlayerSessionId(str)
	assert(str)
	assert(type(str) == "string", "Expected PlayerSessionId to be of type 'string'")
end

--  
function M.PlayerSessionId(str)
	asserts.AssertPlayerSessionId(str)
	return str
end

function asserts.AssertFloat(float)
	assert(float)
	assert(type(float) == "number", "Expected Float to be of type 'number'")
end

function M.Float(float)
	asserts.AssertFloat(float)
	return float
end

function asserts.AssertDouble(double)
	assert(double)
	assert(type(double) == "number", "Expected Double to be of type 'number'")
end

function M.Double(double)
	asserts.AssertDouble(double)
	return double
end

function asserts.AssertPositiveLong(long)
	assert(long)
	assert(type(long) == "number", "Expected PositiveLong to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.PositiveLong(long)
	asserts.AssertPositiveLong(long)
	return long
end

function asserts.AssertPortNumber(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected PortNumber to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 60000, "Expected integer to be max 60000")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.PortNumber(integer)
	asserts.AssertPortNumber(integer)
	return integer
end

function asserts.AssertGameSessionActivationTimeoutSeconds(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected GameSessionActivationTimeoutSeconds to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 600, "Expected integer to be max 600")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.GameSessionActivationTimeoutSeconds(integer)
	asserts.AssertGameSessionActivationTimeoutSeconds(integer)
	return integer
end

function asserts.AssertWholeNumber(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected WholeNumber to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.WholeNumber(integer)
	asserts.AssertWholeNumber(integer)
	return integer
end

function asserts.AssertInteger(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected Integer to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.Integer(integer)
	asserts.AssertInteger(integer)
	return integer
end

function asserts.AssertMaxConcurrentGameSessionActivations(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxConcurrentGameSessionActivations to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 2147483647, "Expected integer to be max 2147483647")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.MaxConcurrentGameSessionActivations(integer)
	asserts.AssertMaxConcurrentGameSessionActivations(integer)
	return integer
end

function asserts.AssertPositiveInteger(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected PositiveInteger to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.PositiveInteger(integer)
	asserts.AssertPositiveInteger(integer)
	return integer
end

function asserts.AssertPlayerDataMap(map)
	assert(map)
	assert(type(map) == "table", "Expected PlayerDataMap to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertNonZeroAndMaxString(k)
		asserts.AssertPlayerData(v)
	end
end

function M.PlayerDataMap(map)
	asserts.AssertPlayerDataMap(map)
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

function asserts.AssertGamePropertyList(list)
	assert(list)
	assert(type(list) == "table", "Expected GamePropertyList to be of type ''table")
	assert(#list <= 16, "Expected list to be contain 16 elements")
	for _,v in ipairs(list) do
		asserts.AssertGameProperty(v)
	end
end

--  
-- List of GameProperty objects
function M.GamePropertyList(list)
	asserts.AssertGamePropertyList(list)
	return list
end

function asserts.AssertFleetIdList(list)
	assert(list)
	assert(type(list) == "table", "Expected FleetIdList to be of type ''table")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertFleetId(v)
	end
end

--  
-- List of FleetId objects
function M.FleetIdList(list)
	asserts.AssertFleetIdList(list)
	return list
end

function asserts.AssertIpPermissionsList(list)
	assert(list)
	assert(type(list) == "table", "Expected IpPermissionsList to be of type ''table")
	assert(#list <= 50, "Expected list to be contain 50 elements")
	for _,v in ipairs(list) do
		asserts.AssertIpPermission(v)
	end
end

--  
-- List of IpPermission objects
function M.IpPermissionsList(list)
	asserts.AssertIpPermissionsList(list)
	return list
end

function asserts.AssertFleetUtilizationList(list)
	assert(list)
	assert(type(list) == "table", "Expected FleetUtilizationList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertFleetUtilization(v)
	end
end

--  
-- List of FleetUtilization objects
function M.FleetUtilizationList(list)
	asserts.AssertFleetUtilizationList(list)
	return list
end

function asserts.AssertPlayerLatencyPolicyList(list)
	assert(list)
	assert(type(list) == "table", "Expected PlayerLatencyPolicyList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertPlayerLatencyPolicy(v)
	end
end

--  
-- List of PlayerLatencyPolicy objects
function M.PlayerLatencyPolicyList(list)
	asserts.AssertPlayerLatencyPolicyList(list)
	return list
end

function asserts.AssertAliasList(list)
	assert(list)
	assert(type(list) == "table", "Expected AliasList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertAlias(v)
	end
end

--  
-- List of Alias objects
function M.AliasList(list)
	asserts.AssertAliasList(list)
	return list
end

function asserts.AssertPlacedPlayerSessionList(list)
	assert(list)
	assert(type(list) == "table", "Expected PlacedPlayerSessionList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertPlacedPlayerSession(v)
	end
end

--  
-- List of PlacedPlayerSession objects
function M.PlacedPlayerSessionList(list)
	asserts.AssertPlacedPlayerSessionList(list)
	return list
end

function asserts.AssertFleetCapacityList(list)
	assert(list)
	assert(type(list) == "table", "Expected FleetCapacityList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertFleetCapacity(v)
	end
end

--  
-- List of FleetCapacity objects
function M.FleetCapacityList(list)
	asserts.AssertFleetCapacityList(list)
	return list
end

function asserts.AssertInstanceList(list)
	assert(list)
	assert(type(list) == "table", "Expected InstanceList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertInstance(v)
	end
end

--  
-- List of Instance objects
function M.InstanceList(list)
	asserts.AssertInstanceList(list)
	return list
end

function asserts.AssertStringList(list)
	assert(list)
	assert(type(list) == "table", "Expected StringList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertNonZeroAndMaxString(v)
	end
end

--  
-- List of NonZeroAndMaxString objects
function M.StringList(list)
	asserts.AssertStringList(list)
	return list
end

function asserts.AssertPlayerLatencyList(list)
	assert(list)
	assert(type(list) == "table", "Expected PlayerLatencyList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertPlayerLatency(v)
	end
end

--  
-- List of PlayerLatency objects
function M.PlayerLatencyList(list)
	asserts.AssertPlayerLatencyList(list)
	return list
end

function asserts.AssertGameSessionQueueNameList(list)
	assert(list)
	assert(type(list) == "table", "Expected GameSessionQueueNameList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertGameSessionQueueName(v)
	end
end

--  
-- List of GameSessionQueueName objects
function M.GameSessionQueueNameList(list)
	asserts.AssertGameSessionQueueNameList(list)
	return list
end

function asserts.AssertEventList(list)
	assert(list)
	assert(type(list) == "table", "Expected EventList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertEvent(v)
	end
end

--  
-- List of Event objects
function M.EventList(list)
	asserts.AssertEventList(list)
	return list
end

function asserts.AssertGameSessionList(list)
	assert(list)
	assert(type(list) == "table", "Expected GameSessionList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertGameSession(v)
	end
end

--  
-- List of GameSession objects
function M.GameSessionList(list)
	asserts.AssertGameSessionList(list)
	return list
end

function asserts.AssertScalingPolicyList(list)
	assert(list)
	assert(type(list) == "table", "Expected ScalingPolicyList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertScalingPolicy(v)
	end
end

--  
-- List of ScalingPolicy objects
function M.ScalingPolicyList(list)
	asserts.AssertScalingPolicyList(list)
	return list
end

function asserts.AssertDesiredPlayerSessionList(list)
	assert(list)
	assert(type(list) == "table", "Expected DesiredPlayerSessionList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDesiredPlayerSession(v)
	end
end

--  
-- List of DesiredPlayerSession objects
function M.DesiredPlayerSessionList(list)
	asserts.AssertDesiredPlayerSessionList(list)
	return list
end

function asserts.AssertMetricGroupList(list)
	assert(list)
	assert(type(list) == "table", "Expected MetricGroupList to be of type ''table")
	assert(#list <= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertMetricGroup(v)
	end
end

--  
-- List of MetricGroup objects
function M.MetricGroupList(list)
	asserts.AssertMetricGroupList(list)
	return list
end

function asserts.AssertServerProcessList(list)
	assert(list)
	assert(type(list) == "table", "Expected ServerProcessList to be of type ''table")
	assert(#list <= 50, "Expected list to be contain 50 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertServerProcess(v)
	end
end

--  
-- List of ServerProcess objects
function M.ServerProcessList(list)
	asserts.AssertServerProcessList(list)
	return list
end

function asserts.AssertBuildList(list)
	assert(list)
	assert(type(list) == "table", "Expected BuildList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertBuild(v)
	end
end

--  
-- List of Build objects
function M.BuildList(list)
	asserts.AssertBuildList(list)
	return list
end

function asserts.AssertGameSessionQueueDestinationList(list)
	assert(list)
	assert(type(list) == "table", "Expected GameSessionQueueDestinationList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertGameSessionQueueDestination(v)
	end
end

--  
-- List of GameSessionQueueDestination objects
function M.GameSessionQueueDestinationList(list)
	asserts.AssertGameSessionQueueDestinationList(list)
	return list
end

function asserts.AssertGameSessionDetailList(list)
	assert(list)
	assert(type(list) == "table", "Expected GameSessionDetailList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertGameSessionDetail(v)
	end
end

--  
-- List of GameSessionDetail objects
function M.GameSessionDetailList(list)
	asserts.AssertGameSessionDetailList(list)
	return list
end

function asserts.AssertGameSessionQueueList(list)
	assert(list)
	assert(type(list) == "table", "Expected GameSessionQueueList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertGameSessionQueue(v)
	end
end

--  
-- List of GameSessionQueue objects
function M.GameSessionQueueList(list)
	asserts.AssertGameSessionQueueList(list)
	return list
end

function asserts.AssertPlayerIdList(list)
	assert(list)
	assert(type(list) == "table", "Expected PlayerIdList to be of type ''table")
	assert(#list <= 25, "Expected list to be contain 25 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertNonZeroAndMaxString(v)
	end
end

--  
-- List of NonZeroAndMaxString objects
function M.PlayerIdList(list)
	asserts.AssertPlayerIdList(list)
	return list
end

function asserts.AssertPlayerSessionList(list)
	assert(list)
	assert(type(list) == "table", "Expected PlayerSessionList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertPlayerSession(v)
	end
end

--  
-- List of PlayerSession objects
function M.PlayerSessionList(list)
	asserts.AssertPlayerSessionList(list)
	return list
end

function asserts.AssertEC2InstanceLimitList(list)
	assert(list)
	assert(type(list) == "table", "Expected EC2InstanceLimitList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertEC2InstanceLimit(v)
	end
end

--  
-- List of EC2InstanceLimit objects
function M.EC2InstanceLimitList(list)
	asserts.AssertEC2InstanceLimitList(list)
	return list
end

function asserts.AssertFleetAttributesList(list)
	assert(list)
	assert(type(list) == "table", "Expected FleetAttributesList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertFleetAttributes(v)
	end
end

--  
-- List of FleetAttributes objects
function M.FleetAttributesList(list)
	asserts.AssertFleetAttributesList(list)
	return list
end


local content_type = require "aws-sdk.core.content_type"
local scheme_mapper = require "aws-sdk.core.scheme_mapper"
local request_headers = require "aws-sdk.core.request_headers"
local request_handlers = require "aws-sdk.core.request_handlers"

local settings = {}


local function endpoint_for_region(region, use_dualstack)
	if not use_dualstack then
		if region == "us-east-1" then
			return "gamelift.amazonaws.com"
		end
	end
	local ss = { "gamelift" }
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
	settings.uri = scheme_mapper.from_string(config.scheme) .. "://" .. settings.endpoint
end


--
-- OPERATIONS
--
--- Call RequestUploadCredentials asynchronously, invoking a callback when done
-- @param RequestUploadCredentialsInput
-- @param cb Callback function accepting two args: response, error_message
function M.RequestUploadCredentialsAsync(RequestUploadCredentialsInput, cb)
	assert(RequestUploadCredentialsInput, "You must provide a RequestUploadCredentialsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "GameLift.RequestUploadCredentials",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", RequestUploadCredentialsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RequestUploadCredentials synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RequestUploadCredentialsInput
-- @return response
-- @return error_message
function M.RequestUploadCredentialsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RequestUploadCredentialsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateRuntimeConfiguration asynchronously, invoking a callback when done
-- @param UpdateRuntimeConfigurationInput
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateRuntimeConfigurationAsync(UpdateRuntimeConfigurationInput, cb)
	assert(UpdateRuntimeConfigurationInput, "You must provide a UpdateRuntimeConfigurationInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "GameLift.UpdateRuntimeConfiguration",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateRuntimeConfigurationInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateRuntimeConfiguration synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateRuntimeConfigurationInput
-- @return response
-- @return error_message
function M.UpdateRuntimeConfigurationSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateRuntimeConfigurationAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteFleet asynchronously, invoking a callback when done
-- @param DeleteFleetInput
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteFleetAsync(DeleteFleetInput, cb)
	assert(DeleteFleetInput, "You must provide a DeleteFleetInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "GameLift.DeleteFleet",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteFleetInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteFleet synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteFleetInput
-- @return response
-- @return error_message
function M.DeleteFleetSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteFleetAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateFleetCapacity asynchronously, invoking a callback when done
-- @param UpdateFleetCapacityInput
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateFleetCapacityAsync(UpdateFleetCapacityInput, cb)
	assert(UpdateFleetCapacityInput, "You must provide a UpdateFleetCapacityInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "GameLift.UpdateFleetCapacity",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateFleetCapacityInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateFleetCapacity synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateFleetCapacityInput
-- @return response
-- @return error_message
function M.UpdateFleetCapacitySync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateFleetCapacityAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeRuntimeConfiguration asynchronously, invoking a callback when done
-- @param DescribeRuntimeConfigurationInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeRuntimeConfigurationAsync(DescribeRuntimeConfigurationInput, cb)
	assert(DescribeRuntimeConfigurationInput, "You must provide a DescribeRuntimeConfigurationInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "GameLift.DescribeRuntimeConfiguration",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeRuntimeConfigurationInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeRuntimeConfiguration synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeRuntimeConfigurationInput
-- @return response
-- @return error_message
function M.DescribeRuntimeConfigurationSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeRuntimeConfigurationAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeGameSessions asynchronously, invoking a callback when done
-- @param DescribeGameSessionsInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeGameSessionsAsync(DescribeGameSessionsInput, cb)
	assert(DescribeGameSessionsInput, "You must provide a DescribeGameSessionsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "GameLift.DescribeGameSessions",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeGameSessionsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeGameSessions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeGameSessionsInput
-- @return response
-- @return error_message
function M.DescribeGameSessionsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeGameSessionsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call SearchGameSessions asynchronously, invoking a callback when done
-- @param SearchGameSessionsInput
-- @param cb Callback function accepting two args: response, error_message
function M.SearchGameSessionsAsync(SearchGameSessionsInput, cb)
	assert(SearchGameSessionsInput, "You must provide a SearchGameSessionsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "GameLift.SearchGameSessions",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", SearchGameSessionsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call SearchGameSessions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SearchGameSessionsInput
-- @return response
-- @return error_message
function M.SearchGameSessionsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SearchGameSessionsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreatePlayerSessions asynchronously, invoking a callback when done
-- @param CreatePlayerSessionsInput
-- @param cb Callback function accepting two args: response, error_message
function M.CreatePlayerSessionsAsync(CreatePlayerSessionsInput, cb)
	assert(CreatePlayerSessionsInput, "You must provide a CreatePlayerSessionsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "GameLift.CreatePlayerSessions",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", CreatePlayerSessionsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreatePlayerSessions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreatePlayerSessionsInput
-- @return response
-- @return error_message
function M.CreatePlayerSessionsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreatePlayerSessionsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateFleetPortSettings asynchronously, invoking a callback when done
-- @param UpdateFleetPortSettingsInput
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateFleetPortSettingsAsync(UpdateFleetPortSettingsInput, cb)
	assert(UpdateFleetPortSettingsInput, "You must provide a UpdateFleetPortSettingsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "GameLift.UpdateFleetPortSettings",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateFleetPortSettingsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateFleetPortSettings synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateFleetPortSettingsInput
-- @return response
-- @return error_message
function M.UpdateFleetPortSettingsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateFleetPortSettingsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListFleets asynchronously, invoking a callback when done
-- @param ListFleetsInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListFleetsAsync(ListFleetsInput, cb)
	assert(ListFleetsInput, "You must provide a ListFleetsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "GameLift.ListFleets",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", ListFleetsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListFleets synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListFleetsInput
-- @return response
-- @return error_message
function M.ListFleetsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListFleetsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateGameSession asynchronously, invoking a callback when done
-- @param UpdateGameSessionInput
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateGameSessionAsync(UpdateGameSessionInput, cb)
	assert(UpdateGameSessionInput, "You must provide a UpdateGameSessionInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "GameLift.UpdateGameSession",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateGameSessionInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateGameSession synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateGameSessionInput
-- @return response
-- @return error_message
function M.UpdateGameSessionSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateGameSessionAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateGameSession asynchronously, invoking a callback when done
-- @param CreateGameSessionInput
-- @param cb Callback function accepting two args: response, error_message
function M.CreateGameSessionAsync(CreateGameSessionInput, cb)
	assert(CreateGameSessionInput, "You must provide a CreateGameSessionInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "GameLift.CreateGameSession",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateGameSessionInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateGameSession synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateGameSessionInput
-- @return response
-- @return error_message
function M.CreateGameSessionSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateGameSessionAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeFleetCapacity asynchronously, invoking a callback when done
-- @param DescribeFleetCapacityInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeFleetCapacityAsync(DescribeFleetCapacityInput, cb)
	assert(DescribeFleetCapacityInput, "You must provide a DescribeFleetCapacityInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "GameLift.DescribeFleetCapacity",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeFleetCapacityInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeFleetCapacity synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeFleetCapacityInput
-- @return response
-- @return error_message
function M.DescribeFleetCapacitySync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeFleetCapacityAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListAliases asynchronously, invoking a callback when done
-- @param ListAliasesInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListAliasesAsync(ListAliasesInput, cb)
	assert(ListAliasesInput, "You must provide a ListAliasesInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "GameLift.ListAliases",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", ListAliasesInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListAliases synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListAliasesInput
-- @return response
-- @return error_message
function M.ListAliasesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListAliasesAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateBuild asynchronously, invoking a callback when done
-- @param UpdateBuildInput
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateBuildAsync(UpdateBuildInput, cb)
	assert(UpdateBuildInput, "You must provide a UpdateBuildInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "GameLift.UpdateBuild",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateBuildInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateBuild synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateBuildInput
-- @return response
-- @return error_message
function M.UpdateBuildSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateBuildAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteBuild asynchronously, invoking a callback when done
-- @param DeleteBuildInput
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteBuildAsync(DeleteBuildInput, cb)
	assert(DeleteBuildInput, "You must provide a DeleteBuildInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "GameLift.DeleteBuild",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteBuildInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteBuild synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteBuildInput
-- @return response
-- @return error_message
function M.DeleteBuildSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteBuildAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call PutScalingPolicy asynchronously, invoking a callback when done
-- @param PutScalingPolicyInput
-- @param cb Callback function accepting two args: response, error_message
function M.PutScalingPolicyAsync(PutScalingPolicyInput, cb)
	assert(PutScalingPolicyInput, "You must provide a PutScalingPolicyInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "GameLift.PutScalingPolicy",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", PutScalingPolicyInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutScalingPolicy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutScalingPolicyInput
-- @return response
-- @return error_message
function M.PutScalingPolicySync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutScalingPolicyAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeScalingPolicies asynchronously, invoking a callback when done
-- @param DescribeScalingPoliciesInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeScalingPoliciesAsync(DescribeScalingPoliciesInput, cb)
	assert(DescribeScalingPoliciesInput, "You must provide a DescribeScalingPoliciesInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "GameLift.DescribeScalingPolicies",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeScalingPoliciesInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeScalingPolicies synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeScalingPoliciesInput
-- @return response
-- @return error_message
function M.DescribeScalingPoliciesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeScalingPoliciesAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeInstances asynchronously, invoking a callback when done
-- @param DescribeInstancesInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeInstancesAsync(DescribeInstancesInput, cb)
	assert(DescribeInstancesInput, "You must provide a DescribeInstancesInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "GameLift.DescribeInstances",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeInstancesInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeInstances synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeInstancesInput
-- @return response
-- @return error_message
function M.DescribeInstancesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeInstancesAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateBuild asynchronously, invoking a callback when done
-- @param CreateBuildInput
-- @param cb Callback function accepting two args: response, error_message
function M.CreateBuildAsync(CreateBuildInput, cb)
	assert(CreateBuildInput, "You must provide a CreateBuildInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "GameLift.CreateBuild",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateBuildInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateBuild synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateBuildInput
-- @return response
-- @return error_message
function M.CreateBuildSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateBuildAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteGameSessionQueue asynchronously, invoking a callback when done
-- @param DeleteGameSessionQueueInput
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteGameSessionQueueAsync(DeleteGameSessionQueueInput, cb)
	assert(DeleteGameSessionQueueInput, "You must provide a DeleteGameSessionQueueInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "GameLift.DeleteGameSessionQueue",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteGameSessionQueueInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteGameSessionQueue synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteGameSessionQueueInput
-- @return response
-- @return error_message
function M.DeleteGameSessionQueueSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteGameSessionQueueAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreatePlayerSession asynchronously, invoking a callback when done
-- @param CreatePlayerSessionInput
-- @param cb Callback function accepting two args: response, error_message
function M.CreatePlayerSessionAsync(CreatePlayerSessionInput, cb)
	assert(CreatePlayerSessionInput, "You must provide a CreatePlayerSessionInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "GameLift.CreatePlayerSession",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", CreatePlayerSessionInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreatePlayerSession synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreatePlayerSessionInput
-- @return response
-- @return error_message
function M.CreatePlayerSessionSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreatePlayerSessionAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateFleetAttributes asynchronously, invoking a callback when done
-- @param UpdateFleetAttributesInput
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateFleetAttributesAsync(UpdateFleetAttributesInput, cb)
	assert(UpdateFleetAttributesInput, "You must provide a UpdateFleetAttributesInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "GameLift.UpdateFleetAttributes",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateFleetAttributesInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateFleetAttributes synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateFleetAttributesInput
-- @return response
-- @return error_message
function M.UpdateFleetAttributesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateFleetAttributesAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteAlias asynchronously, invoking a callback when done
-- @param DeleteAliasInput
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteAliasAsync(DeleteAliasInput, cb)
	assert(DeleteAliasInput, "You must provide a DeleteAliasInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "GameLift.DeleteAlias",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteAliasInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteAlias synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteAliasInput
-- @return response
-- @return error_message
function M.DeleteAliasSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteAliasAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeFleetPortSettings asynchronously, invoking a callback when done
-- @param DescribeFleetPortSettingsInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeFleetPortSettingsAsync(DescribeFleetPortSettingsInput, cb)
	assert(DescribeFleetPortSettingsInput, "You must provide a DescribeFleetPortSettingsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "GameLift.DescribeFleetPortSettings",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeFleetPortSettingsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeFleetPortSettings synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeFleetPortSettingsInput
-- @return response
-- @return error_message
function M.DescribeFleetPortSettingsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeFleetPortSettingsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribePlayerSessions asynchronously, invoking a callback when done
-- @param DescribePlayerSessionsInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribePlayerSessionsAsync(DescribePlayerSessionsInput, cb)
	assert(DescribePlayerSessionsInput, "You must provide a DescribePlayerSessionsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "GameLift.DescribePlayerSessions",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribePlayerSessionsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribePlayerSessions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribePlayerSessionsInput
-- @return response
-- @return error_message
function M.DescribePlayerSessionsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribePlayerSessionsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteScalingPolicy asynchronously, invoking a callback when done
-- @param DeleteScalingPolicyInput
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteScalingPolicyAsync(DeleteScalingPolicyInput, cb)
	assert(DeleteScalingPolicyInput, "You must provide a DeleteScalingPolicyInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "GameLift.DeleteScalingPolicy",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteScalingPolicyInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteScalingPolicy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteScalingPolicyInput
-- @return response
-- @return error_message
function M.DeleteScalingPolicySync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteScalingPolicyAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeGameSessionQueues asynchronously, invoking a callback when done
-- @param DescribeGameSessionQueuesInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeGameSessionQueuesAsync(DescribeGameSessionQueuesInput, cb)
	assert(DescribeGameSessionQueuesInput, "You must provide a DescribeGameSessionQueuesInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "GameLift.DescribeGameSessionQueues",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeGameSessionQueuesInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeGameSessionQueues synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeGameSessionQueuesInput
-- @return response
-- @return error_message
function M.DescribeGameSessionQueuesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeGameSessionQueuesAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateAlias asynchronously, invoking a callback when done
-- @param CreateAliasInput
-- @param cb Callback function accepting two args: response, error_message
function M.CreateAliasAsync(CreateAliasInput, cb)
	assert(CreateAliasInput, "You must provide a CreateAliasInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "GameLift.CreateAlias",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateAliasInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateAlias synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateAliasInput
-- @return response
-- @return error_message
function M.CreateAliasSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateAliasAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateAlias asynchronously, invoking a callback when done
-- @param UpdateAliasInput
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateAliasAsync(UpdateAliasInput, cb)
	assert(UpdateAliasInput, "You must provide a UpdateAliasInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "GameLift.UpdateAlias",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateAliasInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateAlias synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateAliasInput
-- @return response
-- @return error_message
function M.UpdateAliasSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateAliasAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateFleet asynchronously, invoking a callback when done
-- @param CreateFleetInput
-- @param cb Callback function accepting two args: response, error_message
function M.CreateFleetAsync(CreateFleetInput, cb)
	assert(CreateFleetInput, "You must provide a CreateFleetInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "GameLift.CreateFleet",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateFleetInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateFleet synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateFleetInput
-- @return response
-- @return error_message
function M.CreateFleetSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateFleetAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeGameSessionPlacement asynchronously, invoking a callback when done
-- @param DescribeGameSessionPlacementInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeGameSessionPlacementAsync(DescribeGameSessionPlacementInput, cb)
	assert(DescribeGameSessionPlacementInput, "You must provide a DescribeGameSessionPlacementInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "GameLift.DescribeGameSessionPlacement",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeGameSessionPlacementInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeGameSessionPlacement synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeGameSessionPlacementInput
-- @return response
-- @return error_message
function M.DescribeGameSessionPlacementSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeGameSessionPlacementAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetInstanceAccess asynchronously, invoking a callback when done
-- @param GetInstanceAccessInput
-- @param cb Callback function accepting two args: response, error_message
function M.GetInstanceAccessAsync(GetInstanceAccessInput, cb)
	assert(GetInstanceAccessInput, "You must provide a GetInstanceAccessInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "GameLift.GetInstanceAccess",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", GetInstanceAccessInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetInstanceAccess synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetInstanceAccessInput
-- @return response
-- @return error_message
function M.GetInstanceAccessSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetInstanceAccessAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListBuilds asynchronously, invoking a callback when done
-- @param ListBuildsInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListBuildsAsync(ListBuildsInput, cb)
	assert(ListBuildsInput, "You must provide a ListBuildsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "GameLift.ListBuilds",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.ListBuildsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListBuildsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeFleetAttributes asynchronously, invoking a callback when done
-- @param DescribeFleetAttributesInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeFleetAttributesAsync(DescribeFleetAttributesInput, cb)
	assert(DescribeFleetAttributesInput, "You must provide a DescribeFleetAttributesInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "GameLift.DescribeFleetAttributes",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeFleetAttributesInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeFleetAttributes synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeFleetAttributesInput
-- @return response
-- @return error_message
function M.DescribeFleetAttributesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeFleetAttributesAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ResolveAlias asynchronously, invoking a callback when done
-- @param ResolveAliasInput
-- @param cb Callback function accepting two args: response, error_message
function M.ResolveAliasAsync(ResolveAliasInput, cb)
	assert(ResolveAliasInput, "You must provide a ResolveAliasInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "GameLift.ResolveAlias",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", ResolveAliasInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ResolveAlias synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ResolveAliasInput
-- @return response
-- @return error_message
function M.ResolveAliasSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ResolveAliasAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeGameSessionDetails asynchronously, invoking a callback when done
-- @param DescribeGameSessionDetailsInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeGameSessionDetailsAsync(DescribeGameSessionDetailsInput, cb)
	assert(DescribeGameSessionDetailsInput, "You must provide a DescribeGameSessionDetailsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "GameLift.DescribeGameSessionDetails",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeGameSessionDetailsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeGameSessionDetails synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeGameSessionDetailsInput
-- @return response
-- @return error_message
function M.DescribeGameSessionDetailsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeGameSessionDetailsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call StopGameSessionPlacement asynchronously, invoking a callback when done
-- @param StopGameSessionPlacementInput
-- @param cb Callback function accepting two args: response, error_message
function M.StopGameSessionPlacementAsync(StopGameSessionPlacementInput, cb)
	assert(StopGameSessionPlacementInput, "You must provide a StopGameSessionPlacementInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "GameLift.StopGameSessionPlacement",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", StopGameSessionPlacementInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call StopGameSessionPlacement synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StopGameSessionPlacementInput
-- @return response
-- @return error_message
function M.StopGameSessionPlacementSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StopGameSessionPlacementAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateGameSessionQueue asynchronously, invoking a callback when done
-- @param CreateGameSessionQueueInput
-- @param cb Callback function accepting two args: response, error_message
function M.CreateGameSessionQueueAsync(CreateGameSessionQueueInput, cb)
	assert(CreateGameSessionQueueInput, "You must provide a CreateGameSessionQueueInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "GameLift.CreateGameSessionQueue",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateGameSessionQueueInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateGameSessionQueue synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateGameSessionQueueInput
-- @return response
-- @return error_message
function M.CreateGameSessionQueueSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateGameSessionQueueAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeAlias asynchronously, invoking a callback when done
-- @param DescribeAliasInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeAliasAsync(DescribeAliasInput, cb)
	assert(DescribeAliasInput, "You must provide a DescribeAliasInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "GameLift.DescribeAlias",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeAliasInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeAlias synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeAliasInput
-- @return response
-- @return error_message
function M.DescribeAliasSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeAliasAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call StartGameSessionPlacement asynchronously, invoking a callback when done
-- @param StartGameSessionPlacementInput
-- @param cb Callback function accepting two args: response, error_message
function M.StartGameSessionPlacementAsync(StartGameSessionPlacementInput, cb)
	assert(StartGameSessionPlacementInput, "You must provide a StartGameSessionPlacementInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "GameLift.StartGameSessionPlacement",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", StartGameSessionPlacementInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call StartGameSessionPlacement synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StartGameSessionPlacementInput
-- @return response
-- @return error_message
function M.StartGameSessionPlacementSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StartGameSessionPlacementAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeEC2InstanceLimits asynchronously, invoking a callback when done
-- @param DescribeEC2InstanceLimitsInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeEC2InstanceLimitsAsync(DescribeEC2InstanceLimitsInput, cb)
	assert(DescribeEC2InstanceLimitsInput, "You must provide a DescribeEC2InstanceLimitsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "GameLift.DescribeEC2InstanceLimits",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeEC2InstanceLimitsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeEC2InstanceLimits synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeEC2InstanceLimitsInput
-- @return response
-- @return error_message
function M.DescribeEC2InstanceLimitsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeEC2InstanceLimitsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateGameSessionQueue asynchronously, invoking a callback when done
-- @param UpdateGameSessionQueueInput
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateGameSessionQueueAsync(UpdateGameSessionQueueInput, cb)
	assert(UpdateGameSessionQueueInput, "You must provide a UpdateGameSessionQueueInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "GameLift.UpdateGameSessionQueue",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateGameSessionQueueInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateGameSessionQueue synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateGameSessionQueueInput
-- @return response
-- @return error_message
function M.UpdateGameSessionQueueSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateGameSessionQueueAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetGameSessionLogUrl asynchronously, invoking a callback when done
-- @param GetGameSessionLogUrlInput
-- @param cb Callback function accepting two args: response, error_message
function M.GetGameSessionLogUrlAsync(GetGameSessionLogUrlInput, cb)
	assert(GetGameSessionLogUrlInput, "You must provide a GetGameSessionLogUrlInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "GameLift.GetGameSessionLogUrl",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", GetGameSessionLogUrlInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetGameSessionLogUrl synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetGameSessionLogUrlInput
-- @return response
-- @return error_message
function M.GetGameSessionLogUrlSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetGameSessionLogUrlAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeBuild asynchronously, invoking a callback when done
-- @param DescribeBuildInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeBuildAsync(DescribeBuildInput, cb)
	assert(DescribeBuildInput, "You must provide a DescribeBuildInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "GameLift.DescribeBuild",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeBuildInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeBuild synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeBuildInput
-- @return response
-- @return error_message
function M.DescribeBuildSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeBuildAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeFleetEvents asynchronously, invoking a callback when done
-- @param DescribeFleetEventsInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeFleetEventsAsync(DescribeFleetEventsInput, cb)
	assert(DescribeFleetEventsInput, "You must provide a DescribeFleetEventsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "GameLift.DescribeFleetEvents",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeFleetEventsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeFleetEvents synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeFleetEventsInput
-- @return response
-- @return error_message
function M.DescribeFleetEventsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeFleetEventsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeFleetUtilization asynchronously, invoking a callback when done
-- @param DescribeFleetUtilizationInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeFleetUtilizationAsync(DescribeFleetUtilizationInput, cb)
	assert(DescribeFleetUtilizationInput, "You must provide a DescribeFleetUtilizationInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "GameLift.DescribeFleetUtilization",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeFleetUtilizationInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeFleetUtilization synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeFleetUtilizationInput
-- @return response
-- @return error_message
function M.DescribeFleetUtilizationSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeFleetUtilizationAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end


return M
