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

local FleetAttributes_keys = { "Status" = true, "FleetArn" = true, "Description" = true, "NewGameSessionProtectionPolicy" = true, "BuildId" = true, "TerminationTime" = true, "CreationTime" = true, "MetricGroups" = true, "ServerLaunchPath" = true, "FleetId" = true, "ResourceCreationLimitPolicy" = true, "LogPaths" = true, "OperatingSystem" = true, "ServerLaunchParameters" = true, "Name" = true, nil }

function M.AssertFleetAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FleetAttributes to be of type 'table'")
	if struct["Status"] then M.AssertFleetStatus(struct["Status"]) end
	if struct["FleetArn"] then M.AssertArnStringModel(struct["FleetArn"]) end
	if struct["Description"] then M.AssertNonZeroAndMaxString(struct["Description"]) end
	if struct["NewGameSessionProtectionPolicy"] then M.AssertProtectionPolicy(struct["NewGameSessionProtectionPolicy"]) end
	if struct["BuildId"] then M.AssertBuildId(struct["BuildId"]) end
	if struct["TerminationTime"] then M.AssertTimestamp(struct["TerminationTime"]) end
	if struct["CreationTime"] then M.AssertTimestamp(struct["CreationTime"]) end
	if struct["MetricGroups"] then M.AssertMetricGroupList(struct["MetricGroups"]) end
	if struct["ServerLaunchPath"] then M.AssertNonZeroAndMaxString(struct["ServerLaunchPath"]) end
	if struct["FleetId"] then M.AssertFleetId(struct["FleetId"]) end
	if struct["ResourceCreationLimitPolicy"] then M.AssertResourceCreationLimitPolicy(struct["ResourceCreationLimitPolicy"]) end
	if struct["LogPaths"] then M.AssertStringList(struct["LogPaths"]) end
	if struct["OperatingSystem"] then M.AssertOperatingSystem(struct["OperatingSystem"]) end
	if struct["ServerLaunchParameters"] then M.AssertNonZeroAndMaxString(struct["ServerLaunchParameters"]) end
	if struct["Name"] then M.AssertNonZeroAndMaxString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(FleetAttributes_keys[k], "FleetAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FleetAttributes
-- &lt;p&gt;General properties describing a fleet.&lt;/p&gt;
-- @param Status [FleetStatus] &lt;p&gt;Current status of the fleet.&lt;/p&gt; &lt;p&gt;Possible fleet statuses include the following:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;NEW&lt;/b&gt; – A new fleet has been defined and desired instances is set to 1. &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;DOWNLOADING/VALIDATING/BUILDING/ACTIVATING&lt;/b&gt; – Amazon GameLift is setting up the new fleet, creating new instances with the game build and starting server processes.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;ACTIVE&lt;/b&gt; – Hosts can now accept game sessions.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;ERROR&lt;/b&gt; – An error occurred when downloading, validating, building, or activating the fleet.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;DELETING&lt;/b&gt; – Hosts are responding to a delete fleet request.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;TERMINATED&lt;/b&gt; – The fleet no longer exists.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param FleetArn [ArnStringModel] &lt;p&gt;Identifier for a fleet that is unique across all regions.&lt;/p&gt;
-- @param Description [NonZeroAndMaxString] &lt;p&gt;Human-readable description of the fleet.&lt;/p&gt;
-- @param NewGameSessionProtectionPolicy [ProtectionPolicy] &lt;p&gt;Type of game session protection to set for all new instances started in the fleet.&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;NoProtection&lt;/b&gt; – The game session can be terminated during a scale-down event.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;FullProtection&lt;/b&gt; – If the game session is in an &lt;code&gt;ACTIVE&lt;/code&gt; status, it cannot be terminated during a scale-down event.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param BuildId [BuildId] &lt;p&gt;Unique identifier for a build.&lt;/p&gt;
-- @param TerminationTime [Timestamp] &lt;p&gt;Time stamp indicating when this data object was terminated. Format is a number expressed in Unix time as milliseconds (for example &quot;1469498468.057&quot;).&lt;/p&gt;
-- @param CreationTime [Timestamp] &lt;p&gt;Time stamp indicating when this data object was created. Format is a number expressed in Unix time as milliseconds (for example &quot;1469498468.057&quot;).&lt;/p&gt;
-- @param MetricGroups [MetricGroupList] &lt;p&gt;Names of metric groups that this fleet is included in. In Amazon CloudWatch, you can view metrics for an individual fleet or aggregated metrics for a fleets that are in a fleet metric group. Currently, a fleet can be included in only one metric group at a time.&lt;/p&gt;
-- @param ServerLaunchPath [NonZeroAndMaxString] &lt;p&gt;Path to a game server executable in the fleet's build, specified for fleets created prior to 2016-08-04 (or AWS SDK v. 0.12.16). Server launch paths for fleets created after this date are specified in the fleet's &lt;a&gt;RuntimeConfiguration&lt;/a&gt;.&lt;/p&gt;
-- @param FleetId [FleetId] &lt;p&gt;Unique identifier for a fleet.&lt;/p&gt;
-- @param ResourceCreationLimitPolicy [ResourceCreationLimitPolicy] &lt;p&gt;Fleet policy to limit the number of game sessions an individual player can create over a span of time.&lt;/p&gt;
-- @param LogPaths [StringList] &lt;p&gt;Location of default log files. When a server process is shut down, Amazon GameLift captures and stores any log files in this location. These logs are in addition to game session logs; see more on game session logs in the &lt;a href=&quot;http://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-api-server-code&quot;&gt;Amazon GameLift Developer Guide&lt;/a&gt;. If no default log path for a fleet is specified, Amazon GameLift will automatically upload logs that are stored on each instance at &lt;code&gt;C:\game\logs&lt;/code&gt; (for Windows) or &lt;code&gt;/local/game/logs&lt;/code&gt; (for Linux). Use the Amazon GameLift console to access stored logs. &lt;/p&gt;
-- @param OperatingSystem [OperatingSystem] &lt;p&gt;Operating system of the fleet's computing resources. A fleet's operating system depends on the OS specified for the build that is deployed on this fleet.&lt;/p&gt;
-- @param ServerLaunchParameters [NonZeroAndMaxString] &lt;p&gt;Game server launch parameters specified for fleets created prior to 2016-08-04 (or AWS SDK v. 0.12.16). Server launch parameters for fleets created after this date are specified in the fleet's &lt;a&gt;RuntimeConfiguration&lt;/a&gt;.&lt;/p&gt;
-- @param Name [NonZeroAndMaxString] &lt;p&gt;Descriptive label that is associated with a fleet. Fleet names do not need to be unique.&lt;/p&gt;
function M.FleetAttributes(Status, FleetArn, Description, NewGameSessionProtectionPolicy, BuildId, TerminationTime, CreationTime, MetricGroups, ServerLaunchPath, FleetId, ResourceCreationLimitPolicy, LogPaths, OperatingSystem, ServerLaunchParameters, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating FleetAttributes")
	local t = { 
		["Status"] = Status,
		["FleetArn"] = FleetArn,
		["Description"] = Description,
		["NewGameSessionProtectionPolicy"] = NewGameSessionProtectionPolicy,
		["BuildId"] = BuildId,
		["TerminationTime"] = TerminationTime,
		["CreationTime"] = CreationTime,
		["MetricGroups"] = MetricGroups,
		["ServerLaunchPath"] = ServerLaunchPath,
		["FleetId"] = FleetId,
		["ResourceCreationLimitPolicy"] = ResourceCreationLimitPolicy,
		["LogPaths"] = LogPaths,
		["OperatingSystem"] = OperatingSystem,
		["ServerLaunchParameters"] = ServerLaunchParameters,
		["Name"] = Name,
	}
	M.AssertFleetAttributes(t)
	return t
end

local DescribeFleetUtilizationInput_keys = { "FleetIds" = true, "NextToken" = true, "Limit" = true, nil }

function M.AssertDescribeFleetUtilizationInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeFleetUtilizationInput to be of type 'table'")
	if struct["FleetIds"] then M.AssertFleetIdList(struct["FleetIds"]) end
	if struct["NextToken"] then M.AssertNonZeroAndMaxString(struct["NextToken"]) end
	if struct["Limit"] then M.AssertPositiveInteger(struct["Limit"]) end
	for k,_ in pairs(struct) do
		assert(DescribeFleetUtilizationInput_keys[k], "DescribeFleetUtilizationInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeFleetUtilizationInput
-- &lt;p&gt;Represents the input for a request action.&lt;/p&gt;
-- @param FleetIds [FleetIdList] &lt;p&gt;Unique identifier for a fleet(s) to retrieve utilization data for. To request utilization data for all fleets, leave this parameter empty.&lt;/p&gt;
-- @param NextToken [NonZeroAndMaxString] &lt;p&gt;Token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this action. To specify the start of the result set, do not specify a value. This parameter is ignored when the request specifies one or a list of fleet IDs.&lt;/p&gt;
-- @param Limit [PositiveInteger] &lt;p&gt;Maximum number of results to return. Use this parameter with &lt;code&gt;NextToken&lt;/code&gt; to get results as a set of sequential pages. This parameter is ignored when the request specifies one or a list of fleet IDs.&lt;/p&gt;
function M.DescribeFleetUtilizationInput(FleetIds, NextToken, Limit, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeFleetUtilizationInput")
	local t = { 
		["FleetIds"] = FleetIds,
		["NextToken"] = NextToken,
		["Limit"] = Limit,
	}
	M.AssertDescribeFleetUtilizationInput(t)
	return t
end

local DescribeFleetCapacityInput_keys = { "FleetIds" = true, "NextToken" = true, "Limit" = true, nil }

function M.AssertDescribeFleetCapacityInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeFleetCapacityInput to be of type 'table'")
	if struct["FleetIds"] then M.AssertFleetIdList(struct["FleetIds"]) end
	if struct["NextToken"] then M.AssertNonZeroAndMaxString(struct["NextToken"]) end
	if struct["Limit"] then M.AssertPositiveInteger(struct["Limit"]) end
	for k,_ in pairs(struct) do
		assert(DescribeFleetCapacityInput_keys[k], "DescribeFleetCapacityInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeFleetCapacityInput
-- &lt;p&gt;Represents the input for a request action.&lt;/p&gt;
-- @param FleetIds [FleetIdList] &lt;p&gt;Unique identifier for a fleet(s) to retrieve capacity information for. To request capacity information for all fleets, leave this parameter empty.&lt;/p&gt;
-- @param NextToken [NonZeroAndMaxString] &lt;p&gt;Token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this action. To specify the start of the result set, do not specify a value. This parameter is ignored when the request specifies one or a list of fleet IDs.&lt;/p&gt;
-- @param Limit [PositiveInteger] &lt;p&gt;Maximum number of results to return. Use this parameter with &lt;code&gt;NextToken&lt;/code&gt; to get results as a set of sequential pages. This parameter is ignored when the request specifies one or a list of fleet IDs.&lt;/p&gt;
function M.DescribeFleetCapacityInput(FleetIds, NextToken, Limit, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeFleetCapacityInput")
	local t = { 
		["FleetIds"] = FleetIds,
		["NextToken"] = NextToken,
		["Limit"] = Limit,
	}
	M.AssertDescribeFleetCapacityInput(t)
	return t
end

local ListBuildsOutput_keys = { "NextToken" = true, "Builds" = true, nil }

function M.AssertListBuildsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListBuildsOutput to be of type 'table'")
	if struct["NextToken"] then M.AssertNonEmptyString(struct["NextToken"]) end
	if struct["Builds"] then M.AssertBuildList(struct["Builds"]) end
	for k,_ in pairs(struct) do
		assert(ListBuildsOutput_keys[k], "ListBuildsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListBuildsOutput
-- &lt;p&gt;Represents the returned data in response to a request action.&lt;/p&gt;
-- @param NextToken [NonEmptyString] &lt;p&gt;Token that indicates where to resume retrieving results on the next call to this action. If no token is returned, these results represent the end of the list.&lt;/p&gt;
-- @param Builds [BuildList] &lt;p&gt;Collection of build records that match the request.&lt;/p&gt;
function M.ListBuildsOutput(NextToken, Builds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListBuildsOutput")
	local t = { 
		["NextToken"] = NextToken,
		["Builds"] = Builds,
	}
	M.AssertListBuildsOutput(t)
	return t
end

local EC2InstanceLimit_keys = { "EC2InstanceType" = true, "CurrentInstances" = true, "InstanceLimit" = true, nil }

function M.AssertEC2InstanceLimit(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EC2InstanceLimit to be of type 'table'")
	if struct["EC2InstanceType"] then M.AssertEC2InstanceType(struct["EC2InstanceType"]) end
	if struct["CurrentInstances"] then M.AssertWholeNumber(struct["CurrentInstances"]) end
	if struct["InstanceLimit"] then M.AssertWholeNumber(struct["InstanceLimit"]) end
	for k,_ in pairs(struct) do
		assert(EC2InstanceLimit_keys[k], "EC2InstanceLimit contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EC2InstanceLimit
-- &lt;p&gt;Maximum number of instances allowed based on the Amazon Elastic Compute Cloud (Amazon EC2) instance type. Instance limits can be retrieved by calling &lt;a&gt;DescribeEC2InstanceLimits&lt;/a&gt;.&lt;/p&gt;
-- @param EC2InstanceType [EC2InstanceType] &lt;p&gt;Name of an EC2 instance type that is supported in Amazon GameLift. A fleet instance type determines the computing resources of each instance in the fleet, including CPU, memory, storage, and networking capacity. Amazon GameLift supports the following EC2 instance types. See &lt;a href=&quot;http://aws.amazon.com/ec2/instance-types/&quot;&gt;Amazon EC2 Instance Types&lt;/a&gt; for detailed descriptions.&lt;/p&gt;
-- @param CurrentInstances [WholeNumber] &lt;p&gt;Number of instances of the specified type that are currently in use by this AWS account.&lt;/p&gt;
-- @param InstanceLimit [WholeNumber] &lt;p&gt;Number of instances allowed.&lt;/p&gt;
function M.EC2InstanceLimit(EC2InstanceType, CurrentInstances, InstanceLimit, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EC2InstanceLimit")
	local t = { 
		["EC2InstanceType"] = EC2InstanceType,
		["CurrentInstances"] = CurrentInstances,
		["InstanceLimit"] = InstanceLimit,
	}
	M.AssertEC2InstanceLimit(t)
	return t
end

local DescribeScalingPoliciesInput_keys = { "StatusFilter" = true, "Limit" = true, "NextToken" = true, "FleetId" = true, nil }

function M.AssertDescribeScalingPoliciesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeScalingPoliciesInput to be of type 'table'")
	assert(struct["FleetId"], "Expected key FleetId to exist in table")
	if struct["StatusFilter"] then M.AssertScalingStatusType(struct["StatusFilter"]) end
	if struct["Limit"] then M.AssertPositiveInteger(struct["Limit"]) end
	if struct["NextToken"] then M.AssertNonZeroAndMaxString(struct["NextToken"]) end
	if struct["FleetId"] then M.AssertFleetId(struct["FleetId"]) end
	for k,_ in pairs(struct) do
		assert(DescribeScalingPoliciesInput_keys[k], "DescribeScalingPoliciesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeScalingPoliciesInput
-- &lt;p&gt;Represents the input for a request action.&lt;/p&gt;
-- @param StatusFilter [ScalingStatusType] &lt;p&gt;Scaling policy status to filter results on. A scaling policy is only in force when in an &lt;code&gt;ACTIVE&lt;/code&gt; status.&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;ACTIVE&lt;/b&gt; – The scaling policy is currently in force.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;UPDATEREQUESTED&lt;/b&gt; – A request to update the scaling policy has been received.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;UPDATING&lt;/b&gt; – A change is being made to the scaling policy.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;DELETEREQUESTED&lt;/b&gt; – A request to delete the scaling policy has been received.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;DELETING&lt;/b&gt; – The scaling policy is being deleted.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;DELETED&lt;/b&gt; – The scaling policy has been deleted.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;ERROR&lt;/b&gt; – An error occurred in creating the policy. It should be removed and recreated.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param Limit [PositiveInteger] &lt;p&gt;Maximum number of results to return. Use this parameter with &lt;code&gt;NextToken&lt;/code&gt; to get results as a set of sequential pages.&lt;/p&gt;
-- @param NextToken [NonZeroAndMaxString] &lt;p&gt;Token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this action. To specify the start of the result set, do not specify a value.&lt;/p&gt;
-- @param FleetId [FleetId] &lt;p&gt;Unique identifier for a fleet to retrieve scaling policies for.&lt;/p&gt;
-- Required parameter: FleetId
function M.DescribeScalingPoliciesInput(StatusFilter, Limit, NextToken, FleetId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeScalingPoliciesInput")
	local t = { 
		["StatusFilter"] = StatusFilter,
		["Limit"] = Limit,
		["NextToken"] = NextToken,
		["FleetId"] = FleetId,
	}
	M.AssertDescribeScalingPoliciesInput(t)
	return t
end

local UpdateFleetCapacityOutput_keys = { "FleetId" = true, nil }

function M.AssertUpdateFleetCapacityOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateFleetCapacityOutput to be of type 'table'")
	if struct["FleetId"] then M.AssertFleetId(struct["FleetId"]) end
	for k,_ in pairs(struct) do
		assert(UpdateFleetCapacityOutput_keys[k], "UpdateFleetCapacityOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateFleetCapacityOutput
-- &lt;p&gt;Represents the returned data in response to a request action.&lt;/p&gt;
-- @param FleetId [FleetId] &lt;p&gt;Unique identifier for a fleet that was updated.&lt;/p&gt;
function M.UpdateFleetCapacityOutput(FleetId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateFleetCapacityOutput")
	local t = { 
		["FleetId"] = FleetId,
	}
	M.AssertUpdateFleetCapacityOutput(t)
	return t
end

local FleetCapacityExceededException_keys = { "Message" = true, nil }

function M.AssertFleetCapacityExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FleetCapacityExceededException to be of type 'table'")
	if struct["Message"] then M.AssertNonEmptyString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(FleetCapacityExceededException_keys[k], "FleetCapacityExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FleetCapacityExceededException
-- &lt;p&gt;The specified fleet has no available instances to fulfill a &lt;code&gt;CreateGameSession&lt;/code&gt; request. Clients can retry such requests immediately or after a waiting period.&lt;/p&gt;
-- @param Message [NonEmptyString] &lt;p&gt;The specified fleet has no available instances to fulfill a &lt;code&gt;CreateGameSession&lt;/code&gt; request. Clients can retry such requests immediately or after a waiting period.&lt;/p&gt;
function M.FleetCapacityExceededException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating FleetCapacityExceededException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertFleetCapacityExceededException(t)
	return t
end

local UpdateBuildOutput_keys = { "Build" = true, nil }

function M.AssertUpdateBuildOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateBuildOutput to be of type 'table'")
	if struct["Build"] then M.AssertBuild(struct["Build"]) end
	for k,_ in pairs(struct) do
		assert(UpdateBuildOutput_keys[k], "UpdateBuildOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateBuildOutput
-- &lt;p&gt;Represents the returned data in response to a request action.&lt;/p&gt;
-- @param Build [Build] &lt;p&gt;Object that contains the updated build record.&lt;/p&gt;
function M.UpdateBuildOutput(Build, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateBuildOutput")
	local t = { 
		["Build"] = Build,
	}
	M.AssertUpdateBuildOutput(t)
	return t
end

local StartGameSessionPlacementOutput_keys = { "GameSessionPlacement" = true, nil }

function M.AssertStartGameSessionPlacementOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartGameSessionPlacementOutput to be of type 'table'")
	if struct["GameSessionPlacement"] then M.AssertGameSessionPlacement(struct["GameSessionPlacement"]) end
	for k,_ in pairs(struct) do
		assert(StartGameSessionPlacementOutput_keys[k], "StartGameSessionPlacementOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartGameSessionPlacementOutput
-- &lt;p&gt;Represents the returned data in response to a request action.&lt;/p&gt;
-- @param GameSessionPlacement [GameSessionPlacement] &lt;p&gt;Object that describes the newly created game session placement. This object includes all the information provided in the request, as well as start/end time stamps and placement status. &lt;/p&gt;
function M.StartGameSessionPlacementOutput(GameSessionPlacement, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StartGameSessionPlacementOutput")
	local t = { 
		["GameSessionPlacement"] = GameSessionPlacement,
	}
	M.AssertStartGameSessionPlacementOutput(t)
	return t
end

local ListBuildsInput_keys = { "Status" = true, "NextToken" = true, "Limit" = true, nil }

function M.AssertListBuildsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListBuildsInput to be of type 'table'")
	if struct["Status"] then M.AssertBuildStatus(struct["Status"]) end
	if struct["NextToken"] then M.AssertNonEmptyString(struct["NextToken"]) end
	if struct["Limit"] then M.AssertPositiveInteger(struct["Limit"]) end
	for k,_ in pairs(struct) do
		assert(ListBuildsInput_keys[k], "ListBuildsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListBuildsInput
-- &lt;p&gt;Represents the input for a request action.&lt;/p&gt;
-- @param Status [BuildStatus] &lt;p&gt;Build status to filter results by. To retrieve all builds, leave this parameter empty.&lt;/p&gt; &lt;p&gt;Possible build statuses include the following:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;INITIALIZED&lt;/b&gt; – A new build has been defined, but no files have been uploaded. You cannot create fleets for builds that are in this status. When a build is successfully created, the build status is set to this value. &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;READY&lt;/b&gt; – The game build has been successfully uploaded. You can now create new fleets for this build.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;FAILED&lt;/b&gt; – The game build upload failed. You cannot create new fleets for this build. &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param NextToken [NonEmptyString] &lt;p&gt;Token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this action. To specify the start of the result set, do not specify a value.&lt;/p&gt;
-- @param Limit [PositiveInteger] &lt;p&gt;Maximum number of results to return. Use this parameter with &lt;code&gt;NextToken&lt;/code&gt; to get results as a set of sequential pages.&lt;/p&gt;
function M.ListBuildsInput(Status, NextToken, Limit, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListBuildsInput")
	local t = { 
		["Status"] = Status,
		["NextToken"] = NextToken,
		["Limit"] = Limit,
	}
	M.AssertListBuildsInput(t)
	return t
end

local UpdateRuntimeConfigurationOutput_keys = { "RuntimeConfiguration" = true, nil }

function M.AssertUpdateRuntimeConfigurationOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateRuntimeConfigurationOutput to be of type 'table'")
	if struct["RuntimeConfiguration"] then M.AssertRuntimeConfiguration(struct["RuntimeConfiguration"]) end
	for k,_ in pairs(struct) do
		assert(UpdateRuntimeConfigurationOutput_keys[k], "UpdateRuntimeConfigurationOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateRuntimeConfigurationOutput
-- &lt;p&gt;Represents the returned data in response to a request action.&lt;/p&gt;
-- @param RuntimeConfiguration [RuntimeConfiguration] &lt;p&gt;The runtime configuration currently in force. If the update was successful, this object matches the one in the request.&lt;/p&gt;
function M.UpdateRuntimeConfigurationOutput(RuntimeConfiguration, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateRuntimeConfigurationOutput")
	local t = { 
		["RuntimeConfiguration"] = RuntimeConfiguration,
	}
	M.AssertUpdateRuntimeConfigurationOutput(t)
	return t
end

local DeleteGameSessionQueueInput_keys = { "Name" = true, nil }

function M.AssertDeleteGameSessionQueueInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteGameSessionQueueInput to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Name"] then M.AssertGameSessionQueueName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(DeleteGameSessionQueueInput_keys[k], "DeleteGameSessionQueueInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteGameSessionQueueInput
-- &lt;p&gt;Represents the input for a request action.&lt;/p&gt;
-- @param Name [GameSessionQueueName] &lt;p&gt;Descriptive label that is associated with queue. Queue names must be unique within each region.&lt;/p&gt;
-- Required parameter: Name
function M.DeleteGameSessionQueueInput(Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteGameSessionQueueInput")
	local t = { 
		["Name"] = Name,
	}
	M.AssertDeleteGameSessionQueueInput(t)
	return t
end

local CreateBuildInput_keys = { "StorageLocation" = true, "Version" = true, "Name" = true, "OperatingSystem" = true, nil }

function M.AssertCreateBuildInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateBuildInput to be of type 'table'")
	if struct["StorageLocation"] then M.AssertS3Location(struct["StorageLocation"]) end
	if struct["Version"] then M.AssertNonZeroAndMaxString(struct["Version"]) end
	if struct["Name"] then M.AssertNonZeroAndMaxString(struct["Name"]) end
	if struct["OperatingSystem"] then M.AssertOperatingSystem(struct["OperatingSystem"]) end
	for k,_ in pairs(struct) do
		assert(CreateBuildInput_keys[k], "CreateBuildInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateBuildInput
-- &lt;p&gt;Represents the input for a request action.&lt;/p&gt;
-- @param StorageLocation [S3Location] &lt;p&gt;Amazon S3 location of the game build files to be uploaded. The S3 bucket must be owned by the same AWS account that you're using to manage Amazon GameLift. It also must in the same region that you want to create a new build in. Before calling &lt;code&gt;CreateBuild&lt;/code&gt; with this location, you must allow Amazon GameLift to access your Amazon S3 bucket (see &lt;a href=&quot;http://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-build-cli-uploading.html#gamelift-build-cli-uploading-create-build&quot;&gt;Create a Build with Files in Amazon S3&lt;/a&gt;).&lt;/p&gt;
-- @param Version [NonZeroAndMaxString] &lt;p&gt;Version that is associated with this build. Version strings do not need to be unique. You can use &lt;a&gt;UpdateBuild&lt;/a&gt; to change this value later. &lt;/p&gt;
-- @param Name [NonZeroAndMaxString] &lt;p&gt;Descriptive label that is associated with a build. Build names do not need to be unique. You can use &lt;a&gt;UpdateBuild&lt;/a&gt; to change this value later. &lt;/p&gt;
-- @param OperatingSystem [OperatingSystem] &lt;p&gt;Operating system that the game server binaries are built to run on. This value determines the type of fleet resources that you can use for this build. If your game build contains multiple executables, they all must run on the same operating system.&lt;/p&gt;
function M.CreateBuildInput(StorageLocation, Version, Name, OperatingSystem, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateBuildInput")
	local t = { 
		["StorageLocation"] = StorageLocation,
		["Version"] = Version,
		["Name"] = Name,
		["OperatingSystem"] = OperatingSystem,
	}
	M.AssertCreateBuildInput(t)
	return t
end

local SearchGameSessionsOutput_keys = { "GameSessions" = true, "NextToken" = true, nil }

function M.AssertSearchGameSessionsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SearchGameSessionsOutput to be of type 'table'")
	if struct["GameSessions"] then M.AssertGameSessionList(struct["GameSessions"]) end
	if struct["NextToken"] then M.AssertNonZeroAndMaxString(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(SearchGameSessionsOutput_keys[k], "SearchGameSessionsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SearchGameSessionsOutput
-- &lt;p&gt;Represents the returned data in response to a request action.&lt;/p&gt;
-- @param GameSessions [GameSessionList] &lt;p&gt;Collection of objects containing game session properties for each session matching the request.&lt;/p&gt;
-- @param NextToken [NonZeroAndMaxString] &lt;p&gt;Token that indicates where to resume retrieving results on the next call to this action. If no token is returned, these results represent the end of the list.&lt;/p&gt;
function M.SearchGameSessionsOutput(GameSessions, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SearchGameSessionsOutput")
	local t = { 
		["GameSessions"] = GameSessions,
		["NextToken"] = NextToken,
	}
	M.AssertSearchGameSessionsOutput(t)
	return t
end

local AwsCredentials_keys = { "SecretAccessKey" = true, "SessionToken" = true, "AccessKeyId" = true, nil }

function M.AssertAwsCredentials(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AwsCredentials to be of type 'table'")
	if struct["SecretAccessKey"] then M.AssertNonEmptyString(struct["SecretAccessKey"]) end
	if struct["SessionToken"] then M.AssertNonEmptyString(struct["SessionToken"]) end
	if struct["AccessKeyId"] then M.AssertNonEmptyString(struct["AccessKeyId"]) end
	for k,_ in pairs(struct) do
		assert(AwsCredentials_keys[k], "AwsCredentials contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AwsCredentials
-- &lt;p&gt;AWS access credentials sometimes used for uploading game build files to Amazon GameLift. They are valid for a limited time. If they expire before you upload your game build, get a new set by calling &lt;a&gt;RequestUploadCredentials&lt;/a&gt;.&lt;/p&gt;
-- @param SecretAccessKey [NonEmptyString] &lt;p&gt;Secret key for an AWS account.&lt;/p&gt;
-- @param SessionToken [NonEmptyString] &lt;p&gt;Token specific to a build ID.&lt;/p&gt;
-- @param AccessKeyId [NonEmptyString] &lt;p&gt;Access key for an AWS account.&lt;/p&gt;
function M.AwsCredentials(SecretAccessKey, SessionToken, AccessKeyId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AwsCredentials")
	local t = { 
		["SecretAccessKey"] = SecretAccessKey,
		["SessionToken"] = SessionToken,
		["AccessKeyId"] = AccessKeyId,
	}
	M.AssertAwsCredentials(t)
	return t
end

local DescribeEC2InstanceLimitsInput_keys = { "EC2InstanceType" = true, nil }

function M.AssertDescribeEC2InstanceLimitsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEC2InstanceLimitsInput to be of type 'table'")
	if struct["EC2InstanceType"] then M.AssertEC2InstanceType(struct["EC2InstanceType"]) end
	for k,_ in pairs(struct) do
		assert(DescribeEC2InstanceLimitsInput_keys[k], "DescribeEC2InstanceLimitsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEC2InstanceLimitsInput
-- &lt;p&gt;Represents the input for a request action.&lt;/p&gt;
-- @param EC2InstanceType [EC2InstanceType] &lt;p&gt;Name of an EC2 instance type that is supported in Amazon GameLift. A fleet instance type determines the computing resources of each instance in the fleet, including CPU, memory, storage, and networking capacity. Amazon GameLift supports the following EC2 instance types. See &lt;a href=&quot;http://aws.amazon.com/ec2/instance-types/&quot;&gt;Amazon EC2 Instance Types&lt;/a&gt; for detailed descriptions. Leave this parameter blank to retrieve limits for all types.&lt;/p&gt;
function M.DescribeEC2InstanceLimitsInput(EC2InstanceType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeEC2InstanceLimitsInput")
	local t = { 
		["EC2InstanceType"] = EC2InstanceType,
	}
	M.AssertDescribeEC2InstanceLimitsInput(t)
	return t
end

local CreateBuildOutput_keys = { "StorageLocation" = true, "Build" = true, "UploadCredentials" = true, nil }

function M.AssertCreateBuildOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateBuildOutput to be of type 'table'")
	if struct["StorageLocation"] then M.AssertS3Location(struct["StorageLocation"]) end
	if struct["Build"] then M.AssertBuild(struct["Build"]) end
	if struct["UploadCredentials"] then M.AssertAwsCredentials(struct["UploadCredentials"]) end
	for k,_ in pairs(struct) do
		assert(CreateBuildOutput_keys[k], "CreateBuildOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateBuildOutput
-- &lt;p&gt;Represents the returned data in response to a request action.&lt;/p&gt;
-- @param StorageLocation [S3Location] &lt;p&gt;Amazon S3 location specified in the request.&lt;/p&gt;
-- @param Build [Build] &lt;p&gt;The newly created build record, including a unique build ID and status. &lt;/p&gt;
-- @param UploadCredentials [AwsCredentials] &lt;p&gt;This element is not currently in use.&lt;/p&gt;
function M.CreateBuildOutput(StorageLocation, Build, UploadCredentials, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateBuildOutput")
	local t = { 
		["StorageLocation"] = StorageLocation,
		["Build"] = Build,
		["UploadCredentials"] = UploadCredentials,
	}
	M.AssertCreateBuildOutput(t)
	return t
end

local RequestUploadCredentialsOutput_keys = { "StorageLocation" = true, "UploadCredentials" = true, nil }

function M.AssertRequestUploadCredentialsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RequestUploadCredentialsOutput to be of type 'table'")
	if struct["StorageLocation"] then M.AssertS3Location(struct["StorageLocation"]) end
	if struct["UploadCredentials"] then M.AssertAwsCredentials(struct["UploadCredentials"]) end
	for k,_ in pairs(struct) do
		assert(RequestUploadCredentialsOutput_keys[k], "RequestUploadCredentialsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RequestUploadCredentialsOutput
-- &lt;p&gt;Represents the returned data in response to a request action.&lt;/p&gt;
-- @param StorageLocation [S3Location] &lt;p&gt;Amazon S3 path and key, identifying where the game build files are stored.&lt;/p&gt;
-- @param UploadCredentials [AwsCredentials] &lt;p&gt;AWS credentials required when uploading a game build to the storage location. These credentials have a limited lifespan and are valid only for the build they were issued for.&lt;/p&gt;
function M.RequestUploadCredentialsOutput(StorageLocation, UploadCredentials, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RequestUploadCredentialsOutput")
	local t = { 
		["StorageLocation"] = StorageLocation,
		["UploadCredentials"] = UploadCredentials,
	}
	M.AssertRequestUploadCredentialsOutput(t)
	return t
end

local ListFleetsInput_keys = { "BuildId" = true, "NextToken" = true, "Limit" = true, nil }

function M.AssertListFleetsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListFleetsInput to be of type 'table'")
	if struct["BuildId"] then M.AssertBuildId(struct["BuildId"]) end
	if struct["NextToken"] then M.AssertNonZeroAndMaxString(struct["NextToken"]) end
	if struct["Limit"] then M.AssertPositiveInteger(struct["Limit"]) end
	for k,_ in pairs(struct) do
		assert(ListFleetsInput_keys[k], "ListFleetsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListFleetsInput
-- &lt;p&gt;Represents the input for a request action.&lt;/p&gt;
-- @param BuildId [BuildId] &lt;p&gt;Unique identifier for a build to return fleets for. Use this parameter to return only fleets using the specified build. To retrieve all fleets, leave this parameter empty.&lt;/p&gt;
-- @param NextToken [NonZeroAndMaxString] &lt;p&gt;Token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this action. To specify the start of the result set, do not specify a value.&lt;/p&gt;
-- @param Limit [PositiveInteger] &lt;p&gt;Maximum number of results to return. Use this parameter with &lt;code&gt;NextToken&lt;/code&gt; to get results as a set of sequential pages.&lt;/p&gt;
function M.ListFleetsInput(BuildId, NextToken, Limit, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListFleetsInput")
	local t = { 
		["BuildId"] = BuildId,
		["NextToken"] = NextToken,
		["Limit"] = Limit,
	}
	M.AssertListFleetsInput(t)
	return t
end

local DescribeGameSessionQueuesOutput_keys = { "GameSessionQueues" = true, "NextToken" = true, nil }

function M.AssertDescribeGameSessionQueuesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeGameSessionQueuesOutput to be of type 'table'")
	if struct["GameSessionQueues"] then M.AssertGameSessionQueueList(struct["GameSessionQueues"]) end
	if struct["NextToken"] then M.AssertNonZeroAndMaxString(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(DescribeGameSessionQueuesOutput_keys[k], "DescribeGameSessionQueuesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeGameSessionQueuesOutput
-- &lt;p&gt;Represents the returned data in response to a request action.&lt;/p&gt;
-- @param GameSessionQueues [GameSessionQueueList] &lt;p&gt;Collection of objects that describes the requested game session queues.&lt;/p&gt;
-- @param NextToken [NonZeroAndMaxString] &lt;p&gt;Token that indicates where to resume retrieving results on the next call to this action. If no token is returned, these results represent the end of the list.&lt;/p&gt;
function M.DescribeGameSessionQueuesOutput(GameSessionQueues, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeGameSessionQueuesOutput")
	local t = { 
		["GameSessionQueues"] = GameSessionQueues,
		["NextToken"] = NextToken,
	}
	M.AssertDescribeGameSessionQueuesOutput(t)
	return t
end

local IdempotentParameterMismatchException_keys = { "Message" = true, nil }

function M.AssertIdempotentParameterMismatchException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IdempotentParameterMismatchException to be of type 'table'")
	if struct["Message"] then M.AssertNonEmptyString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(IdempotentParameterMismatchException_keys[k], "IdempotentParameterMismatchException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IdempotentParameterMismatchException
-- &lt;p&gt;A game session with this custom ID string already exists in this fleet. Resolve this conflict before retrying this request.&lt;/p&gt;
-- @param Message [NonEmptyString] &lt;p&gt;A game session with this custom ID string already exists in this fleet. Resolve this conflict before retrying this request.&lt;/p&gt;
function M.IdempotentParameterMismatchException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating IdempotentParameterMismatchException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertIdempotentParameterMismatchException(t)
	return t
end

local DescribeGameSessionsInput_keys = { "Limit" = true, "GameSessionId" = true, "StatusFilter" = true, "FleetId" = true, "NextToken" = true, "AliasId" = true, nil }

function M.AssertDescribeGameSessionsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeGameSessionsInput to be of type 'table'")
	if struct["Limit"] then M.AssertPositiveInteger(struct["Limit"]) end
	if struct["GameSessionId"] then M.AssertArnStringModel(struct["GameSessionId"]) end
	if struct["StatusFilter"] then M.AssertNonZeroAndMaxString(struct["StatusFilter"]) end
	if struct["FleetId"] then M.AssertFleetId(struct["FleetId"]) end
	if struct["NextToken"] then M.AssertNonZeroAndMaxString(struct["NextToken"]) end
	if struct["AliasId"] then M.AssertAliasId(struct["AliasId"]) end
	for k,_ in pairs(struct) do
		assert(DescribeGameSessionsInput_keys[k], "DescribeGameSessionsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeGameSessionsInput
-- &lt;p&gt;Represents the input for a request action.&lt;/p&gt;
-- @param Limit [PositiveInteger] &lt;p&gt;Maximum number of results to return. Use this parameter with &lt;code&gt;NextToken&lt;/code&gt; to get results as a set of sequential pages.&lt;/p&gt;
-- @param GameSessionId [ArnStringModel] &lt;p&gt;Unique identifier for the game session to retrieve. You can use either a &lt;code&gt;GameSessionId&lt;/code&gt; or &lt;code&gt;GameSessionArn&lt;/code&gt; value. &lt;/p&gt;
-- @param StatusFilter [NonZeroAndMaxString] &lt;p&gt;Game session status to filter results on. Possible game session statuses include &lt;code&gt;ACTIVE&lt;/code&gt;, &lt;code&gt;TERMINATED&lt;/code&gt;, &lt;code&gt;ACTIVATING&lt;/code&gt;, and &lt;code&gt;TERMINATING&lt;/code&gt; (the last two are transitory). &lt;/p&gt;
-- @param FleetId [FleetId] &lt;p&gt;Unique identifier for a fleet to retrieve all game sessions for.&lt;/p&gt;
-- @param NextToken [NonZeroAndMaxString] &lt;p&gt;Token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this action. To specify the start of the result set, do not specify a value.&lt;/p&gt;
-- @param AliasId [AliasId] &lt;p&gt;Unique identifier for an alias associated with the fleet to retrieve all game sessions for. &lt;/p&gt;
function M.DescribeGameSessionsInput(Limit, GameSessionId, StatusFilter, FleetId, NextToken, AliasId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeGameSessionsInput")
	local t = { 
		["Limit"] = Limit,
		["GameSessionId"] = GameSessionId,
		["StatusFilter"] = StatusFilter,
		["FleetId"] = FleetId,
		["NextToken"] = NextToken,
		["AliasId"] = AliasId,
	}
	M.AssertDescribeGameSessionsInput(t)
	return t
end

local IpPermission_keys = { "ToPort" = true, "FromPort" = true, "Protocol" = true, "IpRange" = true, nil }

function M.AssertIpPermission(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IpPermission to be of type 'table'")
	assert(struct["FromPort"], "Expected key FromPort to exist in table")
	assert(struct["ToPort"], "Expected key ToPort to exist in table")
	assert(struct["IpRange"], "Expected key IpRange to exist in table")
	assert(struct["Protocol"], "Expected key Protocol to exist in table")
	if struct["ToPort"] then M.AssertPortNumber(struct["ToPort"]) end
	if struct["FromPort"] then M.AssertPortNumber(struct["FromPort"]) end
	if struct["Protocol"] then M.AssertIpProtocol(struct["Protocol"]) end
	if struct["IpRange"] then M.AssertNonBlankString(struct["IpRange"]) end
	for k,_ in pairs(struct) do
		assert(IpPermission_keys[k], "IpPermission contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IpPermission
-- &lt;p&gt;A range of IP addresses and port settings that allow inbound traffic to connect to server processes on Amazon GameLift. Each game session hosted on a fleet is assigned a unique combination of IP address and port number, which must fall into the fleet's allowed ranges. This combination is included in the &lt;a&gt;GameSession&lt;/a&gt; object. &lt;/p&gt;
-- @param ToPort [PortNumber] &lt;p&gt;Ending value for a range of allowed port numbers. Port numbers are end-inclusive. This value must be higher than &lt;code&gt;FromPort&lt;/code&gt;.&lt;/p&gt;
-- @param FromPort [PortNumber] &lt;p&gt;Starting value for a range of allowed port numbers.&lt;/p&gt;
-- @param Protocol [IpProtocol] &lt;p&gt;Network communication protocol used by the fleet.&lt;/p&gt;
-- @param IpRange [NonBlankString] &lt;p&gt;Range of allowed IP addresses. This value must be expressed in CIDR notation. Example: &quot;&lt;code&gt;000.000.000.000/[subnet mask]&lt;/code&gt;&quot; or optionally the shortened version &quot;&lt;code&gt;0.0.0.0/[subnet mask]&lt;/code&gt;&quot;.&lt;/p&gt;
-- Required parameter: FromPort
-- Required parameter: ToPort
-- Required parameter: IpRange
-- Required parameter: Protocol
function M.IpPermission(ToPort, FromPort, Protocol, IpRange, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating IpPermission")
	local t = { 
		["ToPort"] = ToPort,
		["FromPort"] = FromPort,
		["Protocol"] = Protocol,
		["IpRange"] = IpRange,
	}
	M.AssertIpPermission(t)
	return t
end

local Instance_keys = { "Status" = true, "InstanceId" = true, "Type" = true, "CreationTime" = true, "FleetId" = true, "IpAddress" = true, "OperatingSystem" = true, nil }

function M.AssertInstance(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Instance to be of type 'table'")
	if struct["Status"] then M.AssertInstanceStatus(struct["Status"]) end
	if struct["InstanceId"] then M.AssertInstanceId(struct["InstanceId"]) end
	if struct["Type"] then M.AssertEC2InstanceType(struct["Type"]) end
	if struct["CreationTime"] then M.AssertTimestamp(struct["CreationTime"]) end
	if struct["FleetId"] then M.AssertFleetId(struct["FleetId"]) end
	if struct["IpAddress"] then M.AssertIpAddress(struct["IpAddress"]) end
	if struct["OperatingSystem"] then M.AssertOperatingSystem(struct["OperatingSystem"]) end
	for k,_ in pairs(struct) do
		assert(Instance_keys[k], "Instance contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Instance
-- &lt;p&gt;Properties that describe an instance of a virtual computing resource that hosts one or more game servers. A fleet contains zero or more instances.&lt;/p&gt;
-- @param Status [InstanceStatus] &lt;p&gt;Current status of the instance. Possible statuses include the following:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;PENDING&lt;/b&gt; – The instance is in the process of being created and launching server processes as defined in the fleet's runtime configuration. &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;ACTIVE&lt;/b&gt; – The instance has been successfully created and at least one server process has successfully launched and reported back to Amazon GameLift that it is ready to host a game session. The instance is now considered ready to host game sessions. &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;TERMINATING&lt;/b&gt; – The instance is in the process of shutting down. This may happen to reduce capacity during a scaling down event or to recycle resources in the event of a problem.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param InstanceId [InstanceId] &lt;p&gt;Unique identifier for an instance.&lt;/p&gt;
-- @param Type [EC2InstanceType] &lt;p&gt;EC2 instance type that defines the computing resources of this instance. &lt;/p&gt;
-- @param CreationTime [Timestamp] &lt;p&gt;Time stamp indicating when this data object was created. Format is a number expressed in Unix time as milliseconds (for example &quot;1469498468.057&quot;).&lt;/p&gt;
-- @param FleetId [FleetId] &lt;p&gt;Unique identifier for a fleet that the instance is in.&lt;/p&gt;
-- @param IpAddress [IpAddress] &lt;p&gt;IP address assigned to the instance.&lt;/p&gt;
-- @param OperatingSystem [OperatingSystem] &lt;p&gt;Operating system that is running on this instance. &lt;/p&gt;
function M.Instance(Status, InstanceId, Type, CreationTime, FleetId, IpAddress, OperatingSystem, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Instance")
	local t = { 
		["Status"] = Status,
		["InstanceId"] = InstanceId,
		["Type"] = Type,
		["CreationTime"] = CreationTime,
		["FleetId"] = FleetId,
		["IpAddress"] = IpAddress,
		["OperatingSystem"] = OperatingSystem,
	}
	M.AssertInstance(t)
	return t
end

local StopGameSessionPlacementInput_keys = { "PlacementId" = true, nil }

function M.AssertStopGameSessionPlacementInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopGameSessionPlacementInput to be of type 'table'")
	assert(struct["PlacementId"], "Expected key PlacementId to exist in table")
	if struct["PlacementId"] then M.AssertIdStringModel(struct["PlacementId"]) end
	for k,_ in pairs(struct) do
		assert(StopGameSessionPlacementInput_keys[k], "StopGameSessionPlacementInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopGameSessionPlacementInput
-- &lt;p&gt;Represents the input for a request action.&lt;/p&gt;
-- @param PlacementId [IdStringModel] &lt;p&gt;Unique identifier for a game session placement to cancel.&lt;/p&gt;
-- Required parameter: PlacementId
function M.StopGameSessionPlacementInput(PlacementId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StopGameSessionPlacementInput")
	local t = { 
		["PlacementId"] = PlacementId,
	}
	M.AssertStopGameSessionPlacementInput(t)
	return t
end

local Event_keys = { "EventId" = true, "ResourceId" = true, "Message" = true, "EventTime" = true, "EventCode" = true, nil }

function M.AssertEvent(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Event to be of type 'table'")
	if struct["EventId"] then M.AssertNonZeroAndMaxString(struct["EventId"]) end
	if struct["ResourceId"] then M.AssertNonZeroAndMaxString(struct["ResourceId"]) end
	if struct["Message"] then M.AssertNonEmptyString(struct["Message"]) end
	if struct["EventTime"] then M.AssertTimestamp(struct["EventTime"]) end
	if struct["EventCode"] then M.AssertEventCode(struct["EventCode"]) end
	for k,_ in pairs(struct) do
		assert(Event_keys[k], "Event contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Event
-- &lt;p&gt;Log entry describing an event involving Amazon GameLift resources (such as a fleet). In addition to tracking activity, event codes and messages can provide additional information for troubleshooting and debugging problems.&lt;/p&gt;
-- @param EventId [NonZeroAndMaxString] &lt;p&gt;Unique identifier for a fleet event.&lt;/p&gt;
-- @param ResourceId [NonZeroAndMaxString] &lt;p&gt;Unique identifier for an event resource, such as a fleet ID.&lt;/p&gt;
-- @param Message [NonEmptyString] &lt;p&gt;Additional information related to the event.&lt;/p&gt;
-- @param EventTime [Timestamp] &lt;p&gt;Time stamp indicating when this event occurred. Format is a number expressed in Unix time as milliseconds (for example &quot;1469498468.057&quot;).&lt;/p&gt;
-- @param EventCode [EventCode] &lt;p&gt;Type of event being logged. &lt;/p&gt;
function M.Event(EventId, ResourceId, Message, EventTime, EventCode, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Event")
	local t = { 
		["EventId"] = EventId,
		["ResourceId"] = ResourceId,
		["Message"] = Message,
		["EventTime"] = EventTime,
		["EventCode"] = EventCode,
	}
	M.AssertEvent(t)
	return t
end

local StartGameSessionPlacementInput_keys = { "MaximumPlayerSessionCount" = true, "PlacementId" = true, "GameSessionName" = true, "GameSessionQueueName" = true, "GameProperties" = true, "DesiredPlayerSessions" = true, "PlayerLatencies" = true, nil }

function M.AssertStartGameSessionPlacementInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartGameSessionPlacementInput to be of type 'table'")
	assert(struct["PlacementId"], "Expected key PlacementId to exist in table")
	assert(struct["GameSessionQueueName"], "Expected key GameSessionQueueName to exist in table")
	assert(struct["MaximumPlayerSessionCount"], "Expected key MaximumPlayerSessionCount to exist in table")
	if struct["MaximumPlayerSessionCount"] then M.AssertWholeNumber(struct["MaximumPlayerSessionCount"]) end
	if struct["PlacementId"] then M.AssertIdStringModel(struct["PlacementId"]) end
	if struct["GameSessionName"] then M.AssertNonZeroAndMaxString(struct["GameSessionName"]) end
	if struct["GameSessionQueueName"] then M.AssertGameSessionQueueName(struct["GameSessionQueueName"]) end
	if struct["GameProperties"] then M.AssertGamePropertyList(struct["GameProperties"]) end
	if struct["DesiredPlayerSessions"] then M.AssertDesiredPlayerSessionList(struct["DesiredPlayerSessions"]) end
	if struct["PlayerLatencies"] then M.AssertPlayerLatencyList(struct["PlayerLatencies"]) end
	for k,_ in pairs(struct) do
		assert(StartGameSessionPlacementInput_keys[k], "StartGameSessionPlacementInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartGameSessionPlacementInput
-- &lt;p&gt;Represents the input for a request action.&lt;/p&gt;
-- @param MaximumPlayerSessionCount [WholeNumber] &lt;p&gt;Maximum number of players that can be connected simultaneously to the game session.&lt;/p&gt;
-- @param PlacementId [IdStringModel] &lt;p&gt;Unique identifier to assign to the new game session placement. This value is developer-defined. The value must be unique across all regions and cannot be reused unless you are resubmitting a canceled or timed-out placement request.&lt;/p&gt;
-- @param GameSessionName [NonZeroAndMaxString] &lt;p&gt;Descriptive label that is associated with a game session. Session names do not need to be unique.&lt;/p&gt;
-- @param GameSessionQueueName [GameSessionQueueName] &lt;p&gt;Name of the queue to use to place the new game session.&lt;/p&gt;
-- @param GameProperties [GamePropertyList] &lt;p&gt;Set of developer-defined properties for a game session. These properties are passed to the server process hosting the game session.&lt;/p&gt;
-- @param DesiredPlayerSessions [DesiredPlayerSessionList] &lt;p&gt;Set of information on each player to create a player session for.&lt;/p&gt;
-- @param PlayerLatencies [PlayerLatencyList] &lt;p&gt;Set of values, expressed in milliseconds, indicating the amount of latency that players are experiencing when connected to AWS regions. This information is used to try to place the new game session where it can offer the best possible gameplay experience for the players. &lt;/p&gt;
-- Required parameter: PlacementId
-- Required parameter: GameSessionQueueName
-- Required parameter: MaximumPlayerSessionCount
function M.StartGameSessionPlacementInput(MaximumPlayerSessionCount, PlacementId, GameSessionName, GameSessionQueueName, GameProperties, DesiredPlayerSessions, PlayerLatencies, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StartGameSessionPlacementInput")
	local t = { 
		["MaximumPlayerSessionCount"] = MaximumPlayerSessionCount,
		["PlacementId"] = PlacementId,
		["GameSessionName"] = GameSessionName,
		["GameSessionQueueName"] = GameSessionQueueName,
		["GameProperties"] = GameProperties,
		["DesiredPlayerSessions"] = DesiredPlayerSessions,
		["PlayerLatencies"] = PlayerLatencies,
	}
	M.AssertStartGameSessionPlacementInput(t)
	return t
end

local DescribeFleetAttributesOutput_keys = { "FleetAttributes" = true, "NextToken" = true, nil }

function M.AssertDescribeFleetAttributesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeFleetAttributesOutput to be of type 'table'")
	if struct["FleetAttributes"] then M.AssertFleetAttributesList(struct["FleetAttributes"]) end
	if struct["NextToken"] then M.AssertNonZeroAndMaxString(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(DescribeFleetAttributesOutput_keys[k], "DescribeFleetAttributesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeFleetAttributesOutput
-- &lt;p&gt;Represents the returned data in response to a request action.&lt;/p&gt;
-- @param FleetAttributes [FleetAttributesList] &lt;p&gt;Collection of objects containing attribute metadata for each requested fleet ID.&lt;/p&gt;
-- @param NextToken [NonZeroAndMaxString] &lt;p&gt;Token that indicates where to resume retrieving results on the next call to this action. If no token is returned, these results represent the end of the list.&lt;/p&gt;
function M.DescribeFleetAttributesOutput(FleetAttributes, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeFleetAttributesOutput")
	local t = { 
		["FleetAttributes"] = FleetAttributes,
		["NextToken"] = NextToken,
	}
	M.AssertDescribeFleetAttributesOutput(t)
	return t
end

local LimitExceededException_keys = { "Message" = true, nil }

function M.AssertLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LimitExceededException to be of type 'table'")
	if struct["Message"] then M.AssertNonEmptyString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(LimitExceededException_keys[k], "LimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LimitExceededException
-- &lt;p&gt;The requested operation would cause the resource to exceed the allowed service limit. Resolve the issue before retrying.&lt;/p&gt;
-- @param Message [NonEmptyString] &lt;p&gt;The requested operation would cause the resource to exceed the allowed service limit. Resolve the issue before retrying.&lt;/p&gt;
function M.LimitExceededException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LimitExceededException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertLimitExceededException(t)
	return t
end

local GetInstanceAccessOutput_keys = { "InstanceAccess" = true, nil }

function M.AssertGetInstanceAccessOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetInstanceAccessOutput to be of type 'table'")
	if struct["InstanceAccess"] then M.AssertInstanceAccess(struct["InstanceAccess"]) end
	for k,_ in pairs(struct) do
		assert(GetInstanceAccessOutput_keys[k], "GetInstanceAccessOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetInstanceAccessOutput
-- &lt;p&gt;Represents the returned data in response to a request action.&lt;/p&gt;
-- @param InstanceAccess [InstanceAccess] &lt;p&gt;Object that contains connection information for a fleet instance, including IP address and access credentials.&lt;/p&gt;
function M.GetInstanceAccessOutput(InstanceAccess, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetInstanceAccessOutput")
	local t = { 
		["InstanceAccess"] = InstanceAccess,
	}
	M.AssertGetInstanceAccessOutput(t)
	return t
end

local FleetUtilization_keys = { "CurrentPlayerSessionCount" = true, "MaximumPlayerSessionCount" = true, "ActiveServerProcessCount" = true, "FleetId" = true, "ActiveGameSessionCount" = true, nil }

function M.AssertFleetUtilization(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FleetUtilization to be of type 'table'")
	if struct["CurrentPlayerSessionCount"] then M.AssertWholeNumber(struct["CurrentPlayerSessionCount"]) end
	if struct["MaximumPlayerSessionCount"] then M.AssertWholeNumber(struct["MaximumPlayerSessionCount"]) end
	if struct["ActiveServerProcessCount"] then M.AssertWholeNumber(struct["ActiveServerProcessCount"]) end
	if struct["FleetId"] then M.AssertFleetId(struct["FleetId"]) end
	if struct["ActiveGameSessionCount"] then M.AssertWholeNumber(struct["ActiveGameSessionCount"]) end
	for k,_ in pairs(struct) do
		assert(FleetUtilization_keys[k], "FleetUtilization contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FleetUtilization
-- &lt;p&gt;Current status of fleet utilization, including the number of game and player sessions being hosted.&lt;/p&gt;
-- @param CurrentPlayerSessionCount [WholeNumber] &lt;p&gt;Number of active player sessions currently being hosted on all instances in the fleet.&lt;/p&gt;
-- @param MaximumPlayerSessionCount [WholeNumber] &lt;p&gt;Maximum players allowed across all game sessions currently being hosted on all instances in the fleet.&lt;/p&gt;
-- @param ActiveServerProcessCount [WholeNumber] &lt;p&gt;Number of server processes in an &lt;code&gt;ACTIVE&lt;/code&gt; status currently running across all instances in the fleet&lt;/p&gt;
-- @param FleetId [FleetId] &lt;p&gt;Unique identifier for a fleet.&lt;/p&gt;
-- @param ActiveGameSessionCount [WholeNumber] &lt;p&gt;Number of active game sessions currently being hosted on all instances in the fleet.&lt;/p&gt;
function M.FleetUtilization(CurrentPlayerSessionCount, MaximumPlayerSessionCount, ActiveServerProcessCount, FleetId, ActiveGameSessionCount, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating FleetUtilization")
	local t = { 
		["CurrentPlayerSessionCount"] = CurrentPlayerSessionCount,
		["MaximumPlayerSessionCount"] = MaximumPlayerSessionCount,
		["ActiveServerProcessCount"] = ActiveServerProcessCount,
		["FleetId"] = FleetId,
		["ActiveGameSessionCount"] = ActiveGameSessionCount,
	}
	M.AssertFleetUtilization(t)
	return t
end

local PlayerLatencyPolicy_keys = { "MaximumIndividualPlayerLatencyMilliseconds" = true, "PolicyDurationSeconds" = true, nil }

function M.AssertPlayerLatencyPolicy(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PlayerLatencyPolicy to be of type 'table'")
	if struct["MaximumIndividualPlayerLatencyMilliseconds"] then M.AssertWholeNumber(struct["MaximumIndividualPlayerLatencyMilliseconds"]) end
	if struct["PolicyDurationSeconds"] then M.AssertWholeNumber(struct["PolicyDurationSeconds"]) end
	for k,_ in pairs(struct) do
		assert(PlayerLatencyPolicy_keys[k], "PlayerLatencyPolicy contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PlayerLatencyPolicy
-- &lt;p&gt;Queue setting that determines the highest latency allowed for individual players when placing a game session. When a latency policy is in force, a game session cannot be placed at any destination in a region where a player is reporting latency higher than the cap. Latency policies are only enforced when the placement request contains player latency information.&lt;/p&gt; &lt;p&gt;Latency policy-related operations include:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;a&gt;CreateGameSessionQueue&lt;/a&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;a&gt;UpdateGameSessionQueue&lt;/a&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;a&gt;StartGameSessionPlacement&lt;/a&gt; &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param MaximumIndividualPlayerLatencyMilliseconds [WholeNumber] &lt;p&gt;The maximum latency value that is allowed for any player, in milliseconds. All policies must have a value set for this property.&lt;/p&gt;
-- @param PolicyDurationSeconds [WholeNumber] &lt;p&gt;The length of time, in seconds, that the policy is enforced while placing a new game session. A null value for this property means that the policy is enforced until the queue times out.&lt;/p&gt;
function M.PlayerLatencyPolicy(MaximumIndividualPlayerLatencyMilliseconds, PolicyDurationSeconds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PlayerLatencyPolicy")
	local t = { 
		["MaximumIndividualPlayerLatencyMilliseconds"] = MaximumIndividualPlayerLatencyMilliseconds,
		["PolicyDurationSeconds"] = PolicyDurationSeconds,
	}
	M.AssertPlayerLatencyPolicy(t)
	return t
end

local InternalServiceException_keys = { "Message" = true, nil }

function M.AssertInternalServiceException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InternalServiceException to be of type 'table'")
	if struct["Message"] then M.AssertNonEmptyString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(InternalServiceException_keys[k], "InternalServiceException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InternalServiceException
-- &lt;p&gt;The service encountered an unrecoverable internal failure while processing the request. Clients can retry such requests immediately or after a waiting period.&lt;/p&gt;
-- @param Message [NonEmptyString] &lt;p&gt;The service encountered an unrecoverable internal failure while processing the request. Clients can retry such requests immediately or after a waiting period.&lt;/p&gt;
function M.InternalServiceException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InternalServiceException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertInternalServiceException(t)
	return t
end

local DescribeRuntimeConfigurationOutput_keys = { "RuntimeConfiguration" = true, nil }

function M.AssertDescribeRuntimeConfigurationOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeRuntimeConfigurationOutput to be of type 'table'")
	if struct["RuntimeConfiguration"] then M.AssertRuntimeConfiguration(struct["RuntimeConfiguration"]) end
	for k,_ in pairs(struct) do
		assert(DescribeRuntimeConfigurationOutput_keys[k], "DescribeRuntimeConfigurationOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeRuntimeConfigurationOutput
-- &lt;p&gt;Represents the returned data in response to a request action.&lt;/p&gt;
-- @param RuntimeConfiguration [RuntimeConfiguration] &lt;p&gt;Instructions describing how server processes should be launched and maintained on each instance in the fleet.&lt;/p&gt;
function M.DescribeRuntimeConfigurationOutput(RuntimeConfiguration, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeRuntimeConfigurationOutput")
	local t = { 
		["RuntimeConfiguration"] = RuntimeConfiguration,
	}
	M.AssertDescribeRuntimeConfigurationOutput(t)
	return t
end

local Build_keys = { "Status" = true, "Name" = true, "BuildId" = true, "CreationTime" = true, "SizeOnDisk" = true, "Version" = true, "OperatingSystem" = true, nil }

function M.AssertBuild(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Build to be of type 'table'")
	if struct["Status"] then M.AssertBuildStatus(struct["Status"]) end
	if struct["Name"] then M.AssertFreeText(struct["Name"]) end
	if struct["BuildId"] then M.AssertBuildId(struct["BuildId"]) end
	if struct["CreationTime"] then M.AssertTimestamp(struct["CreationTime"]) end
	if struct["SizeOnDisk"] then M.AssertPositiveLong(struct["SizeOnDisk"]) end
	if struct["Version"] then M.AssertFreeText(struct["Version"]) end
	if struct["OperatingSystem"] then M.AssertOperatingSystem(struct["OperatingSystem"]) end
	for k,_ in pairs(struct) do
		assert(Build_keys[k], "Build contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Build
-- &lt;p&gt;Properties describing a game build.&lt;/p&gt; &lt;p&gt;Build-related operations include:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;a&gt;CreateBuild&lt;/a&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;a&gt;ListBuilds&lt;/a&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;a&gt;DescribeBuild&lt;/a&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;a&gt;UpdateBuild&lt;/a&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;a&gt;DeleteBuild&lt;/a&gt; &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param Status [BuildStatus] &lt;p&gt;Current status of the build.&lt;/p&gt; &lt;p&gt;Possible build statuses include the following:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;INITIALIZED&lt;/b&gt; – A new build has been defined, but no files have been uploaded. You cannot create fleets for builds that are in this status. When a build is successfully created, the build status is set to this value. &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;READY&lt;/b&gt; – The game build has been successfully uploaded. You can now create new fleets for this build.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;FAILED&lt;/b&gt; – The game build upload failed. You cannot create new fleets for this build. &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param Name [FreeText] &lt;p&gt;Descriptive label that is associated with a build. Build names do not need to be unique. It can be set using &lt;a&gt;CreateBuild&lt;/a&gt; or &lt;a&gt;UpdateBuild&lt;/a&gt;.&lt;/p&gt;
-- @param BuildId [BuildId] &lt;p&gt;Unique identifier for a build.&lt;/p&gt;
-- @param CreationTime [Timestamp] &lt;p&gt;Time stamp indicating when this data object was created. Format is a number expressed in Unix time as milliseconds (for example &quot;1469498468.057&quot;).&lt;/p&gt;
-- @param SizeOnDisk [PositiveLong] &lt;p&gt;File size of the uploaded game build, expressed in bytes. When the build status is &lt;code&gt;INITIALIZED&lt;/code&gt;, this value is 0.&lt;/p&gt;
-- @param Version [FreeText] &lt;p&gt;Version that is associated with this build. Version strings do not need to be unique. This value can be set using &lt;a&gt;CreateBuild&lt;/a&gt; or &lt;a&gt;UpdateBuild&lt;/a&gt;.&lt;/p&gt;
-- @param OperatingSystem [OperatingSystem] &lt;p&gt;Operating system that the game server binaries are built to run on. This value determines the type of fleet resources that you can use for this build.&lt;/p&gt;
function M.Build(Status, Name, BuildId, CreationTime, SizeOnDisk, Version, OperatingSystem, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Build")
	local t = { 
		["Status"] = Status,
		["Name"] = Name,
		["BuildId"] = BuildId,
		["CreationTime"] = CreationTime,
		["SizeOnDisk"] = SizeOnDisk,
		["Version"] = Version,
		["OperatingSystem"] = OperatingSystem,
	}
	M.AssertBuild(t)
	return t
end

local DescribeFleetPortSettingsOutput_keys = { "InboundPermissions" = true, nil }

function M.AssertDescribeFleetPortSettingsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeFleetPortSettingsOutput to be of type 'table'")
	if struct["InboundPermissions"] then M.AssertIpPermissionsList(struct["InboundPermissions"]) end
	for k,_ in pairs(struct) do
		assert(DescribeFleetPortSettingsOutput_keys[k], "DescribeFleetPortSettingsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeFleetPortSettingsOutput
-- &lt;p&gt;Represents the returned data in response to a request action.&lt;/p&gt;
-- @param InboundPermissions [IpPermissionsList] &lt;p&gt;Object that contains port settings for the requested fleet ID.&lt;/p&gt;
function M.DescribeFleetPortSettingsOutput(InboundPermissions, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeFleetPortSettingsOutput")
	local t = { 
		["InboundPermissions"] = InboundPermissions,
	}
	M.AssertDescribeFleetPortSettingsOutput(t)
	return t
end

local CreatePlayerSessionOutput_keys = { "PlayerSession" = true, nil }

function M.AssertCreatePlayerSessionOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreatePlayerSessionOutput to be of type 'table'")
	if struct["PlayerSession"] then M.AssertPlayerSession(struct["PlayerSession"]) end
	for k,_ in pairs(struct) do
		assert(CreatePlayerSessionOutput_keys[k], "CreatePlayerSessionOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreatePlayerSessionOutput
-- &lt;p&gt;Represents the returned data in response to a request action.&lt;/p&gt;
-- @param PlayerSession [PlayerSession] &lt;p&gt;Object that describes the newly created player session record.&lt;/p&gt;
function M.CreatePlayerSessionOutput(PlayerSession, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreatePlayerSessionOutput")
	local t = { 
		["PlayerSession"] = PlayerSession,
	}
	M.AssertCreatePlayerSessionOutput(t)
	return t
end

local DescribeBuildOutput_keys = { "Build" = true, nil }

function M.AssertDescribeBuildOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeBuildOutput to be of type 'table'")
	if struct["Build"] then M.AssertBuild(struct["Build"]) end
	for k,_ in pairs(struct) do
		assert(DescribeBuildOutput_keys[k], "DescribeBuildOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeBuildOutput
-- &lt;p&gt;Represents the returned data in response to a request action.&lt;/p&gt;
-- @param Build [Build] &lt;p&gt;Set of properties describing the requested build.&lt;/p&gt;
function M.DescribeBuildOutput(Build, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeBuildOutput")
	local t = { 
		["Build"] = Build,
	}
	M.AssertDescribeBuildOutput(t)
	return t
end

local ScalingPolicy_keys = { "Status" = true, "EvaluationPeriods" = true, "Name" = true, "ComparisonOperator" = true, "FleetId" = true, "Threshold" = true, "ScalingAdjustment" = true, "MetricName" = true, "ScalingAdjustmentType" = true, nil }

function M.AssertScalingPolicy(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ScalingPolicy to be of type 'table'")
	if struct["Status"] then M.AssertScalingStatusType(struct["Status"]) end
	if struct["EvaluationPeriods"] then M.AssertPositiveInteger(struct["EvaluationPeriods"]) end
	if struct["Name"] then M.AssertNonZeroAndMaxString(struct["Name"]) end
	if struct["ComparisonOperator"] then M.AssertComparisonOperatorType(struct["ComparisonOperator"]) end
	if struct["FleetId"] then M.AssertFleetId(struct["FleetId"]) end
	if struct["Threshold"] then M.AssertDouble(struct["Threshold"]) end
	if struct["ScalingAdjustment"] then M.AssertInteger(struct["ScalingAdjustment"]) end
	if struct["MetricName"] then M.AssertMetricName(struct["MetricName"]) end
	if struct["ScalingAdjustmentType"] then M.AssertScalingAdjustmentType(struct["ScalingAdjustmentType"]) end
	for k,_ in pairs(struct) do
		assert(ScalingPolicy_keys[k], "ScalingPolicy contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ScalingPolicy
-- &lt;p&gt;Rule that controls how a fleet is scaled. Scaling policies are uniquely identified by the combination of name and fleet ID.&lt;/p&gt;
-- @param Status [ScalingStatusType] &lt;p&gt;Current status of the scaling policy. The scaling policy is only in force when in an &lt;code&gt;ACTIVE&lt;/code&gt; status.&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;ACTIVE&lt;/b&gt; – The scaling policy is currently in force.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;UPDATE_REQUESTED&lt;/b&gt; – A request to update the scaling policy has been received.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;UPDATING&lt;/b&gt; – A change is being made to the scaling policy.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;DELETE_REQUESTED&lt;/b&gt; – A request to delete the scaling policy has been received.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;DELETING&lt;/b&gt; – The scaling policy is being deleted.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;DELETED&lt;/b&gt; – The scaling policy has been deleted.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;ERROR&lt;/b&gt; – An error occurred in creating the policy. It should be removed and recreated.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param EvaluationPeriods [PositiveInteger] &lt;p&gt;Length of time (in minutes) the metric must be at or beyond the threshold before a scaling event is triggered.&lt;/p&gt;
-- @param Name [NonZeroAndMaxString] &lt;p&gt;Descriptive label that is associated with a scaling policy. Policy names do not need to be unique.&lt;/p&gt;
-- @param ComparisonOperator [ComparisonOperatorType] &lt;p&gt;Comparison operator to use when measuring a metric against the threshold value.&lt;/p&gt;
-- @param FleetId [FleetId] &lt;p&gt;Unique identifier for a fleet that is associated with this scaling policy.&lt;/p&gt;
-- @param Threshold [Double] &lt;p&gt;Metric value used to trigger a scaling event.&lt;/p&gt;
-- @param ScalingAdjustment [Integer] &lt;p&gt;Amount of adjustment to make, based on the scaling adjustment type.&lt;/p&gt;
-- @param MetricName [MetricName] &lt;p&gt;Name of the Amazon GameLift-defined metric that is used to trigger an adjustment.&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;ActivatingGameSessions&lt;/b&gt; – number of game sessions in the process of being created (game session status = &lt;code&gt;ACTIVATING&lt;/code&gt;).&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;ActiveGameSessions&lt;/b&gt; – number of game sessions currently running (game session status = &lt;code&gt;ACTIVE&lt;/code&gt;).&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;CurrentPlayerSessions&lt;/b&gt; – number of active or reserved player sessions (player session status = &lt;code&gt;ACTIVE&lt;/code&gt; or &lt;code&gt;RESERVED&lt;/code&gt;). &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;AvailablePlayerSessions&lt;/b&gt; – number of player session slots currently available in active game sessions across the fleet, calculated by subtracting a game session's current player session count from its maximum player session count. This number does include game sessions that are not currently accepting players (game session &lt;code&gt;PlayerSessionCreationPolicy&lt;/code&gt; = &lt;code&gt;DENY_ALL&lt;/code&gt;).&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;ActiveInstances&lt;/b&gt; – number of instances currently running a game session.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;IdleInstances&lt;/b&gt; – number of instances not currently running a game session.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param ScalingAdjustmentType [ScalingAdjustmentType] &lt;p&gt;Type of adjustment to make to a fleet's instance count (see &lt;a&gt;FleetCapacity&lt;/a&gt;):&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;ChangeInCapacity&lt;/b&gt; – add (or subtract) the scaling adjustment value from the current instance count. Positive values scale up while negative values scale down.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;ExactCapacity&lt;/b&gt; – set the instance count to the scaling adjustment value.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;PercentChangeInCapacity&lt;/b&gt; – increase or reduce the current instance count by the scaling adjustment, read as a percentage. Positive values scale up while negative values scale down.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
function M.ScalingPolicy(Status, EvaluationPeriods, Name, ComparisonOperator, FleetId, Threshold, ScalingAdjustment, MetricName, ScalingAdjustmentType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ScalingPolicy")
	local t = { 
		["Status"] = Status,
		["EvaluationPeriods"] = EvaluationPeriods,
		["Name"] = Name,
		["ComparisonOperator"] = ComparisonOperator,
		["FleetId"] = FleetId,
		["Threshold"] = Threshold,
		["ScalingAdjustment"] = ScalingAdjustment,
		["MetricName"] = MetricName,
		["ScalingAdjustmentType"] = ScalingAdjustmentType,
	}
	M.AssertScalingPolicy(t)
	return t
end

local InvalidFleetStatusException_keys = { "Message" = true, nil }

function M.AssertInvalidFleetStatusException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidFleetStatusException to be of type 'table'")
	if struct["Message"] then M.AssertNonEmptyString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidFleetStatusException_keys[k], "InvalidFleetStatusException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidFleetStatusException
-- &lt;p&gt;The requested operation would cause a conflict with the current state of a resource associated with the request and/or the fleet. Resolve the conflict before retrying.&lt;/p&gt;
-- @param Message [NonEmptyString] &lt;p&gt;The requested operation would cause a conflict with the current state of a resource associated with the request and/or the fleet. Resolve the conflict before retrying.&lt;/p&gt;
function M.InvalidFleetStatusException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidFleetStatusException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertInvalidFleetStatusException(t)
	return t
end

local DescribeGameSessionDetailsInput_keys = { "Limit" = true, "GameSessionId" = true, "StatusFilter" = true, "FleetId" = true, "NextToken" = true, "AliasId" = true, nil }

function M.AssertDescribeGameSessionDetailsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeGameSessionDetailsInput to be of type 'table'")
	if struct["Limit"] then M.AssertPositiveInteger(struct["Limit"]) end
	if struct["GameSessionId"] then M.AssertArnStringModel(struct["GameSessionId"]) end
	if struct["StatusFilter"] then M.AssertNonZeroAndMaxString(struct["StatusFilter"]) end
	if struct["FleetId"] then M.AssertFleetId(struct["FleetId"]) end
	if struct["NextToken"] then M.AssertNonZeroAndMaxString(struct["NextToken"]) end
	if struct["AliasId"] then M.AssertAliasId(struct["AliasId"]) end
	for k,_ in pairs(struct) do
		assert(DescribeGameSessionDetailsInput_keys[k], "DescribeGameSessionDetailsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeGameSessionDetailsInput
-- &lt;p&gt;Represents the input for a request action.&lt;/p&gt;
-- @param Limit [PositiveInteger] &lt;p&gt;Maximum number of results to return. Use this parameter with &lt;code&gt;NextToken&lt;/code&gt; to get results as a set of sequential pages.&lt;/p&gt;
-- @param GameSessionId [ArnStringModel] &lt;p&gt;Unique identifier for the game session to retrieve.&lt;/p&gt;
-- @param StatusFilter [NonZeroAndMaxString] &lt;p&gt;Game session status to filter results on. Possible game session statuses include ACTIVE, &lt;code&gt;TERMINATED&lt;/code&gt;, &lt;code&gt;ACTIVATING&lt;/code&gt; and &lt;code&gt;TERMINATING&lt;/code&gt; (the last two are transitory). &lt;/p&gt;
-- @param FleetId [FleetId] &lt;p&gt;Unique identifier for a fleet to retrieve all game sessions active on the fleet.&lt;/p&gt;
-- @param NextToken [NonZeroAndMaxString] &lt;p&gt;Token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this action. To specify the start of the result set, do not specify a value.&lt;/p&gt;
-- @param AliasId [AliasId] &lt;p&gt;Unique identifier for an alias associated with the fleet to retrieve all game sessions for.&lt;/p&gt;
function M.DescribeGameSessionDetailsInput(Limit, GameSessionId, StatusFilter, FleetId, NextToken, AliasId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeGameSessionDetailsInput")
	local t = { 
		["Limit"] = Limit,
		["GameSessionId"] = GameSessionId,
		["StatusFilter"] = StatusFilter,
		["FleetId"] = FleetId,
		["NextToken"] = NextToken,
		["AliasId"] = AliasId,
	}
	M.AssertDescribeGameSessionDetailsInput(t)
	return t
end

local TerminalRoutingStrategyException_keys = { "Message" = true, nil }

function M.AssertTerminalRoutingStrategyException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TerminalRoutingStrategyException to be of type 'table'")
	if struct["Message"] then M.AssertNonEmptyString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(TerminalRoutingStrategyException_keys[k], "TerminalRoutingStrategyException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TerminalRoutingStrategyException
-- &lt;p&gt;The service is unable to resolve the routing for a particular alias because it has a terminal &lt;a&gt;RoutingStrategy&lt;/a&gt; associated with it. The message returned in this exception is the message defined in the routing strategy itself. Such requests should only be retried if the routing strategy for the specified alias is modified. &lt;/p&gt;
-- @param Message [NonEmptyString] &lt;p&gt;The service is unable to resolve the routing for a particular alias because it has a terminal &lt;a&gt;RoutingStrategy&lt;/a&gt; associated with it. The message returned in this exception is the message defined in the routing strategy itself. Such requests should only be retried if the routing strategy for the specified alias is modified. &lt;/p&gt;
function M.TerminalRoutingStrategyException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TerminalRoutingStrategyException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertTerminalRoutingStrategyException(t)
	return t
end

local DescribeScalingPoliciesOutput_keys = { "ScalingPolicies" = true, "NextToken" = true, nil }

function M.AssertDescribeScalingPoliciesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeScalingPoliciesOutput to be of type 'table'")
	if struct["ScalingPolicies"] then M.AssertScalingPolicyList(struct["ScalingPolicies"]) end
	if struct["NextToken"] then M.AssertNonZeroAndMaxString(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(DescribeScalingPoliciesOutput_keys[k], "DescribeScalingPoliciesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeScalingPoliciesOutput
-- &lt;p&gt;Represents the returned data in response to a request action.&lt;/p&gt;
-- @param ScalingPolicies [ScalingPolicyList] &lt;p&gt;Collection of objects containing the scaling policies matching the request.&lt;/p&gt;
-- @param NextToken [NonZeroAndMaxString] &lt;p&gt;Token that indicates where to resume retrieving results on the next call to this action. If no token is returned, these results represent the end of the list.&lt;/p&gt;
function M.DescribeScalingPoliciesOutput(ScalingPolicies, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeScalingPoliciesOutput")
	local t = { 
		["ScalingPolicies"] = ScalingPolicies,
		["NextToken"] = NextToken,
	}
	M.AssertDescribeScalingPoliciesOutput(t)
	return t
end

local DeleteAliasInput_keys = { "AliasId" = true, nil }

function M.AssertDeleteAliasInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteAliasInput to be of type 'table'")
	assert(struct["AliasId"], "Expected key AliasId to exist in table")
	if struct["AliasId"] then M.AssertAliasId(struct["AliasId"]) end
	for k,_ in pairs(struct) do
		assert(DeleteAliasInput_keys[k], "DeleteAliasInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteAliasInput
-- &lt;p&gt;Represents the input for a request action.&lt;/p&gt;
-- @param AliasId [AliasId] &lt;p&gt;Unique identifier for a fleet alias. Specify the alias you want to delete.&lt;/p&gt;
-- Required parameter: AliasId
function M.DeleteAliasInput(AliasId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteAliasInput")
	local t = { 
		["AliasId"] = AliasId,
	}
	M.AssertDeleteAliasInput(t)
	return t
end

local UpdateGameSessionQueueOutput_keys = { "GameSessionQueue" = true, nil }

function M.AssertUpdateGameSessionQueueOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateGameSessionQueueOutput to be of type 'table'")
	if struct["GameSessionQueue"] then M.AssertGameSessionQueue(struct["GameSessionQueue"]) end
	for k,_ in pairs(struct) do
		assert(UpdateGameSessionQueueOutput_keys[k], "UpdateGameSessionQueueOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateGameSessionQueueOutput
-- &lt;p&gt;Represents the returned data in response to a request action.&lt;/p&gt;
-- @param GameSessionQueue [GameSessionQueue] &lt;p&gt;Object that describes the newly updated game session queue.&lt;/p&gt;
function M.UpdateGameSessionQueueOutput(GameSessionQueue, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateGameSessionQueueOutput")
	local t = { 
		["GameSessionQueue"] = GameSessionQueue,
	}
	M.AssertUpdateGameSessionQueueOutput(t)
	return t
end

local NotFoundException_keys = { "Message" = true, nil }

function M.AssertNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NotFoundException to be of type 'table'")
	if struct["Message"] then M.AssertNonEmptyString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(NotFoundException_keys[k], "NotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NotFoundException
-- &lt;p&gt;A service resource associated with the request could not be found. Clients should not retry such requests.&lt;/p&gt;
-- @param Message [NonEmptyString] &lt;p&gt;A service resource associated with the request could not be found. Clients should not retry such requests.&lt;/p&gt;
function M.NotFoundException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NotFoundException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertNotFoundException(t)
	return t
end

local CreateAliasOutput_keys = { "Alias" = true, nil }

function M.AssertCreateAliasOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateAliasOutput to be of type 'table'")
	if struct["Alias"] then M.AssertAlias(struct["Alias"]) end
	for k,_ in pairs(struct) do
		assert(CreateAliasOutput_keys[k], "CreateAliasOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateAliasOutput
-- &lt;p&gt;Represents the returned data in response to a request action.&lt;/p&gt;
-- @param Alias [Alias] &lt;p&gt;Object that describes the newly created alias record.&lt;/p&gt;
function M.CreateAliasOutput(Alias, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateAliasOutput")
	local t = { 
		["Alias"] = Alias,
	}
	M.AssertCreateAliasOutput(t)
	return t
end

local DescribeAliasOutput_keys = { "Alias" = true, nil }

function M.AssertDescribeAliasOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAliasOutput to be of type 'table'")
	if struct["Alias"] then M.AssertAlias(struct["Alias"]) end
	for k,_ in pairs(struct) do
		assert(DescribeAliasOutput_keys[k], "DescribeAliasOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAliasOutput
-- &lt;p&gt;Represents the returned data in response to a request action.&lt;/p&gt;
-- @param Alias [Alias] &lt;p&gt;Object that contains the requested alias.&lt;/p&gt;
function M.DescribeAliasOutput(Alias, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeAliasOutput")
	local t = { 
		["Alias"] = Alias,
	}
	M.AssertDescribeAliasOutput(t)
	return t
end

local CreatePlayerSessionInput_keys = { "PlayerId" = true, "GameSessionId" = true, "PlayerData" = true, nil }

function M.AssertCreatePlayerSessionInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreatePlayerSessionInput to be of type 'table'")
	assert(struct["GameSessionId"], "Expected key GameSessionId to exist in table")
	assert(struct["PlayerId"], "Expected key PlayerId to exist in table")
	if struct["PlayerId"] then M.AssertNonZeroAndMaxString(struct["PlayerId"]) end
	if struct["GameSessionId"] then M.AssertArnStringModel(struct["GameSessionId"]) end
	if struct["PlayerData"] then M.AssertPlayerData(struct["PlayerData"]) end
	for k,_ in pairs(struct) do
		assert(CreatePlayerSessionInput_keys[k], "CreatePlayerSessionInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreatePlayerSessionInput
-- &lt;p&gt;Represents the input for a request action.&lt;/p&gt;
-- @param PlayerId [NonZeroAndMaxString] &lt;p&gt;Unique identifier for a player. Player IDs are developer-defined.&lt;/p&gt;
-- @param GameSessionId [ArnStringModel] &lt;p&gt;Unique identifier for the game session to add a player to.&lt;/p&gt;
-- @param PlayerData [PlayerData] &lt;p&gt;Developer-defined information related to a player. Amazon GameLift does not use this data, so it can be formatted as needed for use in the game.&lt;/p&gt;
-- Required parameter: GameSessionId
-- Required parameter: PlayerId
function M.CreatePlayerSessionInput(PlayerId, GameSessionId, PlayerData, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreatePlayerSessionInput")
	local t = { 
		["PlayerId"] = PlayerId,
		["GameSessionId"] = GameSessionId,
		["PlayerData"] = PlayerData,
	}
	M.AssertCreatePlayerSessionInput(t)
	return t
end

local GetGameSessionLogUrlInput_keys = { "GameSessionId" = true, nil }

function M.AssertGetGameSessionLogUrlInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetGameSessionLogUrlInput to be of type 'table'")
	assert(struct["GameSessionId"], "Expected key GameSessionId to exist in table")
	if struct["GameSessionId"] then M.AssertArnStringModel(struct["GameSessionId"]) end
	for k,_ in pairs(struct) do
		assert(GetGameSessionLogUrlInput_keys[k], "GetGameSessionLogUrlInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetGameSessionLogUrlInput
-- &lt;p&gt;Represents the input for a request action.&lt;/p&gt;
-- @param GameSessionId [ArnStringModel] &lt;p&gt;Unique identifier for the game session to get logs for.&lt;/p&gt;
-- Required parameter: GameSessionId
function M.GetGameSessionLogUrlInput(GameSessionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetGameSessionLogUrlInput")
	local t = { 
		["GameSessionId"] = GameSessionId,
	}
	M.AssertGetGameSessionLogUrlInput(t)
	return t
end

local InstanceAccess_keys = { "InstanceId" = true, "IpAddress" = true, "FleetId" = true, "OperatingSystem" = true, "Credentials" = true, nil }

function M.AssertInstanceAccess(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstanceAccess to be of type 'table'")
	if struct["InstanceId"] then M.AssertInstanceId(struct["InstanceId"]) end
	if struct["IpAddress"] then M.AssertIpAddress(struct["IpAddress"]) end
	if struct["FleetId"] then M.AssertFleetId(struct["FleetId"]) end
	if struct["OperatingSystem"] then M.AssertOperatingSystem(struct["OperatingSystem"]) end
	if struct["Credentials"] then M.AssertInstanceCredentials(struct["Credentials"]) end
	for k,_ in pairs(struct) do
		assert(InstanceAccess_keys[k], "InstanceAccess contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstanceAccess
-- &lt;p&gt;Information required to remotely connect to a fleet instance. Access is requested by calling &lt;a&gt;GetInstanceAccess&lt;/a&gt;. &lt;/p&gt;
-- @param InstanceId [InstanceId] &lt;p&gt;Unique identifier for an instance being accessed.&lt;/p&gt;
-- @param IpAddress [IpAddress] &lt;p&gt;IP address assigned to the instance.&lt;/p&gt;
-- @param FleetId [FleetId] &lt;p&gt;Unique identifier for a fleet containing the instance being accessed.&lt;/p&gt;
-- @param OperatingSystem [OperatingSystem] &lt;p&gt;Operating system that is running on the instance.&lt;/p&gt;
-- @param Credentials [InstanceCredentials] &lt;p&gt;Credentials required to access the instance.&lt;/p&gt;
function M.InstanceAccess(InstanceId, IpAddress, FleetId, OperatingSystem, Credentials, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InstanceAccess")
	local t = { 
		["InstanceId"] = InstanceId,
		["IpAddress"] = IpAddress,
		["FleetId"] = FleetId,
		["OperatingSystem"] = OperatingSystem,
		["Credentials"] = Credentials,
	}
	M.AssertInstanceAccess(t)
	return t
end

local PlacedPlayerSession_keys = { "PlayerId" = true, "PlayerSessionId" = true, nil }

function M.AssertPlacedPlayerSession(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PlacedPlayerSession to be of type 'table'")
	if struct["PlayerId"] then M.AssertNonZeroAndMaxString(struct["PlayerId"]) end
	if struct["PlayerSessionId"] then M.AssertPlayerSessionId(struct["PlayerSessionId"]) end
	for k,_ in pairs(struct) do
		assert(PlacedPlayerSession_keys[k], "PlacedPlayerSession contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PlacedPlayerSession
-- &lt;p&gt;Information about a player session that was created as part of a &lt;a&gt;StartGameSessionPlacement&lt;/a&gt; request. This object contains only the player ID and player session ID. To retrieve full details on a player session, call &lt;a&gt;DescribePlayerSessions&lt;/a&gt; with the player session ID.&lt;/p&gt;
-- @param PlayerId [NonZeroAndMaxString] &lt;p&gt;Unique identifier for a player that is associated with this player session.&lt;/p&gt;
-- @param PlayerSessionId [PlayerSessionId] &lt;p&gt;Unique identifier for a player session.&lt;/p&gt;
function M.PlacedPlayerSession(PlayerId, PlayerSessionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PlacedPlayerSession")
	local t = { 
		["PlayerId"] = PlayerId,
		["PlayerSessionId"] = PlayerSessionId,
	}
	M.AssertPlacedPlayerSession(t)
	return t
end

local DescribeInstancesInput_keys = { "InstanceId" = true, "Limit" = true, "NextToken" = true, "FleetId" = true, nil }

function M.AssertDescribeInstancesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeInstancesInput to be of type 'table'")
	assert(struct["FleetId"], "Expected key FleetId to exist in table")
	if struct["InstanceId"] then M.AssertInstanceId(struct["InstanceId"]) end
	if struct["Limit"] then M.AssertPositiveInteger(struct["Limit"]) end
	if struct["NextToken"] then M.AssertNonZeroAndMaxString(struct["NextToken"]) end
	if struct["FleetId"] then M.AssertFleetId(struct["FleetId"]) end
	for k,_ in pairs(struct) do
		assert(DescribeInstancesInput_keys[k], "DescribeInstancesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeInstancesInput
-- &lt;p&gt;Represents the input for a request action.&lt;/p&gt;
-- @param InstanceId [InstanceId] &lt;p&gt;Unique identifier for an instance to retrieve. Specify an instance ID or leave blank to retrieve all instances in the fleet.&lt;/p&gt;
-- @param Limit [PositiveInteger] &lt;p&gt;Maximum number of results to return. Use this parameter with &lt;code&gt;NextToken&lt;/code&gt; to get results as a set of sequential pages.&lt;/p&gt;
-- @param NextToken [NonZeroAndMaxString] &lt;p&gt;Token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this action. To specify the start of the result set, do not specify a value.&lt;/p&gt;
-- @param FleetId [FleetId] &lt;p&gt;Unique identifier for a fleet to retrieve instance information for.&lt;/p&gt;
-- Required parameter: FleetId
function M.DescribeInstancesInput(InstanceId, Limit, NextToken, FleetId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeInstancesInput")
	local t = { 
		["InstanceId"] = InstanceId,
		["Limit"] = Limit,
		["NextToken"] = NextToken,
		["FleetId"] = FleetId,
	}
	M.AssertDescribeInstancesInput(t)
	return t
end

local DescribeEC2InstanceLimitsOutput_keys = { "EC2InstanceLimits" = true, nil }

function M.AssertDescribeEC2InstanceLimitsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEC2InstanceLimitsOutput to be of type 'table'")
	if struct["EC2InstanceLimits"] then M.AssertEC2InstanceLimitList(struct["EC2InstanceLimits"]) end
	for k,_ in pairs(struct) do
		assert(DescribeEC2InstanceLimitsOutput_keys[k], "DescribeEC2InstanceLimitsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEC2InstanceLimitsOutput
-- &lt;p&gt;Represents the returned data in response to a request action.&lt;/p&gt;
-- @param EC2InstanceLimits [EC2InstanceLimitList] &lt;p&gt;Object that contains the maximum number of instances for the specified instance type.&lt;/p&gt;
function M.DescribeEC2InstanceLimitsOutput(EC2InstanceLimits, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeEC2InstanceLimitsOutput")
	local t = { 
		["EC2InstanceLimits"] = EC2InstanceLimits,
	}
	M.AssertDescribeEC2InstanceLimitsOutput(t)
	return t
end

local FleetCapacity_keys = { "FleetId" = true, "InstanceType" = true, "InstanceCounts" = true, nil }

function M.AssertFleetCapacity(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FleetCapacity to be of type 'table'")
	if struct["FleetId"] then M.AssertFleetId(struct["FleetId"]) end
	if struct["InstanceType"] then M.AssertEC2InstanceType(struct["InstanceType"]) end
	if struct["InstanceCounts"] then M.AssertEC2InstanceCounts(struct["InstanceCounts"]) end
	for k,_ in pairs(struct) do
		assert(FleetCapacity_keys[k], "FleetCapacity contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FleetCapacity
-- &lt;p&gt;Information about the fleet's capacity. Fleet capacity is measured in EC2 instances. By default, new fleets have a capacity of one instance, but can be updated as needed. The maximum number of instances for a fleet is determined by the fleet's instance type.&lt;/p&gt;
-- @param FleetId [FleetId] &lt;p&gt;Unique identifier for a fleet.&lt;/p&gt;
-- @param InstanceType [EC2InstanceType] &lt;p&gt;Name of an EC2 instance type that is supported in Amazon GameLift. A fleet instance type determines the computing resources of each instance in the fleet, including CPU, memory, storage, and networking capacity. Amazon GameLift supports the following EC2 instance types. See &lt;a href=&quot;http://aws.amazon.com/ec2/instance-types/&quot;&gt;Amazon EC2 Instance Types&lt;/a&gt; for detailed descriptions.&lt;/p&gt;
-- @param InstanceCounts [EC2InstanceCounts] &lt;p&gt;Current status of fleet capacity.&lt;/p&gt;
function M.FleetCapacity(FleetId, InstanceType, InstanceCounts, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating FleetCapacity")
	local t = { 
		["FleetId"] = FleetId,
		["InstanceType"] = InstanceType,
		["InstanceCounts"] = InstanceCounts,
	}
	M.AssertFleetCapacity(t)
	return t
end

local CreateGameSessionQueueOutput_keys = { "GameSessionQueue" = true, nil }

function M.AssertCreateGameSessionQueueOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateGameSessionQueueOutput to be of type 'table'")
	if struct["GameSessionQueue"] then M.AssertGameSessionQueue(struct["GameSessionQueue"]) end
	for k,_ in pairs(struct) do
		assert(CreateGameSessionQueueOutput_keys[k], "CreateGameSessionQueueOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateGameSessionQueueOutput
-- &lt;p&gt;Represents the returned data in response to a request action.&lt;/p&gt;
-- @param GameSessionQueue [GameSessionQueue] &lt;p&gt;Object that describes the newly created game session queue.&lt;/p&gt;
function M.CreateGameSessionQueueOutput(GameSessionQueue, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateGameSessionQueueOutput")
	local t = { 
		["GameSessionQueue"] = GameSessionQueue,
	}
	M.AssertCreateGameSessionQueueOutput(t)
	return t
end

local DeleteFleetInput_keys = { "FleetId" = true, nil }

function M.AssertDeleteFleetInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteFleetInput to be of type 'table'")
	assert(struct["FleetId"], "Expected key FleetId to exist in table")
	if struct["FleetId"] then M.AssertFleetId(struct["FleetId"]) end
	for k,_ in pairs(struct) do
		assert(DeleteFleetInput_keys[k], "DeleteFleetInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteFleetInput
-- &lt;p&gt;Represents the input for a request action.&lt;/p&gt;
-- @param FleetId [FleetId] &lt;p&gt;Unique identifier for a fleet to be deleted.&lt;/p&gt;
-- Required parameter: FleetId
function M.DeleteFleetInput(FleetId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteFleetInput")
	local t = { 
		["FleetId"] = FleetId,
	}
	M.AssertDeleteFleetInput(t)
	return t
end

local DescribeFleetPortSettingsInput_keys = { "FleetId" = true, nil }

function M.AssertDescribeFleetPortSettingsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeFleetPortSettingsInput to be of type 'table'")
	assert(struct["FleetId"], "Expected key FleetId to exist in table")
	if struct["FleetId"] then M.AssertFleetId(struct["FleetId"]) end
	for k,_ in pairs(struct) do
		assert(DescribeFleetPortSettingsInput_keys[k], "DescribeFleetPortSettingsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeFleetPortSettingsInput
-- &lt;p&gt;Represents the input for a request action.&lt;/p&gt;
-- @param FleetId [FleetId] &lt;p&gt;Unique identifier for a fleet to retrieve port settings for.&lt;/p&gt;
-- Required parameter: FleetId
function M.DescribeFleetPortSettingsInput(FleetId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeFleetPortSettingsInput")
	local t = { 
		["FleetId"] = FleetId,
	}
	M.AssertDescribeFleetPortSettingsInput(t)
	return t
end

local DescribeFleetCapacityOutput_keys = { "NextToken" = true, "FleetCapacity" = true, nil }

function M.AssertDescribeFleetCapacityOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeFleetCapacityOutput to be of type 'table'")
	if struct["NextToken"] then M.AssertNonZeroAndMaxString(struct["NextToken"]) end
	if struct["FleetCapacity"] then M.AssertFleetCapacityList(struct["FleetCapacity"]) end
	for k,_ in pairs(struct) do
		assert(DescribeFleetCapacityOutput_keys[k], "DescribeFleetCapacityOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeFleetCapacityOutput
-- &lt;p&gt;Represents the returned data in response to a request action.&lt;/p&gt;
-- @param NextToken [NonZeroAndMaxString] &lt;p&gt;Token that indicates where to resume retrieving results on the next call to this action. If no token is returned, these results represent the end of the list.&lt;/p&gt;
-- @param FleetCapacity [FleetCapacityList] &lt;p&gt;Collection of objects containing capacity information for each requested fleet ID. Leave this parameter empty to retrieve capacity information for all fleets.&lt;/p&gt;
function M.DescribeFleetCapacityOutput(NextToken, FleetCapacity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeFleetCapacityOutput")
	local t = { 
		["NextToken"] = NextToken,
		["FleetCapacity"] = FleetCapacity,
	}
	M.AssertDescribeFleetCapacityOutput(t)
	return t
end

local DeleteBuildInput_keys = { "BuildId" = true, nil }

function M.AssertDeleteBuildInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteBuildInput to be of type 'table'")
	assert(struct["BuildId"], "Expected key BuildId to exist in table")
	if struct["BuildId"] then M.AssertBuildId(struct["BuildId"]) end
	for k,_ in pairs(struct) do
		assert(DeleteBuildInput_keys[k], "DeleteBuildInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteBuildInput
-- &lt;p&gt;Represents the input for a request action.&lt;/p&gt;
-- @param BuildId [BuildId] &lt;p&gt;Unique identifier for a build to delete.&lt;/p&gt;
-- Required parameter: BuildId
function M.DeleteBuildInput(BuildId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteBuildInput")
	local t = { 
		["BuildId"] = BuildId,
	}
	M.AssertDeleteBuildInput(t)
	return t
end

local UpdateFleetAttributesInput_keys = { "Name" = true, "MetricGroups" = true, "NewGameSessionProtectionPolicy" = true, "FleetId" = true, "ResourceCreationLimitPolicy" = true, "Description" = true, nil }

function M.AssertUpdateFleetAttributesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateFleetAttributesInput to be of type 'table'")
	assert(struct["FleetId"], "Expected key FleetId to exist in table")
	if struct["Name"] then M.AssertNonZeroAndMaxString(struct["Name"]) end
	if struct["MetricGroups"] then M.AssertMetricGroupList(struct["MetricGroups"]) end
	if struct["NewGameSessionProtectionPolicy"] then M.AssertProtectionPolicy(struct["NewGameSessionProtectionPolicy"]) end
	if struct["FleetId"] then M.AssertFleetId(struct["FleetId"]) end
	if struct["ResourceCreationLimitPolicy"] then M.AssertResourceCreationLimitPolicy(struct["ResourceCreationLimitPolicy"]) end
	if struct["Description"] then M.AssertNonZeroAndMaxString(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(UpdateFleetAttributesInput_keys[k], "UpdateFleetAttributesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateFleetAttributesInput
-- &lt;p&gt;Represents the input for a request action.&lt;/p&gt;
-- @param Name [NonZeroAndMaxString] &lt;p&gt;Descriptive label that is associated with a fleet. Fleet names do not need to be unique.&lt;/p&gt;
-- @param MetricGroups [MetricGroupList] &lt;p&gt;Names of metric groups to include this fleet with. A fleet metric group is used in Amazon CloudWatch to aggregate metrics from multiple fleets. Use an existing metric group name to add this fleet to the group, or use a new name to create a new metric group. Currently, a fleet can only be included in one metric group at a time.&lt;/p&gt;
-- @param NewGameSessionProtectionPolicy [ProtectionPolicy] &lt;p&gt;Game session protection policy to apply to all new instances created in this fleet. Instances that already exist are not affected. You can set protection for individual instances using &lt;a&gt;UpdateGameSession&lt;/a&gt;.&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;NoProtection&lt;/b&gt; – The game session can be terminated during a scale-down event.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;FullProtection&lt;/b&gt; – If the game session is in an &lt;code&gt;ACTIVE&lt;/code&gt; status, it cannot be terminated during a scale-down event.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param FleetId [FleetId] &lt;p&gt;Unique identifier for a fleet to update attribute metadata for.&lt;/p&gt;
-- @param ResourceCreationLimitPolicy [ResourceCreationLimitPolicy] &lt;p&gt;Policy that limits the number of game sessions an individual player can create over a span of time. &lt;/p&gt;
-- @param Description [NonZeroAndMaxString] &lt;p&gt;Human-readable description of a fleet.&lt;/p&gt;
-- Required parameter: FleetId
function M.UpdateFleetAttributesInput(Name, MetricGroups, NewGameSessionProtectionPolicy, FleetId, ResourceCreationLimitPolicy, Description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateFleetAttributesInput")
	local t = { 
		["Name"] = Name,
		["MetricGroups"] = MetricGroups,
		["NewGameSessionProtectionPolicy"] = NewGameSessionProtectionPolicy,
		["FleetId"] = FleetId,
		["ResourceCreationLimitPolicy"] = ResourceCreationLimitPolicy,
		["Description"] = Description,
	}
	M.AssertUpdateFleetAttributesInput(t)
	return t
end

local DescribeGameSessionsOutput_keys = { "GameSessions" = true, "NextToken" = true, nil }

function M.AssertDescribeGameSessionsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeGameSessionsOutput to be of type 'table'")
	if struct["GameSessions"] then M.AssertGameSessionList(struct["GameSessions"]) end
	if struct["NextToken"] then M.AssertNonZeroAndMaxString(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(DescribeGameSessionsOutput_keys[k], "DescribeGameSessionsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeGameSessionsOutput
-- &lt;p&gt;Represents the returned data in response to a request action.&lt;/p&gt;
-- @param GameSessions [GameSessionList] &lt;p&gt;Collection of objects containing game session properties for each session matching the request.&lt;/p&gt;
-- @param NextToken [NonZeroAndMaxString] &lt;p&gt;Token that indicates where to resume retrieving results on the next call to this action. If no token is returned, these results represent the end of the list.&lt;/p&gt;
function M.DescribeGameSessionsOutput(GameSessions, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeGameSessionsOutput")
	local t = { 
		["GameSessions"] = GameSessions,
		["NextToken"] = NextToken,
	}
	M.AssertDescribeGameSessionsOutput(t)
	return t
end

local ResourceCreationLimitPolicy_keys = { "NewGameSessionsPerCreator" = true, "PolicyPeriodInMinutes" = true, nil }

function M.AssertResourceCreationLimitPolicy(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceCreationLimitPolicy to be of type 'table'")
	if struct["NewGameSessionsPerCreator"] then M.AssertWholeNumber(struct["NewGameSessionsPerCreator"]) end
	if struct["PolicyPeriodInMinutes"] then M.AssertWholeNumber(struct["PolicyPeriodInMinutes"]) end
	for k,_ in pairs(struct) do
		assert(ResourceCreationLimitPolicy_keys[k], "ResourceCreationLimitPolicy contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceCreationLimitPolicy
-- &lt;p&gt;Policy that limits the number of game sessions a player can create on the same fleet. This optional policy gives game owners control over how players can consume available game server resources. A resource creation policy makes the following statement: &quot;An individual player can create a maximum number of new game sessions within a specified time period&quot;.&lt;/p&gt; &lt;p&gt;The policy is evaluated when a player tries to create a new game session. For example, with a policy of 10 new game sessions and a time period of 60 minutes, on receiving a &lt;code&gt;CreateGameSession&lt;/code&gt; request, Amazon GameLift checks that the player (identified by &lt;code&gt;CreatorId&lt;/code&gt;) has created fewer than 10 game sessions in the past 60 minutes.&lt;/p&gt;
-- @param NewGameSessionsPerCreator [WholeNumber] &lt;p&gt;Maximum number of game sessions that an individual can create during the policy period. &lt;/p&gt;
-- @param PolicyPeriodInMinutes [WholeNumber] &lt;p&gt;Time span used in evaluating the resource creation limit policy. &lt;/p&gt;
function M.ResourceCreationLimitPolicy(NewGameSessionsPerCreator, PolicyPeriodInMinutes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceCreationLimitPolicy")
	local t = { 
		["NewGameSessionsPerCreator"] = NewGameSessionsPerCreator,
		["PolicyPeriodInMinutes"] = PolicyPeriodInMinutes,
	}
	M.AssertResourceCreationLimitPolicy(t)
	return t
end

local EC2InstanceCounts_keys = { "TERMINATING" = true, "MAXIMUM" = true, "DESIRED" = true, "IDLE" = true, "MINIMUM" = true, "ACTIVE" = true, "PENDING" = true, nil }

function M.AssertEC2InstanceCounts(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EC2InstanceCounts to be of type 'table'")
	if struct["TERMINATING"] then M.AssertWholeNumber(struct["TERMINATING"]) end
	if struct["MAXIMUM"] then M.AssertWholeNumber(struct["MAXIMUM"]) end
	if struct["DESIRED"] then M.AssertWholeNumber(struct["DESIRED"]) end
	if struct["IDLE"] then M.AssertWholeNumber(struct["IDLE"]) end
	if struct["MINIMUM"] then M.AssertWholeNumber(struct["MINIMUM"]) end
	if struct["ACTIVE"] then M.AssertWholeNumber(struct["ACTIVE"]) end
	if struct["PENDING"] then M.AssertWholeNumber(struct["PENDING"]) end
	for k,_ in pairs(struct) do
		assert(EC2InstanceCounts_keys[k], "EC2InstanceCounts contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EC2InstanceCounts
-- &lt;p&gt;Current status of fleet capacity. The number of active instances should match or be in the process of matching the number of desired instances. Pending and terminating counts are non-zero only if fleet capacity is adjusting to an &lt;a&gt;UpdateFleetCapacity&lt;/a&gt; request, or if access to resources is temporarily affected.&lt;/p&gt;
-- @param TERMINATING [WholeNumber] &lt;p&gt;Number of instances in the fleet that are no longer active but haven't yet been terminated.&lt;/p&gt;
-- @param MAXIMUM [WholeNumber] &lt;p&gt;Maximum value allowed for the fleet's instance count.&lt;/p&gt;
-- @param DESIRED [WholeNumber] &lt;p&gt;Ideal number of active instances in the fleet.&lt;/p&gt;
-- @param IDLE [WholeNumber] &lt;p&gt;Number of active instances in the fleet that are not currently hosting a game session.&lt;/p&gt;
-- @param MINIMUM [WholeNumber] &lt;p&gt;Minimum value allowed for the fleet's instance count.&lt;/p&gt;
-- @param ACTIVE [WholeNumber] &lt;p&gt;Actual number of active instances in the fleet.&lt;/p&gt;
-- @param PENDING [WholeNumber] &lt;p&gt;Number of instances in the fleet that are starting but not yet active.&lt;/p&gt;
function M.EC2InstanceCounts(TERMINATING, MAXIMUM, DESIRED, IDLE, MINIMUM, ACTIVE, PENDING, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EC2InstanceCounts")
	local t = { 
		["TERMINATING"] = TERMINATING,
		["MAXIMUM"] = MAXIMUM,
		["DESIRED"] = DESIRED,
		["IDLE"] = IDLE,
		["MINIMUM"] = MINIMUM,
		["ACTIVE"] = ACTIVE,
		["PENDING"] = PENDING,
	}
	M.AssertEC2InstanceCounts(t)
	return t
end

local ResolveAliasOutput_keys = { "FleetId" = true, nil }

function M.AssertResolveAliasOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResolveAliasOutput to be of type 'table'")
	if struct["FleetId"] then M.AssertFleetId(struct["FleetId"]) end
	for k,_ in pairs(struct) do
		assert(ResolveAliasOutput_keys[k], "ResolveAliasOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResolveAliasOutput
-- &lt;p&gt;Represents the returned data in response to a request action.&lt;/p&gt;
-- @param FleetId [FleetId] &lt;p&gt;Fleet identifier that is associated with the requested alias.&lt;/p&gt;
function M.ResolveAliasOutput(FleetId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResolveAliasOutput")
	local t = { 
		["FleetId"] = FleetId,
	}
	M.AssertResolveAliasOutput(t)
	return t
end

local InvalidRequestException_keys = { "Message" = true, nil }

function M.AssertInvalidRequestException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidRequestException to be of type 'table'")
	if struct["Message"] then M.AssertNonEmptyString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidRequestException_keys[k], "InvalidRequestException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidRequestException
-- &lt;p&gt;One or more parameter values in the request are invalid. Correct the invalid parameter values before retrying.&lt;/p&gt;
-- @param Message [NonEmptyString] &lt;p&gt;One or more parameter values in the request are invalid. Correct the invalid parameter values before retrying.&lt;/p&gt;
function M.InvalidRequestException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidRequestException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertInvalidRequestException(t)
	return t
end

local UpdateAliasOutput_keys = { "Alias" = true, nil }

function M.AssertUpdateAliasOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateAliasOutput to be of type 'table'")
	if struct["Alias"] then M.AssertAlias(struct["Alias"]) end
	for k,_ in pairs(struct) do
		assert(UpdateAliasOutput_keys[k], "UpdateAliasOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateAliasOutput
-- &lt;p&gt;Represents the returned data in response to a request action.&lt;/p&gt;
-- @param Alias [Alias] &lt;p&gt;Object that contains the updated alias configuration.&lt;/p&gt;
function M.UpdateAliasOutput(Alias, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateAliasOutput")
	local t = { 
		["Alias"] = Alias,
	}
	M.AssertUpdateAliasOutput(t)
	return t
end

local UpdateAliasInput_keys = { "RoutingStrategy" = true, "AliasId" = true, "Name" = true, "Description" = true, nil }

function M.AssertUpdateAliasInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateAliasInput to be of type 'table'")
	assert(struct["AliasId"], "Expected key AliasId to exist in table")
	if struct["RoutingStrategy"] then M.AssertRoutingStrategy(struct["RoutingStrategy"]) end
	if struct["AliasId"] then M.AssertAliasId(struct["AliasId"]) end
	if struct["Name"] then M.AssertNonBlankAndLengthConstraintString(struct["Name"]) end
	if struct["Description"] then M.AssertNonZeroAndMaxString(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(UpdateAliasInput_keys[k], "UpdateAliasInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateAliasInput
-- &lt;p&gt;Represents the input for a request action.&lt;/p&gt;
-- @param RoutingStrategy [RoutingStrategy] &lt;p&gt;Object that specifies the fleet and routing type to use for the alias.&lt;/p&gt;
-- @param AliasId [AliasId] &lt;p&gt;Unique identifier for a fleet alias. Specify the alias you want to update.&lt;/p&gt;
-- @param Name [NonBlankAndLengthConstraintString] &lt;p&gt;Descriptive label that is associated with an alias. Alias names do not need to be unique.&lt;/p&gt;
-- @param Description [NonZeroAndMaxString] &lt;p&gt;Human-readable description of an alias.&lt;/p&gt;
-- Required parameter: AliasId
function M.UpdateAliasInput(RoutingStrategy, AliasId, Name, Description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateAliasInput")
	local t = { 
		["RoutingStrategy"] = RoutingStrategy,
		["AliasId"] = AliasId,
		["Name"] = Name,
		["Description"] = Description,
	}
	M.AssertUpdateAliasInput(t)
	return t
end

local GameProperty_keys = { "Value" = true, "Key" = true, nil }

function M.AssertGameProperty(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GameProperty to be of type 'table'")
	assert(struct["Key"], "Expected key Key to exist in table")
	assert(struct["Value"], "Expected key Value to exist in table")
	if struct["Value"] then M.AssertGamePropertyValue(struct["Value"]) end
	if struct["Key"] then M.AssertGamePropertyKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(GameProperty_keys[k], "GameProperty contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GameProperty
-- &lt;p&gt;Set of key-value pairs containing information a server process requires to set up a game session. This object allows you to pass in any set of data needed for your game. For more information, see the &lt;a href=&quot;http://docs.aws.amazon.com/gamelift/latest/developerguide/&quot;&gt;Amazon GameLift Developer Guide&lt;/a&gt;.&lt;/p&gt;
-- @param Value [GamePropertyValue] &lt;p&gt;TBD&lt;/p&gt;
-- @param Key [GamePropertyKey] &lt;p&gt;TBD&lt;/p&gt;
-- Required parameter: Key
-- Required parameter: Value
function M.GameProperty(Value, Key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GameProperty")
	local t = { 
		["Value"] = Value,
		["Key"] = Key,
	}
	M.AssertGameProperty(t)
	return t
end

local GameSessionDetail_keys = { "GameSession" = true, "ProtectionPolicy" = true, nil }

function M.AssertGameSessionDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GameSessionDetail to be of type 'table'")
	if struct["GameSession"] then M.AssertGameSession(struct["GameSession"]) end
	if struct["ProtectionPolicy"] then M.AssertProtectionPolicy(struct["ProtectionPolicy"]) end
	for k,_ in pairs(struct) do
		assert(GameSessionDetail_keys[k], "GameSessionDetail contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GameSessionDetail
-- &lt;p&gt;A game session's properties plus the protection policy currently in force.&lt;/p&gt;
-- @param GameSession [GameSession] &lt;p&gt;Object that describes a game session.&lt;/p&gt;
-- @param ProtectionPolicy [ProtectionPolicy] &lt;p&gt;Current status of protection for the game session.&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;NoProtection&lt;/b&gt; – The game session can be terminated during a scale-down event.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;FullProtection&lt;/b&gt; – If the game session is in an &lt;code&gt;ACTIVE&lt;/code&gt; status, it cannot be terminated during a scale-down event.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
function M.GameSessionDetail(GameSession, ProtectionPolicy, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GameSessionDetail")
	local t = { 
		["GameSession"] = GameSession,
		["ProtectionPolicy"] = ProtectionPolicy,
	}
	M.AssertGameSessionDetail(t)
	return t
end

local DescribeFleetAttributesInput_keys = { "FleetIds" = true, "NextToken" = true, "Limit" = true, nil }

function M.AssertDescribeFleetAttributesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeFleetAttributesInput to be of type 'table'")
	if struct["FleetIds"] then M.AssertFleetIdList(struct["FleetIds"]) end
	if struct["NextToken"] then M.AssertNonZeroAndMaxString(struct["NextToken"]) end
	if struct["Limit"] then M.AssertPositiveInteger(struct["Limit"]) end
	for k,_ in pairs(struct) do
		assert(DescribeFleetAttributesInput_keys[k], "DescribeFleetAttributesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeFleetAttributesInput
-- &lt;p&gt;Represents the input for a request action.&lt;/p&gt;
-- @param FleetIds [FleetIdList] &lt;p&gt;Unique identifier for a fleet(s) to retrieve attributes for. To request attributes for all fleets, leave this parameter empty.&lt;/p&gt;
-- @param NextToken [NonZeroAndMaxString] &lt;p&gt;Token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this action. To specify the start of the result set, do not specify a value. This parameter is ignored when the request specifies one or a list of fleet IDs.&lt;/p&gt;
-- @param Limit [PositiveInteger] &lt;p&gt;Maximum number of results to return. Use this parameter with &lt;code&gt;NextToken&lt;/code&gt; to get results as a set of sequential pages. This parameter is ignored when the request specifies one or a list of fleet IDs.&lt;/p&gt;
function M.DescribeFleetAttributesInput(FleetIds, NextToken, Limit, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeFleetAttributesInput")
	local t = { 
		["FleetIds"] = FleetIds,
		["NextToken"] = NextToken,
		["Limit"] = Limit,
	}
	M.AssertDescribeFleetAttributesInput(t)
	return t
end

local InvalidGameSessionStatusException_keys = { "Message" = true, nil }

function M.AssertInvalidGameSessionStatusException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidGameSessionStatusException to be of type 'table'")
	if struct["Message"] then M.AssertNonEmptyString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidGameSessionStatusException_keys[k], "InvalidGameSessionStatusException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidGameSessionStatusException
-- &lt;p&gt;The requested operation would cause a conflict with the current state of a resource associated with the request and/or the game instance. Resolve the conflict before retrying.&lt;/p&gt;
-- @param Message [NonEmptyString] &lt;p&gt;The requested operation would cause a conflict with the current state of a resource associated with the request and/or the game instance. Resolve the conflict before retrying.&lt;/p&gt;
function M.InvalidGameSessionStatusException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidGameSessionStatusException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertInvalidGameSessionStatusException(t)
	return t
end

local DescribeAliasInput_keys = { "AliasId" = true, nil }

function M.AssertDescribeAliasInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAliasInput to be of type 'table'")
	assert(struct["AliasId"], "Expected key AliasId to exist in table")
	if struct["AliasId"] then M.AssertAliasId(struct["AliasId"]) end
	for k,_ in pairs(struct) do
		assert(DescribeAliasInput_keys[k], "DescribeAliasInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAliasInput
-- &lt;p&gt;Represents the input for a request action.&lt;/p&gt;
-- @param AliasId [AliasId] &lt;p&gt;Unique identifier for a fleet alias. Specify the alias you want to retrieve.&lt;/p&gt;
-- Required parameter: AliasId
function M.DescribeAliasInput(AliasId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeAliasInput")
	local t = { 
		["AliasId"] = AliasId,
	}
	M.AssertDescribeAliasInput(t)
	return t
end

local GameSession_keys = { "Status" = true, "MaximumPlayerSessionCount" = true, "Name" = true, "CurrentPlayerSessionCount" = true, "TerminationTime" = true, "GameProperties" = true, "CreationTime" = true, "PlayerSessionCreationPolicy" = true, "FleetId" = true, "CreatorId" = true, "GameSessionId" = true, "IpAddress" = true, "Port" = true, nil }

function M.AssertGameSession(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GameSession to be of type 'table'")
	if struct["Status"] then M.AssertGameSessionStatus(struct["Status"]) end
	if struct["MaximumPlayerSessionCount"] then M.AssertWholeNumber(struct["MaximumPlayerSessionCount"]) end
	if struct["Name"] then M.AssertNonZeroAndMaxString(struct["Name"]) end
	if struct["CurrentPlayerSessionCount"] then M.AssertWholeNumber(struct["CurrentPlayerSessionCount"]) end
	if struct["TerminationTime"] then M.AssertTimestamp(struct["TerminationTime"]) end
	if struct["GameProperties"] then M.AssertGamePropertyList(struct["GameProperties"]) end
	if struct["CreationTime"] then M.AssertTimestamp(struct["CreationTime"]) end
	if struct["PlayerSessionCreationPolicy"] then M.AssertPlayerSessionCreationPolicy(struct["PlayerSessionCreationPolicy"]) end
	if struct["FleetId"] then M.AssertFleetId(struct["FleetId"]) end
	if struct["CreatorId"] then M.AssertNonZeroAndMaxString(struct["CreatorId"]) end
	if struct["GameSessionId"] then M.AssertNonZeroAndMaxString(struct["GameSessionId"]) end
	if struct["IpAddress"] then M.AssertIpAddress(struct["IpAddress"]) end
	if struct["Port"] then M.AssertPortNumber(struct["Port"]) end
	for k,_ in pairs(struct) do
		assert(GameSession_keys[k], "GameSession contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GameSession
-- &lt;p&gt;Properties describing a game session.&lt;/p&gt;
-- @param Status [GameSessionStatus] &lt;p&gt;Current status of the game session. A game session must have an &lt;code&gt;ACTIVE&lt;/code&gt; status to have player sessions.&lt;/p&gt;
-- @param MaximumPlayerSessionCount [WholeNumber] &lt;p&gt;Maximum number of players that can be connected simultaneously to the game session.&lt;/p&gt;
-- @param Name [NonZeroAndMaxString] &lt;p&gt;Descriptive label that is associated with a game session. Session names do not need to be unique.&lt;/p&gt;
-- @param CurrentPlayerSessionCount [WholeNumber] &lt;p&gt;Number of players currently in the game session.&lt;/p&gt;
-- @param TerminationTime [Timestamp] &lt;p&gt;Time stamp indicating when this data object was terminated. Format is a number expressed in Unix time as milliseconds (for example &quot;1469498468.057&quot;).&lt;/p&gt;
-- @param GameProperties [GamePropertyList] &lt;p&gt;Set of developer-defined properties for a game session. These properties are passed to the server process hosting the game session.&lt;/p&gt;
-- @param CreationTime [Timestamp] &lt;p&gt;Time stamp indicating when this data object was created. Format is a number expressed in Unix time as milliseconds (for example &quot;1469498468.057&quot;).&lt;/p&gt;
-- @param PlayerSessionCreationPolicy [PlayerSessionCreationPolicy] &lt;p&gt;Indicates whether or not the game session is accepting new players.&lt;/p&gt;
-- @param FleetId [FleetId] &lt;p&gt;Unique identifier for a fleet the game session is running on.&lt;/p&gt;
-- @param CreatorId [NonZeroAndMaxString] &lt;p&gt;Unique identifier for a player. This ID is used to enforce a resource protection policy (if one exists), that limits the number of game sessions a player can create.&lt;/p&gt;
-- @param GameSessionId [NonZeroAndMaxString] &lt;p&gt;Unique identifier for the game session. A game session ID has the following format: &lt;code&gt;arn:aws:gamelift:&amp;lt;region&amp;gt;::gamesession/&amp;lt;fleet ID&amp;gt;/&amp;lt;custom ID string or idempotency token&amp;gt;&lt;/code&gt;.&lt;/p&gt;
-- @param IpAddress [IpAddress] &lt;p&gt;IP address of the game session. To connect to a Amazon GameLift game server, an app needs both the IP address and port number.&lt;/p&gt;
-- @param Port [PortNumber] &lt;p&gt;Port number for the game session. To connect to a Amazon GameLift game server, an app needs both the IP address and port number.&lt;/p&gt;
function M.GameSession(Status, MaximumPlayerSessionCount, Name, CurrentPlayerSessionCount, TerminationTime, GameProperties, CreationTime, PlayerSessionCreationPolicy, FleetId, CreatorId, GameSessionId, IpAddress, Port, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GameSession")
	local t = { 
		["Status"] = Status,
		["MaximumPlayerSessionCount"] = MaximumPlayerSessionCount,
		["Name"] = Name,
		["CurrentPlayerSessionCount"] = CurrentPlayerSessionCount,
		["TerminationTime"] = TerminationTime,
		["GameProperties"] = GameProperties,
		["CreationTime"] = CreationTime,
		["PlayerSessionCreationPolicy"] = PlayerSessionCreationPolicy,
		["FleetId"] = FleetId,
		["CreatorId"] = CreatorId,
		["GameSessionId"] = GameSessionId,
		["IpAddress"] = IpAddress,
		["Port"] = Port,
	}
	M.AssertGameSession(t)
	return t
end

local DescribeGameSessionQueuesInput_keys = { "NextToken" = true, "Limit" = true, "Names" = true, nil }

function M.AssertDescribeGameSessionQueuesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeGameSessionQueuesInput to be of type 'table'")
	if struct["NextToken"] then M.AssertNonZeroAndMaxString(struct["NextToken"]) end
	if struct["Limit"] then M.AssertPositiveInteger(struct["Limit"]) end
	if struct["Names"] then M.AssertGameSessionQueueNameList(struct["Names"]) end
	for k,_ in pairs(struct) do
		assert(DescribeGameSessionQueuesInput_keys[k], "DescribeGameSessionQueuesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeGameSessionQueuesInput
-- &lt;p&gt;Represents the input for a request action.&lt;/p&gt;
-- @param NextToken [NonZeroAndMaxString] &lt;p&gt;Token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this action. To specify the start of the result set, do not specify a value.&lt;/p&gt;
-- @param Limit [PositiveInteger] &lt;p&gt;Maximum number of results to return. Use this parameter with &lt;code&gt;NextToken&lt;/code&gt; to get results as a set of sequential pages.&lt;/p&gt;
-- @param Names [GameSessionQueueNameList] &lt;p&gt;List of queue names to retrieve information for. To request settings for all queues, leave this parameter empty.&lt;/p&gt;
function M.DescribeGameSessionQueuesInput(NextToken, Limit, Names, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeGameSessionQueuesInput")
	local t = { 
		["NextToken"] = NextToken,
		["Limit"] = Limit,
		["Names"] = Names,
	}
	M.AssertDescribeGameSessionQueuesInput(t)
	return t
end

local CreatePlayerSessionsOutput_keys = { "PlayerSessions" = true, nil }

function M.AssertCreatePlayerSessionsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreatePlayerSessionsOutput to be of type 'table'")
	if struct["PlayerSessions"] then M.AssertPlayerSessionList(struct["PlayerSessions"]) end
	for k,_ in pairs(struct) do
		assert(CreatePlayerSessionsOutput_keys[k], "CreatePlayerSessionsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreatePlayerSessionsOutput
-- &lt;p&gt;Represents the returned data in response to a request action.&lt;/p&gt;
-- @param PlayerSessions [PlayerSessionList] &lt;p&gt;Collection of player session objects created for the added players.&lt;/p&gt;
function M.CreatePlayerSessionsOutput(PlayerSessions, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreatePlayerSessionsOutput")
	local t = { 
		["PlayerSessions"] = PlayerSessions,
	}
	M.AssertCreatePlayerSessionsOutput(t)
	return t
end

local PlayerLatency_keys = { "PlayerId" = true, "LatencyInMilliseconds" = true, "RegionIdentifier" = true, nil }

function M.AssertPlayerLatency(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PlayerLatency to be of type 'table'")
	if struct["PlayerId"] then M.AssertNonZeroAndMaxString(struct["PlayerId"]) end
	if struct["LatencyInMilliseconds"] then M.AssertFloat(struct["LatencyInMilliseconds"]) end
	if struct["RegionIdentifier"] then M.AssertNonZeroAndMaxString(struct["RegionIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(PlayerLatency_keys[k], "PlayerLatency contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PlayerLatency
-- &lt;p&gt;Regional latency information for a player, used when requesting a new game session with &lt;a&gt;StartGameSessionPlacement&lt;/a&gt;. This value indicates the amount of time lag that exists when the player is connected to a fleet in the specified region. The relative difference between a player's latency values for multiple regions are used to determine which fleets are best suited to place a new game session for the player. &lt;/p&gt;
-- @param PlayerId [NonZeroAndMaxString] &lt;p&gt;Unique identifier for a player associated with the latency data.&lt;/p&gt;
-- @param LatencyInMilliseconds [Float] &lt;p&gt;Amount of time that represents the time lag experienced by the player when connected to the specified region.&lt;/p&gt;
-- @param RegionIdentifier [NonZeroAndMaxString] &lt;p&gt;Name of the region that is associated with the latency value.&lt;/p&gt;
function M.PlayerLatency(PlayerId, LatencyInMilliseconds, RegionIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PlayerLatency")
	local t = { 
		["PlayerId"] = PlayerId,
		["LatencyInMilliseconds"] = LatencyInMilliseconds,
		["RegionIdentifier"] = RegionIdentifier,
	}
	M.AssertPlayerLatency(t)
	return t
end

local GetGameSessionLogUrlOutput_keys = { "PreSignedUrl" = true, nil }

function M.AssertGetGameSessionLogUrlOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetGameSessionLogUrlOutput to be of type 'table'")
	if struct["PreSignedUrl"] then M.AssertNonZeroAndMaxString(struct["PreSignedUrl"]) end
	for k,_ in pairs(struct) do
		assert(GetGameSessionLogUrlOutput_keys[k], "GetGameSessionLogUrlOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetGameSessionLogUrlOutput
-- &lt;p&gt;Represents the returned data in response to a request action.&lt;/p&gt;
-- @param PreSignedUrl [NonZeroAndMaxString] &lt;p&gt;Location of the requested game session logs, available for download.&lt;/p&gt;
function M.GetGameSessionLogUrlOutput(PreSignedUrl, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetGameSessionLogUrlOutput")
	local t = { 
		["PreSignedUrl"] = PreSignedUrl,
	}
	M.AssertGetGameSessionLogUrlOutput(t)
	return t
end

local DescribeGameSessionPlacementInput_keys = { "PlacementId" = true, nil }

function M.AssertDescribeGameSessionPlacementInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeGameSessionPlacementInput to be of type 'table'")
	assert(struct["PlacementId"], "Expected key PlacementId to exist in table")
	if struct["PlacementId"] then M.AssertIdStringModel(struct["PlacementId"]) end
	for k,_ in pairs(struct) do
		assert(DescribeGameSessionPlacementInput_keys[k], "DescribeGameSessionPlacementInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeGameSessionPlacementInput
-- &lt;p&gt;Represents the input for a request action.&lt;/p&gt;
-- @param PlacementId [IdStringModel] &lt;p&gt;Unique identifier for a game session placement to retrieve.&lt;/p&gt;
-- Required parameter: PlacementId
function M.DescribeGameSessionPlacementInput(PlacementId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeGameSessionPlacementInput")
	local t = { 
		["PlacementId"] = PlacementId,
	}
	M.AssertDescribeGameSessionPlacementInput(t)
	return t
end

local S3Location_keys = { "RoleArn" = true, "Bucket" = true, "Key" = true, nil }

function M.AssertS3Location(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected S3Location to be of type 'table'")
	if struct["RoleArn"] then M.AssertNonEmptyString(struct["RoleArn"]) end
	if struct["Bucket"] then M.AssertNonEmptyString(struct["Bucket"]) end
	if struct["Key"] then M.AssertNonEmptyString(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(S3Location_keys[k], "S3Location contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type S3Location
-- &lt;p&gt;Location in Amazon Simple Storage Service (Amazon S3) where build files can be stored for access by Amazon GameLift. This location is specified in a &lt;a&gt;CreateBuild&lt;/a&gt; request. For more details, see the &lt;a href=&quot;http://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-build-cli-uploading.html#gamelift-build-cli-uploading-create-build&quot;&gt;Create a Build with Files in Amazon S3&lt;/a&gt;.&lt;/p&gt;
-- @param RoleArn [NonEmptyString] &lt;p&gt;Amazon Resource Name (&lt;a href=&quot;http://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html&quot;&gt;ARN&lt;/a&gt;) for the access role that allows Amazon GameLift to access your S3 bucket.&lt;/p&gt;
-- @param Bucket [NonEmptyString] &lt;p&gt;Amazon S3 bucket identifier. This is the name of your S3 bucket.&lt;/p&gt;
-- @param Key [NonEmptyString] &lt;p&gt;Name of the zip file containing your build files. &lt;/p&gt;
function M.S3Location(RoleArn, Bucket, Key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating S3Location")
	local t = { 
		["RoleArn"] = RoleArn,
		["Bucket"] = Bucket,
		["Key"] = Key,
	}
	M.AssertS3Location(t)
	return t
end

local ListAliasesInput_keys = { "NextToken" = true, "Limit" = true, "Name" = true, "RoutingStrategyType" = true, nil }

function M.AssertListAliasesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListAliasesInput to be of type 'table'")
	if struct["NextToken"] then M.AssertNonEmptyString(struct["NextToken"]) end
	if struct["Limit"] then M.AssertPositiveInteger(struct["Limit"]) end
	if struct["Name"] then M.AssertNonEmptyString(struct["Name"]) end
	if struct["RoutingStrategyType"] then M.AssertRoutingStrategyType(struct["RoutingStrategyType"]) end
	for k,_ in pairs(struct) do
		assert(ListAliasesInput_keys[k], "ListAliasesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListAliasesInput
-- &lt;p&gt;Represents the input for a request action.&lt;/p&gt;
-- @param NextToken [NonEmptyString] &lt;p&gt;Token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this action. To specify the start of the result set, do not specify a value.&lt;/p&gt;
-- @param Limit [PositiveInteger] &lt;p&gt;Maximum number of results to return. Use this parameter with &lt;code&gt;NextToken&lt;/code&gt; to get results as a set of sequential pages.&lt;/p&gt;
-- @param Name [NonEmptyString] &lt;p&gt;Descriptive label that is associated with an alias. Alias names do not need to be unique.&lt;/p&gt;
-- @param RoutingStrategyType [RoutingStrategyType] &lt;p&gt;Type of routing to filter results on. Use this parameter to retrieve only aliases of a certain type. To retrieve all aliases, leave this parameter empty.&lt;/p&gt; &lt;p&gt;Possible routing types include the following:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;SIMPLE&lt;/b&gt; – The alias resolves to one specific fleet. Use this type when routing to active fleets.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;TERMINAL&lt;/b&gt; – The alias does not resolve to a fleet but instead can be used to display a message to the user. A terminal alias throws a TerminalRoutingStrategyException with the &lt;a&gt;RoutingStrategy&lt;/a&gt; message embedded.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
function M.ListAliasesInput(NextToken, Limit, Name, RoutingStrategyType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListAliasesInput")
	local t = { 
		["NextToken"] = NextToken,
		["Limit"] = Limit,
		["Name"] = Name,
		["RoutingStrategyType"] = RoutingStrategyType,
	}
	M.AssertListAliasesInput(t)
	return t
end

local DescribeGameSessionDetailsOutput_keys = { "NextToken" = true, "GameSessionDetails" = true, nil }

function M.AssertDescribeGameSessionDetailsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeGameSessionDetailsOutput to be of type 'table'")
	if struct["NextToken"] then M.AssertNonZeroAndMaxString(struct["NextToken"]) end
	if struct["GameSessionDetails"] then M.AssertGameSessionDetailList(struct["GameSessionDetails"]) end
	for k,_ in pairs(struct) do
		assert(DescribeGameSessionDetailsOutput_keys[k], "DescribeGameSessionDetailsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeGameSessionDetailsOutput
-- &lt;p&gt;Represents the returned data in response to a request action.&lt;/p&gt;
-- @param NextToken [NonZeroAndMaxString] &lt;p&gt;Token that indicates where to resume retrieving results on the next call to this action. If no token is returned, these results represent the end of the list.&lt;/p&gt;
-- @param GameSessionDetails [GameSessionDetailList] &lt;p&gt;Collection of objects containing game session properties and the protection policy currently in force for each session matching the request.&lt;/p&gt;
function M.DescribeGameSessionDetailsOutput(NextToken, GameSessionDetails, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeGameSessionDetailsOutput")
	local t = { 
		["NextToken"] = NextToken,
		["GameSessionDetails"] = GameSessionDetails,
	}
	M.AssertDescribeGameSessionDetailsOutput(t)
	return t
end

local CreateFleetOutput_keys = { "FleetAttributes" = true, nil }

function M.AssertCreateFleetOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateFleetOutput to be of type 'table'")
	if struct["FleetAttributes"] then M.AssertFleetAttributes(struct["FleetAttributes"]) end
	for k,_ in pairs(struct) do
		assert(CreateFleetOutput_keys[k], "CreateFleetOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateFleetOutput
-- &lt;p&gt;Represents the returned data in response to a request action.&lt;/p&gt;
-- @param FleetAttributes [FleetAttributes] &lt;p&gt;Properties for the newly created fleet.&lt;/p&gt;
function M.CreateFleetOutput(FleetAttributes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateFleetOutput")
	local t = { 
		["FleetAttributes"] = FleetAttributes,
	}
	M.AssertCreateFleetOutput(t)
	return t
end

local DescribeFleetEventsOutput_keys = { "NextToken" = true, "Events" = true, nil }

function M.AssertDescribeFleetEventsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeFleetEventsOutput to be of type 'table'")
	if struct["NextToken"] then M.AssertNonZeroAndMaxString(struct["NextToken"]) end
	if struct["Events"] then M.AssertEventList(struct["Events"]) end
	for k,_ in pairs(struct) do
		assert(DescribeFleetEventsOutput_keys[k], "DescribeFleetEventsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeFleetEventsOutput
-- &lt;p&gt;Represents the returned data in response to a request action.&lt;/p&gt;
-- @param NextToken [NonZeroAndMaxString] &lt;p&gt;Token that indicates where to resume retrieving results on the next call to this action. If no token is returned, these results represent the end of the list.&lt;/p&gt;
-- @param Events [EventList] &lt;p&gt;Collection of objects containing event log entries for the specified fleet.&lt;/p&gt;
function M.DescribeFleetEventsOutput(NextToken, Events, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeFleetEventsOutput")
	local t = { 
		["NextToken"] = NextToken,
		["Events"] = Events,
	}
	M.AssertDescribeFleetEventsOutput(t)
	return t
end

local DescribeRuntimeConfigurationInput_keys = { "FleetId" = true, nil }

function M.AssertDescribeRuntimeConfigurationInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeRuntimeConfigurationInput to be of type 'table'")
	assert(struct["FleetId"], "Expected key FleetId to exist in table")
	if struct["FleetId"] then M.AssertFleetId(struct["FleetId"]) end
	for k,_ in pairs(struct) do
		assert(DescribeRuntimeConfigurationInput_keys[k], "DescribeRuntimeConfigurationInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeRuntimeConfigurationInput
-- &lt;p&gt;Represents the input for a request action.&lt;/p&gt;
-- @param FleetId [FleetId] &lt;p&gt;Unique identifier for a fleet to get the runtime configuration for.&lt;/p&gt;
-- Required parameter: FleetId
function M.DescribeRuntimeConfigurationInput(FleetId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeRuntimeConfigurationInput")
	local t = { 
		["FleetId"] = FleetId,
	}
	M.AssertDescribeRuntimeConfigurationInput(t)
	return t
end

local GameSessionFullException_keys = { "Message" = true, nil }

function M.AssertGameSessionFullException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GameSessionFullException to be of type 'table'")
	if struct["Message"] then M.AssertNonEmptyString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(GameSessionFullException_keys[k], "GameSessionFullException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GameSessionFullException
-- &lt;p&gt;The game instance is currently full and cannot allow the requested player(s) to join. Clients can retry such requests immediately or after a waiting period.&lt;/p&gt;
-- @param Message [NonEmptyString] &lt;p&gt;The game instance is currently full and cannot allow the requested player(s) to join. Clients can retry such requests immediately or after a waiting period.&lt;/p&gt;
function M.GameSessionFullException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GameSessionFullException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertGameSessionFullException(t)
	return t
end

local CreateGameSessionInput_keys = { "MaximumPlayerSessionCount" = true, "Name" = true, "GameProperties" = true, "IdempotencyToken" = true, "FleetId" = true, "CreatorId" = true, "GameSessionId" = true, "AliasId" = true, nil }

function M.AssertCreateGameSessionInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateGameSessionInput to be of type 'table'")
	assert(struct["MaximumPlayerSessionCount"], "Expected key MaximumPlayerSessionCount to exist in table")
	if struct["MaximumPlayerSessionCount"] then M.AssertWholeNumber(struct["MaximumPlayerSessionCount"]) end
	if struct["Name"] then M.AssertNonZeroAndMaxString(struct["Name"]) end
	if struct["GameProperties"] then M.AssertGamePropertyList(struct["GameProperties"]) end
	if struct["IdempotencyToken"] then M.AssertIdStringModel(struct["IdempotencyToken"]) end
	if struct["FleetId"] then M.AssertFleetId(struct["FleetId"]) end
	if struct["CreatorId"] then M.AssertNonZeroAndMaxString(struct["CreatorId"]) end
	if struct["GameSessionId"] then M.AssertIdStringModel(struct["GameSessionId"]) end
	if struct["AliasId"] then M.AssertAliasId(struct["AliasId"]) end
	for k,_ in pairs(struct) do
		assert(CreateGameSessionInput_keys[k], "CreateGameSessionInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateGameSessionInput
-- &lt;p&gt;Represents the input for a request action.&lt;/p&gt;
-- @param MaximumPlayerSessionCount [WholeNumber] &lt;p&gt;Maximum number of players that can be connected simultaneously to the game session.&lt;/p&gt;
-- @param Name [NonZeroAndMaxString] &lt;p&gt;Descriptive label that is associated with a game session. Session names do not need to be unique.&lt;/p&gt;
-- @param GameProperties [GamePropertyList] &lt;p&gt;Set of developer-defined properties for a game session. These properties are passed to the server process hosting the game session.&lt;/p&gt;
-- @param IdempotencyToken [IdStringModel] &lt;p&gt;Custom string that uniquely identifies a request for a new game session. Maximum token length is 48 characters. If provided, this string is included in the new game session's ID. (A game session ID has the following format: &lt;code&gt;arn:aws:gamelift:&amp;lt;region&amp;gt;::gamesession/&amp;lt;fleet ID&amp;gt;/&amp;lt;custom ID string or idempotency token&amp;gt;&lt;/code&gt;.) &lt;/p&gt;
-- @param FleetId [FleetId] &lt;p&gt;Unique identifier for a fleet to create a game session in. Each request must reference either a fleet ID or alias ID, but not both.&lt;/p&gt;
-- @param CreatorId [NonZeroAndMaxString] &lt;p&gt;Unique identifier for a player or entity creating the game session. This ID is used to enforce a resource protection policy (if one exists) that limits the number of concurrent active game sessions one player can have.&lt;/p&gt;
-- @param GameSessionId [IdStringModel] &lt;p&gt; &lt;i&gt;This parameter is no longer preferred. Please use &lt;code&gt;IdempotencyToken&lt;/code&gt; instead.&lt;/i&gt; Custom string that uniquely identifies a request for a new game session. Maximum token length is 48 characters. If provided, this string is included in the new game session's ID. (A game session ID has the following format: &lt;code&gt;arn:aws:gamelift:&amp;lt;region&amp;gt;::gamesession/&amp;lt;fleet ID&amp;gt;/&amp;lt;custom ID string or idempotency token&amp;gt;&lt;/code&gt;.) &lt;/p&gt;
-- @param AliasId [AliasId] &lt;p&gt;Unique identifier for an alias associated with the fleet to create a game session in. Each request must reference either a fleet ID or alias ID, but not both.&lt;/p&gt;
-- Required parameter: MaximumPlayerSessionCount
function M.CreateGameSessionInput(MaximumPlayerSessionCount, Name, GameProperties, IdempotencyToken, FleetId, CreatorId, GameSessionId, AliasId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateGameSessionInput")
	local t = { 
		["MaximumPlayerSessionCount"] = MaximumPlayerSessionCount,
		["Name"] = Name,
		["GameProperties"] = GameProperties,
		["IdempotencyToken"] = IdempotencyToken,
		["FleetId"] = FleetId,
		["CreatorId"] = CreatorId,
		["GameSessionId"] = GameSessionId,
		["AliasId"] = AliasId,
	}
	M.AssertCreateGameSessionInput(t)
	return t
end

local DeleteGameSessionQueueOutput_keys = { nil }

function M.AssertDeleteGameSessionQueueOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteGameSessionQueueOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DeleteGameSessionQueueOutput_keys[k], "DeleteGameSessionQueueOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteGameSessionQueueOutput
--  
function M.DeleteGameSessionQueueOutput(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteGameSessionQueueOutput")
	local t = { 
	}
	M.AssertDeleteGameSessionQueueOutput(t)
	return t
end

local CreateGameSessionOutput_keys = { "GameSession" = true, nil }

function M.AssertCreateGameSessionOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateGameSessionOutput to be of type 'table'")
	if struct["GameSession"] then M.AssertGameSession(struct["GameSession"]) end
	for k,_ in pairs(struct) do
		assert(CreateGameSessionOutput_keys[k], "CreateGameSessionOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateGameSessionOutput
-- &lt;p&gt;Represents the returned data in response to a request action.&lt;/p&gt;
-- @param GameSession [GameSession] &lt;p&gt;Object that describes the newly created game session record.&lt;/p&gt;
function M.CreateGameSessionOutput(GameSession, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateGameSessionOutput")
	local t = { 
		["GameSession"] = GameSession,
	}
	M.AssertCreateGameSessionOutput(t)
	return t
end

local UpdateFleetPortSettingsInput_keys = { "InboundPermissionRevocations" = true, "FleetId" = true, "InboundPermissionAuthorizations" = true, nil }

function M.AssertUpdateFleetPortSettingsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateFleetPortSettingsInput to be of type 'table'")
	assert(struct["FleetId"], "Expected key FleetId to exist in table")
	if struct["InboundPermissionRevocations"] then M.AssertIpPermissionsList(struct["InboundPermissionRevocations"]) end
	if struct["FleetId"] then M.AssertFleetId(struct["FleetId"]) end
	if struct["InboundPermissionAuthorizations"] then M.AssertIpPermissionsList(struct["InboundPermissionAuthorizations"]) end
	for k,_ in pairs(struct) do
		assert(UpdateFleetPortSettingsInput_keys[k], "UpdateFleetPortSettingsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateFleetPortSettingsInput
-- &lt;p&gt;Represents the input for a request action.&lt;/p&gt;
-- @param InboundPermissionRevocations [IpPermissionsList] &lt;p&gt;Collection of port settings to be removed from the fleet record.&lt;/p&gt;
-- @param FleetId [FleetId] &lt;p&gt;Unique identifier for a fleet to update port settings for.&lt;/p&gt;
-- @param InboundPermissionAuthorizations [IpPermissionsList] &lt;p&gt;Collection of port settings to be added to the fleet record.&lt;/p&gt;
-- Required parameter: FleetId
function M.UpdateFleetPortSettingsInput(InboundPermissionRevocations, FleetId, InboundPermissionAuthorizations, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateFleetPortSettingsInput")
	local t = { 
		["InboundPermissionRevocations"] = InboundPermissionRevocations,
		["FleetId"] = FleetId,
		["InboundPermissionAuthorizations"] = InboundPermissionAuthorizations,
	}
	M.AssertUpdateFleetPortSettingsInput(t)
	return t
end

local ConflictException_keys = { "Message" = true, nil }

function M.AssertConflictException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConflictException to be of type 'table'")
	if struct["Message"] then M.AssertNonEmptyString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(ConflictException_keys[k], "ConflictException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConflictException
-- &lt;p&gt;The requested operation would cause a conflict with the current state of a service resource associated with the request. Resolve the conflict before retrying this request.&lt;/p&gt;
-- @param Message [NonEmptyString] &lt;p&gt;The requested operation would cause a conflict with the current state of a service resource associated with the request. Resolve the conflict before retrying this request.&lt;/p&gt;
function M.ConflictException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ConflictException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertConflictException(t)
	return t
end

local SearchGameSessionsInput_keys = { "FilterExpression" = true, "SortExpression" = true, "FleetId" = true, "Limit" = true, "NextToken" = true, "AliasId" = true, nil }

function M.AssertSearchGameSessionsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SearchGameSessionsInput to be of type 'table'")
	if struct["FilterExpression"] then M.AssertNonZeroAndMaxString(struct["FilterExpression"]) end
	if struct["SortExpression"] then M.AssertNonZeroAndMaxString(struct["SortExpression"]) end
	if struct["FleetId"] then M.AssertFleetId(struct["FleetId"]) end
	if struct["Limit"] then M.AssertPositiveInteger(struct["Limit"]) end
	if struct["NextToken"] then M.AssertNonZeroAndMaxString(struct["NextToken"]) end
	if struct["AliasId"] then M.AssertAliasId(struct["AliasId"]) end
	for k,_ in pairs(struct) do
		assert(SearchGameSessionsInput_keys[k], "SearchGameSessionsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SearchGameSessionsInput
-- &lt;p&gt;Represents the input for a request action.&lt;/p&gt;
-- @param FilterExpression [NonZeroAndMaxString] &lt;p&gt;String containing the search criteria for the session search. If no filter expression is included, the request returns results for all game sessions in the fleet that are in &lt;code&gt;ACTIVE&lt;/code&gt; status.&lt;/p&gt; &lt;p&gt;A filter expression can contain one or multiple conditions. Each condition consists of the following:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;Operand&lt;/b&gt; -- Name of a game session attribute. Valid values are &lt;code&gt;gameSessionName&lt;/code&gt;, &lt;code&gt;gameSessionId&lt;/code&gt;, &lt;code&gt;creationTimeMillis&lt;/code&gt;, &lt;code&gt;playerSessionCount&lt;/code&gt;, &lt;code&gt;maximumSessions&lt;/code&gt;, &lt;code&gt;hasAvailablePlayerSessions&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;Comparator&lt;/b&gt; -- Valid comparators are: &lt;code&gt;=&lt;/code&gt;, &lt;code&gt;&amp;lt;&amp;gt;&lt;/code&gt;, &lt;code&gt;&amp;lt;&lt;/code&gt;, &lt;code&gt;&amp;gt;&lt;/code&gt;, &lt;code&gt;&amp;lt;=&lt;/code&gt;, &lt;code&gt;&amp;gt;=&lt;/code&gt;. &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;Value&lt;/b&gt; -- Value to be searched for. Values can be numbers, boolean values (true/false) or strings. String values are case sensitive, enclosed in single quotes. Special characters must be escaped. Boolean and string values can only be used with the comparators &lt;code&gt;=&lt;/code&gt; and &lt;code&gt;&amp;lt;&amp;gt;&lt;/code&gt;. For example, the following filter expression searches on &lt;code&gt;gameSessionName&lt;/code&gt;: &quot;&lt;code&gt;FilterExpression&quot;: &quot;gameSessionName = 'Matt\\'s Awesome Game 1'&quot;&lt;/code&gt;. &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;To chain multiple conditions in a single expression, use the logical keywords &lt;code&gt;AND&lt;/code&gt;, &lt;code&gt;OR&lt;/code&gt;, and &lt;code&gt;NOT&lt;/code&gt; and parentheses as needed. For example: &lt;code&gt;x AND y AND NOT z&lt;/code&gt;, &lt;code&gt;NOT (x OR y)&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;Session search evaluates conditions from left to right using the following precedence rules:&lt;/p&gt; &lt;ol&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;=&lt;/code&gt;, &lt;code&gt;&amp;lt;&amp;gt;&lt;/code&gt;, &lt;code&gt;&amp;lt;&lt;/code&gt;, &lt;code&gt;&amp;gt;&lt;/code&gt;, &lt;code&gt;&amp;lt;=&lt;/code&gt;, &lt;code&gt;&amp;gt;=&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Parentheses&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;NOT&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;AND&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;OR&lt;/p&gt; &lt;/li&gt; &lt;/ol&gt; &lt;p&gt;For example, this filter expression retrieves game sessions hosting at least ten players that have an open player slot: &lt;code&gt;&quot;maximumSessions&amp;gt;=10 AND hasAvailablePlayerSessions=true&quot;&lt;/code&gt;. &lt;/p&gt;
-- @param SortExpression [NonZeroAndMaxString] &lt;p&gt;Instructions on how to sort the search results. If no sort expression is included, the request returns results in random order. A sort expression consists of the following elements:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;Operand&lt;/b&gt; -- Name of a game session attribute. Valid values are &lt;code&gt;gameSessionName&lt;/code&gt;, &lt;code&gt;gameSessionId&lt;/code&gt;, &lt;code&gt;creationTimeMillis&lt;/code&gt;, &lt;code&gt;playerSessionCount&lt;/code&gt;, &lt;code&gt;maximumSessions&lt;/code&gt;, &lt;code&gt;hasAvailablePlayerSessions&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;Order&lt;/b&gt; -- Valid sort orders are &lt;code&gt;ASC&lt;/code&gt; (ascending) and &lt;code&gt;DESC&lt;/code&gt; (descending).&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;For example, this sort expression returns the oldest active sessions first: &lt;code&gt;&quot;SortExpression&quot;: &quot;creationTimeMillis ASC&quot;&lt;/code&gt;. Results with a null value for the sort operand are returned at the end of the list.&lt;/p&gt;
-- @param FleetId [FleetId] &lt;p&gt;Unique identifier for a fleet to search for active game sessions. Each request must reference either a fleet ID or alias ID, but not both.&lt;/p&gt;
-- @param Limit [PositiveInteger] &lt;p&gt;Maximum number of results to return. Use this parameter with &lt;code&gt;NextToken&lt;/code&gt; to get results as a set of sequential pages. The maximum number of results returned is 20, even if this value is not set or is set higher than 20. &lt;/p&gt;
-- @param NextToken [NonZeroAndMaxString] &lt;p&gt;Token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this action. To specify the start of the result set, do not specify a value.&lt;/p&gt;
-- @param AliasId [AliasId] &lt;p&gt;Unique identifier for an alias associated with the fleet to search for active game sessions. Each request must reference either a fleet ID or alias ID, but not both.&lt;/p&gt;
function M.SearchGameSessionsInput(FilterExpression, SortExpression, FleetId, Limit, NextToken, AliasId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SearchGameSessionsInput")
	local t = { 
		["FilterExpression"] = FilterExpression,
		["SortExpression"] = SortExpression,
		["FleetId"] = FleetId,
		["Limit"] = Limit,
		["NextToken"] = NextToken,
		["AliasId"] = AliasId,
	}
	M.AssertSearchGameSessionsInput(t)
	return t
end

local DescribeFleetUtilizationOutput_keys = { "FleetUtilization" = true, "NextToken" = true, nil }

function M.AssertDescribeFleetUtilizationOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeFleetUtilizationOutput to be of type 'table'")
	if struct["FleetUtilization"] then M.AssertFleetUtilizationList(struct["FleetUtilization"]) end
	if struct["NextToken"] then M.AssertNonZeroAndMaxString(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(DescribeFleetUtilizationOutput_keys[k], "DescribeFleetUtilizationOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeFleetUtilizationOutput
-- &lt;p&gt;Represents the returned data in response to a request action.&lt;/p&gt;
-- @param FleetUtilization [FleetUtilizationList] &lt;p&gt;Collection of objects containing utilization information for each requested fleet ID.&lt;/p&gt;
-- @param NextToken [NonZeroAndMaxString] &lt;p&gt;Token that indicates where to resume retrieving results on the next call to this action. If no token is returned, these results represent the end of the list.&lt;/p&gt;
function M.DescribeFleetUtilizationOutput(FleetUtilization, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeFleetUtilizationOutput")
	local t = { 
		["FleetUtilization"] = FleetUtilization,
		["NextToken"] = NextToken,
	}
	M.AssertDescribeFleetUtilizationOutput(t)
	return t
end

local UpdateGameSessionInput_keys = { "MaximumPlayerSessionCount" = true, "PlayerSessionCreationPolicy" = true, "GameSessionId" = true, "Name" = true, "ProtectionPolicy" = true, nil }

function M.AssertUpdateGameSessionInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateGameSessionInput to be of type 'table'")
	assert(struct["GameSessionId"], "Expected key GameSessionId to exist in table")
	if struct["MaximumPlayerSessionCount"] then M.AssertWholeNumber(struct["MaximumPlayerSessionCount"]) end
	if struct["PlayerSessionCreationPolicy"] then M.AssertPlayerSessionCreationPolicy(struct["PlayerSessionCreationPolicy"]) end
	if struct["GameSessionId"] then M.AssertArnStringModel(struct["GameSessionId"]) end
	if struct["Name"] then M.AssertNonZeroAndMaxString(struct["Name"]) end
	if struct["ProtectionPolicy"] then M.AssertProtectionPolicy(struct["ProtectionPolicy"]) end
	for k,_ in pairs(struct) do
		assert(UpdateGameSessionInput_keys[k], "UpdateGameSessionInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateGameSessionInput
-- &lt;p&gt;Represents the input for a request action.&lt;/p&gt;
-- @param MaximumPlayerSessionCount [WholeNumber] &lt;p&gt;Maximum number of players that can be connected simultaneously to the game session.&lt;/p&gt;
-- @param PlayerSessionCreationPolicy [PlayerSessionCreationPolicy] &lt;p&gt;Policy determining whether or not the game session accepts new players.&lt;/p&gt;
-- @param GameSessionId [ArnStringModel] &lt;p&gt;Unique identifier for the game session to update.&lt;/p&gt;
-- @param Name [NonZeroAndMaxString] &lt;p&gt;Descriptive label that is associated with a game session. Session names do not need to be unique.&lt;/p&gt;
-- @param ProtectionPolicy [ProtectionPolicy] &lt;p&gt;Game session protection policy to apply to this game session only.&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;NoProtection&lt;/b&gt; – The game session can be terminated during a scale-down event.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;FullProtection&lt;/b&gt; – If the game session is in an &lt;code&gt;ACTIVE&lt;/code&gt; status, it cannot be terminated during a scale-down event.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- Required parameter: GameSessionId
function M.UpdateGameSessionInput(MaximumPlayerSessionCount, PlayerSessionCreationPolicy, GameSessionId, Name, ProtectionPolicy, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateGameSessionInput")
	local t = { 
		["MaximumPlayerSessionCount"] = MaximumPlayerSessionCount,
		["PlayerSessionCreationPolicy"] = PlayerSessionCreationPolicy,
		["GameSessionId"] = GameSessionId,
		["Name"] = Name,
		["ProtectionPolicy"] = ProtectionPolicy,
	}
	M.AssertUpdateGameSessionInput(t)
	return t
end

local UpdateGameSessionOutput_keys = { "GameSession" = true, nil }

function M.AssertUpdateGameSessionOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateGameSessionOutput to be of type 'table'")
	if struct["GameSession"] then M.AssertGameSession(struct["GameSession"]) end
	for k,_ in pairs(struct) do
		assert(UpdateGameSessionOutput_keys[k], "UpdateGameSessionOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateGameSessionOutput
-- &lt;p&gt;Represents the returned data in response to a request action.&lt;/p&gt;
-- @param GameSession [GameSession] &lt;p&gt;Object that contains the updated game session metadata.&lt;/p&gt;
function M.UpdateGameSessionOutput(GameSession, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateGameSessionOutput")
	local t = { 
		["GameSession"] = GameSession,
	}
	M.AssertUpdateGameSessionOutput(t)
	return t
end

local GameSessionQueueDestination_keys = { "DestinationArn" = true, nil }

function M.AssertGameSessionQueueDestination(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GameSessionQueueDestination to be of type 'table'")
	if struct["DestinationArn"] then M.AssertArnStringModel(struct["DestinationArn"]) end
	for k,_ in pairs(struct) do
		assert(GameSessionQueueDestination_keys[k], "GameSessionQueueDestination contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GameSessionQueueDestination
-- &lt;p&gt;Fleet designated in a game session queue. Requests for new game sessions in the queue are fulfilled by starting a new game session on any destination configured for a queue. &lt;/p&gt;
-- @param DestinationArn [ArnStringModel] &lt;p&gt;Amazon Resource Name (ARN) assigned to fleet or fleet alias. ARNs, which include a fleet ID or alias ID and a region name, provide a unique identifier across all regions. &lt;/p&gt;
function M.GameSessionQueueDestination(DestinationArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GameSessionQueueDestination")
	local t = { 
		["DestinationArn"] = DestinationArn,
	}
	M.AssertGameSessionQueueDestination(t)
	return t
end

local DescribeGameSessionPlacementOutput_keys = { "GameSessionPlacement" = true, nil }

function M.AssertDescribeGameSessionPlacementOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeGameSessionPlacementOutput to be of type 'table'")
	if struct["GameSessionPlacement"] then M.AssertGameSessionPlacement(struct["GameSessionPlacement"]) end
	for k,_ in pairs(struct) do
		assert(DescribeGameSessionPlacementOutput_keys[k], "DescribeGameSessionPlacementOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeGameSessionPlacementOutput
-- &lt;p&gt;Represents the returned data in response to a request action.&lt;/p&gt;
-- @param GameSessionPlacement [GameSessionPlacement] &lt;p&gt;Object that describes the requested game session placement.&lt;/p&gt;
function M.DescribeGameSessionPlacementOutput(GameSessionPlacement, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeGameSessionPlacementOutput")
	local t = { 
		["GameSessionPlacement"] = GameSessionPlacement,
	}
	M.AssertDescribeGameSessionPlacementOutput(t)
	return t
end

local UpdateFleetCapacityInput_keys = { "MinSize" = true, "MaxSize" = true, "FleetId" = true, "DesiredInstances" = true, nil }

function M.AssertUpdateFleetCapacityInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateFleetCapacityInput to be of type 'table'")
	assert(struct["FleetId"], "Expected key FleetId to exist in table")
	if struct["MinSize"] then M.AssertWholeNumber(struct["MinSize"]) end
	if struct["MaxSize"] then M.AssertWholeNumber(struct["MaxSize"]) end
	if struct["FleetId"] then M.AssertFleetId(struct["FleetId"]) end
	if struct["DesiredInstances"] then M.AssertWholeNumber(struct["DesiredInstances"]) end
	for k,_ in pairs(struct) do
		assert(UpdateFleetCapacityInput_keys[k], "UpdateFleetCapacityInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateFleetCapacityInput
-- &lt;p&gt;Represents the input for a request action.&lt;/p&gt;
-- @param MinSize [WholeNumber] &lt;p&gt;Minimum value allowed for the fleet's instance count. Default if not set is 0.&lt;/p&gt;
-- @param MaxSize [WholeNumber] &lt;p&gt;Maximum value allowed for the fleet's instance count. Default if not set is 1.&lt;/p&gt;
-- @param FleetId [FleetId] &lt;p&gt;Unique identifier for a fleet to update capacity for.&lt;/p&gt;
-- @param DesiredInstances [WholeNumber] &lt;p&gt;Number of EC2 instances you want this fleet to host.&lt;/p&gt;
-- Required parameter: FleetId
function M.UpdateFleetCapacityInput(MinSize, MaxSize, FleetId, DesiredInstances, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateFleetCapacityInput")
	local t = { 
		["MinSize"] = MinSize,
		["MaxSize"] = MaxSize,
		["FleetId"] = FleetId,
		["DesiredInstances"] = DesiredInstances,
	}
	M.AssertUpdateFleetCapacityInput(t)
	return t
end

local GameSessionQueue_keys = { "Destinations" = true, "GameSessionQueueArn" = true, "PlayerLatencyPolicies" = true, "Name" = true, "TimeoutInSeconds" = true, nil }

function M.AssertGameSessionQueue(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GameSessionQueue to be of type 'table'")
	if struct["Destinations"] then M.AssertGameSessionQueueDestinationList(struct["Destinations"]) end
	if struct["GameSessionQueueArn"] then M.AssertArnStringModel(struct["GameSessionQueueArn"]) end
	if struct["PlayerLatencyPolicies"] then M.AssertPlayerLatencyPolicyList(struct["PlayerLatencyPolicies"]) end
	if struct["Name"] then M.AssertGameSessionQueueName(struct["Name"]) end
	if struct["TimeoutInSeconds"] then M.AssertWholeNumber(struct["TimeoutInSeconds"]) end
	for k,_ in pairs(struct) do
		assert(GameSessionQueue_keys[k], "GameSessionQueue contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GameSessionQueue
-- &lt;p&gt;Configuration of a queue that is used to process game session placement requests. The queue configuration identifies several game features:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;The destinations where a new game session can potentially be hosted. Amazon GameLift tries these destinations in an order based on either the queue's default order or player latency information, if provided in a placement request. With latency information, Amazon GameLift can place game sessions where the majority of players are reporting the lowest possible latency. &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;The length of time that placement requests can wait in the queue before timing out. &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;A set of optional latency policies that protect individual players from high latencies, preventing game sessions from being placed where any individual player is reporting latency higher than a policy's maximum.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;Queue-related operations include the following:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;a&gt;CreateGameSessionQueue&lt;/a&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;a&gt;DescribeGameSessionQueues&lt;/a&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;a&gt;UpdateGameSessionQueue&lt;/a&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;a&gt;DeleteGameSessionQueue&lt;/a&gt; &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param Destinations [GameSessionQueueDestinationList] &lt;p&gt;List of fleets that can be used to fulfill game session placement requests in the queue. Fleets are identified by either a fleet ARN or a fleet alias ARN. Destinations are listed in default preference order.&lt;/p&gt;
-- @param GameSessionQueueArn [ArnStringModel] &lt;p&gt;Amazon Resource Name (&lt;a href=&quot;http://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html&quot;&gt;ARN&lt;/a&gt;) that is assigned to a game session queue and uniquely identifies it. Format is &lt;code&gt;arn:aws:gamelift:&amp;lt;region&amp;gt;::fleet/fleet-a1234567-b8c9-0d1e-2fa3-b45c6d7e8912&lt;/code&gt;.&lt;/p&gt;
-- @param PlayerLatencyPolicies [PlayerLatencyPolicyList] &lt;p&gt;Collection of latency policies to apply when processing game sessions placement requests with player latency information. Multiple policies are evaluated in order of the maximum latency value, starting with the lowest latency values. With just one policy, it is enforced at the start of the game session placement for the duration period. With multiple policies, each policy is enforced consecutively for its duration period. For example, a queue might enforce a 60-second policy followed by a 120-second policy, and then no policy for the remainder of the placement. &lt;/p&gt;
-- @param Name [GameSessionQueueName] &lt;p&gt;Descriptive label that is associated with queue. Queue names must be unique within each region.&lt;/p&gt;
-- @param TimeoutInSeconds [WholeNumber] &lt;p&gt;Maximum time, in seconds, that a new game session placement request remains in the queue. When a request exceeds this time, the game session placement changes to a TIMED_OUT status.&lt;/p&gt;
function M.GameSessionQueue(Destinations, GameSessionQueueArn, PlayerLatencyPolicies, Name, TimeoutInSeconds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GameSessionQueue")
	local t = { 
		["Destinations"] = Destinations,
		["GameSessionQueueArn"] = GameSessionQueueArn,
		["PlayerLatencyPolicies"] = PlayerLatencyPolicies,
		["Name"] = Name,
		["TimeoutInSeconds"] = TimeoutInSeconds,
	}
	M.AssertGameSessionQueue(t)
	return t
end

local ResolveAliasInput_keys = { "AliasId" = true, nil }

function M.AssertResolveAliasInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResolveAliasInput to be of type 'table'")
	assert(struct["AliasId"], "Expected key AliasId to exist in table")
	if struct["AliasId"] then M.AssertAliasId(struct["AliasId"]) end
	for k,_ in pairs(struct) do
		assert(ResolveAliasInput_keys[k], "ResolveAliasInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResolveAliasInput
-- &lt;p&gt;Represents the input for a request action.&lt;/p&gt;
-- @param AliasId [AliasId] &lt;p&gt;Unique identifier for the alias you want to resolve.&lt;/p&gt;
-- Required parameter: AliasId
function M.ResolveAliasInput(AliasId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResolveAliasInput")
	local t = { 
		["AliasId"] = AliasId,
	}
	M.AssertResolveAliasInput(t)
	return t
end

local DescribeInstancesOutput_keys = { "Instances" = true, "NextToken" = true, nil }

function M.AssertDescribeInstancesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeInstancesOutput to be of type 'table'")
	if struct["Instances"] then M.AssertInstanceList(struct["Instances"]) end
	if struct["NextToken"] then M.AssertNonZeroAndMaxString(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(DescribeInstancesOutput_keys[k], "DescribeInstancesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeInstancesOutput
-- &lt;p&gt;Represents the returned data in response to a request action.&lt;/p&gt;
-- @param Instances [InstanceList] &lt;p&gt;Collection of objects containing properties for each instance returned.&lt;/p&gt;
-- @param NextToken [NonZeroAndMaxString] &lt;p&gt;Token that indicates where to resume retrieving results on the next call to this action. If no token is returned, these results represent the end of the list.&lt;/p&gt;
function M.DescribeInstancesOutput(Instances, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeInstancesOutput")
	local t = { 
		["Instances"] = Instances,
		["NextToken"] = NextToken,
	}
	M.AssertDescribeInstancesOutput(t)
	return t
end

local ListFleetsOutput_keys = { "FleetIds" = true, "NextToken" = true, nil }

function M.AssertListFleetsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListFleetsOutput to be of type 'table'")
	if struct["FleetIds"] then M.AssertFleetIdList(struct["FleetIds"]) end
	if struct["NextToken"] then M.AssertNonZeroAndMaxString(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(ListFleetsOutput_keys[k], "ListFleetsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListFleetsOutput
-- &lt;p&gt;Represents the returned data in response to a request action.&lt;/p&gt;
-- @param FleetIds [FleetIdList] &lt;p&gt;Set of fleet IDs matching the list request. You can retrieve additional information about all returned fleets by passing this result set to a call to &lt;a&gt;DescribeFleetAttributes&lt;/a&gt;, &lt;a&gt;DescribeFleetCapacity&lt;/a&gt;, or &lt;a&gt;DescribeFleetUtilization&lt;/a&gt;.&lt;/p&gt;
-- @param NextToken [NonZeroAndMaxString] &lt;p&gt;Token that indicates where to resume retrieving results on the next call to this action. If no token is returned, these results represent the end of the list.&lt;/p&gt;
function M.ListFleetsOutput(FleetIds, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListFleetsOutput")
	local t = { 
		["FleetIds"] = FleetIds,
		["NextToken"] = NextToken,
	}
	M.AssertListFleetsOutput(t)
	return t
end

local UpdateRuntimeConfigurationInput_keys = { "FleetId" = true, "RuntimeConfiguration" = true, nil }

function M.AssertUpdateRuntimeConfigurationInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateRuntimeConfigurationInput to be of type 'table'")
	assert(struct["FleetId"], "Expected key FleetId to exist in table")
	assert(struct["RuntimeConfiguration"], "Expected key RuntimeConfiguration to exist in table")
	if struct["FleetId"] then M.AssertFleetId(struct["FleetId"]) end
	if struct["RuntimeConfiguration"] then M.AssertRuntimeConfiguration(struct["RuntimeConfiguration"]) end
	for k,_ in pairs(struct) do
		assert(UpdateRuntimeConfigurationInput_keys[k], "UpdateRuntimeConfigurationInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateRuntimeConfigurationInput
-- &lt;p&gt;Represents the input for a request action.&lt;/p&gt;
-- @param FleetId [FleetId] &lt;p&gt;Unique identifier for a fleet to update runtime configuration for.&lt;/p&gt;
-- @param RuntimeConfiguration [RuntimeConfiguration] &lt;p&gt;Instructions for launching server processes on each instance in the fleet. The runtime configuration for a fleet has a collection of server process configurations, one for each type of server process to run on an instance. A server process configuration specifies the location of the server executable, launch parameters, and the number of concurrent processes with that configuration to maintain on each instance.&lt;/p&gt;
-- Required parameter: FleetId
-- Required parameter: RuntimeConfiguration
function M.UpdateRuntimeConfigurationInput(FleetId, RuntimeConfiguration, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateRuntimeConfigurationInput")
	local t = { 
		["FleetId"] = FleetId,
		["RuntimeConfiguration"] = RuntimeConfiguration,
	}
	M.AssertUpdateRuntimeConfigurationInput(t)
	return t
end

local GameSessionPlacement_keys = { "Status" = true, "MaximumPlayerSessionCount" = true, "PlacedPlayerSessions" = true, "PlacementId" = true, "GameSessionName" = true, "GameSessionQueueName" = true, "GameProperties" = true, "GameSessionId" = true, "StartTime" = true, "GameSessionRegion" = true, "PlayerLatencies" = true, "EndTime" = true, "IpAddress" = true, "Port" = true, "GameSessionArn" = true, nil }

function M.AssertGameSessionPlacement(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GameSessionPlacement to be of type 'table'")
	if struct["Status"] then M.AssertGameSessionPlacementState(struct["Status"]) end
	if struct["MaximumPlayerSessionCount"] then M.AssertWholeNumber(struct["MaximumPlayerSessionCount"]) end
	if struct["PlacedPlayerSessions"] then M.AssertPlacedPlayerSessionList(struct["PlacedPlayerSessions"]) end
	if struct["PlacementId"] then M.AssertIdStringModel(struct["PlacementId"]) end
	if struct["GameSessionName"] then M.AssertNonZeroAndMaxString(struct["GameSessionName"]) end
	if struct["GameSessionQueueName"] then M.AssertGameSessionQueueName(struct["GameSessionQueueName"]) end
	if struct["GameProperties"] then M.AssertGamePropertyList(struct["GameProperties"]) end
	if struct["GameSessionId"] then M.AssertNonZeroAndMaxString(struct["GameSessionId"]) end
	if struct["StartTime"] then M.AssertTimestamp(struct["StartTime"]) end
	if struct["GameSessionRegion"] then M.AssertNonZeroAndMaxString(struct["GameSessionRegion"]) end
	if struct["PlayerLatencies"] then M.AssertPlayerLatencyList(struct["PlayerLatencies"]) end
	if struct["EndTime"] then M.AssertTimestamp(struct["EndTime"]) end
	if struct["IpAddress"] then M.AssertIpAddress(struct["IpAddress"]) end
	if struct["Port"] then M.AssertPortNumber(struct["Port"]) end
	if struct["GameSessionArn"] then M.AssertNonZeroAndMaxString(struct["GameSessionArn"]) end
	for k,_ in pairs(struct) do
		assert(GameSessionPlacement_keys[k], "GameSessionPlacement contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GameSessionPlacement
-- &lt;p&gt;Object that describes a &lt;a&gt;StartGameSessionPlacement&lt;/a&gt; request. This object includes the full details of the original request plus the current status and start/end time stamps.&lt;/p&gt; &lt;p&gt;Game session placement-related operations include:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;a&gt;StartGameSessionPlacement&lt;/a&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;a&gt;DescribeGameSessionPlacement&lt;/a&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;a&gt;StopGameSessionPlacement&lt;/a&gt; &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param Status [GameSessionPlacementState] &lt;p&gt;Current status of the game session placement request.&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;PENDING&lt;/b&gt; – The placement request is currently in the queue waiting to be processed.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;FULFILLED&lt;/b&gt; – A new game session and player sessions (if requested) have been successfully created. Values for &lt;i&gt;GameSessionArn&lt;/i&gt; and &lt;i&gt;GameSessionRegion&lt;/i&gt; are available. &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;CANCELLED&lt;/b&gt; – The placement request was canceled with a call to &lt;a&gt;StopGameSessionPlacement&lt;/a&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;TIMED_OUT&lt;/b&gt; – A new game session was not successfully created before the time limit expired. You can resubmit the placement request as needed.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param MaximumPlayerSessionCount [WholeNumber] &lt;p&gt;Maximum number of players that can be connected simultaneously to the game session.&lt;/p&gt;
-- @param PlacedPlayerSessions [PlacedPlayerSessionList] &lt;p&gt;Collection of information on player sessions created in response to the game session placement request. These player sessions are created only once a new game session is successfully placed (placement status is Fulfilled). This information includes the player ID (as provided in the placement request) and the corresponding player session ID. Retrieve full player sessions by calling &lt;a&gt;DescribePlayerSessions&lt;/a&gt; with the player session ID.&lt;/p&gt;
-- @param PlacementId [IdStringModel] &lt;p&gt;Unique identifier for a game session placement.&lt;/p&gt;
-- @param GameSessionName [NonZeroAndMaxString] &lt;p&gt;Descriptive label that is associated with a game session. Session names do not need to be unique.&lt;/p&gt;
-- @param GameSessionQueueName [GameSessionQueueName] &lt;p&gt;Descriptive label that is associated with queue. Queue names must be unique within each region.&lt;/p&gt;
-- @param GameProperties [GamePropertyList] &lt;p&gt;Set of developer-defined properties for a game session. These properties are passed to the server process hosting the game session.&lt;/p&gt;
-- @param GameSessionId [NonZeroAndMaxString] &lt;p&gt;Unique identifier for the game session. This value is set once the new game session is placed (placement status is Fulfilled).&lt;/p&gt;
-- @param StartTime [Timestamp] &lt;p&gt;Time stamp indicating when this request was placed in the queue. Format is a number expressed in Unix time as milliseconds (for example &quot;1469498468.057&quot;).&lt;/p&gt;
-- @param GameSessionRegion [NonZeroAndMaxString] &lt;p&gt;Name of the region where the game session created by this placement request is running. This value is set once the new game session is placed (placement status is Fulfilled).&lt;/p&gt;
-- @param PlayerLatencies [PlayerLatencyList] &lt;p&gt;Set of values, expressed in milliseconds, indicating the amount of latency that players are experiencing when connected to AWS regions.&lt;/p&gt;
-- @param EndTime [Timestamp] &lt;p&gt;Time stamp indicating when this request was completed, canceled, or timed out.&lt;/p&gt;
-- @param IpAddress [IpAddress] &lt;p&gt;IP address of the game session. To connect to a Amazon GameLift game server, an app needs both the IP address and port number. This value is set once the new game session is placed (placement status is Fulfilled). &lt;/p&gt;
-- @param Port [PortNumber] &lt;p&gt;Port number for the game session. To connect to a Amazon GameLift game server, an app needs both the IP address and port number. This value is set once the new game session is placed (placement status is Fulfilled).&lt;/p&gt;
-- @param GameSessionArn [NonZeroAndMaxString] &lt;p&gt;Identifier for the game session created by this placement request. This value is set once the new game session is placed (placement status is Fulfilled). This identifier is unique across all regions. You can use this value as a &lt;code&gt;GameSessionId&lt;/code&gt; value as needed.&lt;/p&gt;
function M.GameSessionPlacement(Status, MaximumPlayerSessionCount, PlacedPlayerSessions, PlacementId, GameSessionName, GameSessionQueueName, GameProperties, GameSessionId, StartTime, GameSessionRegion, PlayerLatencies, EndTime, IpAddress, Port, GameSessionArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GameSessionPlacement")
	local t = { 
		["Status"] = Status,
		["MaximumPlayerSessionCount"] = MaximumPlayerSessionCount,
		["PlacedPlayerSessions"] = PlacedPlayerSessions,
		["PlacementId"] = PlacementId,
		["GameSessionName"] = GameSessionName,
		["GameSessionQueueName"] = GameSessionQueueName,
		["GameProperties"] = GameProperties,
		["GameSessionId"] = GameSessionId,
		["StartTime"] = StartTime,
		["GameSessionRegion"] = GameSessionRegion,
		["PlayerLatencies"] = PlayerLatencies,
		["EndTime"] = EndTime,
		["IpAddress"] = IpAddress,
		["Port"] = Port,
		["GameSessionArn"] = GameSessionArn,
	}
	M.AssertGameSessionPlacement(t)
	return t
end

local DescribeBuildInput_keys = { "BuildId" = true, nil }

function M.AssertDescribeBuildInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeBuildInput to be of type 'table'")
	assert(struct["BuildId"], "Expected key BuildId to exist in table")
	if struct["BuildId"] then M.AssertBuildId(struct["BuildId"]) end
	for k,_ in pairs(struct) do
		assert(DescribeBuildInput_keys[k], "DescribeBuildInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeBuildInput
-- &lt;p&gt;Represents the input for a request action.&lt;/p&gt;
-- @param BuildId [BuildId] &lt;p&gt;Unique identifier for a build to retrieve properties for.&lt;/p&gt;
-- Required parameter: BuildId
function M.DescribeBuildInput(BuildId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeBuildInput")
	local t = { 
		["BuildId"] = BuildId,
	}
	M.AssertDescribeBuildInput(t)
	return t
end

local DescribeFleetEventsInput_keys = { "Limit" = true, "EndTime" = true, "FleetId" = true, "NextToken" = true, "StartTime" = true, nil }

function M.AssertDescribeFleetEventsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeFleetEventsInput to be of type 'table'")
	assert(struct["FleetId"], "Expected key FleetId to exist in table")
	if struct["Limit"] then M.AssertPositiveInteger(struct["Limit"]) end
	if struct["EndTime"] then M.AssertTimestamp(struct["EndTime"]) end
	if struct["FleetId"] then M.AssertFleetId(struct["FleetId"]) end
	if struct["NextToken"] then M.AssertNonZeroAndMaxString(struct["NextToken"]) end
	if struct["StartTime"] then M.AssertTimestamp(struct["StartTime"]) end
	for k,_ in pairs(struct) do
		assert(DescribeFleetEventsInput_keys[k], "DescribeFleetEventsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeFleetEventsInput
-- &lt;p&gt;Represents the input for a request action.&lt;/p&gt;
-- @param Limit [PositiveInteger] &lt;p&gt;Maximum number of results to return. Use this parameter with &lt;code&gt;NextToken&lt;/code&gt; to get results as a set of sequential pages.&lt;/p&gt;
-- @param EndTime [Timestamp] &lt;p&gt;Most recent date to retrieve event logs for. If no end time is specified, this call returns entries from the specified start time up to the present. Format is a number expressed in Unix time as milliseconds (ex: &quot;1469498468.057&quot;).&lt;/p&gt;
-- @param FleetId [FleetId] &lt;p&gt;Unique identifier for a fleet to get event logs for.&lt;/p&gt;
-- @param NextToken [NonZeroAndMaxString] &lt;p&gt;Token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this action. To specify the start of the result set, do not specify a value.&lt;/p&gt;
-- @param StartTime [Timestamp] &lt;p&gt;Earliest date to retrieve event logs for. If no start time is specified, this call returns entries starting from when the fleet was created to the specified end time. Format is a number expressed in Unix time as milliseconds (ex: &quot;1469498468.057&quot;).&lt;/p&gt;
-- Required parameter: FleetId
function M.DescribeFleetEventsInput(Limit, EndTime, FleetId, NextToken, StartTime, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeFleetEventsInput")
	local t = { 
		["Limit"] = Limit,
		["EndTime"] = EndTime,
		["FleetId"] = FleetId,
		["NextToken"] = NextToken,
		["StartTime"] = StartTime,
	}
	M.AssertDescribeFleetEventsInput(t)
	return t
end

local UnauthorizedException_keys = { "Message" = true, nil }

function M.AssertUnauthorizedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnauthorizedException to be of type 'table'")
	if struct["Message"] then M.AssertNonEmptyString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(UnauthorizedException_keys[k], "UnauthorizedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnauthorizedException
-- &lt;p&gt;The client failed authentication. Clients should not retry such requests.&lt;/p&gt;
-- @param Message [NonEmptyString] &lt;p&gt;The client failed authentication. Clients should not retry such requests.&lt;/p&gt;
function M.UnauthorizedException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UnauthorizedException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertUnauthorizedException(t)
	return t
end

local CreateAliasInput_keys = { "RoutingStrategy" = true, "Name" = true, "Description" = true, nil }

function M.AssertCreateAliasInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateAliasInput to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["RoutingStrategy"], "Expected key RoutingStrategy to exist in table")
	if struct["RoutingStrategy"] then M.AssertRoutingStrategy(struct["RoutingStrategy"]) end
	if struct["Name"] then M.AssertNonBlankAndLengthConstraintString(struct["Name"]) end
	if struct["Description"] then M.AssertNonZeroAndMaxString(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(CreateAliasInput_keys[k], "CreateAliasInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateAliasInput
-- &lt;p&gt;Represents the input for a request action.&lt;/p&gt;
-- @param RoutingStrategy [RoutingStrategy] &lt;p&gt;Object that specifies the fleet and routing type to use for the alias.&lt;/p&gt;
-- @param Name [NonBlankAndLengthConstraintString] &lt;p&gt;Descriptive label that is associated with an alias. Alias names do not need to be unique.&lt;/p&gt;
-- @param Description [NonZeroAndMaxString] &lt;p&gt;Human-readable description of an alias.&lt;/p&gt;
-- Required parameter: Name
-- Required parameter: RoutingStrategy
function M.CreateAliasInput(RoutingStrategy, Name, Description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateAliasInput")
	local t = { 
		["RoutingStrategy"] = RoutingStrategy,
		["Name"] = Name,
		["Description"] = Description,
	}
	M.AssertCreateAliasInput(t)
	return t
end

local DescribePlayerSessionsInput_keys = { "NextToken" = true, "PlayerId" = true, "PlayerSessionId" = true, "GameSessionId" = true, "Limit" = true, "PlayerSessionStatusFilter" = true, nil }

function M.AssertDescribePlayerSessionsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribePlayerSessionsInput to be of type 'table'")
	if struct["NextToken"] then M.AssertNonZeroAndMaxString(struct["NextToken"]) end
	if struct["PlayerId"] then M.AssertNonZeroAndMaxString(struct["PlayerId"]) end
	if struct["PlayerSessionId"] then M.AssertPlayerSessionId(struct["PlayerSessionId"]) end
	if struct["GameSessionId"] then M.AssertArnStringModel(struct["GameSessionId"]) end
	if struct["Limit"] then M.AssertPositiveInteger(struct["Limit"]) end
	if struct["PlayerSessionStatusFilter"] then M.AssertNonZeroAndMaxString(struct["PlayerSessionStatusFilter"]) end
	for k,_ in pairs(struct) do
		assert(DescribePlayerSessionsInput_keys[k], "DescribePlayerSessionsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribePlayerSessionsInput
-- &lt;p&gt;Represents the input for a request action.&lt;/p&gt;
-- @param NextToken [NonZeroAndMaxString] &lt;p&gt;Token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this action. To specify the start of the result set, do not specify a value. If a player session ID is specified, this parameter is ignored.&lt;/p&gt;
-- @param PlayerId [NonZeroAndMaxString] &lt;p&gt;Unique identifier for a player to retrieve player sessions for.&lt;/p&gt;
-- @param PlayerSessionId [PlayerSessionId] &lt;p&gt;Unique identifier for a player session to retrieve.&lt;/p&gt;
-- @param GameSessionId [ArnStringModel] &lt;p&gt;Unique identifier for the game session to retrieve player sessions for.&lt;/p&gt;
-- @param Limit [PositiveInteger] &lt;p&gt;Maximum number of results to return. Use this parameter with &lt;code&gt;NextToken&lt;/code&gt; to get results as a set of sequential pages. If a player session ID is specified, this parameter is ignored.&lt;/p&gt;
-- @param PlayerSessionStatusFilter [NonZeroAndMaxString] &lt;p&gt;Player session status to filter results on.&lt;/p&gt; &lt;p&gt;Possible player session statuses include the following:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;RESERVED&lt;/b&gt; – The player session request has been received, but the player has not yet connected to the server process and/or been validated. &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;ACTIVE&lt;/b&gt; – The player has been validated by the server process and is currently connected.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;COMPLETED&lt;/b&gt; – The player connection has been dropped.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;TIMEDOUT&lt;/b&gt; – A player session request was received, but the player did not connect and/or was not validated within the time-out limit (60 seconds).&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
function M.DescribePlayerSessionsInput(NextToken, PlayerId, PlayerSessionId, GameSessionId, Limit, PlayerSessionStatusFilter, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribePlayerSessionsInput")
	local t = { 
		["NextToken"] = NextToken,
		["PlayerId"] = PlayerId,
		["PlayerSessionId"] = PlayerSessionId,
		["GameSessionId"] = GameSessionId,
		["Limit"] = Limit,
		["PlayerSessionStatusFilter"] = PlayerSessionStatusFilter,
	}
	M.AssertDescribePlayerSessionsInput(t)
	return t
end

local CreateGameSessionQueueInput_keys = { "Destinations" = true, "PlayerLatencyPolicies" = true, "Name" = true, "TimeoutInSeconds" = true, nil }

function M.AssertCreateGameSessionQueueInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateGameSessionQueueInput to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Destinations"] then M.AssertGameSessionQueueDestinationList(struct["Destinations"]) end
	if struct["PlayerLatencyPolicies"] then M.AssertPlayerLatencyPolicyList(struct["PlayerLatencyPolicies"]) end
	if struct["Name"] then M.AssertGameSessionQueueName(struct["Name"]) end
	if struct["TimeoutInSeconds"] then M.AssertWholeNumber(struct["TimeoutInSeconds"]) end
	for k,_ in pairs(struct) do
		assert(CreateGameSessionQueueInput_keys[k], "CreateGameSessionQueueInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateGameSessionQueueInput
-- &lt;p&gt;Represents the input for a request action.&lt;/p&gt;
-- @param Destinations [GameSessionQueueDestinationList] &lt;p&gt;List of fleets that can be used to fulfill game session placement requests in the queue. Fleets are identified by either a fleet ARN or a fleet alias ARN. Destinations are listed in default preference order.&lt;/p&gt;
-- @param PlayerLatencyPolicies [PlayerLatencyPolicyList] &lt;p&gt;Collection of latency policies to apply when processing game sessions placement requests with player latency information. Multiple policies are evaluated in order of the maximum latency value, starting with the lowest latency values. With just one policy, it is enforced at the start of the game session placement for the duration period. With multiple policies, each policy is enforced consecutively for its duration period. For example, a queue might enforce a 60-second policy followed by a 120-second policy, and then no policy for the remainder of the placement. A player latency policy must set a value for MaximumIndividualPlayerLatencyMilliseconds; if none is set, this API requests will fail.&lt;/p&gt;
-- @param Name [GameSessionQueueName] &lt;p&gt;Descriptive label that is associated with queue. Queue names must be unique within each region.&lt;/p&gt;
-- @param TimeoutInSeconds [WholeNumber] &lt;p&gt;Maximum time, in seconds, that a new game session placement request remains in the queue. When a request exceeds this time, the game session placement changes to a TIMED_OUT status.&lt;/p&gt;
-- Required parameter: Name
function M.CreateGameSessionQueueInput(Destinations, PlayerLatencyPolicies, Name, TimeoutInSeconds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateGameSessionQueueInput")
	local t = { 
		["Destinations"] = Destinations,
		["PlayerLatencyPolicies"] = PlayerLatencyPolicies,
		["Name"] = Name,
		["TimeoutInSeconds"] = TimeoutInSeconds,
	}
	M.AssertCreateGameSessionQueueInput(t)
	return t
end

local RoutingStrategy_keys = { "FleetId" = true, "Message" = true, "Type" = true, nil }

function M.AssertRoutingStrategy(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RoutingStrategy to be of type 'table'")
	if struct["FleetId"] then M.AssertFleetId(struct["FleetId"]) end
	if struct["Message"] then M.AssertFreeText(struct["Message"]) end
	if struct["Type"] then M.AssertRoutingStrategyType(struct["Type"]) end
	for k,_ in pairs(struct) do
		assert(RoutingStrategy_keys[k], "RoutingStrategy contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RoutingStrategy
-- &lt;p&gt;Routing configuration for a fleet alias.&lt;/p&gt;
-- @param FleetId [FleetId] &lt;p&gt;Unique identifier for a fleet that the alias points to.&lt;/p&gt;
-- @param Message [FreeText] &lt;p&gt;Message text to be used with a terminal routing strategy.&lt;/p&gt;
-- @param Type [RoutingStrategyType] &lt;p&gt;Type of routing strategy.&lt;/p&gt; &lt;p&gt;Possible routing types include the following:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;SIMPLE&lt;/b&gt; – The alias resolves to one specific fleet. Use this type when routing to active fleets.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;TERMINAL&lt;/b&gt; – The alias does not resolve to a fleet but instead can be used to display a message to the user. A terminal alias throws a TerminalRoutingStrategyException with the &lt;a&gt;RoutingStrategy&lt;/a&gt; message embedded.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
function M.RoutingStrategy(FleetId, Message, Type, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RoutingStrategy")
	local t = { 
		["FleetId"] = FleetId,
		["Message"] = Message,
		["Type"] = Type,
	}
	M.AssertRoutingStrategy(t)
	return t
end

local PlayerSession_keys = { "Status" = true, "PlayerId" = true, "TerminationTime" = true, "CreationTime" = true, "PlayerData" = true, "PlayerSessionId" = true, "GameSessionId" = true, "FleetId" = true, "IpAddress" = true, "Port" = true, nil }

function M.AssertPlayerSession(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PlayerSession to be of type 'table'")
	if struct["Status"] then M.AssertPlayerSessionStatus(struct["Status"]) end
	if struct["PlayerId"] then M.AssertNonZeroAndMaxString(struct["PlayerId"]) end
	if struct["TerminationTime"] then M.AssertTimestamp(struct["TerminationTime"]) end
	if struct["CreationTime"] then M.AssertTimestamp(struct["CreationTime"]) end
	if struct["PlayerData"] then M.AssertPlayerData(struct["PlayerData"]) end
	if struct["PlayerSessionId"] then M.AssertPlayerSessionId(struct["PlayerSessionId"]) end
	if struct["GameSessionId"] then M.AssertNonZeroAndMaxString(struct["GameSessionId"]) end
	if struct["FleetId"] then M.AssertFleetId(struct["FleetId"]) end
	if struct["IpAddress"] then M.AssertIpAddress(struct["IpAddress"]) end
	if struct["Port"] then M.AssertPortNumber(struct["Port"]) end
	for k,_ in pairs(struct) do
		assert(PlayerSession_keys[k], "PlayerSession contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PlayerSession
-- &lt;p&gt;Properties describing a player session. A player session represents either a player reservation for a game session or actual player activity in a game session. A player session object (including player data) is automatically passed to a game session when the player connects to the game session and is validated.&lt;/p&gt; &lt;p&gt;Player session-related operations include:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;a&gt;CreatePlayerSession&lt;/a&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;a&gt;CreatePlayerSessions&lt;/a&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;a&gt;DescribePlayerSessions&lt;/a&gt; &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param Status [PlayerSessionStatus] &lt;p&gt;Current status of the player session.&lt;/p&gt; &lt;p&gt;Possible player session statuses include the following:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;RESERVED&lt;/b&gt; – The player session request has been received, but the player has not yet connected to the server process and/or been validated. &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;ACTIVE&lt;/b&gt; – The player has been validated by the server process and is currently connected.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;COMPLETED&lt;/b&gt; – The player connection has been dropped.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;TIMEDOUT&lt;/b&gt; – A player session request was received, but the player did not connect and/or was not validated within the time-out limit (60 seconds).&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param PlayerId [NonZeroAndMaxString] &lt;p&gt;Unique identifier for a player that is associated with this player session.&lt;/p&gt;
-- @param TerminationTime [Timestamp] &lt;p&gt;Time stamp indicating when this data object was terminated. Format is a number expressed in Unix time as milliseconds (for example &quot;1469498468.057&quot;).&lt;/p&gt;
-- @param CreationTime [Timestamp] &lt;p&gt;Time stamp indicating when this data object was created. Format is a number expressed in Unix time as milliseconds (for example &quot;1469498468.057&quot;).&lt;/p&gt;
-- @param PlayerData [PlayerData] &lt;p&gt;Developer-defined information related to a player. Amazon GameLift does not use this data, so it can be formatted as needed for use in the game. &lt;/p&gt;
-- @param PlayerSessionId [PlayerSessionId] &lt;p&gt;Unique identifier for a player session.&lt;/p&gt;
-- @param GameSessionId [NonZeroAndMaxString] &lt;p&gt;Unique identifier for the game session that the player session is connected to.&lt;/p&gt;
-- @param FleetId [FleetId] &lt;p&gt;Unique identifier for a fleet that the player's game session is running on.&lt;/p&gt;
-- @param IpAddress [IpAddress] &lt;p&gt;IP address of the game session. To connect to a Amazon GameLift game server, an app needs both the IP address and port number.&lt;/p&gt;
-- @param Port [PortNumber] &lt;p&gt;Port number for the game session. To connect to a Amazon GameLift server process, an app needs both the IP address and port number.&lt;/p&gt;
function M.PlayerSession(Status, PlayerId, TerminationTime, CreationTime, PlayerData, PlayerSessionId, GameSessionId, FleetId, IpAddress, Port, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PlayerSession")
	local t = { 
		["Status"] = Status,
		["PlayerId"] = PlayerId,
		["TerminationTime"] = TerminationTime,
		["CreationTime"] = CreationTime,
		["PlayerData"] = PlayerData,
		["PlayerSessionId"] = PlayerSessionId,
		["GameSessionId"] = GameSessionId,
		["FleetId"] = FleetId,
		["IpAddress"] = IpAddress,
		["Port"] = Port,
	}
	M.AssertPlayerSession(t)
	return t
end

local RequestUploadCredentialsInput_keys = { "BuildId" = true, nil }

function M.AssertRequestUploadCredentialsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RequestUploadCredentialsInput to be of type 'table'")
	assert(struct["BuildId"], "Expected key BuildId to exist in table")
	if struct["BuildId"] then M.AssertBuildId(struct["BuildId"]) end
	for k,_ in pairs(struct) do
		assert(RequestUploadCredentialsInput_keys[k], "RequestUploadCredentialsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RequestUploadCredentialsInput
-- &lt;p&gt;Represents the input for a request action.&lt;/p&gt;
-- @param BuildId [BuildId] &lt;p&gt;Unique identifier for a build to get credentials for.&lt;/p&gt;
-- Required parameter: BuildId
function M.RequestUploadCredentialsInput(BuildId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RequestUploadCredentialsInput")
	local t = { 
		["BuildId"] = BuildId,
	}
	M.AssertRequestUploadCredentialsInput(t)
	return t
end

local DescribePlayerSessionsOutput_keys = { "PlayerSessions" = true, "NextToken" = true, nil }

function M.AssertDescribePlayerSessionsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribePlayerSessionsOutput to be of type 'table'")
	if struct["PlayerSessions"] then M.AssertPlayerSessionList(struct["PlayerSessions"]) end
	if struct["NextToken"] then M.AssertNonZeroAndMaxString(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(DescribePlayerSessionsOutput_keys[k], "DescribePlayerSessionsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribePlayerSessionsOutput
-- &lt;p&gt;Represents the returned data in response to a request action.&lt;/p&gt;
-- @param PlayerSessions [PlayerSessionList] &lt;p&gt;Collection of objects containing properties for each player session that matches the request.&lt;/p&gt;
-- @param NextToken [NonZeroAndMaxString] &lt;p&gt;Token that indicates where to resume retrieving results on the next call to this action. If no token is returned, these results represent the end of the list.&lt;/p&gt;
function M.DescribePlayerSessionsOutput(PlayerSessions, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribePlayerSessionsOutput")
	local t = { 
		["PlayerSessions"] = PlayerSessions,
		["NextToken"] = NextToken,
	}
	M.AssertDescribePlayerSessionsOutput(t)
	return t
end

local Alias_keys = { "Name" = true, "AliasArn" = true, "CreationTime" = true, "LastUpdatedTime" = true, "RoutingStrategy" = true, "AliasId" = true, "Description" = true, nil }

function M.AssertAlias(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Alias to be of type 'table'")
	if struct["Name"] then M.AssertNonBlankAndLengthConstraintString(struct["Name"]) end
	if struct["AliasArn"] then M.AssertArnStringModel(struct["AliasArn"]) end
	if struct["CreationTime"] then M.AssertTimestamp(struct["CreationTime"]) end
	if struct["LastUpdatedTime"] then M.AssertTimestamp(struct["LastUpdatedTime"]) end
	if struct["RoutingStrategy"] then M.AssertRoutingStrategy(struct["RoutingStrategy"]) end
	if struct["AliasId"] then M.AssertAliasId(struct["AliasId"]) end
	if struct["Description"] then M.AssertFreeText(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(Alias_keys[k], "Alias contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Alias
-- &lt;p&gt;Properties describing a fleet alias.&lt;/p&gt; &lt;p&gt;Alias-related operations include:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;a&gt;CreateAlias&lt;/a&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;a&gt;ListAliases&lt;/a&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;a&gt;DescribeAlias&lt;/a&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;a&gt;UpdateAlias&lt;/a&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;a&gt;DeleteAlias&lt;/a&gt; &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param Name [NonBlankAndLengthConstraintString] &lt;p&gt;Descriptive label that is associated with an alias. Alias names do not need to be unique.&lt;/p&gt;
-- @param AliasArn [ArnStringModel] &lt;p&gt;Unique identifier for an alias; alias ARNs are unique across all regions.&lt;/p&gt;
-- @param CreationTime [Timestamp] &lt;p&gt;Time stamp indicating when this data object was created. Format is a number expressed in Unix time as milliseconds (for example &quot;1469498468.057&quot;).&lt;/p&gt;
-- @param LastUpdatedTime [Timestamp] &lt;p&gt;Time stamp indicating when this data object was last modified. Format is a number expressed in Unix time as milliseconds (for example &quot;1469498468.057&quot;).&lt;/p&gt;
-- @param RoutingStrategy [RoutingStrategy] &lt;p&gt;Alias configuration for the alias, including routing type and settings.&lt;/p&gt;
-- @param AliasId [AliasId] &lt;p&gt;Unique identifier for an alias; alias IDs are unique within a region.&lt;/p&gt;
-- @param Description [FreeText] &lt;p&gt;Human-readable description of an alias.&lt;/p&gt;
function M.Alias(Name, AliasArn, CreationTime, LastUpdatedTime, RoutingStrategy, AliasId, Description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Alias")
	local t = { 
		["Name"] = Name,
		["AliasArn"] = AliasArn,
		["CreationTime"] = CreationTime,
		["LastUpdatedTime"] = LastUpdatedTime,
		["RoutingStrategy"] = RoutingStrategy,
		["AliasId"] = AliasId,
		["Description"] = Description,
	}
	M.AssertAlias(t)
	return t
end

local RuntimeConfiguration_keys = { "GameSessionActivationTimeoutSeconds" = true, "ServerProcesses" = true, "MaxConcurrentGameSessionActivations" = true, nil }

function M.AssertRuntimeConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RuntimeConfiguration to be of type 'table'")
	if struct["GameSessionActivationTimeoutSeconds"] then M.AssertGameSessionActivationTimeoutSeconds(struct["GameSessionActivationTimeoutSeconds"]) end
	if struct["ServerProcesses"] then M.AssertServerProcessList(struct["ServerProcesses"]) end
	if struct["MaxConcurrentGameSessionActivations"] then M.AssertMaxConcurrentGameSessionActivations(struct["MaxConcurrentGameSessionActivations"]) end
	for k,_ in pairs(struct) do
		assert(RuntimeConfiguration_keys[k], "RuntimeConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RuntimeConfiguration
-- &lt;p&gt;Collection of server process configurations that describe what processes should be run on each instance in a fleet. An instance can launch and maintain multiple server processes based on the runtime configuration; it regularly checks for an updated runtime configuration and starts new server processes to match the latest version.&lt;/p&gt; &lt;p&gt;The key purpose of a runtime configuration with multiple server process configurations is to be able to run more than one kind of game server in a single fleet. You can include configurations for more than one server executable in order to run two or more different programs to run on the same instance. This option might be useful, for example, to run more than one version of your game server on the same fleet. Another option is to specify configurations for the same server executable but with different launch parameters.&lt;/p&gt; &lt;p&gt;A Amazon GameLift instance is limited to 50 processes running simultaneously. To calculate the total number of processes specified in a runtime configuration, add the values of the &lt;code&gt;ConcurrentExecutions&lt;/code&gt; parameter for each &lt;code&gt; &lt;a&gt;ServerProcess&lt;/a&gt; &lt;/code&gt; object in the runtime configuration.&lt;/p&gt;
-- @param GameSessionActivationTimeoutSeconds [GameSessionActivationTimeoutSeconds] &lt;p&gt;Maximum amount of time (in seconds) that a game session can remain in status ACTIVATING. If the game session is not active before the timeout, activation is terminated and the game session status is changed to TERMINATED.&lt;/p&gt;
-- @param ServerProcesses [ServerProcessList] &lt;p&gt;Collection of server process configurations that describe which server processes to run on each instance in a fleet.&lt;/p&gt;
-- @param MaxConcurrentGameSessionActivations [MaxConcurrentGameSessionActivations] &lt;p&gt;Maximum number of game sessions with status ACTIVATING to allow on an instance simultaneously. This setting limits the amount of instance resources that can be used for new game activations at any one time.&lt;/p&gt;
function M.RuntimeConfiguration(GameSessionActivationTimeoutSeconds, ServerProcesses, MaxConcurrentGameSessionActivations, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RuntimeConfiguration")
	local t = { 
		["GameSessionActivationTimeoutSeconds"] = GameSessionActivationTimeoutSeconds,
		["ServerProcesses"] = ServerProcesses,
		["MaxConcurrentGameSessionActivations"] = MaxConcurrentGameSessionActivations,
	}
	M.AssertRuntimeConfiguration(t)
	return t
end

local StopGameSessionPlacementOutput_keys = { "GameSessionPlacement" = true, nil }

function M.AssertStopGameSessionPlacementOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopGameSessionPlacementOutput to be of type 'table'")
	if struct["GameSessionPlacement"] then M.AssertGameSessionPlacement(struct["GameSessionPlacement"]) end
	for k,_ in pairs(struct) do
		assert(StopGameSessionPlacementOutput_keys[k], "StopGameSessionPlacementOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopGameSessionPlacementOutput
-- &lt;p&gt;Represents the returned data in response to a request action.&lt;/p&gt;
-- @param GameSessionPlacement [GameSessionPlacement] &lt;p&gt;Object that describes the canceled game session placement, with Cancelled status and an end time stamp. &lt;/p&gt;
function M.StopGameSessionPlacementOutput(GameSessionPlacement, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StopGameSessionPlacementOutput")
	local t = { 
		["GameSessionPlacement"] = GameSessionPlacement,
	}
	M.AssertStopGameSessionPlacementOutput(t)
	return t
end

local CreatePlayerSessionsInput_keys = { "PlayerIds" = true, "GameSessionId" = true, "PlayerDataMap" = true, nil }

function M.AssertCreatePlayerSessionsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreatePlayerSessionsInput to be of type 'table'")
	assert(struct["GameSessionId"], "Expected key GameSessionId to exist in table")
	assert(struct["PlayerIds"], "Expected key PlayerIds to exist in table")
	if struct["PlayerIds"] then M.AssertPlayerIdList(struct["PlayerIds"]) end
	if struct["GameSessionId"] then M.AssertArnStringModel(struct["GameSessionId"]) end
	if struct["PlayerDataMap"] then M.AssertPlayerDataMap(struct["PlayerDataMap"]) end
	for k,_ in pairs(struct) do
		assert(CreatePlayerSessionsInput_keys[k], "CreatePlayerSessionsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreatePlayerSessionsInput
-- &lt;p&gt;Represents the input for a request action.&lt;/p&gt;
-- @param PlayerIds [PlayerIdList] &lt;p&gt;List of unique identifiers for the players to be added.&lt;/p&gt;
-- @param GameSessionId [ArnStringModel] &lt;p&gt;Unique identifier for the game session to add players to.&lt;/p&gt;
-- @param PlayerDataMap [PlayerDataMap] &lt;p&gt;Map of string pairs, each specifying a player ID and a set of developer-defined information related to the player. Amazon GameLift does not use this data, so it can be formatted as needed for use in the game. Player data strings for player IDs not included in the &lt;code&gt;PlayerIds&lt;/code&gt; parameter are ignored. &lt;/p&gt;
-- Required parameter: GameSessionId
-- Required parameter: PlayerIds
function M.CreatePlayerSessionsInput(PlayerIds, GameSessionId, PlayerDataMap, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreatePlayerSessionsInput")
	local t = { 
		["PlayerIds"] = PlayerIds,
		["GameSessionId"] = GameSessionId,
		["PlayerDataMap"] = PlayerDataMap,
	}
	M.AssertCreatePlayerSessionsInput(t)
	return t
end

local ListAliasesOutput_keys = { "NextToken" = true, "Aliases" = true, nil }

function M.AssertListAliasesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListAliasesOutput to be of type 'table'")
	if struct["NextToken"] then M.AssertNonEmptyString(struct["NextToken"]) end
	if struct["Aliases"] then M.AssertAliasList(struct["Aliases"]) end
	for k,_ in pairs(struct) do
		assert(ListAliasesOutput_keys[k], "ListAliasesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListAliasesOutput
-- &lt;p&gt;Represents the returned data in response to a request action.&lt;/p&gt;
-- @param NextToken [NonEmptyString] &lt;p&gt;Token that indicates where to resume retrieving results on the next call to this action. If no token is returned, these results represent the end of the list.&lt;/p&gt;
-- @param Aliases [AliasList] &lt;p&gt;Collection of alias records that match the list request.&lt;/p&gt;
function M.ListAliasesOutput(NextToken, Aliases, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListAliasesOutput")
	local t = { 
		["NextToken"] = NextToken,
		["Aliases"] = Aliases,
	}
	M.AssertListAliasesOutput(t)
	return t
end

local GetInstanceAccessInput_keys = { "InstanceId" = true, "FleetId" = true, nil }

function M.AssertGetInstanceAccessInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetInstanceAccessInput to be of type 'table'")
	assert(struct["FleetId"], "Expected key FleetId to exist in table")
	assert(struct["InstanceId"], "Expected key InstanceId to exist in table")
	if struct["InstanceId"] then M.AssertInstanceId(struct["InstanceId"]) end
	if struct["FleetId"] then M.AssertFleetId(struct["FleetId"]) end
	for k,_ in pairs(struct) do
		assert(GetInstanceAccessInput_keys[k], "GetInstanceAccessInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetInstanceAccessInput
-- &lt;p&gt;Represents the input for a request action.&lt;/p&gt;
-- @param InstanceId [InstanceId] &lt;p&gt;Unique identifier for an instance you want to get access to. You can access an instance in any status.&lt;/p&gt;
-- @param FleetId [FleetId] &lt;p&gt;Unique identifier for a fleet that contains the instance you want access to. The fleet can be in any of the following statuses: &lt;code&gt;ACTIVATING&lt;/code&gt;, &lt;code&gt;ACTIVE&lt;/code&gt;, or &lt;code&gt;ERROR&lt;/code&gt;. Fleets with an &lt;code&gt;ERROR&lt;/code&gt; status may be accessible for a short time before they are deleted.&lt;/p&gt;
-- Required parameter: FleetId
-- Required parameter: InstanceId
function M.GetInstanceAccessInput(InstanceId, FleetId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetInstanceAccessInput")
	local t = { 
		["InstanceId"] = InstanceId,
		["FleetId"] = FleetId,
	}
	M.AssertGetInstanceAccessInput(t)
	return t
end

local InstanceCredentials_keys = { "UserName" = true, "Secret" = true, nil }

function M.AssertInstanceCredentials(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstanceCredentials to be of type 'table'")
	if struct["UserName"] then M.AssertNonEmptyString(struct["UserName"]) end
	if struct["Secret"] then M.AssertNonEmptyString(struct["Secret"]) end
	for k,_ in pairs(struct) do
		assert(InstanceCredentials_keys[k], "InstanceCredentials contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstanceCredentials
-- &lt;p&gt;Set of credentials required to remotely access a fleet instance. Access credentials are requested by calling &lt;a&gt;GetInstanceAccess&lt;/a&gt; and returned in an &lt;a&gt;InstanceAccess&lt;/a&gt; object.&lt;/p&gt;
-- @param UserName [NonEmptyString] &lt;p&gt;User login string.&lt;/p&gt;
-- @param Secret [NonEmptyString] &lt;p&gt;Secret string. For Windows instances, the secret is a password for use with Windows Remote Desktop. For Linux instances, it is a private key (which must be saved as a &lt;code&gt;.pem&lt;/code&gt; file) for use with SSH.&lt;/p&gt;
function M.InstanceCredentials(UserName, Secret, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InstanceCredentials")
	local t = { 
		["UserName"] = UserName,
		["Secret"] = Secret,
	}
	M.AssertInstanceCredentials(t)
	return t
end

local CreateFleetInput_keys = { "EC2InboundPermissions" = true, "Name" = true, "NewGameSessionProtectionPolicy" = true, "BuildId" = true, "RuntimeConfiguration" = true, "ServerLaunchPath" = true, "EC2InstanceType" = true, "ResourceCreationLimitPolicy" = true, "LogPaths" = true, "MetricGroups" = true, "ServerLaunchParameters" = true, "Description" = true, nil }

function M.AssertCreateFleetInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateFleetInput to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["BuildId"], "Expected key BuildId to exist in table")
	assert(struct["EC2InstanceType"], "Expected key EC2InstanceType to exist in table")
	if struct["EC2InboundPermissions"] then M.AssertIpPermissionsList(struct["EC2InboundPermissions"]) end
	if struct["Name"] then M.AssertNonZeroAndMaxString(struct["Name"]) end
	if struct["NewGameSessionProtectionPolicy"] then M.AssertProtectionPolicy(struct["NewGameSessionProtectionPolicy"]) end
	if struct["BuildId"] then M.AssertBuildId(struct["BuildId"]) end
	if struct["RuntimeConfiguration"] then M.AssertRuntimeConfiguration(struct["RuntimeConfiguration"]) end
	if struct["ServerLaunchPath"] then M.AssertNonZeroAndMaxString(struct["ServerLaunchPath"]) end
	if struct["EC2InstanceType"] then M.AssertEC2InstanceType(struct["EC2InstanceType"]) end
	if struct["ResourceCreationLimitPolicy"] then M.AssertResourceCreationLimitPolicy(struct["ResourceCreationLimitPolicy"]) end
	if struct["LogPaths"] then M.AssertStringList(struct["LogPaths"]) end
	if struct["MetricGroups"] then M.AssertMetricGroupList(struct["MetricGroups"]) end
	if struct["ServerLaunchParameters"] then M.AssertNonZeroAndMaxString(struct["ServerLaunchParameters"]) end
	if struct["Description"] then M.AssertNonZeroAndMaxString(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(CreateFleetInput_keys[k], "CreateFleetInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateFleetInput
-- &lt;p&gt;Represents the input for a request action.&lt;/p&gt;
-- @param EC2InboundPermissions [IpPermissionsList] &lt;p&gt;Range of IP addresses and port settings that permit inbound traffic to access server processes running on the fleet. If no inbound permissions are set, including both IP address range and port range, the server processes in the fleet cannot accept connections. You can specify one or more sets of permissions for a fleet.&lt;/p&gt;
-- @param Name [NonZeroAndMaxString] &lt;p&gt;Descriptive label that is associated with a fleet. Fleet names do not need to be unique.&lt;/p&gt;
-- @param NewGameSessionProtectionPolicy [ProtectionPolicy] &lt;p&gt;Game session protection policy to apply to all instances in this fleet. If this parameter is not set, instances in this fleet default to no protection. You can change a fleet's protection policy using UpdateFleetAttributes, but this change will only affect sessions created after the policy change. You can also set protection for individual instances using &lt;a&gt;UpdateGameSession&lt;/a&gt;.&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;NoProtection&lt;/b&gt; – The game session can be terminated during a scale-down event.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;FullProtection&lt;/b&gt; – If the game session is in an &lt;code&gt;ACTIVE&lt;/code&gt; status, it cannot be terminated during a scale-down event.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param BuildId [BuildId] &lt;p&gt;Unique identifier for a build to be deployed on the new fleet. The build must have been successfully uploaded to Amazon GameLift and be in a &lt;code&gt;READY&lt;/code&gt; status. This fleet setting cannot be changed once the fleet is created.&lt;/p&gt;
-- @param RuntimeConfiguration [RuntimeConfiguration] &lt;p&gt;Instructions for launching server processes on each instance in the fleet. The runtime configuration for a fleet has a collection of server process configurations, one for each type of server process to run on an instance. A server process configuration specifies the location of the server executable, launch parameters, and the number of concurrent processes with that configuration to maintain on each instance. A CreateFleet request must include a runtime configuration with at least one server process configuration; otherwise the request will fail with an invalid request exception. (This parameter replaces the parameters &lt;code&gt;ServerLaunchPath&lt;/code&gt; and &lt;code&gt;ServerLaunchParameters&lt;/code&gt;; requests that contain values for these parameters instead of a runtime configuration will continue to work.) &lt;/p&gt;
-- @param ServerLaunchPath [NonZeroAndMaxString] &lt;p&gt;This parameter is no longer used. Instead, specify a server launch path using the &lt;code&gt;RuntimeConfiguration&lt;/code&gt; parameter. (Requests that specify a server launch path and launch parameters instead of a runtime configuration will continue to work.)&lt;/p&gt;
-- @param EC2InstanceType [EC2InstanceType] &lt;p&gt;Name of an EC2 instance type that is supported in Amazon GameLift. A fleet instance type determines the computing resources of each instance in the fleet, including CPU, memory, storage, and networking capacity. Amazon GameLift supports the following EC2 instance types. See &lt;a href=&quot;http://aws.amazon.com/ec2/instance-types/&quot;&gt;Amazon EC2 Instance Types&lt;/a&gt; for detailed descriptions.&lt;/p&gt;
-- @param ResourceCreationLimitPolicy [ResourceCreationLimitPolicy] &lt;p&gt;Policy that limits the number of game sessions an individual player can create over a span of time for this fleet.&lt;/p&gt;
-- @param LogPaths [StringList] &lt;p&gt;This parameter is no longer used. Instead, to specify where Amazon GameLift should store log files once a server process shuts down, use the Amazon GameLift server API &lt;code&gt;ProcessReady()&lt;/code&gt; and specify one or more directory paths in &lt;code&gt;logParameters&lt;/code&gt;. See more information in the &lt;a href=&quot;http://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api-ref.html#gamelift-sdk-server-api-ref-dataypes-process&quot;&gt;Server API Reference&lt;/a&gt;. &lt;/p&gt;
-- @param MetricGroups [MetricGroupList] &lt;p&gt;Names of metric groups to add this fleet to. Use an existing metric group name to add this fleet to the group, or use a new name to create a new metric group. Currently, a fleet can only be included in one metric group at a time.&lt;/p&gt;
-- @param ServerLaunchParameters [NonZeroAndMaxString] &lt;p&gt;This parameter is no longer used. Instead, specify server launch parameters in the &lt;code&gt;RuntimeConfiguration&lt;/code&gt; parameter. (Requests that specify a server launch path and launch parameters instead of a runtime configuration will continue to work.)&lt;/p&gt;
-- @param Description [NonZeroAndMaxString] &lt;p&gt;Human-readable description of a fleet.&lt;/p&gt;
-- Required parameter: Name
-- Required parameter: BuildId
-- Required parameter: EC2InstanceType
function M.CreateFleetInput(EC2InboundPermissions, Name, NewGameSessionProtectionPolicy, BuildId, RuntimeConfiguration, ServerLaunchPath, EC2InstanceType, ResourceCreationLimitPolicy, LogPaths, MetricGroups, ServerLaunchParameters, Description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateFleetInput")
	local t = { 
		["EC2InboundPermissions"] = EC2InboundPermissions,
		["Name"] = Name,
		["NewGameSessionProtectionPolicy"] = NewGameSessionProtectionPolicy,
		["BuildId"] = BuildId,
		["RuntimeConfiguration"] = RuntimeConfiguration,
		["ServerLaunchPath"] = ServerLaunchPath,
		["EC2InstanceType"] = EC2InstanceType,
		["ResourceCreationLimitPolicy"] = ResourceCreationLimitPolicy,
		["LogPaths"] = LogPaths,
		["MetricGroups"] = MetricGroups,
		["ServerLaunchParameters"] = ServerLaunchParameters,
		["Description"] = Description,
	}
	M.AssertCreateFleetInput(t)
	return t
end

local PutScalingPolicyOutput_keys = { "Name" = true, nil }

function M.AssertPutScalingPolicyOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutScalingPolicyOutput to be of type 'table'")
	if struct["Name"] then M.AssertNonZeroAndMaxString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(PutScalingPolicyOutput_keys[k], "PutScalingPolicyOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutScalingPolicyOutput
-- &lt;p&gt;Represents the returned data in response to a request action.&lt;/p&gt;
-- @param Name [NonZeroAndMaxString] &lt;p&gt;Descriptive label that is associated with a scaling policy. Policy names do not need to be unique.&lt;/p&gt;
function M.PutScalingPolicyOutput(Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutScalingPolicyOutput")
	local t = { 
		["Name"] = Name,
	}
	M.AssertPutScalingPolicyOutput(t)
	return t
end

local UpdateFleetPortSettingsOutput_keys = { "FleetId" = true, nil }

function M.AssertUpdateFleetPortSettingsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateFleetPortSettingsOutput to be of type 'table'")
	if struct["FleetId"] then M.AssertFleetId(struct["FleetId"]) end
	for k,_ in pairs(struct) do
		assert(UpdateFleetPortSettingsOutput_keys[k], "UpdateFleetPortSettingsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateFleetPortSettingsOutput
-- &lt;p&gt;Represents the returned data in response to a request action.&lt;/p&gt;
-- @param FleetId [FleetId] &lt;p&gt;Unique identifier for a fleet that was updated.&lt;/p&gt;
function M.UpdateFleetPortSettingsOutput(FleetId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateFleetPortSettingsOutput")
	local t = { 
		["FleetId"] = FleetId,
	}
	M.AssertUpdateFleetPortSettingsOutput(t)
	return t
end

local ServerProcess_keys = { "ConcurrentExecutions" = true, "Parameters" = true, "LaunchPath" = true, nil }

function M.AssertServerProcess(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ServerProcess to be of type 'table'")
	assert(struct["LaunchPath"], "Expected key LaunchPath to exist in table")
	assert(struct["ConcurrentExecutions"], "Expected key ConcurrentExecutions to exist in table")
	if struct["ConcurrentExecutions"] then M.AssertPositiveInteger(struct["ConcurrentExecutions"]) end
	if struct["Parameters"] then M.AssertNonZeroAndMaxString(struct["Parameters"]) end
	if struct["LaunchPath"] then M.AssertNonZeroAndMaxString(struct["LaunchPath"]) end
	for k,_ in pairs(struct) do
		assert(ServerProcess_keys[k], "ServerProcess contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ServerProcess
-- &lt;p&gt;A set of instructions for launching server processes on each instance in a fleet. Each instruction set identifies the location of the server executable, optional launch parameters, and the number of server processes with this configuration to maintain concurrently on the instance. Server process configurations make up a fleet's &lt;code&gt; &lt;a&gt;RuntimeConfiguration&lt;/a&gt; &lt;/code&gt;.&lt;/p&gt;
-- @param ConcurrentExecutions [PositiveInteger] &lt;p&gt;Number of server processes using this configuration to run concurrently on an instance.&lt;/p&gt;
-- @param Parameters [NonZeroAndMaxString] &lt;p&gt;Optional list of parameters to pass to the server executable on launch.&lt;/p&gt;
-- @param LaunchPath [NonZeroAndMaxString] &lt;p&gt;Location of the server executable in a game build. All game builds are installed on instances at the root : for Windows instances &lt;code&gt;C:\game&lt;/code&gt;, and for Linux instances &lt;code&gt;/local/game&lt;/code&gt;. A Windows game build with an executable file located at &lt;code&gt;MyGame\latest\server.exe&lt;/code&gt; must have a launch path of &quot;&lt;code&gt;C:\game\MyGame\latest\server.exe&lt;/code&gt;&quot;. A Linux game build with an executable file located at &lt;code&gt;MyGame/latest/server.exe&lt;/code&gt; must have a launch path of &quot;&lt;code&gt;/local/game/MyGame/latest/server.exe&lt;/code&gt;&quot;. &lt;/p&gt;
-- Required parameter: LaunchPath
-- Required parameter: ConcurrentExecutions
function M.ServerProcess(ConcurrentExecutions, Parameters, LaunchPath, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ServerProcess")
	local t = { 
		["ConcurrentExecutions"] = ConcurrentExecutions,
		["Parameters"] = Parameters,
		["LaunchPath"] = LaunchPath,
	}
	M.AssertServerProcess(t)
	return t
end

local DesiredPlayerSession_keys = { "PlayerId" = true, "PlayerData" = true, nil }

function M.AssertDesiredPlayerSession(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DesiredPlayerSession to be of type 'table'")
	if struct["PlayerId"] then M.AssertNonZeroAndMaxString(struct["PlayerId"]) end
	if struct["PlayerData"] then M.AssertPlayerData(struct["PlayerData"]) end
	for k,_ in pairs(struct) do
		assert(DesiredPlayerSession_keys[k], "DesiredPlayerSession contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DesiredPlayerSession
-- &lt;p&gt;Player information for use when creating player sessions using a game session placement request with &lt;a&gt;StartGameSessionPlacement&lt;/a&gt;.&lt;/p&gt;
-- @param PlayerId [NonZeroAndMaxString] &lt;p&gt;Unique identifier for a player to associate with the player session.&lt;/p&gt;
-- @param PlayerData [PlayerData] &lt;p&gt;Developer-defined information related to a player. Amazon GameLift does not use this data, so it can be formatted as needed for use in the game.&lt;/p&gt;
function M.DesiredPlayerSession(PlayerId, PlayerData, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DesiredPlayerSession")
	local t = { 
		["PlayerId"] = PlayerId,
		["PlayerData"] = PlayerData,
	}
	M.AssertDesiredPlayerSession(t)
	return t
end

local DeleteScalingPolicyInput_keys = { "FleetId" = true, "Name" = true, nil }

function M.AssertDeleteScalingPolicyInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteScalingPolicyInput to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["FleetId"], "Expected key FleetId to exist in table")
	if struct["FleetId"] then M.AssertFleetId(struct["FleetId"]) end
	if struct["Name"] then M.AssertNonZeroAndMaxString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(DeleteScalingPolicyInput_keys[k], "DeleteScalingPolicyInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteScalingPolicyInput
-- &lt;p&gt;Represents the input for a request action.&lt;/p&gt;
-- @param FleetId [FleetId] &lt;p&gt;Unique identifier for a fleet to be deleted.&lt;/p&gt;
-- @param Name [NonZeroAndMaxString] &lt;p&gt;Descriptive label that is associated with a scaling policy. Policy names do not need to be unique.&lt;/p&gt;
-- Required parameter: Name
-- Required parameter: FleetId
function M.DeleteScalingPolicyInput(FleetId, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteScalingPolicyInput")
	local t = { 
		["FleetId"] = FleetId,
		["Name"] = Name,
	}
	M.AssertDeleteScalingPolicyInput(t)
	return t
end

local PutScalingPolicyInput_keys = { "EvaluationPeriods" = true, "Name" = true, "ComparisonOperator" = true, "FleetId" = true, "Threshold" = true, "ScalingAdjustment" = true, "MetricName" = true, "ScalingAdjustmentType" = true, nil }

function M.AssertPutScalingPolicyInput(struct)
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
	if struct["EvaluationPeriods"] then M.AssertPositiveInteger(struct["EvaluationPeriods"]) end
	if struct["Name"] then M.AssertNonZeroAndMaxString(struct["Name"]) end
	if struct["ComparisonOperator"] then M.AssertComparisonOperatorType(struct["ComparisonOperator"]) end
	if struct["FleetId"] then M.AssertFleetId(struct["FleetId"]) end
	if struct["Threshold"] then M.AssertDouble(struct["Threshold"]) end
	if struct["ScalingAdjustment"] then M.AssertInteger(struct["ScalingAdjustment"]) end
	if struct["MetricName"] then M.AssertMetricName(struct["MetricName"]) end
	if struct["ScalingAdjustmentType"] then M.AssertScalingAdjustmentType(struct["ScalingAdjustmentType"]) end
	for k,_ in pairs(struct) do
		assert(PutScalingPolicyInput_keys[k], "PutScalingPolicyInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutScalingPolicyInput
-- &lt;p&gt;Represents the input for a request action.&lt;/p&gt;
-- @param EvaluationPeriods [PositiveInteger] &lt;p&gt;Length of time (in minutes) the metric must be at or beyond the threshold before a scaling event is triggered.&lt;/p&gt;
-- @param Name [NonZeroAndMaxString] &lt;p&gt;Descriptive label that is associated with a scaling policy. Policy names do not need to be unique. A fleet can have only one scaling policy with the same name.&lt;/p&gt;
-- @param ComparisonOperator [ComparisonOperatorType] &lt;p&gt;Comparison operator to use when measuring the metric against the threshold value.&lt;/p&gt;
-- @param FleetId [FleetId] &lt;p&gt;Unique identifier for a fleet to apply this policy to.&lt;/p&gt;
-- @param Threshold [Double] &lt;p&gt;Metric value used to trigger a scaling event.&lt;/p&gt;
-- @param ScalingAdjustment [Integer] &lt;p&gt;Amount of adjustment to make, based on the scaling adjustment type.&lt;/p&gt;
-- @param MetricName [MetricName] &lt;p&gt;Name of the Amazon GameLift-defined metric that is used to trigger an adjustment.&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;ActivatingGameSessions&lt;/b&gt; – number of game sessions in the process of being created (game session status = &lt;code&gt;ACTIVATING&lt;/code&gt;).&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;ActiveGameSessions&lt;/b&gt; – number of game sessions currently running (game session status = &lt;code&gt;ACTIVE&lt;/code&gt;).&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;CurrentPlayerSessions&lt;/b&gt; – number of active or reserved player sessions (player session status = &lt;code&gt;ACTIVE&lt;/code&gt; or &lt;code&gt;RESERVED&lt;/code&gt;). &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;AvailablePlayerSessions&lt;/b&gt; – number of player session slots currently available in active game sessions across the fleet, calculated by subtracting a game session's current player session count from its maximum player session count. This number includes game sessions that are not currently accepting players (game session &lt;code&gt;PlayerSessionCreationPolicy&lt;/code&gt; = &lt;code&gt;DENY_ALL&lt;/code&gt;).&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;ActiveInstances&lt;/b&gt; – number of instances currently running a game session.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;IdleInstances&lt;/b&gt; – number of instances not currently running a game session.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param ScalingAdjustmentType [ScalingAdjustmentType] &lt;p&gt;Type of adjustment to make to a fleet's instance count (see &lt;a&gt;FleetCapacity&lt;/a&gt;):&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;ChangeInCapacity&lt;/b&gt; – add (or subtract) the scaling adjustment value from the current instance count. Positive values scale up while negative values scale down.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;ExactCapacity&lt;/b&gt; – set the instance count to the scaling adjustment value.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;PercentChangeInCapacity&lt;/b&gt; – increase or reduce the current instance count by the scaling adjustment, read as a percentage. Positive values scale up while negative values scale down; for example, a value of &quot;-10&quot; scales the fleet down by 10%.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- Required parameter: Name
-- Required parameter: FleetId
-- Required parameter: ScalingAdjustment
-- Required parameter: ScalingAdjustmentType
-- Required parameter: Threshold
-- Required parameter: ComparisonOperator
-- Required parameter: EvaluationPeriods
-- Required parameter: MetricName
function M.PutScalingPolicyInput(EvaluationPeriods, Name, ComparisonOperator, FleetId, Threshold, ScalingAdjustment, MetricName, ScalingAdjustmentType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutScalingPolicyInput")
	local t = { 
		["EvaluationPeriods"] = EvaluationPeriods,
		["Name"] = Name,
		["ComparisonOperator"] = ComparisonOperator,
		["FleetId"] = FleetId,
		["Threshold"] = Threshold,
		["ScalingAdjustment"] = ScalingAdjustment,
		["MetricName"] = MetricName,
		["ScalingAdjustmentType"] = ScalingAdjustmentType,
	}
	M.AssertPutScalingPolicyInput(t)
	return t
end

local UpdateGameSessionQueueInput_keys = { "Destinations" = true, "PlayerLatencyPolicies" = true, "Name" = true, "TimeoutInSeconds" = true, nil }

function M.AssertUpdateGameSessionQueueInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateGameSessionQueueInput to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Destinations"] then M.AssertGameSessionQueueDestinationList(struct["Destinations"]) end
	if struct["PlayerLatencyPolicies"] then M.AssertPlayerLatencyPolicyList(struct["PlayerLatencyPolicies"]) end
	if struct["Name"] then M.AssertGameSessionQueueName(struct["Name"]) end
	if struct["TimeoutInSeconds"] then M.AssertWholeNumber(struct["TimeoutInSeconds"]) end
	for k,_ in pairs(struct) do
		assert(UpdateGameSessionQueueInput_keys[k], "UpdateGameSessionQueueInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateGameSessionQueueInput
-- &lt;p&gt;Represents the input for a request action.&lt;/p&gt;
-- @param Destinations [GameSessionQueueDestinationList] &lt;p&gt;List of fleets that can be used to fulfill game session placement requests in the queue. Fleets are identified by either a fleet ARN or a fleet alias ARN. Destinations are listed in default preference order. When updating this list, provide a complete list of destinations.&lt;/p&gt;
-- @param PlayerLatencyPolicies [PlayerLatencyPolicyList] &lt;p&gt;Collection of latency policies to apply when processing game sessions placement requests with player latency information. Multiple policies are evaluated in order of the maximum latency value, starting with the lowest latency values. With just one policy, it is enforced at the start of the game session placement for the duration period. With multiple policies, each policy is enforced consecutively for its duration period. For example, a queue might enforce a 60-second policy followed by a 120-second policy, and then no policy for the remainder of the placement. When updating policies, provide a complete collection of policies.&lt;/p&gt;
-- @param Name [GameSessionQueueName] &lt;p&gt;Descriptive label that is associated with queue. Queue names must be unique within each region.&lt;/p&gt;
-- @param TimeoutInSeconds [WholeNumber] &lt;p&gt;Maximum time, in seconds, that a new game session placement request remains in the queue. When a request exceeds this time, the game session placement changes to a TIMED_OUT status.&lt;/p&gt;
-- Required parameter: Name
function M.UpdateGameSessionQueueInput(Destinations, PlayerLatencyPolicies, Name, TimeoutInSeconds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateGameSessionQueueInput")
	local t = { 
		["Destinations"] = Destinations,
		["PlayerLatencyPolicies"] = PlayerLatencyPolicies,
		["Name"] = Name,
		["TimeoutInSeconds"] = TimeoutInSeconds,
	}
	M.AssertUpdateGameSessionQueueInput(t)
	return t
end

local UpdateFleetAttributesOutput_keys = { "FleetId" = true, nil }

function M.AssertUpdateFleetAttributesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateFleetAttributesOutput to be of type 'table'")
	if struct["FleetId"] then M.AssertFleetId(struct["FleetId"]) end
	for k,_ in pairs(struct) do
		assert(UpdateFleetAttributesOutput_keys[k], "UpdateFleetAttributesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateFleetAttributesOutput
-- &lt;p&gt;Represents the returned data in response to a request action.&lt;/p&gt;
-- @param FleetId [FleetId] &lt;p&gt;Unique identifier for a fleet that was updated.&lt;/p&gt;
function M.UpdateFleetAttributesOutput(FleetId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateFleetAttributesOutput")
	local t = { 
		["FleetId"] = FleetId,
	}
	M.AssertUpdateFleetAttributesOutput(t)
	return t
end

local UpdateBuildInput_keys = { "BuildId" = true, "Version" = true, "Name" = true, nil }

function M.AssertUpdateBuildInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateBuildInput to be of type 'table'")
	assert(struct["BuildId"], "Expected key BuildId to exist in table")
	if struct["BuildId"] then M.AssertBuildId(struct["BuildId"]) end
	if struct["Version"] then M.AssertNonZeroAndMaxString(struct["Version"]) end
	if struct["Name"] then M.AssertNonZeroAndMaxString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(UpdateBuildInput_keys[k], "UpdateBuildInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateBuildInput
-- &lt;p&gt;Represents the input for a request action.&lt;/p&gt;
-- @param BuildId [BuildId] &lt;p&gt;Unique identifier for a build to update.&lt;/p&gt;
-- @param Version [NonZeroAndMaxString] &lt;p&gt;Version that is associated with this build. Version strings do not need to be unique.&lt;/p&gt;
-- @param Name [NonZeroAndMaxString] &lt;p&gt;Descriptive label that is associated with a build. Build names do not need to be unique. &lt;/p&gt;
-- Required parameter: BuildId
function M.UpdateBuildInput(BuildId, Version, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateBuildInput")
	local t = { 
		["BuildId"] = BuildId,
		["Version"] = Version,
		["Name"] = Name,
	}
	M.AssertUpdateBuildInput(t)
	return t
end

function M.AssertNonBlankString(str)
	assert(str)
	assert(type(str) == "string", "Expected NonBlankString to be of type 'string'")
	assert(str:match("[^%s]+"), "Expected string to match pattern '[^%s]+'")
end

--  
function M.NonBlankString(str)
	M.AssertNonBlankString(str)
	return str
end

function M.AssertFreeText(str)
	assert(str)
	assert(type(str) == "string", "Expected FreeText to be of type 'string'")
end

--  
function M.FreeText(str)
	M.AssertFreeText(str)
	return str
end

function M.AssertProtectionPolicy(str)
	assert(str)
	assert(type(str) == "string", "Expected ProtectionPolicy to be of type 'string'")
end

--  
function M.ProtectionPolicy(str)
	M.AssertProtectionPolicy(str)
	return str
end

function M.AssertGameSessionQueueName(str)
	assert(str)
	assert(type(str) == "string", "Expected GameSessionQueueName to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[a-zA-Z0-9-]+"), "Expected string to match pattern '[a-zA-Z0-9-]+'")
end

--  
function M.GameSessionQueueName(str)
	M.AssertGameSessionQueueName(str)
	return str
end

function M.AssertPlayerSessionCreationPolicy(str)
	assert(str)
	assert(type(str) == "string", "Expected PlayerSessionCreationPolicy to be of type 'string'")
end

--  
function M.PlayerSessionCreationPolicy(str)
	M.AssertPlayerSessionCreationPolicy(str)
	return str
end

function M.AssertRoutingStrategyType(str)
	assert(str)
	assert(type(str) == "string", "Expected RoutingStrategyType to be of type 'string'")
end

--  
function M.RoutingStrategyType(str)
	M.AssertRoutingStrategyType(str)
	return str
end

function M.AssertMetricGroup(str)
	assert(str)
	assert(type(str) == "string", "Expected MetricGroup to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.MetricGroup(str)
	M.AssertMetricGroup(str)
	return str
end

function M.AssertBuildId(str)
	assert(str)
	assert(type(str) == "string", "Expected BuildId to be of type 'string'")
	assert(str:match("^build-%S+"), "Expected string to match pattern '^build-%S+'")
end

--  
function M.BuildId(str)
	M.AssertBuildId(str)
	return str
end

function M.AssertEC2InstanceType(str)
	assert(str)
	assert(type(str) == "string", "Expected EC2InstanceType to be of type 'string'")
end

--  
function M.EC2InstanceType(str)
	M.AssertEC2InstanceType(str)
	return str
end

function M.AssertPlayerData(str)
	assert(str)
	assert(type(str) == "string", "Expected PlayerData to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.PlayerData(str)
	M.AssertPlayerData(str)
	return str
end

function M.AssertIpProtocol(str)
	assert(str)
	assert(type(str) == "string", "Expected IpProtocol to be of type 'string'")
end

--  
function M.IpProtocol(str)
	M.AssertIpProtocol(str)
	return str
end

function M.AssertNonEmptyString(str)
	assert(str)
	assert(type(str) == "string", "Expected NonEmptyString to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.NonEmptyString(str)
	M.AssertNonEmptyString(str)
	return str
end

function M.AssertMetricName(str)
	assert(str)
	assert(type(str) == "string", "Expected MetricName to be of type 'string'")
end

--  
function M.MetricName(str)
	M.AssertMetricName(str)
	return str
end

function M.AssertEventCode(str)
	assert(str)
	assert(type(str) == "string", "Expected EventCode to be of type 'string'")
end

--  
function M.EventCode(str)
	M.AssertEventCode(str)
	return str
end

function M.AssertIdStringModel(str)
	assert(str)
	assert(type(str) == "string", "Expected IdStringModel to be of type 'string'")
	assert(#str <= 48, "Expected string to be max 48 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[a-zA-Z0-9-]+"), "Expected string to match pattern '[a-zA-Z0-9-]+'")
end

--  
function M.IdStringModel(str)
	M.AssertIdStringModel(str)
	return str
end

function M.AssertFleetStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected FleetStatus to be of type 'string'")
end

--  
function M.FleetStatus(str)
	M.AssertFleetStatus(str)
	return str
end

function M.AssertNonZeroAndMaxString(str)
	assert(str)
	assert(type(str) == "string", "Expected NonZeroAndMaxString to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.NonZeroAndMaxString(str)
	M.AssertNonZeroAndMaxString(str)
	return str
end

function M.AssertPlayerSessionStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected PlayerSessionStatus to be of type 'string'")
end

--  
function M.PlayerSessionStatus(str)
	M.AssertPlayerSessionStatus(str)
	return str
end

function M.AssertGamePropertyKey(str)
	assert(str)
	assert(type(str) == "string", "Expected GamePropertyKey to be of type 'string'")
	assert(#str <= 32, "Expected string to be max 32 characters")
end

--  
function M.GamePropertyKey(str)
	M.AssertGamePropertyKey(str)
	return str
end

function M.AssertGameSessionStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected GameSessionStatus to be of type 'string'")
end

--  
function M.GameSessionStatus(str)
	M.AssertGameSessionStatus(str)
	return str
end

function M.AssertFleetId(str)
	assert(str)
	assert(type(str) == "string", "Expected FleetId to be of type 'string'")
	assert(str:match("^fleet-%S+"), "Expected string to match pattern '^fleet-%S+'")
end

--  
function M.FleetId(str)
	M.AssertFleetId(str)
	return str
end

function M.AssertScalingAdjustmentType(str)
	assert(str)
	assert(type(str) == "string", "Expected ScalingAdjustmentType to be of type 'string'")
end

--  
function M.ScalingAdjustmentType(str)
	M.AssertScalingAdjustmentType(str)
	return str
end

function M.AssertInstanceStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected InstanceStatus to be of type 'string'")
end

--  
function M.InstanceStatus(str)
	M.AssertInstanceStatus(str)
	return str
end

function M.AssertScalingStatusType(str)
	assert(str)
	assert(type(str) == "string", "Expected ScalingStatusType to be of type 'string'")
end

--  
function M.ScalingStatusType(str)
	M.AssertScalingStatusType(str)
	return str
end

function M.AssertArnStringModel(str)
	assert(str)
	assert(type(str) == "string", "Expected ArnStringModel to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[a-zA-Z0-9:/-]+"), "Expected string to match pattern '[a-zA-Z0-9:/-]+'")
end

--  
function M.ArnStringModel(str)
	M.AssertArnStringModel(str)
	return str
end

function M.AssertComparisonOperatorType(str)
	assert(str)
	assert(type(str) == "string", "Expected ComparisonOperatorType to be of type 'string'")
end

--  
function M.ComparisonOperatorType(str)
	M.AssertComparisonOperatorType(str)
	return str
end

function M.AssertBuildStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected BuildStatus to be of type 'string'")
end

--  
function M.BuildStatus(str)
	M.AssertBuildStatus(str)
	return str
end

function M.AssertInstanceId(str)
	assert(str)
	assert(type(str) == "string", "Expected InstanceId to be of type 'string'")
	assert(str:match("[a-zA-Z0-9%.-]+"), "Expected string to match pattern '[a-zA-Z0-9%.-]+'")
end

--  
function M.InstanceId(str)
	M.AssertInstanceId(str)
	return str
end

function M.AssertIpAddress(str)
	assert(str)
	assert(type(str) == "string", "Expected IpAddress to be of type 'string'")
end

--  
function M.IpAddress(str)
	M.AssertIpAddress(str)
	return str
end

function M.AssertOperatingSystem(str)
	assert(str)
	assert(type(str) == "string", "Expected OperatingSystem to be of type 'string'")
end

--  
function M.OperatingSystem(str)
	M.AssertOperatingSystem(str)
	return str
end

function M.AssertAliasId(str)
	assert(str)
	assert(type(str) == "string", "Expected AliasId to be of type 'string'")
	assert(str:match("^alias-%S+"), "Expected string to match pattern '^alias-%S+'")
end

--  
function M.AliasId(str)
	M.AssertAliasId(str)
	return str
end

function M.AssertNonBlankAndLengthConstraintString(str)
	assert(str)
	assert(type(str) == "string", "Expected NonBlankAndLengthConstraintString to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match(".*%S.*"), "Expected string to match pattern '.*%S.*'")
end

--  
function M.NonBlankAndLengthConstraintString(str)
	M.AssertNonBlankAndLengthConstraintString(str)
	return str
end

function M.AssertGameSessionPlacementState(str)
	assert(str)
	assert(type(str) == "string", "Expected GameSessionPlacementState to be of type 'string'")
end

--  
function M.GameSessionPlacementState(str)
	M.AssertGameSessionPlacementState(str)
	return str
end

function M.AssertGamePropertyValue(str)
	assert(str)
	assert(type(str) == "string", "Expected GamePropertyValue to be of type 'string'")
	assert(#str <= 96, "Expected string to be max 96 characters")
end

--  
function M.GamePropertyValue(str)
	M.AssertGamePropertyValue(str)
	return str
end

function M.AssertPlayerSessionId(str)
	assert(str)
	assert(type(str) == "string", "Expected PlayerSessionId to be of type 'string'")
	assert(str:match("^psess-%S+"), "Expected string to match pattern '^psess-%S+'")
end

--  
function M.PlayerSessionId(str)
	M.AssertPlayerSessionId(str)
	return str
end

function M.AssertFloat(float)
	assert(float)
	assert(type(float) == "number", "Expected Float to be of type 'number'")
end

function M.Float(float)
	M.AssertFloat(float)
	return float
end

function M.AssertDouble(double)
	assert(double)
	assert(type(double) == "number", "Expected Double to be of type 'number'")
end

function M.Double(double)
	M.AssertDouble(double)
	return double
end

function M.AssertPositiveLong(long)
	assert(long)
	assert(type(long) == "number", "Expected PositiveLong to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.PositiveLong(long)
	M.AssertPositiveLong(long)
	return long
end

function M.AssertPortNumber(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected PortNumber to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 60000, "Expected integer to be max 60000")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.PortNumber(integer)
	M.AssertPortNumber(integer)
	return integer
end

function M.AssertGameSessionActivationTimeoutSeconds(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected GameSessionActivationTimeoutSeconds to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 600, "Expected integer to be max 600")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.GameSessionActivationTimeoutSeconds(integer)
	M.AssertGameSessionActivationTimeoutSeconds(integer)
	return integer
end

function M.AssertWholeNumber(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected WholeNumber to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.WholeNumber(integer)
	M.AssertWholeNumber(integer)
	return integer
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

function M.AssertMaxConcurrentGameSessionActivations(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxConcurrentGameSessionActivations to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 2147483647, "Expected integer to be max 2147483647")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.MaxConcurrentGameSessionActivations(integer)
	M.AssertMaxConcurrentGameSessionActivations(integer)
	return integer
end

function M.AssertPositiveInteger(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected PositiveInteger to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.PositiveInteger(integer)
	M.AssertPositiveInteger(integer)
	return integer
end

function M.AssertPlayerDataMap(map)
	assert(map)
	assert(type(map) == "table", "Expected PlayerDataMap to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertNonZeroAndMaxString(k)
		M.AssertPlayerData(v)
	end
end

function M.PlayerDataMap(map)
	M.AssertPlayerDataMap(map)
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

function M.AssertGamePropertyList(list)
	assert(list)
	assert(type(list) == "table", "Expected GamePropertyList to be of type ''table")
	assert(#list <= 16, "Expected list to be contain 16 elements")
	for _,v in ipairs(list) do
		M.AssertGameProperty(v)
	end
end

--  
-- List of GameProperty objects
function M.GamePropertyList(list)
	M.AssertGamePropertyList(list)
	return list
end

function M.AssertFleetIdList(list)
	assert(list)
	assert(type(list) == "table", "Expected FleetIdList to be of type ''table")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AssertFleetId(v)
	end
end

--  
-- List of FleetId objects
function M.FleetIdList(list)
	M.AssertFleetIdList(list)
	return list
end

function M.AssertIpPermissionsList(list)
	assert(list)
	assert(type(list) == "table", "Expected IpPermissionsList to be of type ''table")
	assert(#list <= 50, "Expected list to be contain 50 elements")
	for _,v in ipairs(list) do
		M.AssertIpPermission(v)
	end
end

--  
-- List of IpPermission objects
function M.IpPermissionsList(list)
	M.AssertIpPermissionsList(list)
	return list
end

function M.AssertFleetUtilizationList(list)
	assert(list)
	assert(type(list) == "table", "Expected FleetUtilizationList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertFleetUtilization(v)
	end
end

--  
-- List of FleetUtilization objects
function M.FleetUtilizationList(list)
	M.AssertFleetUtilizationList(list)
	return list
end

function M.AssertPlayerLatencyPolicyList(list)
	assert(list)
	assert(type(list) == "table", "Expected PlayerLatencyPolicyList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertPlayerLatencyPolicy(v)
	end
end

--  
-- List of PlayerLatencyPolicy objects
function M.PlayerLatencyPolicyList(list)
	M.AssertPlayerLatencyPolicyList(list)
	return list
end

function M.AssertAliasList(list)
	assert(list)
	assert(type(list) == "table", "Expected AliasList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertAlias(v)
	end
end

--  
-- List of Alias objects
function M.AliasList(list)
	M.AssertAliasList(list)
	return list
end

function M.AssertPlacedPlayerSessionList(list)
	assert(list)
	assert(type(list) == "table", "Expected PlacedPlayerSessionList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertPlacedPlayerSession(v)
	end
end

--  
-- List of PlacedPlayerSession objects
function M.PlacedPlayerSessionList(list)
	M.AssertPlacedPlayerSessionList(list)
	return list
end

function M.AssertFleetCapacityList(list)
	assert(list)
	assert(type(list) == "table", "Expected FleetCapacityList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertFleetCapacity(v)
	end
end

--  
-- List of FleetCapacity objects
function M.FleetCapacityList(list)
	M.AssertFleetCapacityList(list)
	return list
end

function M.AssertInstanceList(list)
	assert(list)
	assert(type(list) == "table", "Expected InstanceList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertInstance(v)
	end
end

--  
-- List of Instance objects
function M.InstanceList(list)
	M.AssertInstanceList(list)
	return list
end

function M.AssertStringList(list)
	assert(list)
	assert(type(list) == "table", "Expected StringList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertNonZeroAndMaxString(v)
	end
end

--  
-- List of NonZeroAndMaxString objects
function M.StringList(list)
	M.AssertStringList(list)
	return list
end

function M.AssertPlayerLatencyList(list)
	assert(list)
	assert(type(list) == "table", "Expected PlayerLatencyList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertPlayerLatency(v)
	end
end

--  
-- List of PlayerLatency objects
function M.PlayerLatencyList(list)
	M.AssertPlayerLatencyList(list)
	return list
end

function M.AssertGameSessionQueueNameList(list)
	assert(list)
	assert(type(list) == "table", "Expected GameSessionQueueNameList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertGameSessionQueueName(v)
	end
end

--  
-- List of GameSessionQueueName objects
function M.GameSessionQueueNameList(list)
	M.AssertGameSessionQueueNameList(list)
	return list
end

function M.AssertEventList(list)
	assert(list)
	assert(type(list) == "table", "Expected EventList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertEvent(v)
	end
end

--  
-- List of Event objects
function M.EventList(list)
	M.AssertEventList(list)
	return list
end

function M.AssertGameSessionList(list)
	assert(list)
	assert(type(list) == "table", "Expected GameSessionList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertGameSession(v)
	end
end

--  
-- List of GameSession objects
function M.GameSessionList(list)
	M.AssertGameSessionList(list)
	return list
end

function M.AssertScalingPolicyList(list)
	assert(list)
	assert(type(list) == "table", "Expected ScalingPolicyList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertScalingPolicy(v)
	end
end

--  
-- List of ScalingPolicy objects
function M.ScalingPolicyList(list)
	M.AssertScalingPolicyList(list)
	return list
end

function M.AssertDesiredPlayerSessionList(list)
	assert(list)
	assert(type(list) == "table", "Expected DesiredPlayerSessionList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertDesiredPlayerSession(v)
	end
end

--  
-- List of DesiredPlayerSession objects
function M.DesiredPlayerSessionList(list)
	M.AssertDesiredPlayerSessionList(list)
	return list
end

function M.AssertMetricGroupList(list)
	assert(list)
	assert(type(list) == "table", "Expected MetricGroupList to be of type ''table")
	assert(#list <= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AssertMetricGroup(v)
	end
end

--  
-- List of MetricGroup objects
function M.MetricGroupList(list)
	M.AssertMetricGroupList(list)
	return list
end

function M.AssertServerProcessList(list)
	assert(list)
	assert(type(list) == "table", "Expected ServerProcessList to be of type ''table")
	assert(#list <= 50, "Expected list to be contain 50 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AssertServerProcess(v)
	end
end

--  
-- List of ServerProcess objects
function M.ServerProcessList(list)
	M.AssertServerProcessList(list)
	return list
end

function M.AssertBuildList(list)
	assert(list)
	assert(type(list) == "table", "Expected BuildList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertBuild(v)
	end
end

--  
-- List of Build objects
function M.BuildList(list)
	M.AssertBuildList(list)
	return list
end

function M.AssertGameSessionQueueDestinationList(list)
	assert(list)
	assert(type(list) == "table", "Expected GameSessionQueueDestinationList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertGameSessionQueueDestination(v)
	end
end

--  
-- List of GameSessionQueueDestination objects
function M.GameSessionQueueDestinationList(list)
	M.AssertGameSessionQueueDestinationList(list)
	return list
end

function M.AssertGameSessionDetailList(list)
	assert(list)
	assert(type(list) == "table", "Expected GameSessionDetailList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertGameSessionDetail(v)
	end
end

--  
-- List of GameSessionDetail objects
function M.GameSessionDetailList(list)
	M.AssertGameSessionDetailList(list)
	return list
end

function M.AssertGameSessionQueueList(list)
	assert(list)
	assert(type(list) == "table", "Expected GameSessionQueueList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertGameSessionQueue(v)
	end
end

--  
-- List of GameSessionQueue objects
function M.GameSessionQueueList(list)
	M.AssertGameSessionQueueList(list)
	return list
end

function M.AssertPlayerIdList(list)
	assert(list)
	assert(type(list) == "table", "Expected PlayerIdList to be of type ''table")
	assert(#list <= 25, "Expected list to be contain 25 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AssertNonZeroAndMaxString(v)
	end
end

--  
-- List of NonZeroAndMaxString objects
function M.PlayerIdList(list)
	M.AssertPlayerIdList(list)
	return list
end

function M.AssertPlayerSessionList(list)
	assert(list)
	assert(type(list) == "table", "Expected PlayerSessionList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertPlayerSession(v)
	end
end

--  
-- List of PlayerSession objects
function M.PlayerSessionList(list)
	M.AssertPlayerSessionList(list)
	return list
end

function M.AssertEC2InstanceLimitList(list)
	assert(list)
	assert(type(list) == "table", "Expected EC2InstanceLimitList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertEC2InstanceLimit(v)
	end
end

--  
-- List of EC2InstanceLimit objects
function M.EC2InstanceLimitList(list)
	M.AssertEC2InstanceLimitList(list)
	return list
end

function M.AssertFleetAttributesList(list)
	assert(list)
	assert(type(list) == "table", "Expected FleetAttributesList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertFleetAttributes(v)
	end
end

--  
-- List of FleetAttributes objects
function M.FleetAttributesList(list)
	M.AssertFleetAttributesList(list)
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
	uri = scheme_mapper.from_string(config.scheme) .. "://"
	uri = uri .. config.endpoint_override or endpoint_for_region(config.region, config.use_dualstack)
end


--
-- OPERATIONS
--
--- RequestUploadCredentials
-- @param RequestUploadCredentialsInput
-- @param cb Callback function accepting two args: response, error_message
function M.RequestUploadCredentialsAsync(RequestUploadCredentialsInput, cb)
	assert(RequestUploadCredentialsInput, "You must provide a RequestUploadCredentialsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "GameLift.RequestUploadCredentials",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", RequestUploadCredentialsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateRuntimeConfiguration
-- @param UpdateRuntimeConfigurationInput
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateRuntimeConfigurationAsync(UpdateRuntimeConfigurationInput, cb)
	assert(UpdateRuntimeConfigurationInput, "You must provide a UpdateRuntimeConfigurationInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "GameLift.UpdateRuntimeConfiguration",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateRuntimeConfigurationInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteFleet
-- @param DeleteFleetInput
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteFleetAsync(DeleteFleetInput, cb)
	assert(DeleteFleetInput, "You must provide a DeleteFleetInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "GameLift.DeleteFleet",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteFleetInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateFleetCapacity
-- @param UpdateFleetCapacityInput
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateFleetCapacityAsync(UpdateFleetCapacityInput, cb)
	assert(UpdateFleetCapacityInput, "You must provide a UpdateFleetCapacityInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "GameLift.UpdateFleetCapacity",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateFleetCapacityInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeRuntimeConfiguration
-- @param DescribeRuntimeConfigurationInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeRuntimeConfigurationAsync(DescribeRuntimeConfigurationInput, cb)
	assert(DescribeRuntimeConfigurationInput, "You must provide a DescribeRuntimeConfigurationInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "GameLift.DescribeRuntimeConfiguration",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeRuntimeConfigurationInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeGameSessions
-- @param DescribeGameSessionsInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeGameSessionsAsync(DescribeGameSessionsInput, cb)
	assert(DescribeGameSessionsInput, "You must provide a DescribeGameSessionsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "GameLift.DescribeGameSessions",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeGameSessionsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- SearchGameSessions
-- @param SearchGameSessionsInput
-- @param cb Callback function accepting two args: response, error_message
function M.SearchGameSessionsAsync(SearchGameSessionsInput, cb)
	assert(SearchGameSessionsInput, "You must provide a SearchGameSessionsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "GameLift.SearchGameSessions",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", SearchGameSessionsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreatePlayerSessions
-- @param CreatePlayerSessionsInput
-- @param cb Callback function accepting two args: response, error_message
function M.CreatePlayerSessionsAsync(CreatePlayerSessionsInput, cb)
	assert(CreatePlayerSessionsInput, "You must provide a CreatePlayerSessionsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "GameLift.CreatePlayerSessions",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreatePlayerSessionsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateFleetPortSettings
-- @param UpdateFleetPortSettingsInput
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateFleetPortSettingsAsync(UpdateFleetPortSettingsInput, cb)
	assert(UpdateFleetPortSettingsInput, "You must provide a UpdateFleetPortSettingsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "GameLift.UpdateFleetPortSettings",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateFleetPortSettingsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListFleets
-- @param ListFleetsInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListFleetsAsync(ListFleetsInput, cb)
	assert(ListFleetsInput, "You must provide a ListFleetsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "GameLift.ListFleets",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListFleetsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateGameSession
-- @param UpdateGameSessionInput
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateGameSessionAsync(UpdateGameSessionInput, cb)
	assert(UpdateGameSessionInput, "You must provide a UpdateGameSessionInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "GameLift.UpdateGameSession",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateGameSessionInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateGameSession
-- @param CreateGameSessionInput
-- @param cb Callback function accepting two args: response, error_message
function M.CreateGameSessionAsync(CreateGameSessionInput, cb)
	assert(CreateGameSessionInput, "You must provide a CreateGameSessionInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "GameLift.CreateGameSession",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateGameSessionInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeFleetCapacity
-- @param DescribeFleetCapacityInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeFleetCapacityAsync(DescribeFleetCapacityInput, cb)
	assert(DescribeFleetCapacityInput, "You must provide a DescribeFleetCapacityInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "GameLift.DescribeFleetCapacity",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeFleetCapacityInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListAliases
-- @param ListAliasesInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListAliasesAsync(ListAliasesInput, cb)
	assert(ListAliasesInput, "You must provide a ListAliasesInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "GameLift.ListAliases",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListAliasesInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateBuild
-- @param UpdateBuildInput
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateBuildAsync(UpdateBuildInput, cb)
	assert(UpdateBuildInput, "You must provide a UpdateBuildInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "GameLift.UpdateBuild",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateBuildInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteBuild
-- @param DeleteBuildInput
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteBuildAsync(DeleteBuildInput, cb)
	assert(DeleteBuildInput, "You must provide a DeleteBuildInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "GameLift.DeleteBuild",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteBuildInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- PutScalingPolicy
-- @param PutScalingPolicyInput
-- @param cb Callback function accepting two args: response, error_message
function M.PutScalingPolicyAsync(PutScalingPolicyInput, cb)
	assert(PutScalingPolicyInput, "You must provide a PutScalingPolicyInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "GameLift.PutScalingPolicy",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", PutScalingPolicyInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeScalingPolicies
-- @param DescribeScalingPoliciesInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeScalingPoliciesAsync(DescribeScalingPoliciesInput, cb)
	assert(DescribeScalingPoliciesInput, "You must provide a DescribeScalingPoliciesInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "GameLift.DescribeScalingPolicies",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeScalingPoliciesInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeInstances
-- @param DescribeInstancesInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeInstancesAsync(DescribeInstancesInput, cb)
	assert(DescribeInstancesInput, "You must provide a DescribeInstancesInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "GameLift.DescribeInstances",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeInstancesInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateBuild
-- @param CreateBuildInput
-- @param cb Callback function accepting two args: response, error_message
function M.CreateBuildAsync(CreateBuildInput, cb)
	assert(CreateBuildInput, "You must provide a CreateBuildInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "GameLift.CreateBuild",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateBuildInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteGameSessionQueue
-- @param DeleteGameSessionQueueInput
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteGameSessionQueueAsync(DeleteGameSessionQueueInput, cb)
	assert(DeleteGameSessionQueueInput, "You must provide a DeleteGameSessionQueueInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "GameLift.DeleteGameSessionQueue",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteGameSessionQueueInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreatePlayerSession
-- @param CreatePlayerSessionInput
-- @param cb Callback function accepting two args: response, error_message
function M.CreatePlayerSessionAsync(CreatePlayerSessionInput, cb)
	assert(CreatePlayerSessionInput, "You must provide a CreatePlayerSessionInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "GameLift.CreatePlayerSession",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreatePlayerSessionInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateFleetAttributes
-- @param UpdateFleetAttributesInput
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateFleetAttributesAsync(UpdateFleetAttributesInput, cb)
	assert(UpdateFleetAttributesInput, "You must provide a UpdateFleetAttributesInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "GameLift.UpdateFleetAttributes",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateFleetAttributesInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteAlias
-- @param DeleteAliasInput
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteAliasAsync(DeleteAliasInput, cb)
	assert(DeleteAliasInput, "You must provide a DeleteAliasInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "GameLift.DeleteAlias",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteAliasInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeFleetPortSettings
-- @param DescribeFleetPortSettingsInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeFleetPortSettingsAsync(DescribeFleetPortSettingsInput, cb)
	assert(DescribeFleetPortSettingsInput, "You must provide a DescribeFleetPortSettingsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "GameLift.DescribeFleetPortSettings",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeFleetPortSettingsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribePlayerSessions
-- @param DescribePlayerSessionsInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribePlayerSessionsAsync(DescribePlayerSessionsInput, cb)
	assert(DescribePlayerSessionsInput, "You must provide a DescribePlayerSessionsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "GameLift.DescribePlayerSessions",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribePlayerSessionsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteScalingPolicy
-- @param DeleteScalingPolicyInput
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteScalingPolicyAsync(DeleteScalingPolicyInput, cb)
	assert(DeleteScalingPolicyInput, "You must provide a DeleteScalingPolicyInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "GameLift.DeleteScalingPolicy",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteScalingPolicyInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeGameSessionQueues
-- @param DescribeGameSessionQueuesInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeGameSessionQueuesAsync(DescribeGameSessionQueuesInput, cb)
	assert(DescribeGameSessionQueuesInput, "You must provide a DescribeGameSessionQueuesInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "GameLift.DescribeGameSessionQueues",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeGameSessionQueuesInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateAlias
-- @param CreateAliasInput
-- @param cb Callback function accepting two args: response, error_message
function M.CreateAliasAsync(CreateAliasInput, cb)
	assert(CreateAliasInput, "You must provide a CreateAliasInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "GameLift.CreateAlias",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateAliasInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateAlias
-- @param UpdateAliasInput
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateAliasAsync(UpdateAliasInput, cb)
	assert(UpdateAliasInput, "You must provide a UpdateAliasInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "GameLift.UpdateAlias",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateAliasInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateFleet
-- @param CreateFleetInput
-- @param cb Callback function accepting two args: response, error_message
function M.CreateFleetAsync(CreateFleetInput, cb)
	assert(CreateFleetInput, "You must provide a CreateFleetInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "GameLift.CreateFleet",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateFleetInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeGameSessionPlacement
-- @param DescribeGameSessionPlacementInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeGameSessionPlacementAsync(DescribeGameSessionPlacementInput, cb)
	assert(DescribeGameSessionPlacementInput, "You must provide a DescribeGameSessionPlacementInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "GameLift.DescribeGameSessionPlacement",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeGameSessionPlacementInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetInstanceAccess
-- @param GetInstanceAccessInput
-- @param cb Callback function accepting two args: response, error_message
function M.GetInstanceAccessAsync(GetInstanceAccessInput, cb)
	assert(GetInstanceAccessInput, "You must provide a GetInstanceAccessInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "GameLift.GetInstanceAccess",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetInstanceAccessInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListBuilds
-- @param ListBuildsInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListBuildsAsync(ListBuildsInput, cb)
	assert(ListBuildsInput, "You must provide a ListBuildsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "GameLift.ListBuilds",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListBuildsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeFleetAttributes
-- @param DescribeFleetAttributesInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeFleetAttributesAsync(DescribeFleetAttributesInput, cb)
	assert(DescribeFleetAttributesInput, "You must provide a DescribeFleetAttributesInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "GameLift.DescribeFleetAttributes",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeFleetAttributesInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ResolveAlias
-- @param ResolveAliasInput
-- @param cb Callback function accepting two args: response, error_message
function M.ResolveAliasAsync(ResolveAliasInput, cb)
	assert(ResolveAliasInput, "You must provide a ResolveAliasInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "GameLift.ResolveAlias",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ResolveAliasInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeGameSessionDetails
-- @param DescribeGameSessionDetailsInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeGameSessionDetailsAsync(DescribeGameSessionDetailsInput, cb)
	assert(DescribeGameSessionDetailsInput, "You must provide a DescribeGameSessionDetailsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "GameLift.DescribeGameSessionDetails",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeGameSessionDetailsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- StopGameSessionPlacement
-- @param StopGameSessionPlacementInput
-- @param cb Callback function accepting two args: response, error_message
function M.StopGameSessionPlacementAsync(StopGameSessionPlacementInput, cb)
	assert(StopGameSessionPlacementInput, "You must provide a StopGameSessionPlacementInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "GameLift.StopGameSessionPlacement",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", StopGameSessionPlacementInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateGameSessionQueue
-- @param CreateGameSessionQueueInput
-- @param cb Callback function accepting two args: response, error_message
function M.CreateGameSessionQueueAsync(CreateGameSessionQueueInput, cb)
	assert(CreateGameSessionQueueInput, "You must provide a CreateGameSessionQueueInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "GameLift.CreateGameSessionQueue",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateGameSessionQueueInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeAlias
-- @param DescribeAliasInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeAliasAsync(DescribeAliasInput, cb)
	assert(DescribeAliasInput, "You must provide a DescribeAliasInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "GameLift.DescribeAlias",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeAliasInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- StartGameSessionPlacement
-- @param StartGameSessionPlacementInput
-- @param cb Callback function accepting two args: response, error_message
function M.StartGameSessionPlacementAsync(StartGameSessionPlacementInput, cb)
	assert(StartGameSessionPlacementInput, "You must provide a StartGameSessionPlacementInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "GameLift.StartGameSessionPlacement",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", StartGameSessionPlacementInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeEC2InstanceLimits
-- @param DescribeEC2InstanceLimitsInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeEC2InstanceLimitsAsync(DescribeEC2InstanceLimitsInput, cb)
	assert(DescribeEC2InstanceLimitsInput, "You must provide a DescribeEC2InstanceLimitsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "GameLift.DescribeEC2InstanceLimits",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeEC2InstanceLimitsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateGameSessionQueue
-- @param UpdateGameSessionQueueInput
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateGameSessionQueueAsync(UpdateGameSessionQueueInput, cb)
	assert(UpdateGameSessionQueueInput, "You must provide a UpdateGameSessionQueueInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "GameLift.UpdateGameSessionQueue",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateGameSessionQueueInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetGameSessionLogUrl
-- @param GetGameSessionLogUrlInput
-- @param cb Callback function accepting two args: response, error_message
function M.GetGameSessionLogUrlAsync(GetGameSessionLogUrlInput, cb)
	assert(GetGameSessionLogUrlInput, "You must provide a GetGameSessionLogUrlInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "GameLift.GetGameSessionLogUrl",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetGameSessionLogUrlInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeBuild
-- @param DescribeBuildInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeBuildAsync(DescribeBuildInput, cb)
	assert(DescribeBuildInput, "You must provide a DescribeBuildInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "GameLift.DescribeBuild",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeBuildInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeFleetEvents
-- @param DescribeFleetEventsInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeFleetEventsAsync(DescribeFleetEventsInput, cb)
	assert(DescribeFleetEventsInput, "You must provide a DescribeFleetEventsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "GameLift.DescribeFleetEvents",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeFleetEventsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeFleetUtilization
-- @param DescribeFleetUtilizationInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeFleetUtilizationAsync(DescribeFleetUtilizationInput, cb)
	assert(DescribeFleetUtilizationInput, "You must provide a DescribeFleetUtilizationInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "GameLift.DescribeFleetUtilization",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeFleetUtilizationInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end


return M
