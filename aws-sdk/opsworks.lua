--- GENERATED CODE - DO NOT MODIFY
-- AWS OpsWorks (opsworks-2013-02-18)

local M = {}

M.metadata = {
	api_version = "2013-02-18",
	json_version = "1.1",
	protocol = "json",
	checksum_format = "",
	endpoint_prefix = "opsworks",
	service_abbreviation = "",
	service_full_name = "AWS OpsWorks",
	signature_version = "v4",
	target_prefix = "OpsWorks_20130218",
	timestamp_format = "",
	global_endpoint = "",
	uid = "opsworks-2013-02-18",
}

local DeregisterInstanceRequest_keys = { "InstanceId" = true, nil }

function M.AssertDeregisterInstanceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeregisterInstanceRequest to be of type 'table'")
	assert(struct["InstanceId"], "Expected key InstanceId to exist in table")
	if struct["InstanceId"] then M.AssertString(struct["InstanceId"]) end
	for k,_ in pairs(struct) do
		assert(DeregisterInstanceRequest_keys[k], "DeregisterInstanceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeregisterInstanceRequest
--  
-- @param InstanceId [String] <p>The instance ID.</p>
-- Required parameter: InstanceId
function M.DeregisterInstanceRequest(InstanceId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeregisterInstanceRequest")
	local t = { 
		["InstanceId"] = InstanceId,
	}
	M.AssertDeregisterInstanceRequest(t)
	return t
end

local StopInstanceRequest_keys = { "InstanceId" = true, nil }

function M.AssertStopInstanceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopInstanceRequest to be of type 'table'")
	assert(struct["InstanceId"], "Expected key InstanceId to exist in table")
	if struct["InstanceId"] then M.AssertString(struct["InstanceId"]) end
	for k,_ in pairs(struct) do
		assert(StopInstanceRequest_keys[k], "StopInstanceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopInstanceRequest
--  
-- @param InstanceId [String] <p>The instance ID.</p>
-- Required parameter: InstanceId
function M.StopInstanceRequest(InstanceId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StopInstanceRequest")
	local t = { 
		["InstanceId"] = InstanceId,
	}
	M.AssertStopInstanceRequest(t)
	return t
end

local StackSummary_keys = { "StackId" = true, "InstancesCount" = true, "Name" = true, "AppsCount" = true, "LayersCount" = true, "Arn" = true, nil }

function M.AssertStackSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StackSummary to be of type 'table'")
	if struct["StackId"] then M.AssertString(struct["StackId"]) end
	if struct["InstancesCount"] then M.AssertInstancesCount(struct["InstancesCount"]) end
	if struct["Name"] then M.AssertString(struct["Name"]) end
	if struct["AppsCount"] then M.AssertInteger(struct["AppsCount"]) end
	if struct["LayersCount"] then M.AssertInteger(struct["LayersCount"]) end
	if struct["Arn"] then M.AssertString(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(StackSummary_keys[k], "StackSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StackSummary
-- <p>Summarizes the number of layers, instances, and apps in a stack.</p>
-- @param StackId [String] <p>The stack ID.</p>
-- @param InstancesCount [InstancesCount] <p>An <code>InstancesCount</code> object with the number of instances in each status.</p>
-- @param Name [String] <p>The stack name.</p>
-- @param AppsCount [Integer] <p>The number of apps.</p>
-- @param LayersCount [Integer] <p>The number of layers.</p>
-- @param Arn [String] <p>The stack's ARN.</p>
function M.StackSummary(StackId, InstancesCount, Name, AppsCount, LayersCount, Arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StackSummary")
	local t = { 
		["StackId"] = StackId,
		["InstancesCount"] = InstancesCount,
		["Name"] = Name,
		["AppsCount"] = AppsCount,
		["LayersCount"] = LayersCount,
		["Arn"] = Arn,
	}
	M.AssertStackSummary(t)
	return t
end

local ListTagsRequest_keys = { "ResourceArn" = true, "NextToken" = true, "MaxResults" = true, nil }

function M.AssertListTagsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagsRequest to be of type 'table'")
	assert(struct["ResourceArn"], "Expected key ResourceArn to exist in table")
	if struct["ResourceArn"] then M.AssertResourceArn(struct["ResourceArn"]) end
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then M.AssertMaxResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(ListTagsRequest_keys[k], "ListTagsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagsRequest
--  
-- @param ResourceArn [ResourceArn] <p>The stack or layer's Amazon Resource Number (ARN).</p>
-- @param NextToken [NextToken] <p>Do not use. A validation exception occurs if you add a <code>NextToken</code> parameter to a <code>ListTagsRequest</code> call. </p>
-- @param MaxResults [MaxResults] <p>Do not use. A validation exception occurs if you add a <code>MaxResults</code> parameter to a <code>ListTagsRequest</code> call. </p>
-- Required parameter: ResourceArn
function M.ListTagsRequest(ResourceArn, NextToken, MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTagsRequest")
	local t = { 
		["ResourceArn"] = ResourceArn,
		["NextToken"] = NextToken,
		["MaxResults"] = MaxResults,
	}
	M.AssertListTagsRequest(t)
	return t
end

local CreateDeploymentResult_keys = { "DeploymentId" = true, nil }

function M.AssertCreateDeploymentResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDeploymentResult to be of type 'table'")
	if struct["DeploymentId"] then M.AssertString(struct["DeploymentId"]) end
	for k,_ in pairs(struct) do
		assert(CreateDeploymentResult_keys[k], "CreateDeploymentResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDeploymentResult
-- <p>Contains the response to a <code>CreateDeployment</code> request.</p>
-- @param DeploymentId [String] <p>The deployment ID, which can be used with other requests to identify the deployment.</p>
function M.CreateDeploymentResult(DeploymentId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDeploymentResult")
	local t = { 
		["DeploymentId"] = DeploymentId,
	}
	M.AssertCreateDeploymentResult(t)
	return t
end

local DescribeAppsRequest_keys = { "StackId" = true, "AppIds" = true, nil }

function M.AssertDescribeAppsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAppsRequest to be of type 'table'")
	if struct["StackId"] then M.AssertString(struct["StackId"]) end
	if struct["AppIds"] then M.AssertStrings(struct["AppIds"]) end
	for k,_ in pairs(struct) do
		assert(DescribeAppsRequest_keys[k], "DescribeAppsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAppsRequest
--  
-- @param StackId [String] <p>The app stack ID. If you use this parameter, <code>DescribeApps</code> returns a description of the apps in the specified stack.</p>
-- @param AppIds [Strings] <p>An array of app IDs for the apps to be described. If you use this parameter, <code>DescribeApps</code> returns a description of the specified apps. Otherwise, it returns a description of every app.</p>
function M.DescribeAppsRequest(StackId, AppIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeAppsRequest")
	local t = { 
		["StackId"] = StackId,
		["AppIds"] = AppIds,
	}
	M.AssertDescribeAppsRequest(t)
	return t
end

local DescribeUserProfilesRequest_keys = { "IamUserArns" = true, nil }

function M.AssertDescribeUserProfilesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeUserProfilesRequest to be of type 'table'")
	if struct["IamUserArns"] then M.AssertStrings(struct["IamUserArns"]) end
	for k,_ in pairs(struct) do
		assert(DescribeUserProfilesRequest_keys[k], "DescribeUserProfilesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeUserProfilesRequest
--  
-- @param IamUserArns [Strings] <p>An array of IAM or federated user ARNs that identify the users to be described.</p>
function M.DescribeUserProfilesRequest(IamUserArns, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeUserProfilesRequest")
	local t = { 
		["IamUserArns"] = IamUserArns,
	}
	M.AssertDescribeUserProfilesRequest(t)
	return t
end

local DeregisterRdsDbInstanceRequest_keys = { "RdsDbInstanceArn" = true, nil }

function M.AssertDeregisterRdsDbInstanceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeregisterRdsDbInstanceRequest to be of type 'table'")
	assert(struct["RdsDbInstanceArn"], "Expected key RdsDbInstanceArn to exist in table")
	if struct["RdsDbInstanceArn"] then M.AssertString(struct["RdsDbInstanceArn"]) end
	for k,_ in pairs(struct) do
		assert(DeregisterRdsDbInstanceRequest_keys[k], "DeregisterRdsDbInstanceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeregisterRdsDbInstanceRequest
--  
-- @param RdsDbInstanceArn [String] <p>The Amazon RDS instance's ARN.</p>
-- Required parameter: RdsDbInstanceArn
function M.DeregisterRdsDbInstanceRequest(RdsDbInstanceArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeregisterRdsDbInstanceRequest")
	local t = { 
		["RdsDbInstanceArn"] = RdsDbInstanceArn,
	}
	M.AssertDeregisterRdsDbInstanceRequest(t)
	return t
end

local StartInstanceRequest_keys = { "InstanceId" = true, nil }

function M.AssertStartInstanceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartInstanceRequest to be of type 'table'")
	assert(struct["InstanceId"], "Expected key InstanceId to exist in table")
	if struct["InstanceId"] then M.AssertString(struct["InstanceId"]) end
	for k,_ in pairs(struct) do
		assert(StartInstanceRequest_keys[k], "StartInstanceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartInstanceRequest
--  
-- @param InstanceId [String] <p>The instance ID.</p>
-- Required parameter: InstanceId
function M.StartInstanceRequest(InstanceId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StartInstanceRequest")
	local t = { 
		["InstanceId"] = InstanceId,
	}
	M.AssertStartInstanceRequest(t)
	return t
end

local DescribeStackSummaryRequest_keys = { "StackId" = true, nil }

function M.AssertDescribeStackSummaryRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeStackSummaryRequest to be of type 'table'")
	assert(struct["StackId"], "Expected key StackId to exist in table")
	if struct["StackId"] then M.AssertString(struct["StackId"]) end
	for k,_ in pairs(struct) do
		assert(DescribeStackSummaryRequest_keys[k], "DescribeStackSummaryRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeStackSummaryRequest
--  
-- @param StackId [String] <p>The stack ID.</p>
-- Required parameter: StackId
function M.DescribeStackSummaryRequest(StackId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeStackSummaryRequest")
	local t = { 
		["StackId"] = StackId,
	}
	M.AssertDescribeStackSummaryRequest(t)
	return t
end

local DescribeVolumesResult_keys = { "Volumes" = true, nil }

function M.AssertDescribeVolumesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeVolumesResult to be of type 'table'")
	if struct["Volumes"] then M.AssertVolumes(struct["Volumes"]) end
	for k,_ in pairs(struct) do
		assert(DescribeVolumesResult_keys[k], "DescribeVolumesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeVolumesResult
-- <p>Contains the response to a <code>DescribeVolumes</code> request.</p>
-- @param Volumes [Volumes] <p>An array of volume IDs.</p>
function M.DescribeVolumesResult(Volumes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeVolumesResult")
	local t = { 
		["Volumes"] = Volumes,
	}
	M.AssertDescribeVolumesResult(t)
	return t
end

local AttachElasticLoadBalancerRequest_keys = { "ElasticLoadBalancerName" = true, "LayerId" = true, nil }

function M.AssertAttachElasticLoadBalancerRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttachElasticLoadBalancerRequest to be of type 'table'")
	assert(struct["ElasticLoadBalancerName"], "Expected key ElasticLoadBalancerName to exist in table")
	assert(struct["LayerId"], "Expected key LayerId to exist in table")
	if struct["ElasticLoadBalancerName"] then M.AssertString(struct["ElasticLoadBalancerName"]) end
	if struct["LayerId"] then M.AssertString(struct["LayerId"]) end
	for k,_ in pairs(struct) do
		assert(AttachElasticLoadBalancerRequest_keys[k], "AttachElasticLoadBalancerRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AttachElasticLoadBalancerRequest
--  
-- @param ElasticLoadBalancerName [String] <p>The Elastic Load Balancing instance's name.</p>
-- @param LayerId [String] <p>The ID of the layer that the Elastic Load Balancing instance is to be attached to.</p>
-- Required parameter: ElasticLoadBalancerName
-- Required parameter: LayerId
function M.AttachElasticLoadBalancerRequest(ElasticLoadBalancerName, LayerId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AttachElasticLoadBalancerRequest")
	local t = { 
		["ElasticLoadBalancerName"] = ElasticLoadBalancerName,
		["LayerId"] = LayerId,
	}
	M.AssertAttachElasticLoadBalancerRequest(t)
	return t
end

local UpdateMyUserProfileRequest_keys = { "SshPublicKey" = true, nil }

function M.AssertUpdateMyUserProfileRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateMyUserProfileRequest to be of type 'table'")
	if struct["SshPublicKey"] then M.AssertString(struct["SshPublicKey"]) end
	for k,_ in pairs(struct) do
		assert(UpdateMyUserProfileRequest_keys[k], "UpdateMyUserProfileRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateMyUserProfileRequest
--  
-- @param SshPublicKey [String] <p>The user's SSH public key.</p>
function M.UpdateMyUserProfileRequest(SshPublicKey, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateMyUserProfileRequest")
	local t = { 
		["SshPublicKey"] = SshPublicKey,
	}
	M.AssertUpdateMyUserProfileRequest(t)
	return t
end

local DeleteLayerRequest_keys = { "LayerId" = true, nil }

function M.AssertDeleteLayerRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteLayerRequest to be of type 'table'")
	assert(struct["LayerId"], "Expected key LayerId to exist in table")
	if struct["LayerId"] then M.AssertString(struct["LayerId"]) end
	for k,_ in pairs(struct) do
		assert(DeleteLayerRequest_keys[k], "DeleteLayerRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteLayerRequest
--  
-- @param LayerId [String] <p>The layer ID.</p>
-- Required parameter: LayerId
function M.DeleteLayerRequest(LayerId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteLayerRequest")
	local t = { 
		["LayerId"] = LayerId,
	}
	M.AssertDeleteLayerRequest(t)
	return t
end

local ShutdownEventConfiguration_keys = { "DelayUntilElbConnectionsDrained" = true, "ExecutionTimeout" = true, nil }

function M.AssertShutdownEventConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ShutdownEventConfiguration to be of type 'table'")
	if struct["DelayUntilElbConnectionsDrained"] then M.AssertBoolean(struct["DelayUntilElbConnectionsDrained"]) end
	if struct["ExecutionTimeout"] then M.AssertInteger(struct["ExecutionTimeout"]) end
	for k,_ in pairs(struct) do
		assert(ShutdownEventConfiguration_keys[k], "ShutdownEventConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ShutdownEventConfiguration
-- <p>The Shutdown event configuration.</p>
-- @param DelayUntilElbConnectionsDrained [Boolean] <p>Whether to enable Elastic Load Balancing connection draining. For more information, see <a href="http://docs.aws.amazon.com/ElasticLoadBalancing/latest/DeveloperGuide/TerminologyandKeyConcepts.html#conn-drain">Connection Draining</a> </p>
-- @param ExecutionTimeout [Integer] <p>The time, in seconds, that AWS OpsWorks Stacks will wait after triggering a Shutdown event before shutting down an instance.</p>
function M.ShutdownEventConfiguration(DelayUntilElbConnectionsDrained, ExecutionTimeout, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ShutdownEventConfiguration")
	local t = { 
		["DelayUntilElbConnectionsDrained"] = DelayUntilElbConnectionsDrained,
		["ExecutionTimeout"] = ExecutionTimeout,
	}
	M.AssertShutdownEventConfiguration(t)
	return t
end

local EcsCluster_keys = { "StackId" = true, "EcsClusterArn" = true, "RegisteredAt" = true, "EcsClusterName" = true, nil }

function M.AssertEcsCluster(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EcsCluster to be of type 'table'")
	if struct["StackId"] then M.AssertString(struct["StackId"]) end
	if struct["EcsClusterArn"] then M.AssertString(struct["EcsClusterArn"]) end
	if struct["RegisteredAt"] then M.AssertDateTime(struct["RegisteredAt"]) end
	if struct["EcsClusterName"] then M.AssertString(struct["EcsClusterName"]) end
	for k,_ in pairs(struct) do
		assert(EcsCluster_keys[k], "EcsCluster contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EcsCluster
-- <p>Describes a registered Amazon ECS cluster.</p>
-- @param StackId [String] <p>The stack ID.</p>
-- @param EcsClusterArn [String] <p>The cluster's ARN.</p>
-- @param RegisteredAt [DateTime] <p>The time and date that the cluster was registered with the stack.</p>
-- @param EcsClusterName [String] <p>The cluster name.</p>
function M.EcsCluster(StackId, EcsClusterArn, RegisteredAt, EcsClusterName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EcsCluster")
	local t = { 
		["StackId"] = StackId,
		["EcsClusterArn"] = EcsClusterArn,
		["RegisteredAt"] = RegisteredAt,
		["EcsClusterName"] = EcsClusterName,
	}
	M.AssertEcsCluster(t)
	return t
end

local DescribeAppsResult_keys = { "Apps" = true, nil }

function M.AssertDescribeAppsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAppsResult to be of type 'table'")
	if struct["Apps"] then M.AssertApps(struct["Apps"]) end
	for k,_ in pairs(struct) do
		assert(DescribeAppsResult_keys[k], "DescribeAppsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAppsResult
-- <p>Contains the response to a <code>DescribeApps</code> request.</p>
-- @param Apps [Apps] <p>An array of <code>App</code> objects that describe the specified apps. </p>
function M.DescribeAppsResult(Apps, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeAppsResult")
	local t = { 
		["Apps"] = Apps,
	}
	M.AssertDescribeAppsResult(t)
	return t
end

local UpdateAppRequest_keys = { "Environment" = true, "AppSource" = true, "Description" = true, "EnableSsl" = true, "SslConfiguration" = true, "AppId" = true, "Domains" = true, "Attributes" = true, "Name" = true, "Type" = true, "DataSources" = true, nil }

function M.AssertUpdateAppRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateAppRequest to be of type 'table'")
	assert(struct["AppId"], "Expected key AppId to exist in table")
	if struct["Environment"] then M.AssertEnvironmentVariables(struct["Environment"]) end
	if struct["AppSource"] then M.AssertSource(struct["AppSource"]) end
	if struct["Description"] then M.AssertString(struct["Description"]) end
	if struct["EnableSsl"] then M.AssertBoolean(struct["EnableSsl"]) end
	if struct["SslConfiguration"] then M.AssertSslConfiguration(struct["SslConfiguration"]) end
	if struct["AppId"] then M.AssertString(struct["AppId"]) end
	if struct["Domains"] then M.AssertStrings(struct["Domains"]) end
	if struct["Attributes"] then M.AssertAppAttributes(struct["Attributes"]) end
	if struct["Name"] then M.AssertString(struct["Name"]) end
	if struct["Type"] then M.AssertAppType(struct["Type"]) end
	if struct["DataSources"] then M.AssertDataSources(struct["DataSources"]) end
	for k,_ in pairs(struct) do
		assert(UpdateAppRequest_keys[k], "UpdateAppRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateAppRequest
--  
-- @param Environment [EnvironmentVariables] <p>An array of <code>EnvironmentVariable</code> objects that specify environment variables to be associated with the app. After you deploy the app, these variables are defined on the associated app server instances.For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html#workingapps-creating-environment"> Environment Variables</a>.</p> <p>There is no specific limit on the number of environment variables. However, the size of the associated data structure - which includes the variables' names, values, and protected flag values - cannot exceed 10 KB (10240 Bytes). This limit should accommodate most if not all use cases. Exceeding it will cause an exception with the message, "Environment: is too large (maximum is 10KB)."</p> <note> <p>This parameter is supported only by Chef 11.10 stacks. If you have specified one or more environment variables, you cannot modify the stack's Chef version.</p> </note>
-- @param AppSource [Source] <p>A <code>Source</code> object that specifies the app repository.</p>
-- @param Description [String] <p>A description of the app.</p>
-- @param EnableSsl [Boolean] <p>Whether SSL is enabled for the app.</p>
-- @param SslConfiguration [SslConfiguration] <p>An <code>SslConfiguration</code> object with the SSL configuration.</p>
-- @param AppId [String] <p>The app ID.</p>
-- @param Domains [Strings] <p>The app's virtual host settings, with multiple domains separated by commas. For example: <code>'www.example.com, example.com'</code> </p>
-- @param Attributes [AppAttributes] <p>One or more user-defined key/value pairs to be added to the stack attributes.</p>
-- @param Name [String] <p>The app name.</p>
-- @param Type [AppType] <p>The app type.</p>
-- @param DataSources [DataSources] <p>The app's data sources.</p>
-- Required parameter: AppId
function M.UpdateAppRequest(Environment, AppSource, Description, EnableSsl, SslConfiguration, AppId, Domains, Attributes, Name, Type, DataSources, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateAppRequest")
	local t = { 
		["Environment"] = Environment,
		["AppSource"] = AppSource,
		["Description"] = Description,
		["EnableSsl"] = EnableSsl,
		["SslConfiguration"] = SslConfiguration,
		["AppId"] = AppId,
		["Domains"] = Domains,
		["Attributes"] = Attributes,
		["Name"] = Name,
		["Type"] = Type,
		["DataSources"] = DataSources,
	}
	M.AssertUpdateAppRequest(t)
	return t
end

local RegisterElasticIpRequest_keys = { "StackId" = true, "ElasticIp" = true, nil }

function M.AssertRegisterElasticIpRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RegisterElasticIpRequest to be of type 'table'")
	assert(struct["ElasticIp"], "Expected key ElasticIp to exist in table")
	assert(struct["StackId"], "Expected key StackId to exist in table")
	if struct["StackId"] then M.AssertString(struct["StackId"]) end
	if struct["ElasticIp"] then M.AssertString(struct["ElasticIp"]) end
	for k,_ in pairs(struct) do
		assert(RegisterElasticIpRequest_keys[k], "RegisterElasticIpRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RegisterElasticIpRequest
--  
-- @param StackId [String] <p>The stack ID.</p>
-- @param ElasticIp [String] <p>The Elastic IP address.</p>
-- Required parameter: ElasticIp
-- Required parameter: StackId
function M.RegisterElasticIpRequest(StackId, ElasticIp, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RegisterElasticIpRequest")
	local t = { 
		["StackId"] = StackId,
		["ElasticIp"] = ElasticIp,
	}
	M.AssertRegisterElasticIpRequest(t)
	return t
end

local DescribeCommandsRequest_keys = { "InstanceId" = true, "DeploymentId" = true, "CommandIds" = true, nil }

function M.AssertDescribeCommandsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeCommandsRequest to be of type 'table'")
	if struct["InstanceId"] then M.AssertString(struct["InstanceId"]) end
	if struct["DeploymentId"] then M.AssertString(struct["DeploymentId"]) end
	if struct["CommandIds"] then M.AssertStrings(struct["CommandIds"]) end
	for k,_ in pairs(struct) do
		assert(DescribeCommandsRequest_keys[k], "DescribeCommandsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeCommandsRequest
--  
-- @param InstanceId [String] <p>The instance ID. If you include this parameter, <code>DescribeCommands</code> returns a description of the commands associated with the specified instance.</p>
-- @param DeploymentId [String] <p>The deployment ID. If you include this parameter, <code>DescribeCommands</code> returns a description of the commands associated with the specified deployment.</p>
-- @param CommandIds [Strings] <p>An array of command IDs. If you include this parameter, <code>DescribeCommands</code> returns a description of the specified commands. Otherwise, it returns a description of every command.</p>
function M.DescribeCommandsRequest(InstanceId, DeploymentId, CommandIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeCommandsRequest")
	local t = { 
		["InstanceId"] = InstanceId,
		["DeploymentId"] = DeploymentId,
		["CommandIds"] = CommandIds,
	}
	M.AssertDescribeCommandsRequest(t)
	return t
end

local DescribeElasticLoadBalancersRequest_keys = { "StackId" = true, "LayerIds" = true, nil }

function M.AssertDescribeElasticLoadBalancersRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeElasticLoadBalancersRequest to be of type 'table'")
	if struct["StackId"] then M.AssertString(struct["StackId"]) end
	if struct["LayerIds"] then M.AssertStrings(struct["LayerIds"]) end
	for k,_ in pairs(struct) do
		assert(DescribeElasticLoadBalancersRequest_keys[k], "DescribeElasticLoadBalancersRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeElasticLoadBalancersRequest
--  
-- @param StackId [String] <p>A stack ID. The action describes the stack's Elastic Load Balancing instances.</p>
-- @param LayerIds [Strings] <p>A list of layer IDs. The action describes the Elastic Load Balancing instances for the specified layers.</p>
function M.DescribeElasticLoadBalancersRequest(StackId, LayerIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeElasticLoadBalancersRequest")
	local t = { 
		["StackId"] = StackId,
		["LayerIds"] = LayerIds,
	}
	M.AssertDescribeElasticLoadBalancersRequest(t)
	return t
end

local UnassignVolumeRequest_keys = { "VolumeId" = true, nil }

function M.AssertUnassignVolumeRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnassignVolumeRequest to be of type 'table'")
	assert(struct["VolumeId"], "Expected key VolumeId to exist in table")
	if struct["VolumeId"] then M.AssertString(struct["VolumeId"]) end
	for k,_ in pairs(struct) do
		assert(UnassignVolumeRequest_keys[k], "UnassignVolumeRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnassignVolumeRequest
--  
-- @param VolumeId [String] <p>The volume ID.</p>
-- Required parameter: VolumeId
function M.UnassignVolumeRequest(VolumeId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UnassignVolumeRequest")
	local t = { 
		["VolumeId"] = VolumeId,
	}
	M.AssertUnassignVolumeRequest(t)
	return t
end

local DescribePermissionsResult_keys = { "Permissions" = true, nil }

function M.AssertDescribePermissionsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribePermissionsResult to be of type 'table'")
	if struct["Permissions"] then M.AssertPermissions(struct["Permissions"]) end
	for k,_ in pairs(struct) do
		assert(DescribePermissionsResult_keys[k], "DescribePermissionsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribePermissionsResult
-- <p>Contains the response to a <code>DescribePermissions</code> request.</p>
-- @param Permissions [Permissions] <p>An array of <code>Permission</code> objects that describe the stack permissions.</p> <ul> <li> <p>If the request object contains only a stack ID, the array contains a <code>Permission</code> object with permissions for each of the stack IAM ARNs.</p> </li> <li> <p>If the request object contains only an IAM ARN, the array contains a <code>Permission</code> object with permissions for each of the user's stack IDs.</p> </li> <li> <p>If the request contains a stack ID and an IAM ARN, the array contains a single <code>Permission</code> object with permissions for the specified stack and IAM ARN.</p> </li> </ul>
function M.DescribePermissionsResult(Permissions, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribePermissionsResult")
	local t = { 
		["Permissions"] = Permissions,
	}
	M.AssertDescribePermissionsResult(t)
	return t
end

local ListTagsResult_keys = { "NextToken" = true, "Tags" = true, nil }

function M.AssertListTagsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagsResult to be of type 'table'")
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["Tags"] then M.AssertTags(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(ListTagsResult_keys[k], "ListTagsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagsResult
-- <p>Contains the response to a <code>ListTags</code> request.</p>
-- @param NextToken [NextToken] <p>If a paginated request does not return all of the remaining results, this parameter is set to a token that you can assign to the request object's <code>NextToken</code> parameter to get the next set of results. If the previous paginated request returned all of the remaining results, this parameter is set to <code>null</code>. </p>
-- @param Tags [Tags] <p>A set of key-value pairs that contain tag keys and tag values that are attached to a stack or layer.</p>
function M.ListTagsResult(NextToken, Tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTagsResult")
	local t = { 
		["NextToken"] = NextToken,
		["Tags"] = Tags,
	}
	M.AssertListTagsResult(t)
	return t
end

local Recipes_keys = { "Undeploy" = true, "Setup" = true, "Configure" = true, "Shutdown" = true, "Deploy" = true, nil }

function M.AssertRecipes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Recipes to be of type 'table'")
	if struct["Undeploy"] then M.AssertStrings(struct["Undeploy"]) end
	if struct["Setup"] then M.AssertStrings(struct["Setup"]) end
	if struct["Configure"] then M.AssertStrings(struct["Configure"]) end
	if struct["Shutdown"] then M.AssertStrings(struct["Shutdown"]) end
	if struct["Deploy"] then M.AssertStrings(struct["Deploy"]) end
	for k,_ in pairs(struct) do
		assert(Recipes_keys[k], "Recipes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Recipes
-- <p>AWS OpsWorks Stacks supports five lifecycle events: <b>setup</b>, <b>configuration</b>, <b>deploy</b>, <b>undeploy</b>, and <b>shutdown</b>. For each layer, AWS OpsWorks Stacks runs a set of standard recipes for each event. In addition, you can provide custom recipes for any or all layers and events. AWS OpsWorks Stacks runs custom event recipes after the standard recipes. <code>LayerCustomRecipes</code> specifies the custom recipes for a particular layer to be run in response to each of the five events. </p> <p>To specify a recipe, use the cookbook's directory name in the repository followed by two colons and the recipe name, which is the recipe's file name without the .rb extension. For example: phpapp2::dbsetup specifies the dbsetup.rb recipe in the repository's phpapp2 folder.</p>
-- @param Undeploy [Strings] <p>An array of custom recipe names to be run following a <code>undeploy</code> event.</p>
-- @param Setup [Strings] <p>An array of custom recipe names to be run following a <code>setup</code> event.</p>
-- @param Configure [Strings] <p>An array of custom recipe names to be run following a <code>configure</code> event.</p>
-- @param Shutdown [Strings] <p>An array of custom recipe names to be run following a <code>shutdown</code> event.</p>
-- @param Deploy [Strings] <p>An array of custom recipe names to be run following a <code>deploy</code> event.</p>
function M.Recipes(Undeploy, Setup, Configure, Shutdown, Deploy, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Recipes")
	local t = { 
		["Undeploy"] = Undeploy,
		["Setup"] = Setup,
		["Configure"] = Configure,
		["Shutdown"] = Shutdown,
		["Deploy"] = Deploy,
	}
	M.AssertRecipes(t)
	return t
end

local Layer_keys = { "StackId" = true, "DefaultRecipes" = true, "LayerId" = true, "AutoAssignPublicIps" = true, "Shortname" = true, "CustomSecurityGroupIds" = true, "LifecycleEventConfiguration" = true, "Type" = true, "CustomInstanceProfileArn" = true, "UseEbsOptimizedInstances" = true, "Packages" = true, "CreatedAt" = true, "Name" = true, "CloudWatchLogsConfiguration" = true, "CustomRecipes" = true, "VolumeConfigurations" = true, "Attributes" = true, "InstallUpdatesOnBoot" = true, "AutoAssignElasticIps" = true, "DefaultSecurityGroupNames" = true, "CustomJson" = true, "EnableAutoHealing" = true, "Arn" = true, nil }

function M.AssertLayer(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Layer to be of type 'table'")
	if struct["StackId"] then M.AssertString(struct["StackId"]) end
	if struct["DefaultRecipes"] then M.AssertRecipes(struct["DefaultRecipes"]) end
	if struct["LayerId"] then M.AssertString(struct["LayerId"]) end
	if struct["AutoAssignPublicIps"] then M.AssertBoolean(struct["AutoAssignPublicIps"]) end
	if struct["Shortname"] then M.AssertString(struct["Shortname"]) end
	if struct["CustomSecurityGroupIds"] then M.AssertStrings(struct["CustomSecurityGroupIds"]) end
	if struct["LifecycleEventConfiguration"] then M.AssertLifecycleEventConfiguration(struct["LifecycleEventConfiguration"]) end
	if struct["Type"] then M.AssertLayerType(struct["Type"]) end
	if struct["CustomInstanceProfileArn"] then M.AssertString(struct["CustomInstanceProfileArn"]) end
	if struct["UseEbsOptimizedInstances"] then M.AssertBoolean(struct["UseEbsOptimizedInstances"]) end
	if struct["Packages"] then M.AssertStrings(struct["Packages"]) end
	if struct["CreatedAt"] then M.AssertDateTime(struct["CreatedAt"]) end
	if struct["Name"] then M.AssertString(struct["Name"]) end
	if struct["CloudWatchLogsConfiguration"] then M.AssertCloudWatchLogsConfiguration(struct["CloudWatchLogsConfiguration"]) end
	if struct["CustomRecipes"] then M.AssertRecipes(struct["CustomRecipes"]) end
	if struct["VolumeConfigurations"] then M.AssertVolumeConfigurations(struct["VolumeConfigurations"]) end
	if struct["Attributes"] then M.AssertLayerAttributes(struct["Attributes"]) end
	if struct["InstallUpdatesOnBoot"] then M.AssertBoolean(struct["InstallUpdatesOnBoot"]) end
	if struct["AutoAssignElasticIps"] then M.AssertBoolean(struct["AutoAssignElasticIps"]) end
	if struct["DefaultSecurityGroupNames"] then M.AssertStrings(struct["DefaultSecurityGroupNames"]) end
	if struct["CustomJson"] then M.AssertString(struct["CustomJson"]) end
	if struct["EnableAutoHealing"] then M.AssertBoolean(struct["EnableAutoHealing"]) end
	if struct["Arn"] then M.AssertString(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(Layer_keys[k], "Layer contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Layer
-- <p>Describes a layer.</p>
-- @param StackId [String] <p>The layer stack ID.</p>
-- @param DefaultRecipes [Recipes] <p>Describes a layer.</p>
-- @param LayerId [String] <p>The layer ID.</p>
-- @param AutoAssignPublicIps [Boolean] <p>For stacks that are running in a VPC, whether to automatically assign a public IP address to the layer's instances. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-edit.html">How to Edit a Layer</a>.</p>
-- @param Shortname [String] <p>The layer short name.</p>
-- @param CustomSecurityGroupIds [Strings] <p>An array containing the layer's custom security group IDs.</p>
-- @param LifecycleEventConfiguration [LifecycleEventConfiguration] <p>A <code>LifeCycleEventConfiguration</code> object that specifies the Shutdown event configuration.</p>
-- @param Type [LayerType] <p>The layer type.</p>
-- @param CustomInstanceProfileArn [String] <p>The ARN of the default IAM profile to be used for the layer's EC2 instances. For more information about IAM ARNs, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">Using Identifiers</a>.</p>
-- @param UseEbsOptimizedInstances [Boolean] <p>Whether the layer uses Amazon EBS-optimized instances.</p>
-- @param Packages [Strings] <p>An array of <code>Package</code> objects that describe the layer's packages.</p>
-- @param CreatedAt [DateTime] <p>Date when the layer was created.</p>
-- @param Name [String] <p>The layer name.</p>
-- @param CloudWatchLogsConfiguration [CloudWatchLogsConfiguration] <p>The Amazon CloudWatch Logs configuration settings for the layer.</p>
-- @param CustomRecipes [Recipes] <p>A <code>LayerCustomRecipes</code> object that specifies the layer's custom recipes.</p>
-- @param VolumeConfigurations [VolumeConfigurations] <p>A <code>VolumeConfigurations</code> object that describes the layer's Amazon EBS volumes.</p>
-- @param Attributes [LayerAttributes] <p>The layer attributes.</p> <p>For the <code>HaproxyStatsPassword</code>, <code>MysqlRootPassword</code>, and <code>GangliaPassword</code> attributes, AWS OpsWorks Stacks returns <code>*****FILTERED*****</code> instead of the actual value</p> <p>For an ECS Cluster layer, AWS OpsWorks Stacks the <code>EcsClusterArn</code> attribute is set to the cluster's ARN.</p>
-- @param InstallUpdatesOnBoot [Boolean] <p>Whether to install operating system and package updates when the instance boots. The default value is <code>true</code>. If this value is set to <code>false</code>, you must then update your instances manually by using <a>CreateDeployment</a> to run the <code>update_dependencies</code> stack command or manually running <code>yum</code> (Amazon Linux) or <code>apt-get</code> (Ubuntu) on the instances. </p> <note> <p>We strongly recommend using the default value of <code>true</code>, to ensure that your instances have the latest security updates.</p> </note>
-- @param AutoAssignElasticIps [Boolean] <p>Whether to automatically assign an <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html">Elastic IP address</a> to the layer's instances. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-edit.html">How to Edit a Layer</a>.</p>
-- @param DefaultSecurityGroupNames [Strings] <p>An array containing the layer's security group names.</p>
-- @param CustomJson [String] <p>A JSON formatted string containing the layer's custom stack configuration and deployment attributes.</p>
-- @param EnableAutoHealing [Boolean] <p>Whether auto healing is disabled for the layer.</p>
-- @param Arn [String] <p>Describes a layer.</p>
function M.Layer(StackId, DefaultRecipes, LayerId, AutoAssignPublicIps, Shortname, CustomSecurityGroupIds, LifecycleEventConfiguration, Type, CustomInstanceProfileArn, UseEbsOptimizedInstances, Packages, CreatedAt, Name, CloudWatchLogsConfiguration, CustomRecipes, VolumeConfigurations, Attributes, InstallUpdatesOnBoot, AutoAssignElasticIps, DefaultSecurityGroupNames, CustomJson, EnableAutoHealing, Arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Layer")
	local t = { 
		["StackId"] = StackId,
		["DefaultRecipes"] = DefaultRecipes,
		["LayerId"] = LayerId,
		["AutoAssignPublicIps"] = AutoAssignPublicIps,
		["Shortname"] = Shortname,
		["CustomSecurityGroupIds"] = CustomSecurityGroupIds,
		["LifecycleEventConfiguration"] = LifecycleEventConfiguration,
		["Type"] = Type,
		["CustomInstanceProfileArn"] = CustomInstanceProfileArn,
		["UseEbsOptimizedInstances"] = UseEbsOptimizedInstances,
		["Packages"] = Packages,
		["CreatedAt"] = CreatedAt,
		["Name"] = Name,
		["CloudWatchLogsConfiguration"] = CloudWatchLogsConfiguration,
		["CustomRecipes"] = CustomRecipes,
		["VolumeConfigurations"] = VolumeConfigurations,
		["Attributes"] = Attributes,
		["InstallUpdatesOnBoot"] = InstallUpdatesOnBoot,
		["AutoAssignElasticIps"] = AutoAssignElasticIps,
		["DefaultSecurityGroupNames"] = DefaultSecurityGroupNames,
		["CustomJson"] = CustomJson,
		["EnableAutoHealing"] = EnableAutoHealing,
		["Arn"] = Arn,
	}
	M.AssertLayer(t)
	return t
end

local CreateStackRequest_keys = { "ServiceRoleArn" = true, "DefaultSubnetId" = true, "VpcId" = true, "DefaultRootDeviceType" = true, "Name" = true, "HostnameTheme" = true, "UseCustomCookbooks" = true, "CustomJson" = true, "Region" = true, "DefaultAvailabilityZone" = true, "UseOpsworksSecurityGroups" = true, "CustomCookbooksSource" = true, "ConfigurationManager" = true, "ChefConfiguration" = true, "AgentVersion" = true, "DefaultSshKeyName" = true, "DefaultInstanceProfileArn" = true, "Attributes" = true, "DefaultOs" = true, nil }

function M.AssertCreateStackRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateStackRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["Region"], "Expected key Region to exist in table")
	assert(struct["ServiceRoleArn"], "Expected key ServiceRoleArn to exist in table")
	assert(struct["DefaultInstanceProfileArn"], "Expected key DefaultInstanceProfileArn to exist in table")
	if struct["ServiceRoleArn"] then M.AssertString(struct["ServiceRoleArn"]) end
	if struct["DefaultSubnetId"] then M.AssertString(struct["DefaultSubnetId"]) end
	if struct["VpcId"] then M.AssertString(struct["VpcId"]) end
	if struct["DefaultRootDeviceType"] then M.AssertRootDeviceType(struct["DefaultRootDeviceType"]) end
	if struct["Name"] then M.AssertString(struct["Name"]) end
	if struct["HostnameTheme"] then M.AssertString(struct["HostnameTheme"]) end
	if struct["UseCustomCookbooks"] then M.AssertBoolean(struct["UseCustomCookbooks"]) end
	if struct["CustomJson"] then M.AssertString(struct["CustomJson"]) end
	if struct["Region"] then M.AssertString(struct["Region"]) end
	if struct["DefaultAvailabilityZone"] then M.AssertString(struct["DefaultAvailabilityZone"]) end
	if struct["UseOpsworksSecurityGroups"] then M.AssertBoolean(struct["UseOpsworksSecurityGroups"]) end
	if struct["CustomCookbooksSource"] then M.AssertSource(struct["CustomCookbooksSource"]) end
	if struct["ConfigurationManager"] then M.AssertStackConfigurationManager(struct["ConfigurationManager"]) end
	if struct["ChefConfiguration"] then M.AssertChefConfiguration(struct["ChefConfiguration"]) end
	if struct["AgentVersion"] then M.AssertString(struct["AgentVersion"]) end
	if struct["DefaultSshKeyName"] then M.AssertString(struct["DefaultSshKeyName"]) end
	if struct["DefaultInstanceProfileArn"] then M.AssertString(struct["DefaultInstanceProfileArn"]) end
	if struct["Attributes"] then M.AssertStackAttributes(struct["Attributes"]) end
	if struct["DefaultOs"] then M.AssertString(struct["DefaultOs"]) end
	for k,_ in pairs(struct) do
		assert(CreateStackRequest_keys[k], "CreateStackRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateStackRequest
--  
-- @param ServiceRoleArn [String] <p>The stack's AWS Identity and Access Management (IAM) role, which allows AWS OpsWorks Stacks to work with AWS resources on your behalf. You must set this parameter to the Amazon Resource Name (ARN) for an existing IAM role. For more information about IAM ARNs, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">Using Identifiers</a>.</p>
-- @param DefaultSubnetId [String] <p>The stack's default VPC subnet ID. This parameter is required if you specify a value for the <code>VpcId</code> parameter. All instances are launched into this subnet unless you specify otherwise when you create the instance. If you also specify a value for <code>DefaultAvailabilityZone</code>, the subnet must be in that zone. For information on default values and when this parameter is required, see the <code>VpcId</code> parameter description. </p>
-- @param VpcId [String] <p>The ID of the VPC that the stack is to be launched into. The VPC must be in the stack's region. All instances are launched into this VPC. You cannot change the ID later.</p> <ul> <li> <p>If your account supports EC2-Classic, the default value is <code>no VPC</code>.</p> </li> <li> <p>If your account does not support EC2-Classic, the default value is the default VPC for the specified region.</p> </li> </ul> <p>If the VPC ID corresponds to a default VPC and you have specified either the <code>DefaultAvailabilityZone</code> or the <code>DefaultSubnetId</code> parameter only, AWS OpsWorks Stacks infers the value of the other parameter. If you specify neither parameter, AWS OpsWorks Stacks sets these parameters to the first valid Availability Zone for the specified region and the corresponding default VPC subnet ID, respectively.</p> <p>If you specify a nondefault VPC ID, note the following:</p> <ul> <li> <p>It must belong to a VPC in your account that is in the specified region.</p> </li> <li> <p>You must specify a value for <code>DefaultSubnetId</code>.</p> </li> </ul> <p>For more information on how to use AWS OpsWorks Stacks with a VPC, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-vpc.html">Running a Stack in a VPC</a>. For more information on default VPC and EC2-Classic, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-supported-platforms.html">Supported Platforms</a>. </p>
-- @param DefaultRootDeviceType [RootDeviceType] <p>The default root device type. This value is the default for all instances in the stack, but you can override it when you create an instance. The default option is <code>instance-store</code>. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ComponentsAMIs.html#storage-for-the-root-device">Storage for the Root Device</a>.</p>
-- @param Name [String] <p>The stack name.</p>
-- @param HostnameTheme [String] <p>The stack's host name theme, with spaces replaced by underscores. The theme is used to generate host names for the stack's instances. By default, <code>HostnameTheme</code> is set to <code>Layer_Dependent</code>, which creates host names by appending integers to the layer's short name. The other themes are:</p> <ul> <li> <p> <code>Baked_Goods</code> </p> </li> <li> <p> <code>Clouds</code> </p> </li> <li> <p> <code>Europe_Cities</code> </p> </li> <li> <p> <code>Fruits</code> </p> </li> <li> <p> <code>Greek_Deities</code> </p> </li> <li> <p> <code>Legendary_creatures_from_Japan</code> </p> </li> <li> <p> <code>Planets_and_Moons</code> </p> </li> <li> <p> <code>Roman_Deities</code> </p> </li> <li> <p> <code>Scottish_Islands</code> </p> </li> <li> <p> <code>US_Cities</code> </p> </li> <li> <p> <code>Wild_Cats</code> </p> </li> </ul> <p>To obtain a generated host name, call <code>GetHostNameSuggestion</code>, which returns a host name based on the current theme.</p>
-- @param UseCustomCookbooks [Boolean] <p>Whether the stack uses custom cookbooks.</p>
-- @param CustomJson [String] <p>A string that contains user-defined, custom JSON. It can be used to override the corresponding default stack configuration attribute values or to pass data to recipes. The string should be in the following format:</p> <p> <code>"{\"key1\": \"value1\", \"key2\": \"value2\",...}"</code> </p> <p>For more information on custom JSON, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-json.html">Use Custom JSON to Modify the Stack Configuration Attributes</a>.</p>
-- @param Region [String] <p>The stack's AWS region, such as "ap-south-1". For more information about Amazon regions, see <a href="http://docs.aws.amazon.com/general/latest/gr/rande.html">Regions and Endpoints</a>.</p>
-- @param DefaultAvailabilityZone [String] <p>The stack's default Availability Zone, which must be in the specified region. For more information, see <a href="http://docs.aws.amazon.com/general/latest/gr/rande.html">Regions and Endpoints</a>. If you also specify a value for <code>DefaultSubnetId</code>, the subnet must be in the same zone. For more information, see the <code>VpcId</code> parameter description. </p>
-- @param UseOpsworksSecurityGroups [Boolean] <p>Whether to associate the AWS OpsWorks Stacks built-in security groups with the stack's layers.</p> <p>AWS OpsWorks Stacks provides a standard set of built-in security groups, one for each layer, which are associated with layers by default. With <code>UseOpsworksSecurityGroups</code> you can instead provide your own custom security groups. <code>UseOpsworksSecurityGroups</code> has the following settings: </p> <ul> <li> <p>True - AWS OpsWorks Stacks automatically associates the appropriate built-in security group with each layer (default setting). You can associate additional security groups with a layer after you create it, but you cannot delete the built-in security group.</p> </li> <li> <p>False - AWS OpsWorks Stacks does not associate built-in security groups with layers. You must create appropriate EC2 security groups and associate a security group with each layer that you create. However, you can still manually associate a built-in security group with a layer on creation; custom security groups are required only for those layers that need custom settings.</p> </li> </ul> <p>For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-creating.html">Create a New Stack</a>.</p>
-- @param CustomCookbooksSource [Source]  
-- @param ConfigurationManager [StackConfigurationManager] <p>The configuration manager. When you create a stack we recommend that you use the configuration manager to specify the Chef version: 12, 11.10, or 11.4 for Linux stacks, or 12.2 for Windows stacks. The default value for Linux stacks is currently 11.4.</p>
-- @param ChefConfiguration [ChefConfiguration] <p>A <code>ChefConfiguration</code> object that specifies whether to enable Berkshelf and the Berkshelf version on Chef 11.10 stacks. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-creating.html">Create a New Stack</a>.</p>
-- @param AgentVersion [String] <p>The default AWS OpsWorks Stacks agent version. You have the following options:</p> <ul> <li> <p>Auto-update - Set this parameter to <code>LATEST</code>. AWS OpsWorks Stacks automatically installs new agent versions on the stack's instances as soon as they are available.</p> </li> <li> <p>Fixed version - Set this parameter to your preferred agent version. To update the agent version, you must edit the stack configuration and specify a new version. AWS OpsWorks Stacks then automatically installs that version on the stack's instances.</p> </li> </ul> <p>The default setting is the most recent release of the agent. To specify an agent version, you must use the complete version number, not the abbreviated number shown on the console. For a list of available agent version numbers, call <a>DescribeAgentVersions</a>. AgentVersion cannot be set to Chef 12.2.</p> <note> <p>You can also specify an agent version when you create or update an instance, which overrides the stack's default setting.</p> </note>
-- @param DefaultSshKeyName [String] <p>A default Amazon EC2 key pair name. The default value is none. If you specify a key pair name, AWS OpsWorks installs the public key on the instance and you can use the private key with an SSH client to log in to the instance. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-ssh.html"> Using SSH to Communicate with an Instance</a> and <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/security-ssh-access.html"> Managing SSH Access</a>. You can override this setting by specifying a different key pair, or no key pair, when you <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-add.html"> create an instance</a>. </p>
-- @param DefaultInstanceProfileArn [String] <p>The Amazon Resource Name (ARN) of an IAM profile that is the default profile for all of the stack's EC2 instances. For more information about IAM ARNs, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">Using Identifiers</a>.</p>
-- @param Attributes [StackAttributes] <p>One or more user-defined key-value pairs to be added to the stack attributes.</p>
-- @param DefaultOs [String] <p>The stack's default operating system, which is installed on every instance unless you specify a different operating system when you create the instance. You can specify one of the following.</p> <ul> <li> <p>A supported Linux operating system: An Amazon Linux version, such as <code>Amazon Linux 2017.03</code>, <code>Amazon Linux 2016.09</code>, <code>Amazon Linux 2016.03</code>, <code>Amazon Linux 2015.09</code>, or <code>Amazon Linux 2015.03</code>.</p> </li> <li> <p>A supported Ubuntu operating system, such as <code>Ubuntu 16.04 LTS</code>, <code>Ubuntu 14.04 LTS</code>, or <code>Ubuntu 12.04 LTS</code>.</p> </li> <li> <p> <code>CentOS Linux 7</code> </p> </li> <li> <p> <code>Red Hat Enterprise Linux 7</code> </p> </li> <li> <p>A supported Windows operating system, such as <code>Microsoft Windows Server 2012 R2 Base</code>, <code>Microsoft Windows Server 2012 R2 with SQL Server Express</code>, <code>Microsoft Windows Server 2012 R2 with SQL Server Standard</code>, or <code>Microsoft Windows Server 2012 R2 with SQL Server Web</code>.</p> </li> <li> <p>A custom AMI: <code>Custom</code>. You specify the custom AMI you want to use when you create instances. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-custom-ami.html"> Using Custom AMIs</a>.</p> </li> </ul> <p>The default option is the current Amazon Linux version. For more information on the supported operating systems, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-os.html">AWS OpsWorks Stacks Operating Systems</a>.</p>
-- Required parameter: Name
-- Required parameter: Region
-- Required parameter: ServiceRoleArn
-- Required parameter: DefaultInstanceProfileArn
function M.CreateStackRequest(ServiceRoleArn, DefaultSubnetId, VpcId, DefaultRootDeviceType, Name, HostnameTheme, UseCustomCookbooks, CustomJson, Region, DefaultAvailabilityZone, UseOpsworksSecurityGroups, CustomCookbooksSource, ConfigurationManager, ChefConfiguration, AgentVersion, DefaultSshKeyName, DefaultInstanceProfileArn, Attributes, DefaultOs, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateStackRequest")
	local t = { 
		["ServiceRoleArn"] = ServiceRoleArn,
		["DefaultSubnetId"] = DefaultSubnetId,
		["VpcId"] = VpcId,
		["DefaultRootDeviceType"] = DefaultRootDeviceType,
		["Name"] = Name,
		["HostnameTheme"] = HostnameTheme,
		["UseCustomCookbooks"] = UseCustomCookbooks,
		["CustomJson"] = CustomJson,
		["Region"] = Region,
		["DefaultAvailabilityZone"] = DefaultAvailabilityZone,
		["UseOpsworksSecurityGroups"] = UseOpsworksSecurityGroups,
		["CustomCookbooksSource"] = CustomCookbooksSource,
		["ConfigurationManager"] = ConfigurationManager,
		["ChefConfiguration"] = ChefConfiguration,
		["AgentVersion"] = AgentVersion,
		["DefaultSshKeyName"] = DefaultSshKeyName,
		["DefaultInstanceProfileArn"] = DefaultInstanceProfileArn,
		["Attributes"] = Attributes,
		["DefaultOs"] = DefaultOs,
	}
	M.AssertCreateStackRequest(t)
	return t
end

local Instance_keys = { "PrivateDns" = true, "SshHostRsaKeyFingerprint" = true, "SubnetId" = true, "Hostname" = true, "LastServiceErrorId" = true, "Platform" = true, "EbsOptimized" = true, "ReportedOs" = true, "AutoScalingType" = true, "Status" = true, "StackId" = true, "InstanceId" = true, "SshKeyName" = true, "InfrastructureClass" = true, "RootDeviceVolumeId" = true, "Tenancy" = true, "AgentVersion" = true, "SshHostDsaKeyFingerprint" = true, "InstanceProfileArn" = true, "InstanceType" = true, "CreatedAt" = true, "AmiId" = true, "LayerIds" = true, "Ec2InstanceId" = true, "PublicDns" = true, "SecurityGroupIds" = true, "EcsClusterArn" = true, "BlockDeviceMappings" = true, "Architecture" = true, "ReportedAgentVersion" = true, "InstallUpdatesOnBoot" = true, "Os" = true, "VirtualizationType" = true, "AvailabilityZone" = true, "EcsContainerInstanceArn" = true, "ElasticIp" = true, "RootDeviceType" = true, "PrivateIp" = true, "PublicIp" = true, "RegisteredBy" = true, "Arn" = true, nil }

function M.AssertInstance(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Instance to be of type 'table'")
	if struct["PrivateDns"] then M.AssertString(struct["PrivateDns"]) end
	if struct["SshHostRsaKeyFingerprint"] then M.AssertString(struct["SshHostRsaKeyFingerprint"]) end
	if struct["SubnetId"] then M.AssertString(struct["SubnetId"]) end
	if struct["Hostname"] then M.AssertString(struct["Hostname"]) end
	if struct["LastServiceErrorId"] then M.AssertString(struct["LastServiceErrorId"]) end
	if struct["Platform"] then M.AssertString(struct["Platform"]) end
	if struct["EbsOptimized"] then M.AssertBoolean(struct["EbsOptimized"]) end
	if struct["ReportedOs"] then M.AssertReportedOs(struct["ReportedOs"]) end
	if struct["AutoScalingType"] then M.AssertAutoScalingType(struct["AutoScalingType"]) end
	if struct["Status"] then M.AssertString(struct["Status"]) end
	if struct["StackId"] then M.AssertString(struct["StackId"]) end
	if struct["InstanceId"] then M.AssertString(struct["InstanceId"]) end
	if struct["SshKeyName"] then M.AssertString(struct["SshKeyName"]) end
	if struct["InfrastructureClass"] then M.AssertString(struct["InfrastructureClass"]) end
	if struct["RootDeviceVolumeId"] then M.AssertString(struct["RootDeviceVolumeId"]) end
	if struct["Tenancy"] then M.AssertString(struct["Tenancy"]) end
	if struct["AgentVersion"] then M.AssertString(struct["AgentVersion"]) end
	if struct["SshHostDsaKeyFingerprint"] then M.AssertString(struct["SshHostDsaKeyFingerprint"]) end
	if struct["InstanceProfileArn"] then M.AssertString(struct["InstanceProfileArn"]) end
	if struct["InstanceType"] then M.AssertString(struct["InstanceType"]) end
	if struct["CreatedAt"] then M.AssertDateTime(struct["CreatedAt"]) end
	if struct["AmiId"] then M.AssertString(struct["AmiId"]) end
	if struct["LayerIds"] then M.AssertStrings(struct["LayerIds"]) end
	if struct["Ec2InstanceId"] then M.AssertString(struct["Ec2InstanceId"]) end
	if struct["PublicDns"] then M.AssertString(struct["PublicDns"]) end
	if struct["SecurityGroupIds"] then M.AssertStrings(struct["SecurityGroupIds"]) end
	if struct["EcsClusterArn"] then M.AssertString(struct["EcsClusterArn"]) end
	if struct["BlockDeviceMappings"] then M.AssertBlockDeviceMappings(struct["BlockDeviceMappings"]) end
	if struct["Architecture"] then M.AssertArchitecture(struct["Architecture"]) end
	if struct["ReportedAgentVersion"] then M.AssertString(struct["ReportedAgentVersion"]) end
	if struct["InstallUpdatesOnBoot"] then M.AssertBoolean(struct["InstallUpdatesOnBoot"]) end
	if struct["Os"] then M.AssertString(struct["Os"]) end
	if struct["VirtualizationType"] then M.AssertVirtualizationType(struct["VirtualizationType"]) end
	if struct["AvailabilityZone"] then M.AssertString(struct["AvailabilityZone"]) end
	if struct["EcsContainerInstanceArn"] then M.AssertString(struct["EcsContainerInstanceArn"]) end
	if struct["ElasticIp"] then M.AssertString(struct["ElasticIp"]) end
	if struct["RootDeviceType"] then M.AssertRootDeviceType(struct["RootDeviceType"]) end
	if struct["PrivateIp"] then M.AssertString(struct["PrivateIp"]) end
	if struct["PublicIp"] then M.AssertString(struct["PublicIp"]) end
	if struct["RegisteredBy"] then M.AssertString(struct["RegisteredBy"]) end
	if struct["Arn"] then M.AssertString(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(Instance_keys[k], "Instance contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Instance
-- <p>Describes an instance.</p>
-- @param PrivateDns [String] <p>The instance's private DNS name.</p>
-- @param SshHostRsaKeyFingerprint [String] <p>The SSH key's RSA fingerprint.</p>
-- @param SubnetId [String] <p>The instance's subnet ID; applicable only if the stack is running in a VPC.</p>
-- @param Hostname [String] <p>The instance host name.</p>
-- @param LastServiceErrorId [String] <p>The ID of the last service error. For more information, call <a>DescribeServiceErrors</a>.</p>
-- @param Platform [String] <p>The instance's platform.</p>
-- @param EbsOptimized [Boolean] <p>Whether this is an Amazon EBS-optimized instance.</p>
-- @param ReportedOs [ReportedOs] <p>For registered instances, the reported operating system.</p>
-- @param AutoScalingType [AutoScalingType] <p>For load-based or time-based instances, the type.</p>
-- @param Status [String] <p>The instance status:</p> <ul> <li> <p> <code>booting</code> </p> </li> <li> <p> <code>connection_lost</code> </p> </li> <li> <p> <code>online</code> </p> </li> <li> <p> <code>pending</code> </p> </li> <li> <p> <code>rebooting</code> </p> </li> <li> <p> <code>requested</code> </p> </li> <li> <p> <code>running_setup</code> </p> </li> <li> <p> <code>setup_failed</code> </p> </li> <li> <p> <code>shutting_down</code> </p> </li> <li> <p> <code>start_failed</code> </p> </li> <li> <p> <code>stop_failed</code> </p> </li> <li> <p> <code>stopped</code> </p> </li> <li> <p> <code>stopping</code> </p> </li> <li> <p> <code>terminated</code> </p> </li> <li> <p> <code>terminating</code> </p> </li> </ul>
-- @param StackId [String] <p>The stack ID.</p>
-- @param InstanceId [String] <p>The instance ID.</p>
-- @param SshKeyName [String] <p>The instance's Amazon EC2 key-pair name.</p>
-- @param InfrastructureClass [String] <p>For registered instances, the infrastructure class: <code>ec2</code> or <code>on-premises</code>.</p>
-- @param RootDeviceVolumeId [String] <p>The root device volume ID.</p>
-- @param Tenancy [String] <p>The instance's tenancy option, such as <code>dedicated</code> or <code>host</code>.</p>
-- @param AgentVersion [String] <p>The agent version. This parameter is set to <code>INHERIT</code> if the instance inherits the default stack setting or to a a version number for a fixed agent version.</p>
-- @param SshHostDsaKeyFingerprint [String] <p>The SSH key's Deep Security Agent (DSA) fingerprint.</p>
-- @param InstanceProfileArn [String] <p>The ARN of the instance's IAM profile. For more information about IAM ARNs, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">Using Identifiers</a>.</p>
-- @param InstanceType [String] <p>The instance type, such as <code>t2.micro</code>.</p>
-- @param CreatedAt [DateTime] <p>The time that the instance was created.</p>
-- @param AmiId [String] <p>A custom AMI ID to be used to create the instance. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-custom-ami.html">Instances</a> </p>
-- @param LayerIds [Strings] <p>An array containing the instance layer IDs.</p>
-- @param Ec2InstanceId [String] <p>The ID of the associated Amazon EC2 instance.</p>
-- @param PublicDns [String] <p>The instance public DNS name.</p>
-- @param SecurityGroupIds [Strings] <p>An array containing the instance security group IDs.</p>
-- @param EcsClusterArn [String] <p>For container instances, the Amazon ECS cluster's ARN.</p>
-- @param BlockDeviceMappings [BlockDeviceMappings] <p>An array of <code>BlockDeviceMapping</code> objects that specify the instance's block device mappings.</p>
-- @param Architecture [Architecture] <p>The instance architecture: "i386" or "x86_64".</p>
-- @param ReportedAgentVersion [String] <p>The instance's reported AWS OpsWorks Stacks agent version.</p>
-- @param InstallUpdatesOnBoot [Boolean] <p>Whether to install operating system and package updates when the instance boots. The default value is <code>true</code>. If this value is set to <code>false</code>, you must then update your instances manually by using <a>CreateDeployment</a> to run the <code>update_dependencies</code> stack command or by manually running <code>yum</code> (Amazon Linux) or <code>apt-get</code> (Ubuntu) on the instances. </p> <note> <p>We strongly recommend using the default value of <code>true</code>, to ensure that your instances have the latest security updates.</p> </note>
-- @param Os [String] <p>The instance's operating system.</p>
-- @param VirtualizationType [VirtualizationType] <p>The instance's virtualization type: <code>paravirtual</code> or <code>hvm</code>.</p>
-- @param AvailabilityZone [String] <p>The instance Availability Zone. For more information, see <a href="http://docs.aws.amazon.com/general/latest/gr/rande.html">Regions and Endpoints</a>.</p>
-- @param EcsContainerInstanceArn [String] <p>For container instances, the instance's ARN.</p>
-- @param ElasticIp [String] <p>The instance <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html">Elastic IP address </a>.</p>
-- @param RootDeviceType [RootDeviceType] <p>The instance's root device type. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ComponentsAMIs.html#storage-for-the-root-device">Storage for the Root Device</a>.</p>
-- @param PrivateIp [String] <p>The instance's private IP address.</p>
-- @param PublicIp [String] <p>The instance public IP address.</p>
-- @param RegisteredBy [String] <p>For registered instances, who performed the registration.</p>
-- @param Arn [String] <p>Describes an instance.</p>
function M.Instance(PrivateDns, SshHostRsaKeyFingerprint, SubnetId, Hostname, LastServiceErrorId, Platform, EbsOptimized, ReportedOs, AutoScalingType, Status, StackId, InstanceId, SshKeyName, InfrastructureClass, RootDeviceVolumeId, Tenancy, AgentVersion, SshHostDsaKeyFingerprint, InstanceProfileArn, InstanceType, CreatedAt, AmiId, LayerIds, Ec2InstanceId, PublicDns, SecurityGroupIds, EcsClusterArn, BlockDeviceMappings, Architecture, ReportedAgentVersion, InstallUpdatesOnBoot, Os, VirtualizationType, AvailabilityZone, EcsContainerInstanceArn, ElasticIp, RootDeviceType, PrivateIp, PublicIp, RegisteredBy, Arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Instance")
	local t = { 
		["PrivateDns"] = PrivateDns,
		["SshHostRsaKeyFingerprint"] = SshHostRsaKeyFingerprint,
		["SubnetId"] = SubnetId,
		["Hostname"] = Hostname,
		["LastServiceErrorId"] = LastServiceErrorId,
		["Platform"] = Platform,
		["EbsOptimized"] = EbsOptimized,
		["ReportedOs"] = ReportedOs,
		["AutoScalingType"] = AutoScalingType,
		["Status"] = Status,
		["StackId"] = StackId,
		["InstanceId"] = InstanceId,
		["SshKeyName"] = SshKeyName,
		["InfrastructureClass"] = InfrastructureClass,
		["RootDeviceVolumeId"] = RootDeviceVolumeId,
		["Tenancy"] = Tenancy,
		["AgentVersion"] = AgentVersion,
		["SshHostDsaKeyFingerprint"] = SshHostDsaKeyFingerprint,
		["InstanceProfileArn"] = InstanceProfileArn,
		["InstanceType"] = InstanceType,
		["CreatedAt"] = CreatedAt,
		["AmiId"] = AmiId,
		["LayerIds"] = LayerIds,
		["Ec2InstanceId"] = Ec2InstanceId,
		["PublicDns"] = PublicDns,
		["SecurityGroupIds"] = SecurityGroupIds,
		["EcsClusterArn"] = EcsClusterArn,
		["BlockDeviceMappings"] = BlockDeviceMappings,
		["Architecture"] = Architecture,
		["ReportedAgentVersion"] = ReportedAgentVersion,
		["InstallUpdatesOnBoot"] = InstallUpdatesOnBoot,
		["Os"] = Os,
		["VirtualizationType"] = VirtualizationType,
		["AvailabilityZone"] = AvailabilityZone,
		["EcsContainerInstanceArn"] = EcsContainerInstanceArn,
		["ElasticIp"] = ElasticIp,
		["RootDeviceType"] = RootDeviceType,
		["PrivateIp"] = PrivateIp,
		["PublicIp"] = PublicIp,
		["RegisteredBy"] = RegisteredBy,
		["Arn"] = Arn,
	}
	M.AssertInstance(t)
	return t
end

local WeeklyAutoScalingSchedule_keys = { "Monday" = true, "Tuesday" = true, "Friday" = true, "Wednesday" = true, "Thursday" = true, "Sunday" = true, "Saturday" = true, nil }

function M.AssertWeeklyAutoScalingSchedule(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WeeklyAutoScalingSchedule to be of type 'table'")
	if struct["Monday"] then M.AssertDailyAutoScalingSchedule(struct["Monday"]) end
	if struct["Tuesday"] then M.AssertDailyAutoScalingSchedule(struct["Tuesday"]) end
	if struct["Friday"] then M.AssertDailyAutoScalingSchedule(struct["Friday"]) end
	if struct["Wednesday"] then M.AssertDailyAutoScalingSchedule(struct["Wednesday"]) end
	if struct["Thursday"] then M.AssertDailyAutoScalingSchedule(struct["Thursday"]) end
	if struct["Sunday"] then M.AssertDailyAutoScalingSchedule(struct["Sunday"]) end
	if struct["Saturday"] then M.AssertDailyAutoScalingSchedule(struct["Saturday"]) end
	for k,_ in pairs(struct) do
		assert(WeeklyAutoScalingSchedule_keys[k], "WeeklyAutoScalingSchedule contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WeeklyAutoScalingSchedule
-- <p>Describes a time-based instance's auto scaling schedule. The schedule consists of a set of key-value pairs.</p> <ul> <li> <p>The key is the time period (a UTC hour) and must be an integer from 0 - 23.</p> </li> <li> <p>The value indicates whether the instance should be online or offline for the specified period, and must be set to "on" or "off"</p> </li> </ul> <p>The default setting for all time periods is off, so you use the following parameters primarily to specify the online periods. You don't have to explicitly specify offline periods unless you want to change an online period to an offline period.</p> <p>The following example specifies that the instance should be online for four hours, from UTC 1200 - 1600. It will be off for the remainder of the day.</p> <p> <code> { "12":"on", "13":"on", "14":"on", "15":"on" } </code> </p>
-- @param Monday [DailyAutoScalingSchedule] <p>The schedule for Monday.</p>
-- @param Tuesday [DailyAutoScalingSchedule] <p>The schedule for Tuesday.</p>
-- @param Friday [DailyAutoScalingSchedule] <p>The schedule for Friday.</p>
-- @param Wednesday [DailyAutoScalingSchedule] <p>The schedule for Wednesday.</p>
-- @param Thursday [DailyAutoScalingSchedule] <p>The schedule for Thursday.</p>
-- @param Sunday [DailyAutoScalingSchedule] <p>The schedule for Sunday.</p>
-- @param Saturday [DailyAutoScalingSchedule] <p>The schedule for Saturday.</p>
function M.WeeklyAutoScalingSchedule(Monday, Tuesday, Friday, Wednesday, Thursday, Sunday, Saturday, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating WeeklyAutoScalingSchedule")
	local t = { 
		["Monday"] = Monday,
		["Tuesday"] = Tuesday,
		["Friday"] = Friday,
		["Wednesday"] = Wednesday,
		["Thursday"] = Thursday,
		["Sunday"] = Sunday,
		["Saturday"] = Saturday,
	}
	M.AssertWeeklyAutoScalingSchedule(t)
	return t
end

local EnvironmentVariable_keys = { "Value" = true, "Key" = true, "Secure" = true, nil }

function M.AssertEnvironmentVariable(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EnvironmentVariable to be of type 'table'")
	assert(struct["Key"], "Expected key Key to exist in table")
	assert(struct["Value"], "Expected key Value to exist in table")
	if struct["Value"] then M.AssertString(struct["Value"]) end
	if struct["Key"] then M.AssertString(struct["Key"]) end
	if struct["Secure"] then M.AssertBoolean(struct["Secure"]) end
	for k,_ in pairs(struct) do
		assert(EnvironmentVariable_keys[k], "EnvironmentVariable contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EnvironmentVariable
-- <p>Represents an app's environment variable.</p>
-- @param Value [String] <p>(Optional) The environment variable's value, which can be left empty. If you specify a value, it can contain up to 256 characters, which must all be printable.</p>
-- @param Key [String] <p>(Required) The environment variable's name, which can consist of up to 64 characters and must be specified. The name can contain upper- and lowercase letters, numbers, and underscores (_), but it must start with a letter or underscore.</p>
-- @param Secure [Boolean] <p>(Optional) Whether the variable's value will be returned by the <a>DescribeApps</a> action. To conceal an environment variable's value, set <code>Secure</code> to <code>true</code>. <code>DescribeApps</code> then returns <code>*****FILTERED*****</code> instead of the actual value. The default value for <code>Secure</code> is <code>false</code>. </p>
-- Required parameter: Key
-- Required parameter: Value
function M.EnvironmentVariable(Value, Key, Secure, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EnvironmentVariable")
	local t = { 
		["Value"] = Value,
		["Key"] = Key,
		["Secure"] = Secure,
	}
	M.AssertEnvironmentVariable(t)
	return t
end

local RegisterInstanceResult_keys = { "InstanceId" = true, nil }

function M.AssertRegisterInstanceResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RegisterInstanceResult to be of type 'table'")
	if struct["InstanceId"] then M.AssertString(struct["InstanceId"]) end
	for k,_ in pairs(struct) do
		assert(RegisterInstanceResult_keys[k], "RegisterInstanceResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RegisterInstanceResult
-- <p>Contains the response to a <code>RegisterInstanceResult</code> request.</p>
-- @param InstanceId [String] <p>The registered instance's AWS OpsWorks Stacks ID.</p>
function M.RegisterInstanceResult(InstanceId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RegisterInstanceResult")
	local t = { 
		["InstanceId"] = InstanceId,
	}
	M.AssertRegisterInstanceResult(t)
	return t
end

local AutoScalingThresholds_keys = { "InstanceCount" = true, "LoadThreshold" = true, "ThresholdsWaitTime" = true, "IgnoreMetricsTime" = true, "MemoryThreshold" = true, "Alarms" = true, "CpuThreshold" = true, nil }

function M.AssertAutoScalingThresholds(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AutoScalingThresholds to be of type 'table'")
	if struct["InstanceCount"] then M.AssertInteger(struct["InstanceCount"]) end
	if struct["LoadThreshold"] then M.AssertDouble(struct["LoadThreshold"]) end
	if struct["ThresholdsWaitTime"] then M.AssertMinute(struct["ThresholdsWaitTime"]) end
	if struct["IgnoreMetricsTime"] then M.AssertMinute(struct["IgnoreMetricsTime"]) end
	if struct["MemoryThreshold"] then M.AssertDouble(struct["MemoryThreshold"]) end
	if struct["Alarms"] then M.AssertStrings(struct["Alarms"]) end
	if struct["CpuThreshold"] then M.AssertDouble(struct["CpuThreshold"]) end
	for k,_ in pairs(struct) do
		assert(AutoScalingThresholds_keys[k], "AutoScalingThresholds contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AutoScalingThresholds
-- <p>Describes a load-based auto scaling upscaling or downscaling threshold configuration, which specifies when AWS OpsWorks Stacks starts or stops load-based instances.</p>
-- @param InstanceCount [Integer] <p>The number of instances to add or remove when the load exceeds a threshold.</p>
-- @param LoadThreshold [Double] <p>The load threshold. A value of -1 disables the threshold. For more information about how load is computed, see <a href="http://en.wikipedia.org/wiki/Load_%28computing%29">Load (computing)</a>.</p>
-- @param ThresholdsWaitTime [Minute] <p>The amount of time, in minutes, that the load must exceed a threshold before more instances are added or removed.</p>
-- @param IgnoreMetricsTime [Minute] <p>The amount of time (in minutes) after a scaling event occurs that AWS OpsWorks Stacks should ignore metrics and suppress additional scaling events. For example, AWS OpsWorks Stacks adds new instances following an upscaling event but the instances won't start reducing the load until they have been booted and configured. There is no point in raising additional scaling events during that operation, which typically takes several minutes. <code>IgnoreMetricsTime</code> allows you to direct AWS OpsWorks Stacks to suppress scaling events long enough to get the new instances online.</p>
-- @param MemoryThreshold [Double] <p>The memory utilization threshold, as a percent of the available memory. A value of -1 disables the threshold.</p>
-- @param Alarms [Strings] <p>Custom Cloudwatch auto scaling alarms, to be used as thresholds. This parameter takes a list of up to five alarm names, which are case sensitive and must be in the same region as the stack.</p> <note> <p>To use custom alarms, you must update your service role to allow <code>cloudwatch:DescribeAlarms</code>. You can either have AWS OpsWorks Stacks update the role for you when you first use this feature or you can edit the role manually. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-servicerole.html">Allowing AWS OpsWorks Stacks to Act on Your Behalf</a>.</p> </note>
-- @param CpuThreshold [Double] <p>The CPU utilization threshold, as a percent of the available CPU. A value of -1 disables the threshold.</p>
function M.AutoScalingThresholds(InstanceCount, LoadThreshold, ThresholdsWaitTime, IgnoreMetricsTime, MemoryThreshold, Alarms, CpuThreshold, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AutoScalingThresholds")
	local t = { 
		["InstanceCount"] = InstanceCount,
		["LoadThreshold"] = LoadThreshold,
		["ThresholdsWaitTime"] = ThresholdsWaitTime,
		["IgnoreMetricsTime"] = IgnoreMetricsTime,
		["MemoryThreshold"] = MemoryThreshold,
		["Alarms"] = Alarms,
		["CpuThreshold"] = CpuThreshold,
	}
	M.AssertAutoScalingThresholds(t)
	return t
end

local RebootInstanceRequest_keys = { "InstanceId" = true, nil }

function M.AssertRebootInstanceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RebootInstanceRequest to be of type 'table'")
	assert(struct["InstanceId"], "Expected key InstanceId to exist in table")
	if struct["InstanceId"] then M.AssertString(struct["InstanceId"]) end
	for k,_ in pairs(struct) do
		assert(RebootInstanceRequest_keys[k], "RebootInstanceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RebootInstanceRequest
--  
-- @param InstanceId [String] <p>The instance ID.</p>
-- Required parameter: InstanceId
function M.RebootInstanceRequest(InstanceId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RebootInstanceRequest")
	local t = { 
		["InstanceId"] = InstanceId,
	}
	M.AssertRebootInstanceRequest(t)
	return t
end

local EbsBlockDevice_keys = { "DeleteOnTermination" = true, "SnapshotId" = true, "Iops" = true, "VolumeType" = true, "VolumeSize" = true, nil }

function M.AssertEbsBlockDevice(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EbsBlockDevice to be of type 'table'")
	if struct["DeleteOnTermination"] then M.AssertBoolean(struct["DeleteOnTermination"]) end
	if struct["SnapshotId"] then M.AssertString(struct["SnapshotId"]) end
	if struct["Iops"] then M.AssertInteger(struct["Iops"]) end
	if struct["VolumeType"] then M.AssertVolumeType(struct["VolumeType"]) end
	if struct["VolumeSize"] then M.AssertInteger(struct["VolumeSize"]) end
	for k,_ in pairs(struct) do
		assert(EbsBlockDevice_keys[k], "EbsBlockDevice contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EbsBlockDevice
-- <p>Describes an Amazon EBS volume. This data type maps directly to the Amazon EC2 <a href="http://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_EbsBlockDevice.html">EbsBlockDevice</a> data type.</p>
-- @param DeleteOnTermination [Boolean] <p>Whether the volume is deleted on instance termination.</p>
-- @param SnapshotId [String] <p>The snapshot ID.</p>
-- @param Iops [Integer] <p>The number of I/O operations per second (IOPS) that the volume supports. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_EbsBlockDevice.html">EbsBlockDevice</a>.</p>
-- @param VolumeType [VolumeType] <p>The volume type. <code>gp2</code> for General Purpose (SSD) volumes, <code>io1</code> for Provisioned IOPS (SSD) volumes, and <code>standard</code> for Magnetic volumes.</p>
-- @param VolumeSize [Integer] <p>The volume size, in GiB. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_EbsBlockDevice.html">EbsBlockDevice</a>.</p>
function M.EbsBlockDevice(DeleteOnTermination, SnapshotId, Iops, VolumeType, VolumeSize, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EbsBlockDevice")
	local t = { 
		["DeleteOnTermination"] = DeleteOnTermination,
		["SnapshotId"] = SnapshotId,
		["Iops"] = Iops,
		["VolumeType"] = VolumeType,
		["VolumeSize"] = VolumeSize,
	}
	M.AssertEbsBlockDevice(t)
	return t
end

local LoadBasedAutoScalingConfiguration_keys = { "DownScaling" = true, "Enable" = true, "UpScaling" = true, "LayerId" = true, nil }

function M.AssertLoadBasedAutoScalingConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LoadBasedAutoScalingConfiguration to be of type 'table'")
	if struct["DownScaling"] then M.AssertAutoScalingThresholds(struct["DownScaling"]) end
	if struct["Enable"] then M.AssertBoolean(struct["Enable"]) end
	if struct["UpScaling"] then M.AssertAutoScalingThresholds(struct["UpScaling"]) end
	if struct["LayerId"] then M.AssertString(struct["LayerId"]) end
	for k,_ in pairs(struct) do
		assert(LoadBasedAutoScalingConfiguration_keys[k], "LoadBasedAutoScalingConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LoadBasedAutoScalingConfiguration
-- <p>Describes a layer's load-based auto scaling configuration.</p>
-- @param DownScaling [AutoScalingThresholds] <p>An <code>AutoScalingThresholds</code> object that describes the downscaling configuration, which defines how and when AWS OpsWorks Stacks reduces the number of instances.</p>
-- @param Enable [Boolean] <p>Whether load-based auto scaling is enabled for the layer.</p>
-- @param UpScaling [AutoScalingThresholds] <p>An <code>AutoScalingThresholds</code> object that describes the upscaling configuration, which defines how and when AWS OpsWorks Stacks increases the number of instances.</p>
-- @param LayerId [String] <p>The layer ID.</p>
function M.LoadBasedAutoScalingConfiguration(DownScaling, Enable, UpScaling, LayerId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LoadBasedAutoScalingConfiguration")
	local t = { 
		["DownScaling"] = DownScaling,
		["Enable"] = Enable,
		["UpScaling"] = UpScaling,
		["LayerId"] = LayerId,
	}
	M.AssertLoadBasedAutoScalingConfiguration(t)
	return t
end

local CreateAppResult_keys = { "AppId" = true, nil }

function M.AssertCreateAppResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateAppResult to be of type 'table'")
	if struct["AppId"] then M.AssertString(struct["AppId"]) end
	for k,_ in pairs(struct) do
		assert(CreateAppResult_keys[k], "CreateAppResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateAppResult
-- <p>Contains the response to a <code>CreateApp</code> request.</p>
-- @param AppId [String] <p>The app ID.</p>
function M.CreateAppResult(AppId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateAppResult")
	local t = { 
		["AppId"] = AppId,
	}
	M.AssertCreateAppResult(t)
	return t
end

local SetTimeBasedAutoScalingRequest_keys = { "InstanceId" = true, "AutoScalingSchedule" = true, nil }

function M.AssertSetTimeBasedAutoScalingRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetTimeBasedAutoScalingRequest to be of type 'table'")
	assert(struct["InstanceId"], "Expected key InstanceId to exist in table")
	if struct["InstanceId"] then M.AssertString(struct["InstanceId"]) end
	if struct["AutoScalingSchedule"] then M.AssertWeeklyAutoScalingSchedule(struct["AutoScalingSchedule"]) end
	for k,_ in pairs(struct) do
		assert(SetTimeBasedAutoScalingRequest_keys[k], "SetTimeBasedAutoScalingRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetTimeBasedAutoScalingRequest
--  
-- @param InstanceId [String] <p>The instance ID.</p>
-- @param AutoScalingSchedule [WeeklyAutoScalingSchedule] <p>An <code>AutoScalingSchedule</code> with the instance schedule.</p>
-- Required parameter: InstanceId
function M.SetTimeBasedAutoScalingRequest(InstanceId, AutoScalingSchedule, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SetTimeBasedAutoScalingRequest")
	local t = { 
		["InstanceId"] = InstanceId,
		["AutoScalingSchedule"] = AutoScalingSchedule,
	}
	M.AssertSetTimeBasedAutoScalingRequest(t)
	return t
end

local CloneStackRequest_keys = { "HostnameTheme" = true, "UseCustomCookbooks" = true, "DefaultSshKeyName" = true, "CloneAppIds" = true, "ChefConfiguration" = true, "UseOpsworksSecurityGroups" = true, "ServiceRoleArn" = true, "VpcId" = true, "ConfigurationManager" = true, "CustomCookbooksSource" = true, "AgentVersion" = true, "DefaultAvailabilityZone" = true, "ClonePermissions" = true, "Name" = true, "Region" = true, "SourceStackId" = true, "DefaultInstanceProfileArn" = true, "Attributes" = true, "DefaultOs" = true, "DefaultSubnetId" = true, "DefaultRootDeviceType" = true, "CustomJson" = true, nil }

function M.AssertCloneStackRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CloneStackRequest to be of type 'table'")
	assert(struct["SourceStackId"], "Expected key SourceStackId to exist in table")
	assert(struct["ServiceRoleArn"], "Expected key ServiceRoleArn to exist in table")
	if struct["HostnameTheme"] then M.AssertString(struct["HostnameTheme"]) end
	if struct["UseCustomCookbooks"] then M.AssertBoolean(struct["UseCustomCookbooks"]) end
	if struct["DefaultSshKeyName"] then M.AssertString(struct["DefaultSshKeyName"]) end
	if struct["CloneAppIds"] then M.AssertStrings(struct["CloneAppIds"]) end
	if struct["ChefConfiguration"] then M.AssertChefConfiguration(struct["ChefConfiguration"]) end
	if struct["UseOpsworksSecurityGroups"] then M.AssertBoolean(struct["UseOpsworksSecurityGroups"]) end
	if struct["ServiceRoleArn"] then M.AssertString(struct["ServiceRoleArn"]) end
	if struct["VpcId"] then M.AssertString(struct["VpcId"]) end
	if struct["ConfigurationManager"] then M.AssertStackConfigurationManager(struct["ConfigurationManager"]) end
	if struct["CustomCookbooksSource"] then M.AssertSource(struct["CustomCookbooksSource"]) end
	if struct["AgentVersion"] then M.AssertString(struct["AgentVersion"]) end
	if struct["DefaultAvailabilityZone"] then M.AssertString(struct["DefaultAvailabilityZone"]) end
	if struct["ClonePermissions"] then M.AssertBoolean(struct["ClonePermissions"]) end
	if struct["Name"] then M.AssertString(struct["Name"]) end
	if struct["Region"] then M.AssertString(struct["Region"]) end
	if struct["SourceStackId"] then M.AssertString(struct["SourceStackId"]) end
	if struct["DefaultInstanceProfileArn"] then M.AssertString(struct["DefaultInstanceProfileArn"]) end
	if struct["Attributes"] then M.AssertStackAttributes(struct["Attributes"]) end
	if struct["DefaultOs"] then M.AssertString(struct["DefaultOs"]) end
	if struct["DefaultSubnetId"] then M.AssertString(struct["DefaultSubnetId"]) end
	if struct["DefaultRootDeviceType"] then M.AssertRootDeviceType(struct["DefaultRootDeviceType"]) end
	if struct["CustomJson"] then M.AssertString(struct["CustomJson"]) end
	for k,_ in pairs(struct) do
		assert(CloneStackRequest_keys[k], "CloneStackRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CloneStackRequest
--  
-- @param HostnameTheme [String] <p>The stack's host name theme, with spaces are replaced by underscores. The theme is used to generate host names for the stack's instances. By default, <code>HostnameTheme</code> is set to <code>Layer_Dependent</code>, which creates host names by appending integers to the layer's short name. The other themes are:</p> <ul> <li> <p> <code>Baked_Goods</code> </p> </li> <li> <p> <code>Clouds</code> </p> </li> <li> <p> <code>Europe_Cities</code> </p> </li> <li> <p> <code>Fruits</code> </p> </li> <li> <p> <code>Greek_Deities</code> </p> </li> <li> <p> <code>Legendary_creatures_from_Japan</code> </p> </li> <li> <p> <code>Planets_and_Moons</code> </p> </li> <li> <p> <code>Roman_Deities</code> </p> </li> <li> <p> <code>Scottish_Islands</code> </p> </li> <li> <p> <code>US_Cities</code> </p> </li> <li> <p> <code>Wild_Cats</code> </p> </li> </ul> <p>To obtain a generated host name, call <code>GetHostNameSuggestion</code>, which returns a host name based on the current theme.</p>
-- @param UseCustomCookbooks [Boolean] <p>Whether to use custom cookbooks.</p>
-- @param DefaultSshKeyName [String] <p>A default Amazon EC2 key pair name. The default value is none. If you specify a key pair name, AWS OpsWorks installs the public key on the instance and you can use the private key with an SSH client to log in to the instance. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-ssh.html"> Using SSH to Communicate with an Instance</a> and <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/security-ssh-access.html"> Managing SSH Access</a>. You can override this setting by specifying a different key pair, or no key pair, when you <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-add.html"> create an instance</a>. </p>
-- @param CloneAppIds [Strings] <p>A list of source stack app IDs to be included in the cloned stack.</p>
-- @param ChefConfiguration [ChefConfiguration] <p>A <code>ChefConfiguration</code> object that specifies whether to enable Berkshelf and the Berkshelf version on Chef 11.10 stacks. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-creating.html">Create a New Stack</a>.</p>
-- @param UseOpsworksSecurityGroups [Boolean] <p>Whether to associate the AWS OpsWorks Stacks built-in security groups with the stack's layers.</p> <p>AWS OpsWorks Stacks provides a standard set of built-in security groups, one for each layer, which are associated with layers by default. With <code>UseOpsworksSecurityGroups</code> you can instead provide your own custom security groups. <code>UseOpsworksSecurityGroups</code> has the following settings: </p> <ul> <li> <p>True - AWS OpsWorks Stacks automatically associates the appropriate built-in security group with each layer (default setting). You can associate additional security groups with a layer after you create it but you cannot delete the built-in security group.</p> </li> <li> <p>False - AWS OpsWorks Stacks does not associate built-in security groups with layers. You must create appropriate Amazon Elastic Compute Cloud (Amazon EC2) security groups and associate a security group with each layer that you create. However, you can still manually associate a built-in security group with a layer on creation; custom security groups are required only for those layers that need custom settings.</p> </li> </ul> <p>For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-creating.html">Create a New Stack</a>.</p>
-- @param ServiceRoleArn [String] <p>The stack AWS Identity and Access Management (IAM) role, which allows AWS OpsWorks Stacks to work with AWS resources on your behalf. You must set this parameter to the Amazon Resource Name (ARN) for an existing IAM role. If you create a stack by using the AWS OpsWorks Stacks console, it creates the role for you. You can obtain an existing stack's IAM ARN programmatically by calling <a>DescribePermissions</a>. For more information about IAM ARNs, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">Using Identifiers</a>.</p> <note> <p>You must set this parameter to a valid service role ARN or the action will fail; there is no default value. You can specify the source stack's service role ARN, if you prefer, but you must do so explicitly.</p> </note>
-- @param VpcId [String] <p>The ID of the VPC that the cloned stack is to be launched into. It must be in the specified region. All instances are launched into this VPC, and you cannot change the ID later.</p> <ul> <li> <p>If your account supports EC2 Classic, the default value is no VPC.</p> </li> <li> <p>If your account does not support EC2 Classic, the default value is the default VPC for the specified region.</p> </li> </ul> <p>If the VPC ID corresponds to a default VPC and you have specified either the <code>DefaultAvailabilityZone</code> or the <code>DefaultSubnetId</code> parameter only, AWS OpsWorks Stacks infers the value of the other parameter. If you specify neither parameter, AWS OpsWorks Stacks sets these parameters to the first valid Availability Zone for the specified region and the corresponding default VPC subnet ID, respectively. </p> <p>If you specify a nondefault VPC ID, note the following:</p> <ul> <li> <p>It must belong to a VPC in your account that is in the specified region.</p> </li> <li> <p>You must specify a value for <code>DefaultSubnetId</code>.</p> </li> </ul> <p>For more information on how to use AWS OpsWorks Stacks with a VPC, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-vpc.html">Running a Stack in a VPC</a>. For more information on default VPC and EC2 Classic, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-supported-platforms.html">Supported Platforms</a>. </p>
-- @param ConfigurationManager [StackConfigurationManager] <p>The configuration manager. When you clone a stack we recommend that you use the configuration manager to specify the Chef version: 12, 11.10, or 11.4 for Linux stacks, or 12.2 for Windows stacks. The default value for Linux stacks is currently 12.</p>
-- @param CustomCookbooksSource [Source]  
-- @param AgentVersion [String] <p>The default AWS OpsWorks Stacks agent version. You have the following options:</p> <ul> <li> <p>Auto-update - Set this parameter to <code>LATEST</code>. AWS OpsWorks Stacks automatically installs new agent versions on the stack's instances as soon as they are available.</p> </li> <li> <p>Fixed version - Set this parameter to your preferred agent version. To update the agent version, you must edit the stack configuration and specify a new version. AWS OpsWorks Stacks then automatically installs that version on the stack's instances.</p> </li> </ul> <p>The default setting is <code>LATEST</code>. To specify an agent version, you must use the complete version number, not the abbreviated number shown on the console. For a list of available agent version numbers, call <a>DescribeAgentVersions</a>. AgentVersion cannot be set to Chef 12.2.</p> <note> <p>You can also specify an agent version when you create or update an instance, which overrides the stack's default setting.</p> </note>
-- @param DefaultAvailabilityZone [String] <p>The cloned stack's default Availability Zone, which must be in the specified region. For more information, see <a href="http://docs.aws.amazon.com/general/latest/gr/rande.html">Regions and Endpoints</a>. If you also specify a value for <code>DefaultSubnetId</code>, the subnet must be in the same zone. For more information, see the <code>VpcId</code> parameter description. </p>
-- @param ClonePermissions [Boolean] <p>Whether to clone the source stack's permissions.</p>
-- @param Name [String] <p>The cloned stack name.</p>
-- @param Region [String] <p>The cloned stack AWS region, such as "ap-northeast-2". For more information about AWS regions, see <a href="http://docs.aws.amazon.com/general/latest/gr/rande.html">Regions and Endpoints</a>.</p>
-- @param SourceStackId [String] <p>The source stack ID.</p>
-- @param DefaultInstanceProfileArn [String] <p>The Amazon Resource Name (ARN) of an IAM profile that is the default profile for all of the stack's EC2 instances. For more information about IAM ARNs, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">Using Identifiers</a>.</p>
-- @param Attributes [StackAttributes] <p>A list of stack attributes and values as key/value pairs to be added to the cloned stack.</p>
-- @param DefaultOs [String] <p>The stack's operating system, which must be set to one of the following.</p> <ul> <li> <p>A supported Linux operating system: An Amazon Linux version, such as <code>Amazon Linux 2017.03</code>, <code>Amazon Linux 2016.09</code>, <code>Amazon Linux 2016.03</code>, <code>Amazon Linux 2015.09</code>, or <code>Amazon Linux 2015.03</code>.</p> </li> <li> <p>A supported Ubuntu operating system, such as <code>Ubuntu 16.04 LTS</code>, <code>Ubuntu 14.04 LTS</code>, or <code>Ubuntu 12.04 LTS</code>.</p> </li> <li> <p> <code>CentOS Linux 7</code> </p> </li> <li> <p> <code>Red Hat Enterprise Linux 7</code> </p> </li> <li> <p> <code>Microsoft Windows Server 2012 R2 Base</code>, <code>Microsoft Windows Server 2012 R2 with SQL Server Express</code>, <code>Microsoft Windows Server 2012 R2 with SQL Server Standard</code>, or <code>Microsoft Windows Server 2012 R2 with SQL Server Web</code>.</p> </li> <li> <p>A custom AMI: <code>Custom</code>. You specify the custom AMI you want to use when you create instances. For more information on how to use custom AMIs with OpsWorks, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-custom-ami.html">Using Custom AMIs</a>.</p> </li> </ul> <p>The default option is the parent stack's operating system. For more information on the supported operating systems, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-os.html">AWS OpsWorks Stacks Operating Systems</a>.</p> <note> <p>You can specify a different Linux operating system for the cloned stack, but you cannot change from Linux to Windows or Windows to Linux.</p> </note>
-- @param DefaultSubnetId [String] <p>The stack's default VPC subnet ID. This parameter is required if you specify a value for the <code>VpcId</code> parameter. All instances are launched into this subnet unless you specify otherwise when you create the instance. If you also specify a value for <code>DefaultAvailabilityZone</code>, the subnet must be in that zone. For information on default values and when this parameter is required, see the <code>VpcId</code> parameter description. </p>
-- @param DefaultRootDeviceType [RootDeviceType] <p>The default root device type. This value is used by default for all instances in the cloned stack, but you can override it when you create an instance. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ComponentsAMIs.html#storage-for-the-root-device">Storage for the Root Device</a>.</p>
-- @param CustomJson [String] <p>A string that contains user-defined, custom JSON. It is used to override the corresponding default stack configuration JSON values. The string should be in the following format:</p> <p> <code>"{\"key1\": \"value1\", \"key2\": \"value2\",...}"</code> </p> <p>For more information on custom JSON, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-json.html">Use Custom JSON to Modify the Stack Configuration Attributes</a> </p>
-- Required parameter: SourceStackId
-- Required parameter: ServiceRoleArn
function M.CloneStackRequest(HostnameTheme, UseCustomCookbooks, DefaultSshKeyName, CloneAppIds, ChefConfiguration, UseOpsworksSecurityGroups, ServiceRoleArn, VpcId, ConfigurationManager, CustomCookbooksSource, AgentVersion, DefaultAvailabilityZone, ClonePermissions, Name, Region, SourceStackId, DefaultInstanceProfileArn, Attributes, DefaultOs, DefaultSubnetId, DefaultRootDeviceType, CustomJson, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CloneStackRequest")
	local t = { 
		["HostnameTheme"] = HostnameTheme,
		["UseCustomCookbooks"] = UseCustomCookbooks,
		["DefaultSshKeyName"] = DefaultSshKeyName,
		["CloneAppIds"] = CloneAppIds,
		["ChefConfiguration"] = ChefConfiguration,
		["UseOpsworksSecurityGroups"] = UseOpsworksSecurityGroups,
		["ServiceRoleArn"] = ServiceRoleArn,
		["VpcId"] = VpcId,
		["ConfigurationManager"] = ConfigurationManager,
		["CustomCookbooksSource"] = CustomCookbooksSource,
		["AgentVersion"] = AgentVersion,
		["DefaultAvailabilityZone"] = DefaultAvailabilityZone,
		["ClonePermissions"] = ClonePermissions,
		["Name"] = Name,
		["Region"] = Region,
		["SourceStackId"] = SourceStackId,
		["DefaultInstanceProfileArn"] = DefaultInstanceProfileArn,
		["Attributes"] = Attributes,
		["DefaultOs"] = DefaultOs,
		["DefaultSubnetId"] = DefaultSubnetId,
		["DefaultRootDeviceType"] = DefaultRootDeviceType,
		["CustomJson"] = CustomJson,
	}
	M.AssertCloneStackRequest(t)
	return t
end

local CreateDeploymentRequest_keys = { "StackId" = true, "Comment" = true, "CustomJson" = true, "LayerIds" = true, "Command" = true, "AppId" = true, "InstanceIds" = true, nil }

function M.AssertCreateDeploymentRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDeploymentRequest to be of type 'table'")
	assert(struct["StackId"], "Expected key StackId to exist in table")
	assert(struct["Command"], "Expected key Command to exist in table")
	if struct["StackId"] then M.AssertString(struct["StackId"]) end
	if struct["Comment"] then M.AssertString(struct["Comment"]) end
	if struct["CustomJson"] then M.AssertString(struct["CustomJson"]) end
	if struct["LayerIds"] then M.AssertStrings(struct["LayerIds"]) end
	if struct["Command"] then M.AssertDeploymentCommand(struct["Command"]) end
	if struct["AppId"] then M.AssertString(struct["AppId"]) end
	if struct["InstanceIds"] then M.AssertStrings(struct["InstanceIds"]) end
	for k,_ in pairs(struct) do
		assert(CreateDeploymentRequest_keys[k], "CreateDeploymentRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDeploymentRequest
--  
-- @param StackId [String] <p>The stack ID.</p>
-- @param Comment [String] <p>A user-defined comment.</p>
-- @param CustomJson [String] <p>A string that contains user-defined, custom JSON. It is used to override the corresponding default stack configuration JSON values. The string should be in the following format:</p> <p> <code>"{\"key1\": \"value1\", \"key2\": \"value2\",...}"</code> </p> <p>For more information on custom JSON, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-json.html">Use Custom JSON to Modify the Stack Configuration Attributes</a>.</p>
-- @param LayerIds [Strings] <p>The layer IDs for the deployment targets.</p>
-- @param Command [DeploymentCommand] <p>A <code>DeploymentCommand</code> object that specifies the deployment command and any associated arguments.</p>
-- @param AppId [String] <p>The app ID. This parameter is required for app deployments, but not for other deployment commands.</p>
-- @param InstanceIds [Strings] <p>The instance IDs for the deployment targets.</p>
-- Required parameter: StackId
-- Required parameter: Command
function M.CreateDeploymentRequest(StackId, Comment, CustomJson, LayerIds, Command, AppId, InstanceIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDeploymentRequest")
	local t = { 
		["StackId"] = StackId,
		["Comment"] = Comment,
		["CustomJson"] = CustomJson,
		["LayerIds"] = LayerIds,
		["Command"] = Command,
		["AppId"] = AppId,
		["InstanceIds"] = InstanceIds,
	}
	M.AssertCreateDeploymentRequest(t)
	return t
end

local DescribeStacksRequest_keys = { "StackIds" = true, nil }

function M.AssertDescribeStacksRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeStacksRequest to be of type 'table'")
	if struct["StackIds"] then M.AssertStrings(struct["StackIds"]) end
	for k,_ in pairs(struct) do
		assert(DescribeStacksRequest_keys[k], "DescribeStacksRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeStacksRequest
--  
-- @param StackIds [Strings] <p>An array of stack IDs that specify the stacks to be described. If you omit this parameter, <code>DescribeStacks</code> returns a description of every stack.</p>
function M.DescribeStacksRequest(StackIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeStacksRequest")
	local t = { 
		["StackIds"] = StackIds,
	}
	M.AssertDescribeStacksRequest(t)
	return t
end

local Source_keys = { "Username" = true, "SshKey" = true, "Url" = true, "Password" = true, "Type" = true, "Revision" = true, nil }

function M.AssertSource(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Source to be of type 'table'")
	if struct["Username"] then M.AssertString(struct["Username"]) end
	if struct["SshKey"] then M.AssertString(struct["SshKey"]) end
	if struct["Url"] then M.AssertString(struct["Url"]) end
	if struct["Password"] then M.AssertString(struct["Password"]) end
	if struct["Type"] then M.AssertSourceType(struct["Type"]) end
	if struct["Revision"] then M.AssertString(struct["Revision"]) end
	for k,_ in pairs(struct) do
		assert(Source_keys[k], "Source contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Source
-- <p>Contains the information required to retrieve an app or cookbook from a repository. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html">Creating Apps</a> or <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook.html">Custom Recipes and Cookbooks</a>.</p>
-- @param Username [String] <p>This parameter depends on the repository type.</p> <ul> <li> <p>For Amazon S3 bundles, set <code>Username</code> to the appropriate IAM access key ID.</p> </li> <li> <p>For HTTP bundles, Git repositories, and Subversion repositories, set <code>Username</code> to the user name.</p> </li> </ul>
-- @param SshKey [String] <p>In requests, the repository's SSH key.</p> <p>In responses, AWS OpsWorks Stacks returns <code>*****FILTERED*****</code> instead of the actual value.</p>
-- @param Url [String] <p>The source URL. The following is an example of an Amazon S3 source URL: <code>https://s3.amazonaws.com/opsworks-demo-bucket/opsworks_cookbook_demo.tar.gz</code>.</p>
-- @param Password [String] <p>When included in a request, the parameter depends on the repository type.</p> <ul> <li> <p>For Amazon S3 bundles, set <code>Password</code> to the appropriate IAM secret access key.</p> </li> <li> <p>For HTTP bundles and Subversion repositories, set <code>Password</code> to the password.</p> </li> </ul> <p>For more information on how to safely handle IAM credentials, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws-access-keys-best-practices.html">http://docs.aws.amazon.com/general/latest/gr/aws-access-keys-best-practices.html</a>.</p> <p>In responses, AWS OpsWorks Stacks returns <code>*****FILTERED*****</code> instead of the actual value.</p>
-- @param Type [SourceType] <p>The repository type.</p>
-- @param Revision [String] <p>The application's version. AWS OpsWorks Stacks enables you to easily deploy new versions of an application. One of the simplest approaches is to have branches or revisions in your repository that represent different versions that can potentially be deployed.</p>
function M.Source(Username, SshKey, Url, Password, Type, Revision, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Source")
	local t = { 
		["Username"] = Username,
		["SshKey"] = SshKey,
		["Url"] = Url,
		["Password"] = Password,
		["Type"] = Type,
		["Revision"] = Revision,
	}
	M.AssertSource(t)
	return t
end

local DescribeInstancesResult_keys = { "Instances" = true, nil }

function M.AssertDescribeInstancesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeInstancesResult to be of type 'table'")
	if struct["Instances"] then M.AssertInstances(struct["Instances"]) end
	for k,_ in pairs(struct) do
		assert(DescribeInstancesResult_keys[k], "DescribeInstancesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeInstancesResult
-- <p>Contains the response to a <code>DescribeInstances</code> request.</p>
-- @param Instances [Instances] <p>An array of <code>Instance</code> objects that describe the instances.</p>
function M.DescribeInstancesResult(Instances, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeInstancesResult")
	local t = { 
		["Instances"] = Instances,
	}
	M.AssertDescribeInstancesResult(t)
	return t
end

local DescribeElasticIpsResult_keys = { "ElasticIps" = true, nil }

function M.AssertDescribeElasticIpsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeElasticIpsResult to be of type 'table'")
	if struct["ElasticIps"] then M.AssertElasticIps(struct["ElasticIps"]) end
	for k,_ in pairs(struct) do
		assert(DescribeElasticIpsResult_keys[k], "DescribeElasticIpsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeElasticIpsResult
-- <p>Contains the response to a <code>DescribeElasticIps</code> request.</p>
-- @param ElasticIps [ElasticIps] <p>An <code>ElasticIps</code> object that describes the specified Elastic IP addresses.</p>
function M.DescribeElasticIpsResult(ElasticIps, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeElasticIpsResult")
	local t = { 
		["ElasticIps"] = ElasticIps,
	}
	M.AssertDescribeElasticIpsResult(t)
	return t
end

local UpdateElasticIpRequest_keys = { "Name" = true, "ElasticIp" = true, nil }

function M.AssertUpdateElasticIpRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateElasticIpRequest to be of type 'table'")
	assert(struct["ElasticIp"], "Expected key ElasticIp to exist in table")
	if struct["Name"] then M.AssertString(struct["Name"]) end
	if struct["ElasticIp"] then M.AssertString(struct["ElasticIp"]) end
	for k,_ in pairs(struct) do
		assert(UpdateElasticIpRequest_keys[k], "UpdateElasticIpRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateElasticIpRequest
--  
-- @param Name [String] <p>The new name.</p>
-- @param ElasticIp [String] <p>The address.</p>
-- Required parameter: ElasticIp
function M.UpdateElasticIpRequest(Name, ElasticIp, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateElasticIpRequest")
	local t = { 
		["Name"] = Name,
		["ElasticIp"] = ElasticIp,
	}
	M.AssertUpdateElasticIpRequest(t)
	return t
end

local Permission_keys = { "StackId" = true, "IamUserArn" = true, "Level" = true, "AllowSudo" = true, "AllowSsh" = true, nil }

function M.AssertPermission(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Permission to be of type 'table'")
	if struct["StackId"] then M.AssertString(struct["StackId"]) end
	if struct["IamUserArn"] then M.AssertString(struct["IamUserArn"]) end
	if struct["Level"] then M.AssertString(struct["Level"]) end
	if struct["AllowSudo"] then M.AssertBoolean(struct["AllowSudo"]) end
	if struct["AllowSsh"] then M.AssertBoolean(struct["AllowSsh"]) end
	for k,_ in pairs(struct) do
		assert(Permission_keys[k], "Permission contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Permission
-- <p>Describes stack or user permissions.</p>
-- @param StackId [String] <p>A stack ID.</p>
-- @param IamUserArn [String] <p>The Amazon Resource Name (ARN) for an AWS Identity and Access Management (IAM) role. For more information about IAM ARNs, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">Using Identifiers</a>.</p>
-- @param Level [String] <p>The user's permission level, which must be the following:</p> <ul> <li> <p> <code>deny</code> </p> </li> <li> <p> <code>show</code> </p> </li> <li> <p> <code>deploy</code> </p> </li> <li> <p> <code>manage</code> </p> </li> <li> <p> <code>iam_only</code> </p> </li> </ul> <p>For more information on the permissions associated with these levels, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a> </p>
-- @param AllowSudo [Boolean] <p>Whether the user can use <b>sudo</b>.</p>
-- @param AllowSsh [Boolean] <p>Whether the user can use SSH.</p>
function M.Permission(StackId, IamUserArn, Level, AllowSudo, AllowSsh, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Permission")
	local t = { 
		["StackId"] = StackId,
		["IamUserArn"] = IamUserArn,
		["Level"] = Level,
		["AllowSudo"] = AllowSudo,
		["AllowSsh"] = AllowSsh,
	}
	M.AssertPermission(t)
	return t
end

local AssociateElasticIpRequest_keys = { "InstanceId" = true, "ElasticIp" = true, nil }

function M.AssertAssociateElasticIpRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssociateElasticIpRequest to be of type 'table'")
	assert(struct["ElasticIp"], "Expected key ElasticIp to exist in table")
	if struct["InstanceId"] then M.AssertString(struct["InstanceId"]) end
	if struct["ElasticIp"] then M.AssertString(struct["ElasticIp"]) end
	for k,_ in pairs(struct) do
		assert(AssociateElasticIpRequest_keys[k], "AssociateElasticIpRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssociateElasticIpRequest
--  
-- @param InstanceId [String] <p>The instance ID.</p>
-- @param ElasticIp [String] <p>The Elastic IP address.</p>
-- Required parameter: ElasticIp
function M.AssociateElasticIpRequest(InstanceId, ElasticIp, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AssociateElasticIpRequest")
	local t = { 
		["InstanceId"] = InstanceId,
		["ElasticIp"] = ElasticIp,
	}
	M.AssertAssociateElasticIpRequest(t)
	return t
end

local DetachElasticLoadBalancerRequest_keys = { "ElasticLoadBalancerName" = true, "LayerId" = true, nil }

function M.AssertDetachElasticLoadBalancerRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DetachElasticLoadBalancerRequest to be of type 'table'")
	assert(struct["ElasticLoadBalancerName"], "Expected key ElasticLoadBalancerName to exist in table")
	assert(struct["LayerId"], "Expected key LayerId to exist in table")
	if struct["ElasticLoadBalancerName"] then M.AssertString(struct["ElasticLoadBalancerName"]) end
	if struct["LayerId"] then M.AssertString(struct["LayerId"]) end
	for k,_ in pairs(struct) do
		assert(DetachElasticLoadBalancerRequest_keys[k], "DetachElasticLoadBalancerRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DetachElasticLoadBalancerRequest
--  
-- @param ElasticLoadBalancerName [String] <p>The Elastic Load Balancing instance's name.</p>
-- @param LayerId [String] <p>The ID of the layer that the Elastic Load Balancing instance is attached to.</p>
-- Required parameter: ElasticLoadBalancerName
-- Required parameter: LayerId
function M.DetachElasticLoadBalancerRequest(ElasticLoadBalancerName, LayerId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DetachElasticLoadBalancerRequest")
	local t = { 
		["ElasticLoadBalancerName"] = ElasticLoadBalancerName,
		["LayerId"] = LayerId,
	}
	M.AssertDetachElasticLoadBalancerRequest(t)
	return t
end

local CreateUserProfileResult_keys = { "IamUserArn" = true, nil }

function M.AssertCreateUserProfileResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateUserProfileResult to be of type 'table'")
	if struct["IamUserArn"] then M.AssertString(struct["IamUserArn"]) end
	for k,_ in pairs(struct) do
		assert(CreateUserProfileResult_keys[k], "CreateUserProfileResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateUserProfileResult
-- <p>Contains the response to a <code>CreateUserProfile</code> request.</p>
-- @param IamUserArn [String] <p>The user's IAM ARN.</p>
function M.CreateUserProfileResult(IamUserArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateUserProfileResult")
	local t = { 
		["IamUserArn"] = IamUserArn,
	}
	M.AssertCreateUserProfileResult(t)
	return t
end

local SelfUserProfile_keys = { "IamUserArn" = true, "SshPublicKey" = true, "Name" = true, "SshUsername" = true, nil }

function M.AssertSelfUserProfile(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SelfUserProfile to be of type 'table'")
	if struct["IamUserArn"] then M.AssertString(struct["IamUserArn"]) end
	if struct["SshPublicKey"] then M.AssertString(struct["SshPublicKey"]) end
	if struct["Name"] then M.AssertString(struct["Name"]) end
	if struct["SshUsername"] then M.AssertString(struct["SshUsername"]) end
	for k,_ in pairs(struct) do
		assert(SelfUserProfile_keys[k], "SelfUserProfile contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SelfUserProfile
-- <p>Describes a user's SSH information.</p>
-- @param IamUserArn [String] <p>The user's IAM ARN.</p>
-- @param SshPublicKey [String] <p>The user's SSH public key.</p>
-- @param Name [String] <p>The user's name.</p>
-- @param SshUsername [String] <p>The user's SSH user name.</p>
function M.SelfUserProfile(IamUserArn, SshPublicKey, Name, SshUsername, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SelfUserProfile")
	local t = { 
		["IamUserArn"] = IamUserArn,
		["SshPublicKey"] = SshPublicKey,
		["Name"] = Name,
		["SshUsername"] = SshUsername,
	}
	M.AssertSelfUserProfile(t)
	return t
end

local UpdateStackRequest_keys = { "StackId" = true, "ServiceRoleArn" = true, "DefaultRootDeviceType" = true, "Name" = true, "HostnameTheme" = true, "UseCustomCookbooks" = true, "CustomJson" = true, "DefaultAvailabilityZone" = true, "UseOpsworksSecurityGroups" = true, "CustomCookbooksSource" = true, "ConfigurationManager" = true, "ChefConfiguration" = true, "DefaultSubnetId" = true, "DefaultSshKeyName" = true, "DefaultInstanceProfileArn" = true, "Attributes" = true, "DefaultOs" = true, "AgentVersion" = true, nil }

function M.AssertUpdateStackRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateStackRequest to be of type 'table'")
	assert(struct["StackId"], "Expected key StackId to exist in table")
	if struct["StackId"] then M.AssertString(struct["StackId"]) end
	if struct["ServiceRoleArn"] then M.AssertString(struct["ServiceRoleArn"]) end
	if struct["DefaultRootDeviceType"] then M.AssertRootDeviceType(struct["DefaultRootDeviceType"]) end
	if struct["Name"] then M.AssertString(struct["Name"]) end
	if struct["HostnameTheme"] then M.AssertString(struct["HostnameTheme"]) end
	if struct["UseCustomCookbooks"] then M.AssertBoolean(struct["UseCustomCookbooks"]) end
	if struct["CustomJson"] then M.AssertString(struct["CustomJson"]) end
	if struct["DefaultAvailabilityZone"] then M.AssertString(struct["DefaultAvailabilityZone"]) end
	if struct["UseOpsworksSecurityGroups"] then M.AssertBoolean(struct["UseOpsworksSecurityGroups"]) end
	if struct["CustomCookbooksSource"] then M.AssertSource(struct["CustomCookbooksSource"]) end
	if struct["ConfigurationManager"] then M.AssertStackConfigurationManager(struct["ConfigurationManager"]) end
	if struct["ChefConfiguration"] then M.AssertChefConfiguration(struct["ChefConfiguration"]) end
	if struct["DefaultSubnetId"] then M.AssertString(struct["DefaultSubnetId"]) end
	if struct["DefaultSshKeyName"] then M.AssertString(struct["DefaultSshKeyName"]) end
	if struct["DefaultInstanceProfileArn"] then M.AssertString(struct["DefaultInstanceProfileArn"]) end
	if struct["Attributes"] then M.AssertStackAttributes(struct["Attributes"]) end
	if struct["DefaultOs"] then M.AssertString(struct["DefaultOs"]) end
	if struct["AgentVersion"] then M.AssertString(struct["AgentVersion"]) end
	for k,_ in pairs(struct) do
		assert(UpdateStackRequest_keys[k], "UpdateStackRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateStackRequest
--  
-- @param StackId [String] <p>The stack ID.</p>
-- @param ServiceRoleArn [String] <p>Do not use this parameter. You cannot update a stack's service role.</p>
-- @param DefaultRootDeviceType [RootDeviceType] <p>The default root device type. This value is used by default for all instances in the stack, but you can override it when you create an instance. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ComponentsAMIs.html#storage-for-the-root-device">Storage for the Root Device</a>.</p>
-- @param Name [String] <p>The stack's new name.</p>
-- @param HostnameTheme [String] <p>The stack's new host name theme, with spaces replaced by underscores. The theme is used to generate host names for the stack's instances. By default, <code>HostnameTheme</code> is set to <code>Layer_Dependent</code>, which creates host names by appending integers to the layer's short name. The other themes are:</p> <ul> <li> <p> <code>Baked_Goods</code> </p> </li> <li> <p> <code>Clouds</code> </p> </li> <li> <p> <code>Europe_Cities</code> </p> </li> <li> <p> <code>Fruits</code> </p> </li> <li> <p> <code>Greek_Deities</code> </p> </li> <li> <p> <code>Legendary_creatures_from_Japan</code> </p> </li> <li> <p> <code>Planets_and_Moons</code> </p> </li> <li> <p> <code>Roman_Deities</code> </p> </li> <li> <p> <code>Scottish_Islands</code> </p> </li> <li> <p> <code>US_Cities</code> </p> </li> <li> <p> <code>Wild_Cats</code> </p> </li> </ul> <p>To obtain a generated host name, call <code>GetHostNameSuggestion</code>, which returns a host name based on the current theme.</p>
-- @param UseCustomCookbooks [Boolean] <p>Whether the stack uses custom cookbooks.</p>
-- @param CustomJson [String] <p>A string that contains user-defined, custom JSON. It can be used to override the corresponding default stack configuration JSON values or to pass data to recipes. The string should be in the following format:</p> <p> <code>"{\"key1\": \"value1\", \"key2\": \"value2\",...}"</code> </p> <p>For more information on custom JSON, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-json.html">Use Custom JSON to Modify the Stack Configuration Attributes</a>.</p>
-- @param DefaultAvailabilityZone [String] <p>The stack's default Availability Zone, which must be in the stack's region. For more information, see <a href="http://docs.aws.amazon.com/general/latest/gr/rande.html">Regions and Endpoints</a>. If you also specify a value for <code>DefaultSubnetId</code>, the subnet must be in the same zone. For more information, see <a>CreateStack</a>. </p>
-- @param UseOpsworksSecurityGroups [Boolean] <p>Whether to associate the AWS OpsWorks Stacks built-in security groups with the stack's layers.</p> <p>AWS OpsWorks Stacks provides a standard set of built-in security groups, one for each layer, which are associated with layers by default. <code>UseOpsworksSecurityGroups</code> allows you to provide your own custom security groups instead of using the built-in groups. <code>UseOpsworksSecurityGroups</code> has the following settings: </p> <ul> <li> <p>True - AWS OpsWorks Stacks automatically associates the appropriate built-in security group with each layer (default setting). You can associate additional security groups with a layer after you create it, but you cannot delete the built-in security group.</p> </li> <li> <p>False - AWS OpsWorks Stacks does not associate built-in security groups with layers. You must create appropriate EC2 security groups and associate a security group with each layer that you create. However, you can still manually associate a built-in security group with a layer on. Custom security groups are required only for those layers that need custom settings.</p> </li> </ul> <p>For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-creating.html">Create a New Stack</a>.</p>
-- @param CustomCookbooksSource [Source]  
-- @param ConfigurationManager [StackConfigurationManager] <p>The configuration manager. When you update a stack, we recommend that you use the configuration manager to specify the Chef version: 12, 11.10, or 11.4 for Linux stacks, or 12.2 for Windows stacks. The default value for Linux stacks is currently 11.4.</p>
-- @param ChefConfiguration [ChefConfiguration] <p>A <code>ChefConfiguration</code> object that specifies whether to enable Berkshelf and the Berkshelf version on Chef 11.10 stacks. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-creating.html">Create a New Stack</a>.</p>
-- @param DefaultSubnetId [String] <p>The stack's default VPC subnet ID. This parameter is required if you specify a value for the <code>VpcId</code> parameter. All instances are launched into this subnet unless you specify otherwise when you create the instance. If you also specify a value for <code>DefaultAvailabilityZone</code>, the subnet must be in that zone. For information on default values and when this parameter is required, see the <code>VpcId</code> parameter description. </p>
-- @param DefaultSshKeyName [String] <p>A default Amazon EC2 key-pair name. The default value is <code>none</code>. If you specify a key-pair name, AWS OpsWorks Stacks installs the public key on the instance and you can use the private key with an SSH client to log in to the instance. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-ssh.html"> Using SSH to Communicate with an Instance</a> and <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/security-ssh-access.html"> Managing SSH Access</a>. You can override this setting by specifying a different key pair, or no key pair, when you <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-add.html"> create an instance</a>. </p>
-- @param DefaultInstanceProfileArn [String] <p>The ARN of an IAM profile that is the default profile for all of the stack's EC2 instances. For more information about IAM ARNs, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">Using Identifiers</a>.</p>
-- @param Attributes [StackAttributes] <p>One or more user-defined key-value pairs to be added to the stack attributes.</p>
-- @param DefaultOs [String] <p>The stack's operating system, which must be set to one of the following:</p> <ul> <li> <p>A supported Linux operating system: An Amazon Linux version, such as <code>Amazon Linux 2017.03</code>, <code>Amazon Linux 2016.09</code>, <code>Amazon Linux 2016.03</code>, <code>Amazon Linux 2015.09</code>, or <code>Amazon Linux 2015.03</code>.</p> </li> <li> <p>A supported Ubuntu operating system, such as <code>Ubuntu 16.04 LTS</code>, <code>Ubuntu 14.04 LTS</code>, or <code>Ubuntu 12.04 LTS</code>.</p> </li> <li> <p> <code>CentOS Linux 7</code> </p> </li> <li> <p> <code>Red Hat Enterprise Linux 7</code> </p> </li> <li> <p>A supported Windows operating system, such as <code>Microsoft Windows Server 2012 R2 Base</code>, <code>Microsoft Windows Server 2012 R2 with SQL Server Express</code>, <code>Microsoft Windows Server 2012 R2 with SQL Server Standard</code>, or <code>Microsoft Windows Server 2012 R2 with SQL Server Web</code>.</p> </li> <li> <p>A custom AMI: <code>Custom</code>. You specify the custom AMI you want to use when you create instances. For more information on how to use custom AMIs with OpsWorks, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-custom-ami.html">Using Custom AMIs</a>.</p> </li> </ul> <p>The default option is the stack's current operating system. For more information on the supported operating systems, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-os.html">AWS OpsWorks Stacks Operating Systems</a>.</p>
-- @param AgentVersion [String] <p>The default AWS OpsWorks Stacks agent version. You have the following options:</p> <ul> <li> <p>Auto-update - Set this parameter to <code>LATEST</code>. AWS OpsWorks Stacks automatically installs new agent versions on the stack's instances as soon as they are available.</p> </li> <li> <p>Fixed version - Set this parameter to your preferred agent version. To update the agent version, you must edit the stack configuration and specify a new version. AWS OpsWorks Stacks then automatically installs that version on the stack's instances.</p> </li> </ul> <p>The default setting is <code>LATEST</code>. To specify an agent version, you must use the complete version number, not the abbreviated number shown on the console. For a list of available agent version numbers, call <a>DescribeAgentVersions</a>. AgentVersion cannot be set to Chef 12.2.</p> <note> <p>You can also specify an agent version when you create or update an instance, which overrides the stack's default setting.</p> </note>
-- Required parameter: StackId
function M.UpdateStackRequest(StackId, ServiceRoleArn, DefaultRootDeviceType, Name, HostnameTheme, UseCustomCookbooks, CustomJson, DefaultAvailabilityZone, UseOpsworksSecurityGroups, CustomCookbooksSource, ConfigurationManager, ChefConfiguration, DefaultSubnetId, DefaultSshKeyName, DefaultInstanceProfileArn, Attributes, DefaultOs, AgentVersion, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateStackRequest")
	local t = { 
		["StackId"] = StackId,
		["ServiceRoleArn"] = ServiceRoleArn,
		["DefaultRootDeviceType"] = DefaultRootDeviceType,
		["Name"] = Name,
		["HostnameTheme"] = HostnameTheme,
		["UseCustomCookbooks"] = UseCustomCookbooks,
		["CustomJson"] = CustomJson,
		["DefaultAvailabilityZone"] = DefaultAvailabilityZone,
		["UseOpsworksSecurityGroups"] = UseOpsworksSecurityGroups,
		["CustomCookbooksSource"] = CustomCookbooksSource,
		["ConfigurationManager"] = ConfigurationManager,
		["ChefConfiguration"] = ChefConfiguration,
		["DefaultSubnetId"] = DefaultSubnetId,
		["DefaultSshKeyName"] = DefaultSshKeyName,
		["DefaultInstanceProfileArn"] = DefaultInstanceProfileArn,
		["Attributes"] = Attributes,
		["DefaultOs"] = DefaultOs,
		["AgentVersion"] = AgentVersion,
	}
	M.AssertUpdateStackRequest(t)
	return t
end

local AgentVersion_keys = { "Version" = true, "ConfigurationManager" = true, nil }

function M.AssertAgentVersion(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AgentVersion to be of type 'table'")
	if struct["Version"] then M.AssertString(struct["Version"]) end
	if struct["ConfigurationManager"] then M.AssertStackConfigurationManager(struct["ConfigurationManager"]) end
	for k,_ in pairs(struct) do
		assert(AgentVersion_keys[k], "AgentVersion contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AgentVersion
-- <p>Describes an agent version.</p>
-- @param Version [String] <p>The agent version.</p>
-- @param ConfigurationManager [StackConfigurationManager] <p>The configuration manager.</p>
function M.AgentVersion(Version, ConfigurationManager, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AgentVersion")
	local t = { 
		["Version"] = Version,
		["ConfigurationManager"] = ConfigurationManager,
	}
	M.AssertAgentVersion(t)
	return t
end

local CloneStackResult_keys = { "StackId" = true, nil }

function M.AssertCloneStackResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CloneStackResult to be of type 'table'")
	if struct["StackId"] then M.AssertString(struct["StackId"]) end
	for k,_ in pairs(struct) do
		assert(CloneStackResult_keys[k], "CloneStackResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CloneStackResult
-- <p>Contains the response to a <code>CloneStack</code> request.</p>
-- @param StackId [String] <p>The cloned stack ID.</p>
function M.CloneStackResult(StackId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CloneStackResult")
	local t = { 
		["StackId"] = StackId,
	}
	M.AssertCloneStackResult(t)
	return t
end

local StopStackRequest_keys = { "StackId" = true, nil }

function M.AssertStopStackRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopStackRequest to be of type 'table'")
	assert(struct["StackId"], "Expected key StackId to exist in table")
	if struct["StackId"] then M.AssertString(struct["StackId"]) end
	for k,_ in pairs(struct) do
		assert(StopStackRequest_keys[k], "StopStackRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopStackRequest
--  
-- @param StackId [String] <p>The stack ID.</p>
-- Required parameter: StackId
function M.StopStackRequest(StackId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StopStackRequest")
	local t = { 
		["StackId"] = StackId,
	}
	M.AssertStopStackRequest(t)
	return t
end

local GetHostnameSuggestionRequest_keys = { "LayerId" = true, nil }

function M.AssertGetHostnameSuggestionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetHostnameSuggestionRequest to be of type 'table'")
	assert(struct["LayerId"], "Expected key LayerId to exist in table")
	if struct["LayerId"] then M.AssertString(struct["LayerId"]) end
	for k,_ in pairs(struct) do
		assert(GetHostnameSuggestionRequest_keys[k], "GetHostnameSuggestionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetHostnameSuggestionRequest
--  
-- @param LayerId [String] <p>The layer ID.</p>
-- Required parameter: LayerId
function M.GetHostnameSuggestionRequest(LayerId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetHostnameSuggestionRequest")
	local t = { 
		["LayerId"] = LayerId,
	}
	M.AssertGetHostnameSuggestionRequest(t)
	return t
end

local DescribeStackProvisioningParametersRequest_keys = { "StackId" = true, nil }

function M.AssertDescribeStackProvisioningParametersRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeStackProvisioningParametersRequest to be of type 'table'")
	assert(struct["StackId"], "Expected key StackId to exist in table")
	if struct["StackId"] then M.AssertString(struct["StackId"]) end
	for k,_ in pairs(struct) do
		assert(DescribeStackProvisioningParametersRequest_keys[k], "DescribeStackProvisioningParametersRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeStackProvisioningParametersRequest
--  
-- @param StackId [String] <p>The stack ID</p>
-- Required parameter: StackId
function M.DescribeStackProvisioningParametersRequest(StackId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeStackProvisioningParametersRequest")
	local t = { 
		["StackId"] = StackId,
	}
	M.AssertDescribeStackProvisioningParametersRequest(t)
	return t
end

local UpdateUserProfileRequest_keys = { "IamUserArn" = true, "SshPublicKey" = true, "AllowSelfManagement" = true, "SshUsername" = true, nil }

function M.AssertUpdateUserProfileRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateUserProfileRequest to be of type 'table'")
	assert(struct["IamUserArn"], "Expected key IamUserArn to exist in table")
	if struct["IamUserArn"] then M.AssertString(struct["IamUserArn"]) end
	if struct["SshPublicKey"] then M.AssertString(struct["SshPublicKey"]) end
	if struct["AllowSelfManagement"] then M.AssertBoolean(struct["AllowSelfManagement"]) end
	if struct["SshUsername"] then M.AssertString(struct["SshUsername"]) end
	for k,_ in pairs(struct) do
		assert(UpdateUserProfileRequest_keys[k], "UpdateUserProfileRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateUserProfileRequest
--  
-- @param IamUserArn [String] <p>The user IAM ARN. This can also be a federated user's ARN.</p>
-- @param SshPublicKey [String] <p>The user's new SSH public key.</p>
-- @param AllowSelfManagement [Boolean] <p>Whether users can specify their own SSH public key through the My Settings page. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/security-settingsshkey.html">Managing User Permissions</a>.</p>
-- @param SshUsername [String] <p>The user's SSH user name. The allowable characters are [a-z], [A-Z], [0-9], '-', and '_'. If the specified name includes other punctuation marks, AWS OpsWorks Stacks removes them. For example, <code>my.name</code> will be changed to <code>myname</code>. If you do not specify an SSH user name, AWS OpsWorks Stacks generates one from the IAM user name. </p>
-- Required parameter: IamUserArn
function M.UpdateUserProfileRequest(IamUserArn, SshPublicKey, AllowSelfManagement, SshUsername, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateUserProfileRequest")
	local t = { 
		["IamUserArn"] = IamUserArn,
		["SshPublicKey"] = SshPublicKey,
		["AllowSelfManagement"] = AllowSelfManagement,
		["SshUsername"] = SshUsername,
	}
	M.AssertUpdateUserProfileRequest(t)
	return t
end

local RegisterRdsDbInstanceRequest_keys = { "StackId" = true, "DbUser" = true, "RdsDbInstanceArn" = true, "DbPassword" = true, nil }

function M.AssertRegisterRdsDbInstanceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RegisterRdsDbInstanceRequest to be of type 'table'")
	assert(struct["StackId"], "Expected key StackId to exist in table")
	assert(struct["RdsDbInstanceArn"], "Expected key RdsDbInstanceArn to exist in table")
	assert(struct["DbUser"], "Expected key DbUser to exist in table")
	assert(struct["DbPassword"], "Expected key DbPassword to exist in table")
	if struct["StackId"] then M.AssertString(struct["StackId"]) end
	if struct["DbUser"] then M.AssertString(struct["DbUser"]) end
	if struct["RdsDbInstanceArn"] then M.AssertString(struct["RdsDbInstanceArn"]) end
	if struct["DbPassword"] then M.AssertString(struct["DbPassword"]) end
	for k,_ in pairs(struct) do
		assert(RegisterRdsDbInstanceRequest_keys[k], "RegisterRdsDbInstanceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RegisterRdsDbInstanceRequest
--  
-- @param StackId [String] <p>The stack ID.</p>
-- @param DbUser [String] <p>The database's master user name.</p>
-- @param RdsDbInstanceArn [String] <p>The Amazon RDS instance's ARN.</p>
-- @param DbPassword [String] <p>The database password.</p>
-- Required parameter: StackId
-- Required parameter: RdsDbInstanceArn
-- Required parameter: DbUser
-- Required parameter: DbPassword
function M.RegisterRdsDbInstanceRequest(StackId, DbUser, RdsDbInstanceArn, DbPassword, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RegisterRdsDbInstanceRequest")
	local t = { 
		["StackId"] = StackId,
		["DbUser"] = DbUser,
		["RdsDbInstanceArn"] = RdsDbInstanceArn,
		["DbPassword"] = DbPassword,
	}
	M.AssertRegisterRdsDbInstanceRequest(t)
	return t
end

local DescribeLayersRequest_keys = { "StackId" = true, "LayerIds" = true, nil }

function M.AssertDescribeLayersRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeLayersRequest to be of type 'table'")
	if struct["StackId"] then M.AssertString(struct["StackId"]) end
	if struct["LayerIds"] then M.AssertStrings(struct["LayerIds"]) end
	for k,_ in pairs(struct) do
		assert(DescribeLayersRequest_keys[k], "DescribeLayersRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeLayersRequest
--  
-- @param StackId [String] <p>The stack ID.</p>
-- @param LayerIds [Strings] <p>An array of layer IDs that specify the layers to be described. If you omit this parameter, <code>DescribeLayers</code> returns a description of every layer in the specified stack.</p>
function M.DescribeLayersRequest(StackId, LayerIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeLayersRequest")
	local t = { 
		["StackId"] = StackId,
		["LayerIds"] = LayerIds,
	}
	M.AssertDescribeLayersRequest(t)
	return t
end

local Command_keys = { "Status" = true, "CompletedAt" = true, "InstanceId" = true, "DeploymentId" = true, "AcknowledgedAt" = true, "LogUrl" = true, "Type" = true, "CommandId" = true, "CreatedAt" = true, "ExitCode" = true, nil }

function M.AssertCommand(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Command to be of type 'table'")
	if struct["Status"] then M.AssertString(struct["Status"]) end
	if struct["CompletedAt"] then M.AssertDateTime(struct["CompletedAt"]) end
	if struct["InstanceId"] then M.AssertString(struct["InstanceId"]) end
	if struct["DeploymentId"] then M.AssertString(struct["DeploymentId"]) end
	if struct["AcknowledgedAt"] then M.AssertDateTime(struct["AcknowledgedAt"]) end
	if struct["LogUrl"] then M.AssertString(struct["LogUrl"]) end
	if struct["Type"] then M.AssertString(struct["Type"]) end
	if struct["CommandId"] then M.AssertString(struct["CommandId"]) end
	if struct["CreatedAt"] then M.AssertDateTime(struct["CreatedAt"]) end
	if struct["ExitCode"] then M.AssertInteger(struct["ExitCode"]) end
	for k,_ in pairs(struct) do
		assert(Command_keys[k], "Command contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Command
-- <p>Describes a command.</p>
-- @param Status [String] <p>The command status:</p> <ul> <li> <p>failed</p> </li> <li> <p>successful</p> </li> <li> <p>skipped</p> </li> <li> <p>pending</p> </li> </ul>
-- @param CompletedAt [DateTime] <p>Date when the command completed.</p>
-- @param InstanceId [String] <p>The ID of the instance where the command was executed.</p>
-- @param DeploymentId [String] <p>The command deployment ID.</p>
-- @param AcknowledgedAt [DateTime] <p>Date and time when the command was acknowledged.</p>
-- @param LogUrl [String] <p>The URL of the command log.</p>
-- @param Type [String] <p>The command type:</p> <ul> <li> <p> <code>configure</code> </p> </li> <li> <p> <code>deploy</code> </p> </li> <li> <p> <code>execute_recipes</code> </p> </li> <li> <p> <code>install_dependencies</code> </p> </li> <li> <p> <code>restart</code> </p> </li> <li> <p> <code>rollback</code> </p> </li> <li> <p> <code>setup</code> </p> </li> <li> <p> <code>start</code> </p> </li> <li> <p> <code>stop</code> </p> </li> <li> <p> <code>undeploy</code> </p> </li> <li> <p> <code>update_custom_cookbooks</code> </p> </li> <li> <p> <code>update_dependencies</code> </p> </li> </ul>
-- @param CommandId [String] <p>The command ID.</p>
-- @param CreatedAt [DateTime] <p>Date and time when the command was run.</p>
-- @param ExitCode [Integer] <p>The command exit code.</p>
function M.Command(Status, CompletedAt, InstanceId, DeploymentId, AcknowledgedAt, LogUrl, Type, CommandId, CreatedAt, ExitCode, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Command")
	local t = { 
		["Status"] = Status,
		["CompletedAt"] = CompletedAt,
		["InstanceId"] = InstanceId,
		["DeploymentId"] = DeploymentId,
		["AcknowledgedAt"] = AcknowledgedAt,
		["LogUrl"] = LogUrl,
		["Type"] = Type,
		["CommandId"] = CommandId,
		["CreatedAt"] = CreatedAt,
		["ExitCode"] = ExitCode,
	}
	M.AssertCommand(t)
	return t
end

local DeleteStackRequest_keys = { "StackId" = true, nil }

function M.AssertDeleteStackRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteStackRequest to be of type 'table'")
	assert(struct["StackId"], "Expected key StackId to exist in table")
	if struct["StackId"] then M.AssertString(struct["StackId"]) end
	for k,_ in pairs(struct) do
		assert(DeleteStackRequest_keys[k], "DeleteStackRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteStackRequest
--  
-- @param StackId [String] <p>The stack ID.</p>
-- Required parameter: StackId
function M.DeleteStackRequest(StackId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteStackRequest")
	local t = { 
		["StackId"] = StackId,
	}
	M.AssertDeleteStackRequest(t)
	return t
end

local DescribeRdsDbInstancesRequest_keys = { "StackId" = true, "RdsDbInstanceArns" = true, nil }

function M.AssertDescribeRdsDbInstancesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeRdsDbInstancesRequest to be of type 'table'")
	assert(struct["StackId"], "Expected key StackId to exist in table")
	if struct["StackId"] then M.AssertString(struct["StackId"]) end
	if struct["RdsDbInstanceArns"] then M.AssertStrings(struct["RdsDbInstanceArns"]) end
	for k,_ in pairs(struct) do
		assert(DescribeRdsDbInstancesRequest_keys[k], "DescribeRdsDbInstancesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeRdsDbInstancesRequest
--  
-- @param StackId [String] <p>The stack ID that the instances are registered with. The operation returns descriptions of all registered Amazon RDS instances.</p>
-- @param RdsDbInstanceArns [Strings] <p>An array containing the ARNs of the instances to be described.</p>
-- Required parameter: StackId
function M.DescribeRdsDbInstancesRequest(StackId, RdsDbInstanceArns, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeRdsDbInstancesRequest")
	local t = { 
		["StackId"] = StackId,
		["RdsDbInstanceArns"] = RdsDbInstanceArns,
	}
	M.AssertDescribeRdsDbInstancesRequest(t)
	return t
end

local CreateStackResult_keys = { "StackId" = true, nil }

function M.AssertCreateStackResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateStackResult to be of type 'table'")
	if struct["StackId"] then M.AssertString(struct["StackId"]) end
	for k,_ in pairs(struct) do
		assert(CreateStackResult_keys[k], "CreateStackResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateStackResult
-- <p>Contains the response to a <code>CreateStack</code> request.</p>
-- @param StackId [String] <p>The stack ID, which is an opaque string that you use to identify the stack when performing actions such as <code>DescribeStacks</code>.</p>
function M.CreateStackResult(StackId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateStackResult")
	local t = { 
		["StackId"] = StackId,
	}
	M.AssertCreateStackResult(t)
	return t
end

local CreateAppRequest_keys = { "StackId" = true, "Environment" = true, "AppSource" = true, "DataSources" = true, "EnableSsl" = true, "SslConfiguration" = true, "Attributes" = true, "Domains" = true, "Description" = true, "Shortname" = true, "Type" = true, "Name" = true, nil }

function M.AssertCreateAppRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateAppRequest to be of type 'table'")
	assert(struct["StackId"], "Expected key StackId to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["Type"], "Expected key Type to exist in table")
	if struct["StackId"] then M.AssertString(struct["StackId"]) end
	if struct["Environment"] then M.AssertEnvironmentVariables(struct["Environment"]) end
	if struct["AppSource"] then M.AssertSource(struct["AppSource"]) end
	if struct["DataSources"] then M.AssertDataSources(struct["DataSources"]) end
	if struct["EnableSsl"] then M.AssertBoolean(struct["EnableSsl"]) end
	if struct["SslConfiguration"] then M.AssertSslConfiguration(struct["SslConfiguration"]) end
	if struct["Attributes"] then M.AssertAppAttributes(struct["Attributes"]) end
	if struct["Domains"] then M.AssertStrings(struct["Domains"]) end
	if struct["Description"] then M.AssertString(struct["Description"]) end
	if struct["Shortname"] then M.AssertString(struct["Shortname"]) end
	if struct["Type"] then M.AssertAppType(struct["Type"]) end
	if struct["Name"] then M.AssertString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(CreateAppRequest_keys[k], "CreateAppRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateAppRequest
--  
-- @param StackId [String] <p>The stack ID.</p>
-- @param Environment [EnvironmentVariables] <p>An array of <code>EnvironmentVariable</code> objects that specify environment variables to be associated with the app. After you deploy the app, these variables are defined on the associated app server instance. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html#workingapps-creating-environment"> Environment Variables</a>.</p> <p>There is no specific limit on the number of environment variables. However, the size of the associated data structure - which includes the variables' names, values, and protected flag values - cannot exceed 10 KB (10240 Bytes). This limit should accommodate most if not all use cases. Exceeding it will cause an exception with the message, "Environment: is too large (maximum is 10KB)."</p> <note> <p>This parameter is supported only by Chef 11.10 stacks. If you have specified one or more environment variables, you cannot modify the stack's Chef version.</p> </note>
-- @param AppSource [Source] <p>A <code>Source</code> object that specifies the app repository.</p>
-- @param DataSources [DataSources] <p>The app's data source.</p>
-- @param EnableSsl [Boolean] <p>Whether to enable SSL for the app.</p>
-- @param SslConfiguration [SslConfiguration] <p>An <code>SslConfiguration</code> object with the SSL configuration.</p>
-- @param Attributes [AppAttributes] <p>One or more user-defined key/value pairs to be added to the stack attributes.</p>
-- @param Domains [Strings] <p>The app virtual host settings, with multiple domains separated by commas. For example: <code>'www.example.com, example.com'</code> </p>
-- @param Description [String] <p>A description of the app.</p>
-- @param Shortname [String] <p>The app's short name.</p>
-- @param Type [AppType] <p>The app type. Each supported type is associated with a particular layer. For example, PHP applications are associated with a PHP layer. AWS OpsWorks Stacks deploys an application to those instances that are members of the corresponding layer. If your app isn't one of the standard types, or you prefer to implement your own Deploy recipes, specify <code>other</code>.</p>
-- @param Name [String] <p>The app name.</p>
-- Required parameter: StackId
-- Required parameter: Name
-- Required parameter: Type
function M.CreateAppRequest(StackId, Environment, AppSource, DataSources, EnableSsl, SslConfiguration, Attributes, Domains, Description, Shortname, Type, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateAppRequest")
	local t = { 
		["StackId"] = StackId,
		["Environment"] = Environment,
		["AppSource"] = AppSource,
		["DataSources"] = DataSources,
		["EnableSsl"] = EnableSsl,
		["SslConfiguration"] = SslConfiguration,
		["Attributes"] = Attributes,
		["Domains"] = Domains,
		["Description"] = Description,
		["Shortname"] = Shortname,
		["Type"] = Type,
		["Name"] = Name,
	}
	M.AssertCreateAppRequest(t)
	return t
end

local App_keys = { "StackId" = true, "Environment" = true, "AppSource" = true, "Description" = true, "EnableSsl" = true, "SslConfiguration" = true, "Name" = true, "AppId" = true, "Domains" = true, "Attributes" = true, "Shortname" = true, "Type" = true, "CreatedAt" = true, "DataSources" = true, nil }

function M.AssertApp(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected App to be of type 'table'")
	if struct["StackId"] then M.AssertString(struct["StackId"]) end
	if struct["Environment"] then M.AssertEnvironmentVariables(struct["Environment"]) end
	if struct["AppSource"] then M.AssertSource(struct["AppSource"]) end
	if struct["Description"] then M.AssertString(struct["Description"]) end
	if struct["EnableSsl"] then M.AssertBoolean(struct["EnableSsl"]) end
	if struct["SslConfiguration"] then M.AssertSslConfiguration(struct["SslConfiguration"]) end
	if struct["Name"] then M.AssertString(struct["Name"]) end
	if struct["AppId"] then M.AssertString(struct["AppId"]) end
	if struct["Domains"] then M.AssertStrings(struct["Domains"]) end
	if struct["Attributes"] then M.AssertAppAttributes(struct["Attributes"]) end
	if struct["Shortname"] then M.AssertString(struct["Shortname"]) end
	if struct["Type"] then M.AssertAppType(struct["Type"]) end
	if struct["CreatedAt"] then M.AssertString(struct["CreatedAt"]) end
	if struct["DataSources"] then M.AssertDataSources(struct["DataSources"]) end
	for k,_ in pairs(struct) do
		assert(App_keys[k], "App contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type App
-- <p>A description of the app.</p>
-- @param StackId [String] <p>The app stack ID.</p>
-- @param Environment [EnvironmentVariables] <p>An array of <code>EnvironmentVariable</code> objects that specify environment variables to be associated with the app. After you deploy the app, these variables are defined on the associated app server instances. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html#workingapps-creating-environment"> Environment Variables</a>. </p> <note> <p>There is no specific limit on the number of environment variables. However, the size of the associated data structure - which includes the variable names, values, and protected flag values - cannot exceed 10 KB (10240 Bytes). This limit should accommodate most if not all use cases, but if you do exceed it, you will cause an exception (API) with an "Environment: is too large (maximum is 10KB)" message.</p> </note>
-- @param AppSource [Source] <p>A <code>Source</code> object that describes the app repository.</p>
-- @param Description [String] <p>A description of the app.</p>
-- @param EnableSsl [Boolean] <p>Whether to enable SSL for the app.</p>
-- @param SslConfiguration [SslConfiguration] <p>An <code>SslConfiguration</code> object with the SSL configuration.</p>
-- @param Name [String] <p>The app name.</p>
-- @param AppId [String] <p>The app ID.</p>
-- @param Domains [Strings] <p>The app vhost settings with multiple domains separated by commas. For example: <code>'www.example.com, example.com'</code> </p>
-- @param Attributes [AppAttributes] <p>The stack attributes.</p>
-- @param Shortname [String] <p>The app's short name.</p>
-- @param Type [AppType] <p>The app type.</p>
-- @param CreatedAt [String] <p>When the app was created.</p>
-- @param DataSources [DataSources] <p>The app's data sources.</p>
function M.App(StackId, Environment, AppSource, Description, EnableSsl, SslConfiguration, Name, AppId, Domains, Attributes, Shortname, Type, CreatedAt, DataSources, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating App")
	local t = { 
		["StackId"] = StackId,
		["Environment"] = Environment,
		["AppSource"] = AppSource,
		["Description"] = Description,
		["EnableSsl"] = EnableSsl,
		["SslConfiguration"] = SslConfiguration,
		["Name"] = Name,
		["AppId"] = AppId,
		["Domains"] = Domains,
		["Attributes"] = Attributes,
		["Shortname"] = Shortname,
		["Type"] = Type,
		["CreatedAt"] = CreatedAt,
		["DataSources"] = DataSources,
	}
	M.AssertApp(t)
	return t
end

local RdsDbInstance_keys = { "Engine" = true, "StackId" = true, "MissingOnRds" = true, "Region" = true, "RdsDbInstanceArn" = true, "DbPassword" = true, "Address" = true, "DbUser" = true, "DbInstanceIdentifier" = true, nil }

function M.AssertRdsDbInstance(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RdsDbInstance to be of type 'table'")
	if struct["Engine"] then M.AssertString(struct["Engine"]) end
	if struct["StackId"] then M.AssertString(struct["StackId"]) end
	if struct["MissingOnRds"] then M.AssertBoolean(struct["MissingOnRds"]) end
	if struct["Region"] then M.AssertString(struct["Region"]) end
	if struct["RdsDbInstanceArn"] then M.AssertString(struct["RdsDbInstanceArn"]) end
	if struct["DbPassword"] then M.AssertString(struct["DbPassword"]) end
	if struct["Address"] then M.AssertString(struct["Address"]) end
	if struct["DbUser"] then M.AssertString(struct["DbUser"]) end
	if struct["DbInstanceIdentifier"] then M.AssertString(struct["DbInstanceIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(RdsDbInstance_keys[k], "RdsDbInstance contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RdsDbInstance
-- <p>Describes an Amazon RDS instance.</p>
-- @param Engine [String] <p>The instance's database engine.</p>
-- @param StackId [String] <p>The ID of the stack with which the instance is registered.</p>
-- @param MissingOnRds [Boolean] <p>Set to <code>true</code> if AWS OpsWorks Stacks is unable to discover the Amazon RDS instance. AWS OpsWorks Stacks attempts to discover the instance only once. If this value is set to <code>true</code>, you must deregister the instance, and then register it again.</p>
-- @param Region [String] <p>The instance's AWS region.</p>
-- @param RdsDbInstanceArn [String] <p>The instance's ARN.</p>
-- @param DbPassword [String] <p>AWS OpsWorks Stacks returns <code>*****FILTERED*****</code> instead of the actual value.</p>
-- @param Address [String] <p>The instance's address.</p>
-- @param DbUser [String] <p>The master user name.</p>
-- @param DbInstanceIdentifier [String] <p>The DB instance identifier.</p>
function M.RdsDbInstance(Engine, StackId, MissingOnRds, Region, RdsDbInstanceArn, DbPassword, Address, DbUser, DbInstanceIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RdsDbInstance")
	local t = { 
		["Engine"] = Engine,
		["StackId"] = StackId,
		["MissingOnRds"] = MissingOnRds,
		["Region"] = Region,
		["RdsDbInstanceArn"] = RdsDbInstanceArn,
		["DbPassword"] = DbPassword,
		["Address"] = Address,
		["DbUser"] = DbUser,
		["DbInstanceIdentifier"] = DbInstanceIdentifier,
	}
	M.AssertRdsDbInstance(t)
	return t
end

local DataSource_keys = { "Type" = true, "DatabaseName" = true, "Arn" = true, nil }

function M.AssertDataSource(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DataSource to be of type 'table'")
	if struct["Type"] then M.AssertString(struct["Type"]) end
	if struct["DatabaseName"] then M.AssertString(struct["DatabaseName"]) end
	if struct["Arn"] then M.AssertString(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(DataSource_keys[k], "DataSource contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DataSource
-- <p>Describes an app's data source.</p>
-- @param Type [String] <p>The data source's type, <code>AutoSelectOpsworksMysqlInstance</code>, <code>OpsworksMysqlInstance</code>, or <code>RdsDbInstance</code>.</p>
-- @param DatabaseName [String] <p>The database name.</p>
-- @param Arn [String] <p>The data source's ARN.</p>
function M.DataSource(Type, DatabaseName, Arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DataSource")
	local t = { 
		["Type"] = Type,
		["DatabaseName"] = DatabaseName,
		["Arn"] = Arn,
	}
	M.AssertDataSource(t)
	return t
end

local UntagResourceRequest_keys = { "ResourceArn" = true, "TagKeys" = true, nil }

function M.AssertUntagResourceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UntagResourceRequest to be of type 'table'")
	assert(struct["ResourceArn"], "Expected key ResourceArn to exist in table")
	assert(struct["TagKeys"], "Expected key TagKeys to exist in table")
	if struct["ResourceArn"] then M.AssertResourceArn(struct["ResourceArn"]) end
	if struct["TagKeys"] then M.AssertTagKeys(struct["TagKeys"]) end
	for k,_ in pairs(struct) do
		assert(UntagResourceRequest_keys[k], "UntagResourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UntagResourceRequest
--  
-- @param ResourceArn [ResourceArn] <p>The stack or layer's Amazon Resource Number (ARN).</p>
-- @param TagKeys [TagKeys] <p>A list of the keys of tags to be removed from a stack or layer.</p>
-- Required parameter: ResourceArn
-- Required parameter: TagKeys
function M.UntagResourceRequest(ResourceArn, TagKeys, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UntagResourceRequest")
	local t = { 
		["ResourceArn"] = ResourceArn,
		["TagKeys"] = TagKeys,
	}
	M.AssertUntagResourceRequest(t)
	return t
end

local RegisterEcsClusterResult_keys = { "EcsClusterArn" = true, nil }

function M.AssertRegisterEcsClusterResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RegisterEcsClusterResult to be of type 'table'")
	if struct["EcsClusterArn"] then M.AssertString(struct["EcsClusterArn"]) end
	for k,_ in pairs(struct) do
		assert(RegisterEcsClusterResult_keys[k], "RegisterEcsClusterResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RegisterEcsClusterResult
-- <p>Contains the response to a <code>RegisterEcsCluster</code> request.</p>
-- @param EcsClusterArn [String] <p>The cluster's ARN.</p>
function M.RegisterEcsClusterResult(EcsClusterArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RegisterEcsClusterResult")
	local t = { 
		["EcsClusterArn"] = EcsClusterArn,
	}
	M.AssertRegisterEcsClusterResult(t)
	return t
end

local DescribeEcsClustersRequest_keys = { "StackId" = true, "EcsClusterArns" = true, "NextToken" = true, "MaxResults" = true, nil }

function M.AssertDescribeEcsClustersRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEcsClustersRequest to be of type 'table'")
	if struct["StackId"] then M.AssertString(struct["StackId"]) end
	if struct["EcsClusterArns"] then M.AssertStrings(struct["EcsClusterArns"]) end
	if struct["NextToken"] then M.AssertString(struct["NextToken"]) end
	if struct["MaxResults"] then M.AssertInteger(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(DescribeEcsClustersRequest_keys[k], "DescribeEcsClustersRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEcsClustersRequest
--  
-- @param StackId [String] <p>A stack ID. <code>DescribeEcsClusters</code> returns a description of the cluster that is registered with the stack.</p>
-- @param EcsClusterArns [Strings] <p>A list of ARNs, one for each cluster to be described.</p>
-- @param NextToken [String] <p>If the previous paginated request did not return all of the remaining results, the response object's<code>NextToken</code> parameter value is set to a token. To retrieve the next set of results, call <code>DescribeEcsClusters</code> again and assign that token to the request object's <code>NextToken</code> parameter. If there are no remaining results, the previous response object's <code>NextToken</code> parameter is set to <code>null</code>.</p>
-- @param MaxResults [Integer] <p>To receive a paginated response, use this parameter to specify the maximum number of results to be returned with a single call. If the number of available results exceeds this maximum, the response includes a <code>NextToken</code> value that you can assign to the <code>NextToken</code> request parameter to get the next set of results.</p>
function M.DescribeEcsClustersRequest(StackId, EcsClusterArns, NextToken, MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeEcsClustersRequest")
	local t = { 
		["StackId"] = StackId,
		["EcsClusterArns"] = EcsClusterArns,
		["NextToken"] = NextToken,
		["MaxResults"] = MaxResults,
	}
	M.AssertDescribeEcsClustersRequest(t)
	return t
end

local DescribeAgentVersionsResult_keys = { "AgentVersions" = true, nil }

function M.AssertDescribeAgentVersionsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAgentVersionsResult to be of type 'table'")
	if struct["AgentVersions"] then M.AssertAgentVersions(struct["AgentVersions"]) end
	for k,_ in pairs(struct) do
		assert(DescribeAgentVersionsResult_keys[k], "DescribeAgentVersionsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAgentVersionsResult
-- <p>Contains the response to a <code>DescribeAgentVersions</code> request.</p>
-- @param AgentVersions [AgentVersions] <p>The agent versions for the specified stack or configuration manager. Note that this value is the complete version number, not the abbreviated number used by the console.</p>
function M.DescribeAgentVersionsResult(AgentVersions, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeAgentVersionsResult")
	local t = { 
		["AgentVersions"] = AgentVersions,
	}
	M.AssertDescribeAgentVersionsResult(t)
	return t
end

local SetLoadBasedAutoScalingRequest_keys = { "DownScaling" = true, "Enable" = true, "UpScaling" = true, "LayerId" = true, nil }

function M.AssertSetLoadBasedAutoScalingRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetLoadBasedAutoScalingRequest to be of type 'table'")
	assert(struct["LayerId"], "Expected key LayerId to exist in table")
	if struct["DownScaling"] then M.AssertAutoScalingThresholds(struct["DownScaling"]) end
	if struct["Enable"] then M.AssertBoolean(struct["Enable"]) end
	if struct["UpScaling"] then M.AssertAutoScalingThresholds(struct["UpScaling"]) end
	if struct["LayerId"] then M.AssertString(struct["LayerId"]) end
	for k,_ in pairs(struct) do
		assert(SetLoadBasedAutoScalingRequest_keys[k], "SetLoadBasedAutoScalingRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetLoadBasedAutoScalingRequest
--  
-- @param DownScaling [AutoScalingThresholds] <p>An <code>AutoScalingThresholds</code> object with the downscaling threshold configuration. If the load falls below these thresholds for a specified amount of time, AWS OpsWorks Stacks stops a specified number of instances.</p>
-- @param Enable [Boolean] <p>Enables load-based auto scaling for the layer.</p>
-- @param UpScaling [AutoScalingThresholds] <p>An <code>AutoScalingThresholds</code> object with the upscaling threshold configuration. If the load exceeds these thresholds for a specified amount of time, AWS OpsWorks Stacks starts a specified number of instances.</p>
-- @param LayerId [String] <p>The layer ID.</p>
-- Required parameter: LayerId
function M.SetLoadBasedAutoScalingRequest(DownScaling, Enable, UpScaling, LayerId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SetLoadBasedAutoScalingRequest")
	local t = { 
		["DownScaling"] = DownScaling,
		["Enable"] = Enable,
		["UpScaling"] = UpScaling,
		["LayerId"] = LayerId,
	}
	M.AssertSetLoadBasedAutoScalingRequest(t)
	return t
end

local DescribeLoadBasedAutoScalingResult_keys = { "LoadBasedAutoScalingConfigurations" = true, nil }

function M.AssertDescribeLoadBasedAutoScalingResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeLoadBasedAutoScalingResult to be of type 'table'")
	if struct["LoadBasedAutoScalingConfigurations"] then M.AssertLoadBasedAutoScalingConfigurations(struct["LoadBasedAutoScalingConfigurations"]) end
	for k,_ in pairs(struct) do
		assert(DescribeLoadBasedAutoScalingResult_keys[k], "DescribeLoadBasedAutoScalingResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeLoadBasedAutoScalingResult
-- <p>Contains the response to a <code>DescribeLoadBasedAutoScaling</code> request.</p>
-- @param LoadBasedAutoScalingConfigurations [LoadBasedAutoScalingConfigurations] <p>An array of <code>LoadBasedAutoScalingConfiguration</code> objects that describe each layer's configuration.</p>
function M.DescribeLoadBasedAutoScalingResult(LoadBasedAutoScalingConfigurations, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeLoadBasedAutoScalingResult")
	local t = { 
		["LoadBasedAutoScalingConfigurations"] = LoadBasedAutoScalingConfigurations,
	}
	M.AssertDescribeLoadBasedAutoScalingResult(t)
	return t
end

local DescribeTimeBasedAutoScalingResult_keys = { "TimeBasedAutoScalingConfigurations" = true, nil }

function M.AssertDescribeTimeBasedAutoScalingResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTimeBasedAutoScalingResult to be of type 'table'")
	if struct["TimeBasedAutoScalingConfigurations"] then M.AssertTimeBasedAutoScalingConfigurations(struct["TimeBasedAutoScalingConfigurations"]) end
	for k,_ in pairs(struct) do
		assert(DescribeTimeBasedAutoScalingResult_keys[k], "DescribeTimeBasedAutoScalingResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTimeBasedAutoScalingResult
-- <p>Contains the response to a <code>DescribeTimeBasedAutoScaling</code> request.</p>
-- @param TimeBasedAutoScalingConfigurations [TimeBasedAutoScalingConfigurations] <p>An array of <code>TimeBasedAutoScalingConfiguration</code> objects that describe the configuration for the specified instances.</p>
function M.DescribeTimeBasedAutoScalingResult(TimeBasedAutoScalingConfigurations, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeTimeBasedAutoScalingResult")
	local t = { 
		["TimeBasedAutoScalingConfigurations"] = TimeBasedAutoScalingConfigurations,
	}
	M.AssertDescribeTimeBasedAutoScalingResult(t)
	return t
end

local DescribePermissionsRequest_keys = { "StackId" = true, "IamUserArn" = true, nil }

function M.AssertDescribePermissionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribePermissionsRequest to be of type 'table'")
	if struct["StackId"] then M.AssertString(struct["StackId"]) end
	if struct["IamUserArn"] then M.AssertString(struct["IamUserArn"]) end
	for k,_ in pairs(struct) do
		assert(DescribePermissionsRequest_keys[k], "DescribePermissionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribePermissionsRequest
--  
-- @param StackId [String] <p>The stack ID.</p>
-- @param IamUserArn [String] <p>The user's IAM ARN. This can also be a federated user's ARN. For more information about IAM ARNs, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">Using Identifiers</a>.</p>
function M.DescribePermissionsRequest(StackId, IamUserArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribePermissionsRequest")
	local t = { 
		["StackId"] = StackId,
		["IamUserArn"] = IamUserArn,
	}
	M.AssertDescribePermissionsRequest(t)
	return t
end

local SetPermissionRequest_keys = { "StackId" = true, "IamUserArn" = true, "Level" = true, "AllowSudo" = true, "AllowSsh" = true, nil }

function M.AssertSetPermissionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetPermissionRequest to be of type 'table'")
	assert(struct["StackId"], "Expected key StackId to exist in table")
	assert(struct["IamUserArn"], "Expected key IamUserArn to exist in table")
	if struct["StackId"] then M.AssertString(struct["StackId"]) end
	if struct["IamUserArn"] then M.AssertString(struct["IamUserArn"]) end
	if struct["Level"] then M.AssertString(struct["Level"]) end
	if struct["AllowSudo"] then M.AssertBoolean(struct["AllowSudo"]) end
	if struct["AllowSsh"] then M.AssertBoolean(struct["AllowSsh"]) end
	for k,_ in pairs(struct) do
		assert(SetPermissionRequest_keys[k], "SetPermissionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetPermissionRequest
--  
-- @param StackId [String] <p>The stack ID.</p>
-- @param IamUserArn [String] <p>The user's IAM ARN. This can also be a federated user's ARN.</p>
-- @param Level [String] <p>The user's permission level, which must be set to one of the following strings. You cannot set your own permissions level.</p> <ul> <li> <p> <code>deny</code> </p> </li> <li> <p> <code>show</code> </p> </li> <li> <p> <code>deploy</code> </p> </li> <li> <p> <code>manage</code> </p> </li> <li> <p> <code>iam_only</code> </p> </li> </ul> <p>For more information on the permissions associated with these levels, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
-- @param AllowSudo [Boolean] <p>The user is allowed to use <b>sudo</b> to elevate privileges.</p>
-- @param AllowSsh [Boolean] <p>The user is allowed to use SSH to communicate with the instance.</p>
-- Required parameter: StackId
-- Required parameter: IamUserArn
function M.SetPermissionRequest(StackId, IamUserArn, Level, AllowSudo, AllowSsh, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SetPermissionRequest")
	local t = { 
		["StackId"] = StackId,
		["IamUserArn"] = IamUserArn,
		["Level"] = Level,
		["AllowSudo"] = AllowSudo,
		["AllowSsh"] = AllowSsh,
	}
	M.AssertSetPermissionRequest(t)
	return t
end

local DescribeTimeBasedAutoScalingRequest_keys = { "InstanceIds" = true, nil }

function M.AssertDescribeTimeBasedAutoScalingRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTimeBasedAutoScalingRequest to be of type 'table'")
	assert(struct["InstanceIds"], "Expected key InstanceIds to exist in table")
	if struct["InstanceIds"] then M.AssertStrings(struct["InstanceIds"]) end
	for k,_ in pairs(struct) do
		assert(DescribeTimeBasedAutoScalingRequest_keys[k], "DescribeTimeBasedAutoScalingRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTimeBasedAutoScalingRequest
--  
-- @param InstanceIds [Strings] <p>An array of instance IDs.</p>
-- Required parameter: InstanceIds
function M.DescribeTimeBasedAutoScalingRequest(InstanceIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeTimeBasedAutoScalingRequest")
	local t = { 
		["InstanceIds"] = InstanceIds,
	}
	M.AssertDescribeTimeBasedAutoScalingRequest(t)
	return t
end

local DescribeDeploymentsRequest_keys = { "StackId" = true, "DeploymentIds" = true, "AppId" = true, nil }

function M.AssertDescribeDeploymentsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDeploymentsRequest to be of type 'table'")
	if struct["StackId"] then M.AssertString(struct["StackId"]) end
	if struct["DeploymentIds"] then M.AssertStrings(struct["DeploymentIds"]) end
	if struct["AppId"] then M.AssertString(struct["AppId"]) end
	for k,_ in pairs(struct) do
		assert(DescribeDeploymentsRequest_keys[k], "DescribeDeploymentsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDeploymentsRequest
--  
-- @param StackId [String] <p>The stack ID. If you include this parameter, <code>DescribeDeployments</code> returns a description of the commands associated with the specified stack.</p>
-- @param DeploymentIds [Strings] <p>An array of deployment IDs to be described. If you include this parameter, <code>DescribeDeployments</code> returns a description of the specified deployments. Otherwise, it returns a description of every deployment.</p>
-- @param AppId [String] <p>The app ID. If you include this parameter, <code>DescribeDeployments</code> returns a description of the commands associated with the specified app.</p>
function M.DescribeDeploymentsRequest(StackId, DeploymentIds, AppId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeDeploymentsRequest")
	local t = { 
		["StackId"] = StackId,
		["DeploymentIds"] = DeploymentIds,
		["AppId"] = AppId,
	}
	M.AssertDescribeDeploymentsRequest(t)
	return t
end

local DescribeUserProfilesResult_keys = { "UserProfiles" = true, nil }

function M.AssertDescribeUserProfilesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeUserProfilesResult to be of type 'table'")
	if struct["UserProfiles"] then M.AssertUserProfiles(struct["UserProfiles"]) end
	for k,_ in pairs(struct) do
		assert(DescribeUserProfilesResult_keys[k], "DescribeUserProfilesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeUserProfilesResult
-- <p>Contains the response to a <code>DescribeUserProfiles</code> request.</p>
-- @param UserProfiles [UserProfiles] <p>A <code>Users</code> object that describes the specified users.</p>
function M.DescribeUserProfilesResult(UserProfiles, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeUserProfilesResult")
	local t = { 
		["UserProfiles"] = UserProfiles,
	}
	M.AssertDescribeUserProfilesResult(t)
	return t
end

local ChefConfiguration_keys = { "BerkshelfVersion" = true, "ManageBerkshelf" = true, nil }

function M.AssertChefConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ChefConfiguration to be of type 'table'")
	if struct["BerkshelfVersion"] then M.AssertString(struct["BerkshelfVersion"]) end
	if struct["ManageBerkshelf"] then M.AssertBoolean(struct["ManageBerkshelf"]) end
	for k,_ in pairs(struct) do
		assert(ChefConfiguration_keys[k], "ChefConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ChefConfiguration
-- <p>Describes the Chef configuration.</p>
-- @param BerkshelfVersion [String] <p>The Berkshelf version.</p>
-- @param ManageBerkshelf [Boolean] <p>Whether to enable Berkshelf.</p>
function M.ChefConfiguration(BerkshelfVersion, ManageBerkshelf, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ChefConfiguration")
	local t = { 
		["BerkshelfVersion"] = BerkshelfVersion,
		["ManageBerkshelf"] = ManageBerkshelf,
	}
	M.AssertChefConfiguration(t)
	return t
end

local DescribeAgentVersionsRequest_keys = { "StackId" = true, "ConfigurationManager" = true, nil }

function M.AssertDescribeAgentVersionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAgentVersionsRequest to be of type 'table'")
	if struct["StackId"] then M.AssertString(struct["StackId"]) end
	if struct["ConfigurationManager"] then M.AssertStackConfigurationManager(struct["ConfigurationManager"]) end
	for k,_ in pairs(struct) do
		assert(DescribeAgentVersionsRequest_keys[k], "DescribeAgentVersionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAgentVersionsRequest
--  
-- @param StackId [String] <p>The stack ID.</p>
-- @param ConfigurationManager [StackConfigurationManager] <p>The configuration manager.</p>
function M.DescribeAgentVersionsRequest(StackId, ConfigurationManager, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeAgentVersionsRequest")
	local t = { 
		["StackId"] = StackId,
		["ConfigurationManager"] = ConfigurationManager,
	}
	M.AssertDescribeAgentVersionsRequest(t)
	return t
end

local DescribeStacksResult_keys = { "Stacks" = true, nil }

function M.AssertDescribeStacksResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeStacksResult to be of type 'table'")
	if struct["Stacks"] then M.AssertStacks(struct["Stacks"]) end
	for k,_ in pairs(struct) do
		assert(DescribeStacksResult_keys[k], "DescribeStacksResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeStacksResult
-- <p>Contains the response to a <code>DescribeStacks</code> request.</p>
-- @param Stacks [Stacks] <p>An array of <code>Stack</code> objects that describe the stacks.</p>
function M.DescribeStacksResult(Stacks, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeStacksResult")
	local t = { 
		["Stacks"] = Stacks,
	}
	M.AssertDescribeStacksResult(t)
	return t
end

local DescribeRdsDbInstancesResult_keys = { "RdsDbInstances" = true, nil }

function M.AssertDescribeRdsDbInstancesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeRdsDbInstancesResult to be of type 'table'")
	if struct["RdsDbInstances"] then M.AssertRdsDbInstances(struct["RdsDbInstances"]) end
	for k,_ in pairs(struct) do
		assert(DescribeRdsDbInstancesResult_keys[k], "DescribeRdsDbInstancesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeRdsDbInstancesResult
-- <p>Contains the response to a <code>DescribeRdsDbInstances</code> request.</p>
-- @param RdsDbInstances [RdsDbInstances] <p>An a array of <code>RdsDbInstance</code> objects that describe the instances.</p>
function M.DescribeRdsDbInstancesResult(RdsDbInstances, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeRdsDbInstancesResult")
	local t = { 
		["RdsDbInstances"] = RdsDbInstances,
	}
	M.AssertDescribeRdsDbInstancesResult(t)
	return t
end

local DeploymentCommand_keys = { "Args" = true, "Name" = true, nil }

function M.AssertDeploymentCommand(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeploymentCommand to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Args"] then M.AssertDeploymentCommandArgs(struct["Args"]) end
	if struct["Name"] then M.AssertDeploymentCommandName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(DeploymentCommand_keys[k], "DeploymentCommand contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeploymentCommand
-- <p>Used to specify a stack or deployment command.</p>
-- @param Args [DeploymentCommandArgs] <p>The arguments of those commands that take arguments. It should be set to a JSON object with the following format:</p> <p> <code>{"arg_name1" : ["value1", "value2", ...], "arg_name2" : ["value1", "value2", ...], ...}</code> </p> <p>The <code>update_dependencies</code> command takes two arguments:</p> <ul> <li> <p> <code>upgrade_os_to</code> - Specifies the desired Amazon Linux version for instances whose OS you want to upgrade, such as <code>Amazon Linux 2016.09</code>. You must also set the <code>allow_reboot</code> argument to true.</p> </li> <li> <p> <code>allow_reboot</code> - Specifies whether to allow AWS OpsWorks Stacks to reboot the instances if necessary, after installing the updates. This argument can be set to either <code>true</code> or <code>false</code>. The default value is <code>false</code>.</p> </li> </ul> <p>For example, to upgrade an instance to Amazon Linux 2016.09, set <code>Args</code> to the following.</p> <p> <code> { "upgrade_os_to":["Amazon Linux 2016.09"], "allow_reboot":["true"] } </code> </p>
-- @param Name [DeploymentCommandName] <p>Specifies the operation. You can specify only one command.</p> <p>For stacks, the following commands are available:</p> <ul> <li> <p> <code>execute_recipes</code>: Execute one or more recipes. To specify the recipes, set an <code>Args</code> parameter named <code>recipes</code> to the list of recipes to be executed. For example, to execute <code>phpapp::appsetup</code>, set <code>Args</code> to <code>{"recipes":["phpapp::appsetup"]}</code>.</p> </li> <li> <p> <code>install_dependencies</code>: Install the stack's dependencies.</p> </li> <li> <p> <code>update_custom_cookbooks</code>: Update the stack's custom cookbooks.</p> </li> <li> <p> <code>update_dependencies</code>: Update the stack's dependencies.</p> </li> </ul> <note> <p>The update_dependencies and install_dependencies commands are supported only for Linux instances. You can run the commands successfully on Windows instances, but they do nothing.</p> </note> <p>For apps, the following commands are available:</p> <ul> <li> <p> <code>deploy</code>: Deploy an app. Ruby on Rails apps have an optional <code>Args</code> parameter named <code>migrate</code>. Set <code>Args</code> to {"migrate":["true"]} to migrate the database. The default setting is {"migrate":["false"]}.</p> </li> <li> <p> <code>rollback</code> Roll the app back to the previous version. When you update an app, AWS OpsWorks Stacks stores the previous version, up to a maximum of five versions. You can use this command to roll an app back as many as four versions.</p> </li> <li> <p> <code>start</code>: Start the app's web or application server.</p> </li> <li> <p> <code>stop</code>: Stop the app's web or application server.</p> </li> <li> <p> <code>restart</code>: Restart the app's web or application server.</p> </li> <li> <p> <code>undeploy</code>: Undeploy the app.</p> </li> </ul>
-- Required parameter: Name
function M.DeploymentCommand(Args, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeploymentCommand")
	local t = { 
		["Args"] = Args,
		["Name"] = Name,
	}
	M.AssertDeploymentCommand(t)
	return t
end

local DescribeEcsClustersResult_keys = { "NextToken" = true, "EcsClusters" = true, nil }

function M.AssertDescribeEcsClustersResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEcsClustersResult to be of type 'table'")
	if struct["NextToken"] then M.AssertString(struct["NextToken"]) end
	if struct["EcsClusters"] then M.AssertEcsClusters(struct["EcsClusters"]) end
	for k,_ in pairs(struct) do
		assert(DescribeEcsClustersResult_keys[k], "DescribeEcsClustersResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEcsClustersResult
-- <p>Contains the response to a <code>DescribeEcsClusters</code> request.</p>
-- @param NextToken [String] <p>If a paginated request does not return all of the remaining results, this parameter is set to a token that you can assign to the request object's <code>NextToken</code> parameter to retrieve the next set of results. If the previous paginated request returned all of the remaining results, this parameter is set to <code>null</code>.</p>
-- @param EcsClusters [EcsClusters] <p>A list of <code>EcsCluster</code> objects containing the cluster descriptions.</p>
function M.DescribeEcsClustersResult(NextToken, EcsClusters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeEcsClustersResult")
	local t = { 
		["NextToken"] = NextToken,
		["EcsClusters"] = EcsClusters,
	}
	M.AssertDescribeEcsClustersResult(t)
	return t
end

local ValidationException_keys = { "message" = true, nil }

function M.AssertValidationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ValidationException to be of type 'table'")
	if struct["message"] then M.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(ValidationException_keys[k], "ValidationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ValidationException
-- <p>Indicates that a request was not valid.</p>
-- @param message [String] <p>The exception message.</p>
function M.ValidationException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ValidationException")
	local t = { 
		["message"] = message,
	}
	M.AssertValidationException(t)
	return t
end

local UpdateRdsDbInstanceRequest_keys = { "DbUser" = true, "RdsDbInstanceArn" = true, "DbPassword" = true, nil }

function M.AssertUpdateRdsDbInstanceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateRdsDbInstanceRequest to be of type 'table'")
	assert(struct["RdsDbInstanceArn"], "Expected key RdsDbInstanceArn to exist in table")
	if struct["DbUser"] then M.AssertString(struct["DbUser"]) end
	if struct["RdsDbInstanceArn"] then M.AssertString(struct["RdsDbInstanceArn"]) end
	if struct["DbPassword"] then M.AssertString(struct["DbPassword"]) end
	for k,_ in pairs(struct) do
		assert(UpdateRdsDbInstanceRequest_keys[k], "UpdateRdsDbInstanceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateRdsDbInstanceRequest
--  
-- @param DbUser [String] <p>The master user name.</p>
-- @param RdsDbInstanceArn [String] <p>The Amazon RDS instance's ARN.</p>
-- @param DbPassword [String] <p>The database password.</p>
-- Required parameter: RdsDbInstanceArn
function M.UpdateRdsDbInstanceRequest(DbUser, RdsDbInstanceArn, DbPassword, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateRdsDbInstanceRequest")
	local t = { 
		["DbUser"] = DbUser,
		["RdsDbInstanceArn"] = RdsDbInstanceArn,
		["DbPassword"] = DbPassword,
	}
	M.AssertUpdateRdsDbInstanceRequest(t)
	return t
end

local UserProfile_keys = { "IamUserArn" = true, "SshPublicKey" = true, "AllowSelfManagement" = true, "Name" = true, "SshUsername" = true, nil }

function M.AssertUserProfile(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UserProfile to be of type 'table'")
	if struct["IamUserArn"] then M.AssertString(struct["IamUserArn"]) end
	if struct["SshPublicKey"] then M.AssertString(struct["SshPublicKey"]) end
	if struct["AllowSelfManagement"] then M.AssertBoolean(struct["AllowSelfManagement"]) end
	if struct["Name"] then M.AssertString(struct["Name"]) end
	if struct["SshUsername"] then M.AssertString(struct["SshUsername"]) end
	for k,_ in pairs(struct) do
		assert(UserProfile_keys[k], "UserProfile contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UserProfile
-- <p>Describes a user's SSH information.</p>
-- @param IamUserArn [String] <p>The user's IAM ARN.</p>
-- @param SshPublicKey [String] <p>The user's SSH public key.</p>
-- @param AllowSelfManagement [Boolean] <p>Whether users can specify their own SSH public key through the My Settings page. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/security-settingsshkey.html">Managing User Permissions</a>.</p>
-- @param Name [String] <p>The user's name.</p>
-- @param SshUsername [String] <p>The user's SSH user name.</p>
function M.UserProfile(IamUserArn, SshPublicKey, AllowSelfManagement, Name, SshUsername, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UserProfile")
	local t = { 
		["IamUserArn"] = IamUserArn,
		["SshPublicKey"] = SshPublicKey,
		["AllowSelfManagement"] = AllowSelfManagement,
		["Name"] = Name,
		["SshUsername"] = SshUsername,
	}
	M.AssertUserProfile(t)
	return t
end

local CreateInstanceRequest_keys = { "StackId" = true, "AmiId" = true, "LayerIds" = true, "VirtualizationType" = true, "EbsOptimized" = true, "SshKeyName" = true, "Hostname" = true, "RootDeviceType" = true, "BlockDeviceMappings" = true, "AvailabilityZone" = true, "Architecture" = true, "AutoScalingType" = true, "SubnetId" = true, "Tenancy" = true, "InstallUpdatesOnBoot" = true, "Os" = true, "InstanceType" = true, "AgentVersion" = true, nil }

function M.AssertCreateInstanceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateInstanceRequest to be of type 'table'")
	assert(struct["StackId"], "Expected key StackId to exist in table")
	assert(struct["LayerIds"], "Expected key LayerIds to exist in table")
	assert(struct["InstanceType"], "Expected key InstanceType to exist in table")
	if struct["StackId"] then M.AssertString(struct["StackId"]) end
	if struct["AmiId"] then M.AssertString(struct["AmiId"]) end
	if struct["LayerIds"] then M.AssertStrings(struct["LayerIds"]) end
	if struct["VirtualizationType"] then M.AssertString(struct["VirtualizationType"]) end
	if struct["EbsOptimized"] then M.AssertBoolean(struct["EbsOptimized"]) end
	if struct["SshKeyName"] then M.AssertString(struct["SshKeyName"]) end
	if struct["Hostname"] then M.AssertString(struct["Hostname"]) end
	if struct["RootDeviceType"] then M.AssertRootDeviceType(struct["RootDeviceType"]) end
	if struct["BlockDeviceMappings"] then M.AssertBlockDeviceMappings(struct["BlockDeviceMappings"]) end
	if struct["AvailabilityZone"] then M.AssertString(struct["AvailabilityZone"]) end
	if struct["Architecture"] then M.AssertArchitecture(struct["Architecture"]) end
	if struct["AutoScalingType"] then M.AssertAutoScalingType(struct["AutoScalingType"]) end
	if struct["SubnetId"] then M.AssertString(struct["SubnetId"]) end
	if struct["Tenancy"] then M.AssertString(struct["Tenancy"]) end
	if struct["InstallUpdatesOnBoot"] then M.AssertBoolean(struct["InstallUpdatesOnBoot"]) end
	if struct["Os"] then M.AssertString(struct["Os"]) end
	if struct["InstanceType"] then M.AssertString(struct["InstanceType"]) end
	if struct["AgentVersion"] then M.AssertString(struct["AgentVersion"]) end
	for k,_ in pairs(struct) do
		assert(CreateInstanceRequest_keys[k], "CreateInstanceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateInstanceRequest
--  
-- @param StackId [String] <p>The stack ID.</p>
-- @param AmiId [String] <p>A custom AMI ID to be used to create the instance. The AMI should be based on one of the supported operating systems. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-custom-ami.html">Using Custom AMIs</a>.</p> <note> <p>If you specify a custom AMI, you must set <code>Os</code> to <code>Custom</code>.</p> </note>
-- @param LayerIds [Strings] <p>An array that contains the instance's layer IDs.</p>
-- @param VirtualizationType [String] <p>The instance's virtualization type, <code>paravirtual</code> or <code>hvm</code>.</p>
-- @param EbsOptimized [Boolean] <p>Whether to create an Amazon EBS-optimized instance.</p>
-- @param SshKeyName [String] <p>The instance's Amazon EC2 key-pair name.</p>
-- @param Hostname [String] <p>The instance host name.</p>
-- @param RootDeviceType [RootDeviceType] <p>The instance root device type. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ComponentsAMIs.html#storage-for-the-root-device">Storage for the Root Device</a>.</p>
-- @param BlockDeviceMappings [BlockDeviceMappings] <p>An array of <code>BlockDeviceMapping</code> objects that specify the instance's block devices. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/block-device-mapping-concepts.html">Block Device Mapping</a>. Note that block device mappings are not supported for custom AMIs.</p>
-- @param AvailabilityZone [String] <p>The instance Availability Zone. For more information, see <a href="http://docs.aws.amazon.com/general/latest/gr/rande.html">Regions and Endpoints</a>.</p>
-- @param Architecture [Architecture] <p>The instance architecture. The default option is <code>x86_64</code>. Instance types do not necessarily support both architectures. For a list of the architectures that are supported by the different instance types, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html">Instance Families and Types</a>.</p>
-- @param AutoScalingType [AutoScalingType] <p>For load-based or time-based instances, the type. Windows stacks can use only time-based instances.</p>
-- @param SubnetId [String] <p>The ID of the instance's subnet. If the stack is running in a VPC, you can use this parameter to override the stack's default subnet ID value and direct AWS OpsWorks Stacks to launch the instance in a different subnet.</p>
-- @param Tenancy [String] <p>The instance's tenancy option. The default option is no tenancy, or if the instance is running in a VPC, inherit tenancy settings from the VPC. The following are valid values for this parameter: <code>dedicated</code>, <code>default</code>, or <code>host</code>. Because there are costs associated with changes in tenancy options, we recommend that you research tenancy options before choosing them for your instances. For more information about dedicated hosts, see <a href="http://aws.amazon.com/ec2/dedicated-hosts/">Dedicated Hosts Overview</a> and <a href="http://aws.amazon.com/ec2/dedicated-hosts/">Amazon EC2 Dedicated Hosts</a>. For more information about dedicated instances, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/dedicated-instance.html">Dedicated Instances</a> and <a href="http://aws.amazon.com/ec2/purchasing-options/dedicated-instances/">Amazon EC2 Dedicated Instances</a>.</p>
-- @param InstallUpdatesOnBoot [Boolean] <p>Whether to install operating system and package updates when the instance boots. The default value is <code>true</code>. To control when updates are installed, set this value to <code>false</code>. You must then update your instances manually by using <a>CreateDeployment</a> to run the <code>update_dependencies</code> stack command or by manually running <code>yum</code> (Amazon Linux) or <code>apt-get</code> (Ubuntu) on the instances. </p> <note> <p>We strongly recommend using the default value of <code>true</code> to ensure that your instances have the latest security updates.</p> </note>
-- @param Os [String] <p>The instance's operating system, which must be set to one of the following.</p> <ul> <li> <p>A supported Linux operating system: An Amazon Linux version, such as <code>Amazon Linux 2017.03</code>, <code>Amazon Linux 2016.09</code>, <code>Amazon Linux 2016.03</code>, <code>Amazon Linux 2015.09</code>, or <code>Amazon Linux 2015.03</code>.</p> </li> <li> <p>A supported Ubuntu operating system, such as <code>Ubuntu 16.04 LTS</code>, <code>Ubuntu 14.04 LTS</code>, or <code>Ubuntu 12.04 LTS</code>.</p> </li> <li> <p> <code>CentOS Linux 7</code> </p> </li> <li> <p> <code>Red Hat Enterprise Linux 7</code> </p> </li> <li> <p>A supported Windows operating system, such as <code>Microsoft Windows Server 2012 R2 Base</code>, <code>Microsoft Windows Server 2012 R2 with SQL Server Express</code>, <code>Microsoft Windows Server 2012 R2 with SQL Server Standard</code>, or <code>Microsoft Windows Server 2012 R2 with SQL Server Web</code>.</p> </li> <li> <p>A custom AMI: <code>Custom</code>.</p> </li> </ul> <p>For more information on the supported operating systems, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-os.html">AWS OpsWorks Stacks Operating Systems</a>.</p> <p>The default option is the current Amazon Linux version. If you set this parameter to <code>Custom</code>, you must use the <a>CreateInstance</a> action's AmiId parameter to specify the custom AMI that you want to use. Block device mappings are not supported if the value is <code>Custom</code>. For more information on the supported operating systems, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-os.html">Operating Systems</a>For more information on how to use custom AMIs with AWS OpsWorks Stacks, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-custom-ami.html">Using Custom AMIs</a>.</p>
-- @param InstanceType [String] <p>The instance type, such as <code>t2.micro</code>. For a list of supported instance types, open the stack in the console, choose <b>Instances</b>, and choose <b>+ Instance</b>. The <b>Size</b> list contains the currently supported types. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html">Instance Families and Types</a>. The parameter values that you use to specify the various types are in the <b>API Name</b> column of the <b>Available Instance Types</b> table.</p>
-- @param AgentVersion [String] <p>The default AWS OpsWorks Stacks agent version. You have the following options:</p> <ul> <li> <p> <code>INHERIT</code> - Use the stack's default agent version setting.</p> </li> <li> <p> <i>version_number</i> - Use the specified agent version. This value overrides the stack's default setting. To update the agent version, edit the instance configuration and specify a new version. AWS OpsWorks Stacks then automatically installs that version on the instance.</p> </li> </ul> <p>The default setting is <code>INHERIT</code>. To specify an agent version, you must use the complete version number, not the abbreviated number shown on the console. For a list of available agent version numbers, call <a>DescribeAgentVersions</a>. AgentVersion cannot be set to Chef 12.2.</p>
-- Required parameter: StackId
-- Required parameter: LayerIds
-- Required parameter: InstanceType
function M.CreateInstanceRequest(StackId, AmiId, LayerIds, VirtualizationType, EbsOptimized, SshKeyName, Hostname, RootDeviceType, BlockDeviceMappings, AvailabilityZone, Architecture, AutoScalingType, SubnetId, Tenancy, InstallUpdatesOnBoot, Os, InstanceType, AgentVersion, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateInstanceRequest")
	local t = { 
		["StackId"] = StackId,
		["AmiId"] = AmiId,
		["LayerIds"] = LayerIds,
		["VirtualizationType"] = VirtualizationType,
		["EbsOptimized"] = EbsOptimized,
		["SshKeyName"] = SshKeyName,
		["Hostname"] = Hostname,
		["RootDeviceType"] = RootDeviceType,
		["BlockDeviceMappings"] = BlockDeviceMappings,
		["AvailabilityZone"] = AvailabilityZone,
		["Architecture"] = Architecture,
		["AutoScalingType"] = AutoScalingType,
		["SubnetId"] = SubnetId,
		["Tenancy"] = Tenancy,
		["InstallUpdatesOnBoot"] = InstallUpdatesOnBoot,
		["Os"] = Os,
		["InstanceType"] = InstanceType,
		["AgentVersion"] = AgentVersion,
	}
	M.AssertCreateInstanceRequest(t)
	return t
end

local DescribeRaidArraysRequest_keys = { "InstanceId" = true, "StackId" = true, "RaidArrayIds" = true, nil }

function M.AssertDescribeRaidArraysRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeRaidArraysRequest to be of type 'table'")
	if struct["InstanceId"] then M.AssertString(struct["InstanceId"]) end
	if struct["StackId"] then M.AssertString(struct["StackId"]) end
	if struct["RaidArrayIds"] then M.AssertStrings(struct["RaidArrayIds"]) end
	for k,_ in pairs(struct) do
		assert(DescribeRaidArraysRequest_keys[k], "DescribeRaidArraysRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeRaidArraysRequest
--  
-- @param InstanceId [String] <p>The instance ID. If you use this parameter, <code>DescribeRaidArrays</code> returns descriptions of the RAID arrays associated with the specified instance. </p>
-- @param StackId [String] <p>The stack ID.</p>
-- @param RaidArrayIds [Strings] <p>An array of RAID array IDs. If you use this parameter, <code>DescribeRaidArrays</code> returns descriptions of the specified arrays. Otherwise, it returns a description of every array.</p>
function M.DescribeRaidArraysRequest(InstanceId, StackId, RaidArrayIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeRaidArraysRequest")
	local t = { 
		["InstanceId"] = InstanceId,
		["StackId"] = StackId,
		["RaidArrayIds"] = RaidArrayIds,
	}
	M.AssertDescribeRaidArraysRequest(t)
	return t
end

local BlockDeviceMapping_keys = { "Ebs" = true, "DeviceName" = true, "VirtualName" = true, "NoDevice" = true, nil }

function M.AssertBlockDeviceMapping(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BlockDeviceMapping to be of type 'table'")
	if struct["Ebs"] then M.AssertEbsBlockDevice(struct["Ebs"]) end
	if struct["DeviceName"] then M.AssertString(struct["DeviceName"]) end
	if struct["VirtualName"] then M.AssertString(struct["VirtualName"]) end
	if struct["NoDevice"] then M.AssertString(struct["NoDevice"]) end
	for k,_ in pairs(struct) do
		assert(BlockDeviceMapping_keys[k], "BlockDeviceMapping contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BlockDeviceMapping
-- <p>Describes a block device mapping. This data type maps directly to the Amazon EC2 <a href="http://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_BlockDeviceMapping.html">BlockDeviceMapping</a> data type. </p>
-- @param Ebs [EbsBlockDevice] <p>An <code>EBSBlockDevice</code> that defines how to configure an Amazon EBS volume when the instance is launched.</p>
-- @param DeviceName [String] <p>The device name that is exposed to the instance, such as <code>/dev/sdh</code>. For the root device, you can use the explicit device name or you can set this parameter to <code>ROOT_DEVICE</code> and AWS OpsWorks Stacks will provide the correct device name.</p>
-- @param VirtualName [String] <p>The virtual device name. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_BlockDeviceMapping.html">BlockDeviceMapping</a>.</p>
-- @param NoDevice [String] <p>Suppresses the specified device included in the AMI's block device mapping.</p>
function M.BlockDeviceMapping(Ebs, DeviceName, VirtualName, NoDevice, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BlockDeviceMapping")
	local t = { 
		["Ebs"] = Ebs,
		["DeviceName"] = DeviceName,
		["VirtualName"] = VirtualName,
		["NoDevice"] = NoDevice,
	}
	M.AssertBlockDeviceMapping(t)
	return t
end

local DeleteUserProfileRequest_keys = { "IamUserArn" = true, nil }

function M.AssertDeleteUserProfileRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteUserProfileRequest to be of type 'table'")
	assert(struct["IamUserArn"], "Expected key IamUserArn to exist in table")
	if struct["IamUserArn"] then M.AssertString(struct["IamUserArn"]) end
	for k,_ in pairs(struct) do
		assert(DeleteUserProfileRequest_keys[k], "DeleteUserProfileRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteUserProfileRequest
--  
-- @param IamUserArn [String] <p>The user's IAM ARN. This can also be a federated user's ARN.</p>
-- Required parameter: IamUserArn
function M.DeleteUserProfileRequest(IamUserArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteUserProfileRequest")
	local t = { 
		["IamUserArn"] = IamUserArn,
	}
	M.AssertDeleteUserProfileRequest(t)
	return t
end

local DescribeInstancesRequest_keys = { "StackId" = true, "InstanceIds" = true, "LayerId" = true, nil }

function M.AssertDescribeInstancesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeInstancesRequest to be of type 'table'")
	if struct["StackId"] then M.AssertString(struct["StackId"]) end
	if struct["InstanceIds"] then M.AssertStrings(struct["InstanceIds"]) end
	if struct["LayerId"] then M.AssertString(struct["LayerId"]) end
	for k,_ in pairs(struct) do
		assert(DescribeInstancesRequest_keys[k], "DescribeInstancesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeInstancesRequest
--  
-- @param StackId [String] <p>A stack ID. If you use this parameter, <code>DescribeInstances</code> returns descriptions of the instances associated with the specified stack.</p>
-- @param InstanceIds [Strings] <p>An array of instance IDs to be described. If you use this parameter, <code>DescribeInstances</code> returns a description of the specified instances. Otherwise, it returns a description of every instance.</p>
-- @param LayerId [String] <p>A layer ID. If you use this parameter, <code>DescribeInstances</code> returns descriptions of the instances associated with the specified layer.</p>
function M.DescribeInstancesRequest(StackId, InstanceIds, LayerId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeInstancesRequest")
	local t = { 
		["StackId"] = StackId,
		["InstanceIds"] = InstanceIds,
		["LayerId"] = LayerId,
	}
	M.AssertDescribeInstancesRequest(t)
	return t
end

local InstanceIdentity_keys = { "Document" = true, "Signature" = true, nil }

function M.AssertInstanceIdentity(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstanceIdentity to be of type 'table'")
	if struct["Document"] then M.AssertString(struct["Document"]) end
	if struct["Signature"] then M.AssertString(struct["Signature"]) end
	for k,_ in pairs(struct) do
		assert(InstanceIdentity_keys[k], "InstanceIdentity contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstanceIdentity
-- <p>Contains a description of an Amazon EC2 instance from the Amazon EC2 metadata service. For more information, see <a href="http://docs.aws.amazon.com/sdkfornet/latest/apidocs/Index.html">Instance Metadata and User Data</a>.</p>
-- @param Document [String] <p>A JSON document that contains the metadata.</p>
-- @param Signature [String] <p>A signature that can be used to verify the document's accuracy and authenticity.</p>
function M.InstanceIdentity(Document, Signature, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InstanceIdentity")
	local t = { 
		["Document"] = Document,
		["Signature"] = Signature,
	}
	M.AssertInstanceIdentity(t)
	return t
end

local DeregisterElasticIpRequest_keys = { "ElasticIp" = true, nil }

function M.AssertDeregisterElasticIpRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeregisterElasticIpRequest to be of type 'table'")
	assert(struct["ElasticIp"], "Expected key ElasticIp to exist in table")
	if struct["ElasticIp"] then M.AssertString(struct["ElasticIp"]) end
	for k,_ in pairs(struct) do
		assert(DeregisterElasticIpRequest_keys[k], "DeregisterElasticIpRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeregisterElasticIpRequest
--  
-- @param ElasticIp [String] <p>The Elastic IP address.</p>
-- Required parameter: ElasticIp
function M.DeregisterElasticIpRequest(ElasticIp, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeregisterElasticIpRequest")
	local t = { 
		["ElasticIp"] = ElasticIp,
	}
	M.AssertDeregisterElasticIpRequest(t)
	return t
end

local RaidArray_keys = { "StackId" = true, "AvailabilityZone" = true, "Name" = true, "NumberOfDisks" = true, "InstanceId" = true, "RaidLevel" = true, "VolumeType" = true, "RaidArrayId" = true, "Device" = true, "MountPoint" = true, "Iops" = true, "CreatedAt" = true, "Size" = true, nil }

function M.AssertRaidArray(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RaidArray to be of type 'table'")
	if struct["StackId"] then M.AssertString(struct["StackId"]) end
	if struct["AvailabilityZone"] then M.AssertString(struct["AvailabilityZone"]) end
	if struct["Name"] then M.AssertString(struct["Name"]) end
	if struct["NumberOfDisks"] then M.AssertInteger(struct["NumberOfDisks"]) end
	if struct["InstanceId"] then M.AssertString(struct["InstanceId"]) end
	if struct["RaidLevel"] then M.AssertInteger(struct["RaidLevel"]) end
	if struct["VolumeType"] then M.AssertString(struct["VolumeType"]) end
	if struct["RaidArrayId"] then M.AssertString(struct["RaidArrayId"]) end
	if struct["Device"] then M.AssertString(struct["Device"]) end
	if struct["MountPoint"] then M.AssertString(struct["MountPoint"]) end
	if struct["Iops"] then M.AssertInteger(struct["Iops"]) end
	if struct["CreatedAt"] then M.AssertDateTime(struct["CreatedAt"]) end
	if struct["Size"] then M.AssertInteger(struct["Size"]) end
	for k,_ in pairs(struct) do
		assert(RaidArray_keys[k], "RaidArray contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RaidArray
-- <p>Describes an instance's RAID array.</p>
-- @param StackId [String] <p>The stack ID.</p>
-- @param AvailabilityZone [String] <p>The array's Availability Zone. For more information, see <a href="http://docs.aws.amazon.com/general/latest/gr/rande.html">Regions and Endpoints</a>.</p>
-- @param Name [String] <p>The array name.</p>
-- @param NumberOfDisks [Integer] <p>The number of disks in the array.</p>
-- @param InstanceId [String] <p>The instance ID.</p>
-- @param RaidLevel [Integer] <p>The <a href="http://en.wikipedia.org/wiki/Standard_RAID_levels">RAID level</a>.</p>
-- @param VolumeType [String] <p>The volume type, standard or PIOPS.</p>
-- @param RaidArrayId [String] <p>The array ID.</p>
-- @param Device [String] <p>The array's Linux device. For example /dev/mdadm0.</p>
-- @param MountPoint [String] <p>The array's mount point.</p>
-- @param Iops [Integer] <p>For PIOPS volumes, the IOPS per disk.</p>
-- @param CreatedAt [DateTime] <p>When the RAID array was created.</p>
-- @param Size [Integer] <p>The array's size.</p>
function M.RaidArray(StackId, AvailabilityZone, Name, NumberOfDisks, InstanceId, RaidLevel, VolumeType, RaidArrayId, Device, MountPoint, Iops, CreatedAt, Size, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RaidArray")
	local t = { 
		["StackId"] = StackId,
		["AvailabilityZone"] = AvailabilityZone,
		["Name"] = Name,
		["NumberOfDisks"] = NumberOfDisks,
		["InstanceId"] = InstanceId,
		["RaidLevel"] = RaidLevel,
		["VolumeType"] = VolumeType,
		["RaidArrayId"] = RaidArrayId,
		["Device"] = Device,
		["MountPoint"] = MountPoint,
		["Iops"] = Iops,
		["CreatedAt"] = CreatedAt,
		["Size"] = Size,
	}
	M.AssertRaidArray(t)
	return t
end

local ElasticIp_keys = { "InstanceId" = true, "Ip" = true, "Domain" = true, "Region" = true, "Name" = true, nil }

function M.AssertElasticIp(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ElasticIp to be of type 'table'")
	if struct["InstanceId"] then M.AssertString(struct["InstanceId"]) end
	if struct["Ip"] then M.AssertString(struct["Ip"]) end
	if struct["Domain"] then M.AssertString(struct["Domain"]) end
	if struct["Region"] then M.AssertString(struct["Region"]) end
	if struct["Name"] then M.AssertString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(ElasticIp_keys[k], "ElasticIp contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ElasticIp
-- <p>Describes an Elastic IP address.</p>
-- @param InstanceId [String] <p>The ID of the instance that the address is attached to.</p>
-- @param Ip [String] <p>The IP address.</p>
-- @param Domain [String] <p>The domain.</p>
-- @param Region [String] <p>The AWS region. For more information, see <a href="http://docs.aws.amazon.com/general/latest/gr/rande.html">Regions and Endpoints</a>.</p>
-- @param Name [String] <p>The name.</p>
function M.ElasticIp(InstanceId, Ip, Domain, Region, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ElasticIp")
	local t = { 
		["InstanceId"] = InstanceId,
		["Ip"] = Ip,
		["Domain"] = Domain,
		["Region"] = Region,
		["Name"] = Name,
	}
	M.AssertElasticIp(t)
	return t
end

local DescribeElasticLoadBalancersResult_keys = { "ElasticLoadBalancers" = true, nil }

function M.AssertDescribeElasticLoadBalancersResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeElasticLoadBalancersResult to be of type 'table'")
	if struct["ElasticLoadBalancers"] then M.AssertElasticLoadBalancers(struct["ElasticLoadBalancers"]) end
	for k,_ in pairs(struct) do
		assert(DescribeElasticLoadBalancersResult_keys[k], "DescribeElasticLoadBalancersResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeElasticLoadBalancersResult
-- <p>Contains the response to a <code>DescribeElasticLoadBalancers</code> request.</p>
-- @param ElasticLoadBalancers [ElasticLoadBalancers] <p>A list of <code>ElasticLoadBalancer</code> objects that describe the specified Elastic Load Balancing instances.</p>
function M.DescribeElasticLoadBalancersResult(ElasticLoadBalancers, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeElasticLoadBalancersResult")
	local t = { 
		["ElasticLoadBalancers"] = ElasticLoadBalancers,
	}
	M.AssertDescribeElasticLoadBalancersResult(t)
	return t
end

local DeleteInstanceRequest_keys = { "InstanceId" = true, "DeleteVolumes" = true, "DeleteElasticIp" = true, nil }

function M.AssertDeleteInstanceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteInstanceRequest to be of type 'table'")
	assert(struct["InstanceId"], "Expected key InstanceId to exist in table")
	if struct["InstanceId"] then M.AssertString(struct["InstanceId"]) end
	if struct["DeleteVolumes"] then M.AssertBoolean(struct["DeleteVolumes"]) end
	if struct["DeleteElasticIp"] then M.AssertBoolean(struct["DeleteElasticIp"]) end
	for k,_ in pairs(struct) do
		assert(DeleteInstanceRequest_keys[k], "DeleteInstanceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteInstanceRequest
--  
-- @param InstanceId [String] <p>The instance ID.</p>
-- @param DeleteVolumes [Boolean] <p>Whether to delete the instance's Amazon EBS volumes.</p>
-- @param DeleteElasticIp [Boolean] <p>Whether to delete the instance Elastic IP address.</p>
-- Required parameter: InstanceId
function M.DeleteInstanceRequest(InstanceId, DeleteVolumes, DeleteElasticIp, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteInstanceRequest")
	local t = { 
		["InstanceId"] = InstanceId,
		["DeleteVolumes"] = DeleteVolumes,
		["DeleteElasticIp"] = DeleteElasticIp,
	}
	M.AssertDeleteInstanceRequest(t)
	return t
end

local DisassociateElasticIpRequest_keys = { "ElasticIp" = true, nil }

function M.AssertDisassociateElasticIpRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisassociateElasticIpRequest to be of type 'table'")
	assert(struct["ElasticIp"], "Expected key ElasticIp to exist in table")
	if struct["ElasticIp"] then M.AssertString(struct["ElasticIp"]) end
	for k,_ in pairs(struct) do
		assert(DisassociateElasticIpRequest_keys[k], "DisassociateElasticIpRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisassociateElasticIpRequest
--  
-- @param ElasticIp [String] <p>The Elastic IP address.</p>
-- Required parameter: ElasticIp
function M.DisassociateElasticIpRequest(ElasticIp, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DisassociateElasticIpRequest")
	local t = { 
		["ElasticIp"] = ElasticIp,
	}
	M.AssertDisassociateElasticIpRequest(t)
	return t
end

local ElasticLoadBalancer_keys = { "StackId" = true, "ElasticLoadBalancerName" = true, "VpcId" = true, "Ec2InstanceIds" = true, "Region" = true, "DnsName" = true, "LayerId" = true, "AvailabilityZones" = true, "SubnetIds" = true, nil }

function M.AssertElasticLoadBalancer(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ElasticLoadBalancer to be of type 'table'")
	if struct["StackId"] then M.AssertString(struct["StackId"]) end
	if struct["ElasticLoadBalancerName"] then M.AssertString(struct["ElasticLoadBalancerName"]) end
	if struct["VpcId"] then M.AssertString(struct["VpcId"]) end
	if struct["Ec2InstanceIds"] then M.AssertStrings(struct["Ec2InstanceIds"]) end
	if struct["Region"] then M.AssertString(struct["Region"]) end
	if struct["DnsName"] then M.AssertString(struct["DnsName"]) end
	if struct["LayerId"] then M.AssertString(struct["LayerId"]) end
	if struct["AvailabilityZones"] then M.AssertStrings(struct["AvailabilityZones"]) end
	if struct["SubnetIds"] then M.AssertStrings(struct["SubnetIds"]) end
	for k,_ in pairs(struct) do
		assert(ElasticLoadBalancer_keys[k], "ElasticLoadBalancer contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ElasticLoadBalancer
-- <p>Describes an Elastic Load Balancing instance.</p>
-- @param StackId [String] <p>The ID of the stack that the instance is associated with.</p>
-- @param ElasticLoadBalancerName [String] <p>The Elastic Load Balancing instance's name.</p>
-- @param VpcId [String] <p>The VPC ID.</p>
-- @param Ec2InstanceIds [Strings] <p>A list of the EC2 instances that the Elastic Load Balancing instance is managing traffic for.</p>
-- @param Region [String] <p>The instance's AWS region.</p>
-- @param DnsName [String] <p>The instance's public DNS name.</p>
-- @param LayerId [String] <p>The ID of the layer that the instance is attached to.</p>
-- @param AvailabilityZones [Strings] <p>A list of Availability Zones.</p>
-- @param SubnetIds [Strings] <p>A list of subnet IDs, if the stack is running in a VPC.</p>
function M.ElasticLoadBalancer(StackId, ElasticLoadBalancerName, VpcId, Ec2InstanceIds, Region, DnsName, LayerId, AvailabilityZones, SubnetIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ElasticLoadBalancer")
	local t = { 
		["StackId"] = StackId,
		["ElasticLoadBalancerName"] = ElasticLoadBalancerName,
		["VpcId"] = VpcId,
		["Ec2InstanceIds"] = Ec2InstanceIds,
		["Region"] = Region,
		["DnsName"] = DnsName,
		["LayerId"] = LayerId,
		["AvailabilityZones"] = AvailabilityZones,
		["SubnetIds"] = SubnetIds,
	}
	M.AssertElasticLoadBalancer(t)
	return t
end

local ResourceNotFoundException_keys = { "message" = true, nil }

function M.AssertResourceNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceNotFoundException to be of type 'table'")
	if struct["message"] then M.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(ResourceNotFoundException_keys[k], "ResourceNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceNotFoundException
-- <p>Indicates that a resource was not found.</p>
-- @param message [String] <p>The exception message.</p>
function M.ResourceNotFoundException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceNotFoundException")
	local t = { 
		["message"] = message,
	}
	M.AssertResourceNotFoundException(t)
	return t
end

local DescribeRaidArraysResult_keys = { "RaidArrays" = true, nil }

function M.AssertDescribeRaidArraysResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeRaidArraysResult to be of type 'table'")
	if struct["RaidArrays"] then M.AssertRaidArrays(struct["RaidArrays"]) end
	for k,_ in pairs(struct) do
		assert(DescribeRaidArraysResult_keys[k], "DescribeRaidArraysResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeRaidArraysResult
-- <p>Contains the response to a <code>DescribeRaidArrays</code> request.</p>
-- @param RaidArrays [RaidArrays] <p>A <code>RaidArrays</code> object that describes the specified RAID arrays.</p>
function M.DescribeRaidArraysResult(RaidArrays, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeRaidArraysResult")
	local t = { 
		["RaidArrays"] = RaidArrays,
	}
	M.AssertDescribeRaidArraysResult(t)
	return t
end

local DescribeServiceErrorsRequest_keys = { "StackId" = true, "InstanceId" = true, "ServiceErrorIds" = true, nil }

function M.AssertDescribeServiceErrorsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeServiceErrorsRequest to be of type 'table'")
	if struct["StackId"] then M.AssertString(struct["StackId"]) end
	if struct["InstanceId"] then M.AssertString(struct["InstanceId"]) end
	if struct["ServiceErrorIds"] then M.AssertStrings(struct["ServiceErrorIds"]) end
	for k,_ in pairs(struct) do
		assert(DescribeServiceErrorsRequest_keys[k], "DescribeServiceErrorsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeServiceErrorsRequest
--  
-- @param StackId [String] <p>The stack ID. If you use this parameter, <code>DescribeServiceErrors</code> returns descriptions of the errors associated with the specified stack.</p>
-- @param InstanceId [String] <p>The instance ID. If you use this parameter, <code>DescribeServiceErrors</code> returns descriptions of the errors associated with the specified instance.</p>
-- @param ServiceErrorIds [Strings] <p>An array of service error IDs. If you use this parameter, <code>DescribeServiceErrors</code> returns descriptions of the specified errors. Otherwise, it returns a description of every error.</p>
function M.DescribeServiceErrorsRequest(StackId, InstanceId, ServiceErrorIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeServiceErrorsRequest")
	local t = { 
		["StackId"] = StackId,
		["InstanceId"] = InstanceId,
		["ServiceErrorIds"] = ServiceErrorIds,
	}
	M.AssertDescribeServiceErrorsRequest(t)
	return t
end

local ServiceError_keys = { "StackId" = true, "InstanceId" = true, "ServiceErrorId" = true, "Message" = true, "Type" = true, "CreatedAt" = true, nil }

function M.AssertServiceError(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ServiceError to be of type 'table'")
	if struct["StackId"] then M.AssertString(struct["StackId"]) end
	if struct["InstanceId"] then M.AssertString(struct["InstanceId"]) end
	if struct["ServiceErrorId"] then M.AssertString(struct["ServiceErrorId"]) end
	if struct["Message"] then M.AssertString(struct["Message"]) end
	if struct["Type"] then M.AssertString(struct["Type"]) end
	if struct["CreatedAt"] then M.AssertDateTime(struct["CreatedAt"]) end
	for k,_ in pairs(struct) do
		assert(ServiceError_keys[k], "ServiceError contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ServiceError
-- <p>Describes an AWS OpsWorks Stacks service error.</p>
-- @param StackId [String] <p>The stack ID.</p>
-- @param InstanceId [String] <p>The instance ID.</p>
-- @param ServiceErrorId [String] <p>The error ID.</p>
-- @param Message [String] <p>A message that describes the error.</p>
-- @param Type [String] <p>The error type.</p>
-- @param CreatedAt [DateTime] <p>When the error occurred.</p>
function M.ServiceError(StackId, InstanceId, ServiceErrorId, Message, Type, CreatedAt, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ServiceError")
	local t = { 
		["StackId"] = StackId,
		["InstanceId"] = InstanceId,
		["ServiceErrorId"] = ServiceErrorId,
		["Message"] = Message,
		["Type"] = Type,
		["CreatedAt"] = CreatedAt,
	}
	M.AssertServiceError(t)
	return t
end

local DescribeVolumesRequest_keys = { "InstanceId" = true, "StackId" = true, "RaidArrayId" = true, "VolumeIds" = true, nil }

function M.AssertDescribeVolumesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeVolumesRequest to be of type 'table'")
	if struct["InstanceId"] then M.AssertString(struct["InstanceId"]) end
	if struct["StackId"] then M.AssertString(struct["StackId"]) end
	if struct["RaidArrayId"] then M.AssertString(struct["RaidArrayId"]) end
	if struct["VolumeIds"] then M.AssertStrings(struct["VolumeIds"]) end
	for k,_ in pairs(struct) do
		assert(DescribeVolumesRequest_keys[k], "DescribeVolumesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeVolumesRequest
--  
-- @param InstanceId [String] <p>The instance ID. If you use this parameter, <code>DescribeVolumes</code> returns descriptions of the volumes associated with the specified instance.</p>
-- @param StackId [String] <p>A stack ID. The action describes the stack's registered Amazon EBS volumes.</p>
-- @param RaidArrayId [String] <p>The RAID array ID. If you use this parameter, <code>DescribeVolumes</code> returns descriptions of the volumes associated with the specified RAID array.</p>
-- @param VolumeIds [Strings] <p>Am array of volume IDs. If you use this parameter, <code>DescribeVolumes</code> returns descriptions of the specified volumes. Otherwise, it returns a description of every volume.</p>
function M.DescribeVolumesRequest(InstanceId, StackId, RaidArrayId, VolumeIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeVolumesRequest")
	local t = { 
		["InstanceId"] = InstanceId,
		["StackId"] = StackId,
		["RaidArrayId"] = RaidArrayId,
		["VolumeIds"] = VolumeIds,
	}
	M.AssertDescribeVolumesRequest(t)
	return t
end

local StartStackRequest_keys = { "StackId" = true, nil }

function M.AssertStartStackRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartStackRequest to be of type 'table'")
	assert(struct["StackId"], "Expected key StackId to exist in table")
	if struct["StackId"] then M.AssertString(struct["StackId"]) end
	for k,_ in pairs(struct) do
		assert(StartStackRequest_keys[k], "StartStackRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartStackRequest
--  
-- @param StackId [String] <p>The stack ID.</p>
-- Required parameter: StackId
function M.StartStackRequest(StackId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StartStackRequest")
	local t = { 
		["StackId"] = StackId,
	}
	M.AssertStartStackRequest(t)
	return t
end

local VolumeConfiguration_keys = { "NumberOfDisks" = true, "RaidLevel" = true, "VolumeType" = true, "Iops" = true, "MountPoint" = true, "Size" = true, nil }

function M.AssertVolumeConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VolumeConfiguration to be of type 'table'")
	assert(struct["MountPoint"], "Expected key MountPoint to exist in table")
	assert(struct["NumberOfDisks"], "Expected key NumberOfDisks to exist in table")
	assert(struct["Size"], "Expected key Size to exist in table")
	if struct["NumberOfDisks"] then M.AssertInteger(struct["NumberOfDisks"]) end
	if struct["RaidLevel"] then M.AssertInteger(struct["RaidLevel"]) end
	if struct["VolumeType"] then M.AssertString(struct["VolumeType"]) end
	if struct["Iops"] then M.AssertInteger(struct["Iops"]) end
	if struct["MountPoint"] then M.AssertString(struct["MountPoint"]) end
	if struct["Size"] then M.AssertInteger(struct["Size"]) end
	for k,_ in pairs(struct) do
		assert(VolumeConfiguration_keys[k], "VolumeConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VolumeConfiguration
-- <p>Describes an Amazon EBS volume configuration.</p>
-- @param NumberOfDisks [Integer] <p>The number of disks in the volume.</p>
-- @param RaidLevel [Integer] <p>The volume <a href="http://en.wikipedia.org/wiki/Standard_RAID_levels">RAID level</a>.</p>
-- @param VolumeType [String] <p>The volume type:</p> <ul> <li> <p> <code>standard</code> - Magnetic</p> </li> <li> <p> <code>io1</code> - Provisioned IOPS (SSD)</p> </li> <li> <p> <code>gp2</code> - General Purpose (SSD)</p> </li> </ul>
-- @param Iops [Integer] <p>For PIOPS volumes, the IOPS per disk.</p>
-- @param MountPoint [String] <p>The volume mount point. For example "/dev/sdh".</p>
-- @param Size [Integer] <p>The volume size.</p>
-- Required parameter: MountPoint
-- Required parameter: NumberOfDisks
-- Required parameter: Size
function M.VolumeConfiguration(NumberOfDisks, RaidLevel, VolumeType, Iops, MountPoint, Size, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating VolumeConfiguration")
	local t = { 
		["NumberOfDisks"] = NumberOfDisks,
		["RaidLevel"] = RaidLevel,
		["VolumeType"] = VolumeType,
		["Iops"] = Iops,
		["MountPoint"] = MountPoint,
		["Size"] = Size,
	}
	M.AssertVolumeConfiguration(t)
	return t
end

local DescribeElasticIpsRequest_keys = { "InstanceId" = true, "StackId" = true, "Ips" = true, nil }

function M.AssertDescribeElasticIpsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeElasticIpsRequest to be of type 'table'")
	if struct["InstanceId"] then M.AssertString(struct["InstanceId"]) end
	if struct["StackId"] then M.AssertString(struct["StackId"]) end
	if struct["Ips"] then M.AssertStrings(struct["Ips"]) end
	for k,_ in pairs(struct) do
		assert(DescribeElasticIpsRequest_keys[k], "DescribeElasticIpsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeElasticIpsRequest
--  
-- @param InstanceId [String] <p>The instance ID. If you include this parameter, <code>DescribeElasticIps</code> returns a description of the Elastic IP addresses associated with the specified instance.</p>
-- @param StackId [String] <p>A stack ID. If you include this parameter, <code>DescribeElasticIps</code> returns a description of the Elastic IP addresses that are registered with the specified stack.</p>
-- @param Ips [Strings] <p>An array of Elastic IP addresses to be described. If you include this parameter, <code>DescribeElasticIps</code> returns a description of the specified Elastic IP addresses. Otherwise, it returns a description of every Elastic IP address.</p>
function M.DescribeElasticIpsRequest(InstanceId, StackId, Ips, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeElasticIpsRequest")
	local t = { 
		["InstanceId"] = InstanceId,
		["StackId"] = StackId,
		["Ips"] = Ips,
	}
	M.AssertDescribeElasticIpsRequest(t)
	return t
end

local CreateInstanceResult_keys = { "InstanceId" = true, nil }

function M.AssertCreateInstanceResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateInstanceResult to be of type 'table'")
	if struct["InstanceId"] then M.AssertString(struct["InstanceId"]) end
	for k,_ in pairs(struct) do
		assert(CreateInstanceResult_keys[k], "CreateInstanceResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateInstanceResult
-- <p>Contains the response to a <code>CreateInstance</code> request.</p>
-- @param InstanceId [String] <p>The instance ID.</p>
function M.CreateInstanceResult(InstanceId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateInstanceResult")
	local t = { 
		["InstanceId"] = InstanceId,
	}
	M.AssertCreateInstanceResult(t)
	return t
end

local DescribeStackSummaryResult_keys = { "StackSummary" = true, nil }

function M.AssertDescribeStackSummaryResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeStackSummaryResult to be of type 'table'")
	if struct["StackSummary"] then M.AssertStackSummary(struct["StackSummary"]) end
	for k,_ in pairs(struct) do
		assert(DescribeStackSummaryResult_keys[k], "DescribeStackSummaryResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeStackSummaryResult
-- <p>Contains the response to a <code>DescribeStackSummary</code> request.</p>
-- @param StackSummary [StackSummary] <p>A <code>StackSummary</code> object that contains the results.</p>
function M.DescribeStackSummaryResult(StackSummary, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeStackSummaryResult")
	local t = { 
		["StackSummary"] = StackSummary,
	}
	M.AssertDescribeStackSummaryResult(t)
	return t
end

local UpdateVolumeRequest_keys = { "MountPoint" = true, "VolumeId" = true, "Name" = true, nil }

function M.AssertUpdateVolumeRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateVolumeRequest to be of type 'table'")
	assert(struct["VolumeId"], "Expected key VolumeId to exist in table")
	if struct["MountPoint"] then M.AssertString(struct["MountPoint"]) end
	if struct["VolumeId"] then M.AssertString(struct["VolumeId"]) end
	if struct["Name"] then M.AssertString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(UpdateVolumeRequest_keys[k], "UpdateVolumeRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateVolumeRequest
--  
-- @param MountPoint [String] <p>The new mount point.</p>
-- @param VolumeId [String] <p>The volume ID.</p>
-- @param Name [String] <p>The new name.</p>
-- Required parameter: VolumeId
function M.UpdateVolumeRequest(MountPoint, VolumeId, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateVolumeRequest")
	local t = { 
		["MountPoint"] = MountPoint,
		["VolumeId"] = VolumeId,
		["Name"] = Name,
	}
	M.AssertUpdateVolumeRequest(t)
	return t
end

local StackConfigurationManager_keys = { "Version" = true, "Name" = true, nil }

function M.AssertStackConfigurationManager(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StackConfigurationManager to be of type 'table'")
	if struct["Version"] then M.AssertString(struct["Version"]) end
	if struct["Name"] then M.AssertString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(StackConfigurationManager_keys[k], "StackConfigurationManager contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StackConfigurationManager
-- <p>Describes the configuration manager.</p>
-- @param Version [String] <p>The Chef version. This parameter must be set to 12, 11.10, or 11.4 for Linux stacks, and to 12.2 for Windows stacks. The default value for Linux stacks is 11.4.</p>
-- @param Name [String] <p>The name. This parameter must be set to "Chef".</p>
function M.StackConfigurationManager(Version, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StackConfigurationManager")
	local t = { 
		["Version"] = Version,
		["Name"] = Name,
	}
	M.AssertStackConfigurationManager(t)
	return t
end

local InstancesCount_keys = { "StartFailed" = true, "Requested" = true, "Registering" = true, "Terminated" = true, "RunningSetup" = true, "Booting" = true, "Deregistering" = true, "Rebooting" = true, "Unassigning" = true, "ShuttingDown" = true, "SetupFailed" = true, "Terminating" = true, "ConnectionLost" = true, "Online" = true, "Stopping" = true, "Stopped" = true, "Assigning" = true, "Registered" = true, "Pending" = true, nil }

function M.AssertInstancesCount(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstancesCount to be of type 'table'")
	if struct["StartFailed"] then M.AssertInteger(struct["StartFailed"]) end
	if struct["Requested"] then M.AssertInteger(struct["Requested"]) end
	if struct["Registering"] then M.AssertInteger(struct["Registering"]) end
	if struct["Terminated"] then M.AssertInteger(struct["Terminated"]) end
	if struct["RunningSetup"] then M.AssertInteger(struct["RunningSetup"]) end
	if struct["Booting"] then M.AssertInteger(struct["Booting"]) end
	if struct["Deregistering"] then M.AssertInteger(struct["Deregistering"]) end
	if struct["Rebooting"] then M.AssertInteger(struct["Rebooting"]) end
	if struct["Unassigning"] then M.AssertInteger(struct["Unassigning"]) end
	if struct["ShuttingDown"] then M.AssertInteger(struct["ShuttingDown"]) end
	if struct["SetupFailed"] then M.AssertInteger(struct["SetupFailed"]) end
	if struct["Terminating"] then M.AssertInteger(struct["Terminating"]) end
	if struct["ConnectionLost"] then M.AssertInteger(struct["ConnectionLost"]) end
	if struct["Online"] then M.AssertInteger(struct["Online"]) end
	if struct["Stopping"] then M.AssertInteger(struct["Stopping"]) end
	if struct["Stopped"] then M.AssertInteger(struct["Stopped"]) end
	if struct["Assigning"] then M.AssertInteger(struct["Assigning"]) end
	if struct["Registered"] then M.AssertInteger(struct["Registered"]) end
	if struct["Pending"] then M.AssertInteger(struct["Pending"]) end
	for k,_ in pairs(struct) do
		assert(InstancesCount_keys[k], "InstancesCount contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstancesCount
-- <p>Describes how many instances a stack has for each status.</p>
-- @param StartFailed [Integer] <p>The number of instances with <code>start_failed</code> status.</p>
-- @param Requested [Integer] <p>The number of instances with <code>requested</code> status.</p>
-- @param Registering [Integer] <p>The number of instances in the Registering state.</p>
-- @param Terminated [Integer] <p>The number of instances with <code>terminated</code> status.</p>
-- @param RunningSetup [Integer] <p>The number of instances with <code>running_setup</code> status.</p>
-- @param Booting [Integer] <p>The number of instances with <code>booting</code> status.</p>
-- @param Deregistering [Integer] <p>The number of instances in the Deregistering state.</p>
-- @param Rebooting [Integer] <p>The number of instances with <code>rebooting</code> status.</p>
-- @param Unassigning [Integer] <p>The number of instances in the Unassigning state.</p>
-- @param ShuttingDown [Integer] <p>The number of instances with <code>shutting_down</code> status.</p>
-- @param SetupFailed [Integer] <p>The number of instances with <code>setup_failed</code> status.</p>
-- @param Terminating [Integer] <p>The number of instances with <code>terminating</code> status.</p>
-- @param ConnectionLost [Integer] <p>The number of instances with <code>connection_lost</code> status.</p>
-- @param Online [Integer] <p>The number of instances with <code>online</code> status.</p>
-- @param Stopping [Integer] <p>The number of instances with <code>stopping</code> status.</p>
-- @param Stopped [Integer] <p>The number of instances with <code>stopped</code> status.</p>
-- @param Assigning [Integer] <p>The number of instances in the Assigning state.</p>
-- @param Registered [Integer] <p>The number of instances in the Registered state.</p>
-- @param Pending [Integer] <p>The number of instances with <code>pending</code> status.</p>
function M.InstancesCount(StartFailed, Requested, Registering, Terminated, RunningSetup, Booting, Deregistering, Rebooting, Unassigning, ShuttingDown, SetupFailed, Terminating, ConnectionLost, Online, Stopping, Stopped, Assigning, Registered, Pending, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InstancesCount")
	local t = { 
		["StartFailed"] = StartFailed,
		["Requested"] = Requested,
		["Registering"] = Registering,
		["Terminated"] = Terminated,
		["RunningSetup"] = RunningSetup,
		["Booting"] = Booting,
		["Deregistering"] = Deregistering,
		["Rebooting"] = Rebooting,
		["Unassigning"] = Unassigning,
		["ShuttingDown"] = ShuttingDown,
		["SetupFailed"] = SetupFailed,
		["Terminating"] = Terminating,
		["ConnectionLost"] = ConnectionLost,
		["Online"] = Online,
		["Stopping"] = Stopping,
		["Stopped"] = Stopped,
		["Assigning"] = Assigning,
		["Registered"] = Registered,
		["Pending"] = Pending,
	}
	M.AssertInstancesCount(t)
	return t
end

local DescribeCommandsResult_keys = { "Commands" = true, nil }

function M.AssertDescribeCommandsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeCommandsResult to be of type 'table'")
	if struct["Commands"] then M.AssertCommands(struct["Commands"]) end
	for k,_ in pairs(struct) do
		assert(DescribeCommandsResult_keys[k], "DescribeCommandsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeCommandsResult
-- <p>Contains the response to a <code>DescribeCommands</code> request.</p>
-- @param Commands [Commands] <p>An array of <code>Command</code> objects that describe each of the specified commands.</p>
function M.DescribeCommandsResult(Commands, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeCommandsResult")
	local t = { 
		["Commands"] = Commands,
	}
	M.AssertDescribeCommandsResult(t)
	return t
end

local ReportedOs_keys = { "Version" = true, "Name" = true, "Family" = true, nil }

function M.AssertReportedOs(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReportedOs to be of type 'table'")
	if struct["Version"] then M.AssertString(struct["Version"]) end
	if struct["Name"] then M.AssertString(struct["Name"]) end
	if struct["Family"] then M.AssertString(struct["Family"]) end
	for k,_ in pairs(struct) do
		assert(ReportedOs_keys[k], "ReportedOs contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReportedOs
-- <p>A registered instance's reported operating system.</p>
-- @param Version [String] <p>The operating system version.</p>
-- @param Name [String] <p>The operating system name.</p>
-- @param Family [String] <p>The operating system family.</p>
function M.ReportedOs(Version, Name, Family, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReportedOs")
	local t = { 
		["Version"] = Version,
		["Name"] = Name,
		["Family"] = Family,
	}
	M.AssertReportedOs(t)
	return t
end

local TemporaryCredential_keys = { "Username" = true, "InstanceId" = true, "Password" = true, "ValidForInMinutes" = true, nil }

function M.AssertTemporaryCredential(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TemporaryCredential to be of type 'table'")
	if struct["Username"] then M.AssertString(struct["Username"]) end
	if struct["InstanceId"] then M.AssertString(struct["InstanceId"]) end
	if struct["Password"] then M.AssertString(struct["Password"]) end
	if struct["ValidForInMinutes"] then M.AssertInteger(struct["ValidForInMinutes"]) end
	for k,_ in pairs(struct) do
		assert(TemporaryCredential_keys[k], "TemporaryCredential contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TemporaryCredential
-- <p>Contains the data needed by RDP clients such as the Microsoft Remote Desktop Connection to log in to the instance.</p>
-- @param Username [String] <p>The user name.</p>
-- @param InstanceId [String] <p>The instance's AWS OpsWorks Stacks ID.</p>
-- @param Password [String] <p>The password.</p>
-- @param ValidForInMinutes [Integer] <p>The length of time (in minutes) that the grant is valid. When the grant expires, at the end of this period, the user will no longer be able to use the credentials to log in. If they are logged in at the time, they will be automatically logged out.</p>
function M.TemporaryCredential(Username, InstanceId, Password, ValidForInMinutes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TemporaryCredential")
	local t = { 
		["Username"] = Username,
		["InstanceId"] = InstanceId,
		["Password"] = Password,
		["ValidForInMinutes"] = ValidForInMinutes,
	}
	M.AssertTemporaryCredential(t)
	return t
end

local UpdateLayerRequest_keys = { "LifecycleEventConfiguration" = true, "CustomRecipes" = true, "AutoAssignElasticIps" = true, "Name" = true, "CloudWatchLogsConfiguration" = true, "CustomJson" = true, "VolumeConfigurations" = true, "AutoAssignPublicIps" = true, "EnableAutoHealing" = true, "CustomInstanceProfileArn" = true, "UseEbsOptimizedInstances" = true, "LayerId" = true, "Attributes" = true, "Shortname" = true, "Packages" = true, "CustomSecurityGroupIds" = true, "InstallUpdatesOnBoot" = true, nil }

function M.AssertUpdateLayerRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateLayerRequest to be of type 'table'")
	assert(struct["LayerId"], "Expected key LayerId to exist in table")
	if struct["LifecycleEventConfiguration"] then M.AssertLifecycleEventConfiguration(struct["LifecycleEventConfiguration"]) end
	if struct["CustomRecipes"] then M.AssertRecipes(struct["CustomRecipes"]) end
	if struct["AutoAssignElasticIps"] then M.AssertBoolean(struct["AutoAssignElasticIps"]) end
	if struct["Name"] then M.AssertString(struct["Name"]) end
	if struct["CloudWatchLogsConfiguration"] then M.AssertCloudWatchLogsConfiguration(struct["CloudWatchLogsConfiguration"]) end
	if struct["CustomJson"] then M.AssertString(struct["CustomJson"]) end
	if struct["VolumeConfigurations"] then M.AssertVolumeConfigurations(struct["VolumeConfigurations"]) end
	if struct["AutoAssignPublicIps"] then M.AssertBoolean(struct["AutoAssignPublicIps"]) end
	if struct["EnableAutoHealing"] then M.AssertBoolean(struct["EnableAutoHealing"]) end
	if struct["CustomInstanceProfileArn"] then M.AssertString(struct["CustomInstanceProfileArn"]) end
	if struct["UseEbsOptimizedInstances"] then M.AssertBoolean(struct["UseEbsOptimizedInstances"]) end
	if struct["LayerId"] then M.AssertString(struct["LayerId"]) end
	if struct["Attributes"] then M.AssertLayerAttributes(struct["Attributes"]) end
	if struct["Shortname"] then M.AssertString(struct["Shortname"]) end
	if struct["Packages"] then M.AssertStrings(struct["Packages"]) end
	if struct["CustomSecurityGroupIds"] then M.AssertStrings(struct["CustomSecurityGroupIds"]) end
	if struct["InstallUpdatesOnBoot"] then M.AssertBoolean(struct["InstallUpdatesOnBoot"]) end
	for k,_ in pairs(struct) do
		assert(UpdateLayerRequest_keys[k], "UpdateLayerRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateLayerRequest
--  
-- @param LifecycleEventConfiguration [LifecycleEventConfiguration] <p/>
-- @param CustomRecipes [Recipes] <p>A <code>LayerCustomRecipes</code> object that specifies the layer's custom recipes.</p>
-- @param AutoAssignElasticIps [Boolean] <p>Whether to automatically assign an <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html">Elastic IP address</a> to the layer's instances. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-edit.html">How to Edit a Layer</a>.</p>
-- @param Name [String] <p>The layer name, which is used by the console.</p>
-- @param CloudWatchLogsConfiguration [CloudWatchLogsConfiguration] <p>Specifies CloudWatch Logs configuration options for the layer. For more information, see <a>CloudWatchLogsLogStream</a>.</p>
-- @param CustomJson [String] <p>A JSON-formatted string containing custom stack configuration and deployment attributes to be installed on the layer's instances. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook-json-override.html"> Using Custom JSON</a>. </p>
-- @param VolumeConfigurations [VolumeConfigurations] <p>A <code>VolumeConfigurations</code> object that describes the layer's Amazon EBS volumes.</p>
-- @param AutoAssignPublicIps [Boolean] <p>For stacks that are running in a VPC, whether to automatically assign a public IP address to the layer's instances. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-edit.html">How to Edit a Layer</a>.</p>
-- @param EnableAutoHealing [Boolean] <p>Whether to disable auto healing for the layer.</p>
-- @param CustomInstanceProfileArn [String] <p>The ARN of an IAM profile to be used for all of the layer's EC2 instances. For more information about IAM ARNs, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">Using Identifiers</a>.</p>
-- @param UseEbsOptimizedInstances [Boolean] <p>Whether to use Amazon EBS-optimized instances.</p>
-- @param LayerId [String] <p>The layer ID.</p>
-- @param Attributes [LayerAttributes] <p>One or more user-defined key/value pairs to be added to the stack attributes.</p>
-- @param Shortname [String] <p>For custom layers only, use this parameter to specify the layer's short name, which is used internally by AWS OpsWorks Stacks and by Chef. The short name is also used as the name for the directory where your app files are installed. It can have a maximum of 200 characters and must be in the following format: /\A[a-z0-9\-\_\.]+\Z/.</p> <p>The built-in layers' short names are defined by AWS OpsWorks Stacks. For more information, see the <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/layers.html">Layer Reference</a> </p>
-- @param Packages [Strings] <p>An array of <code>Package</code> objects that describe the layer's packages.</p>
-- @param CustomSecurityGroupIds [Strings] <p>An array containing the layer's custom security group IDs.</p>
-- @param InstallUpdatesOnBoot [Boolean] <p>Whether to install operating system and package updates when the instance boots. The default value is <code>true</code>. To control when updates are installed, set this value to <code>false</code>. You must then update your instances manually by using <a>CreateDeployment</a> to run the <code>update_dependencies</code> stack command or manually running <code>yum</code> (Amazon Linux) or <code>apt-get</code> (Ubuntu) on the instances. </p> <note> <p>We strongly recommend using the default value of <code>true</code>, to ensure that your instances have the latest security updates.</p> </note>
-- Required parameter: LayerId
function M.UpdateLayerRequest(LifecycleEventConfiguration, CustomRecipes, AutoAssignElasticIps, Name, CloudWatchLogsConfiguration, CustomJson, VolumeConfigurations, AutoAssignPublicIps, EnableAutoHealing, CustomInstanceProfileArn, UseEbsOptimizedInstances, LayerId, Attributes, Shortname, Packages, CustomSecurityGroupIds, InstallUpdatesOnBoot, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateLayerRequest")
	local t = { 
		["LifecycleEventConfiguration"] = LifecycleEventConfiguration,
		["CustomRecipes"] = CustomRecipes,
		["AutoAssignElasticIps"] = AutoAssignElasticIps,
		["Name"] = Name,
		["CloudWatchLogsConfiguration"] = CloudWatchLogsConfiguration,
		["CustomJson"] = CustomJson,
		["VolumeConfigurations"] = VolumeConfigurations,
		["AutoAssignPublicIps"] = AutoAssignPublicIps,
		["EnableAutoHealing"] = EnableAutoHealing,
		["CustomInstanceProfileArn"] = CustomInstanceProfileArn,
		["UseEbsOptimizedInstances"] = UseEbsOptimizedInstances,
		["LayerId"] = LayerId,
		["Attributes"] = Attributes,
		["Shortname"] = Shortname,
		["Packages"] = Packages,
		["CustomSecurityGroupIds"] = CustomSecurityGroupIds,
		["InstallUpdatesOnBoot"] = InstallUpdatesOnBoot,
	}
	M.AssertUpdateLayerRequest(t)
	return t
end

local UnassignInstanceRequest_keys = { "InstanceId" = true, nil }

function M.AssertUnassignInstanceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnassignInstanceRequest to be of type 'table'")
	assert(struct["InstanceId"], "Expected key InstanceId to exist in table")
	if struct["InstanceId"] then M.AssertString(struct["InstanceId"]) end
	for k,_ in pairs(struct) do
		assert(UnassignInstanceRequest_keys[k], "UnassignInstanceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnassignInstanceRequest
--  
-- @param InstanceId [String] <p>The instance ID.</p>
-- Required parameter: InstanceId
function M.UnassignInstanceRequest(InstanceId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UnassignInstanceRequest")
	local t = { 
		["InstanceId"] = InstanceId,
	}
	M.AssertUnassignInstanceRequest(t)
	return t
end

local CreateLayerResult_keys = { "LayerId" = true, nil }

function M.AssertCreateLayerResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateLayerResult to be of type 'table'")
	if struct["LayerId"] then M.AssertString(struct["LayerId"]) end
	for k,_ in pairs(struct) do
		assert(CreateLayerResult_keys[k], "CreateLayerResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateLayerResult
-- <p>Contains the response to a <code>CreateLayer</code> request.</p>
-- @param LayerId [String] <p>The layer ID.</p>
function M.CreateLayerResult(LayerId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateLayerResult")
	local t = { 
		["LayerId"] = LayerId,
	}
	M.AssertCreateLayerResult(t)
	return t
end

local CloudWatchLogsConfiguration_keys = { "LogStreams" = true, "Enabled" = true, nil }

function M.AssertCloudWatchLogsConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CloudWatchLogsConfiguration to be of type 'table'")
	if struct["LogStreams"] then M.AssertCloudWatchLogsLogStreams(struct["LogStreams"]) end
	if struct["Enabled"] then M.AssertBoolean(struct["Enabled"]) end
	for k,_ in pairs(struct) do
		assert(CloudWatchLogsConfiguration_keys[k], "CloudWatchLogsConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CloudWatchLogsConfiguration
-- <p>Describes the Amazon CloudWatch logs configuration for a layer.</p>
-- @param LogStreams [CloudWatchLogsLogStreams] <p>A list of configuration options for CloudWatch Logs.</p>
-- @param Enabled [Boolean] <p>Whether CloudWatch Logs is enabled for a layer.</p>
function M.CloudWatchLogsConfiguration(LogStreams, Enabled, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CloudWatchLogsConfiguration")
	local t = { 
		["LogStreams"] = LogStreams,
		["Enabled"] = Enabled,
	}
	M.AssertCloudWatchLogsConfiguration(t)
	return t
end

local GrantAccessRequest_keys = { "InstanceId" = true, "ValidForInMinutes" = true, nil }

function M.AssertGrantAccessRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GrantAccessRequest to be of type 'table'")
	assert(struct["InstanceId"], "Expected key InstanceId to exist in table")
	if struct["InstanceId"] then M.AssertString(struct["InstanceId"]) end
	if struct["ValidForInMinutes"] then M.AssertValidForInMinutes(struct["ValidForInMinutes"]) end
	for k,_ in pairs(struct) do
		assert(GrantAccessRequest_keys[k], "GrantAccessRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GrantAccessRequest
--  
-- @param InstanceId [String] <p>The instance's AWS OpsWorks Stacks ID.</p>
-- @param ValidForInMinutes [ValidForInMinutes] <p>The length of time (in minutes) that the grant is valid. When the grant expires at the end of this period, the user will no longer be able to use the credentials to log in. If the user is logged in at the time, he or she automatically will be logged out.</p>
-- Required parameter: InstanceId
function M.GrantAccessRequest(InstanceId, ValidForInMinutes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GrantAccessRequest")
	local t = { 
		["InstanceId"] = InstanceId,
		["ValidForInMinutes"] = ValidForInMinutes,
	}
	M.AssertGrantAccessRequest(t)
	return t
end

local RegisterVolumeResult_keys = { "VolumeId" = true, nil }

function M.AssertRegisterVolumeResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RegisterVolumeResult to be of type 'table'")
	if struct["VolumeId"] then M.AssertString(struct["VolumeId"]) end
	for k,_ in pairs(struct) do
		assert(RegisterVolumeResult_keys[k], "RegisterVolumeResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RegisterVolumeResult
-- <p>Contains the response to a <code>RegisterVolume</code> request.</p>
-- @param VolumeId [String] <p>The volume ID.</p>
function M.RegisterVolumeResult(VolumeId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RegisterVolumeResult")
	local t = { 
		["VolumeId"] = VolumeId,
	}
	M.AssertRegisterVolumeResult(t)
	return t
end

local Volume_keys = { "Status" = true, "AvailabilityZone" = true, "Name" = true, "InstanceId" = true, "Region" = true, "VolumeType" = true, "VolumeId" = true, "Device" = true, "RaidArrayId" = true, "Ec2VolumeId" = true, "MountPoint" = true, "Iops" = true, "Size" = true, nil }

function M.AssertVolume(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Volume to be of type 'table'")
	if struct["Status"] then M.AssertString(struct["Status"]) end
	if struct["AvailabilityZone"] then M.AssertString(struct["AvailabilityZone"]) end
	if struct["Name"] then M.AssertString(struct["Name"]) end
	if struct["InstanceId"] then M.AssertString(struct["InstanceId"]) end
	if struct["Region"] then M.AssertString(struct["Region"]) end
	if struct["VolumeType"] then M.AssertString(struct["VolumeType"]) end
	if struct["VolumeId"] then M.AssertString(struct["VolumeId"]) end
	if struct["Device"] then M.AssertString(struct["Device"]) end
	if struct["RaidArrayId"] then M.AssertString(struct["RaidArrayId"]) end
	if struct["Ec2VolumeId"] then M.AssertString(struct["Ec2VolumeId"]) end
	if struct["MountPoint"] then M.AssertString(struct["MountPoint"]) end
	if struct["Iops"] then M.AssertInteger(struct["Iops"]) end
	if struct["Size"] then M.AssertInteger(struct["Size"]) end
	for k,_ in pairs(struct) do
		assert(Volume_keys[k], "Volume contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Volume
-- <p>Describes an instance's Amazon EBS volume.</p>
-- @param Status [String] <p>The value returned by <a href="http://docs.aws.amazon.com/AWSEC2/latest/APIReference/ApiReference-query-DescribeVolumes.html">DescribeVolumes</a>.</p>
-- @param AvailabilityZone [String] <p>The volume Availability Zone. For more information, see <a href="http://docs.aws.amazon.com/general/latest/gr/rande.html">Regions and Endpoints</a>.</p>
-- @param Name [String] <p>The volume name.</p>
-- @param InstanceId [String] <p>The instance ID.</p>
-- @param Region [String] <p>The AWS region. For more information about AWS regions, see <a href="http://docs.aws.amazon.com/general/latest/gr/rande.html">Regions and Endpoints</a>.</p>
-- @param VolumeType [String] <p>The volume type, standard or PIOPS.</p>
-- @param VolumeId [String] <p>The volume ID.</p>
-- @param Device [String] <p>The device name.</p>
-- @param RaidArrayId [String] <p>The RAID array ID.</p>
-- @param Ec2VolumeId [String] <p>The Amazon EC2 volume ID.</p>
-- @param MountPoint [String] <p>The volume mount point. For example, "/mnt/disk1".</p>
-- @param Iops [Integer] <p>For PIOPS volumes, the IOPS per disk.</p>
-- @param Size [Integer] <p>The volume size.</p>
function M.Volume(Status, AvailabilityZone, Name, InstanceId, Region, VolumeType, VolumeId, Device, RaidArrayId, Ec2VolumeId, MountPoint, Iops, Size, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Volume")
	local t = { 
		["Status"] = Status,
		["AvailabilityZone"] = AvailabilityZone,
		["Name"] = Name,
		["InstanceId"] = InstanceId,
		["Region"] = Region,
		["VolumeType"] = VolumeType,
		["VolumeId"] = VolumeId,
		["Device"] = Device,
		["RaidArrayId"] = RaidArrayId,
		["Ec2VolumeId"] = Ec2VolumeId,
		["MountPoint"] = MountPoint,
		["Iops"] = Iops,
		["Size"] = Size,
	}
	M.AssertVolume(t)
	return t
end

local DeleteAppRequest_keys = { "AppId" = true, nil }

function M.AssertDeleteAppRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteAppRequest to be of type 'table'")
	assert(struct["AppId"], "Expected key AppId to exist in table")
	if struct["AppId"] then M.AssertString(struct["AppId"]) end
	for k,_ in pairs(struct) do
		assert(DeleteAppRequest_keys[k], "DeleteAppRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteAppRequest
--  
-- @param AppId [String] <p>The app ID.</p>
-- Required parameter: AppId
function M.DeleteAppRequest(AppId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteAppRequest")
	local t = { 
		["AppId"] = AppId,
	}
	M.AssertDeleteAppRequest(t)
	return t
end

local GrantAccessResult_keys = { "TemporaryCredential" = true, nil }

function M.AssertGrantAccessResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GrantAccessResult to be of type 'table'")
	if struct["TemporaryCredential"] then M.AssertTemporaryCredential(struct["TemporaryCredential"]) end
	for k,_ in pairs(struct) do
		assert(GrantAccessResult_keys[k], "GrantAccessResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GrantAccessResult
-- <p>Contains the response to a <code>GrantAccess</code> request.</p>
-- @param TemporaryCredential [TemporaryCredential] <p>A <code>TemporaryCredential</code> object that contains the data needed to log in to the instance by RDP clients, such as the Microsoft Remote Desktop Connection.</p>
function M.GrantAccessResult(TemporaryCredential, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GrantAccessResult")
	local t = { 
		["TemporaryCredential"] = TemporaryCredential,
	}
	M.AssertGrantAccessResult(t)
	return t
end

local UpdateInstanceRequest_keys = { "AmiId" = true, "LayerIds" = true, "InstanceId" = true, "SshKeyName" = true, "Hostname" = true, "EbsOptimized" = true, "Architecture" = true, "AutoScalingType" = true, "InstallUpdatesOnBoot" = true, "Os" = true, "InstanceType" = true, "AgentVersion" = true, nil }

function M.AssertUpdateInstanceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateInstanceRequest to be of type 'table'")
	assert(struct["InstanceId"], "Expected key InstanceId to exist in table")
	if struct["AmiId"] then M.AssertString(struct["AmiId"]) end
	if struct["LayerIds"] then M.AssertStrings(struct["LayerIds"]) end
	if struct["InstanceId"] then M.AssertString(struct["InstanceId"]) end
	if struct["SshKeyName"] then M.AssertString(struct["SshKeyName"]) end
	if struct["Hostname"] then M.AssertString(struct["Hostname"]) end
	if struct["EbsOptimized"] then M.AssertBoolean(struct["EbsOptimized"]) end
	if struct["Architecture"] then M.AssertArchitecture(struct["Architecture"]) end
	if struct["AutoScalingType"] then M.AssertAutoScalingType(struct["AutoScalingType"]) end
	if struct["InstallUpdatesOnBoot"] then M.AssertBoolean(struct["InstallUpdatesOnBoot"]) end
	if struct["Os"] then M.AssertString(struct["Os"]) end
	if struct["InstanceType"] then M.AssertString(struct["InstanceType"]) end
	if struct["AgentVersion"] then M.AssertString(struct["AgentVersion"]) end
	for k,_ in pairs(struct) do
		assert(UpdateInstanceRequest_keys[k], "UpdateInstanceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateInstanceRequest
--  
-- @param AmiId [String] <p>The ID of the AMI that was used to create the instance. The value of this parameter must be the same AMI ID that the instance is already using. You cannot apply a new AMI to an instance by running UpdateInstance. UpdateInstance does not work on instances that are using custom AMIs. </p>
-- @param LayerIds [Strings] <p>The instance's layer IDs.</p>
-- @param InstanceId [String] <p>The instance ID.</p>
-- @param SshKeyName [String] <p>The instance's Amazon EC2 key name.</p>
-- @param Hostname [String] <p>The instance host name.</p>
-- @param EbsOptimized [Boolean] <p>This property cannot be updated.</p>
-- @param Architecture [Architecture] <p>The instance architecture. Instance types do not necessarily support both architectures. For a list of the architectures that are supported by the different instance types, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html">Instance Families and Types</a>.</p>
-- @param AutoScalingType [AutoScalingType] <p>For load-based or time-based instances, the type. Windows stacks can use only time-based instances.</p>
-- @param InstallUpdatesOnBoot [Boolean] <p>Whether to install operating system and package updates when the instance boots. The default value is <code>true</code>. To control when updates are installed, set this value to <code>false</code>. You must then update your instances manually by using <a>CreateDeployment</a> to run the <code>update_dependencies</code> stack command or by manually running <code>yum</code> (Amazon Linux) or <code>apt-get</code> (Ubuntu) on the instances. </p> <note> <p>We strongly recommend using the default value of <code>true</code>, to ensure that your instances have the latest security updates.</p> </note>
-- @param Os [String] <p>The instance's operating system, which must be set to one of the following. You cannot update an instance that is using a custom AMI.</p> <ul> <li> <p>A supported Linux operating system: An Amazon Linux version, such as <code>Amazon Linux 2017.03</code>, <code>Amazon Linux 2016.09</code>, <code>Amazon Linux 2016.03</code>, <code>Amazon Linux 2015.09</code>, or <code>Amazon Linux 2015.03</code>.</p> </li> <li> <p>A supported Ubuntu operating system, such as <code>Ubuntu 16.04 LTS</code>, <code>Ubuntu 14.04 LTS</code>, or <code>Ubuntu 12.04 LTS</code>.</p> </li> <li> <p> <code>CentOS Linux 7</code> </p> </li> <li> <p> <code>Red Hat Enterprise Linux 7</code> </p> </li> <li> <p>A supported Windows operating system, such as <code>Microsoft Windows Server 2012 R2 Base</code>, <code>Microsoft Windows Server 2012 R2 with SQL Server Express</code>, <code>Microsoft Windows Server 2012 R2 with SQL Server Standard</code>, or <code>Microsoft Windows Server 2012 R2 with SQL Server Web</code>.</p> </li> </ul> <p>For more information on the supported operating systems, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-os.html">AWS OpsWorks Stacks Operating Systems</a>.</p> <p>The default option is the current Amazon Linux version. If you set this parameter to <code>Custom</code>, you must use the AmiId parameter to specify the custom AMI that you want to use. For more information on the supported operating systems, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-os.html">Operating Systems</a>. For more information on how to use custom AMIs with OpsWorks, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-custom-ami.html">Using Custom AMIs</a>.</p> <note> <p>You can specify a different Linux operating system for the updated stack, but you cannot change from Linux to Windows or Windows to Linux.</p> </note>
-- @param InstanceType [String] <p>The instance type, such as <code>t2.micro</code>. For a list of supported instance types, open the stack in the console, choose <b>Instances</b>, and choose <b>+ Instance</b>. The <b>Size</b> list contains the currently supported types. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html">Instance Families and Types</a>. The parameter values that you use to specify the various types are in the <b>API Name</b> column of the <b>Available Instance Types</b> table.</p>
-- @param AgentVersion [String] <p>The default AWS OpsWorks Stacks agent version. You have the following options:</p> <ul> <li> <p> <code>INHERIT</code> - Use the stack's default agent version setting.</p> </li> <li> <p> <i>version_number</i> - Use the specified agent version. This value overrides the stack's default setting. To update the agent version, you must edit the instance configuration and specify a new version. AWS OpsWorks Stacks then automatically installs that version on the instance.</p> </li> </ul> <p>The default setting is <code>INHERIT</code>. To specify an agent version, you must use the complete version number, not the abbreviated number shown on the console. For a list of available agent version numbers, call <a>DescribeAgentVersions</a>.</p> <p>AgentVersion cannot be set to Chef 12.2.</p>
-- Required parameter: InstanceId
function M.UpdateInstanceRequest(AmiId, LayerIds, InstanceId, SshKeyName, Hostname, EbsOptimized, Architecture, AutoScalingType, InstallUpdatesOnBoot, Os, InstanceType, AgentVersion, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateInstanceRequest")
	local t = { 
		["AmiId"] = AmiId,
		["LayerIds"] = LayerIds,
		["InstanceId"] = InstanceId,
		["SshKeyName"] = SshKeyName,
		["Hostname"] = Hostname,
		["EbsOptimized"] = EbsOptimized,
		["Architecture"] = Architecture,
		["AutoScalingType"] = AutoScalingType,
		["InstallUpdatesOnBoot"] = InstallUpdatesOnBoot,
		["Os"] = Os,
		["InstanceType"] = InstanceType,
		["AgentVersion"] = AgentVersion,
	}
	M.AssertUpdateInstanceRequest(t)
	return t
end

local Deployment_keys = { "StackId" = true, "Comment" = true, "CompletedAt" = true, "CustomJson" = true, "Status" = true, "IamUserArn" = true, "DeploymentId" = true, "Command" = true, "InstanceIds" = true, "AppId" = true, "Duration" = true, "CreatedAt" = true, nil }

function M.AssertDeployment(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Deployment to be of type 'table'")
	if struct["StackId"] then M.AssertString(struct["StackId"]) end
	if struct["Comment"] then M.AssertString(struct["Comment"]) end
	if struct["CompletedAt"] then M.AssertDateTime(struct["CompletedAt"]) end
	if struct["CustomJson"] then M.AssertString(struct["CustomJson"]) end
	if struct["Status"] then M.AssertString(struct["Status"]) end
	if struct["IamUserArn"] then M.AssertString(struct["IamUserArn"]) end
	if struct["DeploymentId"] then M.AssertString(struct["DeploymentId"]) end
	if struct["Command"] then M.AssertDeploymentCommand(struct["Command"]) end
	if struct["InstanceIds"] then M.AssertStrings(struct["InstanceIds"]) end
	if struct["AppId"] then M.AssertString(struct["AppId"]) end
	if struct["Duration"] then M.AssertInteger(struct["Duration"]) end
	if struct["CreatedAt"] then M.AssertDateTime(struct["CreatedAt"]) end
	for k,_ in pairs(struct) do
		assert(Deployment_keys[k], "Deployment contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Deployment
-- <p>Describes a deployment of a stack or app.</p>
-- @param StackId [String] <p>The stack ID.</p>
-- @param Comment [String] <p>A user-defined comment.</p>
-- @param CompletedAt [DateTime] <p>Date when the deployment completed.</p>
-- @param CustomJson [String] <p>A string that contains user-defined custom JSON. It can be used to override the corresponding default stack configuration attribute values for stack or to pass data to recipes. The string should be in the following format:</p> <p> <code>"{\"key1\": \"value1\", \"key2\": \"value2\",...}"</code> </p> <p>For more information on custom JSON, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-json.html">Use Custom JSON to Modify the Stack Configuration Attributes</a>.</p>
-- @param Status [String] <p>The deployment status:</p> <ul> <li> <p>running</p> </li> <li> <p>successful</p> </li> <li> <p>failed</p> </li> </ul>
-- @param IamUserArn [String] <p>The user's IAM ARN.</p>
-- @param DeploymentId [String] <p>The deployment ID.</p>
-- @param Command [DeploymentCommand] <p>Describes a deployment of a stack or app.</p>
-- @param InstanceIds [Strings] <p>The IDs of the target instances.</p>
-- @param AppId [String] <p>The app ID.</p>
-- @param Duration [Integer] <p>The deployment duration.</p>
-- @param CreatedAt [DateTime] <p>Date when the deployment was created.</p>
function M.Deployment(StackId, Comment, CompletedAt, CustomJson, Status, IamUserArn, DeploymentId, Command, InstanceIds, AppId, Duration, CreatedAt, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Deployment")
	local t = { 
		["StackId"] = StackId,
		["Comment"] = Comment,
		["CompletedAt"] = CompletedAt,
		["CustomJson"] = CustomJson,
		["Status"] = Status,
		["IamUserArn"] = IamUserArn,
		["DeploymentId"] = DeploymentId,
		["Command"] = Command,
		["InstanceIds"] = InstanceIds,
		["AppId"] = AppId,
		["Duration"] = Duration,
		["CreatedAt"] = CreatedAt,
	}
	M.AssertDeployment(t)
	return t
end

local DescribeLayersResult_keys = { "Layers" = true, nil }

function M.AssertDescribeLayersResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeLayersResult to be of type 'table'")
	if struct["Layers"] then M.AssertLayers(struct["Layers"]) end
	for k,_ in pairs(struct) do
		assert(DescribeLayersResult_keys[k], "DescribeLayersResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeLayersResult
-- <p>Contains the response to a <code>DescribeLayers</code> request.</p>
-- @param Layers [Layers] <p>An array of <code>Layer</code> objects that describe the layers.</p>
function M.DescribeLayersResult(Layers, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeLayersResult")
	local t = { 
		["Layers"] = Layers,
	}
	M.AssertDescribeLayersResult(t)
	return t
end

local DeregisterEcsClusterRequest_keys = { "EcsClusterArn" = true, nil }

function M.AssertDeregisterEcsClusterRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeregisterEcsClusterRequest to be of type 'table'")
	assert(struct["EcsClusterArn"], "Expected key EcsClusterArn to exist in table")
	if struct["EcsClusterArn"] then M.AssertString(struct["EcsClusterArn"]) end
	for k,_ in pairs(struct) do
		assert(DeregisterEcsClusterRequest_keys[k], "DeregisterEcsClusterRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeregisterEcsClusterRequest
--  
-- @param EcsClusterArn [String] <p>The cluster's ARN.</p>
-- Required parameter: EcsClusterArn
function M.DeregisterEcsClusterRequest(EcsClusterArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeregisterEcsClusterRequest")
	local t = { 
		["EcsClusterArn"] = EcsClusterArn,
	}
	M.AssertDeregisterEcsClusterRequest(t)
	return t
end

local DescribeStackProvisioningParametersResult_keys = { "AgentInstallerUrl" = true, "Parameters" = true, nil }

function M.AssertDescribeStackProvisioningParametersResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeStackProvisioningParametersResult to be of type 'table'")
	if struct["AgentInstallerUrl"] then M.AssertString(struct["AgentInstallerUrl"]) end
	if struct["Parameters"] then M.AssertParameters(struct["Parameters"]) end
	for k,_ in pairs(struct) do
		assert(DescribeStackProvisioningParametersResult_keys[k], "DescribeStackProvisioningParametersResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeStackProvisioningParametersResult
-- <p>Contains the response to a <code>DescribeStackProvisioningParameters</code> request.</p>
-- @param AgentInstallerUrl [String] <p>The AWS OpsWorks Stacks agent installer's URL.</p>
-- @param Parameters [Parameters] <p>An embedded object that contains the provisioning parameters.</p>
function M.DescribeStackProvisioningParametersResult(AgentInstallerUrl, Parameters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeStackProvisioningParametersResult")
	local t = { 
		["AgentInstallerUrl"] = AgentInstallerUrl,
		["Parameters"] = Parameters,
	}
	M.AssertDescribeStackProvisioningParametersResult(t)
	return t
end

local Stack_keys = { "StackId" = true, "HostnameTheme" = true, "UseCustomCookbooks" = true, "DefaultSshKeyName" = true, "ChefConfiguration" = true, "UseOpsworksSecurityGroups" = true, "ServiceRoleArn" = true, "VpcId" = true, "ConfigurationManager" = true, "CustomCookbooksSource" = true, "AgentVersion" = true, "DefaultAvailabilityZone" = true, "CreatedAt" = true, "Name" = true, "Region" = true, "DefaultInstanceProfileArn" = true, "Attributes" = true, "DefaultOs" = true, "DefaultSubnetId" = true, "DefaultRootDeviceType" = true, "CustomJson" = true, "Arn" = true, nil }

function M.AssertStack(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Stack to be of type 'table'")
	if struct["StackId"] then M.AssertString(struct["StackId"]) end
	if struct["HostnameTheme"] then M.AssertString(struct["HostnameTheme"]) end
	if struct["UseCustomCookbooks"] then M.AssertBoolean(struct["UseCustomCookbooks"]) end
	if struct["DefaultSshKeyName"] then M.AssertString(struct["DefaultSshKeyName"]) end
	if struct["ChefConfiguration"] then M.AssertChefConfiguration(struct["ChefConfiguration"]) end
	if struct["UseOpsworksSecurityGroups"] then M.AssertBoolean(struct["UseOpsworksSecurityGroups"]) end
	if struct["ServiceRoleArn"] then M.AssertString(struct["ServiceRoleArn"]) end
	if struct["VpcId"] then M.AssertString(struct["VpcId"]) end
	if struct["ConfigurationManager"] then M.AssertStackConfigurationManager(struct["ConfigurationManager"]) end
	if struct["CustomCookbooksSource"] then M.AssertSource(struct["CustomCookbooksSource"]) end
	if struct["AgentVersion"] then M.AssertString(struct["AgentVersion"]) end
	if struct["DefaultAvailabilityZone"] then M.AssertString(struct["DefaultAvailabilityZone"]) end
	if struct["CreatedAt"] then M.AssertDateTime(struct["CreatedAt"]) end
	if struct["Name"] then M.AssertString(struct["Name"]) end
	if struct["Region"] then M.AssertString(struct["Region"]) end
	if struct["DefaultInstanceProfileArn"] then M.AssertString(struct["DefaultInstanceProfileArn"]) end
	if struct["Attributes"] then M.AssertStackAttributes(struct["Attributes"]) end
	if struct["DefaultOs"] then M.AssertString(struct["DefaultOs"]) end
	if struct["DefaultSubnetId"] then M.AssertString(struct["DefaultSubnetId"]) end
	if struct["DefaultRootDeviceType"] then M.AssertRootDeviceType(struct["DefaultRootDeviceType"]) end
	if struct["CustomJson"] then M.AssertString(struct["CustomJson"]) end
	if struct["Arn"] then M.AssertString(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(Stack_keys[k], "Stack contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Stack
-- <p>Describes a stack.</p>
-- @param StackId [String] <p>The stack ID.</p>
-- @param HostnameTheme [String] <p>The stack host name theme, with spaces replaced by underscores.</p>
-- @param UseCustomCookbooks [Boolean] <p>Whether the stack uses custom cookbooks.</p>
-- @param DefaultSshKeyName [String] <p>A default Amazon EC2 key pair for the stack's instances. You can override this value when you create or update an instance.</p>
-- @param ChefConfiguration [ChefConfiguration] <p>A <code>ChefConfiguration</code> object that specifies whether to enable Berkshelf and the Berkshelf version. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-creating.html">Create a New Stack</a>.</p>
-- @param UseOpsworksSecurityGroups [Boolean] <p>Whether the stack automatically associates the AWS OpsWorks Stacks built-in security groups with the stack's layers.</p>
-- @param ServiceRoleArn [String] <p>The stack AWS Identity and Access Management (IAM) role.</p>
-- @param VpcId [String] <p>The VPC ID; applicable only if the stack is running in a VPC.</p>
-- @param ConfigurationManager [StackConfigurationManager] <p>The configuration manager.</p>
-- @param CustomCookbooksSource [Source] <p>Describes a stack.</p>
-- @param AgentVersion [String] <p>The agent version. This parameter is set to <code>LATEST</code> for auto-update. or a version number for a fixed agent version.</p>
-- @param DefaultAvailabilityZone [String] <p>The stack's default Availability Zone. For more information, see <a href="http://docs.aws.amazon.com/general/latest/gr/rande.html">Regions and Endpoints</a>.</p>
-- @param CreatedAt [DateTime] <p>The date when the stack was created.</p>
-- @param Name [String] <p>The stack name.</p>
-- @param Region [String] <p>The stack AWS region, such as "ap-northeast-2". For more information about AWS regions, see <a href="http://docs.aws.amazon.com/general/latest/gr/rande.html">Regions and Endpoints</a>.</p>
-- @param DefaultInstanceProfileArn [String] <p>The ARN of an IAM profile that is the default profile for all of the stack's EC2 instances. For more information about IAM ARNs, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">Using Identifiers</a>.</p>
-- @param Attributes [StackAttributes] <p>The stack's attributes.</p>
-- @param DefaultOs [String] <p>The stack's default operating system.</p>
-- @param DefaultSubnetId [String] <p>The default subnet ID; applicable only if the stack is running in a VPC.</p>
-- @param DefaultRootDeviceType [RootDeviceType] <p>The default root device type. This value is used by default for all instances in the stack, but you can override it when you create an instance. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ComponentsAMIs.html#storage-for-the-root-device">Storage for the Root Device</a>.</p>
-- @param CustomJson [String] <p>A JSON object that contains user-defined attributes to be added to the stack configuration and deployment attributes. You can use custom JSON to override the corresponding default stack configuration attribute values or to pass data to recipes. The string should be in the following format:</p> <p> <code>"{\"key1\": \"value1\", \"key2\": \"value2\",...}"</code> </p> <p>For more information on custom JSON, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-json.html">Use Custom JSON to Modify the Stack Configuration Attributes</a>.</p>
-- @param Arn [String] <p>The stack's ARN.</p>
function M.Stack(StackId, HostnameTheme, UseCustomCookbooks, DefaultSshKeyName, ChefConfiguration, UseOpsworksSecurityGroups, ServiceRoleArn, VpcId, ConfigurationManager, CustomCookbooksSource, AgentVersion, DefaultAvailabilityZone, CreatedAt, Name, Region, DefaultInstanceProfileArn, Attributes, DefaultOs, DefaultSubnetId, DefaultRootDeviceType, CustomJson, Arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Stack")
	local t = { 
		["StackId"] = StackId,
		["HostnameTheme"] = HostnameTheme,
		["UseCustomCookbooks"] = UseCustomCookbooks,
		["DefaultSshKeyName"] = DefaultSshKeyName,
		["ChefConfiguration"] = ChefConfiguration,
		["UseOpsworksSecurityGroups"] = UseOpsworksSecurityGroups,
		["ServiceRoleArn"] = ServiceRoleArn,
		["VpcId"] = VpcId,
		["ConfigurationManager"] = ConfigurationManager,
		["CustomCookbooksSource"] = CustomCookbooksSource,
		["AgentVersion"] = AgentVersion,
		["DefaultAvailabilityZone"] = DefaultAvailabilityZone,
		["CreatedAt"] = CreatedAt,
		["Name"] = Name,
		["Region"] = Region,
		["DefaultInstanceProfileArn"] = DefaultInstanceProfileArn,
		["Attributes"] = Attributes,
		["DefaultOs"] = DefaultOs,
		["DefaultSubnetId"] = DefaultSubnetId,
		["DefaultRootDeviceType"] = DefaultRootDeviceType,
		["CustomJson"] = CustomJson,
		["Arn"] = Arn,
	}
	M.AssertStack(t)
	return t
end

local RegisterVolumeRequest_keys = { "Ec2VolumeId" = true, "StackId" = true, nil }

function M.AssertRegisterVolumeRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RegisterVolumeRequest to be of type 'table'")
	assert(struct["StackId"], "Expected key StackId to exist in table")
	if struct["Ec2VolumeId"] then M.AssertString(struct["Ec2VolumeId"]) end
	if struct["StackId"] then M.AssertString(struct["StackId"]) end
	for k,_ in pairs(struct) do
		assert(RegisterVolumeRequest_keys[k], "RegisterVolumeRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RegisterVolumeRequest
--  
-- @param Ec2VolumeId [String] <p>The Amazon EBS volume ID.</p>
-- @param StackId [String] <p>The stack ID.</p>
-- Required parameter: StackId
function M.RegisterVolumeRequest(Ec2VolumeId, StackId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RegisterVolumeRequest")
	local t = { 
		["Ec2VolumeId"] = Ec2VolumeId,
		["StackId"] = StackId,
	}
	M.AssertRegisterVolumeRequest(t)
	return t
end

local RegisterElasticIpResult_keys = { "ElasticIp" = true, nil }

function M.AssertRegisterElasticIpResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RegisterElasticIpResult to be of type 'table'")
	if struct["ElasticIp"] then M.AssertString(struct["ElasticIp"]) end
	for k,_ in pairs(struct) do
		assert(RegisterElasticIpResult_keys[k], "RegisterElasticIpResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RegisterElasticIpResult
-- <p>Contains the response to a <code>RegisterElasticIp</code> request.</p>
-- @param ElasticIp [String] <p>The Elastic IP address.</p>
function M.RegisterElasticIpResult(ElasticIp, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RegisterElasticIpResult")
	local t = { 
		["ElasticIp"] = ElasticIp,
	}
	M.AssertRegisterElasticIpResult(t)
	return t
end

local DescribeLoadBasedAutoScalingRequest_keys = { "LayerIds" = true, nil }

function M.AssertDescribeLoadBasedAutoScalingRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeLoadBasedAutoScalingRequest to be of type 'table'")
	assert(struct["LayerIds"], "Expected key LayerIds to exist in table")
	if struct["LayerIds"] then M.AssertStrings(struct["LayerIds"]) end
	for k,_ in pairs(struct) do
		assert(DescribeLoadBasedAutoScalingRequest_keys[k], "DescribeLoadBasedAutoScalingRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeLoadBasedAutoScalingRequest
--  
-- @param LayerIds [Strings] <p>An array of layer IDs.</p>
-- Required parameter: LayerIds
function M.DescribeLoadBasedAutoScalingRequest(LayerIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeLoadBasedAutoScalingRequest")
	local t = { 
		["LayerIds"] = LayerIds,
	}
	M.AssertDescribeLoadBasedAutoScalingRequest(t)
	return t
end

local LifecycleEventConfiguration_keys = { "Shutdown" = true, nil }

function M.AssertLifecycleEventConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LifecycleEventConfiguration to be of type 'table'")
	if struct["Shutdown"] then M.AssertShutdownEventConfiguration(struct["Shutdown"]) end
	for k,_ in pairs(struct) do
		assert(LifecycleEventConfiguration_keys[k], "LifecycleEventConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LifecycleEventConfiguration
-- <p>Specifies the lifecycle event configuration</p>
-- @param Shutdown [ShutdownEventConfiguration] <p>A <code>ShutdownEventConfiguration</code> object that specifies the Shutdown event configuration.</p>
function M.LifecycleEventConfiguration(Shutdown, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LifecycleEventConfiguration")
	local t = { 
		["Shutdown"] = Shutdown,
	}
	M.AssertLifecycleEventConfiguration(t)
	return t
end

local CloudWatchLogsLogStream_keys = { "InitialPosition" = true, "Encoding" = true, "BatchSize" = true, "BufferDuration" = true, "MultiLineStartPattern" = true, "LogGroupName" = true, "File" = true, "BatchCount" = true, "DatetimeFormat" = true, "TimeZone" = true, "FileFingerprintLines" = true, nil }

function M.AssertCloudWatchLogsLogStream(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CloudWatchLogsLogStream to be of type 'table'")
	if struct["InitialPosition"] then M.AssertCloudWatchLogsInitialPosition(struct["InitialPosition"]) end
	if struct["Encoding"] then M.AssertCloudWatchLogsEncoding(struct["Encoding"]) end
	if struct["BatchSize"] then M.AssertInteger(struct["BatchSize"]) end
	if struct["BufferDuration"] then M.AssertInteger(struct["BufferDuration"]) end
	if struct["MultiLineStartPattern"] then M.AssertString(struct["MultiLineStartPattern"]) end
	if struct["LogGroupName"] then M.AssertString(struct["LogGroupName"]) end
	if struct["File"] then M.AssertString(struct["File"]) end
	if struct["BatchCount"] then M.AssertInteger(struct["BatchCount"]) end
	if struct["DatetimeFormat"] then M.AssertString(struct["DatetimeFormat"]) end
	if struct["TimeZone"] then M.AssertCloudWatchLogsTimeZone(struct["TimeZone"]) end
	if struct["FileFingerprintLines"] then M.AssertString(struct["FileFingerprintLines"]) end
	for k,_ in pairs(struct) do
		assert(CloudWatchLogsLogStream_keys[k], "CloudWatchLogsLogStream contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CloudWatchLogsLogStream
-- <p>Describes the Amazon CloudWatch logs configuration for a layer. For detailed information about members of this data type, see the <a href="http://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/AgentReference.html">CloudWatch Logs Agent Reference</a>.</p>
-- @param InitialPosition [CloudWatchLogsInitialPosition] <p>Specifies where to start to read data (start_of_file or end_of_file). The default is start_of_file. This setting is only used if there is no state persisted for that log stream.</p>
-- @param Encoding [CloudWatchLogsEncoding] <p>Specifies the encoding of the log file so that the file can be read correctly. The default is <code>utf_8</code>. Encodings supported by Python <code>codecs.decode()</code> can be used here.</p>
-- @param BatchSize [Integer] <p>Specifies the maximum size of log events in a batch, in bytes, up to 1048576 bytes. The default value is 32768 bytes. This size is calculated as the sum of all event messages in UTF-8, plus 26 bytes for each log event.</p>
-- @param BufferDuration [Integer] <p>Specifies the time duration for the batching of log events. The minimum value is 5000ms and default value is 5000ms.</p>
-- @param MultiLineStartPattern [String] <p>Specifies the pattern for identifying the start of a log message.</p>
-- @param LogGroupName [String] <p>Specifies the destination log group. A log group is created automatically if it doesn't already exist. Log group names can be between 1 and 512 characters long. Allowed characters include a-z, A-Z, 0-9, '_' (underscore), '-' (hyphen), '/' (forward slash), and '.' (period).</p>
-- @param File [String] <p>Specifies log files that you want to push to CloudWatch Logs.</p> <p> <code>File</code> can point to a specific file or multiple files (by using wild card characters such as <code>/var/log/system.log*</code>). Only the latest file is pushed to CloudWatch Logs, based on file modification time. We recommend that you use wild card characters to specify a series of files of the same type, such as <code>access_log.2014-06-01-01</code>, <code>access_log.2014-06-01-02</code>, and so on by using a pattern like <code>access_log.*</code>. Don't use a wildcard to match multiple file types, such as <code>access_log_80</code> and <code>access_log_443</code>. To specify multiple, different file types, add another log stream entry to the configuration file, so that each log file type is stored in a different log group.</p> <p>Zipped files are not supported.</p>
-- @param BatchCount [Integer] <p>Specifies the max number of log events in a batch, up to 10000. The default value is 1000.</p>
-- @param DatetimeFormat [String] <p>Specifies how the time stamp is extracted from logs. For more information, see the <a href="http://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/AgentReference.html">CloudWatch Logs Agent Reference</a>.</p>
-- @param TimeZone [CloudWatchLogsTimeZone] <p>Specifies the time zone of log event time stamps.</p>
-- @param FileFingerprintLines [String] <p>Specifies the range of lines for identifying a file. The valid values are one number, or two dash-delimited numbers, such as '1', '2-5'. The default value is '1', meaning the first line is used to calculate the fingerprint. Fingerprint lines are not sent to CloudWatch Logs unless all specified lines are available.</p>
function M.CloudWatchLogsLogStream(InitialPosition, Encoding, BatchSize, BufferDuration, MultiLineStartPattern, LogGroupName, File, BatchCount, DatetimeFormat, TimeZone, FileFingerprintLines, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CloudWatchLogsLogStream")
	local t = { 
		["InitialPosition"] = InitialPosition,
		["Encoding"] = Encoding,
		["BatchSize"] = BatchSize,
		["BufferDuration"] = BufferDuration,
		["MultiLineStartPattern"] = MultiLineStartPattern,
		["LogGroupName"] = LogGroupName,
		["File"] = File,
		["BatchCount"] = BatchCount,
		["DatetimeFormat"] = DatetimeFormat,
		["TimeZone"] = TimeZone,
		["FileFingerprintLines"] = FileFingerprintLines,
	}
	M.AssertCloudWatchLogsLogStream(t)
	return t
end

local TimeBasedAutoScalingConfiguration_keys = { "InstanceId" = true, "AutoScalingSchedule" = true, nil }

function M.AssertTimeBasedAutoScalingConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TimeBasedAutoScalingConfiguration to be of type 'table'")
	if struct["InstanceId"] then M.AssertString(struct["InstanceId"]) end
	if struct["AutoScalingSchedule"] then M.AssertWeeklyAutoScalingSchedule(struct["AutoScalingSchedule"]) end
	for k,_ in pairs(struct) do
		assert(TimeBasedAutoScalingConfiguration_keys[k], "TimeBasedAutoScalingConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TimeBasedAutoScalingConfiguration
-- <p>Describes an instance's time-based auto scaling configuration.</p>
-- @param InstanceId [String] <p>The instance ID.</p>
-- @param AutoScalingSchedule [WeeklyAutoScalingSchedule] <p>A <code>WeeklyAutoScalingSchedule</code> object with the instance schedule.</p>
function M.TimeBasedAutoScalingConfiguration(InstanceId, AutoScalingSchedule, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TimeBasedAutoScalingConfiguration")
	local t = { 
		["InstanceId"] = InstanceId,
		["AutoScalingSchedule"] = AutoScalingSchedule,
	}
	M.AssertTimeBasedAutoScalingConfiguration(t)
	return t
end

local DeregisterVolumeRequest_keys = { "VolumeId" = true, nil }

function M.AssertDeregisterVolumeRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeregisterVolumeRequest to be of type 'table'")
	assert(struct["VolumeId"], "Expected key VolumeId to exist in table")
	if struct["VolumeId"] then M.AssertString(struct["VolumeId"]) end
	for k,_ in pairs(struct) do
		assert(DeregisterVolumeRequest_keys[k], "DeregisterVolumeRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeregisterVolumeRequest
--  
-- @param VolumeId [String] <p>The AWS OpsWorks Stacks volume ID, which is the GUID that AWS OpsWorks Stacks assigned to the instance when you registered the volume with the stack, not the Amazon EC2 volume ID.</p>
-- Required parameter: VolumeId
function M.DeregisterVolumeRequest(VolumeId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeregisterVolumeRequest")
	local t = { 
		["VolumeId"] = VolumeId,
	}
	M.AssertDeregisterVolumeRequest(t)
	return t
end

local RegisterInstanceRequest_keys = { "StackId" = true, "RsaPublicKeyFingerprint" = true, "RsaPublicKey" = true, "Hostname" = true, "PrivateIp" = true, "PublicIp" = true, "InstanceIdentity" = true, nil }

function M.AssertRegisterInstanceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RegisterInstanceRequest to be of type 'table'")
	assert(struct["StackId"], "Expected key StackId to exist in table")
	if struct["StackId"] then M.AssertString(struct["StackId"]) end
	if struct["RsaPublicKeyFingerprint"] then M.AssertString(struct["RsaPublicKeyFingerprint"]) end
	if struct["RsaPublicKey"] then M.AssertString(struct["RsaPublicKey"]) end
	if struct["Hostname"] then M.AssertString(struct["Hostname"]) end
	if struct["PrivateIp"] then M.AssertString(struct["PrivateIp"]) end
	if struct["PublicIp"] then M.AssertString(struct["PublicIp"]) end
	if struct["InstanceIdentity"] then M.AssertInstanceIdentity(struct["InstanceIdentity"]) end
	for k,_ in pairs(struct) do
		assert(RegisterInstanceRequest_keys[k], "RegisterInstanceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RegisterInstanceRequest
--  
-- @param StackId [String] <p>The ID of the stack that the instance is to be registered with.</p>
-- @param RsaPublicKeyFingerprint [String] <p>The instances public RSA key fingerprint.</p>
-- @param RsaPublicKey [String] <p>The instances public RSA key. This key is used to encrypt communication between the instance and the service.</p>
-- @param Hostname [String] <p>The instance's hostname.</p>
-- @param PrivateIp [String] <p>The instance's private IP address.</p>
-- @param PublicIp [String] <p>The instance's public IP address.</p>
-- @param InstanceIdentity [InstanceIdentity] <p>An InstanceIdentity object that contains the instance's identity.</p>
-- Required parameter: StackId
function M.RegisterInstanceRequest(StackId, RsaPublicKeyFingerprint, RsaPublicKey, Hostname, PrivateIp, PublicIp, InstanceIdentity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RegisterInstanceRequest")
	local t = { 
		["StackId"] = StackId,
		["RsaPublicKeyFingerprint"] = RsaPublicKeyFingerprint,
		["RsaPublicKey"] = RsaPublicKey,
		["Hostname"] = Hostname,
		["PrivateIp"] = PrivateIp,
		["PublicIp"] = PublicIp,
		["InstanceIdentity"] = InstanceIdentity,
	}
	M.AssertRegisterInstanceRequest(t)
	return t
end

local GetHostnameSuggestionResult_keys = { "Hostname" = true, "LayerId" = true, nil }

function M.AssertGetHostnameSuggestionResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetHostnameSuggestionResult to be of type 'table'")
	if struct["Hostname"] then M.AssertString(struct["Hostname"]) end
	if struct["LayerId"] then M.AssertString(struct["LayerId"]) end
	for k,_ in pairs(struct) do
		assert(GetHostnameSuggestionResult_keys[k], "GetHostnameSuggestionResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetHostnameSuggestionResult
-- <p>Contains the response to a <code>GetHostnameSuggestion</code> request.</p>
-- @param Hostname [String] <p>The generated host name.</p>
-- @param LayerId [String] <p>The layer ID.</p>
function M.GetHostnameSuggestionResult(Hostname, LayerId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetHostnameSuggestionResult")
	local t = { 
		["Hostname"] = Hostname,
		["LayerId"] = LayerId,
	}
	M.AssertGetHostnameSuggestionResult(t)
	return t
end

local AssignInstanceRequest_keys = { "InstanceId" = true, "LayerIds" = true, nil }

function M.AssertAssignInstanceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssignInstanceRequest to be of type 'table'")
	assert(struct["InstanceId"], "Expected key InstanceId to exist in table")
	assert(struct["LayerIds"], "Expected key LayerIds to exist in table")
	if struct["InstanceId"] then M.AssertString(struct["InstanceId"]) end
	if struct["LayerIds"] then M.AssertStrings(struct["LayerIds"]) end
	for k,_ in pairs(struct) do
		assert(AssignInstanceRequest_keys[k], "AssignInstanceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssignInstanceRequest
--  
-- @param InstanceId [String] <p>The instance ID.</p>
-- @param LayerIds [Strings] <p>The layer ID, which must correspond to a custom layer. You cannot assign a registered instance to a built-in layer.</p>
-- Required parameter: InstanceId
-- Required parameter: LayerIds
function M.AssignInstanceRequest(InstanceId, LayerIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AssignInstanceRequest")
	local t = { 
		["InstanceId"] = InstanceId,
		["LayerIds"] = LayerIds,
	}
	M.AssertAssignInstanceRequest(t)
	return t
end

local TagResourceRequest_keys = { "ResourceArn" = true, "Tags" = true, nil }

function M.AssertTagResourceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TagResourceRequest to be of type 'table'")
	assert(struct["ResourceArn"], "Expected key ResourceArn to exist in table")
	assert(struct["Tags"], "Expected key Tags to exist in table")
	if struct["ResourceArn"] then M.AssertResourceArn(struct["ResourceArn"]) end
	if struct["Tags"] then M.AssertTags(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(TagResourceRequest_keys[k], "TagResourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TagResourceRequest
--  
-- @param ResourceArn [ResourceArn] <p>The stack or layer's Amazon Resource Number (ARN).</p>
-- @param Tags [Tags] <p>A map that contains tag keys and tag values that are attached to a stack or layer.</p> <ul> <li> <p>The key cannot be empty.</p> </li> <li> <p>The key can be a maximum of 127 characters, and can contain only Unicode letters, numbers, or separators, or the following special characters: <code>+ - = . _ : /</code> </p> </li> <li> <p>The value can be a maximum 255 characters, and contain only Unicode letters, numbers, or separators, or the following special characters: <code>+ - = . _ : /</code> </p> </li> <li> <p>Leading and trailing white spaces are trimmed from both the key and value.</p> </li> <li> <p>A maximum of 40 tags is allowed for any resource.</p> </li> </ul>
-- Required parameter: ResourceArn
-- Required parameter: Tags
function M.TagResourceRequest(ResourceArn, Tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TagResourceRequest")
	local t = { 
		["ResourceArn"] = ResourceArn,
		["Tags"] = Tags,
	}
	M.AssertTagResourceRequest(t)
	return t
end

local AssignVolumeRequest_keys = { "InstanceId" = true, "VolumeId" = true, nil }

function M.AssertAssignVolumeRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssignVolumeRequest to be of type 'table'")
	assert(struct["VolumeId"], "Expected key VolumeId to exist in table")
	if struct["InstanceId"] then M.AssertString(struct["InstanceId"]) end
	if struct["VolumeId"] then M.AssertString(struct["VolumeId"]) end
	for k,_ in pairs(struct) do
		assert(AssignVolumeRequest_keys[k], "AssignVolumeRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssignVolumeRequest
--  
-- @param InstanceId [String] <p>The instance ID.</p>
-- @param VolumeId [String] <p>The volume ID.</p>
-- Required parameter: VolumeId
function M.AssignVolumeRequest(InstanceId, VolumeId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AssignVolumeRequest")
	local t = { 
		["InstanceId"] = InstanceId,
		["VolumeId"] = VolumeId,
	}
	M.AssertAssignVolumeRequest(t)
	return t
end

local DescribeServiceErrorsResult_keys = { "ServiceErrors" = true, nil }

function M.AssertDescribeServiceErrorsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeServiceErrorsResult to be of type 'table'")
	if struct["ServiceErrors"] then M.AssertServiceErrors(struct["ServiceErrors"]) end
	for k,_ in pairs(struct) do
		assert(DescribeServiceErrorsResult_keys[k], "DescribeServiceErrorsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeServiceErrorsResult
-- <p>Contains the response to a <code>DescribeServiceErrors</code> request.</p>
-- @param ServiceErrors [ServiceErrors] <p>An array of <code>ServiceError</code> objects that describe the specified service errors.</p>
function M.DescribeServiceErrorsResult(ServiceErrors, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeServiceErrorsResult")
	local t = { 
		["ServiceErrors"] = ServiceErrors,
	}
	M.AssertDescribeServiceErrorsResult(t)
	return t
end

local DescribeDeploymentsResult_keys = { "Deployments" = true, nil }

function M.AssertDescribeDeploymentsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDeploymentsResult to be of type 'table'")
	if struct["Deployments"] then M.AssertDeployments(struct["Deployments"]) end
	for k,_ in pairs(struct) do
		assert(DescribeDeploymentsResult_keys[k], "DescribeDeploymentsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDeploymentsResult
-- <p>Contains the response to a <code>DescribeDeployments</code> request.</p>
-- @param Deployments [Deployments] <p>An array of <code>Deployment</code> objects that describe the deployments.</p>
function M.DescribeDeploymentsResult(Deployments, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeDeploymentsResult")
	local t = { 
		["Deployments"] = Deployments,
	}
	M.AssertDescribeDeploymentsResult(t)
	return t
end

local CreateUserProfileRequest_keys = { "IamUserArn" = true, "SshPublicKey" = true, "AllowSelfManagement" = true, "SshUsername" = true, nil }

function M.AssertCreateUserProfileRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateUserProfileRequest to be of type 'table'")
	assert(struct["IamUserArn"], "Expected key IamUserArn to exist in table")
	if struct["IamUserArn"] then M.AssertString(struct["IamUserArn"]) end
	if struct["SshPublicKey"] then M.AssertString(struct["SshPublicKey"]) end
	if struct["AllowSelfManagement"] then M.AssertBoolean(struct["AllowSelfManagement"]) end
	if struct["SshUsername"] then M.AssertString(struct["SshUsername"]) end
	for k,_ in pairs(struct) do
		assert(CreateUserProfileRequest_keys[k], "CreateUserProfileRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateUserProfileRequest
--  
-- @param IamUserArn [String] <p>The user's IAM ARN; this can also be a federated user's ARN.</p>
-- @param SshPublicKey [String] <p>The user's public SSH key.</p>
-- @param AllowSelfManagement [Boolean] <p>Whether users can specify their own SSH public key through the My Settings page. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/security-settingsshkey.html">Setting an IAM User's Public SSH Key</a>.</p>
-- @param SshUsername [String] <p>The user's SSH user name. The allowable characters are [a-z], [A-Z], [0-9], '-', and '_'. If the specified name includes other punctuation marks, AWS OpsWorks Stacks removes them. For example, <code>my.name</code> will be changed to <code>myname</code>. If you do not specify an SSH user name, AWS OpsWorks Stacks generates one from the IAM user name. </p>
-- Required parameter: IamUserArn
function M.CreateUserProfileRequest(IamUserArn, SshPublicKey, AllowSelfManagement, SshUsername, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateUserProfileRequest")
	local t = { 
		["IamUserArn"] = IamUserArn,
		["SshPublicKey"] = SshPublicKey,
		["AllowSelfManagement"] = AllowSelfManagement,
		["SshUsername"] = SshUsername,
	}
	M.AssertCreateUserProfileRequest(t)
	return t
end

local CreateLayerRequest_keys = { "StackId" = true, "LifecycleEventConfiguration" = true, "AutoAssignElasticIps" = true, "Name" = true, "CloudWatchLogsConfiguration" = true, "CustomJson" = true, "CustomRecipes" = true, "CustomSecurityGroupIds" = true, "AutoAssignPublicIps" = true, "EnableAutoHealing" = true, "CustomInstanceProfileArn" = true, "UseEbsOptimizedInstances" = true, "VolumeConfigurations" = true, "Attributes" = true, "Shortname" = true, "Packages" = true, "Type" = true, "InstallUpdatesOnBoot" = true, nil }

function M.AssertCreateLayerRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateLayerRequest to be of type 'table'")
	assert(struct["StackId"], "Expected key StackId to exist in table")
	assert(struct["Type"], "Expected key Type to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["Shortname"], "Expected key Shortname to exist in table")
	if struct["StackId"] then M.AssertString(struct["StackId"]) end
	if struct["LifecycleEventConfiguration"] then M.AssertLifecycleEventConfiguration(struct["LifecycleEventConfiguration"]) end
	if struct["AutoAssignElasticIps"] then M.AssertBoolean(struct["AutoAssignElasticIps"]) end
	if struct["Name"] then M.AssertString(struct["Name"]) end
	if struct["CloudWatchLogsConfiguration"] then M.AssertCloudWatchLogsConfiguration(struct["CloudWatchLogsConfiguration"]) end
	if struct["CustomJson"] then M.AssertString(struct["CustomJson"]) end
	if struct["CustomRecipes"] then M.AssertRecipes(struct["CustomRecipes"]) end
	if struct["CustomSecurityGroupIds"] then M.AssertStrings(struct["CustomSecurityGroupIds"]) end
	if struct["AutoAssignPublicIps"] then M.AssertBoolean(struct["AutoAssignPublicIps"]) end
	if struct["EnableAutoHealing"] then M.AssertBoolean(struct["EnableAutoHealing"]) end
	if struct["CustomInstanceProfileArn"] then M.AssertString(struct["CustomInstanceProfileArn"]) end
	if struct["UseEbsOptimizedInstances"] then M.AssertBoolean(struct["UseEbsOptimizedInstances"]) end
	if struct["VolumeConfigurations"] then M.AssertVolumeConfigurations(struct["VolumeConfigurations"]) end
	if struct["Attributes"] then M.AssertLayerAttributes(struct["Attributes"]) end
	if struct["Shortname"] then M.AssertString(struct["Shortname"]) end
	if struct["Packages"] then M.AssertStrings(struct["Packages"]) end
	if struct["Type"] then M.AssertLayerType(struct["Type"]) end
	if struct["InstallUpdatesOnBoot"] then M.AssertBoolean(struct["InstallUpdatesOnBoot"]) end
	for k,_ in pairs(struct) do
		assert(CreateLayerRequest_keys[k], "CreateLayerRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateLayerRequest
--  
-- @param StackId [String] <p>The layer stack ID.</p>
-- @param LifecycleEventConfiguration [LifecycleEventConfiguration] <p>A <code>LifeCycleEventConfiguration</code> object that you can use to configure the Shutdown event to specify an execution timeout and enable or disable Elastic Load Balancer connection draining.</p>
-- @param AutoAssignElasticIps [Boolean] <p>Whether to automatically assign an <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html">Elastic IP address</a> to the layer's instances. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-edit.html">How to Edit a Layer</a>.</p>
-- @param Name [String] <p>The layer name, which is used by the console.</p>
-- @param CloudWatchLogsConfiguration [CloudWatchLogsConfiguration] <p>Specifies CloudWatch Logs configuration options for the layer. For more information, see <a>CloudWatchLogsLogStream</a>.</p>
-- @param CustomJson [String] <p>A JSON-formatted string containing custom stack configuration and deployment attributes to be installed on the layer's instances. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook-json-override.html"> Using Custom JSON</a>. This feature is supported as of version 1.7.42 of the AWS CLI. </p>
-- @param CustomRecipes [Recipes] <p>A <code>LayerCustomRecipes</code> object that specifies the layer custom recipes.</p>
-- @param CustomSecurityGroupIds [Strings] <p>An array containing the layer custom security group IDs.</p>
-- @param AutoAssignPublicIps [Boolean] <p>For stacks that are running in a VPC, whether to automatically assign a public IP address to the layer's instances. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-edit.html">How to Edit a Layer</a>.</p>
-- @param EnableAutoHealing [Boolean] <p>Whether to disable auto healing for the layer.</p>
-- @param CustomInstanceProfileArn [String] <p>The ARN of an IAM profile to be used for the layer's EC2 instances. For more information about IAM ARNs, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">Using Identifiers</a>.</p>
-- @param UseEbsOptimizedInstances [Boolean] <p>Whether to use Amazon EBS-optimized instances.</p>
-- @param VolumeConfigurations [VolumeConfigurations] <p>A <code>VolumeConfigurations</code> object that describes the layer's Amazon EBS volumes.</p>
-- @param Attributes [LayerAttributes] <p>One or more user-defined key-value pairs to be added to the stack attributes.</p> <p>To create a cluster layer, set the <code>EcsClusterArn</code> attribute to the cluster's ARN.</p>
-- @param Shortname [String] <p>For custom layers only, use this parameter to specify the layer's short name, which is used internally by AWS OpsWorks Stacks and by Chef recipes. The short name is also used as the name for the directory where your app files are installed. It can have a maximum of 200 characters, which are limited to the alphanumeric characters, '-', '_', and '.'.</p> <p>The built-in layers' short names are defined by AWS OpsWorks Stacks. For more information, see the <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/layers.html">Layer Reference</a>.</p>
-- @param Packages [Strings] <p>An array of <code>Package</code> objects that describes the layer packages.</p>
-- @param Type [LayerType] <p>The layer type. A stack cannot have more than one built-in layer of the same type. It can have any number of custom layers. Built-in layers are not available in Chef 12 stacks.</p>
-- @param InstallUpdatesOnBoot [Boolean] <p>Whether to install operating system and package updates when the instance boots. The default value is <code>true</code>. To control when updates are installed, set this value to <code>false</code>. You must then update your instances manually by using <a>CreateDeployment</a> to run the <code>update_dependencies</code> stack command or by manually running <code>yum</code> (Amazon Linux) or <code>apt-get</code> (Ubuntu) on the instances. </p> <note> <p>To ensure that your instances have the latest security updates, we strongly recommend using the default value of <code>true</code>.</p> </note>
-- Required parameter: StackId
-- Required parameter: Type
-- Required parameter: Name
-- Required parameter: Shortname
function M.CreateLayerRequest(StackId, LifecycleEventConfiguration, AutoAssignElasticIps, Name, CloudWatchLogsConfiguration, CustomJson, CustomRecipes, CustomSecurityGroupIds, AutoAssignPublicIps, EnableAutoHealing, CustomInstanceProfileArn, UseEbsOptimizedInstances, VolumeConfigurations, Attributes, Shortname, Packages, Type, InstallUpdatesOnBoot, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateLayerRequest")
	local t = { 
		["StackId"] = StackId,
		["LifecycleEventConfiguration"] = LifecycleEventConfiguration,
		["AutoAssignElasticIps"] = AutoAssignElasticIps,
		["Name"] = Name,
		["CloudWatchLogsConfiguration"] = CloudWatchLogsConfiguration,
		["CustomJson"] = CustomJson,
		["CustomRecipes"] = CustomRecipes,
		["CustomSecurityGroupIds"] = CustomSecurityGroupIds,
		["AutoAssignPublicIps"] = AutoAssignPublicIps,
		["EnableAutoHealing"] = EnableAutoHealing,
		["CustomInstanceProfileArn"] = CustomInstanceProfileArn,
		["UseEbsOptimizedInstances"] = UseEbsOptimizedInstances,
		["VolumeConfigurations"] = VolumeConfigurations,
		["Attributes"] = Attributes,
		["Shortname"] = Shortname,
		["Packages"] = Packages,
		["Type"] = Type,
		["InstallUpdatesOnBoot"] = InstallUpdatesOnBoot,
	}
	M.AssertCreateLayerRequest(t)
	return t
end

local DescribeMyUserProfileResult_keys = { "UserProfile" = true, nil }

function M.AssertDescribeMyUserProfileResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeMyUserProfileResult to be of type 'table'")
	if struct["UserProfile"] then M.AssertSelfUserProfile(struct["UserProfile"]) end
	for k,_ in pairs(struct) do
		assert(DescribeMyUserProfileResult_keys[k], "DescribeMyUserProfileResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeMyUserProfileResult
-- <p>Contains the response to a <code>DescribeMyUserProfile</code> request.</p>
-- @param UserProfile [SelfUserProfile] <p>A <code>UserProfile</code> object that describes the user's SSH information.</p>
function M.DescribeMyUserProfileResult(UserProfile, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeMyUserProfileResult")
	local t = { 
		["UserProfile"] = UserProfile,
	}
	M.AssertDescribeMyUserProfileResult(t)
	return t
end

local SslConfiguration_keys = { "PrivateKey" = true, "Chain" = true, "Certificate" = true, nil }

function M.AssertSslConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SslConfiguration to be of type 'table'")
	assert(struct["Certificate"], "Expected key Certificate to exist in table")
	assert(struct["PrivateKey"], "Expected key PrivateKey to exist in table")
	if struct["PrivateKey"] then M.AssertString(struct["PrivateKey"]) end
	if struct["Chain"] then M.AssertString(struct["Chain"]) end
	if struct["Certificate"] then M.AssertString(struct["Certificate"]) end
	for k,_ in pairs(struct) do
		assert(SslConfiguration_keys[k], "SslConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SslConfiguration
-- <p>Describes an app's SSL configuration.</p>
-- @param PrivateKey [String] <p>The private key; the contents of the certificate's domain.kex file.</p>
-- @param Chain [String] <p>Optional. Can be used to specify an intermediate certificate authority key or client authentication.</p>
-- @param Certificate [String] <p>The contents of the certificate's domain.crt file.</p>
-- Required parameter: Certificate
-- Required parameter: PrivateKey
function M.SslConfiguration(PrivateKey, Chain, Certificate, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SslConfiguration")
	local t = { 
		["PrivateKey"] = PrivateKey,
		["Chain"] = Chain,
		["Certificate"] = Certificate,
	}
	M.AssertSslConfiguration(t)
	return t
end

local RegisterEcsClusterRequest_keys = { "StackId" = true, "EcsClusterArn" = true, nil }

function M.AssertRegisterEcsClusterRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RegisterEcsClusterRequest to be of type 'table'")
	assert(struct["EcsClusterArn"], "Expected key EcsClusterArn to exist in table")
	assert(struct["StackId"], "Expected key StackId to exist in table")
	if struct["StackId"] then M.AssertString(struct["StackId"]) end
	if struct["EcsClusterArn"] then M.AssertString(struct["EcsClusterArn"]) end
	for k,_ in pairs(struct) do
		assert(RegisterEcsClusterRequest_keys[k], "RegisterEcsClusterRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RegisterEcsClusterRequest
--  
-- @param StackId [String] <p>The stack ID.</p>
-- @param EcsClusterArn [String] <p>The cluster's ARN.</p>
-- Required parameter: EcsClusterArn
-- Required parameter: StackId
function M.RegisterEcsClusterRequest(StackId, EcsClusterArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RegisterEcsClusterRequest")
	local t = { 
		["StackId"] = StackId,
		["EcsClusterArn"] = EcsClusterArn,
	}
	M.AssertRegisterEcsClusterRequest(t)
	return t
end

function M.AssertDateTime(str)
	assert(str)
	assert(type(str) == "string", "Expected DateTime to be of type 'string'")
end

--  
function M.DateTime(str)
	M.AssertDateTime(str)
	return str
end

function M.AssertTagKey(str)
	assert(str)
	assert(type(str) == "string", "Expected TagKey to be of type 'string'")
end

--  
function M.TagKey(str)
	M.AssertTagKey(str)
	return str
end

function M.AssertAppType(str)
	assert(str)
	assert(type(str) == "string", "Expected AppType to be of type 'string'")
end

--  
function M.AppType(str)
	M.AssertAppType(str)
	return str
end

function M.AssertLayerAttributesKeys(str)
	assert(str)
	assert(type(str) == "string", "Expected LayerAttributesKeys to be of type 'string'")
end

--  
function M.LayerAttributesKeys(str)
	M.AssertLayerAttributesKeys(str)
	return str
end

function M.AssertVolumeType(str)
	assert(str)
	assert(type(str) == "string", "Expected VolumeType to be of type 'string'")
end

--  
function M.VolumeType(str)
	M.AssertVolumeType(str)
	return str
end

function M.AssertCloudWatchLogsInitialPosition(str)
	assert(str)
	assert(type(str) == "string", "Expected CloudWatchLogsInitialPosition to be of type 'string'")
end

-- <p>Specifies where to start to read data (start_of_file or end_of_file). The default is start_of_file. It's only used if there is no state persisted for that log stream.</p>
function M.CloudWatchLogsInitialPosition(str)
	M.AssertCloudWatchLogsInitialPosition(str)
	return str
end

function M.AssertCloudWatchLogsEncoding(str)
	assert(str)
	assert(type(str) == "string", "Expected CloudWatchLogsEncoding to be of type 'string'")
end

-- <p>Specifies the encoding of the log file so that the file can be read correctly. The default is <code>utf_8</code>. Encodings supported by Python <code>codecs.decode()</code> can be used here.</p>
function M.CloudWatchLogsEncoding(str)
	M.AssertCloudWatchLogsEncoding(str)
	return str
end

function M.AssertAutoScalingType(str)
	assert(str)
	assert(type(str) == "string", "Expected AutoScalingType to be of type 'string'")
end

--  
function M.AutoScalingType(str)
	M.AssertAutoScalingType(str)
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

function M.AssertString(str)
	assert(str)
	assert(type(str) == "string", "Expected String to be of type 'string'")
end

--  
function M.String(str)
	M.AssertString(str)
	return str
end

function M.AssertResourceArn(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceArn to be of type 'string'")
end

--  
function M.ResourceArn(str)
	M.AssertResourceArn(str)
	return str
end

function M.AssertHour(str)
	assert(str)
	assert(type(str) == "string", "Expected Hour to be of type 'string'")
end

--  
function M.Hour(str)
	M.AssertHour(str)
	return str
end

function M.AssertTagValue(str)
	assert(str)
	assert(type(str) == "string", "Expected TagValue to be of type 'string'")
end

--  
function M.TagValue(str)
	M.AssertTagValue(str)
	return str
end

function M.AssertArchitecture(str)
	assert(str)
	assert(type(str) == "string", "Expected Architecture to be of type 'string'")
end

--  
function M.Architecture(str)
	M.AssertArchitecture(str)
	return str
end

function M.AssertSourceType(str)
	assert(str)
	assert(type(str) == "string", "Expected SourceType to be of type 'string'")
end

--  
function M.SourceType(str)
	M.AssertSourceType(str)
	return str
end

function M.AssertLayerType(str)
	assert(str)
	assert(type(str) == "string", "Expected LayerType to be of type 'string'")
end

--  
function M.LayerType(str)
	M.AssertLayerType(str)
	return str
end

function M.AssertStackAttributesKeys(str)
	assert(str)
	assert(type(str) == "string", "Expected StackAttributesKeys to be of type 'string'")
end

--  
function M.StackAttributesKeys(str)
	M.AssertStackAttributesKeys(str)
	return str
end

function M.AssertSwitch(str)
	assert(str)
	assert(type(str) == "string", "Expected Switch to be of type 'string'")
end

--  
function M.Switch(str)
	M.AssertSwitch(str)
	return str
end

function M.AssertVirtualizationType(str)
	assert(str)
	assert(type(str) == "string", "Expected VirtualizationType to be of type 'string'")
end

--  
function M.VirtualizationType(str)
	M.AssertVirtualizationType(str)
	return str
end

function M.AssertRootDeviceType(str)
	assert(str)
	assert(type(str) == "string", "Expected RootDeviceType to be of type 'string'")
end

--  
function M.RootDeviceType(str)
	M.AssertRootDeviceType(str)
	return str
end

function M.AssertAppAttributesKeys(str)
	assert(str)
	assert(type(str) == "string", "Expected AppAttributesKeys to be of type 'string'")
end

--  
function M.AppAttributesKeys(str)
	M.AssertAppAttributesKeys(str)
	return str
end

function M.AssertCloudWatchLogsTimeZone(str)
	assert(str)
	assert(type(str) == "string", "Expected CloudWatchLogsTimeZone to be of type 'string'")
end

-- <p>The preferred time zone for logs streamed to CloudWatch Logs. Valid values are <code>LOCAL</code> and <code>UTC</code>, for Coordinated Universal Time.</p>
function M.CloudWatchLogsTimeZone(str)
	M.AssertCloudWatchLogsTimeZone(str)
	return str
end

function M.AssertDeploymentCommandName(str)
	assert(str)
	assert(type(str) == "string", "Expected DeploymentCommandName to be of type 'string'")
end

--  
function M.DeploymentCommandName(str)
	M.AssertDeploymentCommandName(str)
	return str
end

function M.AssertDouble(double)
	assert(double)
	assert(type(double) == "number", "Expected Double to be of type 'number'")
end

function M.Double(double)
	M.AssertDouble(double)
	return double
end

function M.AssertMinute(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected Minute to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 100, "Expected integer to be max 100")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.Minute(integer)
	M.AssertMinute(integer)
	return integer
end

function M.AssertMaxResults(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxResults to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.MaxResults(integer)
	M.AssertMaxResults(integer)
	return integer
end

function M.AssertValidForInMinutes(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected ValidForInMinutes to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 1440, "Expected integer to be max 1440")
	assert(integer >= 60, "Expected integer to be min 60")
end

function M.ValidForInMinutes(integer)
	M.AssertValidForInMinutes(integer)
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

function M.AssertBoolean(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected Boolean to be of type 'boolean'")
end

function M.Boolean(boolean)
	M.AssertBoolean(boolean)
	return boolean
end

function M.AssertStackAttributes(map)
	assert(map)
	assert(type(map) == "table", "Expected StackAttributes to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertStackAttributesKeys(k)
		M.AssertString(v)
	end
end

function M.StackAttributes(map)
	M.AssertStackAttributes(map)
	return map
end

function M.AssertParameters(map)
	assert(map)
	assert(type(map) == "table", "Expected Parameters to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertString(k)
		M.AssertString(v)
	end
end

function M.Parameters(map)
	M.AssertParameters(map)
	return map
end

function M.AssertAppAttributes(map)
	assert(map)
	assert(type(map) == "table", "Expected AppAttributes to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertAppAttributesKeys(k)
		M.AssertString(v)
	end
end

function M.AppAttributes(map)
	M.AssertAppAttributes(map)
	return map
end

function M.AssertTags(map)
	assert(map)
	assert(type(map) == "table", "Expected Tags to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertTagKey(k)
		M.AssertTagValue(v)
	end
end

function M.Tags(map)
	M.AssertTags(map)
	return map
end

function M.AssertDailyAutoScalingSchedule(map)
	assert(map)
	assert(type(map) == "table", "Expected DailyAutoScalingSchedule to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertHour(k)
		M.AssertSwitch(v)
	end
end

function M.DailyAutoScalingSchedule(map)
	M.AssertDailyAutoScalingSchedule(map)
	return map
end

function M.AssertLayerAttributes(map)
	assert(map)
	assert(type(map) == "table", "Expected LayerAttributes to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertLayerAttributesKeys(k)
		M.AssertString(v)
	end
end

function M.LayerAttributes(map)
	M.AssertLayerAttributes(map)
	return map
end

function M.AssertDeploymentCommandArgs(map)
	assert(map)
	assert(type(map) == "table", "Expected DeploymentCommandArgs to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertString(k)
		M.AssertStrings(v)
	end
end

function M.DeploymentCommandArgs(map)
	M.AssertDeploymentCommandArgs(map)
	return map
end

function M.AssertAgentVersions(list)
	assert(list)
	assert(type(list) == "table", "Expected AgentVersions to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertAgentVersion(v)
	end
end

--  
-- List of AgentVersion objects
function M.AgentVersions(list)
	M.AssertAgentVersions(list)
	return list
end

function M.AssertTimeBasedAutoScalingConfigurations(list)
	assert(list)
	assert(type(list) == "table", "Expected TimeBasedAutoScalingConfigurations to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertTimeBasedAutoScalingConfiguration(v)
	end
end

--  
-- List of TimeBasedAutoScalingConfiguration objects
function M.TimeBasedAutoScalingConfigurations(list)
	M.AssertTimeBasedAutoScalingConfigurations(list)
	return list
end

function M.AssertUserProfiles(list)
	assert(list)
	assert(type(list) == "table", "Expected UserProfiles to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertUserProfile(v)
	end
end

--  
-- List of UserProfile objects
function M.UserProfiles(list)
	M.AssertUserProfiles(list)
	return list
end

function M.AssertBlockDeviceMappings(list)
	assert(list)
	assert(type(list) == "table", "Expected BlockDeviceMappings to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertBlockDeviceMapping(v)
	end
end

--  
-- List of BlockDeviceMapping objects
function M.BlockDeviceMappings(list)
	M.AssertBlockDeviceMappings(list)
	return list
end

function M.AssertDeployments(list)
	assert(list)
	assert(type(list) == "table", "Expected Deployments to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertDeployment(v)
	end
end

--  
-- List of Deployment objects
function M.Deployments(list)
	M.AssertDeployments(list)
	return list
end

function M.AssertEcsClusters(list)
	assert(list)
	assert(type(list) == "table", "Expected EcsClusters to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertEcsCluster(v)
	end
end

--  
-- List of EcsCluster objects
function M.EcsClusters(list)
	M.AssertEcsClusters(list)
	return list
end

function M.AssertLayers(list)
	assert(list)
	assert(type(list) == "table", "Expected Layers to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertLayer(v)
	end
end

--  
-- List of Layer objects
function M.Layers(list)
	M.AssertLayers(list)
	return list
end

function M.AssertApps(list)
	assert(list)
	assert(type(list) == "table", "Expected Apps to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertApp(v)
	end
end

--  
-- List of App objects
function M.Apps(list)
	M.AssertApps(list)
	return list
end

function M.AssertCloudWatchLogsLogStreams(list)
	assert(list)
	assert(type(list) == "table", "Expected CloudWatchLogsLogStreams to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertCloudWatchLogsLogStream(v)
	end
end

-- <p>Describes the Amazon CloudWatch logs configuration for a layer.</p>
-- List of CloudWatchLogsLogStream objects
function M.CloudWatchLogsLogStreams(list)
	M.AssertCloudWatchLogsLogStreams(list)
	return list
end

function M.AssertDataSources(list)
	assert(list)
	assert(type(list) == "table", "Expected DataSources to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertDataSource(v)
	end
end

--  
-- List of DataSource objects
function M.DataSources(list)
	M.AssertDataSources(list)
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

function M.AssertVolumeConfigurations(list)
	assert(list)
	assert(type(list) == "table", "Expected VolumeConfigurations to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertVolumeConfiguration(v)
	end
end

--  
-- List of VolumeConfiguration objects
function M.VolumeConfigurations(list)
	M.AssertVolumeConfigurations(list)
	return list
end

function M.AssertStrings(list)
	assert(list)
	assert(type(list) == "table", "Expected Strings to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertString(v)
	end
end

--  
-- List of String objects
function M.Strings(list)
	M.AssertStrings(list)
	return list
end

function M.AssertServiceErrors(list)
	assert(list)
	assert(type(list) == "table", "Expected ServiceErrors to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertServiceError(v)
	end
end

--  
-- List of ServiceError objects
function M.ServiceErrors(list)
	M.AssertServiceErrors(list)
	return list
end

function M.AssertElasticIps(list)
	assert(list)
	assert(type(list) == "table", "Expected ElasticIps to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertElasticIp(v)
	end
end

--  
-- List of ElasticIp objects
function M.ElasticIps(list)
	M.AssertElasticIps(list)
	return list
end

function M.AssertLoadBasedAutoScalingConfigurations(list)
	assert(list)
	assert(type(list) == "table", "Expected LoadBasedAutoScalingConfigurations to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertLoadBasedAutoScalingConfiguration(v)
	end
end

--  
-- List of LoadBasedAutoScalingConfiguration objects
function M.LoadBasedAutoScalingConfigurations(list)
	M.AssertLoadBasedAutoScalingConfigurations(list)
	return list
end

function M.AssertPermissions(list)
	assert(list)
	assert(type(list) == "table", "Expected Permissions to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertPermission(v)
	end
end

--  
-- List of Permission objects
function M.Permissions(list)
	M.AssertPermissions(list)
	return list
end

function M.AssertCommands(list)
	assert(list)
	assert(type(list) == "table", "Expected Commands to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertCommand(v)
	end
end

--  
-- List of Command objects
function M.Commands(list)
	M.AssertCommands(list)
	return list
end

function M.AssertElasticLoadBalancers(list)
	assert(list)
	assert(type(list) == "table", "Expected ElasticLoadBalancers to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertElasticLoadBalancer(v)
	end
end

--  
-- List of ElasticLoadBalancer objects
function M.ElasticLoadBalancers(list)
	M.AssertElasticLoadBalancers(list)
	return list
end

function M.AssertRdsDbInstances(list)
	assert(list)
	assert(type(list) == "table", "Expected RdsDbInstances to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertRdsDbInstance(v)
	end
end

--  
-- List of RdsDbInstance objects
function M.RdsDbInstances(list)
	M.AssertRdsDbInstances(list)
	return list
end

function M.AssertStacks(list)
	assert(list)
	assert(type(list) == "table", "Expected Stacks to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertStack(v)
	end
end

--  
-- List of Stack objects
function M.Stacks(list)
	M.AssertStacks(list)
	return list
end

function M.AssertRaidArrays(list)
	assert(list)
	assert(type(list) == "table", "Expected RaidArrays to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertRaidArray(v)
	end
end

--  
-- List of RaidArray objects
function M.RaidArrays(list)
	M.AssertRaidArrays(list)
	return list
end

function M.AssertEnvironmentVariables(list)
	assert(list)
	assert(type(list) == "table", "Expected EnvironmentVariables to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertEnvironmentVariable(v)
	end
end

--  
-- List of EnvironmentVariable objects
function M.EnvironmentVariables(list)
	M.AssertEnvironmentVariables(list)
	return list
end

function M.AssertTagKeys(list)
	assert(list)
	assert(type(list) == "table", "Expected TagKeys to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertTagKey(v)
	end
end

--  
-- List of TagKey objects
function M.TagKeys(list)
	M.AssertTagKeys(list)
	return list
end

function M.AssertInstances(list)
	assert(list)
	assert(type(list) == "table", "Expected Instances to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertInstance(v)
	end
end

--  
-- List of Instance objects
function M.Instances(list)
	M.AssertInstances(list)
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
			return "opsworks.amazonaws.com"
		end
	end
	local ss = { "opsworks" }
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
--- DeregisterVolume
-- @param DeregisterVolumeRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeregisterVolumeAsync(DeregisterVolumeRequest, cb)
	assert(DeregisterVolumeRequest, "You must provide a DeregisterVolumeRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.DeregisterVolume",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeregisterVolumeRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeregisterInstance
-- @param DeregisterInstanceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeregisterInstanceAsync(DeregisterInstanceRequest, cb)
	assert(DeregisterInstanceRequest, "You must provide a DeregisterInstanceRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.DeregisterInstance",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeregisterInstanceRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeTimeBasedAutoScaling
-- @param DescribeTimeBasedAutoScalingRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeTimeBasedAutoScalingAsync(DescribeTimeBasedAutoScalingRequest, cb)
	assert(DescribeTimeBasedAutoScalingRequest, "You must provide a DescribeTimeBasedAutoScalingRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.DescribeTimeBasedAutoScaling",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeTimeBasedAutoScalingRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- RebootInstance
-- @param RebootInstanceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.RebootInstanceAsync(RebootInstanceRequest, cb)
	assert(RebootInstanceRequest, "You must provide a RebootInstanceRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.RebootInstance",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", RebootInstanceRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- StartStack
-- @param StartStackRequest
-- @param cb Callback function accepting two args: response, error_message
function M.StartStackAsync(StartStackRequest, cb)
	assert(StartStackRequest, "You must provide a StartStackRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.StartStack",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", StartStackRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UnassignInstance
-- @param UnassignInstanceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UnassignInstanceAsync(UnassignInstanceRequest, cb)
	assert(UnassignInstanceRequest, "You must provide a UnassignInstanceRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.UnassignInstance",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UnassignInstanceRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DisassociateElasticIp
-- @param DisassociateElasticIpRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DisassociateElasticIpAsync(DisassociateElasticIpRequest, cb)
	assert(DisassociateElasticIpRequest, "You must provide a DisassociateElasticIpRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.DisassociateElasticIp",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DisassociateElasticIpRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateUserProfile
-- @param CreateUserProfileRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateUserProfileAsync(CreateUserProfileRequest, cb)
	assert(CreateUserProfileRequest, "You must provide a CreateUserProfileRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.CreateUserProfile",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateUserProfileRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- AttachElasticLoadBalancer
-- @param AttachElasticLoadBalancerRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AttachElasticLoadBalancerAsync(AttachElasticLoadBalancerRequest, cb)
	assert(AttachElasticLoadBalancerRequest, "You must provide a AttachElasticLoadBalancerRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.AttachElasticLoadBalancer",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", AttachElasticLoadBalancerRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- RegisterEcsCluster
-- @param RegisterEcsClusterRequest
-- @param cb Callback function accepting two args: response, error_message
function M.RegisterEcsClusterAsync(RegisterEcsClusterRequest, cb)
	assert(RegisterEcsClusterRequest, "You must provide a RegisterEcsClusterRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.RegisterEcsCluster",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", RegisterEcsClusterRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeLayers
-- @param DescribeLayersRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeLayersAsync(DescribeLayersRequest, cb)
	assert(DescribeLayersRequest, "You must provide a DescribeLayersRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.DescribeLayers",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeLayersRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateElasticIp
-- @param UpdateElasticIpRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateElasticIpAsync(UpdateElasticIpRequest, cb)
	assert(UpdateElasticIpRequest, "You must provide a UpdateElasticIpRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.UpdateElasticIp",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateElasticIpRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteInstance
-- @param DeleteInstanceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteInstanceAsync(DeleteInstanceRequest, cb)
	assert(DeleteInstanceRequest, "You must provide a DeleteInstanceRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.DeleteInstance",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteInstanceRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DetachElasticLoadBalancer
-- @param DetachElasticLoadBalancerRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DetachElasticLoadBalancerAsync(DetachElasticLoadBalancerRequest, cb)
	assert(DetachElasticLoadBalancerRequest, "You must provide a DetachElasticLoadBalancerRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.DetachElasticLoadBalancer",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DetachElasticLoadBalancerRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateDeployment
-- @param CreateDeploymentRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateDeploymentAsync(CreateDeploymentRequest, cb)
	assert(CreateDeploymentRequest, "You must provide a CreateDeploymentRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.CreateDeployment",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateDeploymentRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UnassignVolume
-- @param UnassignVolumeRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UnassignVolumeAsync(UnassignVolumeRequest, cb)
	assert(UnassignVolumeRequest, "You must provide a UnassignVolumeRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.UnassignVolume",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UnassignVolumeRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteUserProfile
-- @param DeleteUserProfileRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteUserProfileAsync(DeleteUserProfileRequest, cb)
	assert(DeleteUserProfileRequest, "You must provide a DeleteUserProfileRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.DeleteUserProfile",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteUserProfileRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateStack
-- @param CreateStackRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateStackAsync(CreateStackRequest, cb)
	assert(CreateStackRequest, "You must provide a CreateStackRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.CreateStack",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateStackRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateRdsDbInstance
-- @param UpdateRdsDbInstanceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateRdsDbInstanceAsync(UpdateRdsDbInstanceRequest, cb)
	assert(UpdateRdsDbInstanceRequest, "You must provide a UpdateRdsDbInstanceRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.UpdateRdsDbInstance",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateRdsDbInstanceRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetHostnameSuggestion
-- @param GetHostnameSuggestionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetHostnameSuggestionAsync(GetHostnameSuggestionRequest, cb)
	assert(GetHostnameSuggestionRequest, "You must provide a GetHostnameSuggestionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.GetHostnameSuggestion",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetHostnameSuggestionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeInstances
-- @param DescribeInstancesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeInstancesAsync(DescribeInstancesRequest, cb)
	assert(DescribeInstancesRequest, "You must provide a DescribeInstancesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.DescribeInstances",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeInstancesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeCommands
-- @param DescribeCommandsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeCommandsAsync(DescribeCommandsRequest, cb)
	assert(DescribeCommandsRequest, "You must provide a DescribeCommandsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.DescribeCommands",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeCommandsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeMyUserProfile
-- @param 
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeMyUserProfileAsync(, cb)
	assert(, "You must provide a ")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.DescribeMyUserProfile",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", , headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeregisterElasticIp
-- @param DeregisterElasticIpRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeregisterElasticIpAsync(DeregisterElasticIpRequest, cb)
	assert(DeregisterElasticIpRequest, "You must provide a DeregisterElasticIpRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.DeregisterElasticIp",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeregisterElasticIpRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeAgentVersions
-- @param DescribeAgentVersionsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeAgentVersionsAsync(DescribeAgentVersionsRequest, cb)
	assert(DescribeAgentVersionsRequest, "You must provide a DescribeAgentVersionsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.DescribeAgentVersions",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeAgentVersionsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- StopStack
-- @param StopStackRequest
-- @param cb Callback function accepting two args: response, error_message
function M.StopStackAsync(StopStackRequest, cb)
	assert(StopStackRequest, "You must provide a StopStackRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.StopStack",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", StopStackRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeApps
-- @param DescribeAppsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeAppsAsync(DescribeAppsRequest, cb)
	assert(DescribeAppsRequest, "You must provide a DescribeAppsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.DescribeApps",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeAppsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeElasticIps
-- @param DescribeElasticIpsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeElasticIpsAsync(DescribeElasticIpsRequest, cb)
	assert(DescribeElasticIpsRequest, "You must provide a DescribeElasticIpsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.DescribeElasticIps",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeElasticIpsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateVolume
-- @param UpdateVolumeRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateVolumeAsync(UpdateVolumeRequest, cb)
	assert(UpdateVolumeRequest, "You must provide a UpdateVolumeRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.UpdateVolume",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateVolumeRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- StartInstance
-- @param StartInstanceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.StartInstanceAsync(StartInstanceRequest, cb)
	assert(StartInstanceRequest, "You must provide a StartInstanceRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.StartInstance",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", StartInstanceRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateMyUserProfile
-- @param UpdateMyUserProfileRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateMyUserProfileAsync(UpdateMyUserProfileRequest, cb)
	assert(UpdateMyUserProfileRequest, "You must provide a UpdateMyUserProfileRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.UpdateMyUserProfile",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateMyUserProfileRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteApp
-- @param DeleteAppRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteAppAsync(DeleteAppRequest, cb)
	assert(DeleteAppRequest, "You must provide a DeleteAppRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.DeleteApp",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteAppRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateInstance
-- @param UpdateInstanceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateInstanceAsync(UpdateInstanceRequest, cb)
	assert(UpdateInstanceRequest, "You must provide a UpdateInstanceRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.UpdateInstance",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateInstanceRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- RegisterElasticIp
-- @param RegisterElasticIpRequest
-- @param cb Callback function accepting two args: response, error_message
function M.RegisterElasticIpAsync(RegisterElasticIpRequest, cb)
	assert(RegisterElasticIpRequest, "You must provide a RegisterElasticIpRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.RegisterElasticIp",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", RegisterElasticIpRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- TagResource
-- @param TagResourceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.TagResourceAsync(TagResourceRequest, cb)
	assert(TagResourceRequest, "You must provide a TagResourceRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.TagResource",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", TagResourceRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeregisterRdsDbInstance
-- @param DeregisterRdsDbInstanceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeregisterRdsDbInstanceAsync(DeregisterRdsDbInstanceRequest, cb)
	assert(DeregisterRdsDbInstanceRequest, "You must provide a DeregisterRdsDbInstanceRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.DeregisterRdsDbInstance",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeregisterRdsDbInstanceRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeRaidArrays
-- @param DescribeRaidArraysRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeRaidArraysAsync(DescribeRaidArraysRequest, cb)
	assert(DescribeRaidArraysRequest, "You must provide a DescribeRaidArraysRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.DescribeRaidArrays",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeRaidArraysRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- RegisterVolume
-- @param RegisterVolumeRequest
-- @param cb Callback function accepting two args: response, error_message
function M.RegisterVolumeAsync(RegisterVolumeRequest, cb)
	assert(RegisterVolumeRequest, "You must provide a RegisterVolumeRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.RegisterVolume",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", RegisterVolumeRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- SetPermission
-- @param SetPermissionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.SetPermissionAsync(SetPermissionRequest, cb)
	assert(SetPermissionRequest, "You must provide a SetPermissionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.SetPermission",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", SetPermissionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeDeployments
-- @param DescribeDeploymentsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeDeploymentsAsync(DescribeDeploymentsRequest, cb)
	assert(DescribeDeploymentsRequest, "You must provide a DescribeDeploymentsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.DescribeDeployments",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeDeploymentsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListTags
-- @param ListTagsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListTagsAsync(ListTagsRequest, cb)
	assert(ListTagsRequest, "You must provide a ListTagsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.ListTags",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListTagsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CloneStack
-- @param CloneStackRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CloneStackAsync(CloneStackRequest, cb)
	assert(CloneStackRequest, "You must provide a CloneStackRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.CloneStack",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CloneStackRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeServiceErrors
-- @param DescribeServiceErrorsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeServiceErrorsAsync(DescribeServiceErrorsRequest, cb)
	assert(DescribeServiceErrorsRequest, "You must provide a DescribeServiceErrorsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.DescribeServiceErrors",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeServiceErrorsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- AssociateElasticIp
-- @param AssociateElasticIpRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AssociateElasticIpAsync(AssociateElasticIpRequest, cb)
	assert(AssociateElasticIpRequest, "You must provide a AssociateElasticIpRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.AssociateElasticIp",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", AssociateElasticIpRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateInstance
-- @param CreateInstanceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateInstanceAsync(CreateInstanceRequest, cb)
	assert(CreateInstanceRequest, "You must provide a CreateInstanceRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.CreateInstance",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateInstanceRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeElasticLoadBalancers
-- @param DescribeElasticLoadBalancersRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeElasticLoadBalancersAsync(DescribeElasticLoadBalancersRequest, cb)
	assert(DescribeElasticLoadBalancersRequest, "You must provide a DescribeElasticLoadBalancersRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.DescribeElasticLoadBalancers",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeElasticLoadBalancersRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeregisterEcsCluster
-- @param DeregisterEcsClusterRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeregisterEcsClusterAsync(DeregisterEcsClusterRequest, cb)
	assert(DeregisterEcsClusterRequest, "You must provide a DeregisterEcsClusterRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.DeregisterEcsCluster",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeregisterEcsClusterRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeEcsClusters
-- @param DescribeEcsClustersRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeEcsClustersAsync(DescribeEcsClustersRequest, cb)
	assert(DescribeEcsClustersRequest, "You must provide a DescribeEcsClustersRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.DescribeEcsClusters",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeEcsClustersRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- RegisterRdsDbInstance
-- @param RegisterRdsDbInstanceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.RegisterRdsDbInstanceAsync(RegisterRdsDbInstanceRequest, cb)
	assert(RegisterRdsDbInstanceRequest, "You must provide a RegisterRdsDbInstanceRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.RegisterRdsDbInstance",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", RegisterRdsDbInstanceRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- SetTimeBasedAutoScaling
-- @param SetTimeBasedAutoScalingRequest
-- @param cb Callback function accepting two args: response, error_message
function M.SetTimeBasedAutoScalingAsync(SetTimeBasedAutoScalingRequest, cb)
	assert(SetTimeBasedAutoScalingRequest, "You must provide a SetTimeBasedAutoScalingRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.SetTimeBasedAutoScaling",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", SetTimeBasedAutoScalingRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeLoadBasedAutoScaling
-- @param DescribeLoadBasedAutoScalingRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeLoadBasedAutoScalingAsync(DescribeLoadBasedAutoScalingRequest, cb)
	assert(DescribeLoadBasedAutoScalingRequest, "You must provide a DescribeLoadBasedAutoScalingRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.DescribeLoadBasedAutoScaling",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeLoadBasedAutoScalingRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- AssignInstance
-- @param AssignInstanceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AssignInstanceAsync(AssignInstanceRequest, cb)
	assert(AssignInstanceRequest, "You must provide a AssignInstanceRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.AssignInstance",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", AssignInstanceRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- SetLoadBasedAutoScaling
-- @param SetLoadBasedAutoScalingRequest
-- @param cb Callback function accepting two args: response, error_message
function M.SetLoadBasedAutoScalingAsync(SetLoadBasedAutoScalingRequest, cb)
	assert(SetLoadBasedAutoScalingRequest, "You must provide a SetLoadBasedAutoScalingRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.SetLoadBasedAutoScaling",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", SetLoadBasedAutoScalingRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeStackSummary
-- @param DescribeStackSummaryRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeStackSummaryAsync(DescribeStackSummaryRequest, cb)
	assert(DescribeStackSummaryRequest, "You must provide a DescribeStackSummaryRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.DescribeStackSummary",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeStackSummaryRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- StopInstance
-- @param StopInstanceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.StopInstanceAsync(StopInstanceRequest, cb)
	assert(StopInstanceRequest, "You must provide a StopInstanceRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.StopInstance",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", StopInstanceRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeStacks
-- @param DescribeStacksRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeStacksAsync(DescribeStacksRequest, cb)
	assert(DescribeStacksRequest, "You must provide a DescribeStacksRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.DescribeStacks",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeStacksRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateLayer
-- @param CreateLayerRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateLayerAsync(CreateLayerRequest, cb)
	assert(CreateLayerRequest, "You must provide a CreateLayerRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.CreateLayer",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateLayerRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateStack
-- @param UpdateStackRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateStackAsync(UpdateStackRequest, cb)
	assert(UpdateStackRequest, "You must provide a UpdateStackRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.UpdateStack",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateStackRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GrantAccess
-- @param GrantAccessRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GrantAccessAsync(GrantAccessRequest, cb)
	assert(GrantAccessRequest, "You must provide a GrantAccessRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.GrantAccess",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GrantAccessRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateApp
-- @param CreateAppRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateAppAsync(CreateAppRequest, cb)
	assert(CreateAppRequest, "You must provide a CreateAppRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.CreateApp",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateAppRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UntagResource
-- @param UntagResourceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UntagResourceAsync(UntagResourceRequest, cb)
	assert(UntagResourceRequest, "You must provide a UntagResourceRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.UntagResource",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UntagResourceRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribePermissions
-- @param DescribePermissionsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribePermissionsAsync(DescribePermissionsRequest, cb)
	assert(DescribePermissionsRequest, "You must provide a DescribePermissionsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.DescribePermissions",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribePermissionsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteLayer
-- @param DeleteLayerRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteLayerAsync(DeleteLayerRequest, cb)
	assert(DeleteLayerRequest, "You must provide a DeleteLayerRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.DeleteLayer",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteLayerRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeVolumes
-- @param DescribeVolumesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeVolumesAsync(DescribeVolumesRequest, cb)
	assert(DescribeVolumesRequest, "You must provide a DescribeVolumesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.DescribeVolumes",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeVolumesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeStackProvisioningParameters
-- @param DescribeStackProvisioningParametersRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeStackProvisioningParametersAsync(DescribeStackProvisioningParametersRequest, cb)
	assert(DescribeStackProvisioningParametersRequest, "You must provide a DescribeStackProvisioningParametersRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.DescribeStackProvisioningParameters",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeStackProvisioningParametersRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- RegisterInstance
-- @param RegisterInstanceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.RegisterInstanceAsync(RegisterInstanceRequest, cb)
	assert(RegisterInstanceRequest, "You must provide a RegisterInstanceRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.RegisterInstance",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", RegisterInstanceRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteStack
-- @param DeleteStackRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteStackAsync(DeleteStackRequest, cb)
	assert(DeleteStackRequest, "You must provide a DeleteStackRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.DeleteStack",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteStackRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- AssignVolume
-- @param AssignVolumeRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AssignVolumeAsync(AssignVolumeRequest, cb)
	assert(AssignVolumeRequest, "You must provide a AssignVolumeRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.AssignVolume",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", AssignVolumeRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateApp
-- @param UpdateAppRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateAppAsync(UpdateAppRequest, cb)
	assert(UpdateAppRequest, "You must provide a UpdateAppRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.UpdateApp",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateAppRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeRdsDbInstances
-- @param DescribeRdsDbInstancesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeRdsDbInstancesAsync(DescribeRdsDbInstancesRequest, cb)
	assert(DescribeRdsDbInstancesRequest, "You must provide a DescribeRdsDbInstancesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.DescribeRdsDbInstances",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeRdsDbInstancesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateUserProfile
-- @param UpdateUserProfileRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateUserProfileAsync(UpdateUserProfileRequest, cb)
	assert(UpdateUserProfileRequest, "You must provide a UpdateUserProfileRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.UpdateUserProfile",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateUserProfileRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeUserProfiles
-- @param DescribeUserProfilesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeUserProfilesAsync(DescribeUserProfilesRequest, cb)
	assert(DescribeUserProfilesRequest, "You must provide a DescribeUserProfilesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.DescribeUserProfiles",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeUserProfilesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateLayer
-- @param UpdateLayerRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateLayerAsync(UpdateLayerRequest, cb)
	assert(UpdateLayerRequest, "You must provide a UpdateLayerRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.UpdateLayer",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateLayerRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end


return M
