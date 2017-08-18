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

local keys = {}
local asserts = {}

keys.DeregisterInstanceRequest = { ["InstanceId"] = true, nil }

function asserts.AssertDeregisterInstanceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeregisterInstanceRequest to be of type 'table'")
	assert(struct["InstanceId"], "Expected key InstanceId to exist in table")
	if struct["InstanceId"] then asserts.AssertString(struct["InstanceId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeregisterInstanceRequest[k], "DeregisterInstanceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeregisterInstanceRequest
--  
-- @param _InstanceId [String] <p>The instance ID.</p>
-- Required parameter: InstanceId
function M.DeregisterInstanceRequest(_InstanceId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeregisterInstanceRequest")
	local t = { 
		["InstanceId"] = _InstanceId,
	}
	asserts.AssertDeregisterInstanceRequest(t)
	return t
end

keys.StopInstanceRequest = { ["InstanceId"] = true, nil }

function asserts.AssertStopInstanceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopInstanceRequest to be of type 'table'")
	assert(struct["InstanceId"], "Expected key InstanceId to exist in table")
	if struct["InstanceId"] then asserts.AssertString(struct["InstanceId"]) end
	for k,_ in pairs(struct) do
		assert(keys.StopInstanceRequest[k], "StopInstanceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopInstanceRequest
--  
-- @param _InstanceId [String] <p>The instance ID.</p>
-- Required parameter: InstanceId
function M.StopInstanceRequest(_InstanceId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StopInstanceRequest")
	local t = { 
		["InstanceId"] = _InstanceId,
	}
	asserts.AssertStopInstanceRequest(t)
	return t
end

keys.StackSummary = { ["StackId"] = true, ["InstancesCount"] = true, ["Name"] = true, ["AppsCount"] = true, ["LayersCount"] = true, ["Arn"] = true, nil }

function asserts.AssertStackSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StackSummary to be of type 'table'")
	if struct["StackId"] then asserts.AssertString(struct["StackId"]) end
	if struct["InstancesCount"] then asserts.AssertInstancesCount(struct["InstancesCount"]) end
	if struct["Name"] then asserts.AssertString(struct["Name"]) end
	if struct["AppsCount"] then asserts.AssertInteger(struct["AppsCount"]) end
	if struct["LayersCount"] then asserts.AssertInteger(struct["LayersCount"]) end
	if struct["Arn"] then asserts.AssertString(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.StackSummary[k], "StackSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StackSummary
-- <p>Summarizes the number of layers, instances, and apps in a stack.</p>
-- @param _StackId [String] <p>The stack ID.</p>
-- @param _InstancesCount [InstancesCount] <p>An <code>InstancesCount</code> object with the number of instances in each status.</p>
-- @param _Name [String] <p>The stack name.</p>
-- @param _AppsCount [Integer] <p>The number of apps.</p>
-- @param _LayersCount [Integer] <p>The number of layers.</p>
-- @param _Arn [String] <p>The stack's ARN.</p>
function M.StackSummary(_StackId, _InstancesCount, _Name, _AppsCount, _LayersCount, _Arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StackSummary")
	local t = { 
		["StackId"] = _StackId,
		["InstancesCount"] = _InstancesCount,
		["Name"] = _Name,
		["AppsCount"] = _AppsCount,
		["LayersCount"] = _LayersCount,
		["Arn"] = _Arn,
	}
	asserts.AssertStackSummary(t)
	return t
end

keys.ListTagsRequest = { ["ResourceArn"] = true, ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListTagsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagsRequest to be of type 'table'")
	assert(struct["ResourceArn"], "Expected key ResourceArn to exist in table")
	if struct["ResourceArn"] then asserts.AssertResourceArn(struct["ResourceArn"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTagsRequest[k], "ListTagsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagsRequest
--  
-- @param _ResourceArn [ResourceArn] <p>The stack or layer's Amazon Resource Number (ARN).</p>
-- @param _NextToken [NextToken] <p>Do not use. A validation exception occurs if you add a <code>NextToken</code> parameter to a <code>ListTagsRequest</code> call. </p>
-- @param _MaxResults [MaxResults] <p>Do not use. A validation exception occurs if you add a <code>MaxResults</code> parameter to a <code>ListTagsRequest</code> call. </p>
-- Required parameter: ResourceArn
function M.ListTagsRequest(_ResourceArn, _NextToken, _MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTagsRequest")
	local t = { 
		["ResourceArn"] = _ResourceArn,
		["NextToken"] = _NextToken,
		["MaxResults"] = _MaxResults,
	}
	asserts.AssertListTagsRequest(t)
	return t
end

keys.CreateDeploymentResult = { ["DeploymentId"] = true, nil }

function asserts.AssertCreateDeploymentResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDeploymentResult to be of type 'table'")
	if struct["DeploymentId"] then asserts.AssertString(struct["DeploymentId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateDeploymentResult[k], "CreateDeploymentResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDeploymentResult
-- <p>Contains the response to a <code>CreateDeployment</code> request.</p>
-- @param _DeploymentId [String] <p>The deployment ID, which can be used with other requests to identify the deployment.</p>
function M.CreateDeploymentResult(_DeploymentId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDeploymentResult")
	local t = { 
		["DeploymentId"] = _DeploymentId,
	}
	asserts.AssertCreateDeploymentResult(t)
	return t
end

keys.DescribeAppsRequest = { ["StackId"] = true, ["AppIds"] = true, nil }

function asserts.AssertDescribeAppsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAppsRequest to be of type 'table'")
	if struct["StackId"] then asserts.AssertString(struct["StackId"]) end
	if struct["AppIds"] then asserts.AssertStrings(struct["AppIds"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeAppsRequest[k], "DescribeAppsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAppsRequest
--  
-- @param _StackId [String] <p>The app stack ID. If you use this parameter, <code>DescribeApps</code> returns a description of the apps in the specified stack.</p>
-- @param _AppIds [Strings] <p>An array of app IDs for the apps to be described. If you use this parameter, <code>DescribeApps</code> returns a description of the specified apps. Otherwise, it returns a description of every app.</p>
function M.DescribeAppsRequest(_StackId, _AppIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeAppsRequest")
	local t = { 
		["StackId"] = _StackId,
		["AppIds"] = _AppIds,
	}
	asserts.AssertDescribeAppsRequest(t)
	return t
end

keys.DescribeUserProfilesRequest = { ["IamUserArns"] = true, nil }

function asserts.AssertDescribeUserProfilesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeUserProfilesRequest to be of type 'table'")
	if struct["IamUserArns"] then asserts.AssertStrings(struct["IamUserArns"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeUserProfilesRequest[k], "DescribeUserProfilesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeUserProfilesRequest
--  
-- @param _IamUserArns [Strings] <p>An array of IAM or federated user ARNs that identify the users to be described.</p>
function M.DescribeUserProfilesRequest(_IamUserArns, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeUserProfilesRequest")
	local t = { 
		["IamUserArns"] = _IamUserArns,
	}
	asserts.AssertDescribeUserProfilesRequest(t)
	return t
end

keys.DeregisterRdsDbInstanceRequest = { ["RdsDbInstanceArn"] = true, nil }

function asserts.AssertDeregisterRdsDbInstanceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeregisterRdsDbInstanceRequest to be of type 'table'")
	assert(struct["RdsDbInstanceArn"], "Expected key RdsDbInstanceArn to exist in table")
	if struct["RdsDbInstanceArn"] then asserts.AssertString(struct["RdsDbInstanceArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeregisterRdsDbInstanceRequest[k], "DeregisterRdsDbInstanceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeregisterRdsDbInstanceRequest
--  
-- @param _RdsDbInstanceArn [String] <p>The Amazon RDS instance's ARN.</p>
-- Required parameter: RdsDbInstanceArn
function M.DeregisterRdsDbInstanceRequest(_RdsDbInstanceArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeregisterRdsDbInstanceRequest")
	local t = { 
		["RdsDbInstanceArn"] = _RdsDbInstanceArn,
	}
	asserts.AssertDeregisterRdsDbInstanceRequest(t)
	return t
end

keys.StartInstanceRequest = { ["InstanceId"] = true, nil }

function asserts.AssertStartInstanceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartInstanceRequest to be of type 'table'")
	assert(struct["InstanceId"], "Expected key InstanceId to exist in table")
	if struct["InstanceId"] then asserts.AssertString(struct["InstanceId"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartInstanceRequest[k], "StartInstanceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartInstanceRequest
--  
-- @param _InstanceId [String] <p>The instance ID.</p>
-- Required parameter: InstanceId
function M.StartInstanceRequest(_InstanceId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StartInstanceRequest")
	local t = { 
		["InstanceId"] = _InstanceId,
	}
	asserts.AssertStartInstanceRequest(t)
	return t
end

keys.DescribeStackSummaryRequest = { ["StackId"] = true, nil }

function asserts.AssertDescribeStackSummaryRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeStackSummaryRequest to be of type 'table'")
	assert(struct["StackId"], "Expected key StackId to exist in table")
	if struct["StackId"] then asserts.AssertString(struct["StackId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeStackSummaryRequest[k], "DescribeStackSummaryRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeStackSummaryRequest
--  
-- @param _StackId [String] <p>The stack ID.</p>
-- Required parameter: StackId
function M.DescribeStackSummaryRequest(_StackId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeStackSummaryRequest")
	local t = { 
		["StackId"] = _StackId,
	}
	asserts.AssertDescribeStackSummaryRequest(t)
	return t
end

keys.DescribeVolumesResult = { ["Volumes"] = true, nil }

function asserts.AssertDescribeVolumesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeVolumesResult to be of type 'table'")
	if struct["Volumes"] then asserts.AssertVolumes(struct["Volumes"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeVolumesResult[k], "DescribeVolumesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeVolumesResult
-- <p>Contains the response to a <code>DescribeVolumes</code> request.</p>
-- @param _Volumes [Volumes] <p>An array of volume IDs.</p>
function M.DescribeVolumesResult(_Volumes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeVolumesResult")
	local t = { 
		["Volumes"] = _Volumes,
	}
	asserts.AssertDescribeVolumesResult(t)
	return t
end

keys.AttachElasticLoadBalancerRequest = { ["ElasticLoadBalancerName"] = true, ["LayerId"] = true, nil }

function asserts.AssertAttachElasticLoadBalancerRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttachElasticLoadBalancerRequest to be of type 'table'")
	assert(struct["ElasticLoadBalancerName"], "Expected key ElasticLoadBalancerName to exist in table")
	assert(struct["LayerId"], "Expected key LayerId to exist in table")
	if struct["ElasticLoadBalancerName"] then asserts.AssertString(struct["ElasticLoadBalancerName"]) end
	if struct["LayerId"] then asserts.AssertString(struct["LayerId"]) end
	for k,_ in pairs(struct) do
		assert(keys.AttachElasticLoadBalancerRequest[k], "AttachElasticLoadBalancerRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AttachElasticLoadBalancerRequest
--  
-- @param _ElasticLoadBalancerName [String] <p>The Elastic Load Balancing instance's name.</p>
-- @param _LayerId [String] <p>The ID of the layer that the Elastic Load Balancing instance is to be attached to.</p>
-- Required parameter: ElasticLoadBalancerName
-- Required parameter: LayerId
function M.AttachElasticLoadBalancerRequest(_ElasticLoadBalancerName, _LayerId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AttachElasticLoadBalancerRequest")
	local t = { 
		["ElasticLoadBalancerName"] = _ElasticLoadBalancerName,
		["LayerId"] = _LayerId,
	}
	asserts.AssertAttachElasticLoadBalancerRequest(t)
	return t
end

keys.UpdateMyUserProfileRequest = { ["SshPublicKey"] = true, nil }

function asserts.AssertUpdateMyUserProfileRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateMyUserProfileRequest to be of type 'table'")
	if struct["SshPublicKey"] then asserts.AssertString(struct["SshPublicKey"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateMyUserProfileRequest[k], "UpdateMyUserProfileRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateMyUserProfileRequest
--  
-- @param _SshPublicKey [String] <p>The user's SSH public key.</p>
function M.UpdateMyUserProfileRequest(_SshPublicKey, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateMyUserProfileRequest")
	local t = { 
		["SshPublicKey"] = _SshPublicKey,
	}
	asserts.AssertUpdateMyUserProfileRequest(t)
	return t
end

keys.DeleteLayerRequest = { ["LayerId"] = true, nil }

function asserts.AssertDeleteLayerRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteLayerRequest to be of type 'table'")
	assert(struct["LayerId"], "Expected key LayerId to exist in table")
	if struct["LayerId"] then asserts.AssertString(struct["LayerId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteLayerRequest[k], "DeleteLayerRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteLayerRequest
--  
-- @param _LayerId [String] <p>The layer ID.</p>
-- Required parameter: LayerId
function M.DeleteLayerRequest(_LayerId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteLayerRequest")
	local t = { 
		["LayerId"] = _LayerId,
	}
	asserts.AssertDeleteLayerRequest(t)
	return t
end

keys.ShutdownEventConfiguration = { ["DelayUntilElbConnectionsDrained"] = true, ["ExecutionTimeout"] = true, nil }

function asserts.AssertShutdownEventConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ShutdownEventConfiguration to be of type 'table'")
	if struct["DelayUntilElbConnectionsDrained"] then asserts.AssertBoolean(struct["DelayUntilElbConnectionsDrained"]) end
	if struct["ExecutionTimeout"] then asserts.AssertInteger(struct["ExecutionTimeout"]) end
	for k,_ in pairs(struct) do
		assert(keys.ShutdownEventConfiguration[k], "ShutdownEventConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ShutdownEventConfiguration
-- <p>The Shutdown event configuration.</p>
-- @param _DelayUntilElbConnectionsDrained [Boolean] <p>Whether to enable Elastic Load Balancing connection draining. For more information, see <a href="http://docs.aws.amazon.com/ElasticLoadBalancing/latest/DeveloperGuide/TerminologyandKeyConcepts.html#conn-drain">Connection Draining</a> </p>
-- @param _ExecutionTimeout [Integer] <p>The time, in seconds, that AWS OpsWorks Stacks will wait after triggering a Shutdown event before shutting down an instance.</p>
function M.ShutdownEventConfiguration(_DelayUntilElbConnectionsDrained, _ExecutionTimeout, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ShutdownEventConfiguration")
	local t = { 
		["DelayUntilElbConnectionsDrained"] = _DelayUntilElbConnectionsDrained,
		["ExecutionTimeout"] = _ExecutionTimeout,
	}
	asserts.AssertShutdownEventConfiguration(t)
	return t
end

keys.EcsCluster = { ["StackId"] = true, ["EcsClusterArn"] = true, ["RegisteredAt"] = true, ["EcsClusterName"] = true, nil }

function asserts.AssertEcsCluster(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EcsCluster to be of type 'table'")
	if struct["StackId"] then asserts.AssertString(struct["StackId"]) end
	if struct["EcsClusterArn"] then asserts.AssertString(struct["EcsClusterArn"]) end
	if struct["RegisteredAt"] then asserts.AssertDateTime(struct["RegisteredAt"]) end
	if struct["EcsClusterName"] then asserts.AssertString(struct["EcsClusterName"]) end
	for k,_ in pairs(struct) do
		assert(keys.EcsCluster[k], "EcsCluster contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EcsCluster
-- <p>Describes a registered Amazon ECS cluster.</p>
-- @param _StackId [String] <p>The stack ID.</p>
-- @param _EcsClusterArn [String] <p>The cluster's ARN.</p>
-- @param _RegisteredAt [DateTime] <p>The time and date that the cluster was registered with the stack.</p>
-- @param _EcsClusterName [String] <p>The cluster name.</p>
function M.EcsCluster(_StackId, _EcsClusterArn, _RegisteredAt, _EcsClusterName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EcsCluster")
	local t = { 
		["StackId"] = _StackId,
		["EcsClusterArn"] = _EcsClusterArn,
		["RegisteredAt"] = _RegisteredAt,
		["EcsClusterName"] = _EcsClusterName,
	}
	asserts.AssertEcsCluster(t)
	return t
end

keys.DescribeAppsResult = { ["Apps"] = true, nil }

function asserts.AssertDescribeAppsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAppsResult to be of type 'table'")
	if struct["Apps"] then asserts.AssertApps(struct["Apps"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeAppsResult[k], "DescribeAppsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAppsResult
-- <p>Contains the response to a <code>DescribeApps</code> request.</p>
-- @param _Apps [Apps] <p>An array of <code>App</code> objects that describe the specified apps. </p>
function M.DescribeAppsResult(_Apps, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeAppsResult")
	local t = { 
		["Apps"] = _Apps,
	}
	asserts.AssertDescribeAppsResult(t)
	return t
end

keys.UpdateAppRequest = { ["Environment"] = true, ["AppSource"] = true, ["Description"] = true, ["EnableSsl"] = true, ["SslConfiguration"] = true, ["AppId"] = true, ["Domains"] = true, ["Attributes"] = true, ["Name"] = true, ["Type"] = true, ["DataSources"] = true, nil }

function asserts.AssertUpdateAppRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateAppRequest to be of type 'table'")
	assert(struct["AppId"], "Expected key AppId to exist in table")
	if struct["Environment"] then asserts.AssertEnvironmentVariables(struct["Environment"]) end
	if struct["AppSource"] then asserts.AssertSource(struct["AppSource"]) end
	if struct["Description"] then asserts.AssertString(struct["Description"]) end
	if struct["EnableSsl"] then asserts.AssertBoolean(struct["EnableSsl"]) end
	if struct["SslConfiguration"] then asserts.AssertSslConfiguration(struct["SslConfiguration"]) end
	if struct["AppId"] then asserts.AssertString(struct["AppId"]) end
	if struct["Domains"] then asserts.AssertStrings(struct["Domains"]) end
	if struct["Attributes"] then asserts.AssertAppAttributes(struct["Attributes"]) end
	if struct["Name"] then asserts.AssertString(struct["Name"]) end
	if struct["Type"] then asserts.AssertAppType(struct["Type"]) end
	if struct["DataSources"] then asserts.AssertDataSources(struct["DataSources"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateAppRequest[k], "UpdateAppRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateAppRequest
--  
-- @param _Environment [EnvironmentVariables] <p>An array of <code>EnvironmentVariable</code> objects that specify environment variables to be associated with the app. After you deploy the app, these variables are defined on the associated app server instances.For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html#workingapps-creating-environment"> Environment Variables</a>.</p> <p>There is no specific limit on the number of environment variables. However, the size of the associated data structure - which includes the variables' names, values, and protected flag values - cannot exceed 10 KB (10240 Bytes). This limit should accommodate most if not all use cases. Exceeding it will cause an exception with the message, "Environment: is too large (maximum is 10KB)."</p> <note> <p>This parameter is supported only by Chef 11.10 stacks. If you have specified one or more environment variables, you cannot modify the stack's Chef version.</p> </note>
-- @param _AppSource [Source] <p>A <code>Source</code> object that specifies the app repository.</p>
-- @param _Description [String] <p>A description of the app.</p>
-- @param _EnableSsl [Boolean] <p>Whether SSL is enabled for the app.</p>
-- @param _SslConfiguration [SslConfiguration] <p>An <code>SslConfiguration</code> object with the SSL configuration.</p>
-- @param _AppId [String] <p>The app ID.</p>
-- @param _Domains [Strings] <p>The app's virtual host settings, with multiple domains separated by commas. For example: <code>'www.example.com, example.com'</code> </p>
-- @param _Attributes [AppAttributes] <p>One or more user-defined key/value pairs to be added to the stack attributes.</p>
-- @param _Name [String] <p>The app name.</p>
-- @param _Type [AppType] <p>The app type.</p>
-- @param _DataSources [DataSources] <p>The app's data sources.</p>
-- Required parameter: AppId
function M.UpdateAppRequest(_Environment, _AppSource, _Description, _EnableSsl, _SslConfiguration, _AppId, _Domains, _Attributes, _Name, _Type, _DataSources, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateAppRequest")
	local t = { 
		["Environment"] = _Environment,
		["AppSource"] = _AppSource,
		["Description"] = _Description,
		["EnableSsl"] = _EnableSsl,
		["SslConfiguration"] = _SslConfiguration,
		["AppId"] = _AppId,
		["Domains"] = _Domains,
		["Attributes"] = _Attributes,
		["Name"] = _Name,
		["Type"] = _Type,
		["DataSources"] = _DataSources,
	}
	asserts.AssertUpdateAppRequest(t)
	return t
end

keys.RegisterElasticIpRequest = { ["StackId"] = true, ["ElasticIp"] = true, nil }

function asserts.AssertRegisterElasticIpRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RegisterElasticIpRequest to be of type 'table'")
	assert(struct["ElasticIp"], "Expected key ElasticIp to exist in table")
	assert(struct["StackId"], "Expected key StackId to exist in table")
	if struct["StackId"] then asserts.AssertString(struct["StackId"]) end
	if struct["ElasticIp"] then asserts.AssertString(struct["ElasticIp"]) end
	for k,_ in pairs(struct) do
		assert(keys.RegisterElasticIpRequest[k], "RegisterElasticIpRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RegisterElasticIpRequest
--  
-- @param _StackId [String] <p>The stack ID.</p>
-- @param _ElasticIp [String] <p>The Elastic IP address.</p>
-- Required parameter: ElasticIp
-- Required parameter: StackId
function M.RegisterElasticIpRequest(_StackId, _ElasticIp, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RegisterElasticIpRequest")
	local t = { 
		["StackId"] = _StackId,
		["ElasticIp"] = _ElasticIp,
	}
	asserts.AssertRegisterElasticIpRequest(t)
	return t
end

keys.DescribeCommandsRequest = { ["InstanceId"] = true, ["DeploymentId"] = true, ["CommandIds"] = true, nil }

function asserts.AssertDescribeCommandsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeCommandsRequest to be of type 'table'")
	if struct["InstanceId"] then asserts.AssertString(struct["InstanceId"]) end
	if struct["DeploymentId"] then asserts.AssertString(struct["DeploymentId"]) end
	if struct["CommandIds"] then asserts.AssertStrings(struct["CommandIds"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeCommandsRequest[k], "DescribeCommandsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeCommandsRequest
--  
-- @param _InstanceId [String] <p>The instance ID. If you include this parameter, <code>DescribeCommands</code> returns a description of the commands associated with the specified instance.</p>
-- @param _DeploymentId [String] <p>The deployment ID. If you include this parameter, <code>DescribeCommands</code> returns a description of the commands associated with the specified deployment.</p>
-- @param _CommandIds [Strings] <p>An array of command IDs. If you include this parameter, <code>DescribeCommands</code> returns a description of the specified commands. Otherwise, it returns a description of every command.</p>
function M.DescribeCommandsRequest(_InstanceId, _DeploymentId, _CommandIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeCommandsRequest")
	local t = { 
		["InstanceId"] = _InstanceId,
		["DeploymentId"] = _DeploymentId,
		["CommandIds"] = _CommandIds,
	}
	asserts.AssertDescribeCommandsRequest(t)
	return t
end

keys.DescribeElasticLoadBalancersRequest = { ["StackId"] = true, ["LayerIds"] = true, nil }

function asserts.AssertDescribeElasticLoadBalancersRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeElasticLoadBalancersRequest to be of type 'table'")
	if struct["StackId"] then asserts.AssertString(struct["StackId"]) end
	if struct["LayerIds"] then asserts.AssertStrings(struct["LayerIds"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeElasticLoadBalancersRequest[k], "DescribeElasticLoadBalancersRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeElasticLoadBalancersRequest
--  
-- @param _StackId [String] <p>A stack ID. The action describes the stack's Elastic Load Balancing instances.</p>
-- @param _LayerIds [Strings] <p>A list of layer IDs. The action describes the Elastic Load Balancing instances for the specified layers.</p>
function M.DescribeElasticLoadBalancersRequest(_StackId, _LayerIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeElasticLoadBalancersRequest")
	local t = { 
		["StackId"] = _StackId,
		["LayerIds"] = _LayerIds,
	}
	asserts.AssertDescribeElasticLoadBalancersRequest(t)
	return t
end

keys.UnassignVolumeRequest = { ["VolumeId"] = true, nil }

function asserts.AssertUnassignVolumeRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnassignVolumeRequest to be of type 'table'")
	assert(struct["VolumeId"], "Expected key VolumeId to exist in table")
	if struct["VolumeId"] then asserts.AssertString(struct["VolumeId"]) end
	for k,_ in pairs(struct) do
		assert(keys.UnassignVolumeRequest[k], "UnassignVolumeRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnassignVolumeRequest
--  
-- @param _VolumeId [String] <p>The volume ID.</p>
-- Required parameter: VolumeId
function M.UnassignVolumeRequest(_VolumeId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UnassignVolumeRequest")
	local t = { 
		["VolumeId"] = _VolumeId,
	}
	asserts.AssertUnassignVolumeRequest(t)
	return t
end

keys.DescribePermissionsResult = { ["Permissions"] = true, nil }

function asserts.AssertDescribePermissionsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribePermissionsResult to be of type 'table'")
	if struct["Permissions"] then asserts.AssertPermissions(struct["Permissions"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribePermissionsResult[k], "DescribePermissionsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribePermissionsResult
-- <p>Contains the response to a <code>DescribePermissions</code> request.</p>
-- @param _Permissions [Permissions] <p>An array of <code>Permission</code> objects that describe the stack permissions.</p> <ul> <li> <p>If the request object contains only a stack ID, the array contains a <code>Permission</code> object with permissions for each of the stack IAM ARNs.</p> </li> <li> <p>If the request object contains only an IAM ARN, the array contains a <code>Permission</code> object with permissions for each of the user's stack IDs.</p> </li> <li> <p>If the request contains a stack ID and an IAM ARN, the array contains a single <code>Permission</code> object with permissions for the specified stack and IAM ARN.</p> </li> </ul>
function M.DescribePermissionsResult(_Permissions, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribePermissionsResult")
	local t = { 
		["Permissions"] = _Permissions,
	}
	asserts.AssertDescribePermissionsResult(t)
	return t
end

keys.ListTagsResult = { ["NextToken"] = true, ["Tags"] = true, nil }

function asserts.AssertListTagsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagsResult to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["Tags"] then asserts.AssertTags(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTagsResult[k], "ListTagsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagsResult
-- <p>Contains the response to a <code>ListTags</code> request.</p>
-- @param _NextToken [NextToken] <p>If a paginated request does not return all of the remaining results, this parameter is set to a token that you can assign to the request object's <code>NextToken</code> parameter to get the next set of results. If the previous paginated request returned all of the remaining results, this parameter is set to <code>null</code>. </p>
-- @param _Tags [Tags] <p>A set of key-value pairs that contain tag keys and tag values that are attached to a stack or layer.</p>
function M.ListTagsResult(_NextToken, _Tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTagsResult")
	local t = { 
		["NextToken"] = _NextToken,
		["Tags"] = _Tags,
	}
	asserts.AssertListTagsResult(t)
	return t
end

keys.Recipes = { ["Undeploy"] = true, ["Setup"] = true, ["Configure"] = true, ["Shutdown"] = true, ["Deploy"] = true, nil }

function asserts.AssertRecipes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Recipes to be of type 'table'")
	if struct["Undeploy"] then asserts.AssertStrings(struct["Undeploy"]) end
	if struct["Setup"] then asserts.AssertStrings(struct["Setup"]) end
	if struct["Configure"] then asserts.AssertStrings(struct["Configure"]) end
	if struct["Shutdown"] then asserts.AssertStrings(struct["Shutdown"]) end
	if struct["Deploy"] then asserts.AssertStrings(struct["Deploy"]) end
	for k,_ in pairs(struct) do
		assert(keys.Recipes[k], "Recipes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Recipes
-- <p>AWS OpsWorks Stacks supports five lifecycle events: <b>setup</b>, <b>configuration</b>, <b>deploy</b>, <b>undeploy</b>, and <b>shutdown</b>. For each layer, AWS OpsWorks Stacks runs a set of standard recipes for each event. In addition, you can provide custom recipes for any or all layers and events. AWS OpsWorks Stacks runs custom event recipes after the standard recipes. <code>LayerCustomRecipes</code> specifies the custom recipes for a particular layer to be run in response to each of the five events. </p> <p>To specify a recipe, use the cookbook's directory name in the repository followed by two colons and the recipe name, which is the recipe's file name without the .rb extension. For example: phpapp2::dbsetup specifies the dbsetup.rb recipe in the repository's phpapp2 folder.</p>
-- @param _Undeploy [Strings] <p>An array of custom recipe names to be run following a <code>undeploy</code> event.</p>
-- @param _Setup [Strings] <p>An array of custom recipe names to be run following a <code>setup</code> event.</p>
-- @param _Configure [Strings] <p>An array of custom recipe names to be run following a <code>configure</code> event.</p>
-- @param _Shutdown [Strings] <p>An array of custom recipe names to be run following a <code>shutdown</code> event.</p>
-- @param _Deploy [Strings] <p>An array of custom recipe names to be run following a <code>deploy</code> event.</p>
function M.Recipes(_Undeploy, _Setup, _Configure, _Shutdown, _Deploy, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Recipes")
	local t = { 
		["Undeploy"] = _Undeploy,
		["Setup"] = _Setup,
		["Configure"] = _Configure,
		["Shutdown"] = _Shutdown,
		["Deploy"] = _Deploy,
	}
	asserts.AssertRecipes(t)
	return t
end

keys.Layer = { ["StackId"] = true, ["DefaultRecipes"] = true, ["LayerId"] = true, ["AutoAssignPublicIps"] = true, ["Shortname"] = true, ["CustomSecurityGroupIds"] = true, ["LifecycleEventConfiguration"] = true, ["Type"] = true, ["CustomInstanceProfileArn"] = true, ["UseEbsOptimizedInstances"] = true, ["Packages"] = true, ["CreatedAt"] = true, ["Name"] = true, ["CloudWatchLogsConfiguration"] = true, ["CustomRecipes"] = true, ["VolumeConfigurations"] = true, ["Attributes"] = true, ["InstallUpdatesOnBoot"] = true, ["AutoAssignElasticIps"] = true, ["DefaultSecurityGroupNames"] = true, ["CustomJson"] = true, ["EnableAutoHealing"] = true, ["Arn"] = true, nil }

function asserts.AssertLayer(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Layer to be of type 'table'")
	if struct["StackId"] then asserts.AssertString(struct["StackId"]) end
	if struct["DefaultRecipes"] then asserts.AssertRecipes(struct["DefaultRecipes"]) end
	if struct["LayerId"] then asserts.AssertString(struct["LayerId"]) end
	if struct["AutoAssignPublicIps"] then asserts.AssertBoolean(struct["AutoAssignPublicIps"]) end
	if struct["Shortname"] then asserts.AssertString(struct["Shortname"]) end
	if struct["CustomSecurityGroupIds"] then asserts.AssertStrings(struct["CustomSecurityGroupIds"]) end
	if struct["LifecycleEventConfiguration"] then asserts.AssertLifecycleEventConfiguration(struct["LifecycleEventConfiguration"]) end
	if struct["Type"] then asserts.AssertLayerType(struct["Type"]) end
	if struct["CustomInstanceProfileArn"] then asserts.AssertString(struct["CustomInstanceProfileArn"]) end
	if struct["UseEbsOptimizedInstances"] then asserts.AssertBoolean(struct["UseEbsOptimizedInstances"]) end
	if struct["Packages"] then asserts.AssertStrings(struct["Packages"]) end
	if struct["CreatedAt"] then asserts.AssertDateTime(struct["CreatedAt"]) end
	if struct["Name"] then asserts.AssertString(struct["Name"]) end
	if struct["CloudWatchLogsConfiguration"] then asserts.AssertCloudWatchLogsConfiguration(struct["CloudWatchLogsConfiguration"]) end
	if struct["CustomRecipes"] then asserts.AssertRecipes(struct["CustomRecipes"]) end
	if struct["VolumeConfigurations"] then asserts.AssertVolumeConfigurations(struct["VolumeConfigurations"]) end
	if struct["Attributes"] then asserts.AssertLayerAttributes(struct["Attributes"]) end
	if struct["InstallUpdatesOnBoot"] then asserts.AssertBoolean(struct["InstallUpdatesOnBoot"]) end
	if struct["AutoAssignElasticIps"] then asserts.AssertBoolean(struct["AutoAssignElasticIps"]) end
	if struct["DefaultSecurityGroupNames"] then asserts.AssertStrings(struct["DefaultSecurityGroupNames"]) end
	if struct["CustomJson"] then asserts.AssertString(struct["CustomJson"]) end
	if struct["EnableAutoHealing"] then asserts.AssertBoolean(struct["EnableAutoHealing"]) end
	if struct["Arn"] then asserts.AssertString(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.Layer[k], "Layer contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Layer
-- <p>Describes a layer.</p>
-- @param _StackId [String] <p>The layer stack ID.</p>
-- @param _DefaultRecipes [Recipes] 
-- @param _LayerId [String] <p>The layer ID.</p>
-- @param _AutoAssignPublicIps [Boolean] <p>For stacks that are running in a VPC, whether to automatically assign a public IP address to the layer's instances. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-edit.html">How to Edit a Layer</a>.</p>
-- @param _Shortname [String] <p>The layer short name.</p>
-- @param _CustomSecurityGroupIds [Strings] <p>An array containing the layer's custom security group IDs.</p>
-- @param _LifecycleEventConfiguration [LifecycleEventConfiguration] <p>A <code>LifeCycleEventConfiguration</code> object that specifies the Shutdown event configuration.</p>
-- @param _Type [LayerType] <p>The layer type.</p>
-- @param _CustomInstanceProfileArn [String] <p>The ARN of the default IAM profile to be used for the layer's EC2 instances. For more information about IAM ARNs, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">Using Identifiers</a>.</p>
-- @param _UseEbsOptimizedInstances [Boolean] <p>Whether the layer uses Amazon EBS-optimized instances.</p>
-- @param _Packages [Strings] <p>An array of <code>Package</code> objects that describe the layer's packages.</p>
-- @param _CreatedAt [DateTime] <p>Date when the layer was created.</p>
-- @param _Name [String] <p>The layer name.</p>
-- @param _CloudWatchLogsConfiguration [CloudWatchLogsConfiguration] <p>The Amazon CloudWatch Logs configuration settings for the layer.</p>
-- @param _CustomRecipes [Recipes] <p>A <code>LayerCustomRecipes</code> object that specifies the layer's custom recipes.</p>
-- @param _VolumeConfigurations [VolumeConfigurations] <p>A <code>VolumeConfigurations</code> object that describes the layer's Amazon EBS volumes.</p>
-- @param _Attributes [LayerAttributes] <p>The layer attributes.</p> <p>For the <code>HaproxyStatsPassword</code>, <code>MysqlRootPassword</code>, and <code>GangliaPassword</code> attributes, AWS OpsWorks Stacks returns <code>*****FILTERED*****</code> instead of the actual value</p> <p>For an ECS Cluster layer, AWS OpsWorks Stacks the <code>EcsClusterArn</code> attribute is set to the cluster's ARN.</p>
-- @param _InstallUpdatesOnBoot [Boolean] <p>Whether to install operating system and package updates when the instance boots. The default value is <code>true</code>. If this value is set to <code>false</code>, you must then update your instances manually by using <a>CreateDeployment</a> to run the <code>update_dependencies</code> stack command or manually running <code>yum</code> (Amazon Linux) or <code>apt-get</code> (Ubuntu) on the instances. </p> <note> <p>We strongly recommend using the default value of <code>true</code>, to ensure that your instances have the latest security updates.</p> </note>
-- @param _AutoAssignElasticIps [Boolean] <p>Whether to automatically assign an <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html">Elastic IP address</a> to the layer's instances. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-edit.html">How to Edit a Layer</a>.</p>
-- @param _DefaultSecurityGroupNames [Strings] <p>An array containing the layer's security group names.</p>
-- @param _CustomJson [String] <p>A JSON formatted string containing the layer's custom stack configuration and deployment attributes.</p>
-- @param _EnableAutoHealing [Boolean] <p>Whether auto healing is disabled for the layer.</p>
-- @param _Arn [String] 
function M.Layer(_StackId, _DefaultRecipes, _LayerId, _AutoAssignPublicIps, _Shortname, _CustomSecurityGroupIds, _LifecycleEventConfiguration, _Type, _CustomInstanceProfileArn, _UseEbsOptimizedInstances, _Packages, _CreatedAt, _Name, _CloudWatchLogsConfiguration, _CustomRecipes, _VolumeConfigurations, _Attributes, _InstallUpdatesOnBoot, _AutoAssignElasticIps, _DefaultSecurityGroupNames, _CustomJson, _EnableAutoHealing, _Arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Layer")
	local t = { 
		["StackId"] = _StackId,
		["DefaultRecipes"] = _DefaultRecipes,
		["LayerId"] = _LayerId,
		["AutoAssignPublicIps"] = _AutoAssignPublicIps,
		["Shortname"] = _Shortname,
		["CustomSecurityGroupIds"] = _CustomSecurityGroupIds,
		["LifecycleEventConfiguration"] = _LifecycleEventConfiguration,
		["Type"] = _Type,
		["CustomInstanceProfileArn"] = _CustomInstanceProfileArn,
		["UseEbsOptimizedInstances"] = _UseEbsOptimizedInstances,
		["Packages"] = _Packages,
		["CreatedAt"] = _CreatedAt,
		["Name"] = _Name,
		["CloudWatchLogsConfiguration"] = _CloudWatchLogsConfiguration,
		["CustomRecipes"] = _CustomRecipes,
		["VolumeConfigurations"] = _VolumeConfigurations,
		["Attributes"] = _Attributes,
		["InstallUpdatesOnBoot"] = _InstallUpdatesOnBoot,
		["AutoAssignElasticIps"] = _AutoAssignElasticIps,
		["DefaultSecurityGroupNames"] = _DefaultSecurityGroupNames,
		["CustomJson"] = _CustomJson,
		["EnableAutoHealing"] = _EnableAutoHealing,
		["Arn"] = _Arn,
	}
	asserts.AssertLayer(t)
	return t
end

keys.CreateStackRequest = { ["ServiceRoleArn"] = true, ["DefaultSubnetId"] = true, ["VpcId"] = true, ["DefaultRootDeviceType"] = true, ["Name"] = true, ["HostnameTheme"] = true, ["UseCustomCookbooks"] = true, ["CustomJson"] = true, ["Region"] = true, ["DefaultAvailabilityZone"] = true, ["UseOpsworksSecurityGroups"] = true, ["CustomCookbooksSource"] = true, ["ConfigurationManager"] = true, ["ChefConfiguration"] = true, ["AgentVersion"] = true, ["DefaultSshKeyName"] = true, ["DefaultInstanceProfileArn"] = true, ["Attributes"] = true, ["DefaultOs"] = true, nil }

function asserts.AssertCreateStackRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateStackRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["Region"], "Expected key Region to exist in table")
	assert(struct["ServiceRoleArn"], "Expected key ServiceRoleArn to exist in table")
	assert(struct["DefaultInstanceProfileArn"], "Expected key DefaultInstanceProfileArn to exist in table")
	if struct["ServiceRoleArn"] then asserts.AssertString(struct["ServiceRoleArn"]) end
	if struct["DefaultSubnetId"] then asserts.AssertString(struct["DefaultSubnetId"]) end
	if struct["VpcId"] then asserts.AssertString(struct["VpcId"]) end
	if struct["DefaultRootDeviceType"] then asserts.AssertRootDeviceType(struct["DefaultRootDeviceType"]) end
	if struct["Name"] then asserts.AssertString(struct["Name"]) end
	if struct["HostnameTheme"] then asserts.AssertString(struct["HostnameTheme"]) end
	if struct["UseCustomCookbooks"] then asserts.AssertBoolean(struct["UseCustomCookbooks"]) end
	if struct["CustomJson"] then asserts.AssertString(struct["CustomJson"]) end
	if struct["Region"] then asserts.AssertString(struct["Region"]) end
	if struct["DefaultAvailabilityZone"] then asserts.AssertString(struct["DefaultAvailabilityZone"]) end
	if struct["UseOpsworksSecurityGroups"] then asserts.AssertBoolean(struct["UseOpsworksSecurityGroups"]) end
	if struct["CustomCookbooksSource"] then asserts.AssertSource(struct["CustomCookbooksSource"]) end
	if struct["ConfigurationManager"] then asserts.AssertStackConfigurationManager(struct["ConfigurationManager"]) end
	if struct["ChefConfiguration"] then asserts.AssertChefConfiguration(struct["ChefConfiguration"]) end
	if struct["AgentVersion"] then asserts.AssertString(struct["AgentVersion"]) end
	if struct["DefaultSshKeyName"] then asserts.AssertString(struct["DefaultSshKeyName"]) end
	if struct["DefaultInstanceProfileArn"] then asserts.AssertString(struct["DefaultInstanceProfileArn"]) end
	if struct["Attributes"] then asserts.AssertStackAttributes(struct["Attributes"]) end
	if struct["DefaultOs"] then asserts.AssertString(struct["DefaultOs"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateStackRequest[k], "CreateStackRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateStackRequest
--  
-- @param _ServiceRoleArn [String] <p>The stack's AWS Identity and Access Management (IAM) role, which allows AWS OpsWorks Stacks to work with AWS resources on your behalf. You must set this parameter to the Amazon Resource Name (ARN) for an existing IAM role. For more information about IAM ARNs, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">Using Identifiers</a>.</p>
-- @param _DefaultSubnetId [String] <p>The stack's default VPC subnet ID. This parameter is required if you specify a value for the <code>VpcId</code> parameter. All instances are launched into this subnet unless you specify otherwise when you create the instance. If you also specify a value for <code>DefaultAvailabilityZone</code>, the subnet must be in that zone. For information on default values and when this parameter is required, see the <code>VpcId</code> parameter description. </p>
-- @param _VpcId [String] <p>The ID of the VPC that the stack is to be launched into. The VPC must be in the stack's region. All instances are launched into this VPC. You cannot change the ID later.</p> <ul> <li> <p>If your account supports EC2-Classic, the default value is <code>no VPC</code>.</p> </li> <li> <p>If your account does not support EC2-Classic, the default value is the default VPC for the specified region.</p> </li> </ul> <p>If the VPC ID corresponds to a default VPC and you have specified either the <code>DefaultAvailabilityZone</code> or the <code>DefaultSubnetId</code> parameter only, AWS OpsWorks Stacks infers the value of the other parameter. If you specify neither parameter, AWS OpsWorks Stacks sets these parameters to the first valid Availability Zone for the specified region and the corresponding default VPC subnet ID, respectively.</p> <p>If you specify a nondefault VPC ID, note the following:</p> <ul> <li> <p>It must belong to a VPC in your account that is in the specified region.</p> </li> <li> <p>You must specify a value for <code>DefaultSubnetId</code>.</p> </li> </ul> <p>For more information on how to use AWS OpsWorks Stacks with a VPC, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-vpc.html">Running a Stack in a VPC</a>. For more information on default VPC and EC2-Classic, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-supported-platforms.html">Supported Platforms</a>. </p>
-- @param _DefaultRootDeviceType [RootDeviceType] <p>The default root device type. This value is the default for all instances in the stack, but you can override it when you create an instance. The default option is <code>instance-store</code>. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ComponentsAMIs.html#storage-for-the-root-device">Storage for the Root Device</a>.</p>
-- @param _Name [String] <p>The stack name.</p>
-- @param _HostnameTheme [String] <p>The stack's host name theme, with spaces replaced by underscores. The theme is used to generate host names for the stack's instances. By default, <code>HostnameTheme</code> is set to <code>Layer_Dependent</code>, which creates host names by appending integers to the layer's short name. The other themes are:</p> <ul> <li> <p> <code>Baked_Goods</code> </p> </li> <li> <p> <code>Clouds</code> </p> </li> <li> <p> <code>Europe_Cities</code> </p> </li> <li> <p> <code>Fruits</code> </p> </li> <li> <p> <code>Greek_Deities</code> </p> </li> <li> <p> <code>Legendary_creatures_from_Japan</code> </p> </li> <li> <p> <code>Planets_and_Moons</code> </p> </li> <li> <p> <code>Roman_Deities</code> </p> </li> <li> <p> <code>Scottish_Islands</code> </p> </li> <li> <p> <code>US_Cities</code> </p> </li> <li> <p> <code>Wild_Cats</code> </p> </li> </ul> <p>To obtain a generated host name, call <code>GetHostNameSuggestion</code>, which returns a host name based on the current theme.</p>
-- @param _UseCustomCookbooks [Boolean] <p>Whether the stack uses custom cookbooks.</p>
-- @param _CustomJson [String] <p>A string that contains user-defined, custom JSON. It can be used to override the corresponding default stack configuration attribute values or to pass data to recipes. The string should be in the following format:</p> <p> <code>"{\"key1\": \"value1\", \"key2\": \"value2\",...}"</code> </p> <p>For more information on custom JSON, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-json.html">Use Custom JSON to Modify the Stack Configuration Attributes</a>.</p>
-- @param _Region [String] <p>The stack's AWS region, such as "ap-south-1". For more information about Amazon regions, see <a href="http://docs.aws.amazon.com/general/latest/gr/rande.html">Regions and Endpoints</a>.</p>
-- @param _DefaultAvailabilityZone [String] <p>The stack's default Availability Zone, which must be in the specified region. For more information, see <a href="http://docs.aws.amazon.com/general/latest/gr/rande.html">Regions and Endpoints</a>. If you also specify a value for <code>DefaultSubnetId</code>, the subnet must be in the same zone. For more information, see the <code>VpcId</code> parameter description. </p>
-- @param _UseOpsworksSecurityGroups [Boolean] <p>Whether to associate the AWS OpsWorks Stacks built-in security groups with the stack's layers.</p> <p>AWS OpsWorks Stacks provides a standard set of built-in security groups, one for each layer, which are associated with layers by default. With <code>UseOpsworksSecurityGroups</code> you can instead provide your own custom security groups. <code>UseOpsworksSecurityGroups</code> has the following settings: </p> <ul> <li> <p>True - AWS OpsWorks Stacks automatically associates the appropriate built-in security group with each layer (default setting). You can associate additional security groups with a layer after you create it, but you cannot delete the built-in security group.</p> </li> <li> <p>False - AWS OpsWorks Stacks does not associate built-in security groups with layers. You must create appropriate EC2 security groups and associate a security group with each layer that you create. However, you can still manually associate a built-in security group with a layer on creation; custom security groups are required only for those layers that need custom settings.</p> </li> </ul> <p>For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-creating.html">Create a New Stack</a>.</p>
-- @param _CustomCookbooksSource [Source] 
-- @param _ConfigurationManager [StackConfigurationManager] <p>The configuration manager. When you create a stack we recommend that you use the configuration manager to specify the Chef version: 12, 11.10, or 11.4 for Linux stacks, or 12.2 for Windows stacks. The default value for Linux stacks is currently 11.4.</p>
-- @param _ChefConfiguration [ChefConfiguration] <p>A <code>ChefConfiguration</code> object that specifies whether to enable Berkshelf and the Berkshelf version on Chef 11.10 stacks. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-creating.html">Create a New Stack</a>.</p>
-- @param _AgentVersion [String] <p>The default AWS OpsWorks Stacks agent version. You have the following options:</p> <ul> <li> <p>Auto-update - Set this parameter to <code>LATEST</code>. AWS OpsWorks Stacks automatically installs new agent versions on the stack's instances as soon as they are available.</p> </li> <li> <p>Fixed version - Set this parameter to your preferred agent version. To update the agent version, you must edit the stack configuration and specify a new version. AWS OpsWorks Stacks then automatically installs that version on the stack's instances.</p> </li> </ul> <p>The default setting is the most recent release of the agent. To specify an agent version, you must use the complete version number, not the abbreviated number shown on the console. For a list of available agent version numbers, call <a>DescribeAgentVersions</a>. AgentVersion cannot be set to Chef 12.2.</p> <note> <p>You can also specify an agent version when you create or update an instance, which overrides the stack's default setting.</p> </note>
-- @param _DefaultSshKeyName [String] <p>A default Amazon EC2 key pair name. The default value is none. If you specify a key pair name, AWS OpsWorks installs the public key on the instance and you can use the private key with an SSH client to log in to the instance. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-ssh.html"> Using SSH to Communicate with an Instance</a> and <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/security-ssh-access.html"> Managing SSH Access</a>. You can override this setting by specifying a different key pair, or no key pair, when you <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-add.html"> create an instance</a>. </p>
-- @param _DefaultInstanceProfileArn [String] <p>The Amazon Resource Name (ARN) of an IAM profile that is the default profile for all of the stack's EC2 instances. For more information about IAM ARNs, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">Using Identifiers</a>.</p>
-- @param _Attributes [StackAttributes] <p>One or more user-defined key-value pairs to be added to the stack attributes.</p>
-- @param _DefaultOs [String] <p>The stack's default operating system, which is installed on every instance unless you specify a different operating system when you create the instance. You can specify one of the following.</p> <ul> <li> <p>A supported Linux operating system: An Amazon Linux version, such as <code>Amazon Linux 2017.03</code>, <code>Amazon Linux 2016.09</code>, <code>Amazon Linux 2016.03</code>, <code>Amazon Linux 2015.09</code>, or <code>Amazon Linux 2015.03</code>.</p> </li> <li> <p>A supported Ubuntu operating system, such as <code>Ubuntu 16.04 LTS</code>, <code>Ubuntu 14.04 LTS</code>, or <code>Ubuntu 12.04 LTS</code>.</p> </li> <li> <p> <code>CentOS Linux 7</code> </p> </li> <li> <p> <code>Red Hat Enterprise Linux 7</code> </p> </li> <li> <p>A supported Windows operating system, such as <code>Microsoft Windows Server 2012 R2 Base</code>, <code>Microsoft Windows Server 2012 R2 with SQL Server Express</code>, <code>Microsoft Windows Server 2012 R2 with SQL Server Standard</code>, or <code>Microsoft Windows Server 2012 R2 with SQL Server Web</code>.</p> </li> <li> <p>A custom AMI: <code>Custom</code>. You specify the custom AMI you want to use when you create instances. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-custom-ami.html"> Using Custom AMIs</a>.</p> </li> </ul> <p>The default option is the current Amazon Linux version. For more information on the supported operating systems, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-os.html">AWS OpsWorks Stacks Operating Systems</a>.</p>
-- Required parameter: Name
-- Required parameter: Region
-- Required parameter: ServiceRoleArn
-- Required parameter: DefaultInstanceProfileArn
function M.CreateStackRequest(_ServiceRoleArn, _DefaultSubnetId, _VpcId, _DefaultRootDeviceType, _Name, _HostnameTheme, _UseCustomCookbooks, _CustomJson, _Region, _DefaultAvailabilityZone, _UseOpsworksSecurityGroups, _CustomCookbooksSource, _ConfigurationManager, _ChefConfiguration, _AgentVersion, _DefaultSshKeyName, _DefaultInstanceProfileArn, _Attributes, _DefaultOs, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateStackRequest")
	local t = { 
		["ServiceRoleArn"] = _ServiceRoleArn,
		["DefaultSubnetId"] = _DefaultSubnetId,
		["VpcId"] = _VpcId,
		["DefaultRootDeviceType"] = _DefaultRootDeviceType,
		["Name"] = _Name,
		["HostnameTheme"] = _HostnameTheme,
		["UseCustomCookbooks"] = _UseCustomCookbooks,
		["CustomJson"] = _CustomJson,
		["Region"] = _Region,
		["DefaultAvailabilityZone"] = _DefaultAvailabilityZone,
		["UseOpsworksSecurityGroups"] = _UseOpsworksSecurityGroups,
		["CustomCookbooksSource"] = _CustomCookbooksSource,
		["ConfigurationManager"] = _ConfigurationManager,
		["ChefConfiguration"] = _ChefConfiguration,
		["AgentVersion"] = _AgentVersion,
		["DefaultSshKeyName"] = _DefaultSshKeyName,
		["DefaultInstanceProfileArn"] = _DefaultInstanceProfileArn,
		["Attributes"] = _Attributes,
		["DefaultOs"] = _DefaultOs,
	}
	asserts.AssertCreateStackRequest(t)
	return t
end

keys.Instance = { ["PrivateDns"] = true, ["SshHostRsaKeyFingerprint"] = true, ["SubnetId"] = true, ["Hostname"] = true, ["LastServiceErrorId"] = true, ["Platform"] = true, ["EbsOptimized"] = true, ["ReportedOs"] = true, ["AutoScalingType"] = true, ["Status"] = true, ["StackId"] = true, ["InstanceId"] = true, ["SshKeyName"] = true, ["InfrastructureClass"] = true, ["RootDeviceVolumeId"] = true, ["Tenancy"] = true, ["AgentVersion"] = true, ["SshHostDsaKeyFingerprint"] = true, ["InstanceProfileArn"] = true, ["InstanceType"] = true, ["CreatedAt"] = true, ["AmiId"] = true, ["LayerIds"] = true, ["Ec2InstanceId"] = true, ["PublicDns"] = true, ["SecurityGroupIds"] = true, ["EcsClusterArn"] = true, ["BlockDeviceMappings"] = true, ["Architecture"] = true, ["ReportedAgentVersion"] = true, ["InstallUpdatesOnBoot"] = true, ["Os"] = true, ["VirtualizationType"] = true, ["AvailabilityZone"] = true, ["EcsContainerInstanceArn"] = true, ["ElasticIp"] = true, ["RootDeviceType"] = true, ["PrivateIp"] = true, ["PublicIp"] = true, ["RegisteredBy"] = true, ["Arn"] = true, nil }

function asserts.AssertInstance(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Instance to be of type 'table'")
	if struct["PrivateDns"] then asserts.AssertString(struct["PrivateDns"]) end
	if struct["SshHostRsaKeyFingerprint"] then asserts.AssertString(struct["SshHostRsaKeyFingerprint"]) end
	if struct["SubnetId"] then asserts.AssertString(struct["SubnetId"]) end
	if struct["Hostname"] then asserts.AssertString(struct["Hostname"]) end
	if struct["LastServiceErrorId"] then asserts.AssertString(struct["LastServiceErrorId"]) end
	if struct["Platform"] then asserts.AssertString(struct["Platform"]) end
	if struct["EbsOptimized"] then asserts.AssertBoolean(struct["EbsOptimized"]) end
	if struct["ReportedOs"] then asserts.AssertReportedOs(struct["ReportedOs"]) end
	if struct["AutoScalingType"] then asserts.AssertAutoScalingType(struct["AutoScalingType"]) end
	if struct["Status"] then asserts.AssertString(struct["Status"]) end
	if struct["StackId"] then asserts.AssertString(struct["StackId"]) end
	if struct["InstanceId"] then asserts.AssertString(struct["InstanceId"]) end
	if struct["SshKeyName"] then asserts.AssertString(struct["SshKeyName"]) end
	if struct["InfrastructureClass"] then asserts.AssertString(struct["InfrastructureClass"]) end
	if struct["RootDeviceVolumeId"] then asserts.AssertString(struct["RootDeviceVolumeId"]) end
	if struct["Tenancy"] then asserts.AssertString(struct["Tenancy"]) end
	if struct["AgentVersion"] then asserts.AssertString(struct["AgentVersion"]) end
	if struct["SshHostDsaKeyFingerprint"] then asserts.AssertString(struct["SshHostDsaKeyFingerprint"]) end
	if struct["InstanceProfileArn"] then asserts.AssertString(struct["InstanceProfileArn"]) end
	if struct["InstanceType"] then asserts.AssertString(struct["InstanceType"]) end
	if struct["CreatedAt"] then asserts.AssertDateTime(struct["CreatedAt"]) end
	if struct["AmiId"] then asserts.AssertString(struct["AmiId"]) end
	if struct["LayerIds"] then asserts.AssertStrings(struct["LayerIds"]) end
	if struct["Ec2InstanceId"] then asserts.AssertString(struct["Ec2InstanceId"]) end
	if struct["PublicDns"] then asserts.AssertString(struct["PublicDns"]) end
	if struct["SecurityGroupIds"] then asserts.AssertStrings(struct["SecurityGroupIds"]) end
	if struct["EcsClusterArn"] then asserts.AssertString(struct["EcsClusterArn"]) end
	if struct["BlockDeviceMappings"] then asserts.AssertBlockDeviceMappings(struct["BlockDeviceMappings"]) end
	if struct["Architecture"] then asserts.AssertArchitecture(struct["Architecture"]) end
	if struct["ReportedAgentVersion"] then asserts.AssertString(struct["ReportedAgentVersion"]) end
	if struct["InstallUpdatesOnBoot"] then asserts.AssertBoolean(struct["InstallUpdatesOnBoot"]) end
	if struct["Os"] then asserts.AssertString(struct["Os"]) end
	if struct["VirtualizationType"] then asserts.AssertVirtualizationType(struct["VirtualizationType"]) end
	if struct["AvailabilityZone"] then asserts.AssertString(struct["AvailabilityZone"]) end
	if struct["EcsContainerInstanceArn"] then asserts.AssertString(struct["EcsContainerInstanceArn"]) end
	if struct["ElasticIp"] then asserts.AssertString(struct["ElasticIp"]) end
	if struct["RootDeviceType"] then asserts.AssertRootDeviceType(struct["RootDeviceType"]) end
	if struct["PrivateIp"] then asserts.AssertString(struct["PrivateIp"]) end
	if struct["PublicIp"] then asserts.AssertString(struct["PublicIp"]) end
	if struct["RegisteredBy"] then asserts.AssertString(struct["RegisteredBy"]) end
	if struct["Arn"] then asserts.AssertString(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.Instance[k], "Instance contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Instance
-- <p>Describes an instance.</p>
-- @param _PrivateDns [String] <p>The instance's private DNS name.</p>
-- @param _SshHostRsaKeyFingerprint [String] <p>The SSH key's RSA fingerprint.</p>
-- @param _SubnetId [String] <p>The instance's subnet ID; applicable only if the stack is running in a VPC.</p>
-- @param _Hostname [String] <p>The instance host name.</p>
-- @param _LastServiceErrorId [String] <p>The ID of the last service error. For more information, call <a>DescribeServiceErrors</a>.</p>
-- @param _Platform [String] <p>The instance's platform.</p>
-- @param _EbsOptimized [Boolean] <p>Whether this is an Amazon EBS-optimized instance.</p>
-- @param _ReportedOs [ReportedOs] <p>For registered instances, the reported operating system.</p>
-- @param _AutoScalingType [AutoScalingType] <p>For load-based or time-based instances, the type.</p>
-- @param _Status [String] <p>The instance status:</p> <ul> <li> <p> <code>booting</code> </p> </li> <li> <p> <code>connection_lost</code> </p> </li> <li> <p> <code>online</code> </p> </li> <li> <p> <code>pending</code> </p> </li> <li> <p> <code>rebooting</code> </p> </li> <li> <p> <code>requested</code> </p> </li> <li> <p> <code>running_setup</code> </p> </li> <li> <p> <code>setup_failed</code> </p> </li> <li> <p> <code>shutting_down</code> </p> </li> <li> <p> <code>start_failed</code> </p> </li> <li> <p> <code>stop_failed</code> </p> </li> <li> <p> <code>stopped</code> </p> </li> <li> <p> <code>stopping</code> </p> </li> <li> <p> <code>terminated</code> </p> </li> <li> <p> <code>terminating</code> </p> </li> </ul>
-- @param _StackId [String] <p>The stack ID.</p>
-- @param _InstanceId [String] <p>The instance ID.</p>
-- @param _SshKeyName [String] <p>The instance's Amazon EC2 key-pair name.</p>
-- @param _InfrastructureClass [String] <p>For registered instances, the infrastructure class: <code>ec2</code> or <code>on-premises</code>.</p>
-- @param _RootDeviceVolumeId [String] <p>The root device volume ID.</p>
-- @param _Tenancy [String] <p>The instance's tenancy option, such as <code>dedicated</code> or <code>host</code>.</p>
-- @param _AgentVersion [String] <p>The agent version. This parameter is set to <code>INHERIT</code> if the instance inherits the default stack setting or to a a version number for a fixed agent version.</p>
-- @param _SshHostDsaKeyFingerprint [String] <p>The SSH key's Deep Security Agent (DSA) fingerprint.</p>
-- @param _InstanceProfileArn [String] <p>The ARN of the instance's IAM profile. For more information about IAM ARNs, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">Using Identifiers</a>.</p>
-- @param _InstanceType [String] <p>The instance type, such as <code>t2.micro</code>.</p>
-- @param _CreatedAt [DateTime] <p>The time that the instance was created.</p>
-- @param _AmiId [String] <p>A custom AMI ID to be used to create the instance. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-custom-ami.html">Instances</a> </p>
-- @param _LayerIds [Strings] <p>An array containing the instance layer IDs.</p>
-- @param _Ec2InstanceId [String] <p>The ID of the associated Amazon EC2 instance.</p>
-- @param _PublicDns [String] <p>The instance public DNS name.</p>
-- @param _SecurityGroupIds [Strings] <p>An array containing the instance security group IDs.</p>
-- @param _EcsClusterArn [String] <p>For container instances, the Amazon ECS cluster's ARN.</p>
-- @param _BlockDeviceMappings [BlockDeviceMappings] <p>An array of <code>BlockDeviceMapping</code> objects that specify the instance's block device mappings.</p>
-- @param _Architecture [Architecture] <p>The instance architecture: "i386" or "x86_64".</p>
-- @param _ReportedAgentVersion [String] <p>The instance's reported AWS OpsWorks Stacks agent version.</p>
-- @param _InstallUpdatesOnBoot [Boolean] <p>Whether to install operating system and package updates when the instance boots. The default value is <code>true</code>. If this value is set to <code>false</code>, you must then update your instances manually by using <a>CreateDeployment</a> to run the <code>update_dependencies</code> stack command or by manually running <code>yum</code> (Amazon Linux) or <code>apt-get</code> (Ubuntu) on the instances. </p> <note> <p>We strongly recommend using the default value of <code>true</code>, to ensure that your instances have the latest security updates.</p> </note>
-- @param _Os [String] <p>The instance's operating system.</p>
-- @param _VirtualizationType [VirtualizationType] <p>The instance's virtualization type: <code>paravirtual</code> or <code>hvm</code>.</p>
-- @param _AvailabilityZone [String] <p>The instance Availability Zone. For more information, see <a href="http://docs.aws.amazon.com/general/latest/gr/rande.html">Regions and Endpoints</a>.</p>
-- @param _EcsContainerInstanceArn [String] <p>For container instances, the instance's ARN.</p>
-- @param _ElasticIp [String] <p>The instance <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html">Elastic IP address </a>.</p>
-- @param _RootDeviceType [RootDeviceType] <p>The instance's root device type. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ComponentsAMIs.html#storage-for-the-root-device">Storage for the Root Device</a>.</p>
-- @param _PrivateIp [String] <p>The instance's private IP address.</p>
-- @param _PublicIp [String] <p>The instance public IP address.</p>
-- @param _RegisteredBy [String] <p>For registered instances, who performed the registration.</p>
-- @param _Arn [String] 
function M.Instance(_PrivateDns, _SshHostRsaKeyFingerprint, _SubnetId, _Hostname, _LastServiceErrorId, _Platform, _EbsOptimized, _ReportedOs, _AutoScalingType, _Status, _StackId, _InstanceId, _SshKeyName, _InfrastructureClass, _RootDeviceVolumeId, _Tenancy, _AgentVersion, _SshHostDsaKeyFingerprint, _InstanceProfileArn, _InstanceType, _CreatedAt, _AmiId, _LayerIds, _Ec2InstanceId, _PublicDns, _SecurityGroupIds, _EcsClusterArn, _BlockDeviceMappings, _Architecture, _ReportedAgentVersion, _InstallUpdatesOnBoot, _Os, _VirtualizationType, _AvailabilityZone, _EcsContainerInstanceArn, _ElasticIp, _RootDeviceType, _PrivateIp, _PublicIp, _RegisteredBy, _Arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Instance")
	local t = { 
		["PrivateDns"] = _PrivateDns,
		["SshHostRsaKeyFingerprint"] = _SshHostRsaKeyFingerprint,
		["SubnetId"] = _SubnetId,
		["Hostname"] = _Hostname,
		["LastServiceErrorId"] = _LastServiceErrorId,
		["Platform"] = _Platform,
		["EbsOptimized"] = _EbsOptimized,
		["ReportedOs"] = _ReportedOs,
		["AutoScalingType"] = _AutoScalingType,
		["Status"] = _Status,
		["StackId"] = _StackId,
		["InstanceId"] = _InstanceId,
		["SshKeyName"] = _SshKeyName,
		["InfrastructureClass"] = _InfrastructureClass,
		["RootDeviceVolumeId"] = _RootDeviceVolumeId,
		["Tenancy"] = _Tenancy,
		["AgentVersion"] = _AgentVersion,
		["SshHostDsaKeyFingerprint"] = _SshHostDsaKeyFingerprint,
		["InstanceProfileArn"] = _InstanceProfileArn,
		["InstanceType"] = _InstanceType,
		["CreatedAt"] = _CreatedAt,
		["AmiId"] = _AmiId,
		["LayerIds"] = _LayerIds,
		["Ec2InstanceId"] = _Ec2InstanceId,
		["PublicDns"] = _PublicDns,
		["SecurityGroupIds"] = _SecurityGroupIds,
		["EcsClusterArn"] = _EcsClusterArn,
		["BlockDeviceMappings"] = _BlockDeviceMappings,
		["Architecture"] = _Architecture,
		["ReportedAgentVersion"] = _ReportedAgentVersion,
		["InstallUpdatesOnBoot"] = _InstallUpdatesOnBoot,
		["Os"] = _Os,
		["VirtualizationType"] = _VirtualizationType,
		["AvailabilityZone"] = _AvailabilityZone,
		["EcsContainerInstanceArn"] = _EcsContainerInstanceArn,
		["ElasticIp"] = _ElasticIp,
		["RootDeviceType"] = _RootDeviceType,
		["PrivateIp"] = _PrivateIp,
		["PublicIp"] = _PublicIp,
		["RegisteredBy"] = _RegisteredBy,
		["Arn"] = _Arn,
	}
	asserts.AssertInstance(t)
	return t
end

keys.WeeklyAutoScalingSchedule = { ["Monday"] = true, ["Tuesday"] = true, ["Friday"] = true, ["Wednesday"] = true, ["Thursday"] = true, ["Sunday"] = true, ["Saturday"] = true, nil }

function asserts.AssertWeeklyAutoScalingSchedule(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WeeklyAutoScalingSchedule to be of type 'table'")
	if struct["Monday"] then asserts.AssertDailyAutoScalingSchedule(struct["Monday"]) end
	if struct["Tuesday"] then asserts.AssertDailyAutoScalingSchedule(struct["Tuesday"]) end
	if struct["Friday"] then asserts.AssertDailyAutoScalingSchedule(struct["Friday"]) end
	if struct["Wednesday"] then asserts.AssertDailyAutoScalingSchedule(struct["Wednesday"]) end
	if struct["Thursday"] then asserts.AssertDailyAutoScalingSchedule(struct["Thursday"]) end
	if struct["Sunday"] then asserts.AssertDailyAutoScalingSchedule(struct["Sunday"]) end
	if struct["Saturday"] then asserts.AssertDailyAutoScalingSchedule(struct["Saturday"]) end
	for k,_ in pairs(struct) do
		assert(keys.WeeklyAutoScalingSchedule[k], "WeeklyAutoScalingSchedule contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WeeklyAutoScalingSchedule
-- <p>Describes a time-based instance's auto scaling schedule. The schedule consists of a set of key-value pairs.</p> <ul> <li> <p>The key is the time period (a UTC hour) and must be an integer from 0 - 23.</p> </li> <li> <p>The value indicates whether the instance should be online or offline for the specified period, and must be set to "on" or "off"</p> </li> </ul> <p>The default setting for all time periods is off, so you use the following parameters primarily to specify the online periods. You don't have to explicitly specify offline periods unless you want to change an online period to an offline period.</p> <p>The following example specifies that the instance should be online for four hours, from UTC 1200 - 1600. It will be off for the remainder of the day.</p> <p> <code> { "12":"on", "13":"on", "14":"on", "15":"on" } </code> </p>
-- @param _Monday [DailyAutoScalingSchedule] <p>The schedule for Monday.</p>
-- @param _Tuesday [DailyAutoScalingSchedule] <p>The schedule for Tuesday.</p>
-- @param _Friday [DailyAutoScalingSchedule] <p>The schedule for Friday.</p>
-- @param _Wednesday [DailyAutoScalingSchedule] <p>The schedule for Wednesday.</p>
-- @param _Thursday [DailyAutoScalingSchedule] <p>The schedule for Thursday.</p>
-- @param _Sunday [DailyAutoScalingSchedule] <p>The schedule for Sunday.</p>
-- @param _Saturday [DailyAutoScalingSchedule] <p>The schedule for Saturday.</p>
function M.WeeklyAutoScalingSchedule(_Monday, _Tuesday, _Friday, _Wednesday, _Thursday, _Sunday, _Saturday, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating WeeklyAutoScalingSchedule")
	local t = { 
		["Monday"] = _Monday,
		["Tuesday"] = _Tuesday,
		["Friday"] = _Friday,
		["Wednesday"] = _Wednesday,
		["Thursday"] = _Thursday,
		["Sunday"] = _Sunday,
		["Saturday"] = _Saturday,
	}
	asserts.AssertWeeklyAutoScalingSchedule(t)
	return t
end

keys.EnvironmentVariable = { ["Value"] = true, ["Key"] = true, ["Secure"] = true, nil }

function asserts.AssertEnvironmentVariable(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EnvironmentVariable to be of type 'table'")
	assert(struct["Key"], "Expected key Key to exist in table")
	assert(struct["Value"], "Expected key Value to exist in table")
	if struct["Value"] then asserts.AssertString(struct["Value"]) end
	if struct["Key"] then asserts.AssertString(struct["Key"]) end
	if struct["Secure"] then asserts.AssertBoolean(struct["Secure"]) end
	for k,_ in pairs(struct) do
		assert(keys.EnvironmentVariable[k], "EnvironmentVariable contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EnvironmentVariable
-- <p>Represents an app's environment variable.</p>
-- @param _Value [String] <p>(Optional) The environment variable's value, which can be left empty. If you specify a value, it can contain up to 256 characters, which must all be printable.</p>
-- @param _Key [String] <p>(Required) The environment variable's name, which can consist of up to 64 characters and must be specified. The name can contain upper- and lowercase letters, numbers, and underscores (_), but it must start with a letter or underscore.</p>
-- @param _Secure [Boolean] <p>(Optional) Whether the variable's value will be returned by the <a>DescribeApps</a> action. To conceal an environment variable's value, set <code>Secure</code> to <code>true</code>. <code>DescribeApps</code> then returns <code>*****FILTERED*****</code> instead of the actual value. The default value for <code>Secure</code> is <code>false</code>. </p>
-- Required parameter: Key
-- Required parameter: Value
function M.EnvironmentVariable(_Value, _Key, _Secure, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EnvironmentVariable")
	local t = { 
		["Value"] = _Value,
		["Key"] = _Key,
		["Secure"] = _Secure,
	}
	asserts.AssertEnvironmentVariable(t)
	return t
end

keys.RegisterInstanceResult = { ["InstanceId"] = true, nil }

function asserts.AssertRegisterInstanceResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RegisterInstanceResult to be of type 'table'")
	if struct["InstanceId"] then asserts.AssertString(struct["InstanceId"]) end
	for k,_ in pairs(struct) do
		assert(keys.RegisterInstanceResult[k], "RegisterInstanceResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RegisterInstanceResult
-- <p>Contains the response to a <code>RegisterInstanceResult</code> request.</p>
-- @param _InstanceId [String] <p>The registered instance's AWS OpsWorks Stacks ID.</p>
function M.RegisterInstanceResult(_InstanceId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RegisterInstanceResult")
	local t = { 
		["InstanceId"] = _InstanceId,
	}
	asserts.AssertRegisterInstanceResult(t)
	return t
end

keys.AutoScalingThresholds = { ["InstanceCount"] = true, ["LoadThreshold"] = true, ["ThresholdsWaitTime"] = true, ["IgnoreMetricsTime"] = true, ["MemoryThreshold"] = true, ["Alarms"] = true, ["CpuThreshold"] = true, nil }

function asserts.AssertAutoScalingThresholds(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AutoScalingThresholds to be of type 'table'")
	if struct["InstanceCount"] then asserts.AssertInteger(struct["InstanceCount"]) end
	if struct["LoadThreshold"] then asserts.AssertDouble(struct["LoadThreshold"]) end
	if struct["ThresholdsWaitTime"] then asserts.AssertMinute(struct["ThresholdsWaitTime"]) end
	if struct["IgnoreMetricsTime"] then asserts.AssertMinute(struct["IgnoreMetricsTime"]) end
	if struct["MemoryThreshold"] then asserts.AssertDouble(struct["MemoryThreshold"]) end
	if struct["Alarms"] then asserts.AssertStrings(struct["Alarms"]) end
	if struct["CpuThreshold"] then asserts.AssertDouble(struct["CpuThreshold"]) end
	for k,_ in pairs(struct) do
		assert(keys.AutoScalingThresholds[k], "AutoScalingThresholds contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AutoScalingThresholds
-- <p>Describes a load-based auto scaling upscaling or downscaling threshold configuration, which specifies when AWS OpsWorks Stacks starts or stops load-based instances.</p>
-- @param _InstanceCount [Integer] <p>The number of instances to add or remove when the load exceeds a threshold.</p>
-- @param _LoadThreshold [Double] <p>The load threshold. A value of -1 disables the threshold. For more information about how load is computed, see <a href="http://en.wikipedia.org/wiki/Load_%28computing%29">Load (computing)</a>.</p>
-- @param _ThresholdsWaitTime [Minute] <p>The amount of time, in minutes, that the load must exceed a threshold before more instances are added or removed.</p>
-- @param _IgnoreMetricsTime [Minute] <p>The amount of time (in minutes) after a scaling event occurs that AWS OpsWorks Stacks should ignore metrics and suppress additional scaling events. For example, AWS OpsWorks Stacks adds new instances following an upscaling event but the instances won't start reducing the load until they have been booted and configured. There is no point in raising additional scaling events during that operation, which typically takes several minutes. <code>IgnoreMetricsTime</code> allows you to direct AWS OpsWorks Stacks to suppress scaling events long enough to get the new instances online.</p>
-- @param _MemoryThreshold [Double] <p>The memory utilization threshold, as a percent of the available memory. A value of -1 disables the threshold.</p>
-- @param _Alarms [Strings] <p>Custom Cloudwatch auto scaling alarms, to be used as thresholds. This parameter takes a list of up to five alarm names, which are case sensitive and must be in the same region as the stack.</p> <note> <p>To use custom alarms, you must update your service role to allow <code>cloudwatch:DescribeAlarms</code>. You can either have AWS OpsWorks Stacks update the role for you when you first use this feature or you can edit the role manually. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-servicerole.html">Allowing AWS OpsWorks Stacks to Act on Your Behalf</a>.</p> </note>
-- @param _CpuThreshold [Double] <p>The CPU utilization threshold, as a percent of the available CPU. A value of -1 disables the threshold.</p>
function M.AutoScalingThresholds(_InstanceCount, _LoadThreshold, _ThresholdsWaitTime, _IgnoreMetricsTime, _MemoryThreshold, _Alarms, _CpuThreshold, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AutoScalingThresholds")
	local t = { 
		["InstanceCount"] = _InstanceCount,
		["LoadThreshold"] = _LoadThreshold,
		["ThresholdsWaitTime"] = _ThresholdsWaitTime,
		["IgnoreMetricsTime"] = _IgnoreMetricsTime,
		["MemoryThreshold"] = _MemoryThreshold,
		["Alarms"] = _Alarms,
		["CpuThreshold"] = _CpuThreshold,
	}
	asserts.AssertAutoScalingThresholds(t)
	return t
end

keys.RebootInstanceRequest = { ["InstanceId"] = true, nil }

function asserts.AssertRebootInstanceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RebootInstanceRequest to be of type 'table'")
	assert(struct["InstanceId"], "Expected key InstanceId to exist in table")
	if struct["InstanceId"] then asserts.AssertString(struct["InstanceId"]) end
	for k,_ in pairs(struct) do
		assert(keys.RebootInstanceRequest[k], "RebootInstanceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RebootInstanceRequest
--  
-- @param _InstanceId [String] <p>The instance ID.</p>
-- Required parameter: InstanceId
function M.RebootInstanceRequest(_InstanceId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RebootInstanceRequest")
	local t = { 
		["InstanceId"] = _InstanceId,
	}
	asserts.AssertRebootInstanceRequest(t)
	return t
end

keys.EbsBlockDevice = { ["DeleteOnTermination"] = true, ["SnapshotId"] = true, ["Iops"] = true, ["VolumeType"] = true, ["VolumeSize"] = true, nil }

function asserts.AssertEbsBlockDevice(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EbsBlockDevice to be of type 'table'")
	if struct["DeleteOnTermination"] then asserts.AssertBoolean(struct["DeleteOnTermination"]) end
	if struct["SnapshotId"] then asserts.AssertString(struct["SnapshotId"]) end
	if struct["Iops"] then asserts.AssertInteger(struct["Iops"]) end
	if struct["VolumeType"] then asserts.AssertVolumeType(struct["VolumeType"]) end
	if struct["VolumeSize"] then asserts.AssertInteger(struct["VolumeSize"]) end
	for k,_ in pairs(struct) do
		assert(keys.EbsBlockDevice[k], "EbsBlockDevice contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EbsBlockDevice
-- <p>Describes an Amazon EBS volume. This data type maps directly to the Amazon EC2 <a href="http://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_EbsBlockDevice.html">EbsBlockDevice</a> data type.</p>
-- @param _DeleteOnTermination [Boolean] <p>Whether the volume is deleted on instance termination.</p>
-- @param _SnapshotId [String] <p>The snapshot ID.</p>
-- @param _Iops [Integer] <p>The number of I/O operations per second (IOPS) that the volume supports. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_EbsBlockDevice.html">EbsBlockDevice</a>.</p>
-- @param _VolumeType [VolumeType] <p>The volume type. <code>gp2</code> for General Purpose (SSD) volumes, <code>io1</code> for Provisioned IOPS (SSD) volumes, and <code>standard</code> for Magnetic volumes.</p>
-- @param _VolumeSize [Integer] <p>The volume size, in GiB. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_EbsBlockDevice.html">EbsBlockDevice</a>.</p>
function M.EbsBlockDevice(_DeleteOnTermination, _SnapshotId, _Iops, _VolumeType, _VolumeSize, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EbsBlockDevice")
	local t = { 
		["DeleteOnTermination"] = _DeleteOnTermination,
		["SnapshotId"] = _SnapshotId,
		["Iops"] = _Iops,
		["VolumeType"] = _VolumeType,
		["VolumeSize"] = _VolumeSize,
	}
	asserts.AssertEbsBlockDevice(t)
	return t
end

keys.LoadBasedAutoScalingConfiguration = { ["DownScaling"] = true, ["Enable"] = true, ["UpScaling"] = true, ["LayerId"] = true, nil }

function asserts.AssertLoadBasedAutoScalingConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LoadBasedAutoScalingConfiguration to be of type 'table'")
	if struct["DownScaling"] then asserts.AssertAutoScalingThresholds(struct["DownScaling"]) end
	if struct["Enable"] then asserts.AssertBoolean(struct["Enable"]) end
	if struct["UpScaling"] then asserts.AssertAutoScalingThresholds(struct["UpScaling"]) end
	if struct["LayerId"] then asserts.AssertString(struct["LayerId"]) end
	for k,_ in pairs(struct) do
		assert(keys.LoadBasedAutoScalingConfiguration[k], "LoadBasedAutoScalingConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LoadBasedAutoScalingConfiguration
-- <p>Describes a layer's load-based auto scaling configuration.</p>
-- @param _DownScaling [AutoScalingThresholds] <p>An <code>AutoScalingThresholds</code> object that describes the downscaling configuration, which defines how and when AWS OpsWorks Stacks reduces the number of instances.</p>
-- @param _Enable [Boolean] <p>Whether load-based auto scaling is enabled for the layer.</p>
-- @param _UpScaling [AutoScalingThresholds] <p>An <code>AutoScalingThresholds</code> object that describes the upscaling configuration, which defines how and when AWS OpsWorks Stacks increases the number of instances.</p>
-- @param _LayerId [String] <p>The layer ID.</p>
function M.LoadBasedAutoScalingConfiguration(_DownScaling, _Enable, _UpScaling, _LayerId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LoadBasedAutoScalingConfiguration")
	local t = { 
		["DownScaling"] = _DownScaling,
		["Enable"] = _Enable,
		["UpScaling"] = _UpScaling,
		["LayerId"] = _LayerId,
	}
	asserts.AssertLoadBasedAutoScalingConfiguration(t)
	return t
end

keys.CreateAppResult = { ["AppId"] = true, nil }

function asserts.AssertCreateAppResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateAppResult to be of type 'table'")
	if struct["AppId"] then asserts.AssertString(struct["AppId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateAppResult[k], "CreateAppResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateAppResult
-- <p>Contains the response to a <code>CreateApp</code> request.</p>
-- @param _AppId [String] <p>The app ID.</p>
function M.CreateAppResult(_AppId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateAppResult")
	local t = { 
		["AppId"] = _AppId,
	}
	asserts.AssertCreateAppResult(t)
	return t
end

keys.SetTimeBasedAutoScalingRequest = { ["InstanceId"] = true, ["AutoScalingSchedule"] = true, nil }

function asserts.AssertSetTimeBasedAutoScalingRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetTimeBasedAutoScalingRequest to be of type 'table'")
	assert(struct["InstanceId"], "Expected key InstanceId to exist in table")
	if struct["InstanceId"] then asserts.AssertString(struct["InstanceId"]) end
	if struct["AutoScalingSchedule"] then asserts.AssertWeeklyAutoScalingSchedule(struct["AutoScalingSchedule"]) end
	for k,_ in pairs(struct) do
		assert(keys.SetTimeBasedAutoScalingRequest[k], "SetTimeBasedAutoScalingRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetTimeBasedAutoScalingRequest
--  
-- @param _InstanceId [String] <p>The instance ID.</p>
-- @param _AutoScalingSchedule [WeeklyAutoScalingSchedule] <p>An <code>AutoScalingSchedule</code> with the instance schedule.</p>
-- Required parameter: InstanceId
function M.SetTimeBasedAutoScalingRequest(_InstanceId, _AutoScalingSchedule, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SetTimeBasedAutoScalingRequest")
	local t = { 
		["InstanceId"] = _InstanceId,
		["AutoScalingSchedule"] = _AutoScalingSchedule,
	}
	asserts.AssertSetTimeBasedAutoScalingRequest(t)
	return t
end

keys.CloneStackRequest = { ["HostnameTheme"] = true, ["UseCustomCookbooks"] = true, ["DefaultSshKeyName"] = true, ["CloneAppIds"] = true, ["ChefConfiguration"] = true, ["UseOpsworksSecurityGroups"] = true, ["ServiceRoleArn"] = true, ["VpcId"] = true, ["ConfigurationManager"] = true, ["CustomCookbooksSource"] = true, ["AgentVersion"] = true, ["DefaultAvailabilityZone"] = true, ["ClonePermissions"] = true, ["Name"] = true, ["Region"] = true, ["SourceStackId"] = true, ["DefaultInstanceProfileArn"] = true, ["Attributes"] = true, ["DefaultOs"] = true, ["DefaultSubnetId"] = true, ["DefaultRootDeviceType"] = true, ["CustomJson"] = true, nil }

function asserts.AssertCloneStackRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CloneStackRequest to be of type 'table'")
	assert(struct["SourceStackId"], "Expected key SourceStackId to exist in table")
	assert(struct["ServiceRoleArn"], "Expected key ServiceRoleArn to exist in table")
	if struct["HostnameTheme"] then asserts.AssertString(struct["HostnameTheme"]) end
	if struct["UseCustomCookbooks"] then asserts.AssertBoolean(struct["UseCustomCookbooks"]) end
	if struct["DefaultSshKeyName"] then asserts.AssertString(struct["DefaultSshKeyName"]) end
	if struct["CloneAppIds"] then asserts.AssertStrings(struct["CloneAppIds"]) end
	if struct["ChefConfiguration"] then asserts.AssertChefConfiguration(struct["ChefConfiguration"]) end
	if struct["UseOpsworksSecurityGroups"] then asserts.AssertBoolean(struct["UseOpsworksSecurityGroups"]) end
	if struct["ServiceRoleArn"] then asserts.AssertString(struct["ServiceRoleArn"]) end
	if struct["VpcId"] then asserts.AssertString(struct["VpcId"]) end
	if struct["ConfigurationManager"] then asserts.AssertStackConfigurationManager(struct["ConfigurationManager"]) end
	if struct["CustomCookbooksSource"] then asserts.AssertSource(struct["CustomCookbooksSource"]) end
	if struct["AgentVersion"] then asserts.AssertString(struct["AgentVersion"]) end
	if struct["DefaultAvailabilityZone"] then asserts.AssertString(struct["DefaultAvailabilityZone"]) end
	if struct["ClonePermissions"] then asserts.AssertBoolean(struct["ClonePermissions"]) end
	if struct["Name"] then asserts.AssertString(struct["Name"]) end
	if struct["Region"] then asserts.AssertString(struct["Region"]) end
	if struct["SourceStackId"] then asserts.AssertString(struct["SourceStackId"]) end
	if struct["DefaultInstanceProfileArn"] then asserts.AssertString(struct["DefaultInstanceProfileArn"]) end
	if struct["Attributes"] then asserts.AssertStackAttributes(struct["Attributes"]) end
	if struct["DefaultOs"] then asserts.AssertString(struct["DefaultOs"]) end
	if struct["DefaultSubnetId"] then asserts.AssertString(struct["DefaultSubnetId"]) end
	if struct["DefaultRootDeviceType"] then asserts.AssertRootDeviceType(struct["DefaultRootDeviceType"]) end
	if struct["CustomJson"] then asserts.AssertString(struct["CustomJson"]) end
	for k,_ in pairs(struct) do
		assert(keys.CloneStackRequest[k], "CloneStackRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CloneStackRequest
--  
-- @param _HostnameTheme [String] <p>The stack's host name theme, with spaces are replaced by underscores. The theme is used to generate host names for the stack's instances. By default, <code>HostnameTheme</code> is set to <code>Layer_Dependent</code>, which creates host names by appending integers to the layer's short name. The other themes are:</p> <ul> <li> <p> <code>Baked_Goods</code> </p> </li> <li> <p> <code>Clouds</code> </p> </li> <li> <p> <code>Europe_Cities</code> </p> </li> <li> <p> <code>Fruits</code> </p> </li> <li> <p> <code>Greek_Deities</code> </p> </li> <li> <p> <code>Legendary_creatures_from_Japan</code> </p> </li> <li> <p> <code>Planets_and_Moons</code> </p> </li> <li> <p> <code>Roman_Deities</code> </p> </li> <li> <p> <code>Scottish_Islands</code> </p> </li> <li> <p> <code>US_Cities</code> </p> </li> <li> <p> <code>Wild_Cats</code> </p> </li> </ul> <p>To obtain a generated host name, call <code>GetHostNameSuggestion</code>, which returns a host name based on the current theme.</p>
-- @param _UseCustomCookbooks [Boolean] <p>Whether to use custom cookbooks.</p>
-- @param _DefaultSshKeyName [String] <p>A default Amazon EC2 key pair name. The default value is none. If you specify a key pair name, AWS OpsWorks installs the public key on the instance and you can use the private key with an SSH client to log in to the instance. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-ssh.html"> Using SSH to Communicate with an Instance</a> and <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/security-ssh-access.html"> Managing SSH Access</a>. You can override this setting by specifying a different key pair, or no key pair, when you <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-add.html"> create an instance</a>. </p>
-- @param _CloneAppIds [Strings] <p>A list of source stack app IDs to be included in the cloned stack.</p>
-- @param _ChefConfiguration [ChefConfiguration] <p>A <code>ChefConfiguration</code> object that specifies whether to enable Berkshelf and the Berkshelf version on Chef 11.10 stacks. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-creating.html">Create a New Stack</a>.</p>
-- @param _UseOpsworksSecurityGroups [Boolean] <p>Whether to associate the AWS OpsWorks Stacks built-in security groups with the stack's layers.</p> <p>AWS OpsWorks Stacks provides a standard set of built-in security groups, one for each layer, which are associated with layers by default. With <code>UseOpsworksSecurityGroups</code> you can instead provide your own custom security groups. <code>UseOpsworksSecurityGroups</code> has the following settings: </p> <ul> <li> <p>True - AWS OpsWorks Stacks automatically associates the appropriate built-in security group with each layer (default setting). You can associate additional security groups with a layer after you create it but you cannot delete the built-in security group.</p> </li> <li> <p>False - AWS OpsWorks Stacks does not associate built-in security groups with layers. You must create appropriate Amazon Elastic Compute Cloud (Amazon EC2) security groups and associate a security group with each layer that you create. However, you can still manually associate a built-in security group with a layer on creation; custom security groups are required only for those layers that need custom settings.</p> </li> </ul> <p>For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-creating.html">Create a New Stack</a>.</p>
-- @param _ServiceRoleArn [String] <p>The stack AWS Identity and Access Management (IAM) role, which allows AWS OpsWorks Stacks to work with AWS resources on your behalf. You must set this parameter to the Amazon Resource Name (ARN) for an existing IAM role. If you create a stack by using the AWS OpsWorks Stacks console, it creates the role for you. You can obtain an existing stack's IAM ARN programmatically by calling <a>DescribePermissions</a>. For more information about IAM ARNs, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">Using Identifiers</a>.</p> <note> <p>You must set this parameter to a valid service role ARN or the action will fail; there is no default value. You can specify the source stack's service role ARN, if you prefer, but you must do so explicitly.</p> </note>
-- @param _VpcId [String] <p>The ID of the VPC that the cloned stack is to be launched into. It must be in the specified region. All instances are launched into this VPC, and you cannot change the ID later.</p> <ul> <li> <p>If your account supports EC2 Classic, the default value is no VPC.</p> </li> <li> <p>If your account does not support EC2 Classic, the default value is the default VPC for the specified region.</p> </li> </ul> <p>If the VPC ID corresponds to a default VPC and you have specified either the <code>DefaultAvailabilityZone</code> or the <code>DefaultSubnetId</code> parameter only, AWS OpsWorks Stacks infers the value of the other parameter. If you specify neither parameter, AWS OpsWorks Stacks sets these parameters to the first valid Availability Zone for the specified region and the corresponding default VPC subnet ID, respectively. </p> <p>If you specify a nondefault VPC ID, note the following:</p> <ul> <li> <p>It must belong to a VPC in your account that is in the specified region.</p> </li> <li> <p>You must specify a value for <code>DefaultSubnetId</code>.</p> </li> </ul> <p>For more information on how to use AWS OpsWorks Stacks with a VPC, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-vpc.html">Running a Stack in a VPC</a>. For more information on default VPC and EC2 Classic, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-supported-platforms.html">Supported Platforms</a>. </p>
-- @param _ConfigurationManager [StackConfigurationManager] <p>The configuration manager. When you clone a stack we recommend that you use the configuration manager to specify the Chef version: 12, 11.10, or 11.4 for Linux stacks, or 12.2 for Windows stacks. The default value for Linux stacks is currently 12.</p>
-- @param _CustomCookbooksSource [Source] 
-- @param _AgentVersion [String] <p>The default AWS OpsWorks Stacks agent version. You have the following options:</p> <ul> <li> <p>Auto-update - Set this parameter to <code>LATEST</code>. AWS OpsWorks Stacks automatically installs new agent versions on the stack's instances as soon as they are available.</p> </li> <li> <p>Fixed version - Set this parameter to your preferred agent version. To update the agent version, you must edit the stack configuration and specify a new version. AWS OpsWorks Stacks then automatically installs that version on the stack's instances.</p> </li> </ul> <p>The default setting is <code>LATEST</code>. To specify an agent version, you must use the complete version number, not the abbreviated number shown on the console. For a list of available agent version numbers, call <a>DescribeAgentVersions</a>. AgentVersion cannot be set to Chef 12.2.</p> <note> <p>You can also specify an agent version when you create or update an instance, which overrides the stack's default setting.</p> </note>
-- @param _DefaultAvailabilityZone [String] <p>The cloned stack's default Availability Zone, which must be in the specified region. For more information, see <a href="http://docs.aws.amazon.com/general/latest/gr/rande.html">Regions and Endpoints</a>. If you also specify a value for <code>DefaultSubnetId</code>, the subnet must be in the same zone. For more information, see the <code>VpcId</code> parameter description. </p>
-- @param _ClonePermissions [Boolean] <p>Whether to clone the source stack's permissions.</p>
-- @param _Name [String] <p>The cloned stack name.</p>
-- @param _Region [String] <p>The cloned stack AWS region, such as "ap-northeast-2". For more information about AWS regions, see <a href="http://docs.aws.amazon.com/general/latest/gr/rande.html">Regions and Endpoints</a>.</p>
-- @param _SourceStackId [String] <p>The source stack ID.</p>
-- @param _DefaultInstanceProfileArn [String] <p>The Amazon Resource Name (ARN) of an IAM profile that is the default profile for all of the stack's EC2 instances. For more information about IAM ARNs, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">Using Identifiers</a>.</p>
-- @param _Attributes [StackAttributes] <p>A list of stack attributes and values as key/value pairs to be added to the cloned stack.</p>
-- @param _DefaultOs [String] <p>The stack's operating system, which must be set to one of the following.</p> <ul> <li> <p>A supported Linux operating system: An Amazon Linux version, such as <code>Amazon Linux 2017.03</code>, <code>Amazon Linux 2016.09</code>, <code>Amazon Linux 2016.03</code>, <code>Amazon Linux 2015.09</code>, or <code>Amazon Linux 2015.03</code>.</p> </li> <li> <p>A supported Ubuntu operating system, such as <code>Ubuntu 16.04 LTS</code>, <code>Ubuntu 14.04 LTS</code>, or <code>Ubuntu 12.04 LTS</code>.</p> </li> <li> <p> <code>CentOS Linux 7</code> </p> </li> <li> <p> <code>Red Hat Enterprise Linux 7</code> </p> </li> <li> <p> <code>Microsoft Windows Server 2012 R2 Base</code>, <code>Microsoft Windows Server 2012 R2 with SQL Server Express</code>, <code>Microsoft Windows Server 2012 R2 with SQL Server Standard</code>, or <code>Microsoft Windows Server 2012 R2 with SQL Server Web</code>.</p> </li> <li> <p>A custom AMI: <code>Custom</code>. You specify the custom AMI you want to use when you create instances. For more information on how to use custom AMIs with OpsWorks, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-custom-ami.html">Using Custom AMIs</a>.</p> </li> </ul> <p>The default option is the parent stack's operating system. For more information on the supported operating systems, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-os.html">AWS OpsWorks Stacks Operating Systems</a>.</p> <note> <p>You can specify a different Linux operating system for the cloned stack, but you cannot change from Linux to Windows or Windows to Linux.</p> </note>
-- @param _DefaultSubnetId [String] <p>The stack's default VPC subnet ID. This parameter is required if you specify a value for the <code>VpcId</code> parameter. All instances are launched into this subnet unless you specify otherwise when you create the instance. If you also specify a value for <code>DefaultAvailabilityZone</code>, the subnet must be in that zone. For information on default values and when this parameter is required, see the <code>VpcId</code> parameter description. </p>
-- @param _DefaultRootDeviceType [RootDeviceType] <p>The default root device type. This value is used by default for all instances in the cloned stack, but you can override it when you create an instance. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ComponentsAMIs.html#storage-for-the-root-device">Storage for the Root Device</a>.</p>
-- @param _CustomJson [String] <p>A string that contains user-defined, custom JSON. It is used to override the corresponding default stack configuration JSON values. The string should be in the following format:</p> <p> <code>"{\"key1\": \"value1\", \"key2\": \"value2\",...}"</code> </p> <p>For more information on custom JSON, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-json.html">Use Custom JSON to Modify the Stack Configuration Attributes</a> </p>
-- Required parameter: SourceStackId
-- Required parameter: ServiceRoleArn
function M.CloneStackRequest(_HostnameTheme, _UseCustomCookbooks, _DefaultSshKeyName, _CloneAppIds, _ChefConfiguration, _UseOpsworksSecurityGroups, _ServiceRoleArn, _VpcId, _ConfigurationManager, _CustomCookbooksSource, _AgentVersion, _DefaultAvailabilityZone, _ClonePermissions, _Name, _Region, _SourceStackId, _DefaultInstanceProfileArn, _Attributes, _DefaultOs, _DefaultSubnetId, _DefaultRootDeviceType, _CustomJson, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CloneStackRequest")
	local t = { 
		["HostnameTheme"] = _HostnameTheme,
		["UseCustomCookbooks"] = _UseCustomCookbooks,
		["DefaultSshKeyName"] = _DefaultSshKeyName,
		["CloneAppIds"] = _CloneAppIds,
		["ChefConfiguration"] = _ChefConfiguration,
		["UseOpsworksSecurityGroups"] = _UseOpsworksSecurityGroups,
		["ServiceRoleArn"] = _ServiceRoleArn,
		["VpcId"] = _VpcId,
		["ConfigurationManager"] = _ConfigurationManager,
		["CustomCookbooksSource"] = _CustomCookbooksSource,
		["AgentVersion"] = _AgentVersion,
		["DefaultAvailabilityZone"] = _DefaultAvailabilityZone,
		["ClonePermissions"] = _ClonePermissions,
		["Name"] = _Name,
		["Region"] = _Region,
		["SourceStackId"] = _SourceStackId,
		["DefaultInstanceProfileArn"] = _DefaultInstanceProfileArn,
		["Attributes"] = _Attributes,
		["DefaultOs"] = _DefaultOs,
		["DefaultSubnetId"] = _DefaultSubnetId,
		["DefaultRootDeviceType"] = _DefaultRootDeviceType,
		["CustomJson"] = _CustomJson,
	}
	asserts.AssertCloneStackRequest(t)
	return t
end

keys.CreateDeploymentRequest = { ["StackId"] = true, ["Comment"] = true, ["CustomJson"] = true, ["LayerIds"] = true, ["Command"] = true, ["AppId"] = true, ["InstanceIds"] = true, nil }

function asserts.AssertCreateDeploymentRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDeploymentRequest to be of type 'table'")
	assert(struct["StackId"], "Expected key StackId to exist in table")
	assert(struct["Command"], "Expected key Command to exist in table")
	if struct["StackId"] then asserts.AssertString(struct["StackId"]) end
	if struct["Comment"] then asserts.AssertString(struct["Comment"]) end
	if struct["CustomJson"] then asserts.AssertString(struct["CustomJson"]) end
	if struct["LayerIds"] then asserts.AssertStrings(struct["LayerIds"]) end
	if struct["Command"] then asserts.AssertDeploymentCommand(struct["Command"]) end
	if struct["AppId"] then asserts.AssertString(struct["AppId"]) end
	if struct["InstanceIds"] then asserts.AssertStrings(struct["InstanceIds"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateDeploymentRequest[k], "CreateDeploymentRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDeploymentRequest
--  
-- @param _StackId [String] <p>The stack ID.</p>
-- @param _Comment [String] <p>A user-defined comment.</p>
-- @param _CustomJson [String] <p>A string that contains user-defined, custom JSON. It is used to override the corresponding default stack configuration JSON values. The string should be in the following format:</p> <p> <code>"{\"key1\": \"value1\", \"key2\": \"value2\",...}"</code> </p> <p>For more information on custom JSON, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-json.html">Use Custom JSON to Modify the Stack Configuration Attributes</a>.</p>
-- @param _LayerIds [Strings] <p>The layer IDs for the deployment targets.</p>
-- @param _Command [DeploymentCommand] <p>A <code>DeploymentCommand</code> object that specifies the deployment command and any associated arguments.</p>
-- @param _AppId [String] <p>The app ID. This parameter is required for app deployments, but not for other deployment commands.</p>
-- @param _InstanceIds [Strings] <p>The instance IDs for the deployment targets.</p>
-- Required parameter: StackId
-- Required parameter: Command
function M.CreateDeploymentRequest(_StackId, _Comment, _CustomJson, _LayerIds, _Command, _AppId, _InstanceIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDeploymentRequest")
	local t = { 
		["StackId"] = _StackId,
		["Comment"] = _Comment,
		["CustomJson"] = _CustomJson,
		["LayerIds"] = _LayerIds,
		["Command"] = _Command,
		["AppId"] = _AppId,
		["InstanceIds"] = _InstanceIds,
	}
	asserts.AssertCreateDeploymentRequest(t)
	return t
end

keys.DescribeStacksRequest = { ["StackIds"] = true, nil }

function asserts.AssertDescribeStacksRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeStacksRequest to be of type 'table'")
	if struct["StackIds"] then asserts.AssertStrings(struct["StackIds"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeStacksRequest[k], "DescribeStacksRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeStacksRequest
--  
-- @param _StackIds [Strings] <p>An array of stack IDs that specify the stacks to be described. If you omit this parameter, <code>DescribeStacks</code> returns a description of every stack.</p>
function M.DescribeStacksRequest(_StackIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeStacksRequest")
	local t = { 
		["StackIds"] = _StackIds,
	}
	asserts.AssertDescribeStacksRequest(t)
	return t
end

keys.Source = { ["Username"] = true, ["SshKey"] = true, ["Url"] = true, ["Password"] = true, ["Type"] = true, ["Revision"] = true, nil }

function asserts.AssertSource(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Source to be of type 'table'")
	if struct["Username"] then asserts.AssertString(struct["Username"]) end
	if struct["SshKey"] then asserts.AssertString(struct["SshKey"]) end
	if struct["Url"] then asserts.AssertString(struct["Url"]) end
	if struct["Password"] then asserts.AssertString(struct["Password"]) end
	if struct["Type"] then asserts.AssertSourceType(struct["Type"]) end
	if struct["Revision"] then asserts.AssertString(struct["Revision"]) end
	for k,_ in pairs(struct) do
		assert(keys.Source[k], "Source contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Source
-- <p>Contains the information required to retrieve an app or cookbook from a repository. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html">Creating Apps</a> or <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook.html">Custom Recipes and Cookbooks</a>.</p>
-- @param _Username [String] <p>This parameter depends on the repository type.</p> <ul> <li> <p>For Amazon S3 bundles, set <code>Username</code> to the appropriate IAM access key ID.</p> </li> <li> <p>For HTTP bundles, Git repositories, and Subversion repositories, set <code>Username</code> to the user name.</p> </li> </ul>
-- @param _SshKey [String] <p>In requests, the repository's SSH key.</p> <p>In responses, AWS OpsWorks Stacks returns <code>*****FILTERED*****</code> instead of the actual value.</p>
-- @param _Url [String] <p>The source URL. The following is an example of an Amazon S3 source URL: <code>https://s3.amazonaws.com/opsworks-demo-bucket/opsworks_cookbook_demo.tar.gz</code>.</p>
-- @param _Password [String] <p>When included in a request, the parameter depends on the repository type.</p> <ul> <li> <p>For Amazon S3 bundles, set <code>Password</code> to the appropriate IAM secret access key.</p> </li> <li> <p>For HTTP bundles and Subversion repositories, set <code>Password</code> to the password.</p> </li> </ul> <p>For more information on how to safely handle IAM credentials, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws-access-keys-best-practices.html">http://docs.aws.amazon.com/general/latest/gr/aws-access-keys-best-practices.html</a>.</p> <p>In responses, AWS OpsWorks Stacks returns <code>*****FILTERED*****</code> instead of the actual value.</p>
-- @param _Type [SourceType] <p>The repository type.</p>
-- @param _Revision [String] <p>The application's version. AWS OpsWorks Stacks enables you to easily deploy new versions of an application. One of the simplest approaches is to have branches or revisions in your repository that represent different versions that can potentially be deployed.</p>
function M.Source(_Username, _SshKey, _Url, _Password, _Type, _Revision, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Source")
	local t = { 
		["Username"] = _Username,
		["SshKey"] = _SshKey,
		["Url"] = _Url,
		["Password"] = _Password,
		["Type"] = _Type,
		["Revision"] = _Revision,
	}
	asserts.AssertSource(t)
	return t
end

keys.DescribeInstancesResult = { ["Instances"] = true, nil }

function asserts.AssertDescribeInstancesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeInstancesResult to be of type 'table'")
	if struct["Instances"] then asserts.AssertInstances(struct["Instances"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeInstancesResult[k], "DescribeInstancesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeInstancesResult
-- <p>Contains the response to a <code>DescribeInstances</code> request.</p>
-- @param _Instances [Instances] <p>An array of <code>Instance</code> objects that describe the instances.</p>
function M.DescribeInstancesResult(_Instances, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeInstancesResult")
	local t = { 
		["Instances"] = _Instances,
	}
	asserts.AssertDescribeInstancesResult(t)
	return t
end

keys.DescribeElasticIpsResult = { ["ElasticIps"] = true, nil }

function asserts.AssertDescribeElasticIpsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeElasticIpsResult to be of type 'table'")
	if struct["ElasticIps"] then asserts.AssertElasticIps(struct["ElasticIps"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeElasticIpsResult[k], "DescribeElasticIpsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeElasticIpsResult
-- <p>Contains the response to a <code>DescribeElasticIps</code> request.</p>
-- @param _ElasticIps [ElasticIps] <p>An <code>ElasticIps</code> object that describes the specified Elastic IP addresses.</p>
function M.DescribeElasticIpsResult(_ElasticIps, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeElasticIpsResult")
	local t = { 
		["ElasticIps"] = _ElasticIps,
	}
	asserts.AssertDescribeElasticIpsResult(t)
	return t
end

keys.UpdateElasticIpRequest = { ["Name"] = true, ["ElasticIp"] = true, nil }

function asserts.AssertUpdateElasticIpRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateElasticIpRequest to be of type 'table'")
	assert(struct["ElasticIp"], "Expected key ElasticIp to exist in table")
	if struct["Name"] then asserts.AssertString(struct["Name"]) end
	if struct["ElasticIp"] then asserts.AssertString(struct["ElasticIp"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateElasticIpRequest[k], "UpdateElasticIpRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateElasticIpRequest
--  
-- @param _Name [String] <p>The new name.</p>
-- @param _ElasticIp [String] <p>The address.</p>
-- Required parameter: ElasticIp
function M.UpdateElasticIpRequest(_Name, _ElasticIp, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateElasticIpRequest")
	local t = { 
		["Name"] = _Name,
		["ElasticIp"] = _ElasticIp,
	}
	asserts.AssertUpdateElasticIpRequest(t)
	return t
end

keys.Permission = { ["StackId"] = true, ["IamUserArn"] = true, ["Level"] = true, ["AllowSudo"] = true, ["AllowSsh"] = true, nil }

function asserts.AssertPermission(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Permission to be of type 'table'")
	if struct["StackId"] then asserts.AssertString(struct["StackId"]) end
	if struct["IamUserArn"] then asserts.AssertString(struct["IamUserArn"]) end
	if struct["Level"] then asserts.AssertString(struct["Level"]) end
	if struct["AllowSudo"] then asserts.AssertBoolean(struct["AllowSudo"]) end
	if struct["AllowSsh"] then asserts.AssertBoolean(struct["AllowSsh"]) end
	for k,_ in pairs(struct) do
		assert(keys.Permission[k], "Permission contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Permission
-- <p>Describes stack or user permissions.</p>
-- @param _StackId [String] <p>A stack ID.</p>
-- @param _IamUserArn [String] <p>The Amazon Resource Name (ARN) for an AWS Identity and Access Management (IAM) role. For more information about IAM ARNs, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">Using Identifiers</a>.</p>
-- @param _Level [String] <p>The user's permission level, which must be the following:</p> <ul> <li> <p> <code>deny</code> </p> </li> <li> <p> <code>show</code> </p> </li> <li> <p> <code>deploy</code> </p> </li> <li> <p> <code>manage</code> </p> </li> <li> <p> <code>iam_only</code> </p> </li> </ul> <p>For more information on the permissions associated with these levels, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a> </p>
-- @param _AllowSudo [Boolean] <p>Whether the user can use <b>sudo</b>.</p>
-- @param _AllowSsh [Boolean] <p>Whether the user can use SSH.</p>
function M.Permission(_StackId, _IamUserArn, _Level, _AllowSudo, _AllowSsh, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Permission")
	local t = { 
		["StackId"] = _StackId,
		["IamUserArn"] = _IamUserArn,
		["Level"] = _Level,
		["AllowSudo"] = _AllowSudo,
		["AllowSsh"] = _AllowSsh,
	}
	asserts.AssertPermission(t)
	return t
end

keys.AssociateElasticIpRequest = { ["InstanceId"] = true, ["ElasticIp"] = true, nil }

function asserts.AssertAssociateElasticIpRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssociateElasticIpRequest to be of type 'table'")
	assert(struct["ElasticIp"], "Expected key ElasticIp to exist in table")
	if struct["InstanceId"] then asserts.AssertString(struct["InstanceId"]) end
	if struct["ElasticIp"] then asserts.AssertString(struct["ElasticIp"]) end
	for k,_ in pairs(struct) do
		assert(keys.AssociateElasticIpRequest[k], "AssociateElasticIpRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssociateElasticIpRequest
--  
-- @param _InstanceId [String] <p>The instance ID.</p>
-- @param _ElasticIp [String] <p>The Elastic IP address.</p>
-- Required parameter: ElasticIp
function M.AssociateElasticIpRequest(_InstanceId, _ElasticIp, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AssociateElasticIpRequest")
	local t = { 
		["InstanceId"] = _InstanceId,
		["ElasticIp"] = _ElasticIp,
	}
	asserts.AssertAssociateElasticIpRequest(t)
	return t
end

keys.DetachElasticLoadBalancerRequest = { ["ElasticLoadBalancerName"] = true, ["LayerId"] = true, nil }

function asserts.AssertDetachElasticLoadBalancerRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DetachElasticLoadBalancerRequest to be of type 'table'")
	assert(struct["ElasticLoadBalancerName"], "Expected key ElasticLoadBalancerName to exist in table")
	assert(struct["LayerId"], "Expected key LayerId to exist in table")
	if struct["ElasticLoadBalancerName"] then asserts.AssertString(struct["ElasticLoadBalancerName"]) end
	if struct["LayerId"] then asserts.AssertString(struct["LayerId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DetachElasticLoadBalancerRequest[k], "DetachElasticLoadBalancerRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DetachElasticLoadBalancerRequest
--  
-- @param _ElasticLoadBalancerName [String] <p>The Elastic Load Balancing instance's name.</p>
-- @param _LayerId [String] <p>The ID of the layer that the Elastic Load Balancing instance is attached to.</p>
-- Required parameter: ElasticLoadBalancerName
-- Required parameter: LayerId
function M.DetachElasticLoadBalancerRequest(_ElasticLoadBalancerName, _LayerId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DetachElasticLoadBalancerRequest")
	local t = { 
		["ElasticLoadBalancerName"] = _ElasticLoadBalancerName,
		["LayerId"] = _LayerId,
	}
	asserts.AssertDetachElasticLoadBalancerRequest(t)
	return t
end

keys.CreateUserProfileResult = { ["IamUserArn"] = true, nil }

function asserts.AssertCreateUserProfileResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateUserProfileResult to be of type 'table'")
	if struct["IamUserArn"] then asserts.AssertString(struct["IamUserArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateUserProfileResult[k], "CreateUserProfileResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateUserProfileResult
-- <p>Contains the response to a <code>CreateUserProfile</code> request.</p>
-- @param _IamUserArn [String] <p>The user's IAM ARN.</p>
function M.CreateUserProfileResult(_IamUserArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateUserProfileResult")
	local t = { 
		["IamUserArn"] = _IamUserArn,
	}
	asserts.AssertCreateUserProfileResult(t)
	return t
end

keys.SelfUserProfile = { ["IamUserArn"] = true, ["SshPublicKey"] = true, ["Name"] = true, ["SshUsername"] = true, nil }

function asserts.AssertSelfUserProfile(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SelfUserProfile to be of type 'table'")
	if struct["IamUserArn"] then asserts.AssertString(struct["IamUserArn"]) end
	if struct["SshPublicKey"] then asserts.AssertString(struct["SshPublicKey"]) end
	if struct["Name"] then asserts.AssertString(struct["Name"]) end
	if struct["SshUsername"] then asserts.AssertString(struct["SshUsername"]) end
	for k,_ in pairs(struct) do
		assert(keys.SelfUserProfile[k], "SelfUserProfile contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SelfUserProfile
-- <p>Describes a user's SSH information.</p>
-- @param _IamUserArn [String] <p>The user's IAM ARN.</p>
-- @param _SshPublicKey [String] <p>The user's SSH public key.</p>
-- @param _Name [String] <p>The user's name.</p>
-- @param _SshUsername [String] <p>The user's SSH user name.</p>
function M.SelfUserProfile(_IamUserArn, _SshPublicKey, _Name, _SshUsername, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SelfUserProfile")
	local t = { 
		["IamUserArn"] = _IamUserArn,
		["SshPublicKey"] = _SshPublicKey,
		["Name"] = _Name,
		["SshUsername"] = _SshUsername,
	}
	asserts.AssertSelfUserProfile(t)
	return t
end

keys.UpdateStackRequest = { ["StackId"] = true, ["ServiceRoleArn"] = true, ["DefaultRootDeviceType"] = true, ["Name"] = true, ["HostnameTheme"] = true, ["UseCustomCookbooks"] = true, ["CustomJson"] = true, ["DefaultAvailabilityZone"] = true, ["UseOpsworksSecurityGroups"] = true, ["CustomCookbooksSource"] = true, ["ConfigurationManager"] = true, ["ChefConfiguration"] = true, ["DefaultSubnetId"] = true, ["DefaultSshKeyName"] = true, ["DefaultInstanceProfileArn"] = true, ["Attributes"] = true, ["DefaultOs"] = true, ["AgentVersion"] = true, nil }

function asserts.AssertUpdateStackRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateStackRequest to be of type 'table'")
	assert(struct["StackId"], "Expected key StackId to exist in table")
	if struct["StackId"] then asserts.AssertString(struct["StackId"]) end
	if struct["ServiceRoleArn"] then asserts.AssertString(struct["ServiceRoleArn"]) end
	if struct["DefaultRootDeviceType"] then asserts.AssertRootDeviceType(struct["DefaultRootDeviceType"]) end
	if struct["Name"] then asserts.AssertString(struct["Name"]) end
	if struct["HostnameTheme"] then asserts.AssertString(struct["HostnameTheme"]) end
	if struct["UseCustomCookbooks"] then asserts.AssertBoolean(struct["UseCustomCookbooks"]) end
	if struct["CustomJson"] then asserts.AssertString(struct["CustomJson"]) end
	if struct["DefaultAvailabilityZone"] then asserts.AssertString(struct["DefaultAvailabilityZone"]) end
	if struct["UseOpsworksSecurityGroups"] then asserts.AssertBoolean(struct["UseOpsworksSecurityGroups"]) end
	if struct["CustomCookbooksSource"] then asserts.AssertSource(struct["CustomCookbooksSource"]) end
	if struct["ConfigurationManager"] then asserts.AssertStackConfigurationManager(struct["ConfigurationManager"]) end
	if struct["ChefConfiguration"] then asserts.AssertChefConfiguration(struct["ChefConfiguration"]) end
	if struct["DefaultSubnetId"] then asserts.AssertString(struct["DefaultSubnetId"]) end
	if struct["DefaultSshKeyName"] then asserts.AssertString(struct["DefaultSshKeyName"]) end
	if struct["DefaultInstanceProfileArn"] then asserts.AssertString(struct["DefaultInstanceProfileArn"]) end
	if struct["Attributes"] then asserts.AssertStackAttributes(struct["Attributes"]) end
	if struct["DefaultOs"] then asserts.AssertString(struct["DefaultOs"]) end
	if struct["AgentVersion"] then asserts.AssertString(struct["AgentVersion"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateStackRequest[k], "UpdateStackRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateStackRequest
--  
-- @param _StackId [String] <p>The stack ID.</p>
-- @param _ServiceRoleArn [String] <p>Do not use this parameter. You cannot update a stack's service role.</p>
-- @param _DefaultRootDeviceType [RootDeviceType] <p>The default root device type. This value is used by default for all instances in the stack, but you can override it when you create an instance. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ComponentsAMIs.html#storage-for-the-root-device">Storage for the Root Device</a>.</p>
-- @param _Name [String] <p>The stack's new name.</p>
-- @param _HostnameTheme [String] <p>The stack's new host name theme, with spaces replaced by underscores. The theme is used to generate host names for the stack's instances. By default, <code>HostnameTheme</code> is set to <code>Layer_Dependent</code>, which creates host names by appending integers to the layer's short name. The other themes are:</p> <ul> <li> <p> <code>Baked_Goods</code> </p> </li> <li> <p> <code>Clouds</code> </p> </li> <li> <p> <code>Europe_Cities</code> </p> </li> <li> <p> <code>Fruits</code> </p> </li> <li> <p> <code>Greek_Deities</code> </p> </li> <li> <p> <code>Legendary_creatures_from_Japan</code> </p> </li> <li> <p> <code>Planets_and_Moons</code> </p> </li> <li> <p> <code>Roman_Deities</code> </p> </li> <li> <p> <code>Scottish_Islands</code> </p> </li> <li> <p> <code>US_Cities</code> </p> </li> <li> <p> <code>Wild_Cats</code> </p> </li> </ul> <p>To obtain a generated host name, call <code>GetHostNameSuggestion</code>, which returns a host name based on the current theme.</p>
-- @param _UseCustomCookbooks [Boolean] <p>Whether the stack uses custom cookbooks.</p>
-- @param _CustomJson [String] <p>A string that contains user-defined, custom JSON. It can be used to override the corresponding default stack configuration JSON values or to pass data to recipes. The string should be in the following format:</p> <p> <code>"{\"key1\": \"value1\", \"key2\": \"value2\",...}"</code> </p> <p>For more information on custom JSON, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-json.html">Use Custom JSON to Modify the Stack Configuration Attributes</a>.</p>
-- @param _DefaultAvailabilityZone [String] <p>The stack's default Availability Zone, which must be in the stack's region. For more information, see <a href="http://docs.aws.amazon.com/general/latest/gr/rande.html">Regions and Endpoints</a>. If you also specify a value for <code>DefaultSubnetId</code>, the subnet must be in the same zone. For more information, see <a>CreateStack</a>. </p>
-- @param _UseOpsworksSecurityGroups [Boolean] <p>Whether to associate the AWS OpsWorks Stacks built-in security groups with the stack's layers.</p> <p>AWS OpsWorks Stacks provides a standard set of built-in security groups, one for each layer, which are associated with layers by default. <code>UseOpsworksSecurityGroups</code> allows you to provide your own custom security groups instead of using the built-in groups. <code>UseOpsworksSecurityGroups</code> has the following settings: </p> <ul> <li> <p>True - AWS OpsWorks Stacks automatically associates the appropriate built-in security group with each layer (default setting). You can associate additional security groups with a layer after you create it, but you cannot delete the built-in security group.</p> </li> <li> <p>False - AWS OpsWorks Stacks does not associate built-in security groups with layers. You must create appropriate EC2 security groups and associate a security group with each layer that you create. However, you can still manually associate a built-in security group with a layer on. Custom security groups are required only for those layers that need custom settings.</p> </li> </ul> <p>For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-creating.html">Create a New Stack</a>.</p>
-- @param _CustomCookbooksSource [Source] 
-- @param _ConfigurationManager [StackConfigurationManager] <p>The configuration manager. When you update a stack, we recommend that you use the configuration manager to specify the Chef version: 12, 11.10, or 11.4 for Linux stacks, or 12.2 for Windows stacks. The default value for Linux stacks is currently 11.4.</p>
-- @param _ChefConfiguration [ChefConfiguration] <p>A <code>ChefConfiguration</code> object that specifies whether to enable Berkshelf and the Berkshelf version on Chef 11.10 stacks. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-creating.html">Create a New Stack</a>.</p>
-- @param _DefaultSubnetId [String] <p>The stack's default VPC subnet ID. This parameter is required if you specify a value for the <code>VpcId</code> parameter. All instances are launched into this subnet unless you specify otherwise when you create the instance. If you also specify a value for <code>DefaultAvailabilityZone</code>, the subnet must be in that zone. For information on default values and when this parameter is required, see the <code>VpcId</code> parameter description. </p>
-- @param _DefaultSshKeyName [String] <p>A default Amazon EC2 key-pair name. The default value is <code>none</code>. If you specify a key-pair name, AWS OpsWorks Stacks installs the public key on the instance and you can use the private key with an SSH client to log in to the instance. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-ssh.html"> Using SSH to Communicate with an Instance</a> and <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/security-ssh-access.html"> Managing SSH Access</a>. You can override this setting by specifying a different key pair, or no key pair, when you <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-add.html"> create an instance</a>. </p>
-- @param _DefaultInstanceProfileArn [String] <p>The ARN of an IAM profile that is the default profile for all of the stack's EC2 instances. For more information about IAM ARNs, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">Using Identifiers</a>.</p>
-- @param _Attributes [StackAttributes] <p>One or more user-defined key-value pairs to be added to the stack attributes.</p>
-- @param _DefaultOs [String] <p>The stack's operating system, which must be set to one of the following:</p> <ul> <li> <p>A supported Linux operating system: An Amazon Linux version, such as <code>Amazon Linux 2017.03</code>, <code>Amazon Linux 2016.09</code>, <code>Amazon Linux 2016.03</code>, <code>Amazon Linux 2015.09</code>, or <code>Amazon Linux 2015.03</code>.</p> </li> <li> <p>A supported Ubuntu operating system, such as <code>Ubuntu 16.04 LTS</code>, <code>Ubuntu 14.04 LTS</code>, or <code>Ubuntu 12.04 LTS</code>.</p> </li> <li> <p> <code>CentOS Linux 7</code> </p> </li> <li> <p> <code>Red Hat Enterprise Linux 7</code> </p> </li> <li> <p>A supported Windows operating system, such as <code>Microsoft Windows Server 2012 R2 Base</code>, <code>Microsoft Windows Server 2012 R2 with SQL Server Express</code>, <code>Microsoft Windows Server 2012 R2 with SQL Server Standard</code>, or <code>Microsoft Windows Server 2012 R2 with SQL Server Web</code>.</p> </li> <li> <p>A custom AMI: <code>Custom</code>. You specify the custom AMI you want to use when you create instances. For more information on how to use custom AMIs with OpsWorks, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-custom-ami.html">Using Custom AMIs</a>.</p> </li> </ul> <p>The default option is the stack's current operating system. For more information on the supported operating systems, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-os.html">AWS OpsWorks Stacks Operating Systems</a>.</p>
-- @param _AgentVersion [String] <p>The default AWS OpsWorks Stacks agent version. You have the following options:</p> <ul> <li> <p>Auto-update - Set this parameter to <code>LATEST</code>. AWS OpsWorks Stacks automatically installs new agent versions on the stack's instances as soon as they are available.</p> </li> <li> <p>Fixed version - Set this parameter to your preferred agent version. To update the agent version, you must edit the stack configuration and specify a new version. AWS OpsWorks Stacks then automatically installs that version on the stack's instances.</p> </li> </ul> <p>The default setting is <code>LATEST</code>. To specify an agent version, you must use the complete version number, not the abbreviated number shown on the console. For a list of available agent version numbers, call <a>DescribeAgentVersions</a>. AgentVersion cannot be set to Chef 12.2.</p> <note> <p>You can also specify an agent version when you create or update an instance, which overrides the stack's default setting.</p> </note>
-- Required parameter: StackId
function M.UpdateStackRequest(_StackId, _ServiceRoleArn, _DefaultRootDeviceType, _Name, _HostnameTheme, _UseCustomCookbooks, _CustomJson, _DefaultAvailabilityZone, _UseOpsworksSecurityGroups, _CustomCookbooksSource, _ConfigurationManager, _ChefConfiguration, _DefaultSubnetId, _DefaultSshKeyName, _DefaultInstanceProfileArn, _Attributes, _DefaultOs, _AgentVersion, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateStackRequest")
	local t = { 
		["StackId"] = _StackId,
		["ServiceRoleArn"] = _ServiceRoleArn,
		["DefaultRootDeviceType"] = _DefaultRootDeviceType,
		["Name"] = _Name,
		["HostnameTheme"] = _HostnameTheme,
		["UseCustomCookbooks"] = _UseCustomCookbooks,
		["CustomJson"] = _CustomJson,
		["DefaultAvailabilityZone"] = _DefaultAvailabilityZone,
		["UseOpsworksSecurityGroups"] = _UseOpsworksSecurityGroups,
		["CustomCookbooksSource"] = _CustomCookbooksSource,
		["ConfigurationManager"] = _ConfigurationManager,
		["ChefConfiguration"] = _ChefConfiguration,
		["DefaultSubnetId"] = _DefaultSubnetId,
		["DefaultSshKeyName"] = _DefaultSshKeyName,
		["DefaultInstanceProfileArn"] = _DefaultInstanceProfileArn,
		["Attributes"] = _Attributes,
		["DefaultOs"] = _DefaultOs,
		["AgentVersion"] = _AgentVersion,
	}
	asserts.AssertUpdateStackRequest(t)
	return t
end

keys.AgentVersion = { ["Version"] = true, ["ConfigurationManager"] = true, nil }

function asserts.AssertAgentVersion(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AgentVersion to be of type 'table'")
	if struct["Version"] then asserts.AssertString(struct["Version"]) end
	if struct["ConfigurationManager"] then asserts.AssertStackConfigurationManager(struct["ConfigurationManager"]) end
	for k,_ in pairs(struct) do
		assert(keys.AgentVersion[k], "AgentVersion contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AgentVersion
-- <p>Describes an agent version.</p>
-- @param _Version [String] <p>The agent version.</p>
-- @param _ConfigurationManager [StackConfigurationManager] <p>The configuration manager.</p>
function M.AgentVersion(_Version, _ConfigurationManager, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AgentVersion")
	local t = { 
		["Version"] = _Version,
		["ConfigurationManager"] = _ConfigurationManager,
	}
	asserts.AssertAgentVersion(t)
	return t
end

keys.CloneStackResult = { ["StackId"] = true, nil }

function asserts.AssertCloneStackResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CloneStackResult to be of type 'table'")
	if struct["StackId"] then asserts.AssertString(struct["StackId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CloneStackResult[k], "CloneStackResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CloneStackResult
-- <p>Contains the response to a <code>CloneStack</code> request.</p>
-- @param _StackId [String] <p>The cloned stack ID.</p>
function M.CloneStackResult(_StackId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CloneStackResult")
	local t = { 
		["StackId"] = _StackId,
	}
	asserts.AssertCloneStackResult(t)
	return t
end

keys.StopStackRequest = { ["StackId"] = true, nil }

function asserts.AssertStopStackRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopStackRequest to be of type 'table'")
	assert(struct["StackId"], "Expected key StackId to exist in table")
	if struct["StackId"] then asserts.AssertString(struct["StackId"]) end
	for k,_ in pairs(struct) do
		assert(keys.StopStackRequest[k], "StopStackRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopStackRequest
--  
-- @param _StackId [String] <p>The stack ID.</p>
-- Required parameter: StackId
function M.StopStackRequest(_StackId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StopStackRequest")
	local t = { 
		["StackId"] = _StackId,
	}
	asserts.AssertStopStackRequest(t)
	return t
end

keys.GetHostnameSuggestionRequest = { ["LayerId"] = true, nil }

function asserts.AssertGetHostnameSuggestionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetHostnameSuggestionRequest to be of type 'table'")
	assert(struct["LayerId"], "Expected key LayerId to exist in table")
	if struct["LayerId"] then asserts.AssertString(struct["LayerId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetHostnameSuggestionRequest[k], "GetHostnameSuggestionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetHostnameSuggestionRequest
--  
-- @param _LayerId [String] <p>The layer ID.</p>
-- Required parameter: LayerId
function M.GetHostnameSuggestionRequest(_LayerId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetHostnameSuggestionRequest")
	local t = { 
		["LayerId"] = _LayerId,
	}
	asserts.AssertGetHostnameSuggestionRequest(t)
	return t
end

keys.DescribeStackProvisioningParametersRequest = { ["StackId"] = true, nil }

function asserts.AssertDescribeStackProvisioningParametersRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeStackProvisioningParametersRequest to be of type 'table'")
	assert(struct["StackId"], "Expected key StackId to exist in table")
	if struct["StackId"] then asserts.AssertString(struct["StackId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeStackProvisioningParametersRequest[k], "DescribeStackProvisioningParametersRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeStackProvisioningParametersRequest
--  
-- @param _StackId [String] <p>The stack ID</p>
-- Required parameter: StackId
function M.DescribeStackProvisioningParametersRequest(_StackId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeStackProvisioningParametersRequest")
	local t = { 
		["StackId"] = _StackId,
	}
	asserts.AssertDescribeStackProvisioningParametersRequest(t)
	return t
end

keys.UpdateUserProfileRequest = { ["IamUserArn"] = true, ["SshPublicKey"] = true, ["AllowSelfManagement"] = true, ["SshUsername"] = true, nil }

function asserts.AssertUpdateUserProfileRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateUserProfileRequest to be of type 'table'")
	assert(struct["IamUserArn"], "Expected key IamUserArn to exist in table")
	if struct["IamUserArn"] then asserts.AssertString(struct["IamUserArn"]) end
	if struct["SshPublicKey"] then asserts.AssertString(struct["SshPublicKey"]) end
	if struct["AllowSelfManagement"] then asserts.AssertBoolean(struct["AllowSelfManagement"]) end
	if struct["SshUsername"] then asserts.AssertString(struct["SshUsername"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateUserProfileRequest[k], "UpdateUserProfileRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateUserProfileRequest
--  
-- @param _IamUserArn [String] <p>The user IAM ARN. This can also be a federated user's ARN.</p>
-- @param _SshPublicKey [String] <p>The user's new SSH public key.</p>
-- @param _AllowSelfManagement [Boolean] <p>Whether users can specify their own SSH public key through the My Settings page. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/security-settingsshkey.html">Managing User Permissions</a>.</p>
-- @param _SshUsername [String] <p>The user's SSH user name. The allowable characters are [a-z], [A-Z], [0-9], '-', and '_'. If the specified name includes other punctuation marks, AWS OpsWorks Stacks removes them. For example, <code>my.name</code> will be changed to <code>myname</code>. If you do not specify an SSH user name, AWS OpsWorks Stacks generates one from the IAM user name. </p>
-- Required parameter: IamUserArn
function M.UpdateUserProfileRequest(_IamUserArn, _SshPublicKey, _AllowSelfManagement, _SshUsername, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateUserProfileRequest")
	local t = { 
		["IamUserArn"] = _IamUserArn,
		["SshPublicKey"] = _SshPublicKey,
		["AllowSelfManagement"] = _AllowSelfManagement,
		["SshUsername"] = _SshUsername,
	}
	asserts.AssertUpdateUserProfileRequest(t)
	return t
end

keys.RegisterRdsDbInstanceRequest = { ["StackId"] = true, ["DbUser"] = true, ["RdsDbInstanceArn"] = true, ["DbPassword"] = true, nil }

function asserts.AssertRegisterRdsDbInstanceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RegisterRdsDbInstanceRequest to be of type 'table'")
	assert(struct["StackId"], "Expected key StackId to exist in table")
	assert(struct["RdsDbInstanceArn"], "Expected key RdsDbInstanceArn to exist in table")
	assert(struct["DbUser"], "Expected key DbUser to exist in table")
	assert(struct["DbPassword"], "Expected key DbPassword to exist in table")
	if struct["StackId"] then asserts.AssertString(struct["StackId"]) end
	if struct["DbUser"] then asserts.AssertString(struct["DbUser"]) end
	if struct["RdsDbInstanceArn"] then asserts.AssertString(struct["RdsDbInstanceArn"]) end
	if struct["DbPassword"] then asserts.AssertString(struct["DbPassword"]) end
	for k,_ in pairs(struct) do
		assert(keys.RegisterRdsDbInstanceRequest[k], "RegisterRdsDbInstanceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RegisterRdsDbInstanceRequest
--  
-- @param _StackId [String] <p>The stack ID.</p>
-- @param _DbUser [String] <p>The database's master user name.</p>
-- @param _RdsDbInstanceArn [String] <p>The Amazon RDS instance's ARN.</p>
-- @param _DbPassword [String] <p>The database password.</p>
-- Required parameter: StackId
-- Required parameter: RdsDbInstanceArn
-- Required parameter: DbUser
-- Required parameter: DbPassword
function M.RegisterRdsDbInstanceRequest(_StackId, _DbUser, _RdsDbInstanceArn, _DbPassword, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RegisterRdsDbInstanceRequest")
	local t = { 
		["StackId"] = _StackId,
		["DbUser"] = _DbUser,
		["RdsDbInstanceArn"] = _RdsDbInstanceArn,
		["DbPassword"] = _DbPassword,
	}
	asserts.AssertRegisterRdsDbInstanceRequest(t)
	return t
end

keys.DescribeLayersRequest = { ["StackId"] = true, ["LayerIds"] = true, nil }

function asserts.AssertDescribeLayersRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeLayersRequest to be of type 'table'")
	if struct["StackId"] then asserts.AssertString(struct["StackId"]) end
	if struct["LayerIds"] then asserts.AssertStrings(struct["LayerIds"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeLayersRequest[k], "DescribeLayersRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeLayersRequest
--  
-- @param _StackId [String] <p>The stack ID.</p>
-- @param _LayerIds [Strings] <p>An array of layer IDs that specify the layers to be described. If you omit this parameter, <code>DescribeLayers</code> returns a description of every layer in the specified stack.</p>
function M.DescribeLayersRequest(_StackId, _LayerIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeLayersRequest")
	local t = { 
		["StackId"] = _StackId,
		["LayerIds"] = _LayerIds,
	}
	asserts.AssertDescribeLayersRequest(t)
	return t
end

keys.Command = { ["Status"] = true, ["CompletedAt"] = true, ["InstanceId"] = true, ["DeploymentId"] = true, ["AcknowledgedAt"] = true, ["LogUrl"] = true, ["Type"] = true, ["CommandId"] = true, ["CreatedAt"] = true, ["ExitCode"] = true, nil }

function asserts.AssertCommand(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Command to be of type 'table'")
	if struct["Status"] then asserts.AssertString(struct["Status"]) end
	if struct["CompletedAt"] then asserts.AssertDateTime(struct["CompletedAt"]) end
	if struct["InstanceId"] then asserts.AssertString(struct["InstanceId"]) end
	if struct["DeploymentId"] then asserts.AssertString(struct["DeploymentId"]) end
	if struct["AcknowledgedAt"] then asserts.AssertDateTime(struct["AcknowledgedAt"]) end
	if struct["LogUrl"] then asserts.AssertString(struct["LogUrl"]) end
	if struct["Type"] then asserts.AssertString(struct["Type"]) end
	if struct["CommandId"] then asserts.AssertString(struct["CommandId"]) end
	if struct["CreatedAt"] then asserts.AssertDateTime(struct["CreatedAt"]) end
	if struct["ExitCode"] then asserts.AssertInteger(struct["ExitCode"]) end
	for k,_ in pairs(struct) do
		assert(keys.Command[k], "Command contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Command
-- <p>Describes a command.</p>
-- @param _Status [String] <p>The command status:</p> <ul> <li> <p>failed</p> </li> <li> <p>successful</p> </li> <li> <p>skipped</p> </li> <li> <p>pending</p> </li> </ul>
-- @param _CompletedAt [DateTime] <p>Date when the command completed.</p>
-- @param _InstanceId [String] <p>The ID of the instance where the command was executed.</p>
-- @param _DeploymentId [String] <p>The command deployment ID.</p>
-- @param _AcknowledgedAt [DateTime] <p>Date and time when the command was acknowledged.</p>
-- @param _LogUrl [String] <p>The URL of the command log.</p>
-- @param _Type [String] <p>The command type:</p> <ul> <li> <p> <code>configure</code> </p> </li> <li> <p> <code>deploy</code> </p> </li> <li> <p> <code>execute_recipes</code> </p> </li> <li> <p> <code>install_dependencies</code> </p> </li> <li> <p> <code>restart</code> </p> </li> <li> <p> <code>rollback</code> </p> </li> <li> <p> <code>setup</code> </p> </li> <li> <p> <code>start</code> </p> </li> <li> <p> <code>stop</code> </p> </li> <li> <p> <code>undeploy</code> </p> </li> <li> <p> <code>update_custom_cookbooks</code> </p> </li> <li> <p> <code>update_dependencies</code> </p> </li> </ul>
-- @param _CommandId [String] <p>The command ID.</p>
-- @param _CreatedAt [DateTime] <p>Date and time when the command was run.</p>
-- @param _ExitCode [Integer] <p>The command exit code.</p>
function M.Command(_Status, _CompletedAt, _InstanceId, _DeploymentId, _AcknowledgedAt, _LogUrl, _Type, _CommandId, _CreatedAt, _ExitCode, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Command")
	local t = { 
		["Status"] = _Status,
		["CompletedAt"] = _CompletedAt,
		["InstanceId"] = _InstanceId,
		["DeploymentId"] = _DeploymentId,
		["AcknowledgedAt"] = _AcknowledgedAt,
		["LogUrl"] = _LogUrl,
		["Type"] = _Type,
		["CommandId"] = _CommandId,
		["CreatedAt"] = _CreatedAt,
		["ExitCode"] = _ExitCode,
	}
	asserts.AssertCommand(t)
	return t
end

keys.DeleteStackRequest = { ["StackId"] = true, nil }

function asserts.AssertDeleteStackRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteStackRequest to be of type 'table'")
	assert(struct["StackId"], "Expected key StackId to exist in table")
	if struct["StackId"] then asserts.AssertString(struct["StackId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteStackRequest[k], "DeleteStackRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteStackRequest
--  
-- @param _StackId [String] <p>The stack ID.</p>
-- Required parameter: StackId
function M.DeleteStackRequest(_StackId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteStackRequest")
	local t = { 
		["StackId"] = _StackId,
	}
	asserts.AssertDeleteStackRequest(t)
	return t
end

keys.DescribeRdsDbInstancesRequest = { ["StackId"] = true, ["RdsDbInstanceArns"] = true, nil }

function asserts.AssertDescribeRdsDbInstancesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeRdsDbInstancesRequest to be of type 'table'")
	assert(struct["StackId"], "Expected key StackId to exist in table")
	if struct["StackId"] then asserts.AssertString(struct["StackId"]) end
	if struct["RdsDbInstanceArns"] then asserts.AssertStrings(struct["RdsDbInstanceArns"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeRdsDbInstancesRequest[k], "DescribeRdsDbInstancesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeRdsDbInstancesRequest
--  
-- @param _StackId [String] <p>The stack ID that the instances are registered with. The operation returns descriptions of all registered Amazon RDS instances.</p>
-- @param _RdsDbInstanceArns [Strings] <p>An array containing the ARNs of the instances to be described.</p>
-- Required parameter: StackId
function M.DescribeRdsDbInstancesRequest(_StackId, _RdsDbInstanceArns, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeRdsDbInstancesRequest")
	local t = { 
		["StackId"] = _StackId,
		["RdsDbInstanceArns"] = _RdsDbInstanceArns,
	}
	asserts.AssertDescribeRdsDbInstancesRequest(t)
	return t
end

keys.CreateStackResult = { ["StackId"] = true, nil }

function asserts.AssertCreateStackResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateStackResult to be of type 'table'")
	if struct["StackId"] then asserts.AssertString(struct["StackId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateStackResult[k], "CreateStackResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateStackResult
-- <p>Contains the response to a <code>CreateStack</code> request.</p>
-- @param _StackId [String] <p>The stack ID, which is an opaque string that you use to identify the stack when performing actions such as <code>DescribeStacks</code>.</p>
function M.CreateStackResult(_StackId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateStackResult")
	local t = { 
		["StackId"] = _StackId,
	}
	asserts.AssertCreateStackResult(t)
	return t
end

keys.CreateAppRequest = { ["StackId"] = true, ["Environment"] = true, ["AppSource"] = true, ["DataSources"] = true, ["EnableSsl"] = true, ["SslConfiguration"] = true, ["Attributes"] = true, ["Domains"] = true, ["Description"] = true, ["Shortname"] = true, ["Type"] = true, ["Name"] = true, nil }

function asserts.AssertCreateAppRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateAppRequest to be of type 'table'")
	assert(struct["StackId"], "Expected key StackId to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["Type"], "Expected key Type to exist in table")
	if struct["StackId"] then asserts.AssertString(struct["StackId"]) end
	if struct["Environment"] then asserts.AssertEnvironmentVariables(struct["Environment"]) end
	if struct["AppSource"] then asserts.AssertSource(struct["AppSource"]) end
	if struct["DataSources"] then asserts.AssertDataSources(struct["DataSources"]) end
	if struct["EnableSsl"] then asserts.AssertBoolean(struct["EnableSsl"]) end
	if struct["SslConfiguration"] then asserts.AssertSslConfiguration(struct["SslConfiguration"]) end
	if struct["Attributes"] then asserts.AssertAppAttributes(struct["Attributes"]) end
	if struct["Domains"] then asserts.AssertStrings(struct["Domains"]) end
	if struct["Description"] then asserts.AssertString(struct["Description"]) end
	if struct["Shortname"] then asserts.AssertString(struct["Shortname"]) end
	if struct["Type"] then asserts.AssertAppType(struct["Type"]) end
	if struct["Name"] then asserts.AssertString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateAppRequest[k], "CreateAppRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateAppRequest
--  
-- @param _StackId [String] <p>The stack ID.</p>
-- @param _Environment [EnvironmentVariables] <p>An array of <code>EnvironmentVariable</code> objects that specify environment variables to be associated with the app. After you deploy the app, these variables are defined on the associated app server instance. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html#workingapps-creating-environment"> Environment Variables</a>.</p> <p>There is no specific limit on the number of environment variables. However, the size of the associated data structure - which includes the variables' names, values, and protected flag values - cannot exceed 10 KB (10240 Bytes). This limit should accommodate most if not all use cases. Exceeding it will cause an exception with the message, "Environment: is too large (maximum is 10KB)."</p> <note> <p>This parameter is supported only by Chef 11.10 stacks. If you have specified one or more environment variables, you cannot modify the stack's Chef version.</p> </note>
-- @param _AppSource [Source] <p>A <code>Source</code> object that specifies the app repository.</p>
-- @param _DataSources [DataSources] <p>The app's data source.</p>
-- @param _EnableSsl [Boolean] <p>Whether to enable SSL for the app.</p>
-- @param _SslConfiguration [SslConfiguration] <p>An <code>SslConfiguration</code> object with the SSL configuration.</p>
-- @param _Attributes [AppAttributes] <p>One or more user-defined key/value pairs to be added to the stack attributes.</p>
-- @param _Domains [Strings] <p>The app virtual host settings, with multiple domains separated by commas. For example: <code>'www.example.com, example.com'</code> </p>
-- @param _Description [String] <p>A description of the app.</p>
-- @param _Shortname [String] <p>The app's short name.</p>
-- @param _Type [AppType] <p>The app type. Each supported type is associated with a particular layer. For example, PHP applications are associated with a PHP layer. AWS OpsWorks Stacks deploys an application to those instances that are members of the corresponding layer. If your app isn't one of the standard types, or you prefer to implement your own Deploy recipes, specify <code>other</code>.</p>
-- @param _Name [String] <p>The app name.</p>
-- Required parameter: StackId
-- Required parameter: Name
-- Required parameter: Type
function M.CreateAppRequest(_StackId, _Environment, _AppSource, _DataSources, _EnableSsl, _SslConfiguration, _Attributes, _Domains, _Description, _Shortname, _Type, _Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateAppRequest")
	local t = { 
		["StackId"] = _StackId,
		["Environment"] = _Environment,
		["AppSource"] = _AppSource,
		["DataSources"] = _DataSources,
		["EnableSsl"] = _EnableSsl,
		["SslConfiguration"] = _SslConfiguration,
		["Attributes"] = _Attributes,
		["Domains"] = _Domains,
		["Description"] = _Description,
		["Shortname"] = _Shortname,
		["Type"] = _Type,
		["Name"] = _Name,
	}
	asserts.AssertCreateAppRequest(t)
	return t
end

keys.App = { ["StackId"] = true, ["Environment"] = true, ["AppSource"] = true, ["Description"] = true, ["EnableSsl"] = true, ["SslConfiguration"] = true, ["Name"] = true, ["AppId"] = true, ["Domains"] = true, ["Attributes"] = true, ["Shortname"] = true, ["Type"] = true, ["CreatedAt"] = true, ["DataSources"] = true, nil }

function asserts.AssertApp(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected App to be of type 'table'")
	if struct["StackId"] then asserts.AssertString(struct["StackId"]) end
	if struct["Environment"] then asserts.AssertEnvironmentVariables(struct["Environment"]) end
	if struct["AppSource"] then asserts.AssertSource(struct["AppSource"]) end
	if struct["Description"] then asserts.AssertString(struct["Description"]) end
	if struct["EnableSsl"] then asserts.AssertBoolean(struct["EnableSsl"]) end
	if struct["SslConfiguration"] then asserts.AssertSslConfiguration(struct["SslConfiguration"]) end
	if struct["Name"] then asserts.AssertString(struct["Name"]) end
	if struct["AppId"] then asserts.AssertString(struct["AppId"]) end
	if struct["Domains"] then asserts.AssertStrings(struct["Domains"]) end
	if struct["Attributes"] then asserts.AssertAppAttributes(struct["Attributes"]) end
	if struct["Shortname"] then asserts.AssertString(struct["Shortname"]) end
	if struct["Type"] then asserts.AssertAppType(struct["Type"]) end
	if struct["CreatedAt"] then asserts.AssertString(struct["CreatedAt"]) end
	if struct["DataSources"] then asserts.AssertDataSources(struct["DataSources"]) end
	for k,_ in pairs(struct) do
		assert(keys.App[k], "App contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type App
-- <p>A description of the app.</p>
-- @param _StackId [String] <p>The app stack ID.</p>
-- @param _Environment [EnvironmentVariables] <p>An array of <code>EnvironmentVariable</code> objects that specify environment variables to be associated with the app. After you deploy the app, these variables are defined on the associated app server instances. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html#workingapps-creating-environment"> Environment Variables</a>. </p> <note> <p>There is no specific limit on the number of environment variables. However, the size of the associated data structure - which includes the variable names, values, and protected flag values - cannot exceed 10 KB (10240 Bytes). This limit should accommodate most if not all use cases, but if you do exceed it, you will cause an exception (API) with an "Environment: is too large (maximum is 10KB)" message.</p> </note>
-- @param _AppSource [Source] <p>A <code>Source</code> object that describes the app repository.</p>
-- @param _Description [String] <p>A description of the app.</p>
-- @param _EnableSsl [Boolean] <p>Whether to enable SSL for the app.</p>
-- @param _SslConfiguration [SslConfiguration] <p>An <code>SslConfiguration</code> object with the SSL configuration.</p>
-- @param _Name [String] <p>The app name.</p>
-- @param _AppId [String] <p>The app ID.</p>
-- @param _Domains [Strings] <p>The app vhost settings with multiple domains separated by commas. For example: <code>'www.example.com, example.com'</code> </p>
-- @param _Attributes [AppAttributes] <p>The stack attributes.</p>
-- @param _Shortname [String] <p>The app's short name.</p>
-- @param _Type [AppType] <p>The app type.</p>
-- @param _CreatedAt [String] <p>When the app was created.</p>
-- @param _DataSources [DataSources] <p>The app's data sources.</p>
function M.App(_StackId, _Environment, _AppSource, _Description, _EnableSsl, _SslConfiguration, _Name, _AppId, _Domains, _Attributes, _Shortname, _Type, _CreatedAt, _DataSources, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating App")
	local t = { 
		["StackId"] = _StackId,
		["Environment"] = _Environment,
		["AppSource"] = _AppSource,
		["Description"] = _Description,
		["EnableSsl"] = _EnableSsl,
		["SslConfiguration"] = _SslConfiguration,
		["Name"] = _Name,
		["AppId"] = _AppId,
		["Domains"] = _Domains,
		["Attributes"] = _Attributes,
		["Shortname"] = _Shortname,
		["Type"] = _Type,
		["CreatedAt"] = _CreatedAt,
		["DataSources"] = _DataSources,
	}
	asserts.AssertApp(t)
	return t
end

keys.RdsDbInstance = { ["Engine"] = true, ["StackId"] = true, ["MissingOnRds"] = true, ["Region"] = true, ["RdsDbInstanceArn"] = true, ["DbPassword"] = true, ["Address"] = true, ["DbUser"] = true, ["DbInstanceIdentifier"] = true, nil }

function asserts.AssertRdsDbInstance(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RdsDbInstance to be of type 'table'")
	if struct["Engine"] then asserts.AssertString(struct["Engine"]) end
	if struct["StackId"] then asserts.AssertString(struct["StackId"]) end
	if struct["MissingOnRds"] then asserts.AssertBoolean(struct["MissingOnRds"]) end
	if struct["Region"] then asserts.AssertString(struct["Region"]) end
	if struct["RdsDbInstanceArn"] then asserts.AssertString(struct["RdsDbInstanceArn"]) end
	if struct["DbPassword"] then asserts.AssertString(struct["DbPassword"]) end
	if struct["Address"] then asserts.AssertString(struct["Address"]) end
	if struct["DbUser"] then asserts.AssertString(struct["DbUser"]) end
	if struct["DbInstanceIdentifier"] then asserts.AssertString(struct["DbInstanceIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.RdsDbInstance[k], "RdsDbInstance contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RdsDbInstance
-- <p>Describes an Amazon RDS instance.</p>
-- @param _Engine [String] <p>The instance's database engine.</p>
-- @param _StackId [String] <p>The ID of the stack with which the instance is registered.</p>
-- @param _MissingOnRds [Boolean] <p>Set to <code>true</code> if AWS OpsWorks Stacks is unable to discover the Amazon RDS instance. AWS OpsWorks Stacks attempts to discover the instance only once. If this value is set to <code>true</code>, you must deregister the instance, and then register it again.</p>
-- @param _Region [String] <p>The instance's AWS region.</p>
-- @param _RdsDbInstanceArn [String] <p>The instance's ARN.</p>
-- @param _DbPassword [String] <p>AWS OpsWorks Stacks returns <code>*****FILTERED*****</code> instead of the actual value.</p>
-- @param _Address [String] <p>The instance's address.</p>
-- @param _DbUser [String] <p>The master user name.</p>
-- @param _DbInstanceIdentifier [String] <p>The DB instance identifier.</p>
function M.RdsDbInstance(_Engine, _StackId, _MissingOnRds, _Region, _RdsDbInstanceArn, _DbPassword, _Address, _DbUser, _DbInstanceIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RdsDbInstance")
	local t = { 
		["Engine"] = _Engine,
		["StackId"] = _StackId,
		["MissingOnRds"] = _MissingOnRds,
		["Region"] = _Region,
		["RdsDbInstanceArn"] = _RdsDbInstanceArn,
		["DbPassword"] = _DbPassword,
		["Address"] = _Address,
		["DbUser"] = _DbUser,
		["DbInstanceIdentifier"] = _DbInstanceIdentifier,
	}
	asserts.AssertRdsDbInstance(t)
	return t
end

keys.DataSource = { ["Type"] = true, ["DatabaseName"] = true, ["Arn"] = true, nil }

function asserts.AssertDataSource(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DataSource to be of type 'table'")
	if struct["Type"] then asserts.AssertString(struct["Type"]) end
	if struct["DatabaseName"] then asserts.AssertString(struct["DatabaseName"]) end
	if struct["Arn"] then asserts.AssertString(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DataSource[k], "DataSource contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DataSource
-- <p>Describes an app's data source.</p>
-- @param _Type [String] <p>The data source's type, <code>AutoSelectOpsworksMysqlInstance</code>, <code>OpsworksMysqlInstance</code>, or <code>RdsDbInstance</code>.</p>
-- @param _DatabaseName [String] <p>The database name.</p>
-- @param _Arn [String] <p>The data source's ARN.</p>
function M.DataSource(_Type, _DatabaseName, _Arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DataSource")
	local t = { 
		["Type"] = _Type,
		["DatabaseName"] = _DatabaseName,
		["Arn"] = _Arn,
	}
	asserts.AssertDataSource(t)
	return t
end

keys.UntagResourceRequest = { ["ResourceArn"] = true, ["TagKeys"] = true, nil }

function asserts.AssertUntagResourceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UntagResourceRequest to be of type 'table'")
	assert(struct["ResourceArn"], "Expected key ResourceArn to exist in table")
	assert(struct["TagKeys"], "Expected key TagKeys to exist in table")
	if struct["ResourceArn"] then asserts.AssertResourceArn(struct["ResourceArn"]) end
	if struct["TagKeys"] then asserts.AssertTagKeys(struct["TagKeys"]) end
	for k,_ in pairs(struct) do
		assert(keys.UntagResourceRequest[k], "UntagResourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UntagResourceRequest
--  
-- @param _ResourceArn [ResourceArn] <p>The stack or layer's Amazon Resource Number (ARN).</p>
-- @param _TagKeys [TagKeys] <p>A list of the keys of tags to be removed from a stack or layer.</p>
-- Required parameter: ResourceArn
-- Required parameter: TagKeys
function M.UntagResourceRequest(_ResourceArn, _TagKeys, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UntagResourceRequest")
	local t = { 
		["ResourceArn"] = _ResourceArn,
		["TagKeys"] = _TagKeys,
	}
	asserts.AssertUntagResourceRequest(t)
	return t
end

keys.RegisterEcsClusterResult = { ["EcsClusterArn"] = true, nil }

function asserts.AssertRegisterEcsClusterResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RegisterEcsClusterResult to be of type 'table'")
	if struct["EcsClusterArn"] then asserts.AssertString(struct["EcsClusterArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.RegisterEcsClusterResult[k], "RegisterEcsClusterResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RegisterEcsClusterResult
-- <p>Contains the response to a <code>RegisterEcsCluster</code> request.</p>
-- @param _EcsClusterArn [String] <p>The cluster's ARN.</p>
function M.RegisterEcsClusterResult(_EcsClusterArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RegisterEcsClusterResult")
	local t = { 
		["EcsClusterArn"] = _EcsClusterArn,
	}
	asserts.AssertRegisterEcsClusterResult(t)
	return t
end

keys.DescribeEcsClustersRequest = { ["StackId"] = true, ["EcsClusterArns"] = true, ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertDescribeEcsClustersRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEcsClustersRequest to be of type 'table'")
	if struct["StackId"] then asserts.AssertString(struct["StackId"]) end
	if struct["EcsClusterArns"] then asserts.AssertStrings(struct["EcsClusterArns"]) end
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertInteger(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeEcsClustersRequest[k], "DescribeEcsClustersRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEcsClustersRequest
--  
-- @param _StackId [String] <p>A stack ID. <code>DescribeEcsClusters</code> returns a description of the cluster that is registered with the stack.</p>
-- @param _EcsClusterArns [Strings] <p>A list of ARNs, one for each cluster to be described.</p>
-- @param _NextToken [String] <p>If the previous paginated request did not return all of the remaining results, the response object's<code>NextToken</code> parameter value is set to a token. To retrieve the next set of results, call <code>DescribeEcsClusters</code> again and assign that token to the request object's <code>NextToken</code> parameter. If there are no remaining results, the previous response object's <code>NextToken</code> parameter is set to <code>null</code>.</p>
-- @param _MaxResults [Integer] <p>To receive a paginated response, use this parameter to specify the maximum number of results to be returned with a single call. If the number of available results exceeds this maximum, the response includes a <code>NextToken</code> value that you can assign to the <code>NextToken</code> request parameter to get the next set of results.</p>
function M.DescribeEcsClustersRequest(_StackId, _EcsClusterArns, _NextToken, _MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeEcsClustersRequest")
	local t = { 
		["StackId"] = _StackId,
		["EcsClusterArns"] = _EcsClusterArns,
		["NextToken"] = _NextToken,
		["MaxResults"] = _MaxResults,
	}
	asserts.AssertDescribeEcsClustersRequest(t)
	return t
end

keys.DescribeAgentVersionsResult = { ["AgentVersions"] = true, nil }

function asserts.AssertDescribeAgentVersionsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAgentVersionsResult to be of type 'table'")
	if struct["AgentVersions"] then asserts.AssertAgentVersions(struct["AgentVersions"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeAgentVersionsResult[k], "DescribeAgentVersionsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAgentVersionsResult
-- <p>Contains the response to a <code>DescribeAgentVersions</code> request.</p>
-- @param _AgentVersions [AgentVersions] <p>The agent versions for the specified stack or configuration manager. Note that this value is the complete version number, not the abbreviated number used by the console.</p>
function M.DescribeAgentVersionsResult(_AgentVersions, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeAgentVersionsResult")
	local t = { 
		["AgentVersions"] = _AgentVersions,
	}
	asserts.AssertDescribeAgentVersionsResult(t)
	return t
end

keys.SetLoadBasedAutoScalingRequest = { ["DownScaling"] = true, ["Enable"] = true, ["UpScaling"] = true, ["LayerId"] = true, nil }

function asserts.AssertSetLoadBasedAutoScalingRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetLoadBasedAutoScalingRequest to be of type 'table'")
	assert(struct["LayerId"], "Expected key LayerId to exist in table")
	if struct["DownScaling"] then asserts.AssertAutoScalingThresholds(struct["DownScaling"]) end
	if struct["Enable"] then asserts.AssertBoolean(struct["Enable"]) end
	if struct["UpScaling"] then asserts.AssertAutoScalingThresholds(struct["UpScaling"]) end
	if struct["LayerId"] then asserts.AssertString(struct["LayerId"]) end
	for k,_ in pairs(struct) do
		assert(keys.SetLoadBasedAutoScalingRequest[k], "SetLoadBasedAutoScalingRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetLoadBasedAutoScalingRequest
--  
-- @param _DownScaling [AutoScalingThresholds] <p>An <code>AutoScalingThresholds</code> object with the downscaling threshold configuration. If the load falls below these thresholds for a specified amount of time, AWS OpsWorks Stacks stops a specified number of instances.</p>
-- @param _Enable [Boolean] <p>Enables load-based auto scaling for the layer.</p>
-- @param _UpScaling [AutoScalingThresholds] <p>An <code>AutoScalingThresholds</code> object with the upscaling threshold configuration. If the load exceeds these thresholds for a specified amount of time, AWS OpsWorks Stacks starts a specified number of instances.</p>
-- @param _LayerId [String] <p>The layer ID.</p>
-- Required parameter: LayerId
function M.SetLoadBasedAutoScalingRequest(_DownScaling, _Enable, _UpScaling, _LayerId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SetLoadBasedAutoScalingRequest")
	local t = { 
		["DownScaling"] = _DownScaling,
		["Enable"] = _Enable,
		["UpScaling"] = _UpScaling,
		["LayerId"] = _LayerId,
	}
	asserts.AssertSetLoadBasedAutoScalingRequest(t)
	return t
end

keys.DescribeLoadBasedAutoScalingResult = { ["LoadBasedAutoScalingConfigurations"] = true, nil }

function asserts.AssertDescribeLoadBasedAutoScalingResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeLoadBasedAutoScalingResult to be of type 'table'")
	if struct["LoadBasedAutoScalingConfigurations"] then asserts.AssertLoadBasedAutoScalingConfigurations(struct["LoadBasedAutoScalingConfigurations"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeLoadBasedAutoScalingResult[k], "DescribeLoadBasedAutoScalingResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeLoadBasedAutoScalingResult
-- <p>Contains the response to a <code>DescribeLoadBasedAutoScaling</code> request.</p>
-- @param _LoadBasedAutoScalingConfigurations [LoadBasedAutoScalingConfigurations] <p>An array of <code>LoadBasedAutoScalingConfiguration</code> objects that describe each layer's configuration.</p>
function M.DescribeLoadBasedAutoScalingResult(_LoadBasedAutoScalingConfigurations, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeLoadBasedAutoScalingResult")
	local t = { 
		["LoadBasedAutoScalingConfigurations"] = _LoadBasedAutoScalingConfigurations,
	}
	asserts.AssertDescribeLoadBasedAutoScalingResult(t)
	return t
end

keys.DescribeTimeBasedAutoScalingResult = { ["TimeBasedAutoScalingConfigurations"] = true, nil }

function asserts.AssertDescribeTimeBasedAutoScalingResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTimeBasedAutoScalingResult to be of type 'table'")
	if struct["TimeBasedAutoScalingConfigurations"] then asserts.AssertTimeBasedAutoScalingConfigurations(struct["TimeBasedAutoScalingConfigurations"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeTimeBasedAutoScalingResult[k], "DescribeTimeBasedAutoScalingResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTimeBasedAutoScalingResult
-- <p>Contains the response to a <code>DescribeTimeBasedAutoScaling</code> request.</p>
-- @param _TimeBasedAutoScalingConfigurations [TimeBasedAutoScalingConfigurations] <p>An array of <code>TimeBasedAutoScalingConfiguration</code> objects that describe the configuration for the specified instances.</p>
function M.DescribeTimeBasedAutoScalingResult(_TimeBasedAutoScalingConfigurations, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeTimeBasedAutoScalingResult")
	local t = { 
		["TimeBasedAutoScalingConfigurations"] = _TimeBasedAutoScalingConfigurations,
	}
	asserts.AssertDescribeTimeBasedAutoScalingResult(t)
	return t
end

keys.DescribePermissionsRequest = { ["StackId"] = true, ["IamUserArn"] = true, nil }

function asserts.AssertDescribePermissionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribePermissionsRequest to be of type 'table'")
	if struct["StackId"] then asserts.AssertString(struct["StackId"]) end
	if struct["IamUserArn"] then asserts.AssertString(struct["IamUserArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribePermissionsRequest[k], "DescribePermissionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribePermissionsRequest
--  
-- @param _StackId [String] <p>The stack ID.</p>
-- @param _IamUserArn [String] <p>The user's IAM ARN. This can also be a federated user's ARN. For more information about IAM ARNs, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">Using Identifiers</a>.</p>
function M.DescribePermissionsRequest(_StackId, _IamUserArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribePermissionsRequest")
	local t = { 
		["StackId"] = _StackId,
		["IamUserArn"] = _IamUserArn,
	}
	asserts.AssertDescribePermissionsRequest(t)
	return t
end

keys.SetPermissionRequest = { ["StackId"] = true, ["IamUserArn"] = true, ["Level"] = true, ["AllowSudo"] = true, ["AllowSsh"] = true, nil }

function asserts.AssertSetPermissionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetPermissionRequest to be of type 'table'")
	assert(struct["StackId"], "Expected key StackId to exist in table")
	assert(struct["IamUserArn"], "Expected key IamUserArn to exist in table")
	if struct["StackId"] then asserts.AssertString(struct["StackId"]) end
	if struct["IamUserArn"] then asserts.AssertString(struct["IamUserArn"]) end
	if struct["Level"] then asserts.AssertString(struct["Level"]) end
	if struct["AllowSudo"] then asserts.AssertBoolean(struct["AllowSudo"]) end
	if struct["AllowSsh"] then asserts.AssertBoolean(struct["AllowSsh"]) end
	for k,_ in pairs(struct) do
		assert(keys.SetPermissionRequest[k], "SetPermissionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetPermissionRequest
--  
-- @param _StackId [String] <p>The stack ID.</p>
-- @param _IamUserArn [String] <p>The user's IAM ARN. This can also be a federated user's ARN.</p>
-- @param _Level [String] <p>The user's permission level, which must be set to one of the following strings. You cannot set your own permissions level.</p> <ul> <li> <p> <code>deny</code> </p> </li> <li> <p> <code>show</code> </p> </li> <li> <p> <code>deploy</code> </p> </li> <li> <p> <code>manage</code> </p> </li> <li> <p> <code>iam_only</code> </p> </li> </ul> <p>For more information on the permissions associated with these levels, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
-- @param _AllowSudo [Boolean] <p>The user is allowed to use <b>sudo</b> to elevate privileges.</p>
-- @param _AllowSsh [Boolean] <p>The user is allowed to use SSH to communicate with the instance.</p>
-- Required parameter: StackId
-- Required parameter: IamUserArn
function M.SetPermissionRequest(_StackId, _IamUserArn, _Level, _AllowSudo, _AllowSsh, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SetPermissionRequest")
	local t = { 
		["StackId"] = _StackId,
		["IamUserArn"] = _IamUserArn,
		["Level"] = _Level,
		["AllowSudo"] = _AllowSudo,
		["AllowSsh"] = _AllowSsh,
	}
	asserts.AssertSetPermissionRequest(t)
	return t
end

keys.DescribeTimeBasedAutoScalingRequest = { ["InstanceIds"] = true, nil }

function asserts.AssertDescribeTimeBasedAutoScalingRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTimeBasedAutoScalingRequest to be of type 'table'")
	assert(struct["InstanceIds"], "Expected key InstanceIds to exist in table")
	if struct["InstanceIds"] then asserts.AssertStrings(struct["InstanceIds"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeTimeBasedAutoScalingRequest[k], "DescribeTimeBasedAutoScalingRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTimeBasedAutoScalingRequest
--  
-- @param _InstanceIds [Strings] <p>An array of instance IDs.</p>
-- Required parameter: InstanceIds
function M.DescribeTimeBasedAutoScalingRequest(_InstanceIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeTimeBasedAutoScalingRequest")
	local t = { 
		["InstanceIds"] = _InstanceIds,
	}
	asserts.AssertDescribeTimeBasedAutoScalingRequest(t)
	return t
end

keys.DescribeDeploymentsRequest = { ["StackId"] = true, ["DeploymentIds"] = true, ["AppId"] = true, nil }

function asserts.AssertDescribeDeploymentsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDeploymentsRequest to be of type 'table'")
	if struct["StackId"] then asserts.AssertString(struct["StackId"]) end
	if struct["DeploymentIds"] then asserts.AssertStrings(struct["DeploymentIds"]) end
	if struct["AppId"] then asserts.AssertString(struct["AppId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeDeploymentsRequest[k], "DescribeDeploymentsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDeploymentsRequest
--  
-- @param _StackId [String] <p>The stack ID. If you include this parameter, <code>DescribeDeployments</code> returns a description of the commands associated with the specified stack.</p>
-- @param _DeploymentIds [Strings] <p>An array of deployment IDs to be described. If you include this parameter, <code>DescribeDeployments</code> returns a description of the specified deployments. Otherwise, it returns a description of every deployment.</p>
-- @param _AppId [String] <p>The app ID. If you include this parameter, <code>DescribeDeployments</code> returns a description of the commands associated with the specified app.</p>
function M.DescribeDeploymentsRequest(_StackId, _DeploymentIds, _AppId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeDeploymentsRequest")
	local t = { 
		["StackId"] = _StackId,
		["DeploymentIds"] = _DeploymentIds,
		["AppId"] = _AppId,
	}
	asserts.AssertDescribeDeploymentsRequest(t)
	return t
end

keys.DescribeUserProfilesResult = { ["UserProfiles"] = true, nil }

function asserts.AssertDescribeUserProfilesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeUserProfilesResult to be of type 'table'")
	if struct["UserProfiles"] then asserts.AssertUserProfiles(struct["UserProfiles"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeUserProfilesResult[k], "DescribeUserProfilesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeUserProfilesResult
-- <p>Contains the response to a <code>DescribeUserProfiles</code> request.</p>
-- @param _UserProfiles [UserProfiles] <p>A <code>Users</code> object that describes the specified users.</p>
function M.DescribeUserProfilesResult(_UserProfiles, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeUserProfilesResult")
	local t = { 
		["UserProfiles"] = _UserProfiles,
	}
	asserts.AssertDescribeUserProfilesResult(t)
	return t
end

keys.ChefConfiguration = { ["BerkshelfVersion"] = true, ["ManageBerkshelf"] = true, nil }

function asserts.AssertChefConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ChefConfiguration to be of type 'table'")
	if struct["BerkshelfVersion"] then asserts.AssertString(struct["BerkshelfVersion"]) end
	if struct["ManageBerkshelf"] then asserts.AssertBoolean(struct["ManageBerkshelf"]) end
	for k,_ in pairs(struct) do
		assert(keys.ChefConfiguration[k], "ChefConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ChefConfiguration
-- <p>Describes the Chef configuration.</p>
-- @param _BerkshelfVersion [String] <p>The Berkshelf version.</p>
-- @param _ManageBerkshelf [Boolean] <p>Whether to enable Berkshelf.</p>
function M.ChefConfiguration(_BerkshelfVersion, _ManageBerkshelf, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ChefConfiguration")
	local t = { 
		["BerkshelfVersion"] = _BerkshelfVersion,
		["ManageBerkshelf"] = _ManageBerkshelf,
	}
	asserts.AssertChefConfiguration(t)
	return t
end

keys.DescribeAgentVersionsRequest = { ["StackId"] = true, ["ConfigurationManager"] = true, nil }

function asserts.AssertDescribeAgentVersionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAgentVersionsRequest to be of type 'table'")
	if struct["StackId"] then asserts.AssertString(struct["StackId"]) end
	if struct["ConfigurationManager"] then asserts.AssertStackConfigurationManager(struct["ConfigurationManager"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeAgentVersionsRequest[k], "DescribeAgentVersionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAgentVersionsRequest
--  
-- @param _StackId [String] <p>The stack ID.</p>
-- @param _ConfigurationManager [StackConfigurationManager] <p>The configuration manager.</p>
function M.DescribeAgentVersionsRequest(_StackId, _ConfigurationManager, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeAgentVersionsRequest")
	local t = { 
		["StackId"] = _StackId,
		["ConfigurationManager"] = _ConfigurationManager,
	}
	asserts.AssertDescribeAgentVersionsRequest(t)
	return t
end

keys.DescribeStacksResult = { ["Stacks"] = true, nil }

function asserts.AssertDescribeStacksResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeStacksResult to be of type 'table'")
	if struct["Stacks"] then asserts.AssertStacks(struct["Stacks"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeStacksResult[k], "DescribeStacksResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeStacksResult
-- <p>Contains the response to a <code>DescribeStacks</code> request.</p>
-- @param _Stacks [Stacks] <p>An array of <code>Stack</code> objects that describe the stacks.</p>
function M.DescribeStacksResult(_Stacks, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeStacksResult")
	local t = { 
		["Stacks"] = _Stacks,
	}
	asserts.AssertDescribeStacksResult(t)
	return t
end

keys.DescribeRdsDbInstancesResult = { ["RdsDbInstances"] = true, nil }

function asserts.AssertDescribeRdsDbInstancesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeRdsDbInstancesResult to be of type 'table'")
	if struct["RdsDbInstances"] then asserts.AssertRdsDbInstances(struct["RdsDbInstances"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeRdsDbInstancesResult[k], "DescribeRdsDbInstancesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeRdsDbInstancesResult
-- <p>Contains the response to a <code>DescribeRdsDbInstances</code> request.</p>
-- @param _RdsDbInstances [RdsDbInstances] <p>An a array of <code>RdsDbInstance</code> objects that describe the instances.</p>
function M.DescribeRdsDbInstancesResult(_RdsDbInstances, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeRdsDbInstancesResult")
	local t = { 
		["RdsDbInstances"] = _RdsDbInstances,
	}
	asserts.AssertDescribeRdsDbInstancesResult(t)
	return t
end

keys.DeploymentCommand = { ["Args"] = true, ["Name"] = true, nil }

function asserts.AssertDeploymentCommand(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeploymentCommand to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Args"] then asserts.AssertDeploymentCommandArgs(struct["Args"]) end
	if struct["Name"] then asserts.AssertDeploymentCommandName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeploymentCommand[k], "DeploymentCommand contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeploymentCommand
-- <p>Used to specify a stack or deployment command.</p>
-- @param _Args [DeploymentCommandArgs] <p>The arguments of those commands that take arguments. It should be set to a JSON object with the following format:</p> <p> <code>{"arg_name1" : ["value1", "value2", ...], "arg_name2" : ["value1", "value2", ...], ...}</code> </p> <p>The <code>update_dependencies</code> command takes two arguments:</p> <ul> <li> <p> <code>upgrade_os_to</code> - Specifies the desired Amazon Linux version for instances whose OS you want to upgrade, such as <code>Amazon Linux 2016.09</code>. You must also set the <code>allow_reboot</code> argument to true.</p> </li> <li> <p> <code>allow_reboot</code> - Specifies whether to allow AWS OpsWorks Stacks to reboot the instances if necessary, after installing the updates. This argument can be set to either <code>true</code> or <code>false</code>. The default value is <code>false</code>.</p> </li> </ul> <p>For example, to upgrade an instance to Amazon Linux 2016.09, set <code>Args</code> to the following.</p> <p> <code> { "upgrade_os_to":["Amazon Linux 2016.09"], "allow_reboot":["true"] } </code> </p>
-- @param _Name [DeploymentCommandName] <p>Specifies the operation. You can specify only one command.</p> <p>For stacks, the following commands are available:</p> <ul> <li> <p> <code>execute_recipes</code>: Execute one or more recipes. To specify the recipes, set an <code>Args</code> parameter named <code>recipes</code> to the list of recipes to be executed. For example, to execute <code>phpapp::appsetup</code>, set <code>Args</code> to <code>{"recipes":["phpapp::appsetup"]}</code>.</p> </li> <li> <p> <code>install_dependencies</code>: Install the stack's dependencies.</p> </li> <li> <p> <code>update_custom_cookbooks</code>: Update the stack's custom cookbooks.</p> </li> <li> <p> <code>update_dependencies</code>: Update the stack's dependencies.</p> </li> </ul> <note> <p>The update_dependencies and install_dependencies commands are supported only for Linux instances. You can run the commands successfully on Windows instances, but they do nothing.</p> </note> <p>For apps, the following commands are available:</p> <ul> <li> <p> <code>deploy</code>: Deploy an app. Ruby on Rails apps have an optional <code>Args</code> parameter named <code>migrate</code>. Set <code>Args</code> to {"migrate":["true"]} to migrate the database. The default setting is {"migrate":["false"]}.</p> </li> <li> <p> <code>rollback</code> Roll the app back to the previous version. When you update an app, AWS OpsWorks Stacks stores the previous version, up to a maximum of five versions. You can use this command to roll an app back as many as four versions.</p> </li> <li> <p> <code>start</code>: Start the app's web or application server.</p> </li> <li> <p> <code>stop</code>: Stop the app's web or application server.</p> </li> <li> <p> <code>restart</code>: Restart the app's web or application server.</p> </li> <li> <p> <code>undeploy</code>: Undeploy the app.</p> </li> </ul>
-- Required parameter: Name
function M.DeploymentCommand(_Args, _Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeploymentCommand")
	local t = { 
		["Args"] = _Args,
		["Name"] = _Name,
	}
	asserts.AssertDeploymentCommand(t)
	return t
end

keys.DescribeEcsClustersResult = { ["NextToken"] = true, ["EcsClusters"] = true, nil }

function asserts.AssertDescribeEcsClustersResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEcsClustersResult to be of type 'table'")
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	if struct["EcsClusters"] then asserts.AssertEcsClusters(struct["EcsClusters"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeEcsClustersResult[k], "DescribeEcsClustersResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEcsClustersResult
-- <p>Contains the response to a <code>DescribeEcsClusters</code> request.</p>
-- @param _NextToken [String] <p>If a paginated request does not return all of the remaining results, this parameter is set to a token that you can assign to the request object's <code>NextToken</code> parameter to retrieve the next set of results. If the previous paginated request returned all of the remaining results, this parameter is set to <code>null</code>.</p>
-- @param _EcsClusters [EcsClusters] <p>A list of <code>EcsCluster</code> objects containing the cluster descriptions.</p>
function M.DescribeEcsClustersResult(_NextToken, _EcsClusters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeEcsClustersResult")
	local t = { 
		["NextToken"] = _NextToken,
		["EcsClusters"] = _EcsClusters,
	}
	asserts.AssertDescribeEcsClustersResult(t)
	return t
end

keys.ValidationException = { ["message"] = true, nil }

function asserts.AssertValidationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ValidationException to be of type 'table'")
	if struct["message"] then asserts.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ValidationException[k], "ValidationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ValidationException
-- <p>Indicates that a request was not valid.</p>
-- @param _message [String] <p>The exception message.</p>
function M.ValidationException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ValidationException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertValidationException(t)
	return t
end

keys.UpdateRdsDbInstanceRequest = { ["DbUser"] = true, ["RdsDbInstanceArn"] = true, ["DbPassword"] = true, nil }

function asserts.AssertUpdateRdsDbInstanceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateRdsDbInstanceRequest to be of type 'table'")
	assert(struct["RdsDbInstanceArn"], "Expected key RdsDbInstanceArn to exist in table")
	if struct["DbUser"] then asserts.AssertString(struct["DbUser"]) end
	if struct["RdsDbInstanceArn"] then asserts.AssertString(struct["RdsDbInstanceArn"]) end
	if struct["DbPassword"] then asserts.AssertString(struct["DbPassword"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateRdsDbInstanceRequest[k], "UpdateRdsDbInstanceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateRdsDbInstanceRequest
--  
-- @param _DbUser [String] <p>The master user name.</p>
-- @param _RdsDbInstanceArn [String] <p>The Amazon RDS instance's ARN.</p>
-- @param _DbPassword [String] <p>The database password.</p>
-- Required parameter: RdsDbInstanceArn
function M.UpdateRdsDbInstanceRequest(_DbUser, _RdsDbInstanceArn, _DbPassword, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateRdsDbInstanceRequest")
	local t = { 
		["DbUser"] = _DbUser,
		["RdsDbInstanceArn"] = _RdsDbInstanceArn,
		["DbPassword"] = _DbPassword,
	}
	asserts.AssertUpdateRdsDbInstanceRequest(t)
	return t
end

keys.UserProfile = { ["IamUserArn"] = true, ["SshPublicKey"] = true, ["AllowSelfManagement"] = true, ["Name"] = true, ["SshUsername"] = true, nil }

function asserts.AssertUserProfile(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UserProfile to be of type 'table'")
	if struct["IamUserArn"] then asserts.AssertString(struct["IamUserArn"]) end
	if struct["SshPublicKey"] then asserts.AssertString(struct["SshPublicKey"]) end
	if struct["AllowSelfManagement"] then asserts.AssertBoolean(struct["AllowSelfManagement"]) end
	if struct["Name"] then asserts.AssertString(struct["Name"]) end
	if struct["SshUsername"] then asserts.AssertString(struct["SshUsername"]) end
	for k,_ in pairs(struct) do
		assert(keys.UserProfile[k], "UserProfile contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UserProfile
-- <p>Describes a user's SSH information.</p>
-- @param _IamUserArn [String] <p>The user's IAM ARN.</p>
-- @param _SshPublicKey [String] <p>The user's SSH public key.</p>
-- @param _AllowSelfManagement [Boolean] <p>Whether users can specify their own SSH public key through the My Settings page. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/security-settingsshkey.html">Managing User Permissions</a>.</p>
-- @param _Name [String] <p>The user's name.</p>
-- @param _SshUsername [String] <p>The user's SSH user name.</p>
function M.UserProfile(_IamUserArn, _SshPublicKey, _AllowSelfManagement, _Name, _SshUsername, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UserProfile")
	local t = { 
		["IamUserArn"] = _IamUserArn,
		["SshPublicKey"] = _SshPublicKey,
		["AllowSelfManagement"] = _AllowSelfManagement,
		["Name"] = _Name,
		["SshUsername"] = _SshUsername,
	}
	asserts.AssertUserProfile(t)
	return t
end

keys.CreateInstanceRequest = { ["StackId"] = true, ["AmiId"] = true, ["LayerIds"] = true, ["VirtualizationType"] = true, ["EbsOptimized"] = true, ["SshKeyName"] = true, ["Hostname"] = true, ["RootDeviceType"] = true, ["BlockDeviceMappings"] = true, ["AvailabilityZone"] = true, ["Architecture"] = true, ["AutoScalingType"] = true, ["SubnetId"] = true, ["Tenancy"] = true, ["InstallUpdatesOnBoot"] = true, ["Os"] = true, ["InstanceType"] = true, ["AgentVersion"] = true, nil }

function asserts.AssertCreateInstanceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateInstanceRequest to be of type 'table'")
	assert(struct["StackId"], "Expected key StackId to exist in table")
	assert(struct["LayerIds"], "Expected key LayerIds to exist in table")
	assert(struct["InstanceType"], "Expected key InstanceType to exist in table")
	if struct["StackId"] then asserts.AssertString(struct["StackId"]) end
	if struct["AmiId"] then asserts.AssertString(struct["AmiId"]) end
	if struct["LayerIds"] then asserts.AssertStrings(struct["LayerIds"]) end
	if struct["VirtualizationType"] then asserts.AssertString(struct["VirtualizationType"]) end
	if struct["EbsOptimized"] then asserts.AssertBoolean(struct["EbsOptimized"]) end
	if struct["SshKeyName"] then asserts.AssertString(struct["SshKeyName"]) end
	if struct["Hostname"] then asserts.AssertString(struct["Hostname"]) end
	if struct["RootDeviceType"] then asserts.AssertRootDeviceType(struct["RootDeviceType"]) end
	if struct["BlockDeviceMappings"] then asserts.AssertBlockDeviceMappings(struct["BlockDeviceMappings"]) end
	if struct["AvailabilityZone"] then asserts.AssertString(struct["AvailabilityZone"]) end
	if struct["Architecture"] then asserts.AssertArchitecture(struct["Architecture"]) end
	if struct["AutoScalingType"] then asserts.AssertAutoScalingType(struct["AutoScalingType"]) end
	if struct["SubnetId"] then asserts.AssertString(struct["SubnetId"]) end
	if struct["Tenancy"] then asserts.AssertString(struct["Tenancy"]) end
	if struct["InstallUpdatesOnBoot"] then asserts.AssertBoolean(struct["InstallUpdatesOnBoot"]) end
	if struct["Os"] then asserts.AssertString(struct["Os"]) end
	if struct["InstanceType"] then asserts.AssertString(struct["InstanceType"]) end
	if struct["AgentVersion"] then asserts.AssertString(struct["AgentVersion"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateInstanceRequest[k], "CreateInstanceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateInstanceRequest
--  
-- @param _StackId [String] <p>The stack ID.</p>
-- @param _AmiId [String] <p>A custom AMI ID to be used to create the instance. The AMI should be based on one of the supported operating systems. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-custom-ami.html">Using Custom AMIs</a>.</p> <note> <p>If you specify a custom AMI, you must set <code>Os</code> to <code>Custom</code>.</p> </note>
-- @param _LayerIds [Strings] <p>An array that contains the instance's layer IDs.</p>
-- @param _VirtualizationType [String] <p>The instance's virtualization type, <code>paravirtual</code> or <code>hvm</code>.</p>
-- @param _EbsOptimized [Boolean] <p>Whether to create an Amazon EBS-optimized instance.</p>
-- @param _SshKeyName [String] <p>The instance's Amazon EC2 key-pair name.</p>
-- @param _Hostname [String] <p>The instance host name.</p>
-- @param _RootDeviceType [RootDeviceType] <p>The instance root device type. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ComponentsAMIs.html#storage-for-the-root-device">Storage for the Root Device</a>.</p>
-- @param _BlockDeviceMappings [BlockDeviceMappings] <p>An array of <code>BlockDeviceMapping</code> objects that specify the instance's block devices. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/block-device-mapping-concepts.html">Block Device Mapping</a>. Note that block device mappings are not supported for custom AMIs.</p>
-- @param _AvailabilityZone [String] <p>The instance Availability Zone. For more information, see <a href="http://docs.aws.amazon.com/general/latest/gr/rande.html">Regions and Endpoints</a>.</p>
-- @param _Architecture [Architecture] <p>The instance architecture. The default option is <code>x86_64</code>. Instance types do not necessarily support both architectures. For a list of the architectures that are supported by the different instance types, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html">Instance Families and Types</a>.</p>
-- @param _AutoScalingType [AutoScalingType] <p>For load-based or time-based instances, the type. Windows stacks can use only time-based instances.</p>
-- @param _SubnetId [String] <p>The ID of the instance's subnet. If the stack is running in a VPC, you can use this parameter to override the stack's default subnet ID value and direct AWS OpsWorks Stacks to launch the instance in a different subnet.</p>
-- @param _Tenancy [String] <p>The instance's tenancy option. The default option is no tenancy, or if the instance is running in a VPC, inherit tenancy settings from the VPC. The following are valid values for this parameter: <code>dedicated</code>, <code>default</code>, or <code>host</code>. Because there are costs associated with changes in tenancy options, we recommend that you research tenancy options before choosing them for your instances. For more information about dedicated hosts, see <a href="http://aws.amazon.com/ec2/dedicated-hosts/">Dedicated Hosts Overview</a> and <a href="http://aws.amazon.com/ec2/dedicated-hosts/">Amazon EC2 Dedicated Hosts</a>. For more information about dedicated instances, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/dedicated-instance.html">Dedicated Instances</a> and <a href="http://aws.amazon.com/ec2/purchasing-options/dedicated-instances/">Amazon EC2 Dedicated Instances</a>.</p>
-- @param _InstallUpdatesOnBoot [Boolean] <p>Whether to install operating system and package updates when the instance boots. The default value is <code>true</code>. To control when updates are installed, set this value to <code>false</code>. You must then update your instances manually by using <a>CreateDeployment</a> to run the <code>update_dependencies</code> stack command or by manually running <code>yum</code> (Amazon Linux) or <code>apt-get</code> (Ubuntu) on the instances. </p> <note> <p>We strongly recommend using the default value of <code>true</code> to ensure that your instances have the latest security updates.</p> </note>
-- @param _Os [String] <p>The instance's operating system, which must be set to one of the following.</p> <ul> <li> <p>A supported Linux operating system: An Amazon Linux version, such as <code>Amazon Linux 2017.03</code>, <code>Amazon Linux 2016.09</code>, <code>Amazon Linux 2016.03</code>, <code>Amazon Linux 2015.09</code>, or <code>Amazon Linux 2015.03</code>.</p> </li> <li> <p>A supported Ubuntu operating system, such as <code>Ubuntu 16.04 LTS</code>, <code>Ubuntu 14.04 LTS</code>, or <code>Ubuntu 12.04 LTS</code>.</p> </li> <li> <p> <code>CentOS Linux 7</code> </p> </li> <li> <p> <code>Red Hat Enterprise Linux 7</code> </p> </li> <li> <p>A supported Windows operating system, such as <code>Microsoft Windows Server 2012 R2 Base</code>, <code>Microsoft Windows Server 2012 R2 with SQL Server Express</code>, <code>Microsoft Windows Server 2012 R2 with SQL Server Standard</code>, or <code>Microsoft Windows Server 2012 R2 with SQL Server Web</code>.</p> </li> <li> <p>A custom AMI: <code>Custom</code>.</p> </li> </ul> <p>For more information on the supported operating systems, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-os.html">AWS OpsWorks Stacks Operating Systems</a>.</p> <p>The default option is the current Amazon Linux version. If you set this parameter to <code>Custom</code>, you must use the <a>CreateInstance</a> action's AmiId parameter to specify the custom AMI that you want to use. Block device mappings are not supported if the value is <code>Custom</code>. For more information on the supported operating systems, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-os.html">Operating Systems</a>For more information on how to use custom AMIs with AWS OpsWorks Stacks, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-custom-ami.html">Using Custom AMIs</a>.</p>
-- @param _InstanceType [String] <p>The instance type, such as <code>t2.micro</code>. For a list of supported instance types, open the stack in the console, choose <b>Instances</b>, and choose <b>+ Instance</b>. The <b>Size</b> list contains the currently supported types. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html">Instance Families and Types</a>. The parameter values that you use to specify the various types are in the <b>API Name</b> column of the <b>Available Instance Types</b> table.</p>
-- @param _AgentVersion [String] <p>The default AWS OpsWorks Stacks agent version. You have the following options:</p> <ul> <li> <p> <code>INHERIT</code> - Use the stack's default agent version setting.</p> </li> <li> <p> <i>version_number</i> - Use the specified agent version. This value overrides the stack's default setting. To update the agent version, edit the instance configuration and specify a new version. AWS OpsWorks Stacks then automatically installs that version on the instance.</p> </li> </ul> <p>The default setting is <code>INHERIT</code>. To specify an agent version, you must use the complete version number, not the abbreviated number shown on the console. For a list of available agent version numbers, call <a>DescribeAgentVersions</a>. AgentVersion cannot be set to Chef 12.2.</p>
-- Required parameter: StackId
-- Required parameter: LayerIds
-- Required parameter: InstanceType
function M.CreateInstanceRequest(_StackId, _AmiId, _LayerIds, _VirtualizationType, _EbsOptimized, _SshKeyName, _Hostname, _RootDeviceType, _BlockDeviceMappings, _AvailabilityZone, _Architecture, _AutoScalingType, _SubnetId, _Tenancy, _InstallUpdatesOnBoot, _Os, _InstanceType, _AgentVersion, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateInstanceRequest")
	local t = { 
		["StackId"] = _StackId,
		["AmiId"] = _AmiId,
		["LayerIds"] = _LayerIds,
		["VirtualizationType"] = _VirtualizationType,
		["EbsOptimized"] = _EbsOptimized,
		["SshKeyName"] = _SshKeyName,
		["Hostname"] = _Hostname,
		["RootDeviceType"] = _RootDeviceType,
		["BlockDeviceMappings"] = _BlockDeviceMappings,
		["AvailabilityZone"] = _AvailabilityZone,
		["Architecture"] = _Architecture,
		["AutoScalingType"] = _AutoScalingType,
		["SubnetId"] = _SubnetId,
		["Tenancy"] = _Tenancy,
		["InstallUpdatesOnBoot"] = _InstallUpdatesOnBoot,
		["Os"] = _Os,
		["InstanceType"] = _InstanceType,
		["AgentVersion"] = _AgentVersion,
	}
	asserts.AssertCreateInstanceRequest(t)
	return t
end

keys.DescribeRaidArraysRequest = { ["InstanceId"] = true, ["StackId"] = true, ["RaidArrayIds"] = true, nil }

function asserts.AssertDescribeRaidArraysRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeRaidArraysRequest to be of type 'table'")
	if struct["InstanceId"] then asserts.AssertString(struct["InstanceId"]) end
	if struct["StackId"] then asserts.AssertString(struct["StackId"]) end
	if struct["RaidArrayIds"] then asserts.AssertStrings(struct["RaidArrayIds"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeRaidArraysRequest[k], "DescribeRaidArraysRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeRaidArraysRequest
--  
-- @param _InstanceId [String] <p>The instance ID. If you use this parameter, <code>DescribeRaidArrays</code> returns descriptions of the RAID arrays associated with the specified instance. </p>
-- @param _StackId [String] <p>The stack ID.</p>
-- @param _RaidArrayIds [Strings] <p>An array of RAID array IDs. If you use this parameter, <code>DescribeRaidArrays</code> returns descriptions of the specified arrays. Otherwise, it returns a description of every array.</p>
function M.DescribeRaidArraysRequest(_InstanceId, _StackId, _RaidArrayIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeRaidArraysRequest")
	local t = { 
		["InstanceId"] = _InstanceId,
		["StackId"] = _StackId,
		["RaidArrayIds"] = _RaidArrayIds,
	}
	asserts.AssertDescribeRaidArraysRequest(t)
	return t
end

keys.BlockDeviceMapping = { ["Ebs"] = true, ["DeviceName"] = true, ["VirtualName"] = true, ["NoDevice"] = true, nil }

function asserts.AssertBlockDeviceMapping(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BlockDeviceMapping to be of type 'table'")
	if struct["Ebs"] then asserts.AssertEbsBlockDevice(struct["Ebs"]) end
	if struct["DeviceName"] then asserts.AssertString(struct["DeviceName"]) end
	if struct["VirtualName"] then asserts.AssertString(struct["VirtualName"]) end
	if struct["NoDevice"] then asserts.AssertString(struct["NoDevice"]) end
	for k,_ in pairs(struct) do
		assert(keys.BlockDeviceMapping[k], "BlockDeviceMapping contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BlockDeviceMapping
-- <p>Describes a block device mapping. This data type maps directly to the Amazon EC2 <a href="http://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_BlockDeviceMapping.html">BlockDeviceMapping</a> data type. </p>
-- @param _Ebs [EbsBlockDevice] <p>An <code>EBSBlockDevice</code> that defines how to configure an Amazon EBS volume when the instance is launched.</p>
-- @param _DeviceName [String] <p>The device name that is exposed to the instance, such as <code>/dev/sdh</code>. For the root device, you can use the explicit device name or you can set this parameter to <code>ROOT_DEVICE</code> and AWS OpsWorks Stacks will provide the correct device name.</p>
-- @param _VirtualName [String] <p>The virtual device name. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_BlockDeviceMapping.html">BlockDeviceMapping</a>.</p>
-- @param _NoDevice [String] <p>Suppresses the specified device included in the AMI's block device mapping.</p>
function M.BlockDeviceMapping(_Ebs, _DeviceName, _VirtualName, _NoDevice, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BlockDeviceMapping")
	local t = { 
		["Ebs"] = _Ebs,
		["DeviceName"] = _DeviceName,
		["VirtualName"] = _VirtualName,
		["NoDevice"] = _NoDevice,
	}
	asserts.AssertBlockDeviceMapping(t)
	return t
end

keys.DeleteUserProfileRequest = { ["IamUserArn"] = true, nil }

function asserts.AssertDeleteUserProfileRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteUserProfileRequest to be of type 'table'")
	assert(struct["IamUserArn"], "Expected key IamUserArn to exist in table")
	if struct["IamUserArn"] then asserts.AssertString(struct["IamUserArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteUserProfileRequest[k], "DeleteUserProfileRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteUserProfileRequest
--  
-- @param _IamUserArn [String] <p>The user's IAM ARN. This can also be a federated user's ARN.</p>
-- Required parameter: IamUserArn
function M.DeleteUserProfileRequest(_IamUserArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteUserProfileRequest")
	local t = { 
		["IamUserArn"] = _IamUserArn,
	}
	asserts.AssertDeleteUserProfileRequest(t)
	return t
end

keys.DescribeInstancesRequest = { ["StackId"] = true, ["InstanceIds"] = true, ["LayerId"] = true, nil }

function asserts.AssertDescribeInstancesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeInstancesRequest to be of type 'table'")
	if struct["StackId"] then asserts.AssertString(struct["StackId"]) end
	if struct["InstanceIds"] then asserts.AssertStrings(struct["InstanceIds"]) end
	if struct["LayerId"] then asserts.AssertString(struct["LayerId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeInstancesRequest[k], "DescribeInstancesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeInstancesRequest
--  
-- @param _StackId [String] <p>A stack ID. If you use this parameter, <code>DescribeInstances</code> returns descriptions of the instances associated with the specified stack.</p>
-- @param _InstanceIds [Strings] <p>An array of instance IDs to be described. If you use this parameter, <code>DescribeInstances</code> returns a description of the specified instances. Otherwise, it returns a description of every instance.</p>
-- @param _LayerId [String] <p>A layer ID. If you use this parameter, <code>DescribeInstances</code> returns descriptions of the instances associated with the specified layer.</p>
function M.DescribeInstancesRequest(_StackId, _InstanceIds, _LayerId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeInstancesRequest")
	local t = { 
		["StackId"] = _StackId,
		["InstanceIds"] = _InstanceIds,
		["LayerId"] = _LayerId,
	}
	asserts.AssertDescribeInstancesRequest(t)
	return t
end

keys.InstanceIdentity = { ["Document"] = true, ["Signature"] = true, nil }

function asserts.AssertInstanceIdentity(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstanceIdentity to be of type 'table'")
	if struct["Document"] then asserts.AssertString(struct["Document"]) end
	if struct["Signature"] then asserts.AssertString(struct["Signature"]) end
	for k,_ in pairs(struct) do
		assert(keys.InstanceIdentity[k], "InstanceIdentity contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstanceIdentity
-- <p>Contains a description of an Amazon EC2 instance from the Amazon EC2 metadata service. For more information, see <a href="http://docs.aws.amazon.com/sdkfornet/latest/apidocs/Index.html">Instance Metadata and User Data</a>.</p>
-- @param _Document [String] <p>A JSON document that contains the metadata.</p>
-- @param _Signature [String] <p>A signature that can be used to verify the document's accuracy and authenticity.</p>
function M.InstanceIdentity(_Document, _Signature, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InstanceIdentity")
	local t = { 
		["Document"] = _Document,
		["Signature"] = _Signature,
	}
	asserts.AssertInstanceIdentity(t)
	return t
end

keys.DeregisterElasticIpRequest = { ["ElasticIp"] = true, nil }

function asserts.AssertDeregisterElasticIpRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeregisterElasticIpRequest to be of type 'table'")
	assert(struct["ElasticIp"], "Expected key ElasticIp to exist in table")
	if struct["ElasticIp"] then asserts.AssertString(struct["ElasticIp"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeregisterElasticIpRequest[k], "DeregisterElasticIpRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeregisterElasticIpRequest
--  
-- @param _ElasticIp [String] <p>The Elastic IP address.</p>
-- Required parameter: ElasticIp
function M.DeregisterElasticIpRequest(_ElasticIp, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeregisterElasticIpRequest")
	local t = { 
		["ElasticIp"] = _ElasticIp,
	}
	asserts.AssertDeregisterElasticIpRequest(t)
	return t
end

keys.RaidArray = { ["StackId"] = true, ["AvailabilityZone"] = true, ["Name"] = true, ["NumberOfDisks"] = true, ["InstanceId"] = true, ["RaidLevel"] = true, ["VolumeType"] = true, ["RaidArrayId"] = true, ["Device"] = true, ["MountPoint"] = true, ["Iops"] = true, ["CreatedAt"] = true, ["Size"] = true, nil }

function asserts.AssertRaidArray(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RaidArray to be of type 'table'")
	if struct["StackId"] then asserts.AssertString(struct["StackId"]) end
	if struct["AvailabilityZone"] then asserts.AssertString(struct["AvailabilityZone"]) end
	if struct["Name"] then asserts.AssertString(struct["Name"]) end
	if struct["NumberOfDisks"] then asserts.AssertInteger(struct["NumberOfDisks"]) end
	if struct["InstanceId"] then asserts.AssertString(struct["InstanceId"]) end
	if struct["RaidLevel"] then asserts.AssertInteger(struct["RaidLevel"]) end
	if struct["VolumeType"] then asserts.AssertString(struct["VolumeType"]) end
	if struct["RaidArrayId"] then asserts.AssertString(struct["RaidArrayId"]) end
	if struct["Device"] then asserts.AssertString(struct["Device"]) end
	if struct["MountPoint"] then asserts.AssertString(struct["MountPoint"]) end
	if struct["Iops"] then asserts.AssertInteger(struct["Iops"]) end
	if struct["CreatedAt"] then asserts.AssertDateTime(struct["CreatedAt"]) end
	if struct["Size"] then asserts.AssertInteger(struct["Size"]) end
	for k,_ in pairs(struct) do
		assert(keys.RaidArray[k], "RaidArray contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RaidArray
-- <p>Describes an instance's RAID array.</p>
-- @param _StackId [String] <p>The stack ID.</p>
-- @param _AvailabilityZone [String] <p>The array's Availability Zone. For more information, see <a href="http://docs.aws.amazon.com/general/latest/gr/rande.html">Regions and Endpoints</a>.</p>
-- @param _Name [String] <p>The array name.</p>
-- @param _NumberOfDisks [Integer] <p>The number of disks in the array.</p>
-- @param _InstanceId [String] <p>The instance ID.</p>
-- @param _RaidLevel [Integer] <p>The <a href="http://en.wikipedia.org/wiki/Standard_RAID_levels">RAID level</a>.</p>
-- @param _VolumeType [String] <p>The volume type, standard or PIOPS.</p>
-- @param _RaidArrayId [String] <p>The array ID.</p>
-- @param _Device [String] <p>The array's Linux device. For example /dev/mdadm0.</p>
-- @param _MountPoint [String] <p>The array's mount point.</p>
-- @param _Iops [Integer] <p>For PIOPS volumes, the IOPS per disk.</p>
-- @param _CreatedAt [DateTime] <p>When the RAID array was created.</p>
-- @param _Size [Integer] <p>The array's size.</p>
function M.RaidArray(_StackId, _AvailabilityZone, _Name, _NumberOfDisks, _InstanceId, _RaidLevel, _VolumeType, _RaidArrayId, _Device, _MountPoint, _Iops, _CreatedAt, _Size, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RaidArray")
	local t = { 
		["StackId"] = _StackId,
		["AvailabilityZone"] = _AvailabilityZone,
		["Name"] = _Name,
		["NumberOfDisks"] = _NumberOfDisks,
		["InstanceId"] = _InstanceId,
		["RaidLevel"] = _RaidLevel,
		["VolumeType"] = _VolumeType,
		["RaidArrayId"] = _RaidArrayId,
		["Device"] = _Device,
		["MountPoint"] = _MountPoint,
		["Iops"] = _Iops,
		["CreatedAt"] = _CreatedAt,
		["Size"] = _Size,
	}
	asserts.AssertRaidArray(t)
	return t
end

keys.ElasticIp = { ["InstanceId"] = true, ["Ip"] = true, ["Domain"] = true, ["Region"] = true, ["Name"] = true, nil }

function asserts.AssertElasticIp(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ElasticIp to be of type 'table'")
	if struct["InstanceId"] then asserts.AssertString(struct["InstanceId"]) end
	if struct["Ip"] then asserts.AssertString(struct["Ip"]) end
	if struct["Domain"] then asserts.AssertString(struct["Domain"]) end
	if struct["Region"] then asserts.AssertString(struct["Region"]) end
	if struct["Name"] then asserts.AssertString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.ElasticIp[k], "ElasticIp contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ElasticIp
-- <p>Describes an Elastic IP address.</p>
-- @param _InstanceId [String] <p>The ID of the instance that the address is attached to.</p>
-- @param _Ip [String] <p>The IP address.</p>
-- @param _Domain [String] <p>The domain.</p>
-- @param _Region [String] <p>The AWS region. For more information, see <a href="http://docs.aws.amazon.com/general/latest/gr/rande.html">Regions and Endpoints</a>.</p>
-- @param _Name [String] <p>The name.</p>
function M.ElasticIp(_InstanceId, _Ip, _Domain, _Region, _Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ElasticIp")
	local t = { 
		["InstanceId"] = _InstanceId,
		["Ip"] = _Ip,
		["Domain"] = _Domain,
		["Region"] = _Region,
		["Name"] = _Name,
	}
	asserts.AssertElasticIp(t)
	return t
end

keys.DescribeElasticLoadBalancersResult = { ["ElasticLoadBalancers"] = true, nil }

function asserts.AssertDescribeElasticLoadBalancersResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeElasticLoadBalancersResult to be of type 'table'")
	if struct["ElasticLoadBalancers"] then asserts.AssertElasticLoadBalancers(struct["ElasticLoadBalancers"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeElasticLoadBalancersResult[k], "DescribeElasticLoadBalancersResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeElasticLoadBalancersResult
-- <p>Contains the response to a <code>DescribeElasticLoadBalancers</code> request.</p>
-- @param _ElasticLoadBalancers [ElasticLoadBalancers] <p>A list of <code>ElasticLoadBalancer</code> objects that describe the specified Elastic Load Balancing instances.</p>
function M.DescribeElasticLoadBalancersResult(_ElasticLoadBalancers, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeElasticLoadBalancersResult")
	local t = { 
		["ElasticLoadBalancers"] = _ElasticLoadBalancers,
	}
	asserts.AssertDescribeElasticLoadBalancersResult(t)
	return t
end

keys.DeleteInstanceRequest = { ["InstanceId"] = true, ["DeleteVolumes"] = true, ["DeleteElasticIp"] = true, nil }

function asserts.AssertDeleteInstanceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteInstanceRequest to be of type 'table'")
	assert(struct["InstanceId"], "Expected key InstanceId to exist in table")
	if struct["InstanceId"] then asserts.AssertString(struct["InstanceId"]) end
	if struct["DeleteVolumes"] then asserts.AssertBoolean(struct["DeleteVolumes"]) end
	if struct["DeleteElasticIp"] then asserts.AssertBoolean(struct["DeleteElasticIp"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteInstanceRequest[k], "DeleteInstanceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteInstanceRequest
--  
-- @param _InstanceId [String] <p>The instance ID.</p>
-- @param _DeleteVolumes [Boolean] <p>Whether to delete the instance's Amazon EBS volumes.</p>
-- @param _DeleteElasticIp [Boolean] <p>Whether to delete the instance Elastic IP address.</p>
-- Required parameter: InstanceId
function M.DeleteInstanceRequest(_InstanceId, _DeleteVolumes, _DeleteElasticIp, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteInstanceRequest")
	local t = { 
		["InstanceId"] = _InstanceId,
		["DeleteVolumes"] = _DeleteVolumes,
		["DeleteElasticIp"] = _DeleteElasticIp,
	}
	asserts.AssertDeleteInstanceRequest(t)
	return t
end

keys.DisassociateElasticIpRequest = { ["ElasticIp"] = true, nil }

function asserts.AssertDisassociateElasticIpRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisassociateElasticIpRequest to be of type 'table'")
	assert(struct["ElasticIp"], "Expected key ElasticIp to exist in table")
	if struct["ElasticIp"] then asserts.AssertString(struct["ElasticIp"]) end
	for k,_ in pairs(struct) do
		assert(keys.DisassociateElasticIpRequest[k], "DisassociateElasticIpRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisassociateElasticIpRequest
--  
-- @param _ElasticIp [String] <p>The Elastic IP address.</p>
-- Required parameter: ElasticIp
function M.DisassociateElasticIpRequest(_ElasticIp, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DisassociateElasticIpRequest")
	local t = { 
		["ElasticIp"] = _ElasticIp,
	}
	asserts.AssertDisassociateElasticIpRequest(t)
	return t
end

keys.ElasticLoadBalancer = { ["StackId"] = true, ["ElasticLoadBalancerName"] = true, ["VpcId"] = true, ["Ec2InstanceIds"] = true, ["Region"] = true, ["DnsName"] = true, ["LayerId"] = true, ["AvailabilityZones"] = true, ["SubnetIds"] = true, nil }

function asserts.AssertElasticLoadBalancer(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ElasticLoadBalancer to be of type 'table'")
	if struct["StackId"] then asserts.AssertString(struct["StackId"]) end
	if struct["ElasticLoadBalancerName"] then asserts.AssertString(struct["ElasticLoadBalancerName"]) end
	if struct["VpcId"] then asserts.AssertString(struct["VpcId"]) end
	if struct["Ec2InstanceIds"] then asserts.AssertStrings(struct["Ec2InstanceIds"]) end
	if struct["Region"] then asserts.AssertString(struct["Region"]) end
	if struct["DnsName"] then asserts.AssertString(struct["DnsName"]) end
	if struct["LayerId"] then asserts.AssertString(struct["LayerId"]) end
	if struct["AvailabilityZones"] then asserts.AssertStrings(struct["AvailabilityZones"]) end
	if struct["SubnetIds"] then asserts.AssertStrings(struct["SubnetIds"]) end
	for k,_ in pairs(struct) do
		assert(keys.ElasticLoadBalancer[k], "ElasticLoadBalancer contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ElasticLoadBalancer
-- <p>Describes an Elastic Load Balancing instance.</p>
-- @param _StackId [String] <p>The ID of the stack that the instance is associated with.</p>
-- @param _ElasticLoadBalancerName [String] <p>The Elastic Load Balancing instance's name.</p>
-- @param _VpcId [String] <p>The VPC ID.</p>
-- @param _Ec2InstanceIds [Strings] <p>A list of the EC2 instances that the Elastic Load Balancing instance is managing traffic for.</p>
-- @param _Region [String] <p>The instance's AWS region.</p>
-- @param _DnsName [String] <p>The instance's public DNS name.</p>
-- @param _LayerId [String] <p>The ID of the layer that the instance is attached to.</p>
-- @param _AvailabilityZones [Strings] <p>A list of Availability Zones.</p>
-- @param _SubnetIds [Strings] <p>A list of subnet IDs, if the stack is running in a VPC.</p>
function M.ElasticLoadBalancer(_StackId, _ElasticLoadBalancerName, _VpcId, _Ec2InstanceIds, _Region, _DnsName, _LayerId, _AvailabilityZones, _SubnetIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ElasticLoadBalancer")
	local t = { 
		["StackId"] = _StackId,
		["ElasticLoadBalancerName"] = _ElasticLoadBalancerName,
		["VpcId"] = _VpcId,
		["Ec2InstanceIds"] = _Ec2InstanceIds,
		["Region"] = _Region,
		["DnsName"] = _DnsName,
		["LayerId"] = _LayerId,
		["AvailabilityZones"] = _AvailabilityZones,
		["SubnetIds"] = _SubnetIds,
	}
	asserts.AssertElasticLoadBalancer(t)
	return t
end

keys.ResourceNotFoundException = { ["message"] = true, nil }

function asserts.AssertResourceNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceNotFoundException to be of type 'table'")
	if struct["message"] then asserts.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResourceNotFoundException[k], "ResourceNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceNotFoundException
-- <p>Indicates that a resource was not found.</p>
-- @param _message [String] <p>The exception message.</p>
function M.ResourceNotFoundException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceNotFoundException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertResourceNotFoundException(t)
	return t
end

keys.DescribeRaidArraysResult = { ["RaidArrays"] = true, nil }

function asserts.AssertDescribeRaidArraysResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeRaidArraysResult to be of type 'table'")
	if struct["RaidArrays"] then asserts.AssertRaidArrays(struct["RaidArrays"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeRaidArraysResult[k], "DescribeRaidArraysResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeRaidArraysResult
-- <p>Contains the response to a <code>DescribeRaidArrays</code> request.</p>
-- @param _RaidArrays [RaidArrays] <p>A <code>RaidArrays</code> object that describes the specified RAID arrays.</p>
function M.DescribeRaidArraysResult(_RaidArrays, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeRaidArraysResult")
	local t = { 
		["RaidArrays"] = _RaidArrays,
	}
	asserts.AssertDescribeRaidArraysResult(t)
	return t
end

keys.DescribeServiceErrorsRequest = { ["StackId"] = true, ["InstanceId"] = true, ["ServiceErrorIds"] = true, nil }

function asserts.AssertDescribeServiceErrorsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeServiceErrorsRequest to be of type 'table'")
	if struct["StackId"] then asserts.AssertString(struct["StackId"]) end
	if struct["InstanceId"] then asserts.AssertString(struct["InstanceId"]) end
	if struct["ServiceErrorIds"] then asserts.AssertStrings(struct["ServiceErrorIds"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeServiceErrorsRequest[k], "DescribeServiceErrorsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeServiceErrorsRequest
--  
-- @param _StackId [String] <p>The stack ID. If you use this parameter, <code>DescribeServiceErrors</code> returns descriptions of the errors associated with the specified stack.</p>
-- @param _InstanceId [String] <p>The instance ID. If you use this parameter, <code>DescribeServiceErrors</code> returns descriptions of the errors associated with the specified instance.</p>
-- @param _ServiceErrorIds [Strings] <p>An array of service error IDs. If you use this parameter, <code>DescribeServiceErrors</code> returns descriptions of the specified errors. Otherwise, it returns a description of every error.</p>
function M.DescribeServiceErrorsRequest(_StackId, _InstanceId, _ServiceErrorIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeServiceErrorsRequest")
	local t = { 
		["StackId"] = _StackId,
		["InstanceId"] = _InstanceId,
		["ServiceErrorIds"] = _ServiceErrorIds,
	}
	asserts.AssertDescribeServiceErrorsRequest(t)
	return t
end

keys.ServiceError = { ["StackId"] = true, ["InstanceId"] = true, ["ServiceErrorId"] = true, ["Message"] = true, ["Type"] = true, ["CreatedAt"] = true, nil }

function asserts.AssertServiceError(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ServiceError to be of type 'table'")
	if struct["StackId"] then asserts.AssertString(struct["StackId"]) end
	if struct["InstanceId"] then asserts.AssertString(struct["InstanceId"]) end
	if struct["ServiceErrorId"] then asserts.AssertString(struct["ServiceErrorId"]) end
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	if struct["Type"] then asserts.AssertString(struct["Type"]) end
	if struct["CreatedAt"] then asserts.AssertDateTime(struct["CreatedAt"]) end
	for k,_ in pairs(struct) do
		assert(keys.ServiceError[k], "ServiceError contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ServiceError
-- <p>Describes an AWS OpsWorks Stacks service error.</p>
-- @param _StackId [String] <p>The stack ID.</p>
-- @param _InstanceId [String] <p>The instance ID.</p>
-- @param _ServiceErrorId [String] <p>The error ID.</p>
-- @param _Message [String] <p>A message that describes the error.</p>
-- @param _Type [String] <p>The error type.</p>
-- @param _CreatedAt [DateTime] <p>When the error occurred.</p>
function M.ServiceError(_StackId, _InstanceId, _ServiceErrorId, _Message, _Type, _CreatedAt, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ServiceError")
	local t = { 
		["StackId"] = _StackId,
		["InstanceId"] = _InstanceId,
		["ServiceErrorId"] = _ServiceErrorId,
		["Message"] = _Message,
		["Type"] = _Type,
		["CreatedAt"] = _CreatedAt,
	}
	asserts.AssertServiceError(t)
	return t
end

keys.DescribeVolumesRequest = { ["InstanceId"] = true, ["StackId"] = true, ["RaidArrayId"] = true, ["VolumeIds"] = true, nil }

function asserts.AssertDescribeVolumesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeVolumesRequest to be of type 'table'")
	if struct["InstanceId"] then asserts.AssertString(struct["InstanceId"]) end
	if struct["StackId"] then asserts.AssertString(struct["StackId"]) end
	if struct["RaidArrayId"] then asserts.AssertString(struct["RaidArrayId"]) end
	if struct["VolumeIds"] then asserts.AssertStrings(struct["VolumeIds"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeVolumesRequest[k], "DescribeVolumesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeVolumesRequest
--  
-- @param _InstanceId [String] <p>The instance ID. If you use this parameter, <code>DescribeVolumes</code> returns descriptions of the volumes associated with the specified instance.</p>
-- @param _StackId [String] <p>A stack ID. The action describes the stack's registered Amazon EBS volumes.</p>
-- @param _RaidArrayId [String] <p>The RAID array ID. If you use this parameter, <code>DescribeVolumes</code> returns descriptions of the volumes associated with the specified RAID array.</p>
-- @param _VolumeIds [Strings] <p>Am array of volume IDs. If you use this parameter, <code>DescribeVolumes</code> returns descriptions of the specified volumes. Otherwise, it returns a description of every volume.</p>
function M.DescribeVolumesRequest(_InstanceId, _StackId, _RaidArrayId, _VolumeIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeVolumesRequest")
	local t = { 
		["InstanceId"] = _InstanceId,
		["StackId"] = _StackId,
		["RaidArrayId"] = _RaidArrayId,
		["VolumeIds"] = _VolumeIds,
	}
	asserts.AssertDescribeVolumesRequest(t)
	return t
end

keys.StartStackRequest = { ["StackId"] = true, nil }

function asserts.AssertStartStackRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartStackRequest to be of type 'table'")
	assert(struct["StackId"], "Expected key StackId to exist in table")
	if struct["StackId"] then asserts.AssertString(struct["StackId"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartStackRequest[k], "StartStackRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartStackRequest
--  
-- @param _StackId [String] <p>The stack ID.</p>
-- Required parameter: StackId
function M.StartStackRequest(_StackId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StartStackRequest")
	local t = { 
		["StackId"] = _StackId,
	}
	asserts.AssertStartStackRequest(t)
	return t
end

keys.VolumeConfiguration = { ["NumberOfDisks"] = true, ["RaidLevel"] = true, ["VolumeType"] = true, ["Iops"] = true, ["MountPoint"] = true, ["Size"] = true, nil }

function asserts.AssertVolumeConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VolumeConfiguration to be of type 'table'")
	assert(struct["MountPoint"], "Expected key MountPoint to exist in table")
	assert(struct["NumberOfDisks"], "Expected key NumberOfDisks to exist in table")
	assert(struct["Size"], "Expected key Size to exist in table")
	if struct["NumberOfDisks"] then asserts.AssertInteger(struct["NumberOfDisks"]) end
	if struct["RaidLevel"] then asserts.AssertInteger(struct["RaidLevel"]) end
	if struct["VolumeType"] then asserts.AssertString(struct["VolumeType"]) end
	if struct["Iops"] then asserts.AssertInteger(struct["Iops"]) end
	if struct["MountPoint"] then asserts.AssertString(struct["MountPoint"]) end
	if struct["Size"] then asserts.AssertInteger(struct["Size"]) end
	for k,_ in pairs(struct) do
		assert(keys.VolumeConfiguration[k], "VolumeConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VolumeConfiguration
-- <p>Describes an Amazon EBS volume configuration.</p>
-- @param _NumberOfDisks [Integer] <p>The number of disks in the volume.</p>
-- @param _RaidLevel [Integer] <p>The volume <a href="http://en.wikipedia.org/wiki/Standard_RAID_levels">RAID level</a>.</p>
-- @param _VolumeType [String] <p>The volume type:</p> <ul> <li> <p> <code>standard</code> - Magnetic</p> </li> <li> <p> <code>io1</code> - Provisioned IOPS (SSD)</p> </li> <li> <p> <code>gp2</code> - General Purpose (SSD)</p> </li> </ul>
-- @param _Iops [Integer] <p>For PIOPS volumes, the IOPS per disk.</p>
-- @param _MountPoint [String] <p>The volume mount point. For example "/dev/sdh".</p>
-- @param _Size [Integer] <p>The volume size.</p>
-- Required parameter: MountPoint
-- Required parameter: NumberOfDisks
-- Required parameter: Size
function M.VolumeConfiguration(_NumberOfDisks, _RaidLevel, _VolumeType, _Iops, _MountPoint, _Size, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating VolumeConfiguration")
	local t = { 
		["NumberOfDisks"] = _NumberOfDisks,
		["RaidLevel"] = _RaidLevel,
		["VolumeType"] = _VolumeType,
		["Iops"] = _Iops,
		["MountPoint"] = _MountPoint,
		["Size"] = _Size,
	}
	asserts.AssertVolumeConfiguration(t)
	return t
end

keys.DescribeElasticIpsRequest = { ["InstanceId"] = true, ["StackId"] = true, ["Ips"] = true, nil }

function asserts.AssertDescribeElasticIpsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeElasticIpsRequest to be of type 'table'")
	if struct["InstanceId"] then asserts.AssertString(struct["InstanceId"]) end
	if struct["StackId"] then asserts.AssertString(struct["StackId"]) end
	if struct["Ips"] then asserts.AssertStrings(struct["Ips"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeElasticIpsRequest[k], "DescribeElasticIpsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeElasticIpsRequest
--  
-- @param _InstanceId [String] <p>The instance ID. If you include this parameter, <code>DescribeElasticIps</code> returns a description of the Elastic IP addresses associated with the specified instance.</p>
-- @param _StackId [String] <p>A stack ID. If you include this parameter, <code>DescribeElasticIps</code> returns a description of the Elastic IP addresses that are registered with the specified stack.</p>
-- @param _Ips [Strings] <p>An array of Elastic IP addresses to be described. If you include this parameter, <code>DescribeElasticIps</code> returns a description of the specified Elastic IP addresses. Otherwise, it returns a description of every Elastic IP address.</p>
function M.DescribeElasticIpsRequest(_InstanceId, _StackId, _Ips, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeElasticIpsRequest")
	local t = { 
		["InstanceId"] = _InstanceId,
		["StackId"] = _StackId,
		["Ips"] = _Ips,
	}
	asserts.AssertDescribeElasticIpsRequest(t)
	return t
end

keys.CreateInstanceResult = { ["InstanceId"] = true, nil }

function asserts.AssertCreateInstanceResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateInstanceResult to be of type 'table'")
	if struct["InstanceId"] then asserts.AssertString(struct["InstanceId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateInstanceResult[k], "CreateInstanceResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateInstanceResult
-- <p>Contains the response to a <code>CreateInstance</code> request.</p>
-- @param _InstanceId [String] <p>The instance ID.</p>
function M.CreateInstanceResult(_InstanceId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateInstanceResult")
	local t = { 
		["InstanceId"] = _InstanceId,
	}
	asserts.AssertCreateInstanceResult(t)
	return t
end

keys.DescribeStackSummaryResult = { ["StackSummary"] = true, nil }

function asserts.AssertDescribeStackSummaryResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeStackSummaryResult to be of type 'table'")
	if struct["StackSummary"] then asserts.AssertStackSummary(struct["StackSummary"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeStackSummaryResult[k], "DescribeStackSummaryResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeStackSummaryResult
-- <p>Contains the response to a <code>DescribeStackSummary</code> request.</p>
-- @param _StackSummary [StackSummary] <p>A <code>StackSummary</code> object that contains the results.</p>
function M.DescribeStackSummaryResult(_StackSummary, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeStackSummaryResult")
	local t = { 
		["StackSummary"] = _StackSummary,
	}
	asserts.AssertDescribeStackSummaryResult(t)
	return t
end

keys.UpdateVolumeRequest = { ["MountPoint"] = true, ["VolumeId"] = true, ["Name"] = true, nil }

function asserts.AssertUpdateVolumeRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateVolumeRequest to be of type 'table'")
	assert(struct["VolumeId"], "Expected key VolumeId to exist in table")
	if struct["MountPoint"] then asserts.AssertString(struct["MountPoint"]) end
	if struct["VolumeId"] then asserts.AssertString(struct["VolumeId"]) end
	if struct["Name"] then asserts.AssertString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateVolumeRequest[k], "UpdateVolumeRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateVolumeRequest
--  
-- @param _MountPoint [String] <p>The new mount point.</p>
-- @param _VolumeId [String] <p>The volume ID.</p>
-- @param _Name [String] <p>The new name.</p>
-- Required parameter: VolumeId
function M.UpdateVolumeRequest(_MountPoint, _VolumeId, _Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateVolumeRequest")
	local t = { 
		["MountPoint"] = _MountPoint,
		["VolumeId"] = _VolumeId,
		["Name"] = _Name,
	}
	asserts.AssertUpdateVolumeRequest(t)
	return t
end

keys.StackConfigurationManager = { ["Version"] = true, ["Name"] = true, nil }

function asserts.AssertStackConfigurationManager(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StackConfigurationManager to be of type 'table'")
	if struct["Version"] then asserts.AssertString(struct["Version"]) end
	if struct["Name"] then asserts.AssertString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.StackConfigurationManager[k], "StackConfigurationManager contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StackConfigurationManager
-- <p>Describes the configuration manager.</p>
-- @param _Version [String] <p>The Chef version. This parameter must be set to 12, 11.10, or 11.4 for Linux stacks, and to 12.2 for Windows stacks. The default value for Linux stacks is 11.4.</p>
-- @param _Name [String] <p>The name. This parameter must be set to "Chef".</p>
function M.StackConfigurationManager(_Version, _Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StackConfigurationManager")
	local t = { 
		["Version"] = _Version,
		["Name"] = _Name,
	}
	asserts.AssertStackConfigurationManager(t)
	return t
end

keys.InstancesCount = { ["StartFailed"] = true, ["Requested"] = true, ["Registering"] = true, ["Terminated"] = true, ["RunningSetup"] = true, ["Booting"] = true, ["Deregistering"] = true, ["Rebooting"] = true, ["Unassigning"] = true, ["ShuttingDown"] = true, ["SetupFailed"] = true, ["Terminating"] = true, ["ConnectionLost"] = true, ["Online"] = true, ["Stopping"] = true, ["Stopped"] = true, ["Assigning"] = true, ["Registered"] = true, ["Pending"] = true, nil }

function asserts.AssertInstancesCount(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstancesCount to be of type 'table'")
	if struct["StartFailed"] then asserts.AssertInteger(struct["StartFailed"]) end
	if struct["Requested"] then asserts.AssertInteger(struct["Requested"]) end
	if struct["Registering"] then asserts.AssertInteger(struct["Registering"]) end
	if struct["Terminated"] then asserts.AssertInteger(struct["Terminated"]) end
	if struct["RunningSetup"] then asserts.AssertInteger(struct["RunningSetup"]) end
	if struct["Booting"] then asserts.AssertInteger(struct["Booting"]) end
	if struct["Deregistering"] then asserts.AssertInteger(struct["Deregistering"]) end
	if struct["Rebooting"] then asserts.AssertInteger(struct["Rebooting"]) end
	if struct["Unassigning"] then asserts.AssertInteger(struct["Unassigning"]) end
	if struct["ShuttingDown"] then asserts.AssertInteger(struct["ShuttingDown"]) end
	if struct["SetupFailed"] then asserts.AssertInteger(struct["SetupFailed"]) end
	if struct["Terminating"] then asserts.AssertInteger(struct["Terminating"]) end
	if struct["ConnectionLost"] then asserts.AssertInteger(struct["ConnectionLost"]) end
	if struct["Online"] then asserts.AssertInteger(struct["Online"]) end
	if struct["Stopping"] then asserts.AssertInteger(struct["Stopping"]) end
	if struct["Stopped"] then asserts.AssertInteger(struct["Stopped"]) end
	if struct["Assigning"] then asserts.AssertInteger(struct["Assigning"]) end
	if struct["Registered"] then asserts.AssertInteger(struct["Registered"]) end
	if struct["Pending"] then asserts.AssertInteger(struct["Pending"]) end
	for k,_ in pairs(struct) do
		assert(keys.InstancesCount[k], "InstancesCount contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstancesCount
-- <p>Describes how many instances a stack has for each status.</p>
-- @param _StartFailed [Integer] <p>The number of instances with <code>start_failed</code> status.</p>
-- @param _Requested [Integer] <p>The number of instances with <code>requested</code> status.</p>
-- @param _Registering [Integer] <p>The number of instances in the Registering state.</p>
-- @param _Terminated [Integer] <p>The number of instances with <code>terminated</code> status.</p>
-- @param _RunningSetup [Integer] <p>The number of instances with <code>running_setup</code> status.</p>
-- @param _Booting [Integer] <p>The number of instances with <code>booting</code> status.</p>
-- @param _Deregistering [Integer] <p>The number of instances in the Deregistering state.</p>
-- @param _Rebooting [Integer] <p>The number of instances with <code>rebooting</code> status.</p>
-- @param _Unassigning [Integer] <p>The number of instances in the Unassigning state.</p>
-- @param _ShuttingDown [Integer] <p>The number of instances with <code>shutting_down</code> status.</p>
-- @param _SetupFailed [Integer] <p>The number of instances with <code>setup_failed</code> status.</p>
-- @param _Terminating [Integer] <p>The number of instances with <code>terminating</code> status.</p>
-- @param _ConnectionLost [Integer] <p>The number of instances with <code>connection_lost</code> status.</p>
-- @param _Online [Integer] <p>The number of instances with <code>online</code> status.</p>
-- @param _Stopping [Integer] <p>The number of instances with <code>stopping</code> status.</p>
-- @param _Stopped [Integer] <p>The number of instances with <code>stopped</code> status.</p>
-- @param _Assigning [Integer] <p>The number of instances in the Assigning state.</p>
-- @param _Registered [Integer] <p>The number of instances in the Registered state.</p>
-- @param _Pending [Integer] <p>The number of instances with <code>pending</code> status.</p>
function M.InstancesCount(_StartFailed, _Requested, _Registering, _Terminated, _RunningSetup, _Booting, _Deregistering, _Rebooting, _Unassigning, _ShuttingDown, _SetupFailed, _Terminating, _ConnectionLost, _Online, _Stopping, _Stopped, _Assigning, _Registered, _Pending, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InstancesCount")
	local t = { 
		["StartFailed"] = _StartFailed,
		["Requested"] = _Requested,
		["Registering"] = _Registering,
		["Terminated"] = _Terminated,
		["RunningSetup"] = _RunningSetup,
		["Booting"] = _Booting,
		["Deregistering"] = _Deregistering,
		["Rebooting"] = _Rebooting,
		["Unassigning"] = _Unassigning,
		["ShuttingDown"] = _ShuttingDown,
		["SetupFailed"] = _SetupFailed,
		["Terminating"] = _Terminating,
		["ConnectionLost"] = _ConnectionLost,
		["Online"] = _Online,
		["Stopping"] = _Stopping,
		["Stopped"] = _Stopped,
		["Assigning"] = _Assigning,
		["Registered"] = _Registered,
		["Pending"] = _Pending,
	}
	asserts.AssertInstancesCount(t)
	return t
end

keys.DescribeCommandsResult = { ["Commands"] = true, nil }

function asserts.AssertDescribeCommandsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeCommandsResult to be of type 'table'")
	if struct["Commands"] then asserts.AssertCommands(struct["Commands"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeCommandsResult[k], "DescribeCommandsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeCommandsResult
-- <p>Contains the response to a <code>DescribeCommands</code> request.</p>
-- @param _Commands [Commands] <p>An array of <code>Command</code> objects that describe each of the specified commands.</p>
function M.DescribeCommandsResult(_Commands, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeCommandsResult")
	local t = { 
		["Commands"] = _Commands,
	}
	asserts.AssertDescribeCommandsResult(t)
	return t
end

keys.ReportedOs = { ["Version"] = true, ["Name"] = true, ["Family"] = true, nil }

function asserts.AssertReportedOs(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReportedOs to be of type 'table'")
	if struct["Version"] then asserts.AssertString(struct["Version"]) end
	if struct["Name"] then asserts.AssertString(struct["Name"]) end
	if struct["Family"] then asserts.AssertString(struct["Family"]) end
	for k,_ in pairs(struct) do
		assert(keys.ReportedOs[k], "ReportedOs contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReportedOs
-- <p>A registered instance's reported operating system.</p>
-- @param _Version [String] <p>The operating system version.</p>
-- @param _Name [String] <p>The operating system name.</p>
-- @param _Family [String] <p>The operating system family.</p>
function M.ReportedOs(_Version, _Name, _Family, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReportedOs")
	local t = { 
		["Version"] = _Version,
		["Name"] = _Name,
		["Family"] = _Family,
	}
	asserts.AssertReportedOs(t)
	return t
end

keys.TemporaryCredential = { ["Username"] = true, ["InstanceId"] = true, ["Password"] = true, ["ValidForInMinutes"] = true, nil }

function asserts.AssertTemporaryCredential(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TemporaryCredential to be of type 'table'")
	if struct["Username"] then asserts.AssertString(struct["Username"]) end
	if struct["InstanceId"] then asserts.AssertString(struct["InstanceId"]) end
	if struct["Password"] then asserts.AssertString(struct["Password"]) end
	if struct["ValidForInMinutes"] then asserts.AssertInteger(struct["ValidForInMinutes"]) end
	for k,_ in pairs(struct) do
		assert(keys.TemporaryCredential[k], "TemporaryCredential contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TemporaryCredential
-- <p>Contains the data needed by RDP clients such as the Microsoft Remote Desktop Connection to log in to the instance.</p>
-- @param _Username [String] <p>The user name.</p>
-- @param _InstanceId [String] <p>The instance's AWS OpsWorks Stacks ID.</p>
-- @param _Password [String] <p>The password.</p>
-- @param _ValidForInMinutes [Integer] <p>The length of time (in minutes) that the grant is valid. When the grant expires, at the end of this period, the user will no longer be able to use the credentials to log in. If they are logged in at the time, they will be automatically logged out.</p>
function M.TemporaryCredential(_Username, _InstanceId, _Password, _ValidForInMinutes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TemporaryCredential")
	local t = { 
		["Username"] = _Username,
		["InstanceId"] = _InstanceId,
		["Password"] = _Password,
		["ValidForInMinutes"] = _ValidForInMinutes,
	}
	asserts.AssertTemporaryCredential(t)
	return t
end

keys.UpdateLayerRequest = { ["LifecycleEventConfiguration"] = true, ["CustomRecipes"] = true, ["AutoAssignElasticIps"] = true, ["Name"] = true, ["CloudWatchLogsConfiguration"] = true, ["CustomJson"] = true, ["VolumeConfigurations"] = true, ["AutoAssignPublicIps"] = true, ["EnableAutoHealing"] = true, ["CustomInstanceProfileArn"] = true, ["UseEbsOptimizedInstances"] = true, ["LayerId"] = true, ["Attributes"] = true, ["Shortname"] = true, ["Packages"] = true, ["CustomSecurityGroupIds"] = true, ["InstallUpdatesOnBoot"] = true, nil }

function asserts.AssertUpdateLayerRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateLayerRequest to be of type 'table'")
	assert(struct["LayerId"], "Expected key LayerId to exist in table")
	if struct["LifecycleEventConfiguration"] then asserts.AssertLifecycleEventConfiguration(struct["LifecycleEventConfiguration"]) end
	if struct["CustomRecipes"] then asserts.AssertRecipes(struct["CustomRecipes"]) end
	if struct["AutoAssignElasticIps"] then asserts.AssertBoolean(struct["AutoAssignElasticIps"]) end
	if struct["Name"] then asserts.AssertString(struct["Name"]) end
	if struct["CloudWatchLogsConfiguration"] then asserts.AssertCloudWatchLogsConfiguration(struct["CloudWatchLogsConfiguration"]) end
	if struct["CustomJson"] then asserts.AssertString(struct["CustomJson"]) end
	if struct["VolumeConfigurations"] then asserts.AssertVolumeConfigurations(struct["VolumeConfigurations"]) end
	if struct["AutoAssignPublicIps"] then asserts.AssertBoolean(struct["AutoAssignPublicIps"]) end
	if struct["EnableAutoHealing"] then asserts.AssertBoolean(struct["EnableAutoHealing"]) end
	if struct["CustomInstanceProfileArn"] then asserts.AssertString(struct["CustomInstanceProfileArn"]) end
	if struct["UseEbsOptimizedInstances"] then asserts.AssertBoolean(struct["UseEbsOptimizedInstances"]) end
	if struct["LayerId"] then asserts.AssertString(struct["LayerId"]) end
	if struct["Attributes"] then asserts.AssertLayerAttributes(struct["Attributes"]) end
	if struct["Shortname"] then asserts.AssertString(struct["Shortname"]) end
	if struct["Packages"] then asserts.AssertStrings(struct["Packages"]) end
	if struct["CustomSecurityGroupIds"] then asserts.AssertStrings(struct["CustomSecurityGroupIds"]) end
	if struct["InstallUpdatesOnBoot"] then asserts.AssertBoolean(struct["InstallUpdatesOnBoot"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateLayerRequest[k], "UpdateLayerRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateLayerRequest
--  
-- @param _LifecycleEventConfiguration [LifecycleEventConfiguration] <p/>
-- @param _CustomRecipes [Recipes] <p>A <code>LayerCustomRecipes</code> object that specifies the layer's custom recipes.</p>
-- @param _AutoAssignElasticIps [Boolean] <p>Whether to automatically assign an <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html">Elastic IP address</a> to the layer's instances. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-edit.html">How to Edit a Layer</a>.</p>
-- @param _Name [String] <p>The layer name, which is used by the console.</p>
-- @param _CloudWatchLogsConfiguration [CloudWatchLogsConfiguration] <p>Specifies CloudWatch Logs configuration options for the layer. For more information, see <a>CloudWatchLogsLogStream</a>.</p>
-- @param _CustomJson [String] <p>A JSON-formatted string containing custom stack configuration and deployment attributes to be installed on the layer's instances. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook-json-override.html"> Using Custom JSON</a>. </p>
-- @param _VolumeConfigurations [VolumeConfigurations] <p>A <code>VolumeConfigurations</code> object that describes the layer's Amazon EBS volumes.</p>
-- @param _AutoAssignPublicIps [Boolean] <p>For stacks that are running in a VPC, whether to automatically assign a public IP address to the layer's instances. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-edit.html">How to Edit a Layer</a>.</p>
-- @param _EnableAutoHealing [Boolean] <p>Whether to disable auto healing for the layer.</p>
-- @param _CustomInstanceProfileArn [String] <p>The ARN of an IAM profile to be used for all of the layer's EC2 instances. For more information about IAM ARNs, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">Using Identifiers</a>.</p>
-- @param _UseEbsOptimizedInstances [Boolean] <p>Whether to use Amazon EBS-optimized instances.</p>
-- @param _LayerId [String] <p>The layer ID.</p>
-- @param _Attributes [LayerAttributes] <p>One or more user-defined key/value pairs to be added to the stack attributes.</p>
-- @param _Shortname [String] <p>For custom layers only, use this parameter to specify the layer's short name, which is used internally by AWS OpsWorks Stacks and by Chef. The short name is also used as the name for the directory where your app files are installed. It can have a maximum of 200 characters and must be in the following format: /\A[a-z0-9\-\_\.]+\Z/.</p> <p>The built-in layers' short names are defined by AWS OpsWorks Stacks. For more information, see the <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/layers.html">Layer Reference</a> </p>
-- @param _Packages [Strings] <p>An array of <code>Package</code> objects that describe the layer's packages.</p>
-- @param _CustomSecurityGroupIds [Strings] <p>An array containing the layer's custom security group IDs.</p>
-- @param _InstallUpdatesOnBoot [Boolean] <p>Whether to install operating system and package updates when the instance boots. The default value is <code>true</code>. To control when updates are installed, set this value to <code>false</code>. You must then update your instances manually by using <a>CreateDeployment</a> to run the <code>update_dependencies</code> stack command or manually running <code>yum</code> (Amazon Linux) or <code>apt-get</code> (Ubuntu) on the instances. </p> <note> <p>We strongly recommend using the default value of <code>true</code>, to ensure that your instances have the latest security updates.</p> </note>
-- Required parameter: LayerId
function M.UpdateLayerRequest(_LifecycleEventConfiguration, _CustomRecipes, _AutoAssignElasticIps, _Name, _CloudWatchLogsConfiguration, _CustomJson, _VolumeConfigurations, _AutoAssignPublicIps, _EnableAutoHealing, _CustomInstanceProfileArn, _UseEbsOptimizedInstances, _LayerId, _Attributes, _Shortname, _Packages, _CustomSecurityGroupIds, _InstallUpdatesOnBoot, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateLayerRequest")
	local t = { 
		["LifecycleEventConfiguration"] = _LifecycleEventConfiguration,
		["CustomRecipes"] = _CustomRecipes,
		["AutoAssignElasticIps"] = _AutoAssignElasticIps,
		["Name"] = _Name,
		["CloudWatchLogsConfiguration"] = _CloudWatchLogsConfiguration,
		["CustomJson"] = _CustomJson,
		["VolumeConfigurations"] = _VolumeConfigurations,
		["AutoAssignPublicIps"] = _AutoAssignPublicIps,
		["EnableAutoHealing"] = _EnableAutoHealing,
		["CustomInstanceProfileArn"] = _CustomInstanceProfileArn,
		["UseEbsOptimizedInstances"] = _UseEbsOptimizedInstances,
		["LayerId"] = _LayerId,
		["Attributes"] = _Attributes,
		["Shortname"] = _Shortname,
		["Packages"] = _Packages,
		["CustomSecurityGroupIds"] = _CustomSecurityGroupIds,
		["InstallUpdatesOnBoot"] = _InstallUpdatesOnBoot,
	}
	asserts.AssertUpdateLayerRequest(t)
	return t
end

keys.UnassignInstanceRequest = { ["InstanceId"] = true, nil }

function asserts.AssertUnassignInstanceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnassignInstanceRequest to be of type 'table'")
	assert(struct["InstanceId"], "Expected key InstanceId to exist in table")
	if struct["InstanceId"] then asserts.AssertString(struct["InstanceId"]) end
	for k,_ in pairs(struct) do
		assert(keys.UnassignInstanceRequest[k], "UnassignInstanceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnassignInstanceRequest
--  
-- @param _InstanceId [String] <p>The instance ID.</p>
-- Required parameter: InstanceId
function M.UnassignInstanceRequest(_InstanceId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UnassignInstanceRequest")
	local t = { 
		["InstanceId"] = _InstanceId,
	}
	asserts.AssertUnassignInstanceRequest(t)
	return t
end

keys.CreateLayerResult = { ["LayerId"] = true, nil }

function asserts.AssertCreateLayerResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateLayerResult to be of type 'table'")
	if struct["LayerId"] then asserts.AssertString(struct["LayerId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateLayerResult[k], "CreateLayerResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateLayerResult
-- <p>Contains the response to a <code>CreateLayer</code> request.</p>
-- @param _LayerId [String] <p>The layer ID.</p>
function M.CreateLayerResult(_LayerId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateLayerResult")
	local t = { 
		["LayerId"] = _LayerId,
	}
	asserts.AssertCreateLayerResult(t)
	return t
end

keys.CloudWatchLogsConfiguration = { ["LogStreams"] = true, ["Enabled"] = true, nil }

function asserts.AssertCloudWatchLogsConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CloudWatchLogsConfiguration to be of type 'table'")
	if struct["LogStreams"] then asserts.AssertCloudWatchLogsLogStreams(struct["LogStreams"]) end
	if struct["Enabled"] then asserts.AssertBoolean(struct["Enabled"]) end
	for k,_ in pairs(struct) do
		assert(keys.CloudWatchLogsConfiguration[k], "CloudWatchLogsConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CloudWatchLogsConfiguration
-- <p>Describes the Amazon CloudWatch logs configuration for a layer.</p>
-- @param _LogStreams [CloudWatchLogsLogStreams] <p>A list of configuration options for CloudWatch Logs.</p>
-- @param _Enabled [Boolean] <p>Whether CloudWatch Logs is enabled for a layer.</p>
function M.CloudWatchLogsConfiguration(_LogStreams, _Enabled, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CloudWatchLogsConfiguration")
	local t = { 
		["LogStreams"] = _LogStreams,
		["Enabled"] = _Enabled,
	}
	asserts.AssertCloudWatchLogsConfiguration(t)
	return t
end

keys.GrantAccessRequest = { ["InstanceId"] = true, ["ValidForInMinutes"] = true, nil }

function asserts.AssertGrantAccessRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GrantAccessRequest to be of type 'table'")
	assert(struct["InstanceId"], "Expected key InstanceId to exist in table")
	if struct["InstanceId"] then asserts.AssertString(struct["InstanceId"]) end
	if struct["ValidForInMinutes"] then asserts.AssertValidForInMinutes(struct["ValidForInMinutes"]) end
	for k,_ in pairs(struct) do
		assert(keys.GrantAccessRequest[k], "GrantAccessRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GrantAccessRequest
--  
-- @param _InstanceId [String] <p>The instance's AWS OpsWorks Stacks ID.</p>
-- @param _ValidForInMinutes [ValidForInMinutes] <p>The length of time (in minutes) that the grant is valid. When the grant expires at the end of this period, the user will no longer be able to use the credentials to log in. If the user is logged in at the time, he or she automatically will be logged out.</p>
-- Required parameter: InstanceId
function M.GrantAccessRequest(_InstanceId, _ValidForInMinutes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GrantAccessRequest")
	local t = { 
		["InstanceId"] = _InstanceId,
		["ValidForInMinutes"] = _ValidForInMinutes,
	}
	asserts.AssertGrantAccessRequest(t)
	return t
end

keys.RegisterVolumeResult = { ["VolumeId"] = true, nil }

function asserts.AssertRegisterVolumeResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RegisterVolumeResult to be of type 'table'")
	if struct["VolumeId"] then asserts.AssertString(struct["VolumeId"]) end
	for k,_ in pairs(struct) do
		assert(keys.RegisterVolumeResult[k], "RegisterVolumeResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RegisterVolumeResult
-- <p>Contains the response to a <code>RegisterVolume</code> request.</p>
-- @param _VolumeId [String] <p>The volume ID.</p>
function M.RegisterVolumeResult(_VolumeId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RegisterVolumeResult")
	local t = { 
		["VolumeId"] = _VolumeId,
	}
	asserts.AssertRegisterVolumeResult(t)
	return t
end

keys.Volume = { ["Status"] = true, ["AvailabilityZone"] = true, ["Name"] = true, ["InstanceId"] = true, ["Region"] = true, ["VolumeType"] = true, ["VolumeId"] = true, ["Device"] = true, ["RaidArrayId"] = true, ["Ec2VolumeId"] = true, ["MountPoint"] = true, ["Iops"] = true, ["Size"] = true, nil }

function asserts.AssertVolume(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Volume to be of type 'table'")
	if struct["Status"] then asserts.AssertString(struct["Status"]) end
	if struct["AvailabilityZone"] then asserts.AssertString(struct["AvailabilityZone"]) end
	if struct["Name"] then asserts.AssertString(struct["Name"]) end
	if struct["InstanceId"] then asserts.AssertString(struct["InstanceId"]) end
	if struct["Region"] then asserts.AssertString(struct["Region"]) end
	if struct["VolumeType"] then asserts.AssertString(struct["VolumeType"]) end
	if struct["VolumeId"] then asserts.AssertString(struct["VolumeId"]) end
	if struct["Device"] then asserts.AssertString(struct["Device"]) end
	if struct["RaidArrayId"] then asserts.AssertString(struct["RaidArrayId"]) end
	if struct["Ec2VolumeId"] then asserts.AssertString(struct["Ec2VolumeId"]) end
	if struct["MountPoint"] then asserts.AssertString(struct["MountPoint"]) end
	if struct["Iops"] then asserts.AssertInteger(struct["Iops"]) end
	if struct["Size"] then asserts.AssertInteger(struct["Size"]) end
	for k,_ in pairs(struct) do
		assert(keys.Volume[k], "Volume contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Volume
-- <p>Describes an instance's Amazon EBS volume.</p>
-- @param _Status [String] <p>The value returned by <a href="http://docs.aws.amazon.com/AWSEC2/latest/APIReference/ApiReference-query-DescribeVolumes.html">DescribeVolumes</a>.</p>
-- @param _AvailabilityZone [String] <p>The volume Availability Zone. For more information, see <a href="http://docs.aws.amazon.com/general/latest/gr/rande.html">Regions and Endpoints</a>.</p>
-- @param _Name [String] <p>The volume name.</p>
-- @param _InstanceId [String] <p>The instance ID.</p>
-- @param _Region [String] <p>The AWS region. For more information about AWS regions, see <a href="http://docs.aws.amazon.com/general/latest/gr/rande.html">Regions and Endpoints</a>.</p>
-- @param _VolumeType [String] <p>The volume type, standard or PIOPS.</p>
-- @param _VolumeId [String] <p>The volume ID.</p>
-- @param _Device [String] <p>The device name.</p>
-- @param _RaidArrayId [String] <p>The RAID array ID.</p>
-- @param _Ec2VolumeId [String] <p>The Amazon EC2 volume ID.</p>
-- @param _MountPoint [String] <p>The volume mount point. For example, "/mnt/disk1".</p>
-- @param _Iops [Integer] <p>For PIOPS volumes, the IOPS per disk.</p>
-- @param _Size [Integer] <p>The volume size.</p>
function M.Volume(_Status, _AvailabilityZone, _Name, _InstanceId, _Region, _VolumeType, _VolumeId, _Device, _RaidArrayId, _Ec2VolumeId, _MountPoint, _Iops, _Size, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Volume")
	local t = { 
		["Status"] = _Status,
		["AvailabilityZone"] = _AvailabilityZone,
		["Name"] = _Name,
		["InstanceId"] = _InstanceId,
		["Region"] = _Region,
		["VolumeType"] = _VolumeType,
		["VolumeId"] = _VolumeId,
		["Device"] = _Device,
		["RaidArrayId"] = _RaidArrayId,
		["Ec2VolumeId"] = _Ec2VolumeId,
		["MountPoint"] = _MountPoint,
		["Iops"] = _Iops,
		["Size"] = _Size,
	}
	asserts.AssertVolume(t)
	return t
end

keys.DeleteAppRequest = { ["AppId"] = true, nil }

function asserts.AssertDeleteAppRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteAppRequest to be of type 'table'")
	assert(struct["AppId"], "Expected key AppId to exist in table")
	if struct["AppId"] then asserts.AssertString(struct["AppId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteAppRequest[k], "DeleteAppRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteAppRequest
--  
-- @param _AppId [String] <p>The app ID.</p>
-- Required parameter: AppId
function M.DeleteAppRequest(_AppId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteAppRequest")
	local t = { 
		["AppId"] = _AppId,
	}
	asserts.AssertDeleteAppRequest(t)
	return t
end

keys.GrantAccessResult = { ["TemporaryCredential"] = true, nil }

function asserts.AssertGrantAccessResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GrantAccessResult to be of type 'table'")
	if struct["TemporaryCredential"] then asserts.AssertTemporaryCredential(struct["TemporaryCredential"]) end
	for k,_ in pairs(struct) do
		assert(keys.GrantAccessResult[k], "GrantAccessResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GrantAccessResult
-- <p>Contains the response to a <code>GrantAccess</code> request.</p>
-- @param _TemporaryCredential [TemporaryCredential] <p>A <code>TemporaryCredential</code> object that contains the data needed to log in to the instance by RDP clients, such as the Microsoft Remote Desktop Connection.</p>
function M.GrantAccessResult(_TemporaryCredential, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GrantAccessResult")
	local t = { 
		["TemporaryCredential"] = _TemporaryCredential,
	}
	asserts.AssertGrantAccessResult(t)
	return t
end

keys.UpdateInstanceRequest = { ["AmiId"] = true, ["LayerIds"] = true, ["InstanceId"] = true, ["SshKeyName"] = true, ["Hostname"] = true, ["EbsOptimized"] = true, ["Architecture"] = true, ["AutoScalingType"] = true, ["InstallUpdatesOnBoot"] = true, ["Os"] = true, ["InstanceType"] = true, ["AgentVersion"] = true, nil }

function asserts.AssertUpdateInstanceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateInstanceRequest to be of type 'table'")
	assert(struct["InstanceId"], "Expected key InstanceId to exist in table")
	if struct["AmiId"] then asserts.AssertString(struct["AmiId"]) end
	if struct["LayerIds"] then asserts.AssertStrings(struct["LayerIds"]) end
	if struct["InstanceId"] then asserts.AssertString(struct["InstanceId"]) end
	if struct["SshKeyName"] then asserts.AssertString(struct["SshKeyName"]) end
	if struct["Hostname"] then asserts.AssertString(struct["Hostname"]) end
	if struct["EbsOptimized"] then asserts.AssertBoolean(struct["EbsOptimized"]) end
	if struct["Architecture"] then asserts.AssertArchitecture(struct["Architecture"]) end
	if struct["AutoScalingType"] then asserts.AssertAutoScalingType(struct["AutoScalingType"]) end
	if struct["InstallUpdatesOnBoot"] then asserts.AssertBoolean(struct["InstallUpdatesOnBoot"]) end
	if struct["Os"] then asserts.AssertString(struct["Os"]) end
	if struct["InstanceType"] then asserts.AssertString(struct["InstanceType"]) end
	if struct["AgentVersion"] then asserts.AssertString(struct["AgentVersion"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateInstanceRequest[k], "UpdateInstanceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateInstanceRequest
--  
-- @param _AmiId [String] <p>The ID of the AMI that was used to create the instance. The value of this parameter must be the same AMI ID that the instance is already using. You cannot apply a new AMI to an instance by running UpdateInstance. UpdateInstance does not work on instances that are using custom AMIs. </p>
-- @param _LayerIds [Strings] <p>The instance's layer IDs.</p>
-- @param _InstanceId [String] <p>The instance ID.</p>
-- @param _SshKeyName [String] <p>The instance's Amazon EC2 key name.</p>
-- @param _Hostname [String] <p>The instance host name.</p>
-- @param _EbsOptimized [Boolean] <p>This property cannot be updated.</p>
-- @param _Architecture [Architecture] <p>The instance architecture. Instance types do not necessarily support both architectures. For a list of the architectures that are supported by the different instance types, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html">Instance Families and Types</a>.</p>
-- @param _AutoScalingType [AutoScalingType] <p>For load-based or time-based instances, the type. Windows stacks can use only time-based instances.</p>
-- @param _InstallUpdatesOnBoot [Boolean] <p>Whether to install operating system and package updates when the instance boots. The default value is <code>true</code>. To control when updates are installed, set this value to <code>false</code>. You must then update your instances manually by using <a>CreateDeployment</a> to run the <code>update_dependencies</code> stack command or by manually running <code>yum</code> (Amazon Linux) or <code>apt-get</code> (Ubuntu) on the instances. </p> <note> <p>We strongly recommend using the default value of <code>true</code>, to ensure that your instances have the latest security updates.</p> </note>
-- @param _Os [String] <p>The instance's operating system, which must be set to one of the following. You cannot update an instance that is using a custom AMI.</p> <ul> <li> <p>A supported Linux operating system: An Amazon Linux version, such as <code>Amazon Linux 2017.03</code>, <code>Amazon Linux 2016.09</code>, <code>Amazon Linux 2016.03</code>, <code>Amazon Linux 2015.09</code>, or <code>Amazon Linux 2015.03</code>.</p> </li> <li> <p>A supported Ubuntu operating system, such as <code>Ubuntu 16.04 LTS</code>, <code>Ubuntu 14.04 LTS</code>, or <code>Ubuntu 12.04 LTS</code>.</p> </li> <li> <p> <code>CentOS Linux 7</code> </p> </li> <li> <p> <code>Red Hat Enterprise Linux 7</code> </p> </li> <li> <p>A supported Windows operating system, such as <code>Microsoft Windows Server 2012 R2 Base</code>, <code>Microsoft Windows Server 2012 R2 with SQL Server Express</code>, <code>Microsoft Windows Server 2012 R2 with SQL Server Standard</code>, or <code>Microsoft Windows Server 2012 R2 with SQL Server Web</code>.</p> </li> </ul> <p>For more information on the supported operating systems, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-os.html">AWS OpsWorks Stacks Operating Systems</a>.</p> <p>The default option is the current Amazon Linux version. If you set this parameter to <code>Custom</code>, you must use the AmiId parameter to specify the custom AMI that you want to use. For more information on the supported operating systems, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-os.html">Operating Systems</a>. For more information on how to use custom AMIs with OpsWorks, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-custom-ami.html">Using Custom AMIs</a>.</p> <note> <p>You can specify a different Linux operating system for the updated stack, but you cannot change from Linux to Windows or Windows to Linux.</p> </note>
-- @param _InstanceType [String] <p>The instance type, such as <code>t2.micro</code>. For a list of supported instance types, open the stack in the console, choose <b>Instances</b>, and choose <b>+ Instance</b>. The <b>Size</b> list contains the currently supported types. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html">Instance Families and Types</a>. The parameter values that you use to specify the various types are in the <b>API Name</b> column of the <b>Available Instance Types</b> table.</p>
-- @param _AgentVersion [String] <p>The default AWS OpsWorks Stacks agent version. You have the following options:</p> <ul> <li> <p> <code>INHERIT</code> - Use the stack's default agent version setting.</p> </li> <li> <p> <i>version_number</i> - Use the specified agent version. This value overrides the stack's default setting. To update the agent version, you must edit the instance configuration and specify a new version. AWS OpsWorks Stacks then automatically installs that version on the instance.</p> </li> </ul> <p>The default setting is <code>INHERIT</code>. To specify an agent version, you must use the complete version number, not the abbreviated number shown on the console. For a list of available agent version numbers, call <a>DescribeAgentVersions</a>.</p> <p>AgentVersion cannot be set to Chef 12.2.</p>
-- Required parameter: InstanceId
function M.UpdateInstanceRequest(_AmiId, _LayerIds, _InstanceId, _SshKeyName, _Hostname, _EbsOptimized, _Architecture, _AutoScalingType, _InstallUpdatesOnBoot, _Os, _InstanceType, _AgentVersion, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateInstanceRequest")
	local t = { 
		["AmiId"] = _AmiId,
		["LayerIds"] = _LayerIds,
		["InstanceId"] = _InstanceId,
		["SshKeyName"] = _SshKeyName,
		["Hostname"] = _Hostname,
		["EbsOptimized"] = _EbsOptimized,
		["Architecture"] = _Architecture,
		["AutoScalingType"] = _AutoScalingType,
		["InstallUpdatesOnBoot"] = _InstallUpdatesOnBoot,
		["Os"] = _Os,
		["InstanceType"] = _InstanceType,
		["AgentVersion"] = _AgentVersion,
	}
	asserts.AssertUpdateInstanceRequest(t)
	return t
end

keys.Deployment = { ["StackId"] = true, ["Comment"] = true, ["CompletedAt"] = true, ["CustomJson"] = true, ["Status"] = true, ["IamUserArn"] = true, ["DeploymentId"] = true, ["Command"] = true, ["InstanceIds"] = true, ["AppId"] = true, ["Duration"] = true, ["CreatedAt"] = true, nil }

function asserts.AssertDeployment(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Deployment to be of type 'table'")
	if struct["StackId"] then asserts.AssertString(struct["StackId"]) end
	if struct["Comment"] then asserts.AssertString(struct["Comment"]) end
	if struct["CompletedAt"] then asserts.AssertDateTime(struct["CompletedAt"]) end
	if struct["CustomJson"] then asserts.AssertString(struct["CustomJson"]) end
	if struct["Status"] then asserts.AssertString(struct["Status"]) end
	if struct["IamUserArn"] then asserts.AssertString(struct["IamUserArn"]) end
	if struct["DeploymentId"] then asserts.AssertString(struct["DeploymentId"]) end
	if struct["Command"] then asserts.AssertDeploymentCommand(struct["Command"]) end
	if struct["InstanceIds"] then asserts.AssertStrings(struct["InstanceIds"]) end
	if struct["AppId"] then asserts.AssertString(struct["AppId"]) end
	if struct["Duration"] then asserts.AssertInteger(struct["Duration"]) end
	if struct["CreatedAt"] then asserts.AssertDateTime(struct["CreatedAt"]) end
	for k,_ in pairs(struct) do
		assert(keys.Deployment[k], "Deployment contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Deployment
-- <p>Describes a deployment of a stack or app.</p>
-- @param _StackId [String] <p>The stack ID.</p>
-- @param _Comment [String] <p>A user-defined comment.</p>
-- @param _CompletedAt [DateTime] <p>Date when the deployment completed.</p>
-- @param _CustomJson [String] <p>A string that contains user-defined custom JSON. It can be used to override the corresponding default stack configuration attribute values for stack or to pass data to recipes. The string should be in the following format:</p> <p> <code>"{\"key1\": \"value1\", \"key2\": \"value2\",...}"</code> </p> <p>For more information on custom JSON, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-json.html">Use Custom JSON to Modify the Stack Configuration Attributes</a>.</p>
-- @param _Status [String] <p>The deployment status:</p> <ul> <li> <p>running</p> </li> <li> <p>successful</p> </li> <li> <p>failed</p> </li> </ul>
-- @param _IamUserArn [String] <p>The user's IAM ARN.</p>
-- @param _DeploymentId [String] <p>The deployment ID.</p>
-- @param _Command [DeploymentCommand] 
-- @param _InstanceIds [Strings] <p>The IDs of the target instances.</p>
-- @param _AppId [String] <p>The app ID.</p>
-- @param _Duration [Integer] <p>The deployment duration.</p>
-- @param _CreatedAt [DateTime] <p>Date when the deployment was created.</p>
function M.Deployment(_StackId, _Comment, _CompletedAt, _CustomJson, _Status, _IamUserArn, _DeploymentId, _Command, _InstanceIds, _AppId, _Duration, _CreatedAt, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Deployment")
	local t = { 
		["StackId"] = _StackId,
		["Comment"] = _Comment,
		["CompletedAt"] = _CompletedAt,
		["CustomJson"] = _CustomJson,
		["Status"] = _Status,
		["IamUserArn"] = _IamUserArn,
		["DeploymentId"] = _DeploymentId,
		["Command"] = _Command,
		["InstanceIds"] = _InstanceIds,
		["AppId"] = _AppId,
		["Duration"] = _Duration,
		["CreatedAt"] = _CreatedAt,
	}
	asserts.AssertDeployment(t)
	return t
end

keys.DescribeLayersResult = { ["Layers"] = true, nil }

function asserts.AssertDescribeLayersResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeLayersResult to be of type 'table'")
	if struct["Layers"] then asserts.AssertLayers(struct["Layers"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeLayersResult[k], "DescribeLayersResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeLayersResult
-- <p>Contains the response to a <code>DescribeLayers</code> request.</p>
-- @param _Layers [Layers] <p>An array of <code>Layer</code> objects that describe the layers.</p>
function M.DescribeLayersResult(_Layers, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeLayersResult")
	local t = { 
		["Layers"] = _Layers,
	}
	asserts.AssertDescribeLayersResult(t)
	return t
end

keys.DeregisterEcsClusterRequest = { ["EcsClusterArn"] = true, nil }

function asserts.AssertDeregisterEcsClusterRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeregisterEcsClusterRequest to be of type 'table'")
	assert(struct["EcsClusterArn"], "Expected key EcsClusterArn to exist in table")
	if struct["EcsClusterArn"] then asserts.AssertString(struct["EcsClusterArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeregisterEcsClusterRequest[k], "DeregisterEcsClusterRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeregisterEcsClusterRequest
--  
-- @param _EcsClusterArn [String] <p>The cluster's ARN.</p>
-- Required parameter: EcsClusterArn
function M.DeregisterEcsClusterRequest(_EcsClusterArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeregisterEcsClusterRequest")
	local t = { 
		["EcsClusterArn"] = _EcsClusterArn,
	}
	asserts.AssertDeregisterEcsClusterRequest(t)
	return t
end

keys.DescribeStackProvisioningParametersResult = { ["AgentInstallerUrl"] = true, ["Parameters"] = true, nil }

function asserts.AssertDescribeStackProvisioningParametersResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeStackProvisioningParametersResult to be of type 'table'")
	if struct["AgentInstallerUrl"] then asserts.AssertString(struct["AgentInstallerUrl"]) end
	if struct["Parameters"] then asserts.AssertParameters(struct["Parameters"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeStackProvisioningParametersResult[k], "DescribeStackProvisioningParametersResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeStackProvisioningParametersResult
-- <p>Contains the response to a <code>DescribeStackProvisioningParameters</code> request.</p>
-- @param _AgentInstallerUrl [String] <p>The AWS OpsWorks Stacks agent installer's URL.</p>
-- @param _Parameters [Parameters] <p>An embedded object that contains the provisioning parameters.</p>
function M.DescribeStackProvisioningParametersResult(_AgentInstallerUrl, _Parameters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeStackProvisioningParametersResult")
	local t = { 
		["AgentInstallerUrl"] = _AgentInstallerUrl,
		["Parameters"] = _Parameters,
	}
	asserts.AssertDescribeStackProvisioningParametersResult(t)
	return t
end

keys.Stack = { ["StackId"] = true, ["HostnameTheme"] = true, ["UseCustomCookbooks"] = true, ["DefaultSshKeyName"] = true, ["ChefConfiguration"] = true, ["UseOpsworksSecurityGroups"] = true, ["ServiceRoleArn"] = true, ["VpcId"] = true, ["ConfigurationManager"] = true, ["CustomCookbooksSource"] = true, ["AgentVersion"] = true, ["DefaultAvailabilityZone"] = true, ["CreatedAt"] = true, ["Name"] = true, ["Region"] = true, ["DefaultInstanceProfileArn"] = true, ["Attributes"] = true, ["DefaultOs"] = true, ["DefaultSubnetId"] = true, ["DefaultRootDeviceType"] = true, ["CustomJson"] = true, ["Arn"] = true, nil }

function asserts.AssertStack(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Stack to be of type 'table'")
	if struct["StackId"] then asserts.AssertString(struct["StackId"]) end
	if struct["HostnameTheme"] then asserts.AssertString(struct["HostnameTheme"]) end
	if struct["UseCustomCookbooks"] then asserts.AssertBoolean(struct["UseCustomCookbooks"]) end
	if struct["DefaultSshKeyName"] then asserts.AssertString(struct["DefaultSshKeyName"]) end
	if struct["ChefConfiguration"] then asserts.AssertChefConfiguration(struct["ChefConfiguration"]) end
	if struct["UseOpsworksSecurityGroups"] then asserts.AssertBoolean(struct["UseOpsworksSecurityGroups"]) end
	if struct["ServiceRoleArn"] then asserts.AssertString(struct["ServiceRoleArn"]) end
	if struct["VpcId"] then asserts.AssertString(struct["VpcId"]) end
	if struct["ConfigurationManager"] then asserts.AssertStackConfigurationManager(struct["ConfigurationManager"]) end
	if struct["CustomCookbooksSource"] then asserts.AssertSource(struct["CustomCookbooksSource"]) end
	if struct["AgentVersion"] then asserts.AssertString(struct["AgentVersion"]) end
	if struct["DefaultAvailabilityZone"] then asserts.AssertString(struct["DefaultAvailabilityZone"]) end
	if struct["CreatedAt"] then asserts.AssertDateTime(struct["CreatedAt"]) end
	if struct["Name"] then asserts.AssertString(struct["Name"]) end
	if struct["Region"] then asserts.AssertString(struct["Region"]) end
	if struct["DefaultInstanceProfileArn"] then asserts.AssertString(struct["DefaultInstanceProfileArn"]) end
	if struct["Attributes"] then asserts.AssertStackAttributes(struct["Attributes"]) end
	if struct["DefaultOs"] then asserts.AssertString(struct["DefaultOs"]) end
	if struct["DefaultSubnetId"] then asserts.AssertString(struct["DefaultSubnetId"]) end
	if struct["DefaultRootDeviceType"] then asserts.AssertRootDeviceType(struct["DefaultRootDeviceType"]) end
	if struct["CustomJson"] then asserts.AssertString(struct["CustomJson"]) end
	if struct["Arn"] then asserts.AssertString(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.Stack[k], "Stack contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Stack
-- <p>Describes a stack.</p>
-- @param _StackId [String] <p>The stack ID.</p>
-- @param _HostnameTheme [String] <p>The stack host name theme, with spaces replaced by underscores.</p>
-- @param _UseCustomCookbooks [Boolean] <p>Whether the stack uses custom cookbooks.</p>
-- @param _DefaultSshKeyName [String] <p>A default Amazon EC2 key pair for the stack's instances. You can override this value when you create or update an instance.</p>
-- @param _ChefConfiguration [ChefConfiguration] <p>A <code>ChefConfiguration</code> object that specifies whether to enable Berkshelf and the Berkshelf version. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-creating.html">Create a New Stack</a>.</p>
-- @param _UseOpsworksSecurityGroups [Boolean] <p>Whether the stack automatically associates the AWS OpsWorks Stacks built-in security groups with the stack's layers.</p>
-- @param _ServiceRoleArn [String] <p>The stack AWS Identity and Access Management (IAM) role.</p>
-- @param _VpcId [String] <p>The VPC ID; applicable only if the stack is running in a VPC.</p>
-- @param _ConfigurationManager [StackConfigurationManager] <p>The configuration manager.</p>
-- @param _CustomCookbooksSource [Source] 
-- @param _AgentVersion [String] <p>The agent version. This parameter is set to <code>LATEST</code> for auto-update. or a version number for a fixed agent version.</p>
-- @param _DefaultAvailabilityZone [String] <p>The stack's default Availability Zone. For more information, see <a href="http://docs.aws.amazon.com/general/latest/gr/rande.html">Regions and Endpoints</a>.</p>
-- @param _CreatedAt [DateTime] <p>The date when the stack was created.</p>
-- @param _Name [String] <p>The stack name.</p>
-- @param _Region [String] <p>The stack AWS region, such as "ap-northeast-2". For more information about AWS regions, see <a href="http://docs.aws.amazon.com/general/latest/gr/rande.html">Regions and Endpoints</a>.</p>
-- @param _DefaultInstanceProfileArn [String] <p>The ARN of an IAM profile that is the default profile for all of the stack's EC2 instances. For more information about IAM ARNs, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">Using Identifiers</a>.</p>
-- @param _Attributes [StackAttributes] <p>The stack's attributes.</p>
-- @param _DefaultOs [String] <p>The stack's default operating system.</p>
-- @param _DefaultSubnetId [String] <p>The default subnet ID; applicable only if the stack is running in a VPC.</p>
-- @param _DefaultRootDeviceType [RootDeviceType] <p>The default root device type. This value is used by default for all instances in the stack, but you can override it when you create an instance. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ComponentsAMIs.html#storage-for-the-root-device">Storage for the Root Device</a>.</p>
-- @param _CustomJson [String] <p>A JSON object that contains user-defined attributes to be added to the stack configuration and deployment attributes. You can use custom JSON to override the corresponding default stack configuration attribute values or to pass data to recipes. The string should be in the following format:</p> <p> <code>"{\"key1\": \"value1\", \"key2\": \"value2\",...}"</code> </p> <p>For more information on custom JSON, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-json.html">Use Custom JSON to Modify the Stack Configuration Attributes</a>.</p>
-- @param _Arn [String] <p>The stack's ARN.</p>
function M.Stack(_StackId, _HostnameTheme, _UseCustomCookbooks, _DefaultSshKeyName, _ChefConfiguration, _UseOpsworksSecurityGroups, _ServiceRoleArn, _VpcId, _ConfigurationManager, _CustomCookbooksSource, _AgentVersion, _DefaultAvailabilityZone, _CreatedAt, _Name, _Region, _DefaultInstanceProfileArn, _Attributes, _DefaultOs, _DefaultSubnetId, _DefaultRootDeviceType, _CustomJson, _Arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Stack")
	local t = { 
		["StackId"] = _StackId,
		["HostnameTheme"] = _HostnameTheme,
		["UseCustomCookbooks"] = _UseCustomCookbooks,
		["DefaultSshKeyName"] = _DefaultSshKeyName,
		["ChefConfiguration"] = _ChefConfiguration,
		["UseOpsworksSecurityGroups"] = _UseOpsworksSecurityGroups,
		["ServiceRoleArn"] = _ServiceRoleArn,
		["VpcId"] = _VpcId,
		["ConfigurationManager"] = _ConfigurationManager,
		["CustomCookbooksSource"] = _CustomCookbooksSource,
		["AgentVersion"] = _AgentVersion,
		["DefaultAvailabilityZone"] = _DefaultAvailabilityZone,
		["CreatedAt"] = _CreatedAt,
		["Name"] = _Name,
		["Region"] = _Region,
		["DefaultInstanceProfileArn"] = _DefaultInstanceProfileArn,
		["Attributes"] = _Attributes,
		["DefaultOs"] = _DefaultOs,
		["DefaultSubnetId"] = _DefaultSubnetId,
		["DefaultRootDeviceType"] = _DefaultRootDeviceType,
		["CustomJson"] = _CustomJson,
		["Arn"] = _Arn,
	}
	asserts.AssertStack(t)
	return t
end

keys.RegisterVolumeRequest = { ["Ec2VolumeId"] = true, ["StackId"] = true, nil }

function asserts.AssertRegisterVolumeRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RegisterVolumeRequest to be of type 'table'")
	assert(struct["StackId"], "Expected key StackId to exist in table")
	if struct["Ec2VolumeId"] then asserts.AssertString(struct["Ec2VolumeId"]) end
	if struct["StackId"] then asserts.AssertString(struct["StackId"]) end
	for k,_ in pairs(struct) do
		assert(keys.RegisterVolumeRequest[k], "RegisterVolumeRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RegisterVolumeRequest
--  
-- @param _Ec2VolumeId [String] <p>The Amazon EBS volume ID.</p>
-- @param _StackId [String] <p>The stack ID.</p>
-- Required parameter: StackId
function M.RegisterVolumeRequest(_Ec2VolumeId, _StackId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RegisterVolumeRequest")
	local t = { 
		["Ec2VolumeId"] = _Ec2VolumeId,
		["StackId"] = _StackId,
	}
	asserts.AssertRegisterVolumeRequest(t)
	return t
end

keys.RegisterElasticIpResult = { ["ElasticIp"] = true, nil }

function asserts.AssertRegisterElasticIpResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RegisterElasticIpResult to be of type 'table'")
	if struct["ElasticIp"] then asserts.AssertString(struct["ElasticIp"]) end
	for k,_ in pairs(struct) do
		assert(keys.RegisterElasticIpResult[k], "RegisterElasticIpResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RegisterElasticIpResult
-- <p>Contains the response to a <code>RegisterElasticIp</code> request.</p>
-- @param _ElasticIp [String] <p>The Elastic IP address.</p>
function M.RegisterElasticIpResult(_ElasticIp, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RegisterElasticIpResult")
	local t = { 
		["ElasticIp"] = _ElasticIp,
	}
	asserts.AssertRegisterElasticIpResult(t)
	return t
end

keys.DescribeLoadBasedAutoScalingRequest = { ["LayerIds"] = true, nil }

function asserts.AssertDescribeLoadBasedAutoScalingRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeLoadBasedAutoScalingRequest to be of type 'table'")
	assert(struct["LayerIds"], "Expected key LayerIds to exist in table")
	if struct["LayerIds"] then asserts.AssertStrings(struct["LayerIds"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeLoadBasedAutoScalingRequest[k], "DescribeLoadBasedAutoScalingRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeLoadBasedAutoScalingRequest
--  
-- @param _LayerIds [Strings] <p>An array of layer IDs.</p>
-- Required parameter: LayerIds
function M.DescribeLoadBasedAutoScalingRequest(_LayerIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeLoadBasedAutoScalingRequest")
	local t = { 
		["LayerIds"] = _LayerIds,
	}
	asserts.AssertDescribeLoadBasedAutoScalingRequest(t)
	return t
end

keys.LifecycleEventConfiguration = { ["Shutdown"] = true, nil }

function asserts.AssertLifecycleEventConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LifecycleEventConfiguration to be of type 'table'")
	if struct["Shutdown"] then asserts.AssertShutdownEventConfiguration(struct["Shutdown"]) end
	for k,_ in pairs(struct) do
		assert(keys.LifecycleEventConfiguration[k], "LifecycleEventConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LifecycleEventConfiguration
-- <p>Specifies the lifecycle event configuration</p>
-- @param _Shutdown [ShutdownEventConfiguration] <p>A <code>ShutdownEventConfiguration</code> object that specifies the Shutdown event configuration.</p>
function M.LifecycleEventConfiguration(_Shutdown, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LifecycleEventConfiguration")
	local t = { 
		["Shutdown"] = _Shutdown,
	}
	asserts.AssertLifecycleEventConfiguration(t)
	return t
end

keys.CloudWatchLogsLogStream = { ["InitialPosition"] = true, ["Encoding"] = true, ["BatchSize"] = true, ["BufferDuration"] = true, ["MultiLineStartPattern"] = true, ["LogGroupName"] = true, ["File"] = true, ["BatchCount"] = true, ["DatetimeFormat"] = true, ["TimeZone"] = true, ["FileFingerprintLines"] = true, nil }

function asserts.AssertCloudWatchLogsLogStream(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CloudWatchLogsLogStream to be of type 'table'")
	if struct["InitialPosition"] then asserts.AssertCloudWatchLogsInitialPosition(struct["InitialPosition"]) end
	if struct["Encoding"] then asserts.AssertCloudWatchLogsEncoding(struct["Encoding"]) end
	if struct["BatchSize"] then asserts.AssertInteger(struct["BatchSize"]) end
	if struct["BufferDuration"] then asserts.AssertInteger(struct["BufferDuration"]) end
	if struct["MultiLineStartPattern"] then asserts.AssertString(struct["MultiLineStartPattern"]) end
	if struct["LogGroupName"] then asserts.AssertString(struct["LogGroupName"]) end
	if struct["File"] then asserts.AssertString(struct["File"]) end
	if struct["BatchCount"] then asserts.AssertInteger(struct["BatchCount"]) end
	if struct["DatetimeFormat"] then asserts.AssertString(struct["DatetimeFormat"]) end
	if struct["TimeZone"] then asserts.AssertCloudWatchLogsTimeZone(struct["TimeZone"]) end
	if struct["FileFingerprintLines"] then asserts.AssertString(struct["FileFingerprintLines"]) end
	for k,_ in pairs(struct) do
		assert(keys.CloudWatchLogsLogStream[k], "CloudWatchLogsLogStream contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CloudWatchLogsLogStream
-- <p>Describes the Amazon CloudWatch logs configuration for a layer. For detailed information about members of this data type, see the <a href="http://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/AgentReference.html">CloudWatch Logs Agent Reference</a>.</p>
-- @param _InitialPosition [CloudWatchLogsInitialPosition] <p>Specifies where to start to read data (start_of_file or end_of_file). The default is start_of_file. This setting is only used if there is no state persisted for that log stream.</p>
-- @param _Encoding [CloudWatchLogsEncoding] <p>Specifies the encoding of the log file so that the file can be read correctly. The default is <code>utf_8</code>. Encodings supported by Python <code>codecs.decode()</code> can be used here.</p>
-- @param _BatchSize [Integer] <p>Specifies the maximum size of log events in a batch, in bytes, up to 1048576 bytes. The default value is 32768 bytes. This size is calculated as the sum of all event messages in UTF-8, plus 26 bytes for each log event.</p>
-- @param _BufferDuration [Integer] <p>Specifies the time duration for the batching of log events. The minimum value is 5000ms and default value is 5000ms.</p>
-- @param _MultiLineStartPattern [String] <p>Specifies the pattern for identifying the start of a log message.</p>
-- @param _LogGroupName [String] <p>Specifies the destination log group. A log group is created automatically if it doesn't already exist. Log group names can be between 1 and 512 characters long. Allowed characters include a-z, A-Z, 0-9, '_' (underscore), '-' (hyphen), '/' (forward slash), and '.' (period).</p>
-- @param _File [String] <p>Specifies log files that you want to push to CloudWatch Logs.</p> <p> <code>File</code> can point to a specific file or multiple files (by using wild card characters such as <code>/var/log/system.log*</code>). Only the latest file is pushed to CloudWatch Logs, based on file modification time. We recommend that you use wild card characters to specify a series of files of the same type, such as <code>access_log.2014-06-01-01</code>, <code>access_log.2014-06-01-02</code>, and so on by using a pattern like <code>access_log.*</code>. Don't use a wildcard to match multiple file types, such as <code>access_log_80</code> and <code>access_log_443</code>. To specify multiple, different file types, add another log stream entry to the configuration file, so that each log file type is stored in a different log group.</p> <p>Zipped files are not supported.</p>
-- @param _BatchCount [Integer] <p>Specifies the max number of log events in a batch, up to 10000. The default value is 1000.</p>
-- @param _DatetimeFormat [String] <p>Specifies how the time stamp is extracted from logs. For more information, see the <a href="http://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/AgentReference.html">CloudWatch Logs Agent Reference</a>.</p>
-- @param _TimeZone [CloudWatchLogsTimeZone] <p>Specifies the time zone of log event time stamps.</p>
-- @param _FileFingerprintLines [String] <p>Specifies the range of lines for identifying a file. The valid values are one number, or two dash-delimited numbers, such as '1', '2-5'. The default value is '1', meaning the first line is used to calculate the fingerprint. Fingerprint lines are not sent to CloudWatch Logs unless all specified lines are available.</p>
function M.CloudWatchLogsLogStream(_InitialPosition, _Encoding, _BatchSize, _BufferDuration, _MultiLineStartPattern, _LogGroupName, _File, _BatchCount, _DatetimeFormat, _TimeZone, _FileFingerprintLines, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CloudWatchLogsLogStream")
	local t = { 
		["InitialPosition"] = _InitialPosition,
		["Encoding"] = _Encoding,
		["BatchSize"] = _BatchSize,
		["BufferDuration"] = _BufferDuration,
		["MultiLineStartPattern"] = _MultiLineStartPattern,
		["LogGroupName"] = _LogGroupName,
		["File"] = _File,
		["BatchCount"] = _BatchCount,
		["DatetimeFormat"] = _DatetimeFormat,
		["TimeZone"] = _TimeZone,
		["FileFingerprintLines"] = _FileFingerprintLines,
	}
	asserts.AssertCloudWatchLogsLogStream(t)
	return t
end

keys.TimeBasedAutoScalingConfiguration = { ["InstanceId"] = true, ["AutoScalingSchedule"] = true, nil }

function asserts.AssertTimeBasedAutoScalingConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TimeBasedAutoScalingConfiguration to be of type 'table'")
	if struct["InstanceId"] then asserts.AssertString(struct["InstanceId"]) end
	if struct["AutoScalingSchedule"] then asserts.AssertWeeklyAutoScalingSchedule(struct["AutoScalingSchedule"]) end
	for k,_ in pairs(struct) do
		assert(keys.TimeBasedAutoScalingConfiguration[k], "TimeBasedAutoScalingConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TimeBasedAutoScalingConfiguration
-- <p>Describes an instance's time-based auto scaling configuration.</p>
-- @param _InstanceId [String] <p>The instance ID.</p>
-- @param _AutoScalingSchedule [WeeklyAutoScalingSchedule] <p>A <code>WeeklyAutoScalingSchedule</code> object with the instance schedule.</p>
function M.TimeBasedAutoScalingConfiguration(_InstanceId, _AutoScalingSchedule, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TimeBasedAutoScalingConfiguration")
	local t = { 
		["InstanceId"] = _InstanceId,
		["AutoScalingSchedule"] = _AutoScalingSchedule,
	}
	asserts.AssertTimeBasedAutoScalingConfiguration(t)
	return t
end

keys.DeregisterVolumeRequest = { ["VolumeId"] = true, nil }

function asserts.AssertDeregisterVolumeRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeregisterVolumeRequest to be of type 'table'")
	assert(struct["VolumeId"], "Expected key VolumeId to exist in table")
	if struct["VolumeId"] then asserts.AssertString(struct["VolumeId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeregisterVolumeRequest[k], "DeregisterVolumeRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeregisterVolumeRequest
--  
-- @param _VolumeId [String] <p>The AWS OpsWorks Stacks volume ID, which is the GUID that AWS OpsWorks Stacks assigned to the instance when you registered the volume with the stack, not the Amazon EC2 volume ID.</p>
-- Required parameter: VolumeId
function M.DeregisterVolumeRequest(_VolumeId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeregisterVolumeRequest")
	local t = { 
		["VolumeId"] = _VolumeId,
	}
	asserts.AssertDeregisterVolumeRequest(t)
	return t
end

keys.RegisterInstanceRequest = { ["StackId"] = true, ["RsaPublicKeyFingerprint"] = true, ["RsaPublicKey"] = true, ["Hostname"] = true, ["PrivateIp"] = true, ["PublicIp"] = true, ["InstanceIdentity"] = true, nil }

function asserts.AssertRegisterInstanceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RegisterInstanceRequest to be of type 'table'")
	assert(struct["StackId"], "Expected key StackId to exist in table")
	if struct["StackId"] then asserts.AssertString(struct["StackId"]) end
	if struct["RsaPublicKeyFingerprint"] then asserts.AssertString(struct["RsaPublicKeyFingerprint"]) end
	if struct["RsaPublicKey"] then asserts.AssertString(struct["RsaPublicKey"]) end
	if struct["Hostname"] then asserts.AssertString(struct["Hostname"]) end
	if struct["PrivateIp"] then asserts.AssertString(struct["PrivateIp"]) end
	if struct["PublicIp"] then asserts.AssertString(struct["PublicIp"]) end
	if struct["InstanceIdentity"] then asserts.AssertInstanceIdentity(struct["InstanceIdentity"]) end
	for k,_ in pairs(struct) do
		assert(keys.RegisterInstanceRequest[k], "RegisterInstanceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RegisterInstanceRequest
--  
-- @param _StackId [String] <p>The ID of the stack that the instance is to be registered with.</p>
-- @param _RsaPublicKeyFingerprint [String] <p>The instances public RSA key fingerprint.</p>
-- @param _RsaPublicKey [String] <p>The instances public RSA key. This key is used to encrypt communication between the instance and the service.</p>
-- @param _Hostname [String] <p>The instance's hostname.</p>
-- @param _PrivateIp [String] <p>The instance's private IP address.</p>
-- @param _PublicIp [String] <p>The instance's public IP address.</p>
-- @param _InstanceIdentity [InstanceIdentity] <p>An InstanceIdentity object that contains the instance's identity.</p>
-- Required parameter: StackId
function M.RegisterInstanceRequest(_StackId, _RsaPublicKeyFingerprint, _RsaPublicKey, _Hostname, _PrivateIp, _PublicIp, _InstanceIdentity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RegisterInstanceRequest")
	local t = { 
		["StackId"] = _StackId,
		["RsaPublicKeyFingerprint"] = _RsaPublicKeyFingerprint,
		["RsaPublicKey"] = _RsaPublicKey,
		["Hostname"] = _Hostname,
		["PrivateIp"] = _PrivateIp,
		["PublicIp"] = _PublicIp,
		["InstanceIdentity"] = _InstanceIdentity,
	}
	asserts.AssertRegisterInstanceRequest(t)
	return t
end

keys.GetHostnameSuggestionResult = { ["Hostname"] = true, ["LayerId"] = true, nil }

function asserts.AssertGetHostnameSuggestionResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetHostnameSuggestionResult to be of type 'table'")
	if struct["Hostname"] then asserts.AssertString(struct["Hostname"]) end
	if struct["LayerId"] then asserts.AssertString(struct["LayerId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetHostnameSuggestionResult[k], "GetHostnameSuggestionResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetHostnameSuggestionResult
-- <p>Contains the response to a <code>GetHostnameSuggestion</code> request.</p>
-- @param _Hostname [String] <p>The generated host name.</p>
-- @param _LayerId [String] <p>The layer ID.</p>
function M.GetHostnameSuggestionResult(_Hostname, _LayerId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetHostnameSuggestionResult")
	local t = { 
		["Hostname"] = _Hostname,
		["LayerId"] = _LayerId,
	}
	asserts.AssertGetHostnameSuggestionResult(t)
	return t
end

keys.AssignInstanceRequest = { ["InstanceId"] = true, ["LayerIds"] = true, nil }

function asserts.AssertAssignInstanceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssignInstanceRequest to be of type 'table'")
	assert(struct["InstanceId"], "Expected key InstanceId to exist in table")
	assert(struct["LayerIds"], "Expected key LayerIds to exist in table")
	if struct["InstanceId"] then asserts.AssertString(struct["InstanceId"]) end
	if struct["LayerIds"] then asserts.AssertStrings(struct["LayerIds"]) end
	for k,_ in pairs(struct) do
		assert(keys.AssignInstanceRequest[k], "AssignInstanceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssignInstanceRequest
--  
-- @param _InstanceId [String] <p>The instance ID.</p>
-- @param _LayerIds [Strings] <p>The layer ID, which must correspond to a custom layer. You cannot assign a registered instance to a built-in layer.</p>
-- Required parameter: InstanceId
-- Required parameter: LayerIds
function M.AssignInstanceRequest(_InstanceId, _LayerIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AssignInstanceRequest")
	local t = { 
		["InstanceId"] = _InstanceId,
		["LayerIds"] = _LayerIds,
	}
	asserts.AssertAssignInstanceRequest(t)
	return t
end

keys.TagResourceRequest = { ["ResourceArn"] = true, ["Tags"] = true, nil }

function asserts.AssertTagResourceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TagResourceRequest to be of type 'table'")
	assert(struct["ResourceArn"], "Expected key ResourceArn to exist in table")
	assert(struct["Tags"], "Expected key Tags to exist in table")
	if struct["ResourceArn"] then asserts.AssertResourceArn(struct["ResourceArn"]) end
	if struct["Tags"] then asserts.AssertTags(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.TagResourceRequest[k], "TagResourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TagResourceRequest
--  
-- @param _ResourceArn [ResourceArn] <p>The stack or layer's Amazon Resource Number (ARN).</p>
-- @param _Tags [Tags] <p>A map that contains tag keys and tag values that are attached to a stack or layer.</p> <ul> <li> <p>The key cannot be empty.</p> </li> <li> <p>The key can be a maximum of 127 characters, and can contain only Unicode letters, numbers, or separators, or the following special characters: <code>+ - = . _ : /</code> </p> </li> <li> <p>The value can be a maximum 255 characters, and contain only Unicode letters, numbers, or separators, or the following special characters: <code>+ - = . _ : /</code> </p> </li> <li> <p>Leading and trailing white spaces are trimmed from both the key and value.</p> </li> <li> <p>A maximum of 40 tags is allowed for any resource.</p> </li> </ul>
-- Required parameter: ResourceArn
-- Required parameter: Tags
function M.TagResourceRequest(_ResourceArn, _Tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TagResourceRequest")
	local t = { 
		["ResourceArn"] = _ResourceArn,
		["Tags"] = _Tags,
	}
	asserts.AssertTagResourceRequest(t)
	return t
end

keys.AssignVolumeRequest = { ["InstanceId"] = true, ["VolumeId"] = true, nil }

function asserts.AssertAssignVolumeRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssignVolumeRequest to be of type 'table'")
	assert(struct["VolumeId"], "Expected key VolumeId to exist in table")
	if struct["InstanceId"] then asserts.AssertString(struct["InstanceId"]) end
	if struct["VolumeId"] then asserts.AssertString(struct["VolumeId"]) end
	for k,_ in pairs(struct) do
		assert(keys.AssignVolumeRequest[k], "AssignVolumeRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssignVolumeRequest
--  
-- @param _InstanceId [String] <p>The instance ID.</p>
-- @param _VolumeId [String] <p>The volume ID.</p>
-- Required parameter: VolumeId
function M.AssignVolumeRequest(_InstanceId, _VolumeId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AssignVolumeRequest")
	local t = { 
		["InstanceId"] = _InstanceId,
		["VolumeId"] = _VolumeId,
	}
	asserts.AssertAssignVolumeRequest(t)
	return t
end

keys.DescribeServiceErrorsResult = { ["ServiceErrors"] = true, nil }

function asserts.AssertDescribeServiceErrorsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeServiceErrorsResult to be of type 'table'")
	if struct["ServiceErrors"] then asserts.AssertServiceErrors(struct["ServiceErrors"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeServiceErrorsResult[k], "DescribeServiceErrorsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeServiceErrorsResult
-- <p>Contains the response to a <code>DescribeServiceErrors</code> request.</p>
-- @param _ServiceErrors [ServiceErrors] <p>An array of <code>ServiceError</code> objects that describe the specified service errors.</p>
function M.DescribeServiceErrorsResult(_ServiceErrors, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeServiceErrorsResult")
	local t = { 
		["ServiceErrors"] = _ServiceErrors,
	}
	asserts.AssertDescribeServiceErrorsResult(t)
	return t
end

keys.DescribeDeploymentsResult = { ["Deployments"] = true, nil }

function asserts.AssertDescribeDeploymentsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDeploymentsResult to be of type 'table'")
	if struct["Deployments"] then asserts.AssertDeployments(struct["Deployments"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeDeploymentsResult[k], "DescribeDeploymentsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDeploymentsResult
-- <p>Contains the response to a <code>DescribeDeployments</code> request.</p>
-- @param _Deployments [Deployments] <p>An array of <code>Deployment</code> objects that describe the deployments.</p>
function M.DescribeDeploymentsResult(_Deployments, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeDeploymentsResult")
	local t = { 
		["Deployments"] = _Deployments,
	}
	asserts.AssertDescribeDeploymentsResult(t)
	return t
end

keys.CreateUserProfileRequest = { ["IamUserArn"] = true, ["SshPublicKey"] = true, ["AllowSelfManagement"] = true, ["SshUsername"] = true, nil }

function asserts.AssertCreateUserProfileRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateUserProfileRequest to be of type 'table'")
	assert(struct["IamUserArn"], "Expected key IamUserArn to exist in table")
	if struct["IamUserArn"] then asserts.AssertString(struct["IamUserArn"]) end
	if struct["SshPublicKey"] then asserts.AssertString(struct["SshPublicKey"]) end
	if struct["AllowSelfManagement"] then asserts.AssertBoolean(struct["AllowSelfManagement"]) end
	if struct["SshUsername"] then asserts.AssertString(struct["SshUsername"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateUserProfileRequest[k], "CreateUserProfileRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateUserProfileRequest
--  
-- @param _IamUserArn [String] <p>The user's IAM ARN; this can also be a federated user's ARN.</p>
-- @param _SshPublicKey [String] <p>The user's public SSH key.</p>
-- @param _AllowSelfManagement [Boolean] <p>Whether users can specify their own SSH public key through the My Settings page. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/security-settingsshkey.html">Setting an IAM User's Public SSH Key</a>.</p>
-- @param _SshUsername [String] <p>The user's SSH user name. The allowable characters are [a-z], [A-Z], [0-9], '-', and '_'. If the specified name includes other punctuation marks, AWS OpsWorks Stacks removes them. For example, <code>my.name</code> will be changed to <code>myname</code>. If you do not specify an SSH user name, AWS OpsWorks Stacks generates one from the IAM user name. </p>
-- Required parameter: IamUserArn
function M.CreateUserProfileRequest(_IamUserArn, _SshPublicKey, _AllowSelfManagement, _SshUsername, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateUserProfileRequest")
	local t = { 
		["IamUserArn"] = _IamUserArn,
		["SshPublicKey"] = _SshPublicKey,
		["AllowSelfManagement"] = _AllowSelfManagement,
		["SshUsername"] = _SshUsername,
	}
	asserts.AssertCreateUserProfileRequest(t)
	return t
end

keys.CreateLayerRequest = { ["StackId"] = true, ["LifecycleEventConfiguration"] = true, ["AutoAssignElasticIps"] = true, ["Name"] = true, ["CloudWatchLogsConfiguration"] = true, ["CustomJson"] = true, ["CustomRecipes"] = true, ["CustomSecurityGroupIds"] = true, ["AutoAssignPublicIps"] = true, ["EnableAutoHealing"] = true, ["CustomInstanceProfileArn"] = true, ["UseEbsOptimizedInstances"] = true, ["VolumeConfigurations"] = true, ["Attributes"] = true, ["Shortname"] = true, ["Packages"] = true, ["Type"] = true, ["InstallUpdatesOnBoot"] = true, nil }

function asserts.AssertCreateLayerRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateLayerRequest to be of type 'table'")
	assert(struct["StackId"], "Expected key StackId to exist in table")
	assert(struct["Type"], "Expected key Type to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["Shortname"], "Expected key Shortname to exist in table")
	if struct["StackId"] then asserts.AssertString(struct["StackId"]) end
	if struct["LifecycleEventConfiguration"] then asserts.AssertLifecycleEventConfiguration(struct["LifecycleEventConfiguration"]) end
	if struct["AutoAssignElasticIps"] then asserts.AssertBoolean(struct["AutoAssignElasticIps"]) end
	if struct["Name"] then asserts.AssertString(struct["Name"]) end
	if struct["CloudWatchLogsConfiguration"] then asserts.AssertCloudWatchLogsConfiguration(struct["CloudWatchLogsConfiguration"]) end
	if struct["CustomJson"] then asserts.AssertString(struct["CustomJson"]) end
	if struct["CustomRecipes"] then asserts.AssertRecipes(struct["CustomRecipes"]) end
	if struct["CustomSecurityGroupIds"] then asserts.AssertStrings(struct["CustomSecurityGroupIds"]) end
	if struct["AutoAssignPublicIps"] then asserts.AssertBoolean(struct["AutoAssignPublicIps"]) end
	if struct["EnableAutoHealing"] then asserts.AssertBoolean(struct["EnableAutoHealing"]) end
	if struct["CustomInstanceProfileArn"] then asserts.AssertString(struct["CustomInstanceProfileArn"]) end
	if struct["UseEbsOptimizedInstances"] then asserts.AssertBoolean(struct["UseEbsOptimizedInstances"]) end
	if struct["VolumeConfigurations"] then asserts.AssertVolumeConfigurations(struct["VolumeConfigurations"]) end
	if struct["Attributes"] then asserts.AssertLayerAttributes(struct["Attributes"]) end
	if struct["Shortname"] then asserts.AssertString(struct["Shortname"]) end
	if struct["Packages"] then asserts.AssertStrings(struct["Packages"]) end
	if struct["Type"] then asserts.AssertLayerType(struct["Type"]) end
	if struct["InstallUpdatesOnBoot"] then asserts.AssertBoolean(struct["InstallUpdatesOnBoot"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateLayerRequest[k], "CreateLayerRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateLayerRequest
--  
-- @param _StackId [String] <p>The layer stack ID.</p>
-- @param _LifecycleEventConfiguration [LifecycleEventConfiguration] <p>A <code>LifeCycleEventConfiguration</code> object that you can use to configure the Shutdown event to specify an execution timeout and enable or disable Elastic Load Balancer connection draining.</p>
-- @param _AutoAssignElasticIps [Boolean] <p>Whether to automatically assign an <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html">Elastic IP address</a> to the layer's instances. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-edit.html">How to Edit a Layer</a>.</p>
-- @param _Name [String] <p>The layer name, which is used by the console.</p>
-- @param _CloudWatchLogsConfiguration [CloudWatchLogsConfiguration] <p>Specifies CloudWatch Logs configuration options for the layer. For more information, see <a>CloudWatchLogsLogStream</a>.</p>
-- @param _CustomJson [String] <p>A JSON-formatted string containing custom stack configuration and deployment attributes to be installed on the layer's instances. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook-json-override.html"> Using Custom JSON</a>. This feature is supported as of version 1.7.42 of the AWS CLI. </p>
-- @param _CustomRecipes [Recipes] <p>A <code>LayerCustomRecipes</code> object that specifies the layer custom recipes.</p>
-- @param _CustomSecurityGroupIds [Strings] <p>An array containing the layer custom security group IDs.</p>
-- @param _AutoAssignPublicIps [Boolean] <p>For stacks that are running in a VPC, whether to automatically assign a public IP address to the layer's instances. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-edit.html">How to Edit a Layer</a>.</p>
-- @param _EnableAutoHealing [Boolean] <p>Whether to disable auto healing for the layer.</p>
-- @param _CustomInstanceProfileArn [String] <p>The ARN of an IAM profile to be used for the layer's EC2 instances. For more information about IAM ARNs, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">Using Identifiers</a>.</p>
-- @param _UseEbsOptimizedInstances [Boolean] <p>Whether to use Amazon EBS-optimized instances.</p>
-- @param _VolumeConfigurations [VolumeConfigurations] <p>A <code>VolumeConfigurations</code> object that describes the layer's Amazon EBS volumes.</p>
-- @param _Attributes [LayerAttributes] <p>One or more user-defined key-value pairs to be added to the stack attributes.</p> <p>To create a cluster layer, set the <code>EcsClusterArn</code> attribute to the cluster's ARN.</p>
-- @param _Shortname [String] <p>For custom layers only, use this parameter to specify the layer's short name, which is used internally by AWS OpsWorks Stacks and by Chef recipes. The short name is also used as the name for the directory where your app files are installed. It can have a maximum of 200 characters, which are limited to the alphanumeric characters, '-', '_', and '.'.</p> <p>The built-in layers' short names are defined by AWS OpsWorks Stacks. For more information, see the <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/layers.html">Layer Reference</a>.</p>
-- @param _Packages [Strings] <p>An array of <code>Package</code> objects that describes the layer packages.</p>
-- @param _Type [LayerType] <p>The layer type. A stack cannot have more than one built-in layer of the same type. It can have any number of custom layers. Built-in layers are not available in Chef 12 stacks.</p>
-- @param _InstallUpdatesOnBoot [Boolean] <p>Whether to install operating system and package updates when the instance boots. The default value is <code>true</code>. To control when updates are installed, set this value to <code>false</code>. You must then update your instances manually by using <a>CreateDeployment</a> to run the <code>update_dependencies</code> stack command or by manually running <code>yum</code> (Amazon Linux) or <code>apt-get</code> (Ubuntu) on the instances. </p> <note> <p>To ensure that your instances have the latest security updates, we strongly recommend using the default value of <code>true</code>.</p> </note>
-- Required parameter: StackId
-- Required parameter: Type
-- Required parameter: Name
-- Required parameter: Shortname
function M.CreateLayerRequest(_StackId, _LifecycleEventConfiguration, _AutoAssignElasticIps, _Name, _CloudWatchLogsConfiguration, _CustomJson, _CustomRecipes, _CustomSecurityGroupIds, _AutoAssignPublicIps, _EnableAutoHealing, _CustomInstanceProfileArn, _UseEbsOptimizedInstances, _VolumeConfigurations, _Attributes, _Shortname, _Packages, _Type, _InstallUpdatesOnBoot, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateLayerRequest")
	local t = { 
		["StackId"] = _StackId,
		["LifecycleEventConfiguration"] = _LifecycleEventConfiguration,
		["AutoAssignElasticIps"] = _AutoAssignElasticIps,
		["Name"] = _Name,
		["CloudWatchLogsConfiguration"] = _CloudWatchLogsConfiguration,
		["CustomJson"] = _CustomJson,
		["CustomRecipes"] = _CustomRecipes,
		["CustomSecurityGroupIds"] = _CustomSecurityGroupIds,
		["AutoAssignPublicIps"] = _AutoAssignPublicIps,
		["EnableAutoHealing"] = _EnableAutoHealing,
		["CustomInstanceProfileArn"] = _CustomInstanceProfileArn,
		["UseEbsOptimizedInstances"] = _UseEbsOptimizedInstances,
		["VolumeConfigurations"] = _VolumeConfigurations,
		["Attributes"] = _Attributes,
		["Shortname"] = _Shortname,
		["Packages"] = _Packages,
		["Type"] = _Type,
		["InstallUpdatesOnBoot"] = _InstallUpdatesOnBoot,
	}
	asserts.AssertCreateLayerRequest(t)
	return t
end

keys.DescribeMyUserProfileResult = { ["UserProfile"] = true, nil }

function asserts.AssertDescribeMyUserProfileResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeMyUserProfileResult to be of type 'table'")
	if struct["UserProfile"] then asserts.AssertSelfUserProfile(struct["UserProfile"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeMyUserProfileResult[k], "DescribeMyUserProfileResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeMyUserProfileResult
-- <p>Contains the response to a <code>DescribeMyUserProfile</code> request.</p>
-- @param _UserProfile [SelfUserProfile] <p>A <code>UserProfile</code> object that describes the user's SSH information.</p>
function M.DescribeMyUserProfileResult(_UserProfile, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeMyUserProfileResult")
	local t = { 
		["UserProfile"] = _UserProfile,
	}
	asserts.AssertDescribeMyUserProfileResult(t)
	return t
end

keys.SslConfiguration = { ["PrivateKey"] = true, ["Chain"] = true, ["Certificate"] = true, nil }

function asserts.AssertSslConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SslConfiguration to be of type 'table'")
	assert(struct["Certificate"], "Expected key Certificate to exist in table")
	assert(struct["PrivateKey"], "Expected key PrivateKey to exist in table")
	if struct["PrivateKey"] then asserts.AssertString(struct["PrivateKey"]) end
	if struct["Chain"] then asserts.AssertString(struct["Chain"]) end
	if struct["Certificate"] then asserts.AssertString(struct["Certificate"]) end
	for k,_ in pairs(struct) do
		assert(keys.SslConfiguration[k], "SslConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SslConfiguration
-- <p>Describes an app's SSL configuration.</p>
-- @param _PrivateKey [String] <p>The private key; the contents of the certificate's domain.kex file.</p>
-- @param _Chain [String] <p>Optional. Can be used to specify an intermediate certificate authority key or client authentication.</p>
-- @param _Certificate [String] <p>The contents of the certificate's domain.crt file.</p>
-- Required parameter: Certificate
-- Required parameter: PrivateKey
function M.SslConfiguration(_PrivateKey, _Chain, _Certificate, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SslConfiguration")
	local t = { 
		["PrivateKey"] = _PrivateKey,
		["Chain"] = _Chain,
		["Certificate"] = _Certificate,
	}
	asserts.AssertSslConfiguration(t)
	return t
end

keys.RegisterEcsClusterRequest = { ["StackId"] = true, ["EcsClusterArn"] = true, nil }

function asserts.AssertRegisterEcsClusterRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RegisterEcsClusterRequest to be of type 'table'")
	assert(struct["EcsClusterArn"], "Expected key EcsClusterArn to exist in table")
	assert(struct["StackId"], "Expected key StackId to exist in table")
	if struct["StackId"] then asserts.AssertString(struct["StackId"]) end
	if struct["EcsClusterArn"] then asserts.AssertString(struct["EcsClusterArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.RegisterEcsClusterRequest[k], "RegisterEcsClusterRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RegisterEcsClusterRequest
--  
-- @param _StackId [String] <p>The stack ID.</p>
-- @param _EcsClusterArn [String] <p>The cluster's ARN.</p>
-- Required parameter: EcsClusterArn
-- Required parameter: StackId
function M.RegisterEcsClusterRequest(_StackId, _EcsClusterArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RegisterEcsClusterRequest")
	local t = { 
		["StackId"] = _StackId,
		["EcsClusterArn"] = _EcsClusterArn,
	}
	asserts.AssertRegisterEcsClusterRequest(t)
	return t
end

function asserts.AssertDateTime(str)
	assert(str)
	assert(type(str) == "string", "Expected DateTime to be of type 'string'")
end

--  
function M.DateTime(str)
	asserts.AssertDateTime(str)
	return str
end

function asserts.AssertTagKey(str)
	assert(str)
	assert(type(str) == "string", "Expected TagKey to be of type 'string'")
end

--  
function M.TagKey(str)
	asserts.AssertTagKey(str)
	return str
end

function asserts.AssertAppType(str)
	assert(str)
	assert(type(str) == "string", "Expected AppType to be of type 'string'")
end

--  
function M.AppType(str)
	asserts.AssertAppType(str)
	return str
end

function asserts.AssertLayerAttributesKeys(str)
	assert(str)
	assert(type(str) == "string", "Expected LayerAttributesKeys to be of type 'string'")
end

--  
function M.LayerAttributesKeys(str)
	asserts.AssertLayerAttributesKeys(str)
	return str
end

function asserts.AssertVolumeType(str)
	assert(str)
	assert(type(str) == "string", "Expected VolumeType to be of type 'string'")
end

--  
function M.VolumeType(str)
	asserts.AssertVolumeType(str)
	return str
end

function asserts.AssertCloudWatchLogsInitialPosition(str)
	assert(str)
	assert(type(str) == "string", "Expected CloudWatchLogsInitialPosition to be of type 'string'")
end

-- <p>Specifies where to start to read data (start_of_file or end_of_file). The default is start_of_file. It's only used if there is no state persisted for that log stream.</p>
function M.CloudWatchLogsInitialPosition(str)
	asserts.AssertCloudWatchLogsInitialPosition(str)
	return str
end

function asserts.AssertCloudWatchLogsEncoding(str)
	assert(str)
	assert(type(str) == "string", "Expected CloudWatchLogsEncoding to be of type 'string'")
end

-- <p>Specifies the encoding of the log file so that the file can be read correctly. The default is <code>utf_8</code>. Encodings supported by Python <code>codecs.decode()</code> can be used here.</p>
function M.CloudWatchLogsEncoding(str)
	asserts.AssertCloudWatchLogsEncoding(str)
	return str
end

function asserts.AssertAutoScalingType(str)
	assert(str)
	assert(type(str) == "string", "Expected AutoScalingType to be of type 'string'")
end

--  
function M.AutoScalingType(str)
	asserts.AssertAutoScalingType(str)
	return str
end

function asserts.AssertNextToken(str)
	assert(str)
	assert(type(str) == "string", "Expected NextToken to be of type 'string'")
end

--  
function M.NextToken(str)
	asserts.AssertNextToken(str)
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

function asserts.AssertResourceArn(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceArn to be of type 'string'")
end

--  
function M.ResourceArn(str)
	asserts.AssertResourceArn(str)
	return str
end

function asserts.AssertHour(str)
	assert(str)
	assert(type(str) == "string", "Expected Hour to be of type 'string'")
end

--  
function M.Hour(str)
	asserts.AssertHour(str)
	return str
end

function asserts.AssertTagValue(str)
	assert(str)
	assert(type(str) == "string", "Expected TagValue to be of type 'string'")
end

--  
function M.TagValue(str)
	asserts.AssertTagValue(str)
	return str
end

function asserts.AssertArchitecture(str)
	assert(str)
	assert(type(str) == "string", "Expected Architecture to be of type 'string'")
end

--  
function M.Architecture(str)
	asserts.AssertArchitecture(str)
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

function asserts.AssertLayerType(str)
	assert(str)
	assert(type(str) == "string", "Expected LayerType to be of type 'string'")
end

--  
function M.LayerType(str)
	asserts.AssertLayerType(str)
	return str
end

function asserts.AssertStackAttributesKeys(str)
	assert(str)
	assert(type(str) == "string", "Expected StackAttributesKeys to be of type 'string'")
end

--  
function M.StackAttributesKeys(str)
	asserts.AssertStackAttributesKeys(str)
	return str
end

function asserts.AssertSwitch(str)
	assert(str)
	assert(type(str) == "string", "Expected Switch to be of type 'string'")
end

--  
function M.Switch(str)
	asserts.AssertSwitch(str)
	return str
end

function asserts.AssertVirtualizationType(str)
	assert(str)
	assert(type(str) == "string", "Expected VirtualizationType to be of type 'string'")
end

--  
function M.VirtualizationType(str)
	asserts.AssertVirtualizationType(str)
	return str
end

function asserts.AssertRootDeviceType(str)
	assert(str)
	assert(type(str) == "string", "Expected RootDeviceType to be of type 'string'")
end

--  
function M.RootDeviceType(str)
	asserts.AssertRootDeviceType(str)
	return str
end

function asserts.AssertAppAttributesKeys(str)
	assert(str)
	assert(type(str) == "string", "Expected AppAttributesKeys to be of type 'string'")
end

--  
function M.AppAttributesKeys(str)
	asserts.AssertAppAttributesKeys(str)
	return str
end

function asserts.AssertCloudWatchLogsTimeZone(str)
	assert(str)
	assert(type(str) == "string", "Expected CloudWatchLogsTimeZone to be of type 'string'")
end

-- <p>The preferred time zone for logs streamed to CloudWatch Logs. Valid values are <code>LOCAL</code> and <code>UTC</code>, for Coordinated Universal Time.</p>
function M.CloudWatchLogsTimeZone(str)
	asserts.AssertCloudWatchLogsTimeZone(str)
	return str
end

function asserts.AssertDeploymentCommandName(str)
	assert(str)
	assert(type(str) == "string", "Expected DeploymentCommandName to be of type 'string'")
end

--  
function M.DeploymentCommandName(str)
	asserts.AssertDeploymentCommandName(str)
	return str
end

function asserts.AssertDouble(double)
	assert(double)
	assert(type(double) == "number", "Expected Double to be of type 'number'")
end

function M.Double(double)
	asserts.AssertDouble(double)
	return double
end

function asserts.AssertMinute(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected Minute to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 100, "Expected integer to be max 100")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.Minute(integer)
	asserts.AssertMinute(integer)
	return integer
end

function asserts.AssertMaxResults(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxResults to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.MaxResults(integer)
	asserts.AssertMaxResults(integer)
	return integer
end

function asserts.AssertValidForInMinutes(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected ValidForInMinutes to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 1440, "Expected integer to be max 1440")
	assert(integer >= 60, "Expected integer to be min 60")
end

function M.ValidForInMinutes(integer)
	asserts.AssertValidForInMinutes(integer)
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

function asserts.AssertBoolean(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected Boolean to be of type 'boolean'")
end

function M.Boolean(boolean)
	asserts.AssertBoolean(boolean)
	return boolean
end

function asserts.AssertStackAttributes(map)
	assert(map)
	assert(type(map) == "table", "Expected StackAttributes to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertStackAttributesKeys(k)
		asserts.AssertString(v)
	end
end

function M.StackAttributes(map)
	asserts.AssertStackAttributes(map)
	return map
end

function asserts.AssertParameters(map)
	assert(map)
	assert(type(map) == "table", "Expected Parameters to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertString(k)
		asserts.AssertString(v)
	end
end

function M.Parameters(map)
	asserts.AssertParameters(map)
	return map
end

function asserts.AssertAppAttributes(map)
	assert(map)
	assert(type(map) == "table", "Expected AppAttributes to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertAppAttributesKeys(k)
		asserts.AssertString(v)
	end
end

function M.AppAttributes(map)
	asserts.AssertAppAttributes(map)
	return map
end

function asserts.AssertTags(map)
	assert(map)
	assert(type(map) == "table", "Expected Tags to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertTagKey(k)
		asserts.AssertTagValue(v)
	end
end

function M.Tags(map)
	asserts.AssertTags(map)
	return map
end

function asserts.AssertDailyAutoScalingSchedule(map)
	assert(map)
	assert(type(map) == "table", "Expected DailyAutoScalingSchedule to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertHour(k)
		asserts.AssertSwitch(v)
	end
end

function M.DailyAutoScalingSchedule(map)
	asserts.AssertDailyAutoScalingSchedule(map)
	return map
end

function asserts.AssertLayerAttributes(map)
	assert(map)
	assert(type(map) == "table", "Expected LayerAttributes to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertLayerAttributesKeys(k)
		asserts.AssertString(v)
	end
end

function M.LayerAttributes(map)
	asserts.AssertLayerAttributes(map)
	return map
end

function asserts.AssertDeploymentCommandArgs(map)
	assert(map)
	assert(type(map) == "table", "Expected DeploymentCommandArgs to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertString(k)
		asserts.AssertStrings(v)
	end
end

function M.DeploymentCommandArgs(map)
	asserts.AssertDeploymentCommandArgs(map)
	return map
end

function asserts.AssertAgentVersions(list)
	assert(list)
	assert(type(list) == "table", "Expected AgentVersions to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertAgentVersion(v)
	end
end

--  
-- List of AgentVersion objects
function M.AgentVersions(list)
	asserts.AssertAgentVersions(list)
	return list
end

function asserts.AssertTimeBasedAutoScalingConfigurations(list)
	assert(list)
	assert(type(list) == "table", "Expected TimeBasedAutoScalingConfigurations to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTimeBasedAutoScalingConfiguration(v)
	end
end

--  
-- List of TimeBasedAutoScalingConfiguration objects
function M.TimeBasedAutoScalingConfigurations(list)
	asserts.AssertTimeBasedAutoScalingConfigurations(list)
	return list
end

function asserts.AssertUserProfiles(list)
	assert(list)
	assert(type(list) == "table", "Expected UserProfiles to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertUserProfile(v)
	end
end

--  
-- List of UserProfile objects
function M.UserProfiles(list)
	asserts.AssertUserProfiles(list)
	return list
end

function asserts.AssertBlockDeviceMappings(list)
	assert(list)
	assert(type(list) == "table", "Expected BlockDeviceMappings to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertBlockDeviceMapping(v)
	end
end

--  
-- List of BlockDeviceMapping objects
function M.BlockDeviceMappings(list)
	asserts.AssertBlockDeviceMappings(list)
	return list
end

function asserts.AssertDeployments(list)
	assert(list)
	assert(type(list) == "table", "Expected Deployments to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDeployment(v)
	end
end

--  
-- List of Deployment objects
function M.Deployments(list)
	asserts.AssertDeployments(list)
	return list
end

function asserts.AssertEcsClusters(list)
	assert(list)
	assert(type(list) == "table", "Expected EcsClusters to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertEcsCluster(v)
	end
end

--  
-- List of EcsCluster objects
function M.EcsClusters(list)
	asserts.AssertEcsClusters(list)
	return list
end

function asserts.AssertLayers(list)
	assert(list)
	assert(type(list) == "table", "Expected Layers to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertLayer(v)
	end
end

--  
-- List of Layer objects
function M.Layers(list)
	asserts.AssertLayers(list)
	return list
end

function asserts.AssertApps(list)
	assert(list)
	assert(type(list) == "table", "Expected Apps to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertApp(v)
	end
end

--  
-- List of App objects
function M.Apps(list)
	asserts.AssertApps(list)
	return list
end

function asserts.AssertCloudWatchLogsLogStreams(list)
	assert(list)
	assert(type(list) == "table", "Expected CloudWatchLogsLogStreams to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertCloudWatchLogsLogStream(v)
	end
end

-- <p>Describes the Amazon CloudWatch logs configuration for a layer.</p>
-- List of CloudWatchLogsLogStream objects
function M.CloudWatchLogsLogStreams(list)
	asserts.AssertCloudWatchLogsLogStreams(list)
	return list
end

function asserts.AssertDataSources(list)
	assert(list)
	assert(type(list) == "table", "Expected DataSources to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDataSource(v)
	end
end

--  
-- List of DataSource objects
function M.DataSources(list)
	asserts.AssertDataSources(list)
	return list
end

function asserts.AssertVolumes(list)
	assert(list)
	assert(type(list) == "table", "Expected Volumes to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertVolume(v)
	end
end

--  
-- List of Volume objects
function M.Volumes(list)
	asserts.AssertVolumes(list)
	return list
end

function asserts.AssertVolumeConfigurations(list)
	assert(list)
	assert(type(list) == "table", "Expected VolumeConfigurations to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertVolumeConfiguration(v)
	end
end

--  
-- List of VolumeConfiguration objects
function M.VolumeConfigurations(list)
	asserts.AssertVolumeConfigurations(list)
	return list
end

function asserts.AssertStrings(list)
	assert(list)
	assert(type(list) == "table", "Expected Strings to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertString(v)
	end
end

--  
-- List of String objects
function M.Strings(list)
	asserts.AssertStrings(list)
	return list
end

function asserts.AssertServiceErrors(list)
	assert(list)
	assert(type(list) == "table", "Expected ServiceErrors to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertServiceError(v)
	end
end

--  
-- List of ServiceError objects
function M.ServiceErrors(list)
	asserts.AssertServiceErrors(list)
	return list
end

function asserts.AssertElasticIps(list)
	assert(list)
	assert(type(list) == "table", "Expected ElasticIps to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertElasticIp(v)
	end
end

--  
-- List of ElasticIp objects
function M.ElasticIps(list)
	asserts.AssertElasticIps(list)
	return list
end

function asserts.AssertLoadBasedAutoScalingConfigurations(list)
	assert(list)
	assert(type(list) == "table", "Expected LoadBasedAutoScalingConfigurations to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertLoadBasedAutoScalingConfiguration(v)
	end
end

--  
-- List of LoadBasedAutoScalingConfiguration objects
function M.LoadBasedAutoScalingConfigurations(list)
	asserts.AssertLoadBasedAutoScalingConfigurations(list)
	return list
end

function asserts.AssertPermissions(list)
	assert(list)
	assert(type(list) == "table", "Expected Permissions to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertPermission(v)
	end
end

--  
-- List of Permission objects
function M.Permissions(list)
	asserts.AssertPermissions(list)
	return list
end

function asserts.AssertCommands(list)
	assert(list)
	assert(type(list) == "table", "Expected Commands to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertCommand(v)
	end
end

--  
-- List of Command objects
function M.Commands(list)
	asserts.AssertCommands(list)
	return list
end

function asserts.AssertElasticLoadBalancers(list)
	assert(list)
	assert(type(list) == "table", "Expected ElasticLoadBalancers to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertElasticLoadBalancer(v)
	end
end

--  
-- List of ElasticLoadBalancer objects
function M.ElasticLoadBalancers(list)
	asserts.AssertElasticLoadBalancers(list)
	return list
end

function asserts.AssertRdsDbInstances(list)
	assert(list)
	assert(type(list) == "table", "Expected RdsDbInstances to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertRdsDbInstance(v)
	end
end

--  
-- List of RdsDbInstance objects
function M.RdsDbInstances(list)
	asserts.AssertRdsDbInstances(list)
	return list
end

function asserts.AssertStacks(list)
	assert(list)
	assert(type(list) == "table", "Expected Stacks to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertStack(v)
	end
end

--  
-- List of Stack objects
function M.Stacks(list)
	asserts.AssertStacks(list)
	return list
end

function asserts.AssertRaidArrays(list)
	assert(list)
	assert(type(list) == "table", "Expected RaidArrays to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertRaidArray(v)
	end
end

--  
-- List of RaidArray objects
function M.RaidArrays(list)
	asserts.AssertRaidArrays(list)
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

function asserts.AssertTagKeys(list)
	assert(list)
	assert(type(list) == "table", "Expected TagKeys to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTagKey(v)
	end
end

--  
-- List of TagKey objects
function M.TagKeys(list)
	asserts.AssertTagKeys(list)
	return list
end

function asserts.AssertInstances(list)
	assert(list)
	assert(type(list) == "table", "Expected Instances to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertInstance(v)
	end
end

--  
-- List of Instance objects
function M.Instances(list)
	asserts.AssertInstances(list)
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
--- Call DeregisterVolume asynchronously, invoking a callback when done
-- @param DeregisterVolumeRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeregisterVolumeAsync(DeregisterVolumeRequest, cb)
	assert(DeregisterVolumeRequest, "You must provide a DeregisterVolumeRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.DeregisterVolume",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DeregisterVolumeRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeregisterVolume synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeregisterVolumeRequest
-- @return response
-- @return error_message
function M.DeregisterVolumeSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeregisterVolumeAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeregisterInstance asynchronously, invoking a callback when done
-- @param DeregisterInstanceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeregisterInstanceAsync(DeregisterInstanceRequest, cb)
	assert(DeregisterInstanceRequest, "You must provide a DeregisterInstanceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.DeregisterInstance",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DeregisterInstanceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeregisterInstance synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeregisterInstanceRequest
-- @return response
-- @return error_message
function M.DeregisterInstanceSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeregisterInstanceAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeTimeBasedAutoScaling asynchronously, invoking a callback when done
-- @param DescribeTimeBasedAutoScalingRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeTimeBasedAutoScalingAsync(DescribeTimeBasedAutoScalingRequest, cb)
	assert(DescribeTimeBasedAutoScalingRequest, "You must provide a DescribeTimeBasedAutoScalingRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.DescribeTimeBasedAutoScaling",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeTimeBasedAutoScalingRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeTimeBasedAutoScaling synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeTimeBasedAutoScalingRequest
-- @return response
-- @return error_message
function M.DescribeTimeBasedAutoScalingSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeTimeBasedAutoScalingAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call RebootInstance asynchronously, invoking a callback when done
-- @param RebootInstanceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.RebootInstanceAsync(RebootInstanceRequest, cb)
	assert(RebootInstanceRequest, "You must provide a RebootInstanceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.RebootInstance",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", RebootInstanceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RebootInstance synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RebootInstanceRequest
-- @return response
-- @return error_message
function M.RebootInstanceSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RebootInstanceAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call StartStack asynchronously, invoking a callback when done
-- @param StartStackRequest
-- @param cb Callback function accepting two args: response, error_message
function M.StartStackAsync(StartStackRequest, cb)
	assert(StartStackRequest, "You must provide a StartStackRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.StartStack",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", StartStackRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call StartStack synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StartStackRequest
-- @return response
-- @return error_message
function M.StartStackSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StartStackAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UnassignInstance asynchronously, invoking a callback when done
-- @param UnassignInstanceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UnassignInstanceAsync(UnassignInstanceRequest, cb)
	assert(UnassignInstanceRequest, "You must provide a UnassignInstanceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.UnassignInstance",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", UnassignInstanceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UnassignInstance synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UnassignInstanceRequest
-- @return response
-- @return error_message
function M.UnassignInstanceSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UnassignInstanceAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DisassociateElasticIp asynchronously, invoking a callback when done
-- @param DisassociateElasticIpRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DisassociateElasticIpAsync(DisassociateElasticIpRequest, cb)
	assert(DisassociateElasticIpRequest, "You must provide a DisassociateElasticIpRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.DisassociateElasticIp",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DisassociateElasticIpRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DisassociateElasticIp synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DisassociateElasticIpRequest
-- @return response
-- @return error_message
function M.DisassociateElasticIpSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DisassociateElasticIpAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateUserProfile asynchronously, invoking a callback when done
-- @param CreateUserProfileRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateUserProfileAsync(CreateUserProfileRequest, cb)
	assert(CreateUserProfileRequest, "You must provide a CreateUserProfileRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.CreateUserProfile",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateUserProfileRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateUserProfile synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateUserProfileRequest
-- @return response
-- @return error_message
function M.CreateUserProfileSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateUserProfileAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call AttachElasticLoadBalancer asynchronously, invoking a callback when done
-- @param AttachElasticLoadBalancerRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AttachElasticLoadBalancerAsync(AttachElasticLoadBalancerRequest, cb)
	assert(AttachElasticLoadBalancerRequest, "You must provide a AttachElasticLoadBalancerRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.AttachElasticLoadBalancer",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", AttachElasticLoadBalancerRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AttachElasticLoadBalancer synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AttachElasticLoadBalancerRequest
-- @return response
-- @return error_message
function M.AttachElasticLoadBalancerSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AttachElasticLoadBalancerAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call RegisterEcsCluster asynchronously, invoking a callback when done
-- @param RegisterEcsClusterRequest
-- @param cb Callback function accepting two args: response, error_message
function M.RegisterEcsClusterAsync(RegisterEcsClusterRequest, cb)
	assert(RegisterEcsClusterRequest, "You must provide a RegisterEcsClusterRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.RegisterEcsCluster",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", RegisterEcsClusterRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RegisterEcsCluster synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RegisterEcsClusterRequest
-- @return response
-- @return error_message
function M.RegisterEcsClusterSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RegisterEcsClusterAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeLayers asynchronously, invoking a callback when done
-- @param DescribeLayersRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeLayersAsync(DescribeLayersRequest, cb)
	assert(DescribeLayersRequest, "You must provide a DescribeLayersRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.DescribeLayers",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeLayersRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeLayers synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeLayersRequest
-- @return response
-- @return error_message
function M.DescribeLayersSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeLayersAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateElasticIp asynchronously, invoking a callback when done
-- @param UpdateElasticIpRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateElasticIpAsync(UpdateElasticIpRequest, cb)
	assert(UpdateElasticIpRequest, "You must provide a UpdateElasticIpRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.UpdateElasticIp",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateElasticIpRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateElasticIp synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateElasticIpRequest
-- @return response
-- @return error_message
function M.UpdateElasticIpSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateElasticIpAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteInstance asynchronously, invoking a callback when done
-- @param DeleteInstanceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteInstanceAsync(DeleteInstanceRequest, cb)
	assert(DeleteInstanceRequest, "You must provide a DeleteInstanceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.DeleteInstance",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteInstanceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteInstance synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteInstanceRequest
-- @return response
-- @return error_message
function M.DeleteInstanceSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteInstanceAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DetachElasticLoadBalancer asynchronously, invoking a callback when done
-- @param DetachElasticLoadBalancerRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DetachElasticLoadBalancerAsync(DetachElasticLoadBalancerRequest, cb)
	assert(DetachElasticLoadBalancerRequest, "You must provide a DetachElasticLoadBalancerRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.DetachElasticLoadBalancer",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DetachElasticLoadBalancerRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DetachElasticLoadBalancer synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DetachElasticLoadBalancerRequest
-- @return response
-- @return error_message
function M.DetachElasticLoadBalancerSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DetachElasticLoadBalancerAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateDeployment asynchronously, invoking a callback when done
-- @param CreateDeploymentRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateDeploymentAsync(CreateDeploymentRequest, cb)
	assert(CreateDeploymentRequest, "You must provide a CreateDeploymentRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.CreateDeployment",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateDeploymentRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateDeployment synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateDeploymentRequest
-- @return response
-- @return error_message
function M.CreateDeploymentSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateDeploymentAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UnassignVolume asynchronously, invoking a callback when done
-- @param UnassignVolumeRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UnassignVolumeAsync(UnassignVolumeRequest, cb)
	assert(UnassignVolumeRequest, "You must provide a UnassignVolumeRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.UnassignVolume",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", UnassignVolumeRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UnassignVolume synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UnassignVolumeRequest
-- @return response
-- @return error_message
function M.UnassignVolumeSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UnassignVolumeAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteUserProfile asynchronously, invoking a callback when done
-- @param DeleteUserProfileRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteUserProfileAsync(DeleteUserProfileRequest, cb)
	assert(DeleteUserProfileRequest, "You must provide a DeleteUserProfileRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.DeleteUserProfile",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteUserProfileRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteUserProfile synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteUserProfileRequest
-- @return response
-- @return error_message
function M.DeleteUserProfileSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteUserProfileAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateStack asynchronously, invoking a callback when done
-- @param CreateStackRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateStackAsync(CreateStackRequest, cb)
	assert(CreateStackRequest, "You must provide a CreateStackRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.CreateStack",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateStackRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateStack synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateStackRequest
-- @return response
-- @return error_message
function M.CreateStackSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateStackAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateRdsDbInstance asynchronously, invoking a callback when done
-- @param UpdateRdsDbInstanceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateRdsDbInstanceAsync(UpdateRdsDbInstanceRequest, cb)
	assert(UpdateRdsDbInstanceRequest, "You must provide a UpdateRdsDbInstanceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.UpdateRdsDbInstance",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateRdsDbInstanceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateRdsDbInstance synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateRdsDbInstanceRequest
-- @return response
-- @return error_message
function M.UpdateRdsDbInstanceSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateRdsDbInstanceAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetHostnameSuggestion asynchronously, invoking a callback when done
-- @param GetHostnameSuggestionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetHostnameSuggestionAsync(GetHostnameSuggestionRequest, cb)
	assert(GetHostnameSuggestionRequest, "You must provide a GetHostnameSuggestionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.GetHostnameSuggestion",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", GetHostnameSuggestionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetHostnameSuggestion synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetHostnameSuggestionRequest
-- @return response
-- @return error_message
function M.GetHostnameSuggestionSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetHostnameSuggestionAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeInstances asynchronously, invoking a callback when done
-- @param DescribeInstancesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeInstancesAsync(DescribeInstancesRequest, cb)
	assert(DescribeInstancesRequest, "You must provide a DescribeInstancesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.DescribeInstances",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeInstancesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeInstances synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeInstancesRequest
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

--- Call DescribeCommands asynchronously, invoking a callback when done
-- @param DescribeCommandsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeCommandsAsync(DescribeCommandsRequest, cb)
	assert(DescribeCommandsRequest, "You must provide a DescribeCommandsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.DescribeCommands",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeCommandsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeCommands synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeCommandsRequest
-- @return response
-- @return error_message
function M.DescribeCommandsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeCommandsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeMyUserProfile asynchronously, invoking a callback when done
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeMyUserProfileAsync(cb)
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.DescribeMyUserProfile",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", {}, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeMyUserProfile synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @return response
-- @return error_message
function M.DescribeMyUserProfileSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeMyUserProfileAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeregisterElasticIp asynchronously, invoking a callback when done
-- @param DeregisterElasticIpRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeregisterElasticIpAsync(DeregisterElasticIpRequest, cb)
	assert(DeregisterElasticIpRequest, "You must provide a DeregisterElasticIpRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.DeregisterElasticIp",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DeregisterElasticIpRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeregisterElasticIp synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeregisterElasticIpRequest
-- @return response
-- @return error_message
function M.DeregisterElasticIpSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeregisterElasticIpAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeAgentVersions asynchronously, invoking a callback when done
-- @param DescribeAgentVersionsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeAgentVersionsAsync(DescribeAgentVersionsRequest, cb)
	assert(DescribeAgentVersionsRequest, "You must provide a DescribeAgentVersionsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.DescribeAgentVersions",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeAgentVersionsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeAgentVersions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeAgentVersionsRequest
-- @return response
-- @return error_message
function M.DescribeAgentVersionsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeAgentVersionsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call StopStack asynchronously, invoking a callback when done
-- @param StopStackRequest
-- @param cb Callback function accepting two args: response, error_message
function M.StopStackAsync(StopStackRequest, cb)
	assert(StopStackRequest, "You must provide a StopStackRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.StopStack",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", StopStackRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call StopStack synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StopStackRequest
-- @return response
-- @return error_message
function M.StopStackSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StopStackAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeApps asynchronously, invoking a callback when done
-- @param DescribeAppsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeAppsAsync(DescribeAppsRequest, cb)
	assert(DescribeAppsRequest, "You must provide a DescribeAppsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.DescribeApps",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeAppsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeApps synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeAppsRequest
-- @return response
-- @return error_message
function M.DescribeAppsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeAppsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeElasticIps asynchronously, invoking a callback when done
-- @param DescribeElasticIpsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeElasticIpsAsync(DescribeElasticIpsRequest, cb)
	assert(DescribeElasticIpsRequest, "You must provide a DescribeElasticIpsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.DescribeElasticIps",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeElasticIpsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeElasticIps synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeElasticIpsRequest
-- @return response
-- @return error_message
function M.DescribeElasticIpsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeElasticIpsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateVolume asynchronously, invoking a callback when done
-- @param UpdateVolumeRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateVolumeAsync(UpdateVolumeRequest, cb)
	assert(UpdateVolumeRequest, "You must provide a UpdateVolumeRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.UpdateVolume",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateVolumeRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateVolume synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateVolumeRequest
-- @return response
-- @return error_message
function M.UpdateVolumeSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateVolumeAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call StartInstance asynchronously, invoking a callback when done
-- @param StartInstanceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.StartInstanceAsync(StartInstanceRequest, cb)
	assert(StartInstanceRequest, "You must provide a StartInstanceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.StartInstance",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", StartInstanceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call StartInstance synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StartInstanceRequest
-- @return response
-- @return error_message
function M.StartInstanceSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StartInstanceAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateMyUserProfile asynchronously, invoking a callback when done
-- @param UpdateMyUserProfileRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateMyUserProfileAsync(UpdateMyUserProfileRequest, cb)
	assert(UpdateMyUserProfileRequest, "You must provide a UpdateMyUserProfileRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.UpdateMyUserProfile",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateMyUserProfileRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateMyUserProfile synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateMyUserProfileRequest
-- @return response
-- @return error_message
function M.UpdateMyUserProfileSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateMyUserProfileAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteApp asynchronously, invoking a callback when done
-- @param DeleteAppRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteAppAsync(DeleteAppRequest, cb)
	assert(DeleteAppRequest, "You must provide a DeleteAppRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.DeleteApp",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteAppRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteApp synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteAppRequest
-- @return response
-- @return error_message
function M.DeleteAppSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteAppAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateInstance asynchronously, invoking a callback when done
-- @param UpdateInstanceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateInstanceAsync(UpdateInstanceRequest, cb)
	assert(UpdateInstanceRequest, "You must provide a UpdateInstanceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.UpdateInstance",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateInstanceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateInstance synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateInstanceRequest
-- @return response
-- @return error_message
function M.UpdateInstanceSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateInstanceAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call RegisterElasticIp asynchronously, invoking a callback when done
-- @param RegisterElasticIpRequest
-- @param cb Callback function accepting two args: response, error_message
function M.RegisterElasticIpAsync(RegisterElasticIpRequest, cb)
	assert(RegisterElasticIpRequest, "You must provide a RegisterElasticIpRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.RegisterElasticIp",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", RegisterElasticIpRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RegisterElasticIp synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RegisterElasticIpRequest
-- @return response
-- @return error_message
function M.RegisterElasticIpSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RegisterElasticIpAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call TagResource asynchronously, invoking a callback when done
-- @param TagResourceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.TagResourceAsync(TagResourceRequest, cb)
	assert(TagResourceRequest, "You must provide a TagResourceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.TagResource",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", TagResourceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call TagResource synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param TagResourceRequest
-- @return response
-- @return error_message
function M.TagResourceSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.TagResourceAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeregisterRdsDbInstance asynchronously, invoking a callback when done
-- @param DeregisterRdsDbInstanceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeregisterRdsDbInstanceAsync(DeregisterRdsDbInstanceRequest, cb)
	assert(DeregisterRdsDbInstanceRequest, "You must provide a DeregisterRdsDbInstanceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.DeregisterRdsDbInstance",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DeregisterRdsDbInstanceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeregisterRdsDbInstance synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeregisterRdsDbInstanceRequest
-- @return response
-- @return error_message
function M.DeregisterRdsDbInstanceSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeregisterRdsDbInstanceAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeRaidArrays asynchronously, invoking a callback when done
-- @param DescribeRaidArraysRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeRaidArraysAsync(DescribeRaidArraysRequest, cb)
	assert(DescribeRaidArraysRequest, "You must provide a DescribeRaidArraysRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.DescribeRaidArrays",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeRaidArraysRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeRaidArrays synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeRaidArraysRequest
-- @return response
-- @return error_message
function M.DescribeRaidArraysSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeRaidArraysAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call RegisterVolume asynchronously, invoking a callback when done
-- @param RegisterVolumeRequest
-- @param cb Callback function accepting two args: response, error_message
function M.RegisterVolumeAsync(RegisterVolumeRequest, cb)
	assert(RegisterVolumeRequest, "You must provide a RegisterVolumeRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.RegisterVolume",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", RegisterVolumeRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RegisterVolume synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RegisterVolumeRequest
-- @return response
-- @return error_message
function M.RegisterVolumeSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RegisterVolumeAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call SetPermission asynchronously, invoking a callback when done
-- @param SetPermissionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.SetPermissionAsync(SetPermissionRequest, cb)
	assert(SetPermissionRequest, "You must provide a SetPermissionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.SetPermission",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", SetPermissionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call SetPermission synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SetPermissionRequest
-- @return response
-- @return error_message
function M.SetPermissionSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SetPermissionAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeDeployments asynchronously, invoking a callback when done
-- @param DescribeDeploymentsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeDeploymentsAsync(DescribeDeploymentsRequest, cb)
	assert(DescribeDeploymentsRequest, "You must provide a DescribeDeploymentsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.DescribeDeployments",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeDeploymentsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeDeployments synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeDeploymentsRequest
-- @return response
-- @return error_message
function M.DescribeDeploymentsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeDeploymentsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListTags asynchronously, invoking a callback when done
-- @param ListTagsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListTagsAsync(ListTagsRequest, cb)
	assert(ListTagsRequest, "You must provide a ListTagsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.ListTags",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", ListTagsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListTags synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListTagsRequest
-- @return response
-- @return error_message
function M.ListTagsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListTagsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CloneStack asynchronously, invoking a callback when done
-- @param CloneStackRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CloneStackAsync(CloneStackRequest, cb)
	assert(CloneStackRequest, "You must provide a CloneStackRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.CloneStack",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", CloneStackRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CloneStack synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CloneStackRequest
-- @return response
-- @return error_message
function M.CloneStackSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CloneStackAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeServiceErrors asynchronously, invoking a callback when done
-- @param DescribeServiceErrorsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeServiceErrorsAsync(DescribeServiceErrorsRequest, cb)
	assert(DescribeServiceErrorsRequest, "You must provide a DescribeServiceErrorsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.DescribeServiceErrors",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeServiceErrorsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeServiceErrors synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeServiceErrorsRequest
-- @return response
-- @return error_message
function M.DescribeServiceErrorsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeServiceErrorsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call AssociateElasticIp asynchronously, invoking a callback when done
-- @param AssociateElasticIpRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AssociateElasticIpAsync(AssociateElasticIpRequest, cb)
	assert(AssociateElasticIpRequest, "You must provide a AssociateElasticIpRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.AssociateElasticIp",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", AssociateElasticIpRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AssociateElasticIp synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AssociateElasticIpRequest
-- @return response
-- @return error_message
function M.AssociateElasticIpSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AssociateElasticIpAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateInstance asynchronously, invoking a callback when done
-- @param CreateInstanceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateInstanceAsync(CreateInstanceRequest, cb)
	assert(CreateInstanceRequest, "You must provide a CreateInstanceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.CreateInstance",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateInstanceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateInstance synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateInstanceRequest
-- @return response
-- @return error_message
function M.CreateInstanceSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateInstanceAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeElasticLoadBalancers asynchronously, invoking a callback when done
-- @param DescribeElasticLoadBalancersRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeElasticLoadBalancersAsync(DescribeElasticLoadBalancersRequest, cb)
	assert(DescribeElasticLoadBalancersRequest, "You must provide a DescribeElasticLoadBalancersRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.DescribeElasticLoadBalancers",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeElasticLoadBalancersRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeElasticLoadBalancers synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeElasticLoadBalancersRequest
-- @return response
-- @return error_message
function M.DescribeElasticLoadBalancersSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeElasticLoadBalancersAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeregisterEcsCluster asynchronously, invoking a callback when done
-- @param DeregisterEcsClusterRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeregisterEcsClusterAsync(DeregisterEcsClusterRequest, cb)
	assert(DeregisterEcsClusterRequest, "You must provide a DeregisterEcsClusterRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.DeregisterEcsCluster",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DeregisterEcsClusterRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeregisterEcsCluster synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeregisterEcsClusterRequest
-- @return response
-- @return error_message
function M.DeregisterEcsClusterSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeregisterEcsClusterAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeEcsClusters asynchronously, invoking a callback when done
-- @param DescribeEcsClustersRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeEcsClustersAsync(DescribeEcsClustersRequest, cb)
	assert(DescribeEcsClustersRequest, "You must provide a DescribeEcsClustersRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.DescribeEcsClusters",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeEcsClustersRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeEcsClusters synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeEcsClustersRequest
-- @return response
-- @return error_message
function M.DescribeEcsClustersSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeEcsClustersAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call RegisterRdsDbInstance asynchronously, invoking a callback when done
-- @param RegisterRdsDbInstanceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.RegisterRdsDbInstanceAsync(RegisterRdsDbInstanceRequest, cb)
	assert(RegisterRdsDbInstanceRequest, "You must provide a RegisterRdsDbInstanceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.RegisterRdsDbInstance",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", RegisterRdsDbInstanceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RegisterRdsDbInstance synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RegisterRdsDbInstanceRequest
-- @return response
-- @return error_message
function M.RegisterRdsDbInstanceSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RegisterRdsDbInstanceAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call SetTimeBasedAutoScaling asynchronously, invoking a callback when done
-- @param SetTimeBasedAutoScalingRequest
-- @param cb Callback function accepting two args: response, error_message
function M.SetTimeBasedAutoScalingAsync(SetTimeBasedAutoScalingRequest, cb)
	assert(SetTimeBasedAutoScalingRequest, "You must provide a SetTimeBasedAutoScalingRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.SetTimeBasedAutoScaling",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", SetTimeBasedAutoScalingRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call SetTimeBasedAutoScaling synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SetTimeBasedAutoScalingRequest
-- @return response
-- @return error_message
function M.SetTimeBasedAutoScalingSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SetTimeBasedAutoScalingAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeLoadBasedAutoScaling asynchronously, invoking a callback when done
-- @param DescribeLoadBasedAutoScalingRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeLoadBasedAutoScalingAsync(DescribeLoadBasedAutoScalingRequest, cb)
	assert(DescribeLoadBasedAutoScalingRequest, "You must provide a DescribeLoadBasedAutoScalingRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.DescribeLoadBasedAutoScaling",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeLoadBasedAutoScalingRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeLoadBasedAutoScaling synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeLoadBasedAutoScalingRequest
-- @return response
-- @return error_message
function M.DescribeLoadBasedAutoScalingSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeLoadBasedAutoScalingAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call AssignInstance asynchronously, invoking a callback when done
-- @param AssignInstanceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AssignInstanceAsync(AssignInstanceRequest, cb)
	assert(AssignInstanceRequest, "You must provide a AssignInstanceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.AssignInstance",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", AssignInstanceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AssignInstance synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AssignInstanceRequest
-- @return response
-- @return error_message
function M.AssignInstanceSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AssignInstanceAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call SetLoadBasedAutoScaling asynchronously, invoking a callback when done
-- @param SetLoadBasedAutoScalingRequest
-- @param cb Callback function accepting two args: response, error_message
function M.SetLoadBasedAutoScalingAsync(SetLoadBasedAutoScalingRequest, cb)
	assert(SetLoadBasedAutoScalingRequest, "You must provide a SetLoadBasedAutoScalingRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.SetLoadBasedAutoScaling",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", SetLoadBasedAutoScalingRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call SetLoadBasedAutoScaling synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SetLoadBasedAutoScalingRequest
-- @return response
-- @return error_message
function M.SetLoadBasedAutoScalingSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SetLoadBasedAutoScalingAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeStackSummary asynchronously, invoking a callback when done
-- @param DescribeStackSummaryRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeStackSummaryAsync(DescribeStackSummaryRequest, cb)
	assert(DescribeStackSummaryRequest, "You must provide a DescribeStackSummaryRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.DescribeStackSummary",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeStackSummaryRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeStackSummary synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeStackSummaryRequest
-- @return response
-- @return error_message
function M.DescribeStackSummarySync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeStackSummaryAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call StopInstance asynchronously, invoking a callback when done
-- @param StopInstanceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.StopInstanceAsync(StopInstanceRequest, cb)
	assert(StopInstanceRequest, "You must provide a StopInstanceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.StopInstance",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", StopInstanceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call StopInstance synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StopInstanceRequest
-- @return response
-- @return error_message
function M.StopInstanceSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StopInstanceAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeStacks asynchronously, invoking a callback when done
-- @param DescribeStacksRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeStacksAsync(DescribeStacksRequest, cb)
	assert(DescribeStacksRequest, "You must provide a DescribeStacksRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.DescribeStacks",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeStacksRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeStacks synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeStacksRequest
-- @return response
-- @return error_message
function M.DescribeStacksSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeStacksAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateLayer asynchronously, invoking a callback when done
-- @param CreateLayerRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateLayerAsync(CreateLayerRequest, cb)
	assert(CreateLayerRequest, "You must provide a CreateLayerRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.CreateLayer",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateLayerRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateLayer synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateLayerRequest
-- @return response
-- @return error_message
function M.CreateLayerSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateLayerAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateStack asynchronously, invoking a callback when done
-- @param UpdateStackRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateStackAsync(UpdateStackRequest, cb)
	assert(UpdateStackRequest, "You must provide a UpdateStackRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.UpdateStack",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateStackRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateStack synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateStackRequest
-- @return response
-- @return error_message
function M.UpdateStackSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateStackAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GrantAccess asynchronously, invoking a callback when done
-- @param GrantAccessRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GrantAccessAsync(GrantAccessRequest, cb)
	assert(GrantAccessRequest, "You must provide a GrantAccessRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.GrantAccess",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", GrantAccessRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GrantAccess synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GrantAccessRequest
-- @return response
-- @return error_message
function M.GrantAccessSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GrantAccessAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateApp asynchronously, invoking a callback when done
-- @param CreateAppRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateAppAsync(CreateAppRequest, cb)
	assert(CreateAppRequest, "You must provide a CreateAppRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.CreateApp",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateAppRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateApp synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateAppRequest
-- @return response
-- @return error_message
function M.CreateAppSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateAppAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UntagResource asynchronously, invoking a callback when done
-- @param UntagResourceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UntagResourceAsync(UntagResourceRequest, cb)
	assert(UntagResourceRequest, "You must provide a UntagResourceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.UntagResource",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", UntagResourceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UntagResource synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UntagResourceRequest
-- @return response
-- @return error_message
function M.UntagResourceSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UntagResourceAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribePermissions asynchronously, invoking a callback when done
-- @param DescribePermissionsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribePermissionsAsync(DescribePermissionsRequest, cb)
	assert(DescribePermissionsRequest, "You must provide a DescribePermissionsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.DescribePermissions",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribePermissionsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribePermissions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribePermissionsRequest
-- @return response
-- @return error_message
function M.DescribePermissionsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribePermissionsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteLayer asynchronously, invoking a callback when done
-- @param DeleteLayerRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteLayerAsync(DeleteLayerRequest, cb)
	assert(DeleteLayerRequest, "You must provide a DeleteLayerRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.DeleteLayer",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteLayerRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteLayer synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteLayerRequest
-- @return response
-- @return error_message
function M.DeleteLayerSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteLayerAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeVolumes asynchronously, invoking a callback when done
-- @param DescribeVolumesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeVolumesAsync(DescribeVolumesRequest, cb)
	assert(DescribeVolumesRequest, "You must provide a DescribeVolumesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.DescribeVolumes",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeVolumesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeVolumes synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeVolumesRequest
-- @return response
-- @return error_message
function M.DescribeVolumesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeVolumesAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeStackProvisioningParameters asynchronously, invoking a callback when done
-- @param DescribeStackProvisioningParametersRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeStackProvisioningParametersAsync(DescribeStackProvisioningParametersRequest, cb)
	assert(DescribeStackProvisioningParametersRequest, "You must provide a DescribeStackProvisioningParametersRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.DescribeStackProvisioningParameters",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeStackProvisioningParametersRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeStackProvisioningParameters synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeStackProvisioningParametersRequest
-- @return response
-- @return error_message
function M.DescribeStackProvisioningParametersSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeStackProvisioningParametersAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call RegisterInstance asynchronously, invoking a callback when done
-- @param RegisterInstanceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.RegisterInstanceAsync(RegisterInstanceRequest, cb)
	assert(RegisterInstanceRequest, "You must provide a RegisterInstanceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.RegisterInstance",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", RegisterInstanceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RegisterInstance synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RegisterInstanceRequest
-- @return response
-- @return error_message
function M.RegisterInstanceSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RegisterInstanceAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteStack asynchronously, invoking a callback when done
-- @param DeleteStackRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteStackAsync(DeleteStackRequest, cb)
	assert(DeleteStackRequest, "You must provide a DeleteStackRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.DeleteStack",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteStackRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteStack synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteStackRequest
-- @return response
-- @return error_message
function M.DeleteStackSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteStackAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call AssignVolume asynchronously, invoking a callback when done
-- @param AssignVolumeRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AssignVolumeAsync(AssignVolumeRequest, cb)
	assert(AssignVolumeRequest, "You must provide a AssignVolumeRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.AssignVolume",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", AssignVolumeRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AssignVolume synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AssignVolumeRequest
-- @return response
-- @return error_message
function M.AssignVolumeSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AssignVolumeAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateApp asynchronously, invoking a callback when done
-- @param UpdateAppRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateAppAsync(UpdateAppRequest, cb)
	assert(UpdateAppRequest, "You must provide a UpdateAppRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.UpdateApp",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateAppRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateApp synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateAppRequest
-- @return response
-- @return error_message
function M.UpdateAppSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateAppAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeRdsDbInstances asynchronously, invoking a callback when done
-- @param DescribeRdsDbInstancesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeRdsDbInstancesAsync(DescribeRdsDbInstancesRequest, cb)
	assert(DescribeRdsDbInstancesRequest, "You must provide a DescribeRdsDbInstancesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.DescribeRdsDbInstances",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeRdsDbInstancesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeRdsDbInstances synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeRdsDbInstancesRequest
-- @return response
-- @return error_message
function M.DescribeRdsDbInstancesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeRdsDbInstancesAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateUserProfile asynchronously, invoking a callback when done
-- @param UpdateUserProfileRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateUserProfileAsync(UpdateUserProfileRequest, cb)
	assert(UpdateUserProfileRequest, "You must provide a UpdateUserProfileRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.UpdateUserProfile",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateUserProfileRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateUserProfile synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateUserProfileRequest
-- @return response
-- @return error_message
function M.UpdateUserProfileSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateUserProfileAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeUserProfiles asynchronously, invoking a callback when done
-- @param DescribeUserProfilesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeUserProfilesAsync(DescribeUserProfilesRequest, cb)
	assert(DescribeUserProfilesRequest, "You must provide a DescribeUserProfilesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.DescribeUserProfiles",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeUserProfilesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeUserProfiles synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeUserProfilesRequest
-- @return response
-- @return error_message
function M.DescribeUserProfilesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeUserProfilesAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateLayer asynchronously, invoking a callback when done
-- @param UpdateLayerRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateLayerAsync(UpdateLayerRequest, cb)
	assert(UpdateLayerRequest, "You must provide a UpdateLayerRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.UpdateLayer",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateLayerRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateLayer synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateLayerRequest
-- @return response
-- @return error_message
function M.UpdateLayerSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateLayerAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end


return M
