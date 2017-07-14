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
-- @param InstanceId [String] &lt;p&gt;The instance ID.&lt;/p&gt;
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
-- @param InstanceId [String] &lt;p&gt;The instance ID.&lt;/p&gt;
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
-- &lt;p&gt;Summarizes the number of layers, instances, and apps in a stack.&lt;/p&gt;
-- @param StackId [String] &lt;p&gt;The stack ID.&lt;/p&gt;
-- @param InstancesCount [InstancesCount] &lt;p&gt;An &lt;code&gt;InstancesCount&lt;/code&gt; object with the number of instances in each status.&lt;/p&gt;
-- @param Name [String] &lt;p&gt;The stack name.&lt;/p&gt;
-- @param AppsCount [Integer] &lt;p&gt;The number of apps.&lt;/p&gt;
-- @param LayersCount [Integer] &lt;p&gt;The number of layers.&lt;/p&gt;
-- @param Arn [String] &lt;p&gt;The stack's ARN.&lt;/p&gt;
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
-- @param ResourceArn [ResourceArn] &lt;p&gt;The stack or layer's Amazon Resource Number (ARN).&lt;/p&gt;
-- @param NextToken [NextToken] &lt;p&gt;Do not use. A validation exception occurs if you add a &lt;code&gt;NextToken&lt;/code&gt; parameter to a &lt;code&gt;ListTagsRequest&lt;/code&gt; call. &lt;/p&gt;
-- @param MaxResults [MaxResults] &lt;p&gt;Do not use. A validation exception occurs if you add a &lt;code&gt;MaxResults&lt;/code&gt; parameter to a &lt;code&gt;ListTagsRequest&lt;/code&gt; call. &lt;/p&gt;
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
-- &lt;p&gt;Contains the response to a &lt;code&gt;CreateDeployment&lt;/code&gt; request.&lt;/p&gt;
-- @param DeploymentId [String] &lt;p&gt;The deployment ID, which can be used with other requests to identify the deployment.&lt;/p&gt;
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
-- @param StackId [String] &lt;p&gt;The app stack ID. If you use this parameter, &lt;code&gt;DescribeApps&lt;/code&gt; returns a description of the apps in the specified stack.&lt;/p&gt;
-- @param AppIds [Strings] &lt;p&gt;An array of app IDs for the apps to be described. If you use this parameter, &lt;code&gt;DescribeApps&lt;/code&gt; returns a description of the specified apps. Otherwise, it returns a description of every app.&lt;/p&gt;
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
-- @param IamUserArns [Strings] &lt;p&gt;An array of IAM or federated user ARNs that identify the users to be described.&lt;/p&gt;
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
-- @param RdsDbInstanceArn [String] &lt;p&gt;The Amazon RDS instance's ARN.&lt;/p&gt;
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
-- @param InstanceId [String] &lt;p&gt;The instance ID.&lt;/p&gt;
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
-- @param StackId [String] &lt;p&gt;The stack ID.&lt;/p&gt;
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
-- &lt;p&gt;Contains the response to a &lt;code&gt;DescribeVolumes&lt;/code&gt; request.&lt;/p&gt;
-- @param Volumes [Volumes] &lt;p&gt;An array of volume IDs.&lt;/p&gt;
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
-- @param ElasticLoadBalancerName [String] &lt;p&gt;The Elastic Load Balancing instance's name.&lt;/p&gt;
-- @param LayerId [String] &lt;p&gt;The ID of the layer that the Elastic Load Balancing instance is to be attached to.&lt;/p&gt;
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
-- @param SshPublicKey [String] &lt;p&gt;The user's SSH public key.&lt;/p&gt;
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
-- @param LayerId [String] &lt;p&gt;The layer ID.&lt;/p&gt;
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
-- &lt;p&gt;The Shutdown event configuration.&lt;/p&gt;
-- @param DelayUntilElbConnectionsDrained [Boolean] &lt;p&gt;Whether to enable Elastic Load Balancing connection draining. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/ElasticLoadBalancing/latest/DeveloperGuide/TerminologyandKeyConcepts.html#conn-drain&quot;&gt;Connection Draining&lt;/a&gt; &lt;/p&gt;
-- @param ExecutionTimeout [Integer] &lt;p&gt;The time, in seconds, that AWS OpsWorks Stacks will wait after triggering a Shutdown event before shutting down an instance.&lt;/p&gt;
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
-- &lt;p&gt;Describes a registered Amazon ECS cluster.&lt;/p&gt;
-- @param StackId [String] &lt;p&gt;The stack ID.&lt;/p&gt;
-- @param EcsClusterArn [String] &lt;p&gt;The cluster's ARN.&lt;/p&gt;
-- @param RegisteredAt [DateTime] &lt;p&gt;The time and date that the cluster was registered with the stack.&lt;/p&gt;
-- @param EcsClusterName [String] &lt;p&gt;The cluster name.&lt;/p&gt;
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
-- &lt;p&gt;Contains the response to a &lt;code&gt;DescribeApps&lt;/code&gt; request.&lt;/p&gt;
-- @param Apps [Apps] &lt;p&gt;An array of &lt;code&gt;App&lt;/code&gt; objects that describe the specified apps. &lt;/p&gt;
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
-- @param Environment [EnvironmentVariables] &lt;p&gt;An array of &lt;code&gt;EnvironmentVariable&lt;/code&gt; objects that specify environment variables to be associated with the app. After you deploy the app, these variables are defined on the associated app server instances.For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html#workingapps-creating-environment&quot;&gt; Environment Variables&lt;/a&gt;.&lt;/p&gt; &lt;p&gt;There is no specific limit on the number of environment variables. However, the size of the associated data structure - which includes the variables' names, values, and protected flag values - cannot exceed 10 KB (10240 Bytes). This limit should accommodate most if not all use cases. Exceeding it will cause an exception with the message, &quot;Environment: is too large (maximum is 10KB).&quot;&lt;/p&gt; &lt;note&gt; &lt;p&gt;This parameter is supported only by Chef 11.10 stacks. If you have specified one or more environment variables, you cannot modify the stack's Chef version.&lt;/p&gt; &lt;/note&gt;
-- @param AppSource [Source] &lt;p&gt;A &lt;code&gt;Source&lt;/code&gt; object that specifies the app repository.&lt;/p&gt;
-- @param Description [String] &lt;p&gt;A description of the app.&lt;/p&gt;
-- @param EnableSsl [Boolean] &lt;p&gt;Whether SSL is enabled for the app.&lt;/p&gt;
-- @param SslConfiguration [SslConfiguration] &lt;p&gt;An &lt;code&gt;SslConfiguration&lt;/code&gt; object with the SSL configuration.&lt;/p&gt;
-- @param AppId [String] &lt;p&gt;The app ID.&lt;/p&gt;
-- @param Domains [Strings] &lt;p&gt;The app's virtual host settings, with multiple domains separated by commas. For example: &lt;code&gt;'www.example.com, example.com'&lt;/code&gt; &lt;/p&gt;
-- @param Attributes [AppAttributes] &lt;p&gt;One or more user-defined key/value pairs to be added to the stack attributes.&lt;/p&gt;
-- @param Name [String] &lt;p&gt;The app name.&lt;/p&gt;
-- @param Type [AppType] &lt;p&gt;The app type.&lt;/p&gt;
-- @param DataSources [DataSources] &lt;p&gt;The app's data sources.&lt;/p&gt;
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
-- @param StackId [String] &lt;p&gt;The stack ID.&lt;/p&gt;
-- @param ElasticIp [String] &lt;p&gt;The Elastic IP address.&lt;/p&gt;
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
-- @param InstanceId [String] &lt;p&gt;The instance ID. If you include this parameter, &lt;code&gt;DescribeCommands&lt;/code&gt; returns a description of the commands associated with the specified instance.&lt;/p&gt;
-- @param DeploymentId [String] &lt;p&gt;The deployment ID. If you include this parameter, &lt;code&gt;DescribeCommands&lt;/code&gt; returns a description of the commands associated with the specified deployment.&lt;/p&gt;
-- @param CommandIds [Strings] &lt;p&gt;An array of command IDs. If you include this parameter, &lt;code&gt;DescribeCommands&lt;/code&gt; returns a description of the specified commands. Otherwise, it returns a description of every command.&lt;/p&gt;
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
-- @param StackId [String] &lt;p&gt;A stack ID. The action describes the stack's Elastic Load Balancing instances.&lt;/p&gt;
-- @param LayerIds [Strings] &lt;p&gt;A list of layer IDs. The action describes the Elastic Load Balancing instances for the specified layers.&lt;/p&gt;
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
-- @param VolumeId [String] &lt;p&gt;The volume ID.&lt;/p&gt;
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
-- &lt;p&gt;Contains the response to a &lt;code&gt;DescribePermissions&lt;/code&gt; request.&lt;/p&gt;
-- @param Permissions [Permissions] &lt;p&gt;An array of &lt;code&gt;Permission&lt;/code&gt; objects that describe the stack permissions.&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;If the request object contains only a stack ID, the array contains a &lt;code&gt;Permission&lt;/code&gt; object with permissions for each of the stack IAM ARNs.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;If the request object contains only an IAM ARN, the array contains a &lt;code&gt;Permission&lt;/code&gt; object with permissions for each of the user's stack IDs.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;If the request contains a stack ID and an IAM ARN, the array contains a single &lt;code&gt;Permission&lt;/code&gt; object with permissions for the specified stack and IAM ARN.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
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
-- &lt;p&gt;Contains the response to a &lt;code&gt;ListTags&lt;/code&gt; request.&lt;/p&gt;
-- @param NextToken [NextToken] &lt;p&gt;If a paginated request does not return all of the remaining results, this parameter is set to a token that you can assign to the request object's &lt;code&gt;NextToken&lt;/code&gt; parameter to get the next set of results. If the previous paginated request returned all of the remaining results, this parameter is set to &lt;code&gt;null&lt;/code&gt;. &lt;/p&gt;
-- @param Tags [Tags] &lt;p&gt;A set of key-value pairs that contain tag keys and tag values that are attached to a stack or layer.&lt;/p&gt;
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
-- &lt;p&gt;AWS OpsWorks Stacks supports five lifecycle events: &lt;b&gt;setup&lt;/b&gt;, &lt;b&gt;configuration&lt;/b&gt;, &lt;b&gt;deploy&lt;/b&gt;, &lt;b&gt;undeploy&lt;/b&gt;, and &lt;b&gt;shutdown&lt;/b&gt;. For each layer, AWS OpsWorks Stacks runs a set of standard recipes for each event. In addition, you can provide custom recipes for any or all layers and events. AWS OpsWorks Stacks runs custom event recipes after the standard recipes. &lt;code&gt;LayerCustomRecipes&lt;/code&gt; specifies the custom recipes for a particular layer to be run in response to each of the five events. &lt;/p&gt; &lt;p&gt;To specify a recipe, use the cookbook's directory name in the repository followed by two colons and the recipe name, which is the recipe's file name without the .rb extension. For example: phpapp2::dbsetup specifies the dbsetup.rb recipe in the repository's phpapp2 folder.&lt;/p&gt;
-- @param Undeploy [Strings] &lt;p&gt;An array of custom recipe names to be run following a &lt;code&gt;undeploy&lt;/code&gt; event.&lt;/p&gt;
-- @param Setup [Strings] &lt;p&gt;An array of custom recipe names to be run following a &lt;code&gt;setup&lt;/code&gt; event.&lt;/p&gt;
-- @param Configure [Strings] &lt;p&gt;An array of custom recipe names to be run following a &lt;code&gt;configure&lt;/code&gt; event.&lt;/p&gt;
-- @param Shutdown [Strings] &lt;p&gt;An array of custom recipe names to be run following a &lt;code&gt;shutdown&lt;/code&gt; event.&lt;/p&gt;
-- @param Deploy [Strings] &lt;p&gt;An array of custom recipe names to be run following a &lt;code&gt;deploy&lt;/code&gt; event.&lt;/p&gt;
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
-- &lt;p&gt;Describes a layer.&lt;/p&gt;
-- @param StackId [String] &lt;p&gt;The layer stack ID.&lt;/p&gt;
-- @param DefaultRecipes [Recipes] &lt;p&gt;Describes a layer.&lt;/p&gt;
-- @param LayerId [String] &lt;p&gt;The layer ID.&lt;/p&gt;
-- @param AutoAssignPublicIps [Boolean] &lt;p&gt;For stacks that are running in a VPC, whether to automatically assign a public IP address to the layer's instances. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-edit.html&quot;&gt;How to Edit a Layer&lt;/a&gt;.&lt;/p&gt;
-- @param Shortname [String] &lt;p&gt;The layer short name.&lt;/p&gt;
-- @param CustomSecurityGroupIds [Strings] &lt;p&gt;An array containing the layer's custom security group IDs.&lt;/p&gt;
-- @param LifecycleEventConfiguration [LifecycleEventConfiguration] &lt;p&gt;A &lt;code&gt;LifeCycleEventConfiguration&lt;/code&gt; object that specifies the Shutdown event configuration.&lt;/p&gt;
-- @param Type [LayerType] &lt;p&gt;The layer type.&lt;/p&gt;
-- @param CustomInstanceProfileArn [String] &lt;p&gt;The ARN of the default IAM profile to be used for the layer's EC2 instances. For more information about IAM ARNs, see &lt;a href=&quot;http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html&quot;&gt;Using Identifiers&lt;/a&gt;.&lt;/p&gt;
-- @param UseEbsOptimizedInstances [Boolean] &lt;p&gt;Whether the layer uses Amazon EBS-optimized instances.&lt;/p&gt;
-- @param Packages [Strings] &lt;p&gt;An array of &lt;code&gt;Package&lt;/code&gt; objects that describe the layer's packages.&lt;/p&gt;
-- @param CreatedAt [DateTime] &lt;p&gt;Date when the layer was created.&lt;/p&gt;
-- @param Name [String] &lt;p&gt;The layer name.&lt;/p&gt;
-- @param CloudWatchLogsConfiguration [CloudWatchLogsConfiguration] &lt;p&gt;The Amazon CloudWatch Logs configuration settings for the layer.&lt;/p&gt;
-- @param CustomRecipes [Recipes] &lt;p&gt;A &lt;code&gt;LayerCustomRecipes&lt;/code&gt; object that specifies the layer's custom recipes.&lt;/p&gt;
-- @param VolumeConfigurations [VolumeConfigurations] &lt;p&gt;A &lt;code&gt;VolumeConfigurations&lt;/code&gt; object that describes the layer's Amazon EBS volumes.&lt;/p&gt;
-- @param Attributes [LayerAttributes] &lt;p&gt;The layer attributes.&lt;/p&gt; &lt;p&gt;For the &lt;code&gt;HaproxyStatsPassword&lt;/code&gt;, &lt;code&gt;MysqlRootPassword&lt;/code&gt;, and &lt;code&gt;GangliaPassword&lt;/code&gt; attributes, AWS OpsWorks Stacks returns &lt;code&gt;*****FILTERED*****&lt;/code&gt; instead of the actual value&lt;/p&gt; &lt;p&gt;For an ECS Cluster layer, AWS OpsWorks Stacks the &lt;code&gt;EcsClusterArn&lt;/code&gt; attribute is set to the cluster's ARN.&lt;/p&gt;
-- @param InstallUpdatesOnBoot [Boolean] &lt;p&gt;Whether to install operating system and package updates when the instance boots. The default value is &lt;code&gt;true&lt;/code&gt;. If this value is set to &lt;code&gt;false&lt;/code&gt;, you must then update your instances manually by using &lt;a&gt;CreateDeployment&lt;/a&gt; to run the &lt;code&gt;update_dependencies&lt;/code&gt; stack command or manually running &lt;code&gt;yum&lt;/code&gt; (Amazon Linux) or &lt;code&gt;apt-get&lt;/code&gt; (Ubuntu) on the instances. &lt;/p&gt; &lt;note&gt; &lt;p&gt;We strongly recommend using the default value of &lt;code&gt;true&lt;/code&gt;, to ensure that your instances have the latest security updates.&lt;/p&gt; &lt;/note&gt;
-- @param AutoAssignElasticIps [Boolean] &lt;p&gt;Whether to automatically assign an &lt;a href=&quot;http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html&quot;&gt;Elastic IP address&lt;/a&gt; to the layer's instances. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-edit.html&quot;&gt;How to Edit a Layer&lt;/a&gt;.&lt;/p&gt;
-- @param DefaultSecurityGroupNames [Strings] &lt;p&gt;An array containing the layer's security group names.&lt;/p&gt;
-- @param CustomJson [String] &lt;p&gt;A JSON formatted string containing the layer's custom stack configuration and deployment attributes.&lt;/p&gt;
-- @param EnableAutoHealing [Boolean] &lt;p&gt;Whether auto healing is disabled for the layer.&lt;/p&gt;
-- @param Arn [String] &lt;p&gt;Describes a layer.&lt;/p&gt;
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
-- @param ServiceRoleArn [String] &lt;p&gt;The stack's AWS Identity and Access Management (IAM) role, which allows AWS OpsWorks Stacks to work with AWS resources on your behalf. You must set this parameter to the Amazon Resource Name (ARN) for an existing IAM role. For more information about IAM ARNs, see &lt;a href=&quot;http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html&quot;&gt;Using Identifiers&lt;/a&gt;.&lt;/p&gt;
-- @param DefaultSubnetId [String] &lt;p&gt;The stack's default VPC subnet ID. This parameter is required if you specify a value for the &lt;code&gt;VpcId&lt;/code&gt; parameter. All instances are launched into this subnet unless you specify otherwise when you create the instance. If you also specify a value for &lt;code&gt;DefaultAvailabilityZone&lt;/code&gt;, the subnet must be in that zone. For information on default values and when this parameter is required, see the &lt;code&gt;VpcId&lt;/code&gt; parameter description. &lt;/p&gt;
-- @param VpcId [String] &lt;p&gt;The ID of the VPC that the stack is to be launched into. The VPC must be in the stack's region. All instances are launched into this VPC. You cannot change the ID later.&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;If your account supports EC2-Classic, the default value is &lt;code&gt;no VPC&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;If your account does not support EC2-Classic, the default value is the default VPC for the specified region.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;If the VPC ID corresponds to a default VPC and you have specified either the &lt;code&gt;DefaultAvailabilityZone&lt;/code&gt; or the &lt;code&gt;DefaultSubnetId&lt;/code&gt; parameter only, AWS OpsWorks Stacks infers the value of the other parameter. If you specify neither parameter, AWS OpsWorks Stacks sets these parameters to the first valid Availability Zone for the specified region and the corresponding default VPC subnet ID, respectively.&lt;/p&gt; &lt;p&gt;If you specify a nondefault VPC ID, note the following:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;It must belong to a VPC in your account that is in the specified region.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;You must specify a value for &lt;code&gt;DefaultSubnetId&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;For more information on how to use AWS OpsWorks Stacks with a VPC, see &lt;a href=&quot;http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-vpc.html&quot;&gt;Running a Stack in a VPC&lt;/a&gt;. For more information on default VPC and EC2-Classic, see &lt;a href=&quot;http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-supported-platforms.html&quot;&gt;Supported Platforms&lt;/a&gt;. &lt;/p&gt;
-- @param DefaultRootDeviceType [RootDeviceType] &lt;p&gt;The default root device type. This value is the default for all instances in the stack, but you can override it when you create an instance. The default option is &lt;code&gt;instance-store&lt;/code&gt;. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ComponentsAMIs.html#storage-for-the-root-device&quot;&gt;Storage for the Root Device&lt;/a&gt;.&lt;/p&gt;
-- @param Name [String] &lt;p&gt;The stack name.&lt;/p&gt;
-- @param HostnameTheme [String] &lt;p&gt;The stack's host name theme, with spaces replaced by underscores. The theme is used to generate host names for the stack's instances. By default, &lt;code&gt;HostnameTheme&lt;/code&gt; is set to &lt;code&gt;Layer_Dependent&lt;/code&gt;, which creates host names by appending integers to the layer's short name. The other themes are:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Baked_Goods&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Clouds&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Europe_Cities&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Fruits&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Greek_Deities&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Legendary_creatures_from_Japan&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Planets_and_Moons&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Roman_Deities&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Scottish_Islands&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;US_Cities&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Wild_Cats&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;To obtain a generated host name, call &lt;code&gt;GetHostNameSuggestion&lt;/code&gt;, which returns a host name based on the current theme.&lt;/p&gt;
-- @param UseCustomCookbooks [Boolean] &lt;p&gt;Whether the stack uses custom cookbooks.&lt;/p&gt;
-- @param CustomJson [String] &lt;p&gt;A string that contains user-defined, custom JSON. It can be used to override the corresponding default stack configuration attribute values or to pass data to recipes. The string should be in the following format:&lt;/p&gt; &lt;p&gt; &lt;code&gt;&quot;{\&quot;key1\&quot;: \&quot;value1\&quot;, \&quot;key2\&quot;: \&quot;value2\&quot;,...}&quot;&lt;/code&gt; &lt;/p&gt; &lt;p&gt;For more information on custom JSON, see &lt;a href=&quot;http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-json.html&quot;&gt;Use Custom JSON to Modify the Stack Configuration Attributes&lt;/a&gt;.&lt;/p&gt;
-- @param Region [String] &lt;p&gt;The stack's AWS region, such as &quot;ap-south-1&quot;. For more information about Amazon regions, see &lt;a href=&quot;http://docs.aws.amazon.com/general/latest/gr/rande.html&quot;&gt;Regions and Endpoints&lt;/a&gt;.&lt;/p&gt;
-- @param DefaultAvailabilityZone [String] &lt;p&gt;The stack's default Availability Zone, which must be in the specified region. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/general/latest/gr/rande.html&quot;&gt;Regions and Endpoints&lt;/a&gt;. If you also specify a value for &lt;code&gt;DefaultSubnetId&lt;/code&gt;, the subnet must be in the same zone. For more information, see the &lt;code&gt;VpcId&lt;/code&gt; parameter description. &lt;/p&gt;
-- @param UseOpsworksSecurityGroups [Boolean] &lt;p&gt;Whether to associate the AWS OpsWorks Stacks built-in security groups with the stack's layers.&lt;/p&gt; &lt;p&gt;AWS OpsWorks Stacks provides a standard set of built-in security groups, one for each layer, which are associated with layers by default. With &lt;code&gt;UseOpsworksSecurityGroups&lt;/code&gt; you can instead provide your own custom security groups. &lt;code&gt;UseOpsworksSecurityGroups&lt;/code&gt; has the following settings: &lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;True - AWS OpsWorks Stacks automatically associates the appropriate built-in security group with each layer (default setting). You can associate additional security groups with a layer after you create it, but you cannot delete the built-in security group.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;False - AWS OpsWorks Stacks does not associate built-in security groups with layers. You must create appropriate EC2 security groups and associate a security group with each layer that you create. However, you can still manually associate a built-in security group with a layer on creation; custom security groups are required only for those layers that need custom settings.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-creating.html&quot;&gt;Create a New Stack&lt;/a&gt;.&lt;/p&gt;
-- @param CustomCookbooksSource [Source]  
-- @param ConfigurationManager [StackConfigurationManager] &lt;p&gt;The configuration manager. When you create a stack we recommend that you use the configuration manager to specify the Chef version: 12, 11.10, or 11.4 for Linux stacks, or 12.2 for Windows stacks. The default value for Linux stacks is currently 11.4.&lt;/p&gt;
-- @param ChefConfiguration [ChefConfiguration] &lt;p&gt;A &lt;code&gt;ChefConfiguration&lt;/code&gt; object that specifies whether to enable Berkshelf and the Berkshelf version on Chef 11.10 stacks. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-creating.html&quot;&gt;Create a New Stack&lt;/a&gt;.&lt;/p&gt;
-- @param AgentVersion [String] &lt;p&gt;The default AWS OpsWorks Stacks agent version. You have the following options:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Auto-update - Set this parameter to &lt;code&gt;LATEST&lt;/code&gt;. AWS OpsWorks Stacks automatically installs new agent versions on the stack's instances as soon as they are available.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Fixed version - Set this parameter to your preferred agent version. To update the agent version, you must edit the stack configuration and specify a new version. AWS OpsWorks Stacks then automatically installs that version on the stack's instances.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;The default setting is the most recent release of the agent. To specify an agent version, you must use the complete version number, not the abbreviated number shown on the console. For a list of available agent version numbers, call &lt;a&gt;DescribeAgentVersions&lt;/a&gt;. AgentVersion cannot be set to Chef 12.2.&lt;/p&gt; &lt;note&gt; &lt;p&gt;You can also specify an agent version when you create or update an instance, which overrides the stack's default setting.&lt;/p&gt; &lt;/note&gt;
-- @param DefaultSshKeyName [String] &lt;p&gt;A default Amazon EC2 key pair name. The default value is none. If you specify a key pair name, AWS OpsWorks installs the public key on the instance and you can use the private key with an SSH client to log in to the instance. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-ssh.html&quot;&gt; Using SSH to Communicate with an Instance&lt;/a&gt; and &lt;a href=&quot;http://docs.aws.amazon.com/opsworks/latest/userguide/security-ssh-access.html&quot;&gt; Managing SSH Access&lt;/a&gt;. You can override this setting by specifying a different key pair, or no key pair, when you &lt;a href=&quot;http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-add.html&quot;&gt; create an instance&lt;/a&gt;. &lt;/p&gt;
-- @param DefaultInstanceProfileArn [String] &lt;p&gt;The Amazon Resource Name (ARN) of an IAM profile that is the default profile for all of the stack's EC2 instances. For more information about IAM ARNs, see &lt;a href=&quot;http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html&quot;&gt;Using Identifiers&lt;/a&gt;.&lt;/p&gt;
-- @param Attributes [StackAttributes] &lt;p&gt;One or more user-defined key-value pairs to be added to the stack attributes.&lt;/p&gt;
-- @param DefaultOs [String] &lt;p&gt;The stack's default operating system, which is installed on every instance unless you specify a different operating system when you create the instance. You can specify one of the following.&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;A supported Linux operating system: An Amazon Linux version, such as &lt;code&gt;Amazon Linux 2017.03&lt;/code&gt;, &lt;code&gt;Amazon Linux 2016.09&lt;/code&gt;, &lt;code&gt;Amazon Linux 2016.03&lt;/code&gt;, &lt;code&gt;Amazon Linux 2015.09&lt;/code&gt;, or &lt;code&gt;Amazon Linux 2015.03&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;A supported Ubuntu operating system, such as &lt;code&gt;Ubuntu 16.04 LTS&lt;/code&gt;, &lt;code&gt;Ubuntu 14.04 LTS&lt;/code&gt;, or &lt;code&gt;Ubuntu 12.04 LTS&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;CentOS Linux 7&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Red Hat Enterprise Linux 7&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;A supported Windows operating system, such as &lt;code&gt;Microsoft Windows Server 2012 R2 Base&lt;/code&gt;, &lt;code&gt;Microsoft Windows Server 2012 R2 with SQL Server Express&lt;/code&gt;, &lt;code&gt;Microsoft Windows Server 2012 R2 with SQL Server Standard&lt;/code&gt;, or &lt;code&gt;Microsoft Windows Server 2012 R2 with SQL Server Web&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;A custom AMI: &lt;code&gt;Custom&lt;/code&gt;. You specify the custom AMI you want to use when you create instances. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-custom-ami.html&quot;&gt; Using Custom AMIs&lt;/a&gt;.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;The default option is the current Amazon Linux version. For more information on the supported operating systems, see &lt;a href=&quot;http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-os.html&quot;&gt;AWS OpsWorks Stacks Operating Systems&lt;/a&gt;.&lt;/p&gt;
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
-- &lt;p&gt;Describes an instance.&lt;/p&gt;
-- @param PrivateDns [String] &lt;p&gt;The instance's private DNS name.&lt;/p&gt;
-- @param SshHostRsaKeyFingerprint [String] &lt;p&gt;The SSH key's RSA fingerprint.&lt;/p&gt;
-- @param SubnetId [String] &lt;p&gt;The instance's subnet ID; applicable only if the stack is running in a VPC.&lt;/p&gt;
-- @param Hostname [String] &lt;p&gt;The instance host name.&lt;/p&gt;
-- @param LastServiceErrorId [String] &lt;p&gt;The ID of the last service error. For more information, call &lt;a&gt;DescribeServiceErrors&lt;/a&gt;.&lt;/p&gt;
-- @param Platform [String] &lt;p&gt;The instance's platform.&lt;/p&gt;
-- @param EbsOptimized [Boolean] &lt;p&gt;Whether this is an Amazon EBS-optimized instance.&lt;/p&gt;
-- @param ReportedOs [ReportedOs] &lt;p&gt;For registered instances, the reported operating system.&lt;/p&gt;
-- @param AutoScalingType [AutoScalingType] &lt;p&gt;For load-based or time-based instances, the type.&lt;/p&gt;
-- @param Status [String] &lt;p&gt;The instance status:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;booting&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;connection_lost&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;online&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;pending&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;rebooting&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;requested&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;running_setup&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;setup_failed&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;shutting_down&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;start_failed&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;stop_failed&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;stopped&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;stopping&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;terminated&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;terminating&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param StackId [String] &lt;p&gt;The stack ID.&lt;/p&gt;
-- @param InstanceId [String] &lt;p&gt;The instance ID.&lt;/p&gt;
-- @param SshKeyName [String] &lt;p&gt;The instance's Amazon EC2 key-pair name.&lt;/p&gt;
-- @param InfrastructureClass [String] &lt;p&gt;For registered instances, the infrastructure class: &lt;code&gt;ec2&lt;/code&gt; or &lt;code&gt;on-premises&lt;/code&gt;.&lt;/p&gt;
-- @param RootDeviceVolumeId [String] &lt;p&gt;The root device volume ID.&lt;/p&gt;
-- @param Tenancy [String] &lt;p&gt;The instance's tenancy option, such as &lt;code&gt;dedicated&lt;/code&gt; or &lt;code&gt;host&lt;/code&gt;.&lt;/p&gt;
-- @param AgentVersion [String] &lt;p&gt;The agent version. This parameter is set to &lt;code&gt;INHERIT&lt;/code&gt; if the instance inherits the default stack setting or to a a version number for a fixed agent version.&lt;/p&gt;
-- @param SshHostDsaKeyFingerprint [String] &lt;p&gt;The SSH key's Deep Security Agent (DSA) fingerprint.&lt;/p&gt;
-- @param InstanceProfileArn [String] &lt;p&gt;The ARN of the instance's IAM profile. For more information about IAM ARNs, see &lt;a href=&quot;http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html&quot;&gt;Using Identifiers&lt;/a&gt;.&lt;/p&gt;
-- @param InstanceType [String] &lt;p&gt;The instance type, such as &lt;code&gt;t2.micro&lt;/code&gt;.&lt;/p&gt;
-- @param CreatedAt [DateTime] &lt;p&gt;The time that the instance was created.&lt;/p&gt;
-- @param AmiId [String] &lt;p&gt;A custom AMI ID to be used to create the instance. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-custom-ami.html&quot;&gt;Instances&lt;/a&gt; &lt;/p&gt;
-- @param LayerIds [Strings] &lt;p&gt;An array containing the instance layer IDs.&lt;/p&gt;
-- @param Ec2InstanceId [String] &lt;p&gt;The ID of the associated Amazon EC2 instance.&lt;/p&gt;
-- @param PublicDns [String] &lt;p&gt;The instance public DNS name.&lt;/p&gt;
-- @param SecurityGroupIds [Strings] &lt;p&gt;An array containing the instance security group IDs.&lt;/p&gt;
-- @param EcsClusterArn [String] &lt;p&gt;For container instances, the Amazon ECS cluster's ARN.&lt;/p&gt;
-- @param BlockDeviceMappings [BlockDeviceMappings] &lt;p&gt;An array of &lt;code&gt;BlockDeviceMapping&lt;/code&gt; objects that specify the instance's block device mappings.&lt;/p&gt;
-- @param Architecture [Architecture] &lt;p&gt;The instance architecture: &quot;i386&quot; or &quot;x86_64&quot;.&lt;/p&gt;
-- @param ReportedAgentVersion [String] &lt;p&gt;The instance's reported AWS OpsWorks Stacks agent version.&lt;/p&gt;
-- @param InstallUpdatesOnBoot [Boolean] &lt;p&gt;Whether to install operating system and package updates when the instance boots. The default value is &lt;code&gt;true&lt;/code&gt;. If this value is set to &lt;code&gt;false&lt;/code&gt;, you must then update your instances manually by using &lt;a&gt;CreateDeployment&lt;/a&gt; to run the &lt;code&gt;update_dependencies&lt;/code&gt; stack command or by manually running &lt;code&gt;yum&lt;/code&gt; (Amazon Linux) or &lt;code&gt;apt-get&lt;/code&gt; (Ubuntu) on the instances. &lt;/p&gt; &lt;note&gt; &lt;p&gt;We strongly recommend using the default value of &lt;code&gt;true&lt;/code&gt;, to ensure that your instances have the latest security updates.&lt;/p&gt; &lt;/note&gt;
-- @param Os [String] &lt;p&gt;The instance's operating system.&lt;/p&gt;
-- @param VirtualizationType [VirtualizationType] &lt;p&gt;The instance's virtualization type: &lt;code&gt;paravirtual&lt;/code&gt; or &lt;code&gt;hvm&lt;/code&gt;.&lt;/p&gt;
-- @param AvailabilityZone [String] &lt;p&gt;The instance Availability Zone. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/general/latest/gr/rande.html&quot;&gt;Regions and Endpoints&lt;/a&gt;.&lt;/p&gt;
-- @param EcsContainerInstanceArn [String] &lt;p&gt;For container instances, the instance's ARN.&lt;/p&gt;
-- @param ElasticIp [String] &lt;p&gt;The instance &lt;a href=&quot;http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html&quot;&gt;Elastic IP address &lt;/a&gt;.&lt;/p&gt;
-- @param RootDeviceType [RootDeviceType] &lt;p&gt;The instance's root device type. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ComponentsAMIs.html#storage-for-the-root-device&quot;&gt;Storage for the Root Device&lt;/a&gt;.&lt;/p&gt;
-- @param PrivateIp [String] &lt;p&gt;The instance's private IP address.&lt;/p&gt;
-- @param PublicIp [String] &lt;p&gt;The instance public IP address.&lt;/p&gt;
-- @param RegisteredBy [String] &lt;p&gt;For registered instances, who performed the registration.&lt;/p&gt;
-- @param Arn [String] &lt;p&gt;Describes an instance.&lt;/p&gt;
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
-- &lt;p&gt;Describes a time-based instance's auto scaling schedule. The schedule consists of a set of key-value pairs.&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;The key is the time period (a UTC hour) and must be an integer from 0 - 23.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;The value indicates whether the instance should be online or offline for the specified period, and must be set to &quot;on&quot; or &quot;off&quot;&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;The default setting for all time periods is off, so you use the following parameters primarily to specify the online periods. You don't have to explicitly specify offline periods unless you want to change an online period to an offline period.&lt;/p&gt; &lt;p&gt;The following example specifies that the instance should be online for four hours, from UTC 1200 - 1600. It will be off for the remainder of the day.&lt;/p&gt; &lt;p&gt; &lt;code&gt; { &quot;12&quot;:&quot;on&quot;, &quot;13&quot;:&quot;on&quot;, &quot;14&quot;:&quot;on&quot;, &quot;15&quot;:&quot;on&quot; } &lt;/code&gt; &lt;/p&gt;
-- @param Monday [DailyAutoScalingSchedule] &lt;p&gt;The schedule for Monday.&lt;/p&gt;
-- @param Tuesday [DailyAutoScalingSchedule] &lt;p&gt;The schedule for Tuesday.&lt;/p&gt;
-- @param Friday [DailyAutoScalingSchedule] &lt;p&gt;The schedule for Friday.&lt;/p&gt;
-- @param Wednesday [DailyAutoScalingSchedule] &lt;p&gt;The schedule for Wednesday.&lt;/p&gt;
-- @param Thursday [DailyAutoScalingSchedule] &lt;p&gt;The schedule for Thursday.&lt;/p&gt;
-- @param Sunday [DailyAutoScalingSchedule] &lt;p&gt;The schedule for Sunday.&lt;/p&gt;
-- @param Saturday [DailyAutoScalingSchedule] &lt;p&gt;The schedule for Saturday.&lt;/p&gt;
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
-- &lt;p&gt;Represents an app's environment variable.&lt;/p&gt;
-- @param Value [String] &lt;p&gt;(Optional) The environment variable's value, which can be left empty. If you specify a value, it can contain up to 256 characters, which must all be printable.&lt;/p&gt;
-- @param Key [String] &lt;p&gt;(Required) The environment variable's name, which can consist of up to 64 characters and must be specified. The name can contain upper- and lowercase letters, numbers, and underscores (_), but it must start with a letter or underscore.&lt;/p&gt;
-- @param Secure [Boolean] &lt;p&gt;(Optional) Whether the variable's value will be returned by the &lt;a&gt;DescribeApps&lt;/a&gt; action. To conceal an environment variable's value, set &lt;code&gt;Secure&lt;/code&gt; to &lt;code&gt;true&lt;/code&gt;. &lt;code&gt;DescribeApps&lt;/code&gt; then returns &lt;code&gt;*****FILTERED*****&lt;/code&gt; instead of the actual value. The default value for &lt;code&gt;Secure&lt;/code&gt; is &lt;code&gt;false&lt;/code&gt;. &lt;/p&gt;
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
-- &lt;p&gt;Contains the response to a &lt;code&gt;RegisterInstanceResult&lt;/code&gt; request.&lt;/p&gt;
-- @param InstanceId [String] &lt;p&gt;The registered instance's AWS OpsWorks Stacks ID.&lt;/p&gt;
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
-- &lt;p&gt;Describes a load-based auto scaling upscaling or downscaling threshold configuration, which specifies when AWS OpsWorks Stacks starts or stops load-based instances.&lt;/p&gt;
-- @param InstanceCount [Integer] &lt;p&gt;The number of instances to add or remove when the load exceeds a threshold.&lt;/p&gt;
-- @param LoadThreshold [Double] &lt;p&gt;The load threshold. A value of -1 disables the threshold. For more information about how load is computed, see &lt;a href=&quot;http://en.wikipedia.org/wiki/Load_%28computing%29&quot;&gt;Load (computing)&lt;/a&gt;.&lt;/p&gt;
-- @param ThresholdsWaitTime [Minute] &lt;p&gt;The amount of time, in minutes, that the load must exceed a threshold before more instances are added or removed.&lt;/p&gt;
-- @param IgnoreMetricsTime [Minute] &lt;p&gt;The amount of time (in minutes) after a scaling event occurs that AWS OpsWorks Stacks should ignore metrics and suppress additional scaling events. For example, AWS OpsWorks Stacks adds new instances following an upscaling event but the instances won't start reducing the load until they have been booted and configured. There is no point in raising additional scaling events during that operation, which typically takes several minutes. &lt;code&gt;IgnoreMetricsTime&lt;/code&gt; allows you to direct AWS OpsWorks Stacks to suppress scaling events long enough to get the new instances online.&lt;/p&gt;
-- @param MemoryThreshold [Double] &lt;p&gt;The memory utilization threshold, as a percent of the available memory. A value of -1 disables the threshold.&lt;/p&gt;
-- @param Alarms [Strings] &lt;p&gt;Custom Cloudwatch auto scaling alarms, to be used as thresholds. This parameter takes a list of up to five alarm names, which are case sensitive and must be in the same region as the stack.&lt;/p&gt; &lt;note&gt; &lt;p&gt;To use custom alarms, you must update your service role to allow &lt;code&gt;cloudwatch:DescribeAlarms&lt;/code&gt;. You can either have AWS OpsWorks Stacks update the role for you when you first use this feature or you can edit the role manually. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-servicerole.html&quot;&gt;Allowing AWS OpsWorks Stacks to Act on Your Behalf&lt;/a&gt;.&lt;/p&gt; &lt;/note&gt;
-- @param CpuThreshold [Double] &lt;p&gt;The CPU utilization threshold, as a percent of the available CPU. A value of -1 disables the threshold.&lt;/p&gt;
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
-- @param InstanceId [String] &lt;p&gt;The instance ID.&lt;/p&gt;
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
-- &lt;p&gt;Describes an Amazon EBS volume. This data type maps directly to the Amazon EC2 &lt;a href=&quot;http://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_EbsBlockDevice.html&quot;&gt;EbsBlockDevice&lt;/a&gt; data type.&lt;/p&gt;
-- @param DeleteOnTermination [Boolean] &lt;p&gt;Whether the volume is deleted on instance termination.&lt;/p&gt;
-- @param SnapshotId [String] &lt;p&gt;The snapshot ID.&lt;/p&gt;
-- @param Iops [Integer] &lt;p&gt;The number of I/O operations per second (IOPS) that the volume supports. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_EbsBlockDevice.html&quot;&gt;EbsBlockDevice&lt;/a&gt;.&lt;/p&gt;
-- @param VolumeType [VolumeType] &lt;p&gt;The volume type. &lt;code&gt;gp2&lt;/code&gt; for General Purpose (SSD) volumes, &lt;code&gt;io1&lt;/code&gt; for Provisioned IOPS (SSD) volumes, and &lt;code&gt;standard&lt;/code&gt; for Magnetic volumes.&lt;/p&gt;
-- @param VolumeSize [Integer] &lt;p&gt;The volume size, in GiB. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_EbsBlockDevice.html&quot;&gt;EbsBlockDevice&lt;/a&gt;.&lt;/p&gt;
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
-- &lt;p&gt;Describes a layer's load-based auto scaling configuration.&lt;/p&gt;
-- @param DownScaling [AutoScalingThresholds] &lt;p&gt;An &lt;code&gt;AutoScalingThresholds&lt;/code&gt; object that describes the downscaling configuration, which defines how and when AWS OpsWorks Stacks reduces the number of instances.&lt;/p&gt;
-- @param Enable [Boolean] &lt;p&gt;Whether load-based auto scaling is enabled for the layer.&lt;/p&gt;
-- @param UpScaling [AutoScalingThresholds] &lt;p&gt;An &lt;code&gt;AutoScalingThresholds&lt;/code&gt; object that describes the upscaling configuration, which defines how and when AWS OpsWorks Stacks increases the number of instances.&lt;/p&gt;
-- @param LayerId [String] &lt;p&gt;The layer ID.&lt;/p&gt;
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
-- &lt;p&gt;Contains the response to a &lt;code&gt;CreateApp&lt;/code&gt; request.&lt;/p&gt;
-- @param AppId [String] &lt;p&gt;The app ID.&lt;/p&gt;
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
-- @param InstanceId [String] &lt;p&gt;The instance ID.&lt;/p&gt;
-- @param AutoScalingSchedule [WeeklyAutoScalingSchedule] &lt;p&gt;An &lt;code&gt;AutoScalingSchedule&lt;/code&gt; with the instance schedule.&lt;/p&gt;
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
-- @param HostnameTheme [String] &lt;p&gt;The stack's host name theme, with spaces are replaced by underscores. The theme is used to generate host names for the stack's instances. By default, &lt;code&gt;HostnameTheme&lt;/code&gt; is set to &lt;code&gt;Layer_Dependent&lt;/code&gt;, which creates host names by appending integers to the layer's short name. The other themes are:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Baked_Goods&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Clouds&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Europe_Cities&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Fruits&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Greek_Deities&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Legendary_creatures_from_Japan&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Planets_and_Moons&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Roman_Deities&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Scottish_Islands&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;US_Cities&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Wild_Cats&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;To obtain a generated host name, call &lt;code&gt;GetHostNameSuggestion&lt;/code&gt;, which returns a host name based on the current theme.&lt;/p&gt;
-- @param UseCustomCookbooks [Boolean] &lt;p&gt;Whether to use custom cookbooks.&lt;/p&gt;
-- @param DefaultSshKeyName [String] &lt;p&gt;A default Amazon EC2 key pair name. The default value is none. If you specify a key pair name, AWS OpsWorks installs the public key on the instance and you can use the private key with an SSH client to log in to the instance. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-ssh.html&quot;&gt; Using SSH to Communicate with an Instance&lt;/a&gt; and &lt;a href=&quot;http://docs.aws.amazon.com/opsworks/latest/userguide/security-ssh-access.html&quot;&gt; Managing SSH Access&lt;/a&gt;. You can override this setting by specifying a different key pair, or no key pair, when you &lt;a href=&quot;http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-add.html&quot;&gt; create an instance&lt;/a&gt;. &lt;/p&gt;
-- @param CloneAppIds [Strings] &lt;p&gt;A list of source stack app IDs to be included in the cloned stack.&lt;/p&gt;
-- @param ChefConfiguration [ChefConfiguration] &lt;p&gt;A &lt;code&gt;ChefConfiguration&lt;/code&gt; object that specifies whether to enable Berkshelf and the Berkshelf version on Chef 11.10 stacks. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-creating.html&quot;&gt;Create a New Stack&lt;/a&gt;.&lt;/p&gt;
-- @param UseOpsworksSecurityGroups [Boolean] &lt;p&gt;Whether to associate the AWS OpsWorks Stacks built-in security groups with the stack's layers.&lt;/p&gt; &lt;p&gt;AWS OpsWorks Stacks provides a standard set of built-in security groups, one for each layer, which are associated with layers by default. With &lt;code&gt;UseOpsworksSecurityGroups&lt;/code&gt; you can instead provide your own custom security groups. &lt;code&gt;UseOpsworksSecurityGroups&lt;/code&gt; has the following settings: &lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;True - AWS OpsWorks Stacks automatically associates the appropriate built-in security group with each layer (default setting). You can associate additional security groups with a layer after you create it but you cannot delete the built-in security group.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;False - AWS OpsWorks Stacks does not associate built-in security groups with layers. You must create appropriate Amazon Elastic Compute Cloud (Amazon EC2) security groups and associate a security group with each layer that you create. However, you can still manually associate a built-in security group with a layer on creation; custom security groups are required only for those layers that need custom settings.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-creating.html&quot;&gt;Create a New Stack&lt;/a&gt;.&lt;/p&gt;
-- @param ServiceRoleArn [String] &lt;p&gt;The stack AWS Identity and Access Management (IAM) role, which allows AWS OpsWorks Stacks to work with AWS resources on your behalf. You must set this parameter to the Amazon Resource Name (ARN) for an existing IAM role. If you create a stack by using the AWS OpsWorks Stacks console, it creates the role for you. You can obtain an existing stack's IAM ARN programmatically by calling &lt;a&gt;DescribePermissions&lt;/a&gt;. For more information about IAM ARNs, see &lt;a href=&quot;http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html&quot;&gt;Using Identifiers&lt;/a&gt;.&lt;/p&gt; &lt;note&gt; &lt;p&gt;You must set this parameter to a valid service role ARN or the action will fail; there is no default value. You can specify the source stack's service role ARN, if you prefer, but you must do so explicitly.&lt;/p&gt; &lt;/note&gt;
-- @param VpcId [String] &lt;p&gt;The ID of the VPC that the cloned stack is to be launched into. It must be in the specified region. All instances are launched into this VPC, and you cannot change the ID later.&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;If your account supports EC2 Classic, the default value is no VPC.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;If your account does not support EC2 Classic, the default value is the default VPC for the specified region.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;If the VPC ID corresponds to a default VPC and you have specified either the &lt;code&gt;DefaultAvailabilityZone&lt;/code&gt; or the &lt;code&gt;DefaultSubnetId&lt;/code&gt; parameter only, AWS OpsWorks Stacks infers the value of the other parameter. If you specify neither parameter, AWS OpsWorks Stacks sets these parameters to the first valid Availability Zone for the specified region and the corresponding default VPC subnet ID, respectively. &lt;/p&gt; &lt;p&gt;If you specify a nondefault VPC ID, note the following:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;It must belong to a VPC in your account that is in the specified region.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;You must specify a value for &lt;code&gt;DefaultSubnetId&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;For more information on how to use AWS OpsWorks Stacks with a VPC, see &lt;a href=&quot;http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-vpc.html&quot;&gt;Running a Stack in a VPC&lt;/a&gt;. For more information on default VPC and EC2 Classic, see &lt;a href=&quot;http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-supported-platforms.html&quot;&gt;Supported Platforms&lt;/a&gt;. &lt;/p&gt;
-- @param ConfigurationManager [StackConfigurationManager] &lt;p&gt;The configuration manager. When you clone a stack we recommend that you use the configuration manager to specify the Chef version: 12, 11.10, or 11.4 for Linux stacks, or 12.2 for Windows stacks. The default value for Linux stacks is currently 12.&lt;/p&gt;
-- @param CustomCookbooksSource [Source]  
-- @param AgentVersion [String] &lt;p&gt;The default AWS OpsWorks Stacks agent version. You have the following options:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Auto-update - Set this parameter to &lt;code&gt;LATEST&lt;/code&gt;. AWS OpsWorks Stacks automatically installs new agent versions on the stack's instances as soon as they are available.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Fixed version - Set this parameter to your preferred agent version. To update the agent version, you must edit the stack configuration and specify a new version. AWS OpsWorks Stacks then automatically installs that version on the stack's instances.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;The default setting is &lt;code&gt;LATEST&lt;/code&gt;. To specify an agent version, you must use the complete version number, not the abbreviated number shown on the console. For a list of available agent version numbers, call &lt;a&gt;DescribeAgentVersions&lt;/a&gt;. AgentVersion cannot be set to Chef 12.2.&lt;/p&gt; &lt;note&gt; &lt;p&gt;You can also specify an agent version when you create or update an instance, which overrides the stack's default setting.&lt;/p&gt; &lt;/note&gt;
-- @param DefaultAvailabilityZone [String] &lt;p&gt;The cloned stack's default Availability Zone, which must be in the specified region. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/general/latest/gr/rande.html&quot;&gt;Regions and Endpoints&lt;/a&gt;. If you also specify a value for &lt;code&gt;DefaultSubnetId&lt;/code&gt;, the subnet must be in the same zone. For more information, see the &lt;code&gt;VpcId&lt;/code&gt; parameter description. &lt;/p&gt;
-- @param ClonePermissions [Boolean] &lt;p&gt;Whether to clone the source stack's permissions.&lt;/p&gt;
-- @param Name [String] &lt;p&gt;The cloned stack name.&lt;/p&gt;
-- @param Region [String] &lt;p&gt;The cloned stack AWS region, such as &quot;ap-northeast-2&quot;. For more information about AWS regions, see &lt;a href=&quot;http://docs.aws.amazon.com/general/latest/gr/rande.html&quot;&gt;Regions and Endpoints&lt;/a&gt;.&lt;/p&gt;
-- @param SourceStackId [String] &lt;p&gt;The source stack ID.&lt;/p&gt;
-- @param DefaultInstanceProfileArn [String] &lt;p&gt;The Amazon Resource Name (ARN) of an IAM profile that is the default profile for all of the stack's EC2 instances. For more information about IAM ARNs, see &lt;a href=&quot;http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html&quot;&gt;Using Identifiers&lt;/a&gt;.&lt;/p&gt;
-- @param Attributes [StackAttributes] &lt;p&gt;A list of stack attributes and values as key/value pairs to be added to the cloned stack.&lt;/p&gt;
-- @param DefaultOs [String] &lt;p&gt;The stack's operating system, which must be set to one of the following.&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;A supported Linux operating system: An Amazon Linux version, such as &lt;code&gt;Amazon Linux 2017.03&lt;/code&gt;, &lt;code&gt;Amazon Linux 2016.09&lt;/code&gt;, &lt;code&gt;Amazon Linux 2016.03&lt;/code&gt;, &lt;code&gt;Amazon Linux 2015.09&lt;/code&gt;, or &lt;code&gt;Amazon Linux 2015.03&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;A supported Ubuntu operating system, such as &lt;code&gt;Ubuntu 16.04 LTS&lt;/code&gt;, &lt;code&gt;Ubuntu 14.04 LTS&lt;/code&gt;, or &lt;code&gt;Ubuntu 12.04 LTS&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;CentOS Linux 7&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Red Hat Enterprise Linux 7&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Microsoft Windows Server 2012 R2 Base&lt;/code&gt;, &lt;code&gt;Microsoft Windows Server 2012 R2 with SQL Server Express&lt;/code&gt;, &lt;code&gt;Microsoft Windows Server 2012 R2 with SQL Server Standard&lt;/code&gt;, or &lt;code&gt;Microsoft Windows Server 2012 R2 with SQL Server Web&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;A custom AMI: &lt;code&gt;Custom&lt;/code&gt;. You specify the custom AMI you want to use when you create instances. For more information on how to use custom AMIs with OpsWorks, see &lt;a href=&quot;http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-custom-ami.html&quot;&gt;Using Custom AMIs&lt;/a&gt;.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;The default option is the parent stack's operating system. For more information on the supported operating systems, see &lt;a href=&quot;http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-os.html&quot;&gt;AWS OpsWorks Stacks Operating Systems&lt;/a&gt;.&lt;/p&gt; &lt;note&gt; &lt;p&gt;You can specify a different Linux operating system for the cloned stack, but you cannot change from Linux to Windows or Windows to Linux.&lt;/p&gt; &lt;/note&gt;
-- @param DefaultSubnetId [String] &lt;p&gt;The stack's default VPC subnet ID. This parameter is required if you specify a value for the &lt;code&gt;VpcId&lt;/code&gt; parameter. All instances are launched into this subnet unless you specify otherwise when you create the instance. If you also specify a value for &lt;code&gt;DefaultAvailabilityZone&lt;/code&gt;, the subnet must be in that zone. For information on default values and when this parameter is required, see the &lt;code&gt;VpcId&lt;/code&gt; parameter description. &lt;/p&gt;
-- @param DefaultRootDeviceType [RootDeviceType] &lt;p&gt;The default root device type. This value is used by default for all instances in the cloned stack, but you can override it when you create an instance. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ComponentsAMIs.html#storage-for-the-root-device&quot;&gt;Storage for the Root Device&lt;/a&gt;.&lt;/p&gt;
-- @param CustomJson [String] &lt;p&gt;A string that contains user-defined, custom JSON. It is used to override the corresponding default stack configuration JSON values. The string should be in the following format:&lt;/p&gt; &lt;p&gt; &lt;code&gt;&quot;{\&quot;key1\&quot;: \&quot;value1\&quot;, \&quot;key2\&quot;: \&quot;value2\&quot;,...}&quot;&lt;/code&gt; &lt;/p&gt; &lt;p&gt;For more information on custom JSON, see &lt;a href=&quot;http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-json.html&quot;&gt;Use Custom JSON to Modify the Stack Configuration Attributes&lt;/a&gt; &lt;/p&gt;
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
-- @param StackId [String] &lt;p&gt;The stack ID.&lt;/p&gt;
-- @param Comment [String] &lt;p&gt;A user-defined comment.&lt;/p&gt;
-- @param CustomJson [String] &lt;p&gt;A string that contains user-defined, custom JSON. It is used to override the corresponding default stack configuration JSON values. The string should be in the following format:&lt;/p&gt; &lt;p&gt; &lt;code&gt;&quot;{\&quot;key1\&quot;: \&quot;value1\&quot;, \&quot;key2\&quot;: \&quot;value2\&quot;,...}&quot;&lt;/code&gt; &lt;/p&gt; &lt;p&gt;For more information on custom JSON, see &lt;a href=&quot;http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-json.html&quot;&gt;Use Custom JSON to Modify the Stack Configuration Attributes&lt;/a&gt;.&lt;/p&gt;
-- @param LayerIds [Strings] &lt;p&gt;The layer IDs for the deployment targets.&lt;/p&gt;
-- @param Command [DeploymentCommand] &lt;p&gt;A &lt;code&gt;DeploymentCommand&lt;/code&gt; object that specifies the deployment command and any associated arguments.&lt;/p&gt;
-- @param AppId [String] &lt;p&gt;The app ID. This parameter is required for app deployments, but not for other deployment commands.&lt;/p&gt;
-- @param InstanceIds [Strings] &lt;p&gt;The instance IDs for the deployment targets.&lt;/p&gt;
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
-- @param StackIds [Strings] &lt;p&gt;An array of stack IDs that specify the stacks to be described. If you omit this parameter, &lt;code&gt;DescribeStacks&lt;/code&gt; returns a description of every stack.&lt;/p&gt;
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
-- &lt;p&gt;Contains the information required to retrieve an app or cookbook from a repository. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html&quot;&gt;Creating Apps&lt;/a&gt; or &lt;a href=&quot;http://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook.html&quot;&gt;Custom Recipes and Cookbooks&lt;/a&gt;.&lt;/p&gt;
-- @param Username [String] &lt;p&gt;This parameter depends on the repository type.&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;For Amazon S3 bundles, set &lt;code&gt;Username&lt;/code&gt; to the appropriate IAM access key ID.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;For HTTP bundles, Git repositories, and Subversion repositories, set &lt;code&gt;Username&lt;/code&gt; to the user name.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param SshKey [String] &lt;p&gt;In requests, the repository's SSH key.&lt;/p&gt; &lt;p&gt;In responses, AWS OpsWorks Stacks returns &lt;code&gt;*****FILTERED*****&lt;/code&gt; instead of the actual value.&lt;/p&gt;
-- @param Url [String] &lt;p&gt;The source URL. The following is an example of an Amazon S3 source URL: &lt;code&gt;https://s3.amazonaws.com/opsworks-demo-bucket/opsworks_cookbook_demo.tar.gz&lt;/code&gt;.&lt;/p&gt;
-- @param Password [String] &lt;p&gt;When included in a request, the parameter depends on the repository type.&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;For Amazon S3 bundles, set &lt;code&gt;Password&lt;/code&gt; to the appropriate IAM secret access key.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;For HTTP bundles and Subversion repositories, set &lt;code&gt;Password&lt;/code&gt; to the password.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;For more information on how to safely handle IAM credentials, see &lt;a href=&quot;http://docs.aws.amazon.com/general/latest/gr/aws-access-keys-best-practices.html&quot;&gt;http://docs.aws.amazon.com/general/latest/gr/aws-access-keys-best-practices.html&lt;/a&gt;.&lt;/p&gt; &lt;p&gt;In responses, AWS OpsWorks Stacks returns &lt;code&gt;*****FILTERED*****&lt;/code&gt; instead of the actual value.&lt;/p&gt;
-- @param Type [SourceType] &lt;p&gt;The repository type.&lt;/p&gt;
-- @param Revision [String] &lt;p&gt;The application's version. AWS OpsWorks Stacks enables you to easily deploy new versions of an application. One of the simplest approaches is to have branches or revisions in your repository that represent different versions that can potentially be deployed.&lt;/p&gt;
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
-- &lt;p&gt;Contains the response to a &lt;code&gt;DescribeInstances&lt;/code&gt; request.&lt;/p&gt;
-- @param Instances [Instances] &lt;p&gt;An array of &lt;code&gt;Instance&lt;/code&gt; objects that describe the instances.&lt;/p&gt;
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
-- &lt;p&gt;Contains the response to a &lt;code&gt;DescribeElasticIps&lt;/code&gt; request.&lt;/p&gt;
-- @param ElasticIps [ElasticIps] &lt;p&gt;An &lt;code&gt;ElasticIps&lt;/code&gt; object that describes the specified Elastic IP addresses.&lt;/p&gt;
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
-- @param Name [String] &lt;p&gt;The new name.&lt;/p&gt;
-- @param ElasticIp [String] &lt;p&gt;The address.&lt;/p&gt;
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
-- &lt;p&gt;Describes stack or user permissions.&lt;/p&gt;
-- @param StackId [String] &lt;p&gt;A stack ID.&lt;/p&gt;
-- @param IamUserArn [String] &lt;p&gt;The Amazon Resource Name (ARN) for an AWS Identity and Access Management (IAM) role. For more information about IAM ARNs, see &lt;a href=&quot;http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html&quot;&gt;Using Identifiers&lt;/a&gt;.&lt;/p&gt;
-- @param Level [String] &lt;p&gt;The user's permission level, which must be the following:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;deny&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;show&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;deploy&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;manage&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;iam_only&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;For more information on the permissions associated with these levels, see &lt;a href=&quot;http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html&quot;&gt;Managing User Permissions&lt;/a&gt; &lt;/p&gt;
-- @param AllowSudo [Boolean] &lt;p&gt;Whether the user can use &lt;b&gt;sudo&lt;/b&gt;.&lt;/p&gt;
-- @param AllowSsh [Boolean] &lt;p&gt;Whether the user can use SSH.&lt;/p&gt;
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
-- @param InstanceId [String] &lt;p&gt;The instance ID.&lt;/p&gt;
-- @param ElasticIp [String] &lt;p&gt;The Elastic IP address.&lt;/p&gt;
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
-- @param ElasticLoadBalancerName [String] &lt;p&gt;The Elastic Load Balancing instance's name.&lt;/p&gt;
-- @param LayerId [String] &lt;p&gt;The ID of the layer that the Elastic Load Balancing instance is attached to.&lt;/p&gt;
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
-- &lt;p&gt;Contains the response to a &lt;code&gt;CreateUserProfile&lt;/code&gt; request.&lt;/p&gt;
-- @param IamUserArn [String] &lt;p&gt;The user's IAM ARN.&lt;/p&gt;
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
-- &lt;p&gt;Describes a user's SSH information.&lt;/p&gt;
-- @param IamUserArn [String] &lt;p&gt;The user's IAM ARN.&lt;/p&gt;
-- @param SshPublicKey [String] &lt;p&gt;The user's SSH public key.&lt;/p&gt;
-- @param Name [String] &lt;p&gt;The user's name.&lt;/p&gt;
-- @param SshUsername [String] &lt;p&gt;The user's SSH user name.&lt;/p&gt;
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
-- @param StackId [String] &lt;p&gt;The stack ID.&lt;/p&gt;
-- @param ServiceRoleArn [String] &lt;p&gt;Do not use this parameter. You cannot update a stack's service role.&lt;/p&gt;
-- @param DefaultRootDeviceType [RootDeviceType] &lt;p&gt;The default root device type. This value is used by default for all instances in the stack, but you can override it when you create an instance. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ComponentsAMIs.html#storage-for-the-root-device&quot;&gt;Storage for the Root Device&lt;/a&gt;.&lt;/p&gt;
-- @param Name [String] &lt;p&gt;The stack's new name.&lt;/p&gt;
-- @param HostnameTheme [String] &lt;p&gt;The stack's new host name theme, with spaces replaced by underscores. The theme is used to generate host names for the stack's instances. By default, &lt;code&gt;HostnameTheme&lt;/code&gt; is set to &lt;code&gt;Layer_Dependent&lt;/code&gt;, which creates host names by appending integers to the layer's short name. The other themes are:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Baked_Goods&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Clouds&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Europe_Cities&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Fruits&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Greek_Deities&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Legendary_creatures_from_Japan&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Planets_and_Moons&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Roman_Deities&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Scottish_Islands&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;US_Cities&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Wild_Cats&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;To obtain a generated host name, call &lt;code&gt;GetHostNameSuggestion&lt;/code&gt;, which returns a host name based on the current theme.&lt;/p&gt;
-- @param UseCustomCookbooks [Boolean] &lt;p&gt;Whether the stack uses custom cookbooks.&lt;/p&gt;
-- @param CustomJson [String] &lt;p&gt;A string that contains user-defined, custom JSON. It can be used to override the corresponding default stack configuration JSON values or to pass data to recipes. The string should be in the following format:&lt;/p&gt; &lt;p&gt; &lt;code&gt;&quot;{\&quot;key1\&quot;: \&quot;value1\&quot;, \&quot;key2\&quot;: \&quot;value2\&quot;,...}&quot;&lt;/code&gt; &lt;/p&gt; &lt;p&gt;For more information on custom JSON, see &lt;a href=&quot;http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-json.html&quot;&gt;Use Custom JSON to Modify the Stack Configuration Attributes&lt;/a&gt;.&lt;/p&gt;
-- @param DefaultAvailabilityZone [String] &lt;p&gt;The stack's default Availability Zone, which must be in the stack's region. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/general/latest/gr/rande.html&quot;&gt;Regions and Endpoints&lt;/a&gt;. If you also specify a value for &lt;code&gt;DefaultSubnetId&lt;/code&gt;, the subnet must be in the same zone. For more information, see &lt;a&gt;CreateStack&lt;/a&gt;. &lt;/p&gt;
-- @param UseOpsworksSecurityGroups [Boolean] &lt;p&gt;Whether to associate the AWS OpsWorks Stacks built-in security groups with the stack's layers.&lt;/p&gt; &lt;p&gt;AWS OpsWorks Stacks provides a standard set of built-in security groups, one for each layer, which are associated with layers by default. &lt;code&gt;UseOpsworksSecurityGroups&lt;/code&gt; allows you to provide your own custom security groups instead of using the built-in groups. &lt;code&gt;UseOpsworksSecurityGroups&lt;/code&gt; has the following settings: &lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;True - AWS OpsWorks Stacks automatically associates the appropriate built-in security group with each layer (default setting). You can associate additional security groups with a layer after you create it, but you cannot delete the built-in security group.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;False - AWS OpsWorks Stacks does not associate built-in security groups with layers. You must create appropriate EC2 security groups and associate a security group with each layer that you create. However, you can still manually associate a built-in security group with a layer on. Custom security groups are required only for those layers that need custom settings.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-creating.html&quot;&gt;Create a New Stack&lt;/a&gt;.&lt;/p&gt;
-- @param CustomCookbooksSource [Source]  
-- @param ConfigurationManager [StackConfigurationManager] &lt;p&gt;The configuration manager. When you update a stack, we recommend that you use the configuration manager to specify the Chef version: 12, 11.10, or 11.4 for Linux stacks, or 12.2 for Windows stacks. The default value for Linux stacks is currently 11.4.&lt;/p&gt;
-- @param ChefConfiguration [ChefConfiguration] &lt;p&gt;A &lt;code&gt;ChefConfiguration&lt;/code&gt; object that specifies whether to enable Berkshelf and the Berkshelf version on Chef 11.10 stacks. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-creating.html&quot;&gt;Create a New Stack&lt;/a&gt;.&lt;/p&gt;
-- @param DefaultSubnetId [String] &lt;p&gt;The stack's default VPC subnet ID. This parameter is required if you specify a value for the &lt;code&gt;VpcId&lt;/code&gt; parameter. All instances are launched into this subnet unless you specify otherwise when you create the instance. If you also specify a value for &lt;code&gt;DefaultAvailabilityZone&lt;/code&gt;, the subnet must be in that zone. For information on default values and when this parameter is required, see the &lt;code&gt;VpcId&lt;/code&gt; parameter description. &lt;/p&gt;
-- @param DefaultSshKeyName [String] &lt;p&gt;A default Amazon EC2 key-pair name. The default value is &lt;code&gt;none&lt;/code&gt;. If you specify a key-pair name, AWS OpsWorks Stacks installs the public key on the instance and you can use the private key with an SSH client to log in to the instance. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-ssh.html&quot;&gt; Using SSH to Communicate with an Instance&lt;/a&gt; and &lt;a href=&quot;http://docs.aws.amazon.com/opsworks/latest/userguide/security-ssh-access.html&quot;&gt; Managing SSH Access&lt;/a&gt;. You can override this setting by specifying a different key pair, or no key pair, when you &lt;a href=&quot;http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-add.html&quot;&gt; create an instance&lt;/a&gt;. &lt;/p&gt;
-- @param DefaultInstanceProfileArn [String] &lt;p&gt;The ARN of an IAM profile that is the default profile for all of the stack's EC2 instances. For more information about IAM ARNs, see &lt;a href=&quot;http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html&quot;&gt;Using Identifiers&lt;/a&gt;.&lt;/p&gt;
-- @param Attributes [StackAttributes] &lt;p&gt;One or more user-defined key-value pairs to be added to the stack attributes.&lt;/p&gt;
-- @param DefaultOs [String] &lt;p&gt;The stack's operating system, which must be set to one of the following:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;A supported Linux operating system: An Amazon Linux version, such as &lt;code&gt;Amazon Linux 2017.03&lt;/code&gt;, &lt;code&gt;Amazon Linux 2016.09&lt;/code&gt;, &lt;code&gt;Amazon Linux 2016.03&lt;/code&gt;, &lt;code&gt;Amazon Linux 2015.09&lt;/code&gt;, or &lt;code&gt;Amazon Linux 2015.03&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;A supported Ubuntu operating system, such as &lt;code&gt;Ubuntu 16.04 LTS&lt;/code&gt;, &lt;code&gt;Ubuntu 14.04 LTS&lt;/code&gt;, or &lt;code&gt;Ubuntu 12.04 LTS&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;CentOS Linux 7&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Red Hat Enterprise Linux 7&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;A supported Windows operating system, such as &lt;code&gt;Microsoft Windows Server 2012 R2 Base&lt;/code&gt;, &lt;code&gt;Microsoft Windows Server 2012 R2 with SQL Server Express&lt;/code&gt;, &lt;code&gt;Microsoft Windows Server 2012 R2 with SQL Server Standard&lt;/code&gt;, or &lt;code&gt;Microsoft Windows Server 2012 R2 with SQL Server Web&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;A custom AMI: &lt;code&gt;Custom&lt;/code&gt;. You specify the custom AMI you want to use when you create instances. For more information on how to use custom AMIs with OpsWorks, see &lt;a href=&quot;http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-custom-ami.html&quot;&gt;Using Custom AMIs&lt;/a&gt;.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;The default option is the stack's current operating system. For more information on the supported operating systems, see &lt;a href=&quot;http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-os.html&quot;&gt;AWS OpsWorks Stacks Operating Systems&lt;/a&gt;.&lt;/p&gt;
-- @param AgentVersion [String] &lt;p&gt;The default AWS OpsWorks Stacks agent version. You have the following options:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Auto-update - Set this parameter to &lt;code&gt;LATEST&lt;/code&gt;. AWS OpsWorks Stacks automatically installs new agent versions on the stack's instances as soon as they are available.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Fixed version - Set this parameter to your preferred agent version. To update the agent version, you must edit the stack configuration and specify a new version. AWS OpsWorks Stacks then automatically installs that version on the stack's instances.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;The default setting is &lt;code&gt;LATEST&lt;/code&gt;. To specify an agent version, you must use the complete version number, not the abbreviated number shown on the console. For a list of available agent version numbers, call &lt;a&gt;DescribeAgentVersions&lt;/a&gt;. AgentVersion cannot be set to Chef 12.2.&lt;/p&gt; &lt;note&gt; &lt;p&gt;You can also specify an agent version when you create or update an instance, which overrides the stack's default setting.&lt;/p&gt; &lt;/note&gt;
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
-- &lt;p&gt;Describes an agent version.&lt;/p&gt;
-- @param Version [String] &lt;p&gt;The agent version.&lt;/p&gt;
-- @param ConfigurationManager [StackConfigurationManager] &lt;p&gt;The configuration manager.&lt;/p&gt;
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
-- &lt;p&gt;Contains the response to a &lt;code&gt;CloneStack&lt;/code&gt; request.&lt;/p&gt;
-- @param StackId [String] &lt;p&gt;The cloned stack ID.&lt;/p&gt;
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
-- @param StackId [String] &lt;p&gt;The stack ID.&lt;/p&gt;
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
-- @param LayerId [String] &lt;p&gt;The layer ID.&lt;/p&gt;
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
-- @param StackId [String] &lt;p&gt;The stack ID&lt;/p&gt;
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
-- @param IamUserArn [String] &lt;p&gt;The user IAM ARN. This can also be a federated user's ARN.&lt;/p&gt;
-- @param SshPublicKey [String] &lt;p&gt;The user's new SSH public key.&lt;/p&gt;
-- @param AllowSelfManagement [Boolean] &lt;p&gt;Whether users can specify their own SSH public key through the My Settings page. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/opsworks/latest/userguide/security-settingsshkey.html&quot;&gt;Managing User Permissions&lt;/a&gt;.&lt;/p&gt;
-- @param SshUsername [String] &lt;p&gt;The user's SSH user name. The allowable characters are [a-z], [A-Z], [0-9], '-', and '_'. If the specified name includes other punctuation marks, AWS OpsWorks Stacks removes them. For example, &lt;code&gt;my.name&lt;/code&gt; will be changed to &lt;code&gt;myname&lt;/code&gt;. If you do not specify an SSH user name, AWS OpsWorks Stacks generates one from the IAM user name. &lt;/p&gt;
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
-- @param StackId [String] &lt;p&gt;The stack ID.&lt;/p&gt;
-- @param DbUser [String] &lt;p&gt;The database's master user name.&lt;/p&gt;
-- @param RdsDbInstanceArn [String] &lt;p&gt;The Amazon RDS instance's ARN.&lt;/p&gt;
-- @param DbPassword [String] &lt;p&gt;The database password.&lt;/p&gt;
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
-- @param StackId [String] &lt;p&gt;The stack ID.&lt;/p&gt;
-- @param LayerIds [Strings] &lt;p&gt;An array of layer IDs that specify the layers to be described. If you omit this parameter, &lt;code&gt;DescribeLayers&lt;/code&gt; returns a description of every layer in the specified stack.&lt;/p&gt;
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
-- &lt;p&gt;Describes a command.&lt;/p&gt;
-- @param Status [String] &lt;p&gt;The command status:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;failed&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;successful&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;skipped&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;pending&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param CompletedAt [DateTime] &lt;p&gt;Date when the command completed.&lt;/p&gt;
-- @param InstanceId [String] &lt;p&gt;The ID of the instance where the command was executed.&lt;/p&gt;
-- @param DeploymentId [String] &lt;p&gt;The command deployment ID.&lt;/p&gt;
-- @param AcknowledgedAt [DateTime] &lt;p&gt;Date and time when the command was acknowledged.&lt;/p&gt;
-- @param LogUrl [String] &lt;p&gt;The URL of the command log.&lt;/p&gt;
-- @param Type [String] &lt;p&gt;The command type:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;configure&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;deploy&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;execute_recipes&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;install_dependencies&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;restart&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;rollback&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;setup&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;start&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;stop&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;undeploy&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;update_custom_cookbooks&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;update_dependencies&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param CommandId [String] &lt;p&gt;The command ID.&lt;/p&gt;
-- @param CreatedAt [DateTime] &lt;p&gt;Date and time when the command was run.&lt;/p&gt;
-- @param ExitCode [Integer] &lt;p&gt;The command exit code.&lt;/p&gt;
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
-- @param StackId [String] &lt;p&gt;The stack ID.&lt;/p&gt;
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
-- @param StackId [String] &lt;p&gt;The stack ID that the instances are registered with. The operation returns descriptions of all registered Amazon RDS instances.&lt;/p&gt;
-- @param RdsDbInstanceArns [Strings] &lt;p&gt;An array containing the ARNs of the instances to be described.&lt;/p&gt;
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
-- &lt;p&gt;Contains the response to a &lt;code&gt;CreateStack&lt;/code&gt; request.&lt;/p&gt;
-- @param StackId [String] &lt;p&gt;The stack ID, which is an opaque string that you use to identify the stack when performing actions such as &lt;code&gt;DescribeStacks&lt;/code&gt;.&lt;/p&gt;
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
-- @param StackId [String] &lt;p&gt;The stack ID.&lt;/p&gt;
-- @param Environment [EnvironmentVariables] &lt;p&gt;An array of &lt;code&gt;EnvironmentVariable&lt;/code&gt; objects that specify environment variables to be associated with the app. After you deploy the app, these variables are defined on the associated app server instance. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html#workingapps-creating-environment&quot;&gt; Environment Variables&lt;/a&gt;.&lt;/p&gt; &lt;p&gt;There is no specific limit on the number of environment variables. However, the size of the associated data structure - which includes the variables' names, values, and protected flag values - cannot exceed 10 KB (10240 Bytes). This limit should accommodate most if not all use cases. Exceeding it will cause an exception with the message, &quot;Environment: is too large (maximum is 10KB).&quot;&lt;/p&gt; &lt;note&gt; &lt;p&gt;This parameter is supported only by Chef 11.10 stacks. If you have specified one or more environment variables, you cannot modify the stack's Chef version.&lt;/p&gt; &lt;/note&gt;
-- @param AppSource [Source] &lt;p&gt;A &lt;code&gt;Source&lt;/code&gt; object that specifies the app repository.&lt;/p&gt;
-- @param DataSources [DataSources] &lt;p&gt;The app's data source.&lt;/p&gt;
-- @param EnableSsl [Boolean] &lt;p&gt;Whether to enable SSL for the app.&lt;/p&gt;
-- @param SslConfiguration [SslConfiguration] &lt;p&gt;An &lt;code&gt;SslConfiguration&lt;/code&gt; object with the SSL configuration.&lt;/p&gt;
-- @param Attributes [AppAttributes] &lt;p&gt;One or more user-defined key/value pairs to be added to the stack attributes.&lt;/p&gt;
-- @param Domains [Strings] &lt;p&gt;The app virtual host settings, with multiple domains separated by commas. For example: &lt;code&gt;'www.example.com, example.com'&lt;/code&gt; &lt;/p&gt;
-- @param Description [String] &lt;p&gt;A description of the app.&lt;/p&gt;
-- @param Shortname [String] &lt;p&gt;The app's short name.&lt;/p&gt;
-- @param Type [AppType] &lt;p&gt;The app type. Each supported type is associated with a particular layer. For example, PHP applications are associated with a PHP layer. AWS OpsWorks Stacks deploys an application to those instances that are members of the corresponding layer. If your app isn't one of the standard types, or you prefer to implement your own Deploy recipes, specify &lt;code&gt;other&lt;/code&gt;.&lt;/p&gt;
-- @param Name [String] &lt;p&gt;The app name.&lt;/p&gt;
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
-- &lt;p&gt;A description of the app.&lt;/p&gt;
-- @param StackId [String] &lt;p&gt;The app stack ID.&lt;/p&gt;
-- @param Environment [EnvironmentVariables] &lt;p&gt;An array of &lt;code&gt;EnvironmentVariable&lt;/code&gt; objects that specify environment variables to be associated with the app. After you deploy the app, these variables are defined on the associated app server instances. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html#workingapps-creating-environment&quot;&gt; Environment Variables&lt;/a&gt;. &lt;/p&gt; &lt;note&gt; &lt;p&gt;There is no specific limit on the number of environment variables. However, the size of the associated data structure - which includes the variable names, values, and protected flag values - cannot exceed 10 KB (10240 Bytes). This limit should accommodate most if not all use cases, but if you do exceed it, you will cause an exception (API) with an &quot;Environment: is too large (maximum is 10KB)&quot; message.&lt;/p&gt; &lt;/note&gt;
-- @param AppSource [Source] &lt;p&gt;A &lt;code&gt;Source&lt;/code&gt; object that describes the app repository.&lt;/p&gt;
-- @param Description [String] &lt;p&gt;A description of the app.&lt;/p&gt;
-- @param EnableSsl [Boolean] &lt;p&gt;Whether to enable SSL for the app.&lt;/p&gt;
-- @param SslConfiguration [SslConfiguration] &lt;p&gt;An &lt;code&gt;SslConfiguration&lt;/code&gt; object with the SSL configuration.&lt;/p&gt;
-- @param Name [String] &lt;p&gt;The app name.&lt;/p&gt;
-- @param AppId [String] &lt;p&gt;The app ID.&lt;/p&gt;
-- @param Domains [Strings] &lt;p&gt;The app vhost settings with multiple domains separated by commas. For example: &lt;code&gt;'www.example.com, example.com'&lt;/code&gt; &lt;/p&gt;
-- @param Attributes [AppAttributes] &lt;p&gt;The stack attributes.&lt;/p&gt;
-- @param Shortname [String] &lt;p&gt;The app's short name.&lt;/p&gt;
-- @param Type [AppType] &lt;p&gt;The app type.&lt;/p&gt;
-- @param CreatedAt [String] &lt;p&gt;When the app was created.&lt;/p&gt;
-- @param DataSources [DataSources] &lt;p&gt;The app's data sources.&lt;/p&gt;
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
-- &lt;p&gt;Describes an Amazon RDS instance.&lt;/p&gt;
-- @param Engine [String] &lt;p&gt;The instance's database engine.&lt;/p&gt;
-- @param StackId [String] &lt;p&gt;The ID of the stack with which the instance is registered.&lt;/p&gt;
-- @param MissingOnRds [Boolean] &lt;p&gt;Set to &lt;code&gt;true&lt;/code&gt; if AWS OpsWorks Stacks is unable to discover the Amazon RDS instance. AWS OpsWorks Stacks attempts to discover the instance only once. If this value is set to &lt;code&gt;true&lt;/code&gt;, you must deregister the instance, and then register it again.&lt;/p&gt;
-- @param Region [String] &lt;p&gt;The instance's AWS region.&lt;/p&gt;
-- @param RdsDbInstanceArn [String] &lt;p&gt;The instance's ARN.&lt;/p&gt;
-- @param DbPassword [String] &lt;p&gt;AWS OpsWorks Stacks returns &lt;code&gt;*****FILTERED*****&lt;/code&gt; instead of the actual value.&lt;/p&gt;
-- @param Address [String] &lt;p&gt;The instance's address.&lt;/p&gt;
-- @param DbUser [String] &lt;p&gt;The master user name.&lt;/p&gt;
-- @param DbInstanceIdentifier [String] &lt;p&gt;The DB instance identifier.&lt;/p&gt;
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
-- &lt;p&gt;Describes an app's data source.&lt;/p&gt;
-- @param Type [String] &lt;p&gt;The data source's type, &lt;code&gt;AutoSelectOpsworksMysqlInstance&lt;/code&gt;, &lt;code&gt;OpsworksMysqlInstance&lt;/code&gt;, or &lt;code&gt;RdsDbInstance&lt;/code&gt;.&lt;/p&gt;
-- @param DatabaseName [String] &lt;p&gt;The database name.&lt;/p&gt;
-- @param Arn [String] &lt;p&gt;The data source's ARN.&lt;/p&gt;
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
-- @param ResourceArn [ResourceArn] &lt;p&gt;The stack or layer's Amazon Resource Number (ARN).&lt;/p&gt;
-- @param TagKeys [TagKeys] &lt;p&gt;A list of the keys of tags to be removed from a stack or layer.&lt;/p&gt;
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
-- &lt;p&gt;Contains the response to a &lt;code&gt;RegisterEcsCluster&lt;/code&gt; request.&lt;/p&gt;
-- @param EcsClusterArn [String] &lt;p&gt;The cluster's ARN.&lt;/p&gt;
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
-- @param StackId [String] &lt;p&gt;A stack ID. &lt;code&gt;DescribeEcsClusters&lt;/code&gt; returns a description of the cluster that is registered with the stack.&lt;/p&gt;
-- @param EcsClusterArns [Strings] &lt;p&gt;A list of ARNs, one for each cluster to be described.&lt;/p&gt;
-- @param NextToken [String] &lt;p&gt;If the previous paginated request did not return all of the remaining results, the response object's&lt;code&gt;NextToken&lt;/code&gt; parameter value is set to a token. To retrieve the next set of results, call &lt;code&gt;DescribeEcsClusters&lt;/code&gt; again and assign that token to the request object's &lt;code&gt;NextToken&lt;/code&gt; parameter. If there are no remaining results, the previous response object's &lt;code&gt;NextToken&lt;/code&gt; parameter is set to &lt;code&gt;null&lt;/code&gt;.&lt;/p&gt;
-- @param MaxResults [Integer] &lt;p&gt;To receive a paginated response, use this parameter to specify the maximum number of results to be returned with a single call. If the number of available results exceeds this maximum, the response includes a &lt;code&gt;NextToken&lt;/code&gt; value that you can assign to the &lt;code&gt;NextToken&lt;/code&gt; request parameter to get the next set of results.&lt;/p&gt;
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
-- &lt;p&gt;Contains the response to a &lt;code&gt;DescribeAgentVersions&lt;/code&gt; request.&lt;/p&gt;
-- @param AgentVersions [AgentVersions] &lt;p&gt;The agent versions for the specified stack or configuration manager. Note that this value is the complete version number, not the abbreviated number used by the console.&lt;/p&gt;
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
-- @param DownScaling [AutoScalingThresholds] &lt;p&gt;An &lt;code&gt;AutoScalingThresholds&lt;/code&gt; object with the downscaling threshold configuration. If the load falls below these thresholds for a specified amount of time, AWS OpsWorks Stacks stops a specified number of instances.&lt;/p&gt;
-- @param Enable [Boolean] &lt;p&gt;Enables load-based auto scaling for the layer.&lt;/p&gt;
-- @param UpScaling [AutoScalingThresholds] &lt;p&gt;An &lt;code&gt;AutoScalingThresholds&lt;/code&gt; object with the upscaling threshold configuration. If the load exceeds these thresholds for a specified amount of time, AWS OpsWorks Stacks starts a specified number of instances.&lt;/p&gt;
-- @param LayerId [String] &lt;p&gt;The layer ID.&lt;/p&gt;
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
-- &lt;p&gt;Contains the response to a &lt;code&gt;DescribeLoadBasedAutoScaling&lt;/code&gt; request.&lt;/p&gt;
-- @param LoadBasedAutoScalingConfigurations [LoadBasedAutoScalingConfigurations] &lt;p&gt;An array of &lt;code&gt;LoadBasedAutoScalingConfiguration&lt;/code&gt; objects that describe each layer's configuration.&lt;/p&gt;
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
-- &lt;p&gt;Contains the response to a &lt;code&gt;DescribeTimeBasedAutoScaling&lt;/code&gt; request.&lt;/p&gt;
-- @param TimeBasedAutoScalingConfigurations [TimeBasedAutoScalingConfigurations] &lt;p&gt;An array of &lt;code&gt;TimeBasedAutoScalingConfiguration&lt;/code&gt; objects that describe the configuration for the specified instances.&lt;/p&gt;
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
-- @param StackId [String] &lt;p&gt;The stack ID.&lt;/p&gt;
-- @param IamUserArn [String] &lt;p&gt;The user's IAM ARN. This can also be a federated user's ARN. For more information about IAM ARNs, see &lt;a href=&quot;http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html&quot;&gt;Using Identifiers&lt;/a&gt;.&lt;/p&gt;
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
-- @param StackId [String] &lt;p&gt;The stack ID.&lt;/p&gt;
-- @param IamUserArn [String] &lt;p&gt;The user's IAM ARN. This can also be a federated user's ARN.&lt;/p&gt;
-- @param Level [String] &lt;p&gt;The user's permission level, which must be set to one of the following strings. You cannot set your own permissions level.&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;deny&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;show&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;deploy&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;manage&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;iam_only&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;For more information on the permissions associated with these levels, see &lt;a href=&quot;http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html&quot;&gt;Managing User Permissions&lt;/a&gt;.&lt;/p&gt;
-- @param AllowSudo [Boolean] &lt;p&gt;The user is allowed to use &lt;b&gt;sudo&lt;/b&gt; to elevate privileges.&lt;/p&gt;
-- @param AllowSsh [Boolean] &lt;p&gt;The user is allowed to use SSH to communicate with the instance.&lt;/p&gt;
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
-- @param InstanceIds [Strings] &lt;p&gt;An array of instance IDs.&lt;/p&gt;
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
-- @param StackId [String] &lt;p&gt;The stack ID. If you include this parameter, &lt;code&gt;DescribeDeployments&lt;/code&gt; returns a description of the commands associated with the specified stack.&lt;/p&gt;
-- @param DeploymentIds [Strings] &lt;p&gt;An array of deployment IDs to be described. If you include this parameter, &lt;code&gt;DescribeDeployments&lt;/code&gt; returns a description of the specified deployments. Otherwise, it returns a description of every deployment.&lt;/p&gt;
-- @param AppId [String] &lt;p&gt;The app ID. If you include this parameter, &lt;code&gt;DescribeDeployments&lt;/code&gt; returns a description of the commands associated with the specified app.&lt;/p&gt;
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
-- &lt;p&gt;Contains the response to a &lt;code&gt;DescribeUserProfiles&lt;/code&gt; request.&lt;/p&gt;
-- @param UserProfiles [UserProfiles] &lt;p&gt;A &lt;code&gt;Users&lt;/code&gt; object that describes the specified users.&lt;/p&gt;
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
-- &lt;p&gt;Describes the Chef configuration.&lt;/p&gt;
-- @param BerkshelfVersion [String] &lt;p&gt;The Berkshelf version.&lt;/p&gt;
-- @param ManageBerkshelf [Boolean] &lt;p&gt;Whether to enable Berkshelf.&lt;/p&gt;
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
-- @param StackId [String] &lt;p&gt;The stack ID.&lt;/p&gt;
-- @param ConfigurationManager [StackConfigurationManager] &lt;p&gt;The configuration manager.&lt;/p&gt;
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
-- &lt;p&gt;Contains the response to a &lt;code&gt;DescribeStacks&lt;/code&gt; request.&lt;/p&gt;
-- @param Stacks [Stacks] &lt;p&gt;An array of &lt;code&gt;Stack&lt;/code&gt; objects that describe the stacks.&lt;/p&gt;
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
-- &lt;p&gt;Contains the response to a &lt;code&gt;DescribeRdsDbInstances&lt;/code&gt; request.&lt;/p&gt;
-- @param RdsDbInstances [RdsDbInstances] &lt;p&gt;An a array of &lt;code&gt;RdsDbInstance&lt;/code&gt; objects that describe the instances.&lt;/p&gt;
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
-- &lt;p&gt;Used to specify a stack or deployment command.&lt;/p&gt;
-- @param Args [DeploymentCommandArgs] &lt;p&gt;The arguments of those commands that take arguments. It should be set to a JSON object with the following format:&lt;/p&gt; &lt;p&gt; &lt;code&gt;{&quot;arg_name1&quot; : [&quot;value1&quot;, &quot;value2&quot;, ...], &quot;arg_name2&quot; : [&quot;value1&quot;, &quot;value2&quot;, ...], ...}&lt;/code&gt; &lt;/p&gt; &lt;p&gt;The &lt;code&gt;update_dependencies&lt;/code&gt; command takes two arguments:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;upgrade_os_to&lt;/code&gt; - Specifies the desired Amazon Linux version for instances whose OS you want to upgrade, such as &lt;code&gt;Amazon Linux 2016.09&lt;/code&gt;. You must also set the &lt;code&gt;allow_reboot&lt;/code&gt; argument to true.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;allow_reboot&lt;/code&gt; - Specifies whether to allow AWS OpsWorks Stacks to reboot the instances if necessary, after installing the updates. This argument can be set to either &lt;code&gt;true&lt;/code&gt; or &lt;code&gt;false&lt;/code&gt;. The default value is &lt;code&gt;false&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;For example, to upgrade an instance to Amazon Linux 2016.09, set &lt;code&gt;Args&lt;/code&gt; to the following.&lt;/p&gt; &lt;p&gt; &lt;code&gt; { &quot;upgrade_os_to&quot;:[&quot;Amazon Linux 2016.09&quot;], &quot;allow_reboot&quot;:[&quot;true&quot;] } &lt;/code&gt; &lt;/p&gt;
-- @param Name [DeploymentCommandName] &lt;p&gt;Specifies the operation. You can specify only one command.&lt;/p&gt; &lt;p&gt;For stacks, the following commands are available:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;execute_recipes&lt;/code&gt;: Execute one or more recipes. To specify the recipes, set an &lt;code&gt;Args&lt;/code&gt; parameter named &lt;code&gt;recipes&lt;/code&gt; to the list of recipes to be executed. For example, to execute &lt;code&gt;phpapp::appsetup&lt;/code&gt;, set &lt;code&gt;Args&lt;/code&gt; to &lt;code&gt;{&quot;recipes&quot;:[&quot;phpapp::appsetup&quot;]}&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;install_dependencies&lt;/code&gt;: Install the stack's dependencies.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;update_custom_cookbooks&lt;/code&gt;: Update the stack's custom cookbooks.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;update_dependencies&lt;/code&gt;: Update the stack's dependencies.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;note&gt; &lt;p&gt;The update_dependencies and install_dependencies commands are supported only for Linux instances. You can run the commands successfully on Windows instances, but they do nothing.&lt;/p&gt; &lt;/note&gt; &lt;p&gt;For apps, the following commands are available:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;deploy&lt;/code&gt;: Deploy an app. Ruby on Rails apps have an optional &lt;code&gt;Args&lt;/code&gt; parameter named &lt;code&gt;migrate&lt;/code&gt;. Set &lt;code&gt;Args&lt;/code&gt; to {&quot;migrate&quot;:[&quot;true&quot;]} to migrate the database. The default setting is {&quot;migrate&quot;:[&quot;false&quot;]}.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;rollback&lt;/code&gt; Roll the app back to the previous version. When you update an app, AWS OpsWorks Stacks stores the previous version, up to a maximum of five versions. You can use this command to roll an app back as many as four versions.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;start&lt;/code&gt;: Start the app's web or application server.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;stop&lt;/code&gt;: Stop the app's web or application server.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;restart&lt;/code&gt;: Restart the app's web or application server.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;undeploy&lt;/code&gt;: Undeploy the app.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
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
-- &lt;p&gt;Contains the response to a &lt;code&gt;DescribeEcsClusters&lt;/code&gt; request.&lt;/p&gt;
-- @param NextToken [String] &lt;p&gt;If a paginated request does not return all of the remaining results, this parameter is set to a token that you can assign to the request object's &lt;code&gt;NextToken&lt;/code&gt; parameter to retrieve the next set of results. If the previous paginated request returned all of the remaining results, this parameter is set to &lt;code&gt;null&lt;/code&gt;.&lt;/p&gt;
-- @param EcsClusters [EcsClusters] &lt;p&gt;A list of &lt;code&gt;EcsCluster&lt;/code&gt; objects containing the cluster descriptions.&lt;/p&gt;
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
-- &lt;p&gt;Indicates that a request was not valid.&lt;/p&gt;
-- @param message [String] &lt;p&gt;The exception message.&lt;/p&gt;
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
-- @param DbUser [String] &lt;p&gt;The master user name.&lt;/p&gt;
-- @param RdsDbInstanceArn [String] &lt;p&gt;The Amazon RDS instance's ARN.&lt;/p&gt;
-- @param DbPassword [String] &lt;p&gt;The database password.&lt;/p&gt;
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
-- &lt;p&gt;Describes a user's SSH information.&lt;/p&gt;
-- @param IamUserArn [String] &lt;p&gt;The user's IAM ARN.&lt;/p&gt;
-- @param SshPublicKey [String] &lt;p&gt;The user's SSH public key.&lt;/p&gt;
-- @param AllowSelfManagement [Boolean] &lt;p&gt;Whether users can specify their own SSH public key through the My Settings page. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/opsworks/latest/userguide/security-settingsshkey.html&quot;&gt;Managing User Permissions&lt;/a&gt;.&lt;/p&gt;
-- @param Name [String] &lt;p&gt;The user's name.&lt;/p&gt;
-- @param SshUsername [String] &lt;p&gt;The user's SSH user name.&lt;/p&gt;
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
-- @param StackId [String] &lt;p&gt;The stack ID.&lt;/p&gt;
-- @param AmiId [String] &lt;p&gt;A custom AMI ID to be used to create the instance. The AMI should be based on one of the supported operating systems. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-custom-ami.html&quot;&gt;Using Custom AMIs&lt;/a&gt;.&lt;/p&gt; &lt;note&gt; &lt;p&gt;If you specify a custom AMI, you must set &lt;code&gt;Os&lt;/code&gt; to &lt;code&gt;Custom&lt;/code&gt;.&lt;/p&gt; &lt;/note&gt;
-- @param LayerIds [Strings] &lt;p&gt;An array that contains the instance's layer IDs.&lt;/p&gt;
-- @param VirtualizationType [String] &lt;p&gt;The instance's virtualization type, &lt;code&gt;paravirtual&lt;/code&gt; or &lt;code&gt;hvm&lt;/code&gt;.&lt;/p&gt;
-- @param EbsOptimized [Boolean] &lt;p&gt;Whether to create an Amazon EBS-optimized instance.&lt;/p&gt;
-- @param SshKeyName [String] &lt;p&gt;The instance's Amazon EC2 key-pair name.&lt;/p&gt;
-- @param Hostname [String] &lt;p&gt;The instance host name.&lt;/p&gt;
-- @param RootDeviceType [RootDeviceType] &lt;p&gt;The instance root device type. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ComponentsAMIs.html#storage-for-the-root-device&quot;&gt;Storage for the Root Device&lt;/a&gt;.&lt;/p&gt;
-- @param BlockDeviceMappings [BlockDeviceMappings] &lt;p&gt;An array of &lt;code&gt;BlockDeviceMapping&lt;/code&gt; objects that specify the instance's block devices. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/block-device-mapping-concepts.html&quot;&gt;Block Device Mapping&lt;/a&gt;. Note that block device mappings are not supported for custom AMIs.&lt;/p&gt;
-- @param AvailabilityZone [String] &lt;p&gt;The instance Availability Zone. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/general/latest/gr/rande.html&quot;&gt;Regions and Endpoints&lt;/a&gt;.&lt;/p&gt;
-- @param Architecture [Architecture] &lt;p&gt;The instance architecture. The default option is &lt;code&gt;x86_64&lt;/code&gt;. Instance types do not necessarily support both architectures. For a list of the architectures that are supported by the different instance types, see &lt;a href=&quot;http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html&quot;&gt;Instance Families and Types&lt;/a&gt;.&lt;/p&gt;
-- @param AutoScalingType [AutoScalingType] &lt;p&gt;For load-based or time-based instances, the type. Windows stacks can use only time-based instances.&lt;/p&gt;
-- @param SubnetId [String] &lt;p&gt;The ID of the instance's subnet. If the stack is running in a VPC, you can use this parameter to override the stack's default subnet ID value and direct AWS OpsWorks Stacks to launch the instance in a different subnet.&lt;/p&gt;
-- @param Tenancy [String] &lt;p&gt;The instance's tenancy option. The default option is no tenancy, or if the instance is running in a VPC, inherit tenancy settings from the VPC. The following are valid values for this parameter: &lt;code&gt;dedicated&lt;/code&gt;, &lt;code&gt;default&lt;/code&gt;, or &lt;code&gt;host&lt;/code&gt;. Because there are costs associated with changes in tenancy options, we recommend that you research tenancy options before choosing them for your instances. For more information about dedicated hosts, see &lt;a href=&quot;http://aws.amazon.com/ec2/dedicated-hosts/&quot;&gt;Dedicated Hosts Overview&lt;/a&gt; and &lt;a href=&quot;http://aws.amazon.com/ec2/dedicated-hosts/&quot;&gt;Amazon EC2 Dedicated Hosts&lt;/a&gt;. For more information about dedicated instances, see &lt;a href=&quot;http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/dedicated-instance.html&quot;&gt;Dedicated Instances&lt;/a&gt; and &lt;a href=&quot;http://aws.amazon.com/ec2/purchasing-options/dedicated-instances/&quot;&gt;Amazon EC2 Dedicated Instances&lt;/a&gt;.&lt;/p&gt;
-- @param InstallUpdatesOnBoot [Boolean] &lt;p&gt;Whether to install operating system and package updates when the instance boots. The default value is &lt;code&gt;true&lt;/code&gt;. To control when updates are installed, set this value to &lt;code&gt;false&lt;/code&gt;. You must then update your instances manually by using &lt;a&gt;CreateDeployment&lt;/a&gt; to run the &lt;code&gt;update_dependencies&lt;/code&gt; stack command or by manually running &lt;code&gt;yum&lt;/code&gt; (Amazon Linux) or &lt;code&gt;apt-get&lt;/code&gt; (Ubuntu) on the instances. &lt;/p&gt; &lt;note&gt; &lt;p&gt;We strongly recommend using the default value of &lt;code&gt;true&lt;/code&gt; to ensure that your instances have the latest security updates.&lt;/p&gt; &lt;/note&gt;
-- @param Os [String] &lt;p&gt;The instance's operating system, which must be set to one of the following.&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;A supported Linux operating system: An Amazon Linux version, such as &lt;code&gt;Amazon Linux 2017.03&lt;/code&gt;, &lt;code&gt;Amazon Linux 2016.09&lt;/code&gt;, &lt;code&gt;Amazon Linux 2016.03&lt;/code&gt;, &lt;code&gt;Amazon Linux 2015.09&lt;/code&gt;, or &lt;code&gt;Amazon Linux 2015.03&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;A supported Ubuntu operating system, such as &lt;code&gt;Ubuntu 16.04 LTS&lt;/code&gt;, &lt;code&gt;Ubuntu 14.04 LTS&lt;/code&gt;, or &lt;code&gt;Ubuntu 12.04 LTS&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;CentOS Linux 7&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Red Hat Enterprise Linux 7&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;A supported Windows operating system, such as &lt;code&gt;Microsoft Windows Server 2012 R2 Base&lt;/code&gt;, &lt;code&gt;Microsoft Windows Server 2012 R2 with SQL Server Express&lt;/code&gt;, &lt;code&gt;Microsoft Windows Server 2012 R2 with SQL Server Standard&lt;/code&gt;, or &lt;code&gt;Microsoft Windows Server 2012 R2 with SQL Server Web&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;A custom AMI: &lt;code&gt;Custom&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;For more information on the supported operating systems, see &lt;a href=&quot;http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-os.html&quot;&gt;AWS OpsWorks Stacks Operating Systems&lt;/a&gt;.&lt;/p&gt; &lt;p&gt;The default option is the current Amazon Linux version. If you set this parameter to &lt;code&gt;Custom&lt;/code&gt;, you must use the &lt;a&gt;CreateInstance&lt;/a&gt; action's AmiId parameter to specify the custom AMI that you want to use. Block device mappings are not supported if the value is &lt;code&gt;Custom&lt;/code&gt;. For more information on the supported operating systems, see &lt;a href=&quot;http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-os.html&quot;&gt;Operating Systems&lt;/a&gt;For more information on how to use custom AMIs with AWS OpsWorks Stacks, see &lt;a href=&quot;http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-custom-ami.html&quot;&gt;Using Custom AMIs&lt;/a&gt;.&lt;/p&gt;
-- @param InstanceType [String] &lt;p&gt;The instance type, such as &lt;code&gt;t2.micro&lt;/code&gt;. For a list of supported instance types, open the stack in the console, choose &lt;b&gt;Instances&lt;/b&gt;, and choose &lt;b&gt;+ Instance&lt;/b&gt;. The &lt;b&gt;Size&lt;/b&gt; list contains the currently supported types. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html&quot;&gt;Instance Families and Types&lt;/a&gt;. The parameter values that you use to specify the various types are in the &lt;b&gt;API Name&lt;/b&gt; column of the &lt;b&gt;Available Instance Types&lt;/b&gt; table.&lt;/p&gt;
-- @param AgentVersion [String] &lt;p&gt;The default AWS OpsWorks Stacks agent version. You have the following options:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;INHERIT&lt;/code&gt; - Use the stack's default agent version setting.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;i&gt;version_number&lt;/i&gt; - Use the specified agent version. This value overrides the stack's default setting. To update the agent version, edit the instance configuration and specify a new version. AWS OpsWorks Stacks then automatically installs that version on the instance.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;The default setting is &lt;code&gt;INHERIT&lt;/code&gt;. To specify an agent version, you must use the complete version number, not the abbreviated number shown on the console. For a list of available agent version numbers, call &lt;a&gt;DescribeAgentVersions&lt;/a&gt;. AgentVersion cannot be set to Chef 12.2.&lt;/p&gt;
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
-- @param InstanceId [String] &lt;p&gt;The instance ID. If you use this parameter, &lt;code&gt;DescribeRaidArrays&lt;/code&gt; returns descriptions of the RAID arrays associated with the specified instance. &lt;/p&gt;
-- @param StackId [String] &lt;p&gt;The stack ID.&lt;/p&gt;
-- @param RaidArrayIds [Strings] &lt;p&gt;An array of RAID array IDs. If you use this parameter, &lt;code&gt;DescribeRaidArrays&lt;/code&gt; returns descriptions of the specified arrays. Otherwise, it returns a description of every array.&lt;/p&gt;
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
-- &lt;p&gt;Describes a block device mapping. This data type maps directly to the Amazon EC2 &lt;a href=&quot;http://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_BlockDeviceMapping.html&quot;&gt;BlockDeviceMapping&lt;/a&gt; data type. &lt;/p&gt;
-- @param Ebs [EbsBlockDevice] &lt;p&gt;An &lt;code&gt;EBSBlockDevice&lt;/code&gt; that defines how to configure an Amazon EBS volume when the instance is launched.&lt;/p&gt;
-- @param DeviceName [String] &lt;p&gt;The device name that is exposed to the instance, such as &lt;code&gt;/dev/sdh&lt;/code&gt;. For the root device, you can use the explicit device name or you can set this parameter to &lt;code&gt;ROOT_DEVICE&lt;/code&gt; and AWS OpsWorks Stacks will provide the correct device name.&lt;/p&gt;
-- @param VirtualName [String] &lt;p&gt;The virtual device name. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_BlockDeviceMapping.html&quot;&gt;BlockDeviceMapping&lt;/a&gt;.&lt;/p&gt;
-- @param NoDevice [String] &lt;p&gt;Suppresses the specified device included in the AMI's block device mapping.&lt;/p&gt;
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
-- @param IamUserArn [String] &lt;p&gt;The user's IAM ARN. This can also be a federated user's ARN.&lt;/p&gt;
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
-- @param StackId [String] &lt;p&gt;A stack ID. If you use this parameter, &lt;code&gt;DescribeInstances&lt;/code&gt; returns descriptions of the instances associated with the specified stack.&lt;/p&gt;
-- @param InstanceIds [Strings] &lt;p&gt;An array of instance IDs to be described. If you use this parameter, &lt;code&gt;DescribeInstances&lt;/code&gt; returns a description of the specified instances. Otherwise, it returns a description of every instance.&lt;/p&gt;
-- @param LayerId [String] &lt;p&gt;A layer ID. If you use this parameter, &lt;code&gt;DescribeInstances&lt;/code&gt; returns descriptions of the instances associated with the specified layer.&lt;/p&gt;
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
-- &lt;p&gt;Contains a description of an Amazon EC2 instance from the Amazon EC2 metadata service. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/sdkfornet/latest/apidocs/Index.html&quot;&gt;Instance Metadata and User Data&lt;/a&gt;.&lt;/p&gt;
-- @param Document [String] &lt;p&gt;A JSON document that contains the metadata.&lt;/p&gt;
-- @param Signature [String] &lt;p&gt;A signature that can be used to verify the document's accuracy and authenticity.&lt;/p&gt;
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
-- @param ElasticIp [String] &lt;p&gt;The Elastic IP address.&lt;/p&gt;
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
-- &lt;p&gt;Describes an instance's RAID array.&lt;/p&gt;
-- @param StackId [String] &lt;p&gt;The stack ID.&lt;/p&gt;
-- @param AvailabilityZone [String] &lt;p&gt;The array's Availability Zone. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/general/latest/gr/rande.html&quot;&gt;Regions and Endpoints&lt;/a&gt;.&lt;/p&gt;
-- @param Name [String] &lt;p&gt;The array name.&lt;/p&gt;
-- @param NumberOfDisks [Integer] &lt;p&gt;The number of disks in the array.&lt;/p&gt;
-- @param InstanceId [String] &lt;p&gt;The instance ID.&lt;/p&gt;
-- @param RaidLevel [Integer] &lt;p&gt;The &lt;a href=&quot;http://en.wikipedia.org/wiki/Standard_RAID_levels&quot;&gt;RAID level&lt;/a&gt;.&lt;/p&gt;
-- @param VolumeType [String] &lt;p&gt;The volume type, standard or PIOPS.&lt;/p&gt;
-- @param RaidArrayId [String] &lt;p&gt;The array ID.&lt;/p&gt;
-- @param Device [String] &lt;p&gt;The array's Linux device. For example /dev/mdadm0.&lt;/p&gt;
-- @param MountPoint [String] &lt;p&gt;The array's mount point.&lt;/p&gt;
-- @param Iops [Integer] &lt;p&gt;For PIOPS volumes, the IOPS per disk.&lt;/p&gt;
-- @param CreatedAt [DateTime] &lt;p&gt;When the RAID array was created.&lt;/p&gt;
-- @param Size [Integer] &lt;p&gt;The array's size.&lt;/p&gt;
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
-- &lt;p&gt;Describes an Elastic IP address.&lt;/p&gt;
-- @param InstanceId [String] &lt;p&gt;The ID of the instance that the address is attached to.&lt;/p&gt;
-- @param Ip [String] &lt;p&gt;The IP address.&lt;/p&gt;
-- @param Domain [String] &lt;p&gt;The domain.&lt;/p&gt;
-- @param Region [String] &lt;p&gt;The AWS region. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/general/latest/gr/rande.html&quot;&gt;Regions and Endpoints&lt;/a&gt;.&lt;/p&gt;
-- @param Name [String] &lt;p&gt;The name.&lt;/p&gt;
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
-- &lt;p&gt;Contains the response to a &lt;code&gt;DescribeElasticLoadBalancers&lt;/code&gt; request.&lt;/p&gt;
-- @param ElasticLoadBalancers [ElasticLoadBalancers] &lt;p&gt;A list of &lt;code&gt;ElasticLoadBalancer&lt;/code&gt; objects that describe the specified Elastic Load Balancing instances.&lt;/p&gt;
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
-- @param InstanceId [String] &lt;p&gt;The instance ID.&lt;/p&gt;
-- @param DeleteVolumes [Boolean] &lt;p&gt;Whether to delete the instance's Amazon EBS volumes.&lt;/p&gt;
-- @param DeleteElasticIp [Boolean] &lt;p&gt;Whether to delete the instance Elastic IP address.&lt;/p&gt;
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
-- @param ElasticIp [String] &lt;p&gt;The Elastic IP address.&lt;/p&gt;
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
-- &lt;p&gt;Describes an Elastic Load Balancing instance.&lt;/p&gt;
-- @param StackId [String] &lt;p&gt;The ID of the stack that the instance is associated with.&lt;/p&gt;
-- @param ElasticLoadBalancerName [String] &lt;p&gt;The Elastic Load Balancing instance's name.&lt;/p&gt;
-- @param VpcId [String] &lt;p&gt;The VPC ID.&lt;/p&gt;
-- @param Ec2InstanceIds [Strings] &lt;p&gt;A list of the EC2 instances that the Elastic Load Balancing instance is managing traffic for.&lt;/p&gt;
-- @param Region [String] &lt;p&gt;The instance's AWS region.&lt;/p&gt;
-- @param DnsName [String] &lt;p&gt;The instance's public DNS name.&lt;/p&gt;
-- @param LayerId [String] &lt;p&gt;The ID of the layer that the instance is attached to.&lt;/p&gt;
-- @param AvailabilityZones [Strings] &lt;p&gt;A list of Availability Zones.&lt;/p&gt;
-- @param SubnetIds [Strings] &lt;p&gt;A list of subnet IDs, if the stack is running in a VPC.&lt;/p&gt;
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
-- &lt;p&gt;Indicates that a resource was not found.&lt;/p&gt;
-- @param message [String] &lt;p&gt;The exception message.&lt;/p&gt;
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
-- &lt;p&gt;Contains the response to a &lt;code&gt;DescribeRaidArrays&lt;/code&gt; request.&lt;/p&gt;
-- @param RaidArrays [RaidArrays] &lt;p&gt;A &lt;code&gt;RaidArrays&lt;/code&gt; object that describes the specified RAID arrays.&lt;/p&gt;
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
-- @param StackId [String] &lt;p&gt;The stack ID. If you use this parameter, &lt;code&gt;DescribeServiceErrors&lt;/code&gt; returns descriptions of the errors associated with the specified stack.&lt;/p&gt;
-- @param InstanceId [String] &lt;p&gt;The instance ID. If you use this parameter, &lt;code&gt;DescribeServiceErrors&lt;/code&gt; returns descriptions of the errors associated with the specified instance.&lt;/p&gt;
-- @param ServiceErrorIds [Strings] &lt;p&gt;An array of service error IDs. If you use this parameter, &lt;code&gt;DescribeServiceErrors&lt;/code&gt; returns descriptions of the specified errors. Otherwise, it returns a description of every error.&lt;/p&gt;
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
-- &lt;p&gt;Describes an AWS OpsWorks Stacks service error.&lt;/p&gt;
-- @param StackId [String] &lt;p&gt;The stack ID.&lt;/p&gt;
-- @param InstanceId [String] &lt;p&gt;The instance ID.&lt;/p&gt;
-- @param ServiceErrorId [String] &lt;p&gt;The error ID.&lt;/p&gt;
-- @param Message [String] &lt;p&gt;A message that describes the error.&lt;/p&gt;
-- @param Type [String] &lt;p&gt;The error type.&lt;/p&gt;
-- @param CreatedAt [DateTime] &lt;p&gt;When the error occurred.&lt;/p&gt;
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
-- @param InstanceId [String] &lt;p&gt;The instance ID. If you use this parameter, &lt;code&gt;DescribeVolumes&lt;/code&gt; returns descriptions of the volumes associated with the specified instance.&lt;/p&gt;
-- @param StackId [String] &lt;p&gt;A stack ID. The action describes the stack's registered Amazon EBS volumes.&lt;/p&gt;
-- @param RaidArrayId [String] &lt;p&gt;The RAID array ID. If you use this parameter, &lt;code&gt;DescribeVolumes&lt;/code&gt; returns descriptions of the volumes associated with the specified RAID array.&lt;/p&gt;
-- @param VolumeIds [Strings] &lt;p&gt;Am array of volume IDs. If you use this parameter, &lt;code&gt;DescribeVolumes&lt;/code&gt; returns descriptions of the specified volumes. Otherwise, it returns a description of every volume.&lt;/p&gt;
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
-- @param StackId [String] &lt;p&gt;The stack ID.&lt;/p&gt;
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
-- &lt;p&gt;Describes an Amazon EBS volume configuration.&lt;/p&gt;
-- @param NumberOfDisks [Integer] &lt;p&gt;The number of disks in the volume.&lt;/p&gt;
-- @param RaidLevel [Integer] &lt;p&gt;The volume &lt;a href=&quot;http://en.wikipedia.org/wiki/Standard_RAID_levels&quot;&gt;RAID level&lt;/a&gt;.&lt;/p&gt;
-- @param VolumeType [String] &lt;p&gt;The volume type:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;standard&lt;/code&gt; - Magnetic&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;io1&lt;/code&gt; - Provisioned IOPS (SSD)&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;gp2&lt;/code&gt; - General Purpose (SSD)&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param Iops [Integer] &lt;p&gt;For PIOPS volumes, the IOPS per disk.&lt;/p&gt;
-- @param MountPoint [String] &lt;p&gt;The volume mount point. For example &quot;/dev/sdh&quot;.&lt;/p&gt;
-- @param Size [Integer] &lt;p&gt;The volume size.&lt;/p&gt;
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
-- @param InstanceId [String] &lt;p&gt;The instance ID. If you include this parameter, &lt;code&gt;DescribeElasticIps&lt;/code&gt; returns a description of the Elastic IP addresses associated with the specified instance.&lt;/p&gt;
-- @param StackId [String] &lt;p&gt;A stack ID. If you include this parameter, &lt;code&gt;DescribeElasticIps&lt;/code&gt; returns a description of the Elastic IP addresses that are registered with the specified stack.&lt;/p&gt;
-- @param Ips [Strings] &lt;p&gt;An array of Elastic IP addresses to be described. If you include this parameter, &lt;code&gt;DescribeElasticIps&lt;/code&gt; returns a description of the specified Elastic IP addresses. Otherwise, it returns a description of every Elastic IP address.&lt;/p&gt;
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
-- &lt;p&gt;Contains the response to a &lt;code&gt;CreateInstance&lt;/code&gt; request.&lt;/p&gt;
-- @param InstanceId [String] &lt;p&gt;The instance ID.&lt;/p&gt;
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
-- &lt;p&gt;Contains the response to a &lt;code&gt;DescribeStackSummary&lt;/code&gt; request.&lt;/p&gt;
-- @param StackSummary [StackSummary] &lt;p&gt;A &lt;code&gt;StackSummary&lt;/code&gt; object that contains the results.&lt;/p&gt;
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
-- @param MountPoint [String] &lt;p&gt;The new mount point.&lt;/p&gt;
-- @param VolumeId [String] &lt;p&gt;The volume ID.&lt;/p&gt;
-- @param Name [String] &lt;p&gt;The new name.&lt;/p&gt;
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
-- &lt;p&gt;Describes the configuration manager.&lt;/p&gt;
-- @param Version [String] &lt;p&gt;The Chef version. This parameter must be set to 12, 11.10, or 11.4 for Linux stacks, and to 12.2 for Windows stacks. The default value for Linux stacks is 11.4.&lt;/p&gt;
-- @param Name [String] &lt;p&gt;The name. This parameter must be set to &quot;Chef&quot;.&lt;/p&gt;
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
-- &lt;p&gt;Describes how many instances a stack has for each status.&lt;/p&gt;
-- @param StartFailed [Integer] &lt;p&gt;The number of instances with &lt;code&gt;start_failed&lt;/code&gt; status.&lt;/p&gt;
-- @param Requested [Integer] &lt;p&gt;The number of instances with &lt;code&gt;requested&lt;/code&gt; status.&lt;/p&gt;
-- @param Registering [Integer] &lt;p&gt;The number of instances in the Registering state.&lt;/p&gt;
-- @param Terminated [Integer] &lt;p&gt;The number of instances with &lt;code&gt;terminated&lt;/code&gt; status.&lt;/p&gt;
-- @param RunningSetup [Integer] &lt;p&gt;The number of instances with &lt;code&gt;running_setup&lt;/code&gt; status.&lt;/p&gt;
-- @param Booting [Integer] &lt;p&gt;The number of instances with &lt;code&gt;booting&lt;/code&gt; status.&lt;/p&gt;
-- @param Deregistering [Integer] &lt;p&gt;The number of instances in the Deregistering state.&lt;/p&gt;
-- @param Rebooting [Integer] &lt;p&gt;The number of instances with &lt;code&gt;rebooting&lt;/code&gt; status.&lt;/p&gt;
-- @param Unassigning [Integer] &lt;p&gt;The number of instances in the Unassigning state.&lt;/p&gt;
-- @param ShuttingDown [Integer] &lt;p&gt;The number of instances with &lt;code&gt;shutting_down&lt;/code&gt; status.&lt;/p&gt;
-- @param SetupFailed [Integer] &lt;p&gt;The number of instances with &lt;code&gt;setup_failed&lt;/code&gt; status.&lt;/p&gt;
-- @param Terminating [Integer] &lt;p&gt;The number of instances with &lt;code&gt;terminating&lt;/code&gt; status.&lt;/p&gt;
-- @param ConnectionLost [Integer] &lt;p&gt;The number of instances with &lt;code&gt;connection_lost&lt;/code&gt; status.&lt;/p&gt;
-- @param Online [Integer] &lt;p&gt;The number of instances with &lt;code&gt;online&lt;/code&gt; status.&lt;/p&gt;
-- @param Stopping [Integer] &lt;p&gt;The number of instances with &lt;code&gt;stopping&lt;/code&gt; status.&lt;/p&gt;
-- @param Stopped [Integer] &lt;p&gt;The number of instances with &lt;code&gt;stopped&lt;/code&gt; status.&lt;/p&gt;
-- @param Assigning [Integer] &lt;p&gt;The number of instances in the Assigning state.&lt;/p&gt;
-- @param Registered [Integer] &lt;p&gt;The number of instances in the Registered state.&lt;/p&gt;
-- @param Pending [Integer] &lt;p&gt;The number of instances with &lt;code&gt;pending&lt;/code&gt; status.&lt;/p&gt;
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
-- &lt;p&gt;Contains the response to a &lt;code&gt;DescribeCommands&lt;/code&gt; request.&lt;/p&gt;
-- @param Commands [Commands] &lt;p&gt;An array of &lt;code&gt;Command&lt;/code&gt; objects that describe each of the specified commands.&lt;/p&gt;
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
-- &lt;p&gt;A registered instance's reported operating system.&lt;/p&gt;
-- @param Version [String] &lt;p&gt;The operating system version.&lt;/p&gt;
-- @param Name [String] &lt;p&gt;The operating system name.&lt;/p&gt;
-- @param Family [String] &lt;p&gt;The operating system family.&lt;/p&gt;
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
-- &lt;p&gt;Contains the data needed by RDP clients such as the Microsoft Remote Desktop Connection to log in to the instance.&lt;/p&gt;
-- @param Username [String] &lt;p&gt;The user name.&lt;/p&gt;
-- @param InstanceId [String] &lt;p&gt;The instance's AWS OpsWorks Stacks ID.&lt;/p&gt;
-- @param Password [String] &lt;p&gt;The password.&lt;/p&gt;
-- @param ValidForInMinutes [Integer] &lt;p&gt;The length of time (in minutes) that the grant is valid. When the grant expires, at the end of this period, the user will no longer be able to use the credentials to log in. If they are logged in at the time, they will be automatically logged out.&lt;/p&gt;
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
-- @param LifecycleEventConfiguration [LifecycleEventConfiguration] &lt;p/&gt;
-- @param CustomRecipes [Recipes] &lt;p&gt;A &lt;code&gt;LayerCustomRecipes&lt;/code&gt; object that specifies the layer's custom recipes.&lt;/p&gt;
-- @param AutoAssignElasticIps [Boolean] &lt;p&gt;Whether to automatically assign an &lt;a href=&quot;http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html&quot;&gt;Elastic IP address&lt;/a&gt; to the layer's instances. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-edit.html&quot;&gt;How to Edit a Layer&lt;/a&gt;.&lt;/p&gt;
-- @param Name [String] &lt;p&gt;The layer name, which is used by the console.&lt;/p&gt;
-- @param CloudWatchLogsConfiguration [CloudWatchLogsConfiguration] &lt;p&gt;Specifies CloudWatch Logs configuration options for the layer. For more information, see &lt;a&gt;CloudWatchLogsLogStream&lt;/a&gt;.&lt;/p&gt;
-- @param CustomJson [String] &lt;p&gt;A JSON-formatted string containing custom stack configuration and deployment attributes to be installed on the layer's instances. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook-json-override.html&quot;&gt; Using Custom JSON&lt;/a&gt;. &lt;/p&gt;
-- @param VolumeConfigurations [VolumeConfigurations] &lt;p&gt;A &lt;code&gt;VolumeConfigurations&lt;/code&gt; object that describes the layer's Amazon EBS volumes.&lt;/p&gt;
-- @param AutoAssignPublicIps [Boolean] &lt;p&gt;For stacks that are running in a VPC, whether to automatically assign a public IP address to the layer's instances. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-edit.html&quot;&gt;How to Edit a Layer&lt;/a&gt;.&lt;/p&gt;
-- @param EnableAutoHealing [Boolean] &lt;p&gt;Whether to disable auto healing for the layer.&lt;/p&gt;
-- @param CustomInstanceProfileArn [String] &lt;p&gt;The ARN of an IAM profile to be used for all of the layer's EC2 instances. For more information about IAM ARNs, see &lt;a href=&quot;http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html&quot;&gt;Using Identifiers&lt;/a&gt;.&lt;/p&gt;
-- @param UseEbsOptimizedInstances [Boolean] &lt;p&gt;Whether to use Amazon EBS-optimized instances.&lt;/p&gt;
-- @param LayerId [String] &lt;p&gt;The layer ID.&lt;/p&gt;
-- @param Attributes [LayerAttributes] &lt;p&gt;One or more user-defined key/value pairs to be added to the stack attributes.&lt;/p&gt;
-- @param Shortname [String] &lt;p&gt;For custom layers only, use this parameter to specify the layer's short name, which is used internally by AWS OpsWorks Stacks and by Chef. The short name is also used as the name for the directory where your app files are installed. It can have a maximum of 200 characters and must be in the following format: /\A[a-z0-9\-\_\.]+\Z/.&lt;/p&gt; &lt;p&gt;The built-in layers' short names are defined by AWS OpsWorks Stacks. For more information, see the &lt;a href=&quot;http://docs.aws.amazon.com/opsworks/latest/userguide/layers.html&quot;&gt;Layer Reference&lt;/a&gt; &lt;/p&gt;
-- @param Packages [Strings] &lt;p&gt;An array of &lt;code&gt;Package&lt;/code&gt; objects that describe the layer's packages.&lt;/p&gt;
-- @param CustomSecurityGroupIds [Strings] &lt;p&gt;An array containing the layer's custom security group IDs.&lt;/p&gt;
-- @param InstallUpdatesOnBoot [Boolean] &lt;p&gt;Whether to install operating system and package updates when the instance boots. The default value is &lt;code&gt;true&lt;/code&gt;. To control when updates are installed, set this value to &lt;code&gt;false&lt;/code&gt;. You must then update your instances manually by using &lt;a&gt;CreateDeployment&lt;/a&gt; to run the &lt;code&gt;update_dependencies&lt;/code&gt; stack command or manually running &lt;code&gt;yum&lt;/code&gt; (Amazon Linux) or &lt;code&gt;apt-get&lt;/code&gt; (Ubuntu) on the instances. &lt;/p&gt; &lt;note&gt; &lt;p&gt;We strongly recommend using the default value of &lt;code&gt;true&lt;/code&gt;, to ensure that your instances have the latest security updates.&lt;/p&gt; &lt;/note&gt;
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
-- @param InstanceId [String] &lt;p&gt;The instance ID.&lt;/p&gt;
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
-- &lt;p&gt;Contains the response to a &lt;code&gt;CreateLayer&lt;/code&gt; request.&lt;/p&gt;
-- @param LayerId [String] &lt;p&gt;The layer ID.&lt;/p&gt;
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
-- &lt;p&gt;Describes the Amazon CloudWatch logs configuration for a layer.&lt;/p&gt;
-- @param LogStreams [CloudWatchLogsLogStreams] &lt;p&gt;A list of configuration options for CloudWatch Logs.&lt;/p&gt;
-- @param Enabled [Boolean] &lt;p&gt;Whether CloudWatch Logs is enabled for a layer.&lt;/p&gt;
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
-- @param InstanceId [String] &lt;p&gt;The instance's AWS OpsWorks Stacks ID.&lt;/p&gt;
-- @param ValidForInMinutes [ValidForInMinutes] &lt;p&gt;The length of time (in minutes) that the grant is valid. When the grant expires at the end of this period, the user will no longer be able to use the credentials to log in. If the user is logged in at the time, he or she automatically will be logged out.&lt;/p&gt;
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
-- &lt;p&gt;Contains the response to a &lt;code&gt;RegisterVolume&lt;/code&gt; request.&lt;/p&gt;
-- @param VolumeId [String] &lt;p&gt;The volume ID.&lt;/p&gt;
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
-- &lt;p&gt;Describes an instance's Amazon EBS volume.&lt;/p&gt;
-- @param Status [String] &lt;p&gt;The value returned by &lt;a href=&quot;http://docs.aws.amazon.com/AWSEC2/latest/APIReference/ApiReference-query-DescribeVolumes.html&quot;&gt;DescribeVolumes&lt;/a&gt;.&lt;/p&gt;
-- @param AvailabilityZone [String] &lt;p&gt;The volume Availability Zone. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/general/latest/gr/rande.html&quot;&gt;Regions and Endpoints&lt;/a&gt;.&lt;/p&gt;
-- @param Name [String] &lt;p&gt;The volume name.&lt;/p&gt;
-- @param InstanceId [String] &lt;p&gt;The instance ID.&lt;/p&gt;
-- @param Region [String] &lt;p&gt;The AWS region. For more information about AWS regions, see &lt;a href=&quot;http://docs.aws.amazon.com/general/latest/gr/rande.html&quot;&gt;Regions and Endpoints&lt;/a&gt;.&lt;/p&gt;
-- @param VolumeType [String] &lt;p&gt;The volume type, standard or PIOPS.&lt;/p&gt;
-- @param VolumeId [String] &lt;p&gt;The volume ID.&lt;/p&gt;
-- @param Device [String] &lt;p&gt;The device name.&lt;/p&gt;
-- @param RaidArrayId [String] &lt;p&gt;The RAID array ID.&lt;/p&gt;
-- @param Ec2VolumeId [String] &lt;p&gt;The Amazon EC2 volume ID.&lt;/p&gt;
-- @param MountPoint [String] &lt;p&gt;The volume mount point. For example, &quot;/mnt/disk1&quot;.&lt;/p&gt;
-- @param Iops [Integer] &lt;p&gt;For PIOPS volumes, the IOPS per disk.&lt;/p&gt;
-- @param Size [Integer] &lt;p&gt;The volume size.&lt;/p&gt;
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
-- @param AppId [String] &lt;p&gt;The app ID.&lt;/p&gt;
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
-- &lt;p&gt;Contains the response to a &lt;code&gt;GrantAccess&lt;/code&gt; request.&lt;/p&gt;
-- @param TemporaryCredential [TemporaryCredential] &lt;p&gt;A &lt;code&gt;TemporaryCredential&lt;/code&gt; object that contains the data needed to log in to the instance by RDP clients, such as the Microsoft Remote Desktop Connection.&lt;/p&gt;
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
-- @param AmiId [String] &lt;p&gt;The ID of the AMI that was used to create the instance. The value of this parameter must be the same AMI ID that the instance is already using. You cannot apply a new AMI to an instance by running UpdateInstance. UpdateInstance does not work on instances that are using custom AMIs. &lt;/p&gt;
-- @param LayerIds [Strings] &lt;p&gt;The instance's layer IDs.&lt;/p&gt;
-- @param InstanceId [String] &lt;p&gt;The instance ID.&lt;/p&gt;
-- @param SshKeyName [String] &lt;p&gt;The instance's Amazon EC2 key name.&lt;/p&gt;
-- @param Hostname [String] &lt;p&gt;The instance host name.&lt;/p&gt;
-- @param EbsOptimized [Boolean] &lt;p&gt;This property cannot be updated.&lt;/p&gt;
-- @param Architecture [Architecture] &lt;p&gt;The instance architecture. Instance types do not necessarily support both architectures. For a list of the architectures that are supported by the different instance types, see &lt;a href=&quot;http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html&quot;&gt;Instance Families and Types&lt;/a&gt;.&lt;/p&gt;
-- @param AutoScalingType [AutoScalingType] &lt;p&gt;For load-based or time-based instances, the type. Windows stacks can use only time-based instances.&lt;/p&gt;
-- @param InstallUpdatesOnBoot [Boolean] &lt;p&gt;Whether to install operating system and package updates when the instance boots. The default value is &lt;code&gt;true&lt;/code&gt;. To control when updates are installed, set this value to &lt;code&gt;false&lt;/code&gt;. You must then update your instances manually by using &lt;a&gt;CreateDeployment&lt;/a&gt; to run the &lt;code&gt;update_dependencies&lt;/code&gt; stack command or by manually running &lt;code&gt;yum&lt;/code&gt; (Amazon Linux) or &lt;code&gt;apt-get&lt;/code&gt; (Ubuntu) on the instances. &lt;/p&gt; &lt;note&gt; &lt;p&gt;We strongly recommend using the default value of &lt;code&gt;true&lt;/code&gt;, to ensure that your instances have the latest security updates.&lt;/p&gt; &lt;/note&gt;
-- @param Os [String] &lt;p&gt;The instance's operating system, which must be set to one of the following. You cannot update an instance that is using a custom AMI.&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;A supported Linux operating system: An Amazon Linux version, such as &lt;code&gt;Amazon Linux 2017.03&lt;/code&gt;, &lt;code&gt;Amazon Linux 2016.09&lt;/code&gt;, &lt;code&gt;Amazon Linux 2016.03&lt;/code&gt;, &lt;code&gt;Amazon Linux 2015.09&lt;/code&gt;, or &lt;code&gt;Amazon Linux 2015.03&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;A supported Ubuntu operating system, such as &lt;code&gt;Ubuntu 16.04 LTS&lt;/code&gt;, &lt;code&gt;Ubuntu 14.04 LTS&lt;/code&gt;, or &lt;code&gt;Ubuntu 12.04 LTS&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;CentOS Linux 7&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Red Hat Enterprise Linux 7&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;A supported Windows operating system, such as &lt;code&gt;Microsoft Windows Server 2012 R2 Base&lt;/code&gt;, &lt;code&gt;Microsoft Windows Server 2012 R2 with SQL Server Express&lt;/code&gt;, &lt;code&gt;Microsoft Windows Server 2012 R2 with SQL Server Standard&lt;/code&gt;, or &lt;code&gt;Microsoft Windows Server 2012 R2 with SQL Server Web&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;For more information on the supported operating systems, see &lt;a href=&quot;http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-os.html&quot;&gt;AWS OpsWorks Stacks Operating Systems&lt;/a&gt;.&lt;/p&gt; &lt;p&gt;The default option is the current Amazon Linux version. If you set this parameter to &lt;code&gt;Custom&lt;/code&gt;, you must use the AmiId parameter to specify the custom AMI that you want to use. For more information on the supported operating systems, see &lt;a href=&quot;http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-os.html&quot;&gt;Operating Systems&lt;/a&gt;. For more information on how to use custom AMIs with OpsWorks, see &lt;a href=&quot;http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-custom-ami.html&quot;&gt;Using Custom AMIs&lt;/a&gt;.&lt;/p&gt; &lt;note&gt; &lt;p&gt;You can specify a different Linux operating system for the updated stack, but you cannot change from Linux to Windows or Windows to Linux.&lt;/p&gt; &lt;/note&gt;
-- @param InstanceType [String] &lt;p&gt;The instance type, such as &lt;code&gt;t2.micro&lt;/code&gt;. For a list of supported instance types, open the stack in the console, choose &lt;b&gt;Instances&lt;/b&gt;, and choose &lt;b&gt;+ Instance&lt;/b&gt;. The &lt;b&gt;Size&lt;/b&gt; list contains the currently supported types. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html&quot;&gt;Instance Families and Types&lt;/a&gt;. The parameter values that you use to specify the various types are in the &lt;b&gt;API Name&lt;/b&gt; column of the &lt;b&gt;Available Instance Types&lt;/b&gt; table.&lt;/p&gt;
-- @param AgentVersion [String] &lt;p&gt;The default AWS OpsWorks Stacks agent version. You have the following options:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;INHERIT&lt;/code&gt; - Use the stack's default agent version setting.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;i&gt;version_number&lt;/i&gt; - Use the specified agent version. This value overrides the stack's default setting. To update the agent version, you must edit the instance configuration and specify a new version. AWS OpsWorks Stacks then automatically installs that version on the instance.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;The default setting is &lt;code&gt;INHERIT&lt;/code&gt;. To specify an agent version, you must use the complete version number, not the abbreviated number shown on the console. For a list of available agent version numbers, call &lt;a&gt;DescribeAgentVersions&lt;/a&gt;.&lt;/p&gt; &lt;p&gt;AgentVersion cannot be set to Chef 12.2.&lt;/p&gt;
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
-- &lt;p&gt;Describes a deployment of a stack or app.&lt;/p&gt;
-- @param StackId [String] &lt;p&gt;The stack ID.&lt;/p&gt;
-- @param Comment [String] &lt;p&gt;A user-defined comment.&lt;/p&gt;
-- @param CompletedAt [DateTime] &lt;p&gt;Date when the deployment completed.&lt;/p&gt;
-- @param CustomJson [String] &lt;p&gt;A string that contains user-defined custom JSON. It can be used to override the corresponding default stack configuration attribute values for stack or to pass data to recipes. The string should be in the following format:&lt;/p&gt; &lt;p&gt; &lt;code&gt;&quot;{\&quot;key1\&quot;: \&quot;value1\&quot;, \&quot;key2\&quot;: \&quot;value2\&quot;,...}&quot;&lt;/code&gt; &lt;/p&gt; &lt;p&gt;For more information on custom JSON, see &lt;a href=&quot;http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-json.html&quot;&gt;Use Custom JSON to Modify the Stack Configuration Attributes&lt;/a&gt;.&lt;/p&gt;
-- @param Status [String] &lt;p&gt;The deployment status:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;running&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;successful&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;failed&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param IamUserArn [String] &lt;p&gt;The user's IAM ARN.&lt;/p&gt;
-- @param DeploymentId [String] &lt;p&gt;The deployment ID.&lt;/p&gt;
-- @param Command [DeploymentCommand] &lt;p&gt;Describes a deployment of a stack or app.&lt;/p&gt;
-- @param InstanceIds [Strings] &lt;p&gt;The IDs of the target instances.&lt;/p&gt;
-- @param AppId [String] &lt;p&gt;The app ID.&lt;/p&gt;
-- @param Duration [Integer] &lt;p&gt;The deployment duration.&lt;/p&gt;
-- @param CreatedAt [DateTime] &lt;p&gt;Date when the deployment was created.&lt;/p&gt;
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
-- &lt;p&gt;Contains the response to a &lt;code&gt;DescribeLayers&lt;/code&gt; request.&lt;/p&gt;
-- @param Layers [Layers] &lt;p&gt;An array of &lt;code&gt;Layer&lt;/code&gt; objects that describe the layers.&lt;/p&gt;
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
-- @param EcsClusterArn [String] &lt;p&gt;The cluster's ARN.&lt;/p&gt;
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
-- &lt;p&gt;Contains the response to a &lt;code&gt;DescribeStackProvisioningParameters&lt;/code&gt; request.&lt;/p&gt;
-- @param AgentInstallerUrl [String] &lt;p&gt;The AWS OpsWorks Stacks agent installer's URL.&lt;/p&gt;
-- @param Parameters [Parameters] &lt;p&gt;An embedded object that contains the provisioning parameters.&lt;/p&gt;
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
-- &lt;p&gt;Describes a stack.&lt;/p&gt;
-- @param StackId [String] &lt;p&gt;The stack ID.&lt;/p&gt;
-- @param HostnameTheme [String] &lt;p&gt;The stack host name theme, with spaces replaced by underscores.&lt;/p&gt;
-- @param UseCustomCookbooks [Boolean] &lt;p&gt;Whether the stack uses custom cookbooks.&lt;/p&gt;
-- @param DefaultSshKeyName [String] &lt;p&gt;A default Amazon EC2 key pair for the stack's instances. You can override this value when you create or update an instance.&lt;/p&gt;
-- @param ChefConfiguration [ChefConfiguration] &lt;p&gt;A &lt;code&gt;ChefConfiguration&lt;/code&gt; object that specifies whether to enable Berkshelf and the Berkshelf version. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-creating.html&quot;&gt;Create a New Stack&lt;/a&gt;.&lt;/p&gt;
-- @param UseOpsworksSecurityGroups [Boolean] &lt;p&gt;Whether the stack automatically associates the AWS OpsWorks Stacks built-in security groups with the stack's layers.&lt;/p&gt;
-- @param ServiceRoleArn [String] &lt;p&gt;The stack AWS Identity and Access Management (IAM) role.&lt;/p&gt;
-- @param VpcId [String] &lt;p&gt;The VPC ID; applicable only if the stack is running in a VPC.&lt;/p&gt;
-- @param ConfigurationManager [StackConfigurationManager] &lt;p&gt;The configuration manager.&lt;/p&gt;
-- @param CustomCookbooksSource [Source] &lt;p&gt;Describes a stack.&lt;/p&gt;
-- @param AgentVersion [String] &lt;p&gt;The agent version. This parameter is set to &lt;code&gt;LATEST&lt;/code&gt; for auto-update. or a version number for a fixed agent version.&lt;/p&gt;
-- @param DefaultAvailabilityZone [String] &lt;p&gt;The stack's default Availability Zone. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/general/latest/gr/rande.html&quot;&gt;Regions and Endpoints&lt;/a&gt;.&lt;/p&gt;
-- @param CreatedAt [DateTime] &lt;p&gt;The date when the stack was created.&lt;/p&gt;
-- @param Name [String] &lt;p&gt;The stack name.&lt;/p&gt;
-- @param Region [String] &lt;p&gt;The stack AWS region, such as &quot;ap-northeast-2&quot;. For more information about AWS regions, see &lt;a href=&quot;http://docs.aws.amazon.com/general/latest/gr/rande.html&quot;&gt;Regions and Endpoints&lt;/a&gt;.&lt;/p&gt;
-- @param DefaultInstanceProfileArn [String] &lt;p&gt;The ARN of an IAM profile that is the default profile for all of the stack's EC2 instances. For more information about IAM ARNs, see &lt;a href=&quot;http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html&quot;&gt;Using Identifiers&lt;/a&gt;.&lt;/p&gt;
-- @param Attributes [StackAttributes] &lt;p&gt;The stack's attributes.&lt;/p&gt;
-- @param DefaultOs [String] &lt;p&gt;The stack's default operating system.&lt;/p&gt;
-- @param DefaultSubnetId [String] &lt;p&gt;The default subnet ID; applicable only if the stack is running in a VPC.&lt;/p&gt;
-- @param DefaultRootDeviceType [RootDeviceType] &lt;p&gt;The default root device type. This value is used by default for all instances in the stack, but you can override it when you create an instance. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ComponentsAMIs.html#storage-for-the-root-device&quot;&gt;Storage for the Root Device&lt;/a&gt;.&lt;/p&gt;
-- @param CustomJson [String] &lt;p&gt;A JSON object that contains user-defined attributes to be added to the stack configuration and deployment attributes. You can use custom JSON to override the corresponding default stack configuration attribute values or to pass data to recipes. The string should be in the following format:&lt;/p&gt; &lt;p&gt; &lt;code&gt;&quot;{\&quot;key1\&quot;: \&quot;value1\&quot;, \&quot;key2\&quot;: \&quot;value2\&quot;,...}&quot;&lt;/code&gt; &lt;/p&gt; &lt;p&gt;For more information on custom JSON, see &lt;a href=&quot;http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-json.html&quot;&gt;Use Custom JSON to Modify the Stack Configuration Attributes&lt;/a&gt;.&lt;/p&gt;
-- @param Arn [String] &lt;p&gt;The stack's ARN.&lt;/p&gt;
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
-- @param Ec2VolumeId [String] &lt;p&gt;The Amazon EBS volume ID.&lt;/p&gt;
-- @param StackId [String] &lt;p&gt;The stack ID.&lt;/p&gt;
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
-- &lt;p&gt;Contains the response to a &lt;code&gt;RegisterElasticIp&lt;/code&gt; request.&lt;/p&gt;
-- @param ElasticIp [String] &lt;p&gt;The Elastic IP address.&lt;/p&gt;
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
-- @param LayerIds [Strings] &lt;p&gt;An array of layer IDs.&lt;/p&gt;
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
-- &lt;p&gt;Specifies the lifecycle event configuration&lt;/p&gt;
-- @param Shutdown [ShutdownEventConfiguration] &lt;p&gt;A &lt;code&gt;ShutdownEventConfiguration&lt;/code&gt; object that specifies the Shutdown event configuration.&lt;/p&gt;
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
-- &lt;p&gt;Describes the Amazon CloudWatch logs configuration for a layer. For detailed information about members of this data type, see the &lt;a href=&quot;http://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/AgentReference.html&quot;&gt;CloudWatch Logs Agent Reference&lt;/a&gt;.&lt;/p&gt;
-- @param InitialPosition [CloudWatchLogsInitialPosition] &lt;p&gt;Specifies where to start to read data (start_of_file or end_of_file). The default is start_of_file. This setting is only used if there is no state persisted for that log stream.&lt;/p&gt;
-- @param Encoding [CloudWatchLogsEncoding] &lt;p&gt;Specifies the encoding of the log file so that the file can be read correctly. The default is &lt;code&gt;utf_8&lt;/code&gt;. Encodings supported by Python &lt;code&gt;codecs.decode()&lt;/code&gt; can be used here.&lt;/p&gt;
-- @param BatchSize [Integer] &lt;p&gt;Specifies the maximum size of log events in a batch, in bytes, up to 1048576 bytes. The default value is 32768 bytes. This size is calculated as the sum of all event messages in UTF-8, plus 26 bytes for each log event.&lt;/p&gt;
-- @param BufferDuration [Integer] &lt;p&gt;Specifies the time duration for the batching of log events. The minimum value is 5000ms and default value is 5000ms.&lt;/p&gt;
-- @param MultiLineStartPattern [String] &lt;p&gt;Specifies the pattern for identifying the start of a log message.&lt;/p&gt;
-- @param LogGroupName [String] &lt;p&gt;Specifies the destination log group. A log group is created automatically if it doesn't already exist. Log group names can be between 1 and 512 characters long. Allowed characters include a-z, A-Z, 0-9, '_' (underscore), '-' (hyphen), '/' (forward slash), and '.' (period).&lt;/p&gt;
-- @param File [String] &lt;p&gt;Specifies log files that you want to push to CloudWatch Logs.&lt;/p&gt; &lt;p&gt; &lt;code&gt;File&lt;/code&gt; can point to a specific file or multiple files (by using wild card characters such as &lt;code&gt;/var/log/system.log*&lt;/code&gt;). Only the latest file is pushed to CloudWatch Logs, based on file modification time. We recommend that you use wild card characters to specify a series of files of the same type, such as &lt;code&gt;access_log.2014-06-01-01&lt;/code&gt;, &lt;code&gt;access_log.2014-06-01-02&lt;/code&gt;, and so on by using a pattern like &lt;code&gt;access_log.*&lt;/code&gt;. Don't use a wildcard to match multiple file types, such as &lt;code&gt;access_log_80&lt;/code&gt; and &lt;code&gt;access_log_443&lt;/code&gt;. To specify multiple, different file types, add another log stream entry to the configuration file, so that each log file type is stored in a different log group.&lt;/p&gt; &lt;p&gt;Zipped files are not supported.&lt;/p&gt;
-- @param BatchCount [Integer] &lt;p&gt;Specifies the max number of log events in a batch, up to 10000. The default value is 1000.&lt;/p&gt;
-- @param DatetimeFormat [String] &lt;p&gt;Specifies how the time stamp is extracted from logs. For more information, see the &lt;a href=&quot;http://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/AgentReference.html&quot;&gt;CloudWatch Logs Agent Reference&lt;/a&gt;.&lt;/p&gt;
-- @param TimeZone [CloudWatchLogsTimeZone] &lt;p&gt;Specifies the time zone of log event time stamps.&lt;/p&gt;
-- @param FileFingerprintLines [String] &lt;p&gt;Specifies the range of lines for identifying a file. The valid values are one number, or two dash-delimited numbers, such as '1', '2-5'. The default value is '1', meaning the first line is used to calculate the fingerprint. Fingerprint lines are not sent to CloudWatch Logs unless all specified lines are available.&lt;/p&gt;
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
-- &lt;p&gt;Describes an instance's time-based auto scaling configuration.&lt;/p&gt;
-- @param InstanceId [String] &lt;p&gt;The instance ID.&lt;/p&gt;
-- @param AutoScalingSchedule [WeeklyAutoScalingSchedule] &lt;p&gt;A &lt;code&gt;WeeklyAutoScalingSchedule&lt;/code&gt; object with the instance schedule.&lt;/p&gt;
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
-- @param VolumeId [String] &lt;p&gt;The AWS OpsWorks Stacks volume ID, which is the GUID that AWS OpsWorks Stacks assigned to the instance when you registered the volume with the stack, not the Amazon EC2 volume ID.&lt;/p&gt;
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
-- @param StackId [String] &lt;p&gt;The ID of the stack that the instance is to be registered with.&lt;/p&gt;
-- @param RsaPublicKeyFingerprint [String] &lt;p&gt;The instances public RSA key fingerprint.&lt;/p&gt;
-- @param RsaPublicKey [String] &lt;p&gt;The instances public RSA key. This key is used to encrypt communication between the instance and the service.&lt;/p&gt;
-- @param Hostname [String] &lt;p&gt;The instance's hostname.&lt;/p&gt;
-- @param PrivateIp [String] &lt;p&gt;The instance's private IP address.&lt;/p&gt;
-- @param PublicIp [String] &lt;p&gt;The instance's public IP address.&lt;/p&gt;
-- @param InstanceIdentity [InstanceIdentity] &lt;p&gt;An InstanceIdentity object that contains the instance's identity.&lt;/p&gt;
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
-- &lt;p&gt;Contains the response to a &lt;code&gt;GetHostnameSuggestion&lt;/code&gt; request.&lt;/p&gt;
-- @param Hostname [String] &lt;p&gt;The generated host name.&lt;/p&gt;
-- @param LayerId [String] &lt;p&gt;The layer ID.&lt;/p&gt;
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
-- @param InstanceId [String] &lt;p&gt;The instance ID.&lt;/p&gt;
-- @param LayerIds [Strings] &lt;p&gt;The layer ID, which must correspond to a custom layer. You cannot assign a registered instance to a built-in layer.&lt;/p&gt;
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
-- @param ResourceArn [ResourceArn] &lt;p&gt;The stack or layer's Amazon Resource Number (ARN).&lt;/p&gt;
-- @param Tags [Tags] &lt;p&gt;A map that contains tag keys and tag values that are attached to a stack or layer.&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;The key cannot be empty.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;The key can be a maximum of 127 characters, and can contain only Unicode letters, numbers, or separators, or the following special characters: &lt;code&gt;+ - = . _ : /&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;The value can be a maximum 255 characters, and contain only Unicode letters, numbers, or separators, or the following special characters: &lt;code&gt;+ - = . _ : /&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Leading and trailing white spaces are trimmed from both the key and value.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;A maximum of 40 tags is allowed for any resource.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
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
-- @param InstanceId [String] &lt;p&gt;The instance ID.&lt;/p&gt;
-- @param VolumeId [String] &lt;p&gt;The volume ID.&lt;/p&gt;
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
-- &lt;p&gt;Contains the response to a &lt;code&gt;DescribeServiceErrors&lt;/code&gt; request.&lt;/p&gt;
-- @param ServiceErrors [ServiceErrors] &lt;p&gt;An array of &lt;code&gt;ServiceError&lt;/code&gt; objects that describe the specified service errors.&lt;/p&gt;
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
-- &lt;p&gt;Contains the response to a &lt;code&gt;DescribeDeployments&lt;/code&gt; request.&lt;/p&gt;
-- @param Deployments [Deployments] &lt;p&gt;An array of &lt;code&gt;Deployment&lt;/code&gt; objects that describe the deployments.&lt;/p&gt;
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
-- @param IamUserArn [String] &lt;p&gt;The user's IAM ARN; this can also be a federated user's ARN.&lt;/p&gt;
-- @param SshPublicKey [String] &lt;p&gt;The user's public SSH key.&lt;/p&gt;
-- @param AllowSelfManagement [Boolean] &lt;p&gt;Whether users can specify their own SSH public key through the My Settings page. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/opsworks/latest/userguide/security-settingsshkey.html&quot;&gt;Setting an IAM User's Public SSH Key&lt;/a&gt;.&lt;/p&gt;
-- @param SshUsername [String] &lt;p&gt;The user's SSH user name. The allowable characters are [a-z], [A-Z], [0-9], '-', and '_'. If the specified name includes other punctuation marks, AWS OpsWorks Stacks removes them. For example, &lt;code&gt;my.name&lt;/code&gt; will be changed to &lt;code&gt;myname&lt;/code&gt;. If you do not specify an SSH user name, AWS OpsWorks Stacks generates one from the IAM user name. &lt;/p&gt;
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
-- @param StackId [String] &lt;p&gt;The layer stack ID.&lt;/p&gt;
-- @param LifecycleEventConfiguration [LifecycleEventConfiguration] &lt;p&gt;A &lt;code&gt;LifeCycleEventConfiguration&lt;/code&gt; object that you can use to configure the Shutdown event to specify an execution timeout and enable or disable Elastic Load Balancer connection draining.&lt;/p&gt;
-- @param AutoAssignElasticIps [Boolean] &lt;p&gt;Whether to automatically assign an &lt;a href=&quot;http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html&quot;&gt;Elastic IP address&lt;/a&gt; to the layer's instances. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-edit.html&quot;&gt;How to Edit a Layer&lt;/a&gt;.&lt;/p&gt;
-- @param Name [String] &lt;p&gt;The layer name, which is used by the console.&lt;/p&gt;
-- @param CloudWatchLogsConfiguration [CloudWatchLogsConfiguration] &lt;p&gt;Specifies CloudWatch Logs configuration options for the layer. For more information, see &lt;a&gt;CloudWatchLogsLogStream&lt;/a&gt;.&lt;/p&gt;
-- @param CustomJson [String] &lt;p&gt;A JSON-formatted string containing custom stack configuration and deployment attributes to be installed on the layer's instances. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook-json-override.html&quot;&gt; Using Custom JSON&lt;/a&gt;. This feature is supported as of version 1.7.42 of the AWS CLI. &lt;/p&gt;
-- @param CustomRecipes [Recipes] &lt;p&gt;A &lt;code&gt;LayerCustomRecipes&lt;/code&gt; object that specifies the layer custom recipes.&lt;/p&gt;
-- @param CustomSecurityGroupIds [Strings] &lt;p&gt;An array containing the layer custom security group IDs.&lt;/p&gt;
-- @param AutoAssignPublicIps [Boolean] &lt;p&gt;For stacks that are running in a VPC, whether to automatically assign a public IP address to the layer's instances. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-edit.html&quot;&gt;How to Edit a Layer&lt;/a&gt;.&lt;/p&gt;
-- @param EnableAutoHealing [Boolean] &lt;p&gt;Whether to disable auto healing for the layer.&lt;/p&gt;
-- @param CustomInstanceProfileArn [String] &lt;p&gt;The ARN of an IAM profile to be used for the layer's EC2 instances. For more information about IAM ARNs, see &lt;a href=&quot;http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html&quot;&gt;Using Identifiers&lt;/a&gt;.&lt;/p&gt;
-- @param UseEbsOptimizedInstances [Boolean] &lt;p&gt;Whether to use Amazon EBS-optimized instances.&lt;/p&gt;
-- @param VolumeConfigurations [VolumeConfigurations] &lt;p&gt;A &lt;code&gt;VolumeConfigurations&lt;/code&gt; object that describes the layer's Amazon EBS volumes.&lt;/p&gt;
-- @param Attributes [LayerAttributes] &lt;p&gt;One or more user-defined key-value pairs to be added to the stack attributes.&lt;/p&gt; &lt;p&gt;To create a cluster layer, set the &lt;code&gt;EcsClusterArn&lt;/code&gt; attribute to the cluster's ARN.&lt;/p&gt;
-- @param Shortname [String] &lt;p&gt;For custom layers only, use this parameter to specify the layer's short name, which is used internally by AWS OpsWorks Stacks and by Chef recipes. The short name is also used as the name for the directory where your app files are installed. It can have a maximum of 200 characters, which are limited to the alphanumeric characters, '-', '_', and '.'.&lt;/p&gt; &lt;p&gt;The built-in layers' short names are defined by AWS OpsWorks Stacks. For more information, see the &lt;a href=&quot;http://docs.aws.amazon.com/opsworks/latest/userguide/layers.html&quot;&gt;Layer Reference&lt;/a&gt;.&lt;/p&gt;
-- @param Packages [Strings] &lt;p&gt;An array of &lt;code&gt;Package&lt;/code&gt; objects that describes the layer packages.&lt;/p&gt;
-- @param Type [LayerType] &lt;p&gt;The layer type. A stack cannot have more than one built-in layer of the same type. It can have any number of custom layers. Built-in layers are not available in Chef 12 stacks.&lt;/p&gt;
-- @param InstallUpdatesOnBoot [Boolean] &lt;p&gt;Whether to install operating system and package updates when the instance boots. The default value is &lt;code&gt;true&lt;/code&gt;. To control when updates are installed, set this value to &lt;code&gt;false&lt;/code&gt;. You must then update your instances manually by using &lt;a&gt;CreateDeployment&lt;/a&gt; to run the &lt;code&gt;update_dependencies&lt;/code&gt; stack command or by manually running &lt;code&gt;yum&lt;/code&gt; (Amazon Linux) or &lt;code&gt;apt-get&lt;/code&gt; (Ubuntu) on the instances. &lt;/p&gt; &lt;note&gt; &lt;p&gt;To ensure that your instances have the latest security updates, we strongly recommend using the default value of &lt;code&gt;true&lt;/code&gt;.&lt;/p&gt; &lt;/note&gt;
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
-- &lt;p&gt;Contains the response to a &lt;code&gt;DescribeMyUserProfile&lt;/code&gt; request.&lt;/p&gt;
-- @param UserProfile [SelfUserProfile] &lt;p&gt;A &lt;code&gt;UserProfile&lt;/code&gt; object that describes the user's SSH information.&lt;/p&gt;
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
-- &lt;p&gt;Describes an app's SSL configuration.&lt;/p&gt;
-- @param PrivateKey [String] &lt;p&gt;The private key; the contents of the certificate's domain.kex file.&lt;/p&gt;
-- @param Chain [String] &lt;p&gt;Optional. Can be used to specify an intermediate certificate authority key or client authentication.&lt;/p&gt;
-- @param Certificate [String] &lt;p&gt;The contents of the certificate's domain.crt file.&lt;/p&gt;
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
-- @param StackId [String] &lt;p&gt;The stack ID.&lt;/p&gt;
-- @param EcsClusterArn [String] &lt;p&gt;The cluster's ARN.&lt;/p&gt;
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

-- &lt;p&gt;Specifies where to start to read data (start_of_file or end_of_file). The default is start_of_file. It's only used if there is no state persisted for that log stream.&lt;/p&gt;
function M.CloudWatchLogsInitialPosition(str)
	M.AssertCloudWatchLogsInitialPosition(str)
	return str
end

function M.AssertCloudWatchLogsEncoding(str)
	assert(str)
	assert(type(str) == "string", "Expected CloudWatchLogsEncoding to be of type 'string'")
end

-- &lt;p&gt;Specifies the encoding of the log file so that the file can be read correctly. The default is &lt;code&gt;utf_8&lt;/code&gt;. Encodings supported by Python &lt;code&gt;codecs.decode()&lt;/code&gt; can be used here.&lt;/p&gt;
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

-- &lt;p&gt;The preferred time zone for logs streamed to CloudWatch Logs. Valid values are &lt;code&gt;LOCAL&lt;/code&gt; and &lt;code&gt;UTC&lt;/code&gt;, for Coordinated Universal Time.&lt;/p&gt;
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

-- &lt;p&gt;Describes the Amazon CloudWatch logs configuration for a layer.&lt;/p&gt;
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
